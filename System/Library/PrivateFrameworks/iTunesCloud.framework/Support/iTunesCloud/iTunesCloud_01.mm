void sub_1000253E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100025558(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[8];
    v4 = a1[9];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    [v2 addStoreItemWithAdamID:v3 referral:v5 toPlaylistWithPersistentID:v4 clientIdentity:v6 completionHandler:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addStoreItemWithAdamID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[7];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000256DC;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_1000256DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10002589C(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v8 = a1[9];
    v7 = a1[10];

    [v2 addGeniusPlaylistWithPersistentID:v7 name:v3 seedItemIDs:v4 itemIDs:v5 clientIdentity:v6 completionHandler:v8];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addGeniusPlaylistWithPersistentID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v11 = a1[9];
    if (v11)
    {
      v12 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100025A20;
      block[3] = &unk_1001DF5C8;
      v14 = v11;
      dispatch_async(v12, block);
    }
  }
}

void sub_100025A20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100025B6C(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 uploadArtworkForPlaylistWithPersistentID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring uploadArtworkForPlaylistWithPersistentID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100025CEC;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100025CEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100025E60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    [v2 removePlaylistsWithSagaIDs:v4 performDeltaSync:v3 clientIdentity:v5 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring removePlaylistsWithSagaIDs as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = *(*(a1 + 32) + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100025FE4;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100025FE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100026148(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 removeItemsWithSagaIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring removeItemsWithSagaIDs as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000262C8;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_1000262C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100026410(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 publishPlaylistWithSagaID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring publishPlaylistWithSagaID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100026590;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100026590(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void sub_100026758(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v8 = a1[9];
    v7 = a1[10];

    [v2 createPlaylistWithPersistentID:v7 properties:v3 trackList:v4 requestingBundleID:v5 clientIdentity:v6 completionHandler:v8];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring createPlaylistWithPersistentID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v11 = a1[9];
    if (v11)
    {
      v12 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000268DC;
      block[3] = &unk_1001DF5C8;
      v14 = v11;
      dispatch_async(v12, block);
    }
  }
}

void sub_1000268DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100026A74(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[8];
    v3 = a1[9];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    [v2 createPlaylistWithPersistentID:v3 properties:v5 trackList:v6 clientIdentity:v7 completionHandler:v4];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring createPlaylistWithPersistentID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[8];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100026BF8;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_100026BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100026CF0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeContainerArtworkForSagaID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeContainerArtworkForSagaID as we don't have a valid SagaRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_100026E70(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeScreenshotForSagaID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeScreenshotForSagaID as we don't have a valid SagaRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_100026FF0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeItemArtworkForSagaID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeItemArtworkForSagaID as we don't have a valid SagaRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_1000271D4(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 importContainerArtworkForSagaID:v3 artworkVariantType:v4 clientIdentity:v5 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[7];
      *buf = 138543618;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ - ignoring importContainerArtworkForSagaID for sagaID %lld as we don't have a valid SagaRequestHandler", buf, 0x16u);
    }

    v10 = a1[6];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100027364;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_100027364(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError msv_errorWithDomain:ICErrorDomain code:-7002 debugDescription:@"importContainerArtworkForSagaID requires icml to be enabled"];
  (*(v1 + 16))(v1, v2);
}

void sub_1000274B0(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importContainerArtworkForSagaID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importContainerArtworkForSagaID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100027630;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100027630(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100027778(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importScreenshotForSagaID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importScreenshotForSagaID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000278F8;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_1000278F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100027A40(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importItemArtworkForSagaID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importItemArtworkForSagaID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100027BC0;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100027BC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100027CE8(uint64_t a1)
{
  [*(*(a1 + 32) + 64) updateProgress];
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = v2 + 0.0;
    v5 = [*(a1 + 32) musicLibrary];
    v6 = [v5 jaliscoOnDiskDatabaseRevision];

    [*(*(a1 + 32) + 56) updateProgress];
    v8 = v7;
    v9 = *(a1 + 32);
    if (*(v9 + 144) == 1)
    {
      if (v3 == 0.0)
      {
        if (v6 >= 1 && !*(v9 + 145))
        {
          v4 = 0.25;
        }
      }

      else if (v3 > 0.25)
      {
        v4 = 0.25;
      }
    }

    v15 = v4 + (v7 * 0.75);
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = @"Unknown";
      v19 = *(v16 + 144);
      if (v17 == 1)
      {
        v18 = @"Saga";
      }

      v20 = *(v16 + 145);
      *buf = 138545154;
      if (v17)
      {
        v21 = v18;
      }

      else
      {
        v21 = @"Jalisco";
      }

      v28 = v16;
      v29 = 2114;
      v30 = v21;
      v31 = 1024;
      *v32 = v6;
      *&v32[4] = 1024;
      *&v32[6] = v19;
      v33 = 1024;
      v34 = v20;
      v35 = 2048;
      v36 = v8;
      v37 = 2048;
      v38 = v3;
      v39 = 2048;
      v40 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - updateProgressForLibraryType for libraryType=%{public}@, jaliscoDatabaseVersion=%d, havePendingSagaUpdate=%{BOOL}u, _didManuallyReloadCloudLibrary=%{BOOL}u, sagaUpdateProgress=%f, jaliscoUpdateProgress=%f, progress=%f", buf, 0x46u);
    }

    v3 = v15;
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      v12 = @"Unknown";
      if (v11 == 1)
      {
        v12 = @"Saga";
      }

      v13 = *(a1 + 32);
      if (v11)
      {
        v14 = v12;
      }

      else
      {
        v14 = @"Jalisco";
      }

      *buf = 138543874;
      v28 = v13;
      v29 = 2114;
      v30 = v14;
      v31 = 2048;
      *v32 = v3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - updateProgressForLibraryType for libraryType=%{public}@, progress=%f", buf, 0x20u);
    }
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    v23 = *(*(a1 + 32) + 96);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002801C;
    v24[3] = &unk_1001DA048;
    v25 = v22;
    v26 = v3;
    dispatch_async(v23, v24);
  }
}

id sub_1000280B0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = &OBJC_IVAR___ICDCloudMusicLibraryRequestHandler__sagaRequestHandler;
  }

  else
  {
    v1 = &OBJC_IVAR___ICDCloudMusicLibraryRequestHandler__jaliscoRequestHandler;
  }

  return [*(*(a1 + 32) + *v1) cancelPendingChanges];
}

void sub_100028190(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 56);
    v4 = *(a1 + 56);

    [v3 addBackgroundOperation:v2 priority:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138543618;
      v9 = v6;
      v10 = 2048;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Unsupported request to add background operation (%p) for Jalisco library", &v8, 0x16u);
    }
  }
}

id sub_100028360(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = &OBJC_IVAR___ICDCloudMusicLibraryRequestHandler__sagaRequestHandler;
  }

  else
  {
    v1 = &OBJC_IVAR___ICDCloudMusicLibraryRequestHandler__jaliscoRequestHandler;
  }

  return [*(*(a1 + 32) + *v1) addOperation:*(a1 + 40) priority:*(a1 + 56)];
}

void sub_100028460(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 64);
  if (v3)
  {
    if (*(v2 + 148) == 1)
    {
      v5 = a1[6];
      v4 = a1[7];
      v6 = a1[5];

      [v3 updateLibraryWithClientIdentity:v6 reason:v4 completionHandler:v5];
      return;
    }

    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      *buf = 138543362;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deferring jalisco library update as the handler has not finished initial setup", buf, 0xCu);
    }

    v14 = dispatch_time(0x8000000000000000, 60000000000);
    v16 = a1[4];
    v15 = a1[5];
    v17 = *(v16 + 88);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002870C;
    v21[3] = &unk_1001DA188;
    v18 = a1[7];
    v21[4] = v16;
    v24 = v18;
    v22 = v15;
    v23 = a1[6];
    dispatch_after(v14, v17, v21);

    v11 = v22;
LABEL_13:

    return;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Not updating jalisco library as the handler is nil", buf, 0xCu);
  }

  v9 = a1[6];
  if (v9)
  {
    v10 = *(a1[4] + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000287F4;
    block[3] = &unk_1001DF5C8;
    v20 = v9;
    dispatch_async(v10, block);
    v11 = v20;
    goto LABEL_13;
  }
}

id sub_10002870C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = ICCloudClientGetStringForRequestReason();
    v7 = 138543618;
    v8 = v3;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting to update jalisco library for reason=%{public}@", &v7, 0x16u);
  }

  return [*(a1 + 32) updateJaliscoLibraryWithClientIdentity:*(a1 + 40) forReason:*(a1 + 56) completionHandler:*(a1 + 48)];
}

void sub_1000287F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100028948(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 152) objectForKey:&off_1001ECF88];
  v4 = [*(*v2 + 19) objectForKey:&off_1001ECFA0];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v5 = [*v2 musicLibrary];
  if ([v5 jaliscoOnDiskDatabaseRevision])
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  v7 = !v6;

  v8 = *(a1 + 32);
  if ((v8[10] | 2) == 2)
  {
    v9 = [v8 userIdentityStore];
    v10 = [*(a1 + 32) userIdentity];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100028CC0;
    v27[3] = &unk_1001D9FD0;
    v30 = &v34;
    v32 = v4 != 0;
    v11 = v3;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v28[0] = v11;
    v28[1] = v12;
    v31 = &v38;
    v33 = v7;
    v29 = v13;
    [v9 getPropertiesForUserIdentity:v10 completionHandler:v27];

    v14 = v28;
LABEL_13:

    goto LABEL_14;
  }

  v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = *(v35 + 24);
    v18 = *(v16 + 144);
    v19 = *(v16 + 80);
    v20 = *(v39 + 24);
    *buf = 138544898;
    v43 = v16;
    v44 = 1024;
    v45 = v17;
    v46 = 1024;
    v47 = v20;
    v48 = 1024;
    v49 = v4 != 0;
    v50 = 1024;
    v51 = v7;
    v52 = 1024;
    v53 = v18;
    v54 = 1024;
    v55 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - isUpdatingCloudLibraryWithCompletion sagaUpdateInProgress=%{BOOL}u, sagaInitialImport=%{BOOL}u, jaliscoUpdateInProgress=%{BOOL}u, jaliscoInitialImport=%{BOOL}u, havePendingSagaUpdate=%{BOOL}u, musicSubscriptionCheckStatus=%d", buf, 0x30u);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = *(*(a1 + 32) + 96);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100028F64;
    v23[3] = &unk_1001D9FA8;
    v14 = v24;
    v24[0] = v21;
    v24[1] = &v34;
    v24[2] = &v38;
    v25 = v4 != 0;
    v26 = v7;
    dispatch_async(v22, v23);
    goto LABEL_13;
  }

LABEL_14:
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

void sub_100028C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_100028CC0(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  if (!v5 && [v19 isActiveLocker])
  {
    if ((*(a1 + 72) & 1) != 0 || *(a1 + 32))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(*(a1 + 40) + 144);
    }

    *(*(*(a1 + 56) + 8) + 24) = v6 & 1;
    v7 = [*(a1 + 40) musicLibrary];
    if ([v7 sagaOnDiskDatabaseRevision])
    {
      v8 = 0;
    }

    else if (*(*(*(a1 + 56) + 8) + 24))
    {
      v8 = 1;
    }

    else
    {
      v8 = *(*(a1 + 40) + 144);
    }

    *(*(*(a1 + 64) + 8) + 24) = v8 & 1;
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 56) + 8) + 24);
    v12 = *(*(*(a1 + 64) + 8) + 24);
    v13 = *(a1 + 72);
    v14 = *(a1 + 73);
    v15 = *(v10 + 144);
    v16 = *(v10 + 80);
    *buf = 138545410;
    v25 = v10;
    v26 = 1024;
    v27 = v11;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = v13;
    v32 = 1024;
    v33 = v14;
    v34 = 1024;
    v35 = v15;
    v36 = 1024;
    v37 = v16;
    v38 = 2114;
    v39 = v5;
    v40 = 1024;
    v41 = [v19 isActiveLocker];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - isUpdatingCloudLibraryWithCompletion sagaUpdateInProgress=%{BOOL}u, sagaInitialImport=%{BOOL}u, jaliscoUpdateInProgress=%{BOOL}u, jaliscoInitialImport=%{BOOL}u, havePendingSagaUpdate=%{BOOL}u, musicSubscriptionCheckStatus=%d, error=%{public}@, properties.isActiveLocker-%{BOOL}u", buf, 0x40u);
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(*(a1 + 40) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100028F94;
    block[3] = &unk_1001D9FA8;
    v21 = v17;
    v22 = *(a1 + 56);
    v23 = *(a1 + 72);
    dispatch_async(v18, block);
  }
}

id sub_100029078(uint64_t a1)
{
  result = [*(*(a1 + 32) + 152) count];
  if (result)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(a1 + 32) + 144);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 & 1;
  return result;
}

void sub_100029B8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userIdentity];
  [v4 setIdentity:v5];

  v6 = [*(a1 + 32) userIdentityStore];
  [v4 setIdentityStore:v6];
}

void sub_100029C1C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 88);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029E88;
  v6[3] = &unk_1001DA188;
  v5 = *(a1 + 56);
  v6[4] = v3;
  v9 = v5;
  v7 = v2;
  v8 = *(a1 + 48);
  dispatch_async(v4, v6);
}

void sub_100029CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100029E74;
    v6[3] = &unk_1001DF5A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100029D90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100029E60;
    v6[3] = &unk_1001DF5A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100029E88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029F30;
  v6[3] = &unk_1001D9F80;
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _removeCloudSourcesForReason:v4 withClientIdentity:v3 byDisablingActiveLockerAccount:1 completionHandler:v6];
}

void sub_100029F30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 96);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100029FEC;
    v7[3] = &unk_1001DF5A0;
    v9 = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void sub_10002A000(id a1, NSError *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [(NSError *)v2 msv_description];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Automatic download media kind update task completed error=%{public}@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Automatic download media kind update task completed", &v6, 2u);
  }
}

void sub_10002A2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) musicLibrary];
  [v4 setClientIdentity:*(a1 + 40)];

  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 65);
    *buf = 138544130;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting to run a subscription status check to enable cloud library with policy=%d startInitialImport=%{BOOL}u, isExplicitUserAction=%{BOOL}u", buf, 0x1Eu);
  }

  v10 = [*(a1 + 32) configuration];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002A4B0;
  v14[3] = &unk_1001D9F38;
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v14[4] = *(a1 + 32);
  v18 = v11;
  v17 = v12;
  v15 = v3;
  v19 = *(a1 + 65);
  v16 = *(a1 + 40);
  v20 = *(a1 + 64);
  v13 = v3;
  sub_100004BFC(v10, v14);
}

void sub_10002A4B0(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (!v7)
  {
    v8 = 2;
    if (!(a2 | a3))
    {
      v8 = 3;
    }

    *(*(a1 + 32) + 80) = v8;
    [*(a1 + 32) _updateAutomaticDownloadsPreference];
  }

  if ((*(a1 + 64) - 1) > 1)
  {
    if ((*(a1 + 72) & 1) == 0 && *(a1 + 73) != 1)
    {
      v52 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = *(a1 + 32);
        v54 = *(a1 + 64);
        v55 = v53[146];
        *buf = 138543874;
        v94 = v53;
        v95 = 1024;
        *v96 = v54;
        *&v96[4] = 1024;
        *&v96[6] = v55;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "%{public}@ - enableCloudLibraryWithClientIdentity called with nothing to enable. enableCloudLibraryPolicy=%d, isPendingAuthentication=%{BOOL}u", buf, 0x18u);
      }

      v56 = *(a1 + 56);
      if (!v56)
      {
        goto LABEL_43;
      }

      v57 = *(*(a1 + 32) + 96);
      v68 = _NSConcreteStackBlock;
      v69 = 3221225472;
      v70 = sub_10002B178;
      v71 = &unk_1001DF5C8;
      v72 = v56;
      dispatch_async(v57, &v68);
      v14 = v72;
      goto LABEL_42;
    }

    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 73);
      v18 = *(a1 + 64);
      v19 = *(a1 + 72);
      v20 = v16[146];
      *buf = 138544386;
      v94 = v16;
      v95 = 1024;
      *v96 = v17;
      *&v96[4] = 1024;
      *&v96[6] = v18;
      LOWORD(v97) = 1024;
      *(&v97 + 2) = v19;
      HIWORD(v97) = 1024;
      v98 = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - User is not subscriber, performing Jalisco import. shouldStartInitialImport=%{BOOL}u, enableCloudLibraryPolicy=%d, isExplicitUserAction=%{BOOL}u, isPendingAuthentication=%{BOOL}u", buf, 0x24u);
    }

    v21 = *(a1 + 32);
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10002AFA8;
    v73[3] = &unk_1001DDEA8;
    v73[4] = v21;
    v22 = *(a1 + 48);
    v75 = *(a1 + 56);
    v74 = *(a1 + 40);
    [v21 _performJaliscoImportWithClientIdentity:v22 byAddingMediaKind:1 completionHandler:v73];
  }

  else
  {
    v9 = *(a1 + 32);
    if (*(v9 + 146) == 1)
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138543362;
        v94 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - We have a pending saga authenticate operation. Will not try to enable cloud library", buf, 0xCu);
      }

      v12 = *(a1 + 56);
      if (!v12)
      {
        goto LABEL_43;
      }

      v13 = *(*(a1 + 32) + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002AE84;
      block[3] = &unk_1001DF5C8;
      v92 = v12;
      dispatch_async(v13, block);
      v14 = v92;
LABEL_42:

LABEL_43:
      [*(a1 + 40) finishWithError:{0, v68, v69, v70, v71}];
      goto LABEL_44;
    }

    if (!v7 && *(v9 + 80) == 2)
    {
      if (*(a1 + 72) == 1)
      {
        v23 = [v9 musicLibrary];
        v24 = [v23 sagaLastKnownActiveLockerAccountDSID];
        v25 = [v24 longLongValue];

        v26 = [*(a1 + 32) userIdentity];
        v27 = [v26 accountDSID];
        v28 = [v27 longLongValue];

        if (v28 == v25)
        {
          v29 = [*(a1 + 32) musicLibrary];
          [v29 setSagaLastKnownActiveLockerAccountDSID:0];

          v30 = sub_10010291C();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *(a1 + 32);
            *buf = 138543362;
            v94 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ - Clearing last known locker account", buf, 0xCu);
          }
        }

        v32 = *(a1 + 64) == 1;
        v33 = [*(a1 + 32) musicLibrary];
        [v33 setSagaPrefersToMergeWithCloudLibrary:v32];

        v9 = *(a1 + 32);
      }

      v34 = [v9 userIdentityStore];
      v35 = [*(a1 + 32) userIdentity];
      v90 = 0;
      v36 = [v34 getPropertiesForUserIdentity:v35 error:&v90];
      v37 = v90;

      if (*(a1 + 72))
      {
        v38 = 0;
      }

      else
      {
        v38 = 5;
      }

      if (v36)
      {
        v39 = [v36 isActiveLocker];
        v40 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        if ((v39 & 1) == 0)
        {
          if (v41)
          {
            v63 = *(a1 + 32);
            *buf = 138543618;
            v94 = v63;
            v95 = 1024;
            *v96 = v38;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ - performing SagaAuthenticationOperation enableICMLReason=%d", buf, 0x12u);
          }

          v64 = *(a1 + 32);
          v65 = *(a1 + 48);
          v66 = [NSNumber numberWithInteger:*(a1 + 64)];
          v67 = *(a1 + 72);
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v84[2] = sub_10002AE98;
          v84[3] = &unk_1001D9F10;
          v84[4] = *(a1 + 32);
          v87 = v38;
          v88 = v67;
          v89 = *(a1 + 73);
          v86 = *(a1 + 56);
          v85 = *(a1 + 40);
          [v64 _runSagaAuthenticateOperationWithClientIdentity:v65 mergePreference:v66 allowNoisyPrompt:v67 cloudLibraryEnableReason:v38 completionHandler:v84];

          goto LABEL_54;
        }

        if (v41)
        {
          v42 = *(a1 + 32);
          *buf = 138543362;
          v94 = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ - ICML is already enabled", buf, 0xCu);
        }

        v43 = *(a1 + 56);
        if (!v43)
        {
LABEL_50:
          [*(a1 + 40) finishWithError:0];
LABEL_54:

          goto LABEL_44;
        }

        v44 = *(*(a1 + 32) + 96);
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_10002AF6C;
        v82[3] = &unk_1001DF5C8;
        v83 = v43;
        dispatch_async(v44, v82);
        v45 = v83;
      }

      else
      {
        v58 = sub_10010291C();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = *(a1 + 32);
          v60 = [v59 userIdentity];
          *buf = 138543874;
          v94 = v59;
          v95 = 2114;
          *v96 = v60;
          *&v96[8] = 2114;
          v97 = v37;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ - Not enabling cloud library. Could not get properties of %{public}@, error=%{public}@", buf, 0x20u);
        }

        v61 = *(a1 + 56);
        if (!v61)
        {
          goto LABEL_50;
        }

        v62 = *(*(a1 + 32) + 96);
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_10002AF80;
        v79[3] = &unk_1001DF5A0;
        v81 = v61;
        v80 = v37;
        dispatch_async(v62, v79);

        v45 = v81;
      }

      goto LABEL_50;
    }

    v46 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 32);
      v48 = *(a1 + 64);
      *buf = 134218498;
      v94 = v47;
      v95 = 2114;
      *v96 = v7;
      *&v96[8] = 1024;
      LODWORD(v97) = v48;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "CloudService %p - loading subscription status finished with error=%{public}@, not enabling iCML with policy=%d ", buf, 0x1Cu);
    }

    v49 = [NSError errorWithDomain:ICErrorDomain code:2003 userInfo:0];
    v50 = *(a1 + 56);
    if (v50)
    {
      v51 = *(*(a1 + 32) + 96);
      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_10002AF94;
      v76[3] = &unk_1001DF5A0;
      v78 = v50;
      v77 = v49;
      dispatch_async(v51, v76);
    }

    [*(a1 + 40) finishWithError:v7];
  }

LABEL_44:
}

void sub_10002AE98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 65);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B1A0;
  v8[3] = &unk_1001D9EE8;
  v8[4] = v4;
  v7 = *(a1 + 56);
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  [v4 _handleSagaAuthentication:a2 finishedForReason:v7 explicitUserAction:v5 shouldStartInitialImport:v6 completionHandler:v8];
}

void sub_10002AFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ - Jalisco import complete. error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Jalisco import complete.", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 96);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10002B18C;
    v14 = &unk_1001DF5A0;
    v16 = v9;
    v15 = v3;
    dispatch_async(v10, &v11);
  }

  [*(a1 + 40) finishWithError:{v3, v11, v12, v13, v14}];
}

void sub_10002B1A0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v5 msv_description];
      *buf = 138543874;
      v20 = v8;
      v21 = 1024;
      v22 = a3;
      v23 = 2114;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ - SagaAuthentication complete. shouldRetry=%{BOOL}u error=%{public}@", buf, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138543618;
    v20 = v10;
    v21 = 1024;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - SagaAuthentication complete. shouldRetry=%{BOOL}u", buf, 0x12u);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 96);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10002B38C;
    v16 = &unk_1001DF5A0;
    v18 = v11;
    v17 = v5;
    dispatch_async(v12, &v13);
  }

  [*(a1 + 40) finishWithError:{v5, v13, v14, v15, v16}];
}

id sub_10002B41C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Handling music app install", &v9, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = v4[8];
  v6 = [v4 configuration];
  v7 = [v6 clientIdentity];
  [v5 updateLibraryWithClientIdentity:v7 reason:6 completionHandler:0];

  return [*(a1 + 32) _tryEnablingCloudMusicLibraryForReason:6 completionHandler:0];
}

void sub_10002B95C(id a1)
{
  qword_100213AB8 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_10002C500(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    v10 = v22 = v6;
    v11 = *(a1 + 32);
    if ([v11 method])
    {
      v12 = @"POST";
    }

    else
    {
      v12 = @"GET";
    }

    v13 = [*(a1 + 32) action];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v5 responseCode];
    v17 = [v5 responseData];
    *buf = 138545154;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v15;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v16;
    v37 = 2048;
    v38 = [v17 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);

    v6 = v22;
  }

  if (v6)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "JaliscoSetItemPropertyOperation failed with error: %{public}@", buf, 0xCu);
    }
  }

  v19 = *(a1 + 40);
  v20 = [v5 responseCode];
  if (v20 > 399)
  {
    if (v20 != 404 && v20 != 400)
    {
      goto LABEL_17;
    }

    v21 = 3;
  }

  else
  {
    v21 = 1;
    if (v20 != 200 && v20 != 204)
    {
LABEL_17:
      v21 = 2;
    }
  }

  [v19 setStatus:v21];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10002CC9C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = [v6 msv_description];
      *buf = 138543618;
      v32 = v9;
      v33 = 2114;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished request to begin collaboration error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    *buf = 138543362;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request to begin collaboration", buf, 0xCu);
  }

  v12 = [v5 responseCode];
  if (v12 > 399)
  {
    if (v12 == 404 || v12 == 400)
    {
      v13 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 1;
  if (v12 != 200 && v12 != 204)
  {
LABEL_13:
    v13 = 2;
  }

LABEL_14:
  [a1[4] setStatus:v13];
  [a1[4] setError:v6];
  if (!v6)
  {
    v14 = v5;
    *(a1[4] + 114) = [v14 collaborationCloudLibraryID];
    v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 collaborationCloudLibraryID]);
    v29[0] = ML3ContainerPropertyStoreCloudID;
    v29[1] = ML3ContainerPropertyIsCollaborative;
    v28 = v15;
    v30[0] = v15;
    v30[1] = &__kCFBooleanTrue;
    v29[2] = ML3ContainerPropertyCollaborationMode;
    v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 collaborationMode]);
    v30[2] = v16;
    v30[3] = &off_1001ED000;
    v29[3] = ML3ContainerPropertyCollaboratorPermissions;
    v29[4] = ML3ContainerPropertyCollaborationInvitationURL;
    v17 = [v14 collaborationInviteURL];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_1001E0388;
    }

    v30[4] = v19;
    v29[5] = ML3ContainerPropertyCollaborationInvitationURLExpirationDate;
    v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 collaborationInviteURLExpirationDate]);
    v30[5] = v20;
    v29[6] = ML3ContainerPropertyCloudGlobalID;
    v21 = [v14 collaborationGlobalID];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1001E0388;
    }

    v29[7] = ML3ContainerPropertyCollaboratorStatus;
    v30[6] = v23;
    v30[7] = &off_1001ED018;
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:8];
    v25 = [NSMutableDictionary dictionaryWithDictionary:v24];

    if (([a1[5] setValuesForPropertiesWithDictionary:v25] & 1) == 0)
    {
      v26 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = a1[4];
        *buf = 138543362;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update container properties", buf, 0xCu);
      }
    }

    *(a1[4] + 106) = [v14 updateRequired];
  }

  [a1[6] endTransaction];
  [a1[4] finish];
}

uint64_t sub_10002D498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = [*(a1 + 40) jaliscoOnDiskDatabaseRevision];
  v8 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 < 1)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No purchase history database revision, skipping deauthenticate and clean up.", buf, 2u);
    }
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing purchase history tracks", buf, 2u);
    }

    v10 = dispatch_semaphore_create(0);
    v11 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10002D7CC;
    v18[3] = &unk_1001DE788;
    v8 = v10;
    v19 = v8;
    [v11 removeSource:4 usingConnection:v3 withCompletionHandler:v18];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v12 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 40) jaliscoOnDiskDatabaseRevision];
      *buf = 134217984;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Clearing purchase history database revision (%ld)", buf, 0xCu);
    }

    [*(a1 + 40) setJaliscoOnDiskDatabaseRevision:0];
    [*(a1 + 40) clearJaliscoAccountID];
    [*(a1 + 40) setStorefrontIdentifier:0];
    v14 = +[NSDate distantPast];
    [*(a1 + 40) setJaliscoLastGeniusUpdateDate:v14];

    if ([*(a1 + 40) jaliscoHasCloudGeniusData])
    {
      [*(a1 + 40) clearAllGeniusData];
      [*(a1 + 40) setJaliscoHasCloudGeniusData:0];
      [*(a1 + 40) setJaliscoIsMusicGeniusUserEnabled:0];
    }

    [*(a1 + 40) clearAllCloudKVSData];
    v15 = objc_alloc_init(CSSearchableIndex);
    [v15 deleteInteractionsWithGroupIdentifiers:&off_1001EE158 bundleID:@"com.apple.Music" protectionClass:0 completionHandler:&stru_1001DA6F0];
  }

  v16 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cancelling any outstanding jalisco track downloads.", buf, 2u);
  }

  sub_10007E848(*(a1 + 40));
  return 1;
}

void sub_10002D7D4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to remove playback intents. err=%{public}@", &v4, 0xCu);
    }
  }
}

void sub_10002DE58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v17 = 134217984;
    *&v17[4] = [v5 responseCode];
    v9 = "Set album artist properties response: %lu";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v17 = 0;
    v9 = "Set album artist properties received no response";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v9, v17, v12);
LABEL_7:

  if (v6)
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 138543362;
      *&v17[4] = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Set album artist properties response with error: %{public}@", v17, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v15 = [v5 responseCode];
  if (v15 > 399)
  {
    if (v15 != 404 && v15 != 400)
    {
      goto LABEL_18;
    }

    v16 = 3;
  }

  else
  {
    v16 = 1;
    if (v15 != 200 && v15 != 204)
    {
LABEL_18:
      v16 = 2;
    }
  }

  [v14 setStatus:v16];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10002E024(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 88);
  v4 = a2;
  v5 = [NSNumber numberWithLongLong:v3];
  v17[0] = v5;
  v17[1] = &off_1001ED030;
  v6 = [NSNumber numberWithLongLong:*(*(a1 + 32) + 88)];
  v17[2] = v6;
  v7 = [NSArray arrayWithObjects:v17 count:3];
  v12 = 0;
  v8 = [v4 executeUpdate:@"DELETE from library_pins where entity_pid=? AND entity_type=? AND NOT EXISTS (SELECT 1 FROM item join album_artist ON (item.album_artist_pid=album_artist.album_artist_pid) WHERE album_artist.album_artist_pid=? AND in_my_library)" withParameters:v7 error:&v12];

  v9 = v12;
  if ((v8 & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 88);
      *buf = 134218242;
      v14 = v11;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to delete artist with pid=%lld from library pins table, error=%{public}@", buf, 0x16u);
    }
  }
}

void sub_10002EE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002EE88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002EEA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002F964(uint64_t a1)
{
  v1 = *(a1 + 32);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10002F9F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        ICDAAPUtilitiesWriteProperty();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_100031184(id a1)
{
  qword_100213AC8 = [[ICDDefaults alloc] _init];

  _objc_release_x1();
}

void sub_10003157C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031594(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000315AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v9 = [objc_opt_class() handlers];
  v3 = [v9 allValues];
  v4 = NSStringFromSelector("configuration");
  v5 = [v3 valueForKeyPath:v4];
  v6 = [v5 copy];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100031798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000317B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [objc_opt_class() handlers];
  v4 = [*(a1 + 32) userIdentity];
  v5 = [v4 accountDSID];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v11 = *(*(*(a1 + 40) + 8) + 40);
      v15 = 134218754;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2114;
      v20 = objc_opt_class();
      v21 = 2114;
      v22 = v5;
      v12 = v20;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BaseRequestHandler %p - Deleting handler %p - class=%{public}@ dsid=%{public}@", &v15, 0x2Au);
    }

    [v3 setObject:0 forKeyedSubscript:v5];
  }

  else
  {
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void sub_100031A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031A88(uint64_t a1)
{
  v2 = *(a1 + 48);
  v15 = [objc_opt_class() handlers];
  v3 = [*(a1 + 32) userIdentity];
  v4 = [v3 accountDSID];

  if (v4)
  {
    v5 = [v15 objectForKeyedSubscript:v4];

    if (!v5)
    {
      v6 = *(a1 + 48);
      v7 = [objc_alloc(objc_opt_class()) initWithConfiguration:*(a1 + 32)];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      [v15 setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v4];
    }

    v10 = [v15 objectForKeyedSubscript:v4];
  }

  else
  {
    v11 = *(a1 + 48);
    if (![objc_opt_class() supportsAccountlessHandling])
    {
      goto LABEL_8;
    }

    v12 = *(a1 + 48);
    v10 = [objc_opt_class() accountlessHandler];
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;

LABEL_8:
}

void sub_100031BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v9 = [NSString stringWithFormat:@"com.apple.%@.global.serial.queue", v3];

  v4 = v9;
  v5 = [v9 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  v8 = qword_100213AD8;
  qword_100213AD8 = v7;
}

void sub_100031E70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  [v3 writeUInt32:v6 withCode:1836282979];
  [v3 writeUInt32:*(a1 + 40) withCode:1836413810];
  v8 = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  ICDAAPUtilitiesWriteContainer();
}

void sub_100031F60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_100031FF8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(*(a1 + 32) + 136);
  [*(a1 + 40) writeUInt8:DAAPPinTypeFromICLibraryPinEntityType() withCode:1835625316];
  v4 = *(a1 + 32);
  if (v4[13] < 1)
  {
    if (v4[17] == 4)
    {
      v5 = 1634353513;
    }

    else
    {
      v5 = 1634888036;
    }

    [v6 writeString:v4[15] withCode:v5];
  }

  else
  {
    [v6 writeUInt32:? withCode:?];
  }

  [v6 writeString:*(*(a1 + 32) + 128) withCode:1634364528];
  [v6 writeUInt32:*(*(a1 + 32) + 144) withCode:1634366576];
}

void sub_1000323B0(void *a1)
{
  v367 = a1;
  v1 = [v367 userIdentity];
  v2 = [ML3MusicLibrary musicLibraryForUserAccount:v1];

  v3 = [v2 icd_sagaDatabaseUserVersion];
  v4 = [v2 sagaOnDiskDatabaseRevision];
  v5 = [v2 jaliscoOnDiskDatabaseRevision];
  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = 710000;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    *&buf[22] = 2048;
    v377 = v4;
    LOWORD(v378) = 2048;
    *(&v378 + 2) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrating to version %ld from userVersion=%ld, sagaDatabaseRevision=%ld, jaliscoDatabaseRevision=%ld", buf, 0x2Au);
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  if (v3 == 710000)
  {
    goto LABEL_10;
  }

  if (v4 <= 0 && v5 < 1)
  {
LABEL_7:
    [v2 icd_setSagaDatabaseUserVersion:710000];
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = 710000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping migration and setting user version to latest: %ld", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v25 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Current user version: %ld", buf, 0xCu);
  }

  if (v3 < 710000)
  {
    v365 = ML3TrackPropertyPurchaseHistoryID;
    v366 = ML3TrackPropertyMediaType;
    v360 = ML3TrackPropertyHasAvailableItemArtwork;
    v358 = ML3TrackPropertyArtworkToken;
    v363 = ML3TrackPropertyStoreTVShowCanonicalItemId;
    v364 = ML3TrackPropertyStoreTVSeasonCanonicalItemId;
    v359 = ML3TrackPropertyStoreImmersiveDeeplinkURL;
    v356 = ML3TrackPropertyFilePath;
    v357 = ML3TrackPropertyBaseLocationID;
    v355 = ML3TrackPropertyTitle;
    v352 = ML3ContainerPropertyCloudIsSubscribed;
    v361 = ML3TrackPropertyStoreCanonicalItemId;
    v362 = ML3TrackPropertyStoreExtrasURL;
    v351 = ML3ContainerPropertyDateModified;
    do
    {
      if (v3 <= 390049)
      {
        if (v3 <= 380069)
        {
          if (v3 > 370399)
          {
            if (v3 > 380029)
            {
              if (v3 > 380049)
              {
                if (v3 == 380050)
                {
                  v332 = v2;
                  v333 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                  if (os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v333, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380050to380060]", buf, 2u);
                  }

                  v334 = [ML3ComparisonPredicate predicateWithProperty:v366 value:&off_1001ED078 comparison:10];
                  *buf = v334;
                  v335 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
                  *&buf[8] = v335;
                  v336 = [NSArray arrayWithObjects:buf count:2];
                  v337 = [ML3AllCompoundPredicate predicateMatchingPredicates:v336];

                  sub_100037AEC(v332, v337);
                  if ([v332 sagaOnDiskDatabaseRevision] && objc_msgSend(v332, "icd_sagaDatabaseUserVersion") >= 1)
                  {
                    [v332 setSagaNeedsFullUpdate:1];
                  }

                  v3 = 380060;
                }

                else if (v3 == 380060)
                {
                  v194 = v2;
                  v195 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                  if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380060to380070]", buf, 2u);
                  }

                  if ([v194 sagaOnDiskDatabaseRevision] && objc_msgSend(v194, "icd_sagaDatabaseUserVersion") >= 1)
                  {
                    [v194 setSagaNeedsFullUpdate:1];
                  }

                  v3 = 380070;
                }
              }

              else if (v3 == 380030)
              {
                v320 = v2;
                v321 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380030to380040]", buf, 2u);
                }

                v322 = [v320 sagaOnDiskDatabaseRevision];
                v323 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                v324 = os_log_type_enabled(v323, OS_LOG_TYPE_DEFAULT);
                if (v322)
                {
                  if (v324)
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v323, OS_LOG_TYPE_DEFAULT, "Cloud library is enabled, repairing subscribed containers is_src_remote (if any)", buf, 2u);
                  }

                  [v320 databaseConnectionAllowingWrites:1 withBlock:&stru_1001DA7C8];
                }

                else
                {
                  if (v324)
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v323, OS_LOG_TYPE_DEFAULT, "Cloud library is NOT enabled, deleting subscribed containers (if any)", buf, 2u);
                  }

                  v345 = [ML3PropertyPredicate predicateWithProperty:v352];
                  v346 = [ML3Container unrestrictedAllItemsQueryWithlibrary:v320 predicate:v345 orderingTerms:&__NSArray0__struct];

                  [v346 deleteAllEntitiesFromLibraryWithDeletionType:2];
                }

                v3 = 380040;
              }

              else if (v3 == 380040)
              {
                v121 = v2;
                v122 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380040to380050]", buf, 2u);
                }

                v123 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:2048];
                *buf = v123;
                v124 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
                *&buf[8] = v124;
                v125 = [ML3ComparisonPredicate predicateWithProperty:v362 value:&stru_1001E0388 comparison:1];
                *&buf[16] = v125;
                v126 = [NSArray arrayWithObjects:buf count:3];
                v127 = [ML3AllCompoundPredicate predicateMatchingPredicates:v126];

                sub_100037AEC(v121, v127);
                v3 = 380050;
              }
            }

            else if (v3 > 380009)
            {
              if (v3 == 380010)
              {
                v328 = v2;
                v329 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v329, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380010to380020]", buf, 2u);
                }

                sub_100037830(v328);
                v3 = 380020;
              }

              else if (v3 == 380020)
              {
                v181 = v2;
                v182 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380020to380030]", buf, 2u);
                }

                v183 = [ML3BitMaskPredicate predicateWithProperty:v366 mask:8 value:8];
                *buf = v183;
                v184 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
                *&buf[8] = v184;
                v185 = [NSArray arrayWithObjects:buf count:2];
                v186 = [ML3AllCompoundPredicate predicateMatchingPredicates:v185];

                sub_100037AEC(v181, v186);
                v3 = 380030;
              }
            }

            else if (v3 == 370400)
            {
              v315 = v2;
              v316 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v316, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v316, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion370400to380000]", buf, 2u);
              }

              if ([v315 sagaOnDiskDatabaseRevision] && objc_msgSend(v315, "icd_sagaDatabaseUserVersion") >= 1)
              {
                [v315 setSagaNeedsFullUpdate:1];
              }

              v3 = 380000;
            }

            else if (v3 == 380000)
            {
              v61 = v2;
              v62 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380000to380010]", buf, 2u);
              }

              if ([v61 sagaOnDiskDatabaseRevision] && objc_msgSend(v61, "icd_sagaDatabaseUserVersion") >= 1)
              {
                [v61 setSagaNeedsFullUpdate:1];
              }

              v3 = 380010;
            }

            goto LABEL_553;
          }

          if (v3 > 369999)
          {
            if (v3 > 370199)
            {
              if (v3 == 370200)
              {
                v330 = v2;
                v331 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v331, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v331, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion370200to370300]", buf, 2u);
                }

                if ([v330 sagaOnDiskDatabaseRevision])
                {
                  sub_100037830(v330);
                }

                v3 = 370300;
              }

              else if (v3 == 370300)
              {
                v187 = v2;
                v188 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v188, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v188, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion370300to370400]", buf, 2u);
                }

                if ([v187 sagaOnDiskDatabaseRevision] && objc_msgSend(v187, "icd_sagaDatabaseUserVersion") >= 1)
                {
                  [v187 setSagaNeedsFullUpdate:1];
                }

                v189 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:2048];
                *buf = v189;
                v190 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
                *&buf[8] = v190;
                v191 = [ML3ComparisonPredicate predicateWithProperty:v362 value:&stru_1001E0388 comparison:1];
                *&buf[16] = v191;
                v192 = [NSArray arrayWithObjects:buf count:3];
                v193 = [ML3AllCompoundPredicate predicateMatchingPredicates:v192];

                sub_100037AEC(v187, v193);
                v3 = 370400;
              }
            }

            else if (v3 == 370000)
            {
              v317 = v2;
              v318 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v318, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v318, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion370000to370100]", buf, 2u);
              }

              if ([v317 jaliscoOnDiskDatabaseRevision] && MSVDeviceIsAppleTV())
              {
                v319 = sub_10010283C();
                if (os_log_type_enabled(v319, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v319, OS_LOG_TYPE_DEFAULT, "Deleting ML database", buf, 2u);
                }

                [v317 emptyAllTables];
                sub_100037830(v317);
              }

              v3 = 370100;
            }

            else if (v3 == 370100)
            {
              v106 = v2;
              v107 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion370100to370200]", buf, 2u);
              }

              if ([v106 jaliscoOnDiskDatabaseRevision] && (MSVDeviceIsAppleTV() & 1) == 0)
              {
                v108 = sub_10010283C();
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "resetting jalisco and saga revisions to zero", buf, 2u);
                }

                [v106 setJaliscoOnDiskDatabaseRevision:0];
                sub_100037998(4, v106);
                [v106 setSagaOnDiskDatabaseRevision:0];
                sub_100037998(2, v106);
                [v106 notifyCloudLibraryAvailabilityDidChange];
                [v106 setValue:&off_1001ED048 forDatabaseProperty:@"MLResetCollectionsOnNextImport"];
                v349 = v106;
                v350 = +[NSFileManager defaultManager];
                v353 = +[NSMutableDictionary dictionary];
                v109 = [v350 enumeratorAtPath:@"/var/mobile/Media/Purchases"];
                v110 = [v109 nextObject];
                if (v110)
                {
                  do
                  {
                    if ([v110 hasSuffix:@".plist"])
                    {
                      v111 = objc_autoreleasePoolPush();
                      v112 = [@"/var/mobile/Media/Purchases" stringByAppendingPathComponent:v110];
                      v113 = [NSDictionary dictionaryWithContentsOfFile:v112];
                      v114 = v113;
                      if (v113)
                      {
                        v115 = [v113 objectForKey:@"itemId"];
                        if (v115)
                        {
                          v116 = [v114 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
                          v117 = v116;
                          if (v116)
                          {
                            v118 = [v116 objectForKey:@"mediaAssetFilename"];
                            if (v118)
                            {
                              [v353 setValue:v115 forKey:v118];
                            }
                          }
                        }
                      }

                      objc_autoreleasePoolPop(v111);
                    }

                    v119 = [v109 nextObject];

                    v110 = v119;
                  }

                  while (v119);
                }

                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100037A54;
                v377 = &unk_1001DCC68;
                *&v378 = v353;
                v120 = v353;
                [v349 databaseConnectionAllowingWrites:1 withBlock:buf];
              }

              v3 = 370200;
            }

            goto LABEL_553;
          }

          if (v3 > 348294)
          {
            if (v3 != 348295)
            {
              if (v3 == 366559)
              {
                v179 = v2;
                v180 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion366559to370000]", buf, 2u);
                }

                if ([v179 sagaOnDiskDatabaseRevision] && objc_msgSend(v179, "icd_sagaDatabaseUserVersion") >= 1)
                {
                  [v179 setSagaNeedsFullUpdate:1];
                }

                v3 = 370000;
              }

              goto LABEL_553;
            }

            v325 = v2;
            v326 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v326, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v326, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion348295to366559]", buf, 2u);
            }

            v327 = [NSNumber numberWithBool:1];
            [v325 setValue:v327 forDatabaseProperty:@"MLCloudNeedsContainerRefetch"];

            v150 = -26657;
          }

          else
          {
            if (v3)
            {
              if (v3 == 348294)
              {
                v37 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion348294to348295]", buf, 2u);
                }

                v3 = 348295;
              }

              goto LABEL_553;
            }

            v314 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v314, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion0to348294]", buf, 2u);
            }

            v150 = 20614;
          }

          goto LABEL_542;
        }

        if (v3 <= 380139)
        {
          if (v3 <= 380109)
          {
            if (v3 > 380089)
            {
              if (v3 == 380090)
              {
                v277 = v2;
                v278 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v278, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380090to380100]", buf, 2u);
                }

                if ([v277 sagaOnDiskDatabaseRevision] && objc_msgSend(v277, "icd_sagaDatabaseUserVersion") >= 1)
                {
                  [v277 setSagaNeedsFullUpdate:1];
                }

                v3 = 380100;
              }

              else if (v3 == 380100)
              {
                v142 = v2;
                v143 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion3800100to380110]", buf, 2u);
                }

                v144 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:2048];
                *buf = v144;
                v145 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
                *&buf[8] = v145;
                v146 = [NSArray arrayWithObjects:buf count:2];
                v147 = [ML3AllCompoundPredicate predicateMatchingPredicates:v146];

                sub_100037AEC(v142, v147);
                v3 = 380110;
              }
            }

            else if (v3 == 380070)
            {
              v266 = v2;
              v267 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380070to380080]", buf, 2u);
              }

              if ([v266 sagaOnDiskDatabaseRevision] && objc_msgSend(v266, "icd_sagaDatabaseUserVersion") >= 1)
              {
                [v266 setSagaNeedsFullUpdate:1];
              }

              v3 = 380080;
            }

            else if (v3 == 380080)
            {
              v38 = v2;
              v39 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *block = 0;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380080to380090]", block, 2u);
              }

              *buf = _NSConcreteStackBlock;
              *&buf[8] = 3221225472;
              *&buf[16] = sub_100037CDC;
              v377 = &unk_1001DCC68;
              *&v378 = v38;
              v40 = v38;
              [v40 databaseConnectionAllowingWrites:1 withBlock:buf];

              v3 = 380090;
            }

            goto LABEL_553;
          }

          if (v3 <= 380119)
          {
            if (v3 == 380110)
            {
              v268 = v2;
              v269 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
              {
                *v386 = 0;
                _os_log_impl(&_mh_execute_header, v269, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion3800110to380115]", v386, 2u);
              }

              v270 = [ML3ComparisonPredicate predicateWithProperty:v366 value:&off_1001ED0A8 comparison:10];
              *v386 = v270;
              v271 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
              v387 = v271;
              v272 = [NSArray arrayWithObjects:v386 count:2];
              v273 = [ML3AllCompoundPredicate predicateMatchingPredicates:v272];

              sub_100037AEC(v268, v273);
              v274 = [ML3Track queryWithLibrary:v268 predicate:v273];
              v275 = +[NSMutableArray array];
              *block = _NSConcreteStackBlock;
              v371 = 3221225472;
              v372 = sub_100037DE0;
              v373 = &unk_1001DED58;
              v276 = v275;
              v374 = v276;
              [v274 enumeratePersistentIDsUsingBlock:block];
              if ([(uint8_t *)v276 count])
              {
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100037E40;
                v377 = &unk_1001DEDD0;
                *&v378 = v276;
                *(&v378 + 1) = v268;
                [*(&v378 + 1) performDatabaseTransactionWithBlock:buf];
              }

              v3 = 380115;
            }

            else if (v3 == 380115)
            {
              v84 = v2;
              v85 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion3800110to380120]", buf, 2u);
              }

              v86 = [v84 sagaPrefersToMergeWithCloudLibrary];
              v87 = dispatch_semaphore_create(0);
              v368[0] = _NSConcreteStackBlock;
              v368[1] = 3221225472;
              v368[2] = sub_100038080;
              v368[3] = &unk_1001DE828;
              v369 = v87;
              v88 = v87;
              v89 = v368;
              v90 = +[ICUserIdentityStore defaultIdentityStore];
              v91 = +[ICUserIdentity activeLockerAccount];
              v392 = 0;
              v92 = [v90 getPropertiesForUserIdentity:v91 error:&v392];
              v93 = v392;
              if (v93 || !v92)
              {
                v344 = dispatch_get_global_queue(0, 0);
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_1000E6770;
                v377 = &unk_1001DF5A0;
                *(&v378 + 1) = v89;
                *&v378 = v93;
                dispatch_async(v344, buf);

                v95 = *(&v378 + 1);
              }

              else
              {
                v94 = [v92 mergeToCloudLibraryPreference];
                v95 = v94;
                if (v94 && [v94 BOOLValue] == v86)
                {
                  v347 = dispatch_get_global_queue(0, 0);
                  *block = _NSConcreteStackBlock;
                  v371 = 3221225472;
                  v372 = sub_1000E6948;
                  v373 = &unk_1001DF5A0;
                  v348 = v89;
                  v374 = 0;
                  v375[0] = v348;
                  dispatch_async(v347, block);

                  v96 = v375;
                }

                else
                {
                  *&v381 = _NSConcreteStackBlock;
                  *(&v381 + 1) = 3221225472;
                  v382 = sub_1000E6784;
                  v383 = &unk_1001DDB10;
                  LOBYTE(v384) = v86;
                  *v386 = _NSConcreteStackBlock;
                  v387 = 3221225472;
                  v388 = sub_1000E687C;
                  v389 = &unk_1001DE1C8;
                  v390 = v89;
                  [v90 insertPropertiesForUserIdentity:v91 andPostAccountChangeNotification:0 usingBlock:&v381 completionHandler:v386];
                  v96 = &v390;
                }
              }

              dispatch_semaphore_wait(v88, 0xFFFFFFFFFFFFFFFFLL);
              v3 = 380120;
            }

            goto LABEL_553;
          }

          if (v3 == 380120)
          {
            v279 = v2;
            v280 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v280, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion3800120to380130]", buf, 2u);
            }

            [v279 sortJaliscoLastSupportedMediaKinds];
            v3 = 380130;
            goto LABEL_553;
          }

          if (v3 == 380130)
          {
            v148 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380130to380140]", buf, 2u);
            }

            v3 = 380140;
            if ((MSVDeviceIsAppleTV() & 1) == 0)
            {
              v149 = sub_10010283C();
              if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "Removing Job: com.apple.itunescloudd.periodicPoll.jaliscoApps", buf, 2u);
              }

              xpc_set_event();
              v150 = -13076;
              goto LABEL_542;
            }
          }
        }

        else if (v3 <= 389999)
        {
          if (v3 > 380159)
          {
            if (v3 == 380160)
            {
              v233 = v2;
              v234 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380160to380170]", buf, 2u);
              }

              v235 = [ML3ComparisonPredicate predicateWithProperty:v366 value:&off_1001ED0A8 comparison:10];
              v236 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
              *buf = v235;
              *&buf[8] = v236;
              v237 = [NSArray arrayWithObjects:buf count:2];
              v238 = [ML3AllCompoundPredicate predicateMatchingPredicates:v237];

              sub_100037AEC(v233, v238);
              v228 = -13076;
              goto LABEL_368;
            }

            if (v3 == 380170)
            {
              v128 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380170to390000]", buf, 2u);
              }

              v129 = +[ICDefaults standardDefaults];
              v130 = [v129 automaticDownloadsEnabled];

              v131 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              v132 = os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT);
              if (v130)
              {
                if (v132)
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Found Automatic Downloads Key in user defaults", buf, 2u);
                }

                v133 = +[ICDefaults standardDefaults];
                [v133 deleteAutomaticDownloadsKey];

                v131 = +[ICUpdateAutomaticDownloadMediaKindsRequest automaticDownloadMediaKindsForMusic];
                v134 = [ICStoreRequestContext alloc];
                v135 = +[ICUserIdentity activeAccount];
                v136 = [v134 initWithIdentity:v135];

                v137 = [[ICUpdateAutomaticDownloadMediaKindsRequest alloc] initWithRequestContext:v136 mediaKindsToAdd:v131 mediaKindsToRemove:0];
                [v137 performRequestWithCompletionHandler:&stru_1001DA7E8];
              }

              else if (v132)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "Automatic Downloads Key does not exist in user defaults", buf, 2u);
              }

              v150 = -3216;
LABEL_542:
              v3 = v150 | 0x50000u;
            }
          }

          else
          {
            if (v3 == 380140)
            {
              v229 = v2;
              v230 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v230, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380140to380150]", buf, 2u);
              }

              if ([v229 jaliscoOnDiskDatabaseRevision])
              {
                v231 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "resetting jalisco revisions to zero to force a reset sync", buf, 2u);
                }

                [v229 setJaliscoOnDiskDatabaseRevision:0];
              }

              v232 = -13076;
              goto LABEL_551;
            }

            if (v3 == 380150)
            {
              v63 = v2;
              v64 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion380150to380160]", buf, 2u);
              }

              v65 = [v63 sagaAccountID];
              if ([v65 longLongValue])
              {
                v66 = [v63 jaliscoLastExcludedMediaKinds];
                v67 = [v66 containsObject:&off_1001ED048];

                if (v67)
                {
                  v68 = sub_10010283C();
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "resetting jalisco revision to zero to force a reset sync", buf, 2u);
                  }

                  v65 = [NSSet setWithObject:&off_1001ED048];
                  [v63 updateJaliscoExcludedMediaKindsWith:v65 excludingMediaKindsInSet:0];
                  goto LABEL_136;
                }
              }

              else
              {
LABEL_136:
              }

              v69 = -13076;
              goto LABEL_279;
            }
          }
        }

        else if (v3 <= 390019)
        {
          if (v3 == 390000)
          {
            v308 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion390000to390010]", buf, 2u);
            }

            v309 = +[ACAccountStore ic_sharedAccountStore];
            *block = 0;
            v310 = [v309 ic_activeStoreAccountWithError:block];
            v311 = *block;

            if (!v310 || v311)
            {
              v313 = sub_10010283C();
              if (os_log_type_enabled(v313, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = v311;
                _os_log_impl(&_mh_execute_header, v313, OS_LOG_TYPE_DEFAULT, "Could not get active store account, error=%{public}@", buf, 0xCu);
              }

LABEL_549:
            }

            else if ([v310 ic_isAutomaticDownloadsEnabledForMediaKindMusic])
            {
              v312 = sub_10010283C();
              if (os_log_type_enabled(v312, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v312, OS_LOG_TYPE_DEFAULT, "Automatic Downloads is enabled on the active account. Setting appropriate user defaults", buf, 2u);
              }

              v313 = +[ICDefaults standardDefaults];
              [v313 setAutomaticDownloadsEnabled:1];
              goto LABEL_549;
            }

            v232 = -3216;
LABEL_551:
            v83 = v232 | 0x50000u;
LABEL_552:
            v3 = v83 + 10;
            goto LABEL_553;
          }

          if (v3 == 390010)
          {
            v177 = v2;
            v178 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion390010to390020]", buf, 2u);
            }

            if (((MSVDeviceIsWatch() & 1) != 0 || MSVDeviceIsAudioAccessory()) && [v177 sagaOnDiskDatabaseRevision] && objc_msgSend(v177, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v177 setSagaNeedsFullUpdate:1];
            }

            v69 = -3216;
LABEL_279:
            v153 = v69 | 0x50000u;
LABEL_531:
            v3 = v153 + 20;
          }
        }

        else
        {
          switch(v3)
          {
            case 390020:
              v225 = v2;
              v226 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v226, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion390020to390030]", buf, 2u);
              }

              if ([v225 sagaOnDiskDatabaseRevision] && objc_msgSend(v225, "icd_sagaDatabaseUserVersion") >= 1)
              {
                v227 = sub_10010283C();
                if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "Resetting sagaOnDiskDatabaseRevision to 1 to update missing cloud_universal_library_id", buf, 2u);
                }

                [v225 setSagaNeedsFullUpdate:1];
              }

              v228 = -3216;
LABEL_368:
              v103 = v228 | 0x50000u;
LABEL_369:
              v3 = v103 + 30;
              break;
            case 390030:
              v205 = v2;
              v206 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v206, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion390030to390040]", buf, 2u);
              }

              if ([v205 sagaOnDiskDatabaseRevision] && objc_msgSend(v205, "icd_sagaDatabaseUserVersion") >= 1)
              {
                v207 = sub_10010283C();
                if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "Resetting sagaOnDiskDatabaseRevision to 1 to update missing category_type_mask and grouping_sort_key", buf, 2u);
                }

                [v205 setSagaNeedsFullUpdate:1];
              }

              v208 = 390000;
              goto LABEL_538;
            case 390040:
              v29 = v2;
              v30 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion390040to390050]", buf, 2u);
              }

              if ([v29 sagaOnDiskDatabaseRevision] && objc_msgSend(v29, "icd_sagaDatabaseUserVersion") >= 1)
              {
                v31 = sub_10010283C();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Resetting sagaOnDiskDatabaseRevision to 1 to update missing hls fields", buf, 2u);
                }

                [v29 setSagaNeedsFullUpdate:1];
              }

              v32 = 390000;
              goto LABEL_327;
          }
        }
      }

      else if (v3 > 539999)
      {
        if (v3 <= 619999)
        {
          if (v3 > 600029)
          {
            if (v3 > 600049)
            {
              if (v3 == 600050)
              {
                v305 = v2;
                v306 = v367;
                v307 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v307, OS_LOG_TYPE_DEFAULT))
                {
                  *block = 0;
                  _os_log_impl(&_mh_execute_header, v307, OS_LOG_TYPE_DEFAULT, "Migrating to version 610000", block, 2u);
                }

                if ((sub_100004B8C() & 1) == 0 && [v305 sagaOnDiskDatabaseRevision] && objc_msgSend(v305, "icd_sagaDatabaseUserVersion") >= 1)
                {
                  *block = 0;
                  v371 = block;
                  v372 = 0x2020000000;
                  LOBYTE(v373) = 0;
                  *buf = _NSConcreteStackBlock;
                  *&buf[8] = 3221225472;
                  *&buf[16] = sub_100038B7C;
                  v377 = &unk_1001DA838;
                  *&v378 = block;
                  [v305 databaseConnectionAllowingWrites:0 withBlock:buf];
                  if (*(v371 + 24) == 1)
                  {
                    [v305 setSagaNeedsFullUpdate:1];
                    [v305 setSagaInitiateClientResetSync:1];
                    [v305 setSagaLastLibraryUpdateTime:0];
                  }

                  _Block_object_dispose(block, 8);
                }

                v176 = 20176;
                goto LABEL_479;
              }

              if (v3 == 610000)
              {
                v166 = v2;
                v167 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "Migrating to version 620000", buf, 2u);
                }

                v168 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:512];
                *buf = v168;
                v169 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
                *&buf[8] = v169;
                v170 = [ML3ComparisonPredicate predicateWithProperty:v364 value:&stru_1001E0388 comparison:1];
                *block = v170;
                v171 = [ML3ComparisonPredicate predicateWithProperty:v363 value:&stru_1001E0388 comparison:1];
                v371 = v171;
                v172 = [NSArray arrayWithObjects:block count:2];
                v173 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v172];
                *&buf[16] = v173;
                v174 = [NSArray arrayWithObjects:buf count:3];
                v175 = [ML3AllCompoundPredicate predicateMatchingPredicates:v174];

                sub_100037AEC(v166, v175);
                v176 = 30176;
                goto LABEL_479;
              }
            }

            else
            {
              if (v3 == 600030)
              {
                v287 = v2;
                v288 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v288, OS_LOG_TYPE_DEFAULT, "Migrating to version 600040", buf, 2u);
                }

                if (sub_100004B8C())
                {
                  [v287 setSagaInitiateClientResetSync:0];
                }

                v208 = 600000;
                goto LABEL_538;
              }

              if (v3 == 600040)
              {
                v104 = v2;
                v105 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                {
                  *block = 0;
                  _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Migrating to version 600050", block, 2u);
                }

                if ((sub_100004B8C() & 1) == 0)
                {
                  *buf = _NSConcreteStackBlock;
                  *&buf[8] = 3221225472;
                  *&buf[16] = sub_100038A9C;
                  v377 = &unk_1001DCC68;
                  *&v378 = v104;
                  [v378 databaseConnectionAllowingWrites:0 withBlock:buf];
                }

                v32 = 600000;
                goto LABEL_327;
              }
            }
          }

          else if (v3 > 600009)
          {
            if (v3 == 600010)
            {
              v300 = v2;
              v301 = v367;
              v302 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
              {
                *v386 = 0;
                _os_log_impl(&_mh_execute_header, v302, OS_LOG_TYPE_DEFAULT, "Migrating to version 600020", v386, 2u);
              }

              if ((sub_100004B8C() & 1) == 0 && [v300 sagaOnDiskDatabaseRevision] && objc_msgSend(v300, "icd_sagaDatabaseUserVersion") >= 1)
              {
                *v386 = 0;
                v387 = v386;
                v388 = 0x2020000000;
                LOBYTE(v389) = 0;
                *block = _NSConcreteStackBlock;
                v371 = 3221225472;
                v372 = sub_100038650;
                v373 = &unk_1001DA838;
                v374 = v386;
                [v300 databaseConnectionAllowingWrites:0 withBlock:block];
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100038994;
                v377 = &unk_1001DA860;
                *(&v378 + 1) = v386;
                *&v378 = v300;
                [v378 databaseConnectionAllowingWrites:1 withBlock:buf];

                _Block_object_dispose(v386, 8);
              }

              v153 = 600000;
              goto LABEL_531;
            }

            if (v3 == 600020)
            {
              v154 = v2;
              v155 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "Migrating to version 600030", buf, 2u);
              }

              v156 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:2048];
              *block = v156;
              v157 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:512];
              v371 = v157;
              v158 = [NSArray arrayWithObjects:block count:2];
              v159 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v158];

              *buf = v159;
              v160 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
              *&buf[8] = v160;
              v161 = [ML3ComparisonPredicate predicateWithProperty:v361 value:&stru_1001E0388 comparison:1];
              *&buf[16] = v161;
              v162 = [NSArray arrayWithObjects:buf count:3];
              v163 = [ML3AllCompoundPredicate predicateMatchingPredicates:v162];

              sub_100037AEC(v154, v163);
              v103 = 600000;
              goto LABEL_369;
            }
          }

          else
          {
            if (v3 == 540000)
            {
              v282 = v2;
              v283 = v367;
              v284 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
              {
                *block = 0;
                _os_log_impl(&_mh_execute_header, v284, OS_LOG_TYPE_DEFAULT, "Migrating to version 600000", block, 2u);
              }

              if ((sub_100004B8C() & 1) == 0 && [v282 sagaOnDiskDatabaseRevision] && objc_msgSend(v282, "icd_sagaDatabaseUserVersion") >= 1)
              {
                *block = 0;
                v371 = block;
                v372 = 0x2020000000;
                LOBYTE(v373) = 0;
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_10003855C;
                v377 = &unk_1001DA838;
                *&v378 = block;
                [v282 databaseConnectionAllowingWrites:0 withBlock:buf];
                if (*(v371 + 24) == 1)
                {
                  [v282 setSagaNeedsFullUpdate:1];
                  [v282 setSagaInitiateClientResetSync:1];
                  [v282 setSagaLastLibraryUpdateTime:0];
                }

                _Block_object_dispose(block, 8);
              }

              v176 = 10176;
LABEL_479:
              v3 = v176 | 0x90000u;
              goto LABEL_553;
            }

            if (v3 == 600000)
            {
              v55 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Migrating to version 600010", buf, 2u);
              }

              v56 = +[ACAccountStore ic_sharedAccountStore];
              *block = 0;
              v57 = [v56 ic_activeStoreAccountWithError:block];
              v58 = *block;

              if (!v57 || v58)
              {
                v60 = sub_10010283C();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v58;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Could not get active store account, error=%{public}@", buf, 0xCu);
                }

LABEL_545:
              }

              else if ([v57 ic_isAutomaticDownloadsEnabledForMediaKindMusic])
              {
                v59 = sub_10010283C();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Automatic Downloads is enabled on the active account. Setting appropriate user defaults", buf, 2u);
                }

                v60 = +[ICDefaults standardDefaults];
                [v60 setAutomaticDownloadsEnabled:1];
                goto LABEL_545;
              }

              v83 = 600000;
              goto LABEL_552;
            }
          }
        }

        else if (v3 <= 700029)
        {
          if (v3 > 700009)
          {
            if (v3 == 700010)
            {
              v256 = v2;
              v257 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, "Migrating to version 700020", buf, 2u);
              }

              v258 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:512];
              *buf = v258;
              v259 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
              *&buf[8] = v259;
              v260 = [ML3ComparisonPredicate predicateWithProperty:v364 value:&stru_1001E0388 comparison:1];
              *block = v260;
              v261 = [ML3ComparisonPredicate predicateWithProperty:v363 value:&stru_1001E0388 comparison:1];
              v371 = v261;
              v262 = [NSArray arrayWithObjects:block count:2];
              v263 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v262];
              *&buf[16] = v263;
              v264 = [NSArray arrayWithObjects:buf count:3];
              v265 = [ML3AllCompoundPredicate predicateMatchingPredicates:v264];

              sub_100037AEC(v256, v265);
              if ((sub_100004B8C() & 1) == 0 && [v256 sagaOnDiskDatabaseRevision] && objc_msgSend(v256, "icd_sagaDatabaseUserVersion") >= 1 && !objc_msgSend(v256, "sagaMaximumLibraryPinCount"))
              {
                [v256 setSagaNeedsFullUpdate:1];
                [v256 setSagaLastLibraryUpdateTime:0];
              }

              v153 = 700000;
              goto LABEL_531;
            }

            if (v3 == 700020)
            {
              v140 = v2;
              v141 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "Migrating to version 700030", buf, 2u);
              }

              if ([v140 sagaOnDiskDatabaseRevision] && objc_msgSend(v140, "icd_sagaDatabaseUserVersion") >= 1)
              {
                [v140 databaseConnectionAllowingWrites:1 withBlock:&stru_1001DA8A0];
              }

              v103 = 700000;
              goto LABEL_369;
            }
          }

          else
          {
            if (v3 == 620000)
            {
              v252 = v2;
              v253 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v253, OS_LOG_TYPE_DEFAULT, "Migrating to version 700000", buf, 2u);
              }

              if ([v252 sagaOnDiskDatabaseRevision] && objc_msgSend(v252, "icd_sagaDatabaseUserVersion") >= 1)
              {
                [v252 databaseConnectionAllowingWrites:1 withBlock:&stru_1001DA880];
              }

              v36 = -20896;
              goto LABEL_394;
            }

            if (v3 == 700000)
            {
              v73 = v2;
              v74 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Migrating to version 700010", buf, 2u);
              }

              v75 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:2048];
              *block = v75;
              v76 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:512];
              v371 = v76;
              v77 = [NSArray arrayWithObjects:block count:2];
              v78 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v77];

              *buf = v78;
              v79 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
              *&buf[8] = v79;
              v80 = [ML3ComparisonPredicate predicateWithProperty:v361 value:&stru_1001E0388 comparison:1];
              *&buf[16] = v80;
              v81 = [NSArray arrayWithObjects:buf count:3];
              v82 = [ML3AllCompoundPredicate predicateMatchingPredicates:v81];

              sub_100037AEC(v73, v82);
              v83 = 700000;
              goto LABEL_552;
            }
          }
        }

        else if (v3 <= 700049)
        {
          if (v3 == 700030)
          {
            v341 = v2;
            v342 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v342, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v342, OS_LOG_TYPE_DEFAULT, "Migrating to version 700040", buf, 2u);
            }

            if ([v341 sagaOnDiskDatabaseRevision] && objc_msgSend(v341, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v341 databaseConnectionAllowingWrites:1 withBlock:&stru_1001DA8C0];
            }

            v208 = 700000;
LABEL_538:
            v3 = v208 + 40;
            goto LABEL_553;
          }

          if (v3 == 700040)
          {
            v198 = v2;
            v199 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "Migrating to version 700050", buf, 2u);
            }

            v200 = [ML3ComparisonPredicate predicateWithProperty:v366 equalToInteger:1024];
            *buf = v200;
            v201 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
            *&buf[8] = v201;
            v202 = [ML3ComparisonPredicate predicateWithProperty:v359 value:&stru_1001E0388 comparison:1];
            *&buf[16] = v202;
            v203 = [NSArray arrayWithObjects:buf count:3];
            v204 = [ML3AllCompoundPredicate predicateMatchingPredicates:v203];

            sub_100037AEC(v198, v204);
            if ((sub_100004B8C() & 1) == 0 && [v198 sagaOnDiskDatabaseRevision] && objc_msgSend(v198, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v198 setSagaNeedsFullUpdate:1];
              [v198 setSagaLastLibraryUpdateTime:0];
            }

            v32 = 700000;
LABEL_327:
            v3 = v32 + 50;
          }
        }

        else
        {
          switch(v3)
          {
            case 700050:
              v242 = v2;
              v243 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v243, OS_LOG_TYPE_DEFAULT, "Migrating to version 700060", buf, 2u);
              }

              v244 = [ML3ComparisonPredicate predicateWithProperty:v366 value:&off_1001ED0A8 comparison:10];
              v245 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
              *buf = v244;
              *&buf[8] = v245;
              v246 = [NSArray arrayWithObjects:buf count:2];
              v247 = [ML3AllCompoundPredicate predicateMatchingPredicates:v246];

              sub_100037AEC(v242, v247);
              v248 = 700000;
LABEL_432:
              v3 = v248 + 60;
              break;
            case 700060:
              v212 = v2;
              v213 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
              {
                *v386 = 0;
                _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "Migrating to version 700070", v386, 2u);
              }

              v214 = [ML3ComparisonPredicate predicateWithProperty:v366 value:&off_1001ED0A8 comparison:10];
              v215 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
              v216 = [ML3ComparisonPredicate predicateWithProperty:v360 equalToInteger:1];
              *v386 = v214;
              v387 = v215;
              v388 = v216;
              v217 = [NSArray arrayWithObjects:v386 count:3];
              v218 = [ML3AllCompoundPredicate predicateMatchingPredicates:v217];

              v219 = [ML3Track queryWithLibrary:v212 predicate:v218];
              v220 = +[NSMutableArray array];
              v392 = v358;
              v221 = [NSArray arrayWithObjects:&v392 count:1];
              *block = _NSConcreteStackBlock;
              v371 = 3221225472;
              v372 = sub_100038C70;
              v373 = &unk_1001DF8D0;
              v222 = v220;
              v374 = v222;
              [v219 enumeratePersistentIDsAndProperties:v221 usingBlock:block];
              if ([(uint8_t *)v222 count])
              {
                v223 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
                {
                  v224 = [(uint8_t *)v222 count];
                  LODWORD(v381) = 134217984;
                  *(&v381 + 4) = v224;
                  _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "Removing %lu tv artwork images", &v381, 0xCu);
                }

                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100038C7C;
                v377 = &unk_1001DEDD0;
                *&v378 = v222;
                *(&v378 + 1) = v212;
                [*(&v378 + 1) performDatabaseTransactionWithBlock:buf];
              }

              v3 = 700070;
              break;
            case 700070:
              v33 = v2;
              v34 = v367;
              v35 = os_log_create("com.apple.amp.itunescloudd", "XPC");
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *v386 = 0;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Migrating to version 710000", v386, 2u);
              }

              v392 = 0;
              v393 = &v392;
              v394 = 0x2020000000;
              v395 = 0;
              if ((sub_100004B8C() & 1) == 0 && [v33 sagaOnDiskDatabaseRevision] && objc_msgSend(v33, "icd_sagaDatabaseUserVersion") >= 1)
              {
                *v386 = 0;
                v387 = v386;
                v388 = 0x3032000000;
                v389 = sub_100038D74;
                v390 = sub_100038D84;
                v391 = +[NSMutableArray array];
                *&v381 = 0;
                *(&v381 + 1) = &v381;
                v382 = 0x3032000000;
                v383 = sub_100038D74;
                v384 = sub_100038D84;
                v385 = +[NSMutableArray array];
                *buf = _NSConcreteStackBlock;
                *&buf[8] = 3221225472;
                *&buf[16] = sub_100038D8C;
                v377 = &unk_1001DA910;
                *&v378 = v34;
                *(&v378 + 1) = v386;
                v379 = &v381;
                v380 = &v392;
                [v33 databaseConnectionAllowingWrites:0 withBlock:buf];
                if (*(v393 + 24) == 1)
                {
                  *block = _NSConcreteStackBlock;
                  v371 = 3221225472;
                  v372 = sub_100038EB4;
                  v373 = &unk_1001DD538;
                  v375[0] = v386;
                  v375[1] = &v381;
                  v374 = v33;
                  [(uint8_t *)v374 databaseConnectionAllowingWrites:1 withBlock:block];
                }

                _Block_object_dispose(&v381, 8);
                _Block_object_dispose(v386, 8);
              }

              if (*(v393 + 24) == 1)
              {
                [v33 setSagaLastLibraryUpdateTime:0];
              }

              _Block_object_dispose(&v392, 8);

              v36 = -10896;
LABEL_394:
              v3 = v36 | 0xA0000u;
              break;
          }
        }
      }

      else if (v3 <= 503999)
      {
        if (v3 > 400019)
        {
          if (v3 > 400029)
          {
            if (v3 != 400030)
            {
              if (v3 == 500000)
              {
                v164 = v2;
                v165 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "Migrating to version 504000", buf, 2u);
                }

                if ([v164 sagaNeedsFullUpdate])
                {
                  [v164 setSagaLastLibraryUpdateTime:0];
                }

                v3 = 504000;
              }

              goto LABEL_553;
            }

            v303 = v2;
            v304 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v304, OS_LOG_TYPE_DEFAULT, "Migrating to version 500000", buf, 2u);
            }

            if ([v303 sagaOnDiskDatabaseRevision] && objc_msgSend(v303, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v303 setSagaNeedsFullUpdate:1];
            }

            v251 = -24288;
            goto LABEL_469;
          }

          if (v3 == 400020)
          {
            v285 = v2;
            v286 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v286, OS_LOG_TYPE_DEFAULT, "Migrating to version 400025", buf, 2u);
            }

            if ([v285 sagaOnDiskDatabaseRevision] && objc_msgSend(v285, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v285 setSagaNeedsFullUpdate:1];
            }

            v3 = 400025;
            goto LABEL_553;
          }

          if (v3 == 400025)
          {
            v97 = v2;
            v98 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion400025to400030]", buf, 2u);
            }

            v99 = [ML3ComparisonPredicate predicateWithProperty:v366 value:&off_1001ED0D8 comparison:10];
            v100 = [ML3ComparisonPredicate predicateWithProperty:v365 value:&off_1001ED060 comparison:2];
            *buf = v99;
            *&buf[8] = v100;
            v101 = [NSArray arrayWithObjects:buf count:2];
            v102 = [ML3AllCompoundPredicate predicateMatchingPredicates:v101];

            sub_100037AEC(v97, v102);
            v103 = 400000;
            goto LABEL_369;
          }
        }

        else
        {
          if (v3 <= 399999)
          {
            if (v3 != 390050)
            {
              if (v3 == 390060)
              {
                v41 = v2;
                v42 = os_log_create("com.apple.amp.itunescloudd", "XPC");
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion390060to400000]", buf, 2u);
                }

                if ([v41 sagaOnDiskDatabaseRevision] && objc_msgSend(v41, "icd_sagaDatabaseUserVersion") >= 1)
                {
                  v43 = [ML3ComparisonPredicate predicateWithProperty:v351 value:&off_1001ED060 comparison:3];
                  *v386 = v43;
                  v44 = [ML3ComparisonPredicate predicateWithProperty:v352 equalToInteger:1];
                  v387 = v44;
                  v45 = [NSArray arrayWithObjects:v386 count:2];
                  v46 = [ML3AllCompoundPredicate predicateMatchingPredicates:v45];

                  v47 = v41;
                  v48 = [ML3Container queryWithLibrary:v47 predicate:v46];
                  v49 = +[NSMutableArray array];
                  *block = _NSConcreteStackBlock;
                  v371 = 3221225472;
                  v372 = sub_100038088;
                  v373 = &unk_1001DED58;
                  v50 = v49;
                  v374 = v50;
                  [v48 enumeratePersistentIDsUsingBlock:block];
                  v51 = sub_100102874();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(v381) = 138543362;
                    *(&v381 + 4) = v50;
                    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Will reset date_modified to 0 for playlistPersistenIDs=%{public}@", &v381, 0xCu);
                  }

                  *buf = _NSConcreteStackBlock;
                  *&buf[8] = 3221225472;
                  *&buf[16] = sub_1000380E8;
                  v377 = &unk_1001DEDD0;
                  *&v378 = v50;
                  *(&v378 + 1) = v47;
                  v52 = v47;
                  v53 = v50;
                  [v52 performDatabaseTransactionWithBlock:buf];

                  [v52 setSagaLastSubscribedContainersUpdateTime:0];
                  v54 = sub_10010283C();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Resetting sagaOnDiskDatabaseRevision to 1 to update date_modified for subscribed playlists", buf, 2u);
                  }

                  [v52 setSagaNeedsFullUpdate:1];
                }

                v3 = 400000;
              }

              goto LABEL_553;
            }

            v281 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v281, OS_LOG_TYPE_DEFAULT, "[CloudServer _migrateFromUserVersion390050to390060]", buf, 2u);
            }

            v248 = 390000;
            goto LABEL_432;
          }

          if (v3 == 400000)
          {
            v354 = v2;
            v289 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
            {
              *block = 0;
              _os_log_impl(&_mh_execute_header, v289, OS_LOG_TYPE_DEFAULT, "Migrating to version 400010", block, 2u);
            }

            v290 = objc_alloc_init(NSDateComponents);
            [v290 setYear:2021];
            [v290 setMonth:6];
            [v290 setDay:24];
            [v290 setHour:0];
            [v290 setMinute:0];
            v291 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
            v292 = [v291 dateFromComponents:v290];
            v293 = [ML3ComparisonPredicate predicateWithProperty:v357 value:&off_1001ED0C0 comparison:4];
            v294 = [ML3ComparisonPredicate predicateWithProperty:v366 value:&off_1001ED078 comparison:10];
            *block = v293;
            v371 = v294;
            v295 = [NSArray arrayWithObjects:block count:2];
            v296 = [ML3AllCompoundPredicate predicateMatchingPredicates:v295];
            v297 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v354 predicate:v296 orderingTerms:0];

            *v386 = v356;
            v387 = v355;
            v298 = [NSArray arrayWithObjects:v386 count:2];
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1000381B0;
            v377 = &unk_1001DF8D0;
            *&v378 = v292;
            v299 = v292;
            [v297 enumeratePersistentIDsAndProperties:v298 usingBlock:buf];

            v83 = 400000;
            goto LABEL_552;
          }

          if (v3 == 400010)
          {
            v151 = v2;
            v152 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "Migrating to version 400020", buf, 2u);
            }

            if ([v151 sagaOnDiskDatabaseRevision] && objc_msgSend(v151, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v151 setSagaNeedsFullUpdate:1];
            }

            v153 = 400000;
            goto LABEL_531;
          }
        }
      }

      else if (v3 <= 520009)
      {
        if (v3 > 510009)
        {
          if (v3 == 510010)
          {
            v254 = v2;
            v255 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v255, OS_LOG_TYPE_DEFAULT, "Migrating to version 520000", buf, 2u);
            }

            if ([v254 sagaOnDiskDatabaseRevision] && objc_msgSend(v254, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v254 setSagaNeedsFullUpdate:1];
              [v254 setSagaLastLibraryUpdateTime:0];
            }

            v251 = -4288;
            goto LABEL_469;
          }

          if (v3 == 520000)
          {
            v138 = v2;
            v139 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "Migrating to version 520010", buf, 2u);
            }

            if ([v138 sagaOnDiskDatabaseRevision] && objc_msgSend(v138, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v138 setSagaNeedsFullUpdate:1];
              [v138 setSagaLastLibraryUpdateTime:0];
            }

            v72 = -4288;
            goto LABEL_222;
          }
        }

        else
        {
          if (v3 == 504000)
          {
            v249 = v2;
            v250 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v250, OS_LOG_TYPE_DEFAULT, "Migrating to version 510000", buf, 2u);
            }

            if ([v249 sagaOnDiskDatabaseRevision] && objc_msgSend(v249, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v249 setSagaNeedsFullUpdate:1];
              [v249 setSagaLastLibraryUpdateTime:0];
            }

            v251 = -14288;
LABEL_469:
            v3 = v251 | 0x70000u;
            goto LABEL_553;
          }

          if (v3 == 510000)
          {
            v70 = v2;
            v71 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Migrating to version 510010", buf, 2u);
            }

            if ([v70 sagaOnDiskDatabaseRevision] && objc_msgSend(v70, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v70 setSagaNeedsFullUpdate:1];
              [v70 setSagaLastLibraryUpdateTime:0];
            }

            v72 = -14288;
LABEL_222:
            v83 = v72 | 0x70000u;
            goto LABEL_552;
          }
        }
      }

      else if (v3 <= 529999)
      {
        if (v3 == 520010)
        {
          v338 = v367;
          v339 = os_log_create("com.apple.amp.itunescloudd", "XPC");
          if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v339, OS_LOG_TYPE_DEFAULT, "Migrating to version 520020", buf, 2u);
          }

          v340 = [[CloudPendingChangesCoordinator alloc] initWithConfiguration:v338 prefix:@"Saga" loggable:objc_opt_class()];
          [(CloudPendingChangesCoordinator *)v340 removeAllPendingChanges];

          v153 = 520000;
          goto LABEL_531;
        }

        if (v3 == 520020)
        {
          v196 = v2;
          v197 = os_log_create("com.apple.amp.itunescloudd", "XPC");
          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "Migrating to version 530000", buf, 2u);
          }

          if ([v196 sagaOnDiskDatabaseRevision] && objc_msgSend(v196, "icd_sagaDatabaseUserVersion") >= 1)
          {
            [v196 setSagaLastLibraryUpdateTime:0];
          }

          v28 = 5712;
          goto LABEL_317;
        }
      }

      else
      {
        switch(v3)
        {
          case 530000:
            v239 = v2;
            v240 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "Migrating to version 530010", buf, 2u);
            }

            if ([v239 sagaOnDiskDatabaseRevision] && objc_msgSend(v239, "icd_sagaDatabaseUserVersion") >= 1 && !objc_msgSend(v239, "icd_sagaCloudFavoriteSongAddToLibraryBehavior"))
            {
              v241 = sub_10010283C();
              if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109376;
                *&buf[4] = 0;
                *&buf[8] = 1024;
                *&buf[10] = 1;
                _os_log_impl(&_mh_execute_header, v241, OS_LOG_TYPE_DEFAULT, "AddToLibraryWhenFavoriting is enabled, but addToLibraryBehavior=%d, setting to %d", buf, 0xEu);
              }

              [v239 icd_setSagaCloudFavoriteSongAddToLibraryBehavior:1];
            }

            v83 = 530000;
            goto LABEL_552;
          case 530010:
            v209 = v2;
            v210 = v367;
            v211 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
            {
              *block = 0;
              _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "Migrating to version 530020", block, 2u);
            }

            *block = 0;
            v371 = block;
            v372 = 0x2020000000;
            LOBYTE(v373) = 0;
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1000384F8;
            v377 = &unk_1001DA838;
            *&v378 = block;
            [v209 databaseConnectionAllowingWrites:0 withBlock:buf];
            if (*(v371 + 24) == 1 && [v209 sagaOnDiskDatabaseRevision] && objc_msgSend(v209, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v209 setSagaNeedsFullUpdate:1];
              [v209 setSagaLastLibraryUpdateTime:0];
            }

            _Block_object_dispose(block, 8);

            v153 = 530000;
            goto LABEL_531;
          case 530020:
            v26 = v2;
            v27 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Migrating to version 540000", buf, 2u);
            }

            if ([v26 sagaOnDiskDatabaseRevision] && objc_msgSend(v26, "icd_sagaDatabaseUserVersion") >= 1)
            {
              [v26 setSagaNeedsFullUpdate:1];
              [v26 setSagaLastLibraryUpdateTime:0];
            }

            v28 = 15712;
LABEL_317:
            v3 = v28 | 0x80000u;
            break;
        }
      }

LABEL_553:
      [v2 icd_setSagaDatabaseUserVersion:v3];
      v343 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v343, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v343, OS_LOG_TYPE_DEFAULT, "Setting current user version: %ld", buf, 0xCu);
      }
    }

    while (v3 < 710000);
  }

LABEL_10:
  v8 = v2;
  v9 = [v8 valueForDatabaseProperty:@"MLEnableICMLConfig"];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    *block = 0;
    v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v9 error:block];
    v14 = *block;

    v15 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!v13 || v14)
    {
      if (v16)
      {
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Error (%{public}@) unarchiving enableICMLConfigData", buf, 0xCu);
      }
    }

    else
    {
      if (v16)
      {
        *buf = 138543362;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found autoEnableICMLConfig=%{public}@", buf, 0xCu);
      }

      v15 = [v13 objectForKey:@"MLActiveAccountDSID"];
      v17 = [v13 objectForKey:@"MLAutoEnableICML"];
      v18 = v17;
      if (v15 && ![v17 intValue])
      {
        v19 = dispatch_semaphore_create(0);
        v20 = [ICUserIdentity specificAccountWithDSID:v15];
        v21 = +[ICUserIdentityStore defaultIdentityStore];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100039004;
        v377 = &unk_1001DE9E0;
        *&v378 = v20;
        *(&v378 + 1) = v21;
        v379 = v19;
        v22 = v20;
        v23 = v21;
        v24 = v19;
        [v23 getPropertiesForUserIdentity:v22 completionHandler:buf];
        dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    [v8 deleteDatabaseProperty:@"MLEnableICMLConfig"];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No configuration to determine if iCML should be enabled/disabled", buf, 2u);
    }
  }
}

void sub_1000377C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_100037830(void *a1)
{
  v1 = a1;
  v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Removing play data plists", v9, 2u);
  }

  v3 = [v1 libraryContainerPath];

  v4 = [v3 stringByAppendingPathComponent:@"iTunes_Control/iTunes/LatestCloudPlayCountChanges.plist"];
  v5 = [v3 stringByAppendingPathComponent:@"iTunes_Control/iTunes/LatestCloudPlayDateChanges.plist"];
  v6 = [v3 stringByAppendingPathComponent:@"iTunes_Control/iTunes/LatestCloudSkipCountChanges.plist"];
  v7 = [v3 stringByAppendingPathComponent:@"iTunes_Control/iTunes/LatestCloudPlayDataChangesDate.plist"];
  v8 = +[NSFileManager defaultManager];
  [v8 removeItemAtPath:v4 error:0];
  [v8 removeItemAtPath:v5 error:0];
  [v8 removeItemAtPath:v6 error:0];
  [v8 removeItemAtPath:v7 error:0];
}

void sub_100037998(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100039BA8;
  v5[3] = &unk_1001DE788;
  v6 = dispatch_semaphore_create(0);
  v4 = v6;
  [v3 removeSource:a1 withCompletionHandler:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100037A54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100039A1C;
  v6[3] = &unk_1001DA7A8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_100037AEC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [ML3Track queryWithLibrary:v3 predicate:a2];
  +[NSMutableArray array];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000398F4;
  v5 = v13[3] = &unk_1001DED58;
  v14 = v5;
  [v4 enumeratePersistentIDsUsingBlock:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100039954;
  v10[3] = &unk_1001DEDD0;
  v6 = v5;
  v11 = v6;
  v7 = v3;
  v12 = v7;
  [v7 performDatabaseTransactionWithBlock:v10];
  if ([v6 count])
  {
    [v7 setJaliscoNeedsUpdateForTokens:1];
    v8 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 count];
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing purchase history token from %lu tracks", buf, 0xCu);
    }
  }
}

void sub_100037CDC(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT COUNT() FROM artwork_token WHERE artwork_type = ? AND artwork_token LIKE '%%0x0%%'" withParameters:&off_1001EE188];
  v4 = [v3 int64ValueForFirstRowAndColumn];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Detected %lld invalid artist artwork tokens, clearing last artist image import date...", &v7, 0xCu);
    }

    [*(a1 + 32) setValue:&off_1001ED060 forDatabaseProperty:@"MLArtistHeroImageImportDate"];
  }
}

void sub_100037DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

id sub_100037E40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"DELETE FROM artwork_token WHERE artwork_source_type=%d AND entity_pid", 400];
  v5 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v6 = [v5 statementWithPrefix:v4 inParameterCount:{objc_msgSend(*(a1 + 32), "count")}];

  v7 = *(a1 + 32);
  v23 = 0;
  v8 = [v3 executeUpdate:v6 withParameters:v7 error:&v23];
  v9 = v23;
  v10 = v9;
  if (v8)
  {
    v18 = v9;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(a1 + 40) updateBestArtworkTokenForEntityPersistentID:objc_msgSend(*(*(&v19 + 1) + 8 * v15) entityType:"longLongValue") artworkType:0 retrievalTime:1 preserveExistingAvailableToken:0 usingConnection:{v3, 0.0}];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    [*(a1 + 40) cleanupArtworkWithOptions:30 usingConnection:v3];
    v10 = v18;
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to purge artwork_token for movies and tv shows. err=%{public}@", buf, 0xCu);
    }
  }

  return v8;
}

void sub_100038088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

id sub_1000380E8(uint64_t a1, void *a2)
{
  v7 = ML3ContainerPropertyDateModified;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [ML3Container setValues:&off_1001EE1A0 forProperties:v4 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(a1 + 40) usingConnection:v3, v7];

  return v5;
}

void sub_1000381B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:*a3];
  v6 = *(a3 + 8);
  v7 = [v5 pathExtension];
  v8 = ML3OfflineHLSFileExtensions();
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v24 = v7;
    v26 = v5;
    v10 = [[ICFileContentKeyStore alloc] initWithPath:v5];
    v11 = [NSMutableArray arrayWithCapacity:2];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10003967C;
    v31[3] = &unk_1001DA810;
    v25 = v6;
    v12 = v6;
    v32 = v12;
    v33 = *(a1 + 32);
    v13 = v11;
    v34 = v13;
    [v10 enumerateKeyEntriesUsingBlock:v31];
    v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 count];
      *buf = 134218498;
      v37 = v15;
      v38 = 2114;
      v39 = v12;
      v40 = 2114;
      v41 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Purging %lu keys for song '%{public}@': %{public}@", buf, 0x20u);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v10 removeKeyForIdentifier:v21];
          if (v22)
          {
            v23 = os_log_create("com.apple.amp.itunescloudd", "XPC");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v37 = v21;
              v38 = 2114;
              v39 = v22;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to remove key '%{public}@'. err=%{public}@", buf, 0x16u);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    v6 = v25;
    v5 = v26;
    v7 = v24;
  }
}

void sub_1000384F8(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT 1 FROM container WHERE is_collaborative = 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasAtLeastOneRow];
}

void sub_10003855C(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT COUNT() FROM item_store WHERE store_saga_id != 0 GROUP BY store_saga_id HAVING COUNT() > 1"];
  if ([v3 int64ValueForFirstRowAndColumn])
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = [v3 int64ValueForFirstRowAndColumn];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %lld rows with duplicate saga_ids. Will perform a reset sync", &v5, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100038650(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeQuery:@"SELECT COUNT() FROM container WHERE store_cloud_id != 0 GROUP BY store_cloud_id HAVING COUNT() > 1"];
  if ([v4 int64ValueForFirstRowAndColumn])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = [v4 int64ValueForFirstRowAndColumn];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found %lld rows with duplicate cloud-ids. Will perform a reset sync", &v19, 0xCu);
    }
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) != 0 || (+[ICDeviceInfo currentDeviceInfo](ICDeviceInfo, "currentDeviceInfo"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isIPhone], v6, !v7))
  {
    v8 = v4;
  }

  else
  {
    v8 = [v3 executeQuery:@"SELECT COUNT() FROM container WHERE sync_id != 0 AND is_src_remote != 1"];

    if ([v8 int64ValueForFirstRowAndColumn])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v9 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 int64ValueForFirstRowAndColumn];
        v19 = 134217984;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found %lld rows with un expected sync_ids for playlists. Will perform a reset sync", &v19, 0xCu);
      }
    }
  }

  v11 = *(a1 + 32);
  if (*(*(v11 + 8) + 24))
  {
    v12 = v8;
  }

  else
  {
    v12 = [v3 executeQuery:@"SELECT COUNT() FROM container WHERE cloud_global_id != '' GROUP BY cloud_global_id HAVING COUNT() > 1"];

    v13 = [v12 int64ValueForFirstRowAndColumn];
    v11 = *(a1 + 32);
    if (v13)
    {
      *(*(v11 + 8) + 24) = 1;
      v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 int64ValueForFirstRowAndColumn];
        v19 = 134217984;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found %lld rows with duplicate cloud global ids. Will perform a reset sync", &v19, 0xCu);
      }

      v11 = *(a1 + 32);
    }
  }

  if (*(*(v11 + 8) + 24))
  {
    v16 = v12;
  }

  else
  {
    v16 = [v3 executeQuery:@"SELECT COUNT() FROM container WHERE cloud_universal_library_id != '' GROUP BY cloud_universal_library_id HAVING COUNT() > 1"];

    if ([v16 int64ValueForFirstRowAndColumn])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v17 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v16 int64ValueForFirstRowAndColumn];
        v19 = 134217984;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found %lld rows with duplicate cloud universal library ids. Will perform a reset sync", &v19, 0xCu);
      }
    }
  }
}

void sub_100038994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICDeviceInfo currentDeviceInfo];
  v5 = [v4 isIPhone];

  if (v5 && ([v3 executeUpdate:@"UPDATE container SET sync_id=0 WHERE (is_src_remote != 1 AND sync_id != 0)"] & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error clearing sync id from playlists that were incorrectly updated", v7, 2u);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) setSagaNeedsFullUpdate:1];
    [*(a1 + 32) setSagaInitiateClientResetSync:1];
    [*(a1 + 32) setSagaLastLibraryUpdateTime:0];
    [*(a1 + 32) setSagaLastSubscribedContainersUpdateTime:0];
  }
}

void sub_100038A9C(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:{@"SELECT item_pid FROM item JOIN item_store USING(item_pid) WHERE (media_type IN (8, 1032) AND store_saga_id = 0 AND match_redownload_params != '' AND in_my_library = 1) LIMIT 1"}];
  v4 = [v3 objectForFirstRowAndColumn];

  if (v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found at least one item in library with invalid saga id and valid download parameters. Will initiate a reset sync to clear state", v6, 2u);
    }

    [*(a1 + 32) setSagaNeedsFullUpdate:1];
    [*(a1 + 32) setSagaInitiateClientResetSync:1];
    [*(a1 + 32) setSagaLastLibraryUpdateTime:0];
    [*(a1 + 32) setSagaLastSubscribedContainersUpdateTime:0];
  }
}

void sub_100038B7C(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT COUNT() FROM item_store WHERE store_saga_id != 0 GROUP BY store_saga_id HAVING COUNT() > 1"];
  if ([v3 int64ValueForFirstRowAndColumn])
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = [v3 int64ValueForFirstRowAndColumn];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %lld rows with duplicate saga_ids. Will perform a reset sync", &v5, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t sub_100038C7C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeArtworkAssetWithToken:{*(*(&v8 + 1) + 8 * v6), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_100038D74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100038D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CloudPendingChangesCoordinator alloc] initWithConfiguration:*(a1 + 32) prefix:@"Saga" loggable:objc_opt_class()];
  v5 = [v3 executeQuery:@"SELECT item_pid withParameters:{store_item_id, subscription_store_item_id FROM item JOIN item_store USING(item_pid) JOIN item_stats USING(item_pid) WHERE in_my_library AND liked_state=? AND liked_state_changed_date=? AND store_saga_id=? AND media_type IN (?, ?)", &off_1001EE200}];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000390C4;
  v7[3] = &unk_1001DA8E8;
  v8 = *(a1 + 32);
  v9 = v4;
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v6 = v4;
  [v5 enumerateRowsWithBlock:v7];
}

void sub_100038EB4(void *a1, void *a2)
{
  v3 = *(*(a1[5] + 8) + 40);
  v10 = ML3TrackPropertyLikedStateChangedDate;
  v4 = a2;
  v5 = [NSArray arrayWithObjects:&v10 count:1];
  v6 = [ML3Track setDifferentValues:v3 forProperties:v5 forEntityPersistentIDs:*(*(a1[6] + 8) + 40) inLibrary:a1[4] usingConnection:v4];

  if ((v6 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(*(a1[5] + 8) + 40) count];
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error setting liked state changed dates for %d trackPIDS", v9, 8u);
    }
  }
}

void sub_100039004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      v4 = [[ICConnectionConfiguration alloc] initWithUserIdentity:*(a1 + 32) userIdentityStore:*(a1 + 40)];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000390BC;
      v5[3] = &unk_1001DE828;
      v6 = *(a1 + 48);
      sub_1000E706C(v4, -101, v5);
    }
  }
}

void sub_1000390C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v6 = [v3 int64ForColumnIndex:2];

  if (v4 && v5 | v6)
  {
    v7 = +[NSDate date];
    v8 = [SagaFavoriteEntityOperation alloc];
    v9 = *(a1 + 32);
    v10 = [v9 clientIdentity];
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = v6;
    }

    v12 = [(SagaFavoriteEntityOperation *)v8 initWithConfiguration:v9 clientIdentity:v10 persistentID:v4 storeID:v11 entityType:0 time:v7];

    v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v20 = v4;
      v21 = 2048;
      v22 = v5;
      v23 = 2048;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Adding pending change to favorite track with persistentID=%lld, storeID=%lld, subscriptionStoreID=%lld", buf, 0x20u);
    }

    [*(a1 + 40) addPendingChange:v12];
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v18 = v7;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
    [v14 addObject:v15];

    v16 = *(*(*(a1 + 56) + 8) + 40);
    v17 = [NSNumber numberWithLongLong:v4];
    [v16 addObject:v17];

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

void sub_1000392DC(id a1, ML3DatabaseConnection *a2)
{
  v4 = 0;
  if (([(ML3DatabaseConnection *)a2 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key withParameters:value) VALUES (? error:?);", &off_1001EE1E8, &v4]& 1) == 0)
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Error updating max library items that can be pinned", v3, 2u);
    }
  }
}

void sub_100039374(id a1, ML3DatabaseConnection *a2)
{
  v2 = a2;
  v18 = 0;
  v3 = [(ML3DatabaseConnection *)v2 executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key='MLCloudLibraryMaxPinCount';" withParameters:0 error:&v18];
  v4 = v18;
  if ((v3 & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not delete default pin value", buf, 2u);
    }
  }

  v6 = +[ICDeviceInfo currentDeviceInfo];
  if (([v6 isIPhone]& 1) != 0)
  {
    v7 = _os_feature_enabled_impl();

    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v8 = +[ICDeviceInfo currentDeviceInfo];
  if ([v8 isIPad])
  {
    v9 = _os_feature_enabled_impl();

    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v10 = +[ICDeviceInfo currentDeviceInfo];
  if ([v10 isAppleTV])
  {
    v11 = _os_feature_enabled_impl();

    if ((v11 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v12 = +[ICDeviceInfo currentDeviceInfo];
  if (![v12 isROSDevice])
  {

    v15 = v4;
    goto LABEL_20;
  }

  v13 = _os_feature_enabled_impl();

  if (v13)
  {
LABEL_16:
    v16 = v4;
    v14 = [(ML3DatabaseConnection *)v2 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key withParameters:value) VALUES (? error:?);", &off_1001EE1D0, &v16];
    v15 = v16;

    if (v14)
    {
LABEL_21:
      v4 = v15;
      goto LABEL_22;
    }

    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error updating max library items that can be pinned", buf, 2u);
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
}

void sub_1000395E4(id a1, ML3DatabaseConnection *a2)
{
  v4 = 0;
  if (([(ML3DatabaseConnection *)a2 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (MLCloudLibraryMaxPinCount) VALUES (?);" withParameters:&off_1001EE1B8 error:&v4]& 1) == 0)
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Error updating max library items that can be pinned", v3, 2u);
    }
  }
}

void sub_10003967C(void *a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    v6 = [v3 renewalDate];
    v7 = a1[4];
    v12 = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found persisted key '%{public}@' with renewal Date '%{public}@' for song '%{public}@", &v12, 0x20u);
  }

  v8 = [v3 renewalDate];
  v9 = [v8 compare:a1[5]];

  if (v9 == -1)
  {
    v10 = a1[6];
    v11 = [v3 identifier];
    [v10 addObject:v11];
  }
}

void sub_1000397D4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [(NSError *)v2 msv_description];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Automatic download media kind update task completed error=%{public}@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Automatic download media kind update task completed", &v6, 2u);
  }
}

void sub_1000398F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

id sub_100039954(uint64_t a1, void *a2)
{
  v7 = ML3TrackPropertyPurchaseHistoryToken;
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [ML3Track setValues:&off_1001EE170 forProperties:v4 forEntityPersistentIDs:*(a1 + 32) inLibrary:*(a1 + 40) usingConnection:v3, v7];

  return v5;
}

void sub_100039A1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v5;
    v14 = 2048;
    v15 = [v6 longLongValue];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updating track with location '%{public}@' to store_item_id=%lld", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v11[0] = v6;
  v11[1] = v5;
  v9 = [NSArray arrayWithObjects:v11 count:2];
  LOBYTE(v8) = [v8 executeUpdate:@"UPDATE item_store SET store_item_id = ? WHERE item_pid IN (SELECT item_pid FROM item_extra WHERE location = ?)" withParameters:v9 error:0];

  if ((v8 & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to update track with location '%{public}@'", buf, 0xCu);
    }
  }
}

void sub_100039BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "RemoveSource error: %{public}@", &v6, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10003AA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10003AAB0(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelRelationshipSongArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B00 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AB00()
{
  v4[0] = 0;
  if (!qword_100213AF0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10003B0CC;
    v4[4] = &unk_1001DF350;
    v4[5] = v4;
    v5 = off_1001DA9A8;
    v6 = 0;
    qword_100213AF0 = _sl_dlopen();
  }

  v0 = qword_100213AF0;
  if (!qword_100213AF0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:28 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

id sub_10003AC54()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100213B08;
  v7 = qword_100213B08;
  if (!qword_100213B08)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003B004;
    v3[3] = &unk_1001DF318;
    v3[4] = &v4;
    sub_10003B004(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10003AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10003AD34(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertyArtistName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AD84(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelRelationshipSongAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003ADD4(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertyAlbumTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AE24(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertySongTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AE74(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertySongPlayCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AEC4(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertySongSkipCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AF14(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertySongLastDevicePlaybackDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AF64(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertySongLibraryAddedDate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10003AFB4(uint64_t a1)
{
  v2 = sub_10003AB00();
  result = dlsym(v2, "MPModelPropertySongUserRating");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10003B004(uint64_t a1)
{
  sub_10003AB00();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPPropertySet");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213B08 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPPropertySetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:32 description:{@"Unable to find class %s", "MPPropertySet"}];

    __break(1u);
  }
}

uint64_t sub_10003B0CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213AF0 = result;
  return result;
}

void sub_10003B5F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10003B614()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100213AE8;
  v7 = qword_100213AE8;
  if (!qword_100213AE8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003BAD8;
    v3[3] = &unk_1001DF318;
    v3[4] = &v4;
    sub_10003BAD8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10003B6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003B6F4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100213AF8;
  v7 = qword_100213AF8;
  if (!qword_100213AF8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003BA10;
    v3[3] = &unk_1001DF318;
    v3[4] = &v4;
    sub_10003BA10(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10003B7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B7D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = +[NSMutableArray array];
    v9 = [v5 results];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10003B990;
    v13[3] = &unk_1001DA938;
    v14 = v8;
    v10 = v8;
    [v9 enumerateItemsUsingBlock:v13];

    v11 = [WeakRetained aggregateLibraryRecommendationMetricsFromSnapshots:v10];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    WeakRetained = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve library response for artist analysis. err=%{public}@", buf, 0x16u);
    }
  }
}

void sub_10003B990(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_10003B6F4();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[ICMusicLibraryContentItemSnapshot alloc] initWithSong:v4];
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10003BA10(uint64_t a1)
{
  sub_10003AB00();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelSong");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213AF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPModelSongClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:29 description:{@"Unable to find class %s", "MPModelSong"}];

    __break(1u);
  }
}

void sub_10003BAD8(uint64_t a1)
{
  sub_10003AB00();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPModelLibraryRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213AE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPModelLibraryRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:33 description:{@"Unable to find class %s", "MPModelLibraryRequest"}];

    __break(1u);
  }
}

void sub_10003C9A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10003C9C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v5 || v6)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = WeakRetained;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to retrieve library response for artist analysis. err=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v8 = +[NSMutableArray array];
    v9 = [v5 results];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003CC18;
    v16[3] = &unk_1001DA938;
    v10 = v8;
    v17 = v10;
    [v9 enumerateItemsUsingBlock:v16];

    v11 = [WeakRetained aggregateLibraryRecommendationMetricsFromSnapshots:v10];
    v12 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = [v11 count];
      *buf = 138543618;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Analyzing %lu user library artists.", buf, 0x16u);
    }

    v15 = [WeakRetained createFeatureProviderDictionaryFromNewContentResponse:*(a1 + 40) withLibraryArtistSnapshots:v11];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003CC18(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_10003B6F4();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[ICMusicLibraryContentItemSnapshot alloc] initWithSong:v4];
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10003CDA0(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  ICDAAPUtilitiesWriteContainer();
}

void sub_10003CE60(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003CF24;
  v6[3] = &unk_1001DA9C8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_10003CF24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = *(a1 + 40);
  v10 = *(a1 + 48);
  v7 = v9;
  v8 = v5;
  ICDAAPUtilitiesWriteContainer();
}

void sub_10003D00C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  ICDAAPUtilitiesWriteProperty();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D0D0;
  v7[3] = &unk_1001DE390;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_10003D0D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) hasInfoForProperty:v5])
  {
    [*(a1 + 32) elementCodeForProperty:v5];
    [*(a1 + 32) valueTypeForProperty:v5];
    v7 = *(a1 + 40);
    ICDAAPUtilitiesWriteProperty();
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No DAAP code found for container property: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_10003E1BC(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  v6 = [a3[1] unsignedLongLongValue];
  [a3[2] doubleValue];
  v8 = v7;
  if ([v5 longLongValue] >= 1 && ((objc_msgSend(*(a1 + 32), "ignoreMinRefreshInterval") & 1) != 0 || *(a1 + 48) >= v8 + v6))
  {
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 unsignedLongValue];
      v11 = *(a1 + 48) - v8;
      v12 = 134218496;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      v16 = 2048;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipping update for playlist cloud ID: %lu -- time since update = %.fs (min refresh = %llus)", &v12, 0x20u);
    }
  }
}

uint64_t sub_10003E30C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003E324(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10003E384(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    LODWORD(v9) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SagaSubscribedPlaylistUpdater import succeeded: %d", &v8, 8u);
  }

  if (v5)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SagaSubscribedPlaylistUpdater import failed: %{public}@", &v8, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10003EBF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(v5, "did");
    v7 = xpc_dictionary_get_value(v5, "fid");
    v8 = xpc_dictionary_get_value(v5, "pid");
    if (v6 && xpc_get_type(v6) == &_xpc_type_int64 && v7 && xpc_get_type(v7) == &_xpc_type_int64 && v8 && xpc_get_type(v8) == &_xpc_type_int64)
    {
      v9 = [AMSFamilyAccountPair alloc];
      value = xpc_int64_get_value(v6);
      v11 = xpc_int64_get_value(v8);
      v12 = [v9 initWithDownloaderAccountID:value purchaserAccountID:v11 familyID:xpc_int64_get_value(v7)];
      [*(a1 + 32) addObject:v12];
    }
  }

  return 1;
}

void sub_10003FF80()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100213B58;
  v9 = qword_100213B58;
  if (!qword_100213B58)
  {
    v1 = sub_100040134();
    v7[3] = dlsym(v1, "MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification");
    qword_100213B58 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getMPRestrictionsMonitorAllowsExplicitContentDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"ICDServerNotificationsManager.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000400CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000400E4(uint64_t a1)
{
  v2 = sub_100040134();
  result = dlsym(v2, "MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100040134()
{
  v4[0] = 0;
  if (!qword_100213B60)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10004068C;
    v4[4] = &unk_1001DF350;
    v4[5] = v4;
    v5 = off_1001DAA88;
    v6 = 0;
    qword_100213B60 = _sl_dlopen();
  }

  v0 = qword_100213B60;
  if (!qword_100213B60)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ICDServerNotificationsManager.m" lineNumber:33 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_100040288()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = qword_100213B70;
  v9 = qword_100213B70;
  if (!qword_100213B70)
  {
    v1 = sub_100040134();
    v7[3] = dlsym(v1, "MPHomeUserMonitorAllowExplicitSettingDidChangeNotification");
    qword_100213B70 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *getMPHomeUserMonitorAllowExplicitSettingDidChangeNotification(void)"];
    [v4 handleFailureInFunction:v5 file:@"ICDServerNotificationsManager.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1000403D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000403EC(uint64_t a1)
{
  sub_100040134();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPHomeMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213B78 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPHomeMonitorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDServerNotificationsManager.m" lineNumber:34 description:{@"Unable to find class %s", "MPHomeMonitor"}];

    __break(1u);
  }
}

void sub_1000404B4(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  v5 = *(a1 + 32);
  v6 = [NSString stringWithUTF8String:string];
  [v5 _didReceiveDistributedNotification:v6 withStreamEvent:v3];
}

void sub_100040544(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v4 = *(a1 + 32);
  v5 = [NSString stringWithUTF8String:string];
  [v4 _didReceiveDarwinNotification:v5];
}

void sub_1000405C0(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  v4 = *(a1 + 32);
  v5 = [NSString stringWithUTF8String:string];
  [v4 _didReceiveTelephonyCenterNotification:v5];
}

void *sub_10004063C(uint64_t a1)
{
  v2 = sub_100040134();
  result = dlsym(v2, "MPHomeUserMonitorAllowExplicitSettingDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10004068C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213B60 = result;
  return result;
}

void *sub_100040700(uint64_t a1)
{
  v2 = sub_100040134();
  result = dlsym(v2, "MPRestrictionsMonitorAllowsExplicitContentDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213B58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100041388(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(*(a1 + 32) + 96))
  {
    [v3 setMergeToCloudLibraryPreference:?];
    v3 = v7;
  }

  [v3 setActiveLocker:1];
  v4 = [v7 cloudLibraryStateReason];
  v5 = [v4 mutableCopy];

  v6 = [NSNumber numberWithInteger:*(*(a1 + 32) + 112)];
  if (v5)
  {
    [v5 setObject:v6 forKey:@"CloudLibraryStateReasonKey"];
  }

  else
  {
    v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v6, @"CloudLibraryStateReasonKey", 0];
  }

  [v7 setCloudLibraryStateReason:v5];
}

void sub_1000414B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = [*(v6 + 96) BOOLValue];
    v10 = *(*(a1 + 32) + 112);
    v11 = 138544642;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting account %{public}@ as the active locker account, dsid=%{public}@, _mergeToCloudLibraryPreference=%d, enableReason=%d finished with error=%{public}@", &v11, 0x36u);
  }

  if (v4)
  {
    [*(a1 + 32) setError:v4];
    [*(a1 + 32) setStatus:3];
    [*(a1 + 32) setAuthenticateFailureCode:&off_1001ED198];
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100041B28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if ([objc_opt_class() _isClientAllowedToRequestRestrictedInformationForConnection:v6])
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying client with observation token %{public}@ of updated storefront identifier: %{public}@.", buf, 0x20u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100041D08;
    v13[3] = &unk_1001DE828;
    v13[4] = *(a1 + 32);
    v11 = [v6 remoteObjectProxyWithErrorHandler:v13];
    [v11 storefrontIdentifierDidChange:*(a1 + 40)];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543874;
      v15 = v12;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping notification of updated storefront identifier for client with observation token %{public}@: client connection %{public}@ is not allowed to access restricted information.", buf, 0x20u);
    }
  }
}

void sub_100041D08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to obtain remote proxy to notify of updated storefront identifier; error = %{public}@.", &v6, 0x16u);
  }
}

void sub_100042458(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (([objc_opt_class() _shouldBypassEnforcementOfPrivacyAcknowledgementForClientConnection:v5 forIncomingCloudServiceCapabilitiesRequest:0] & 1) == 0)
  {
    [*(a1 + 40) setObject:v5 forKey:v7];
  }
}

void sub_1000424D4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if ([objc_opt_class() _shouldBypassEnforcementOfPrivacyAcknowledgementForClientConnection:v5 forIncomingCloudServiceCapabilitiesRequest:0])
  {
    [*(a1 + 40) setObject:v5 forKey:v7];
  }
}

void sub_100042550(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if ([objc_opt_class() _isClientAllowedToRequestCapabilitiesForConnection:v6])
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = ICCloudServiceCapabilitiesGetDescription();
      *buf = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying client with observation token %{public}@ of updated cloud service capabilities: %{public}@.", buf, 0x20u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100042748;
    v14[3] = &unk_1001DE828;
    v14[4] = *(a1 + 32);
    v12 = [v6 remoteObjectProxyWithErrorHandler:v14];
    [v12 capabilitiesDidChange:*(a1 + 40)];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543874;
      v16 = v13;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping notification of updated cloud service capabilities for client with observation token %{public}@: client connection %{public}@ is not allowed to access capabilities.", buf, 0x20u);
    }
  }
}

void sub_100042748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to obtain remote proxy to notify of updated cloud service capabilities; error = %{public}@.", &v6, 0x16u);
  }
}

void sub_100042CBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if ([objc_opt_class() _isClientAllowedToRequestRestrictedInformationForConnection:v6])
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying client with observation token %{public}@ of updated storefront country code: %{public}@.", buf, 0x20u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100042E9C;
    v13[3] = &unk_1001DE828;
    v13[4] = *(a1 + 32);
    v11 = [v6 remoteObjectProxyWithErrorHandler:v13];
    [v11 storefrontCountryCodeDidChange:*(a1 + 40)];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543874;
      v15 = v12;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping notification of updated storefront country code for client with observation token %{public}@: client connection %{public}@ is not allowed to access restricted information.", buf, 0x20u);
    }
  }
}

void sub_100042E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to obtain remote proxy to notify of updated storefront country code; error = %{public}@.", &v6, 0x16u);
  }
}

void sub_1000430B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v10 = [a2 storefrontIdentifier];
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v11 = +[ICUserIdentityStore defaultIdentityStore];
      v12 = [v11 localStoreAccountProperties];
      v9 = [v12 storefrontIdentifier];

      if (!v9)
      {
        v8 = [NSError msv_errorWithDomain:ICErrorDomain code:0 debugDescription:@"Found nil storefront identifier from local store account."];
        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32);
          v15 = [v8 msv_description];
          v16 = 138543618;
          v17 = v14;
          v18 = 2114;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@", &v16, 0x16u);
        }

        goto LABEL_5;
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  v6 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v16 = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@: Encountered error getting properties for active account: %{public}@.", &v16, 0x16u);
  }

  v8 = v5;
LABEL_5:
  v9 = 0;
LABEL_10:
  [*(a1 + 32) _updateWithStorefrontIdentifier:v9 error:v8];
}

void sub_100043544(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch bag with error: %{public}@.", &v9, 0x16u);
    }
  }

  [*(a1 + 32) _updateWithBag:v5 error:v6];
}

void sub_1000437CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000437EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) _updateWithCapabilities:a2 error:v5 privacyAcknowledgementPolicy:*(a1 + 48) capabilitiesRequestOperation:WeakRetained];
}

void sub_100043A80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Notifying client with observation token %{public}@ of updated active account.", buf, 0x16u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100043BD0;
  v10[3] = &unk_1001DE828;
  v10[4] = *(a1 + 32);
  v9 = [v6 remoteObjectProxyWithErrorHandler:v10];

  [v9 activeAccountDidChange];
}

void sub_100043BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to obtain remote proxy to notify of updated active account; error = %{public}@.", &v6, 0x16u);
  }
}

void sub_1000441B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000441FC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdatedBag:v3];
}

void sub_100044258(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleUpdatedSubscriptionStatus:v4];
}

void sub_100044BAC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 originatingClientConnection];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_100045060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, id a22)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a22);
  _Unwind_Resume(a1);
}

void sub_1000450B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    [WeakRetained _handleClientConnectionInterrupted:v2];
  }
}

void sub_100045118(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    [WeakRetained _handleClientConnectionInvalidated:v2];
  }
}

void sub_1000454B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000454D8(uint64_t a1)
{
  sub_10004574C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPStoreItemLibraryImportElement");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213B80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPStoreItemLibraryImportElementClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDCloudServiceStatusMonitor.m" lineNumber:43 description:{@"Unable to find class %s", "MPStoreItemLibraryImportElement"}];

    __break(1u);
  }
}

void sub_1000455A0(uint64_t a1)
{
  sub_10004574C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPStoreItemLibraryImport");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213B90 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPStoreItemLibraryImportClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDCloudServiceStatusMonitor.m" lineNumber:42 description:{@"Unable to find class %s", "MPStoreItemLibraryImport"}];

    __break(1u);
  }
}

void sub_100045668(uint64_t a1)
{
  sub_10004574C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213B98 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDCloudServiceStatusMonitor.m" lineNumber:41 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

uint64_t sub_100045730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_10004574C()
{
  v3[0] = 0;
  if (!qword_100213B88)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10004589C;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DACC8;
    v5 = 0;
    qword_100213B88 = _sl_dlopen();
  }

  if (!qword_100213B88)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICDCloudServiceStatusMonitor.m" lineNumber:40 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10004589C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213B88 = result;
  return result;
}

void sub_100045BFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v9 = v6;
    v11 = [v9 domain];
    if ([v11 isEqualToString:ICErrorDomain])
    {
      v12 = [v9 code];

      if (v12 == -8200)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v13 = [NSError msv_errorWithDomain:ICErrorDomain code:-8200 underlyingError:v9 debugDescription:@"Failed to fetch developer token."];

    v9 = v13;
LABEL_8:
    v14 = *(a1 + 48);
    v10 = [v9 msv_errorByRemovingUnsafeUserInfo];
    (*(v14 + 16))(v14, 0, v10);
    goto LABEL_9;
  }

  v8 = *(a1 + 32);
  v9 = [objc_opt_class() _clientInfoForUserTokenRequestWithRequestingApplicationBundleIdentifier:*(a1 + 40)];
  v10 = [[ICMusicUserTokenFetchRequest alloc] initWithDeveloperToken:v5 clientInfo:v9 options:*(a1 + 56) & 1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100045DC4;
  v15[3] = &unk_1001DAB20;
  v16 = v5;
  v17 = *(a1 + 48);
  [v10 performRequestWithResponseHandler:v15];

LABEL_9:
}

void sub_100045DC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[ICMusicKitTokensResponse alloc] initWithDeveloperToken:*(a1 + 32) userToken:v6 userTokenFetchingError:v5];

  (*(*(a1 + 40) + 16))();
}

void sub_10004795C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004797C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Could not load subscription status (error=%{public}@, status=%{public}@)- will rety the operation later", buf, 0x20u);
    }

    [*(a1 + 40) addPendingChange:*(a1 + 32)];
    goto LABEL_10;
  }

  if (([v5 hasCapability:512] & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Cannot run operation as user is not subscribed to Cloud Music Library", buf, 0xCu);
    }

    v10 = MSVAutoBugCaptureDomainMusicLibrary;
    v16[0] = @"FavoriteChangeOperation";
    v11 = [*(a1 + 32) description];
    v16[1] = @"SubscriptionStatus";
    v17[0] = v11;
    v17[1] = v5;
    v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v18 = v12;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    [MSVAutoBugCapture snapshotWithDomain:v10 type:@"Bug" subType:@"OFT-FavoriteEntityForUnsupportedSubscription" context:@"Unsupported API call" triggerThresholdValues:0 events:v13 completion:0];

    [*(a1 + 32) _revertPendingFavoriteEntityForPermanentlyFailedOperation];
LABEL_10:
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100047D9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_1000480CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100048100(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  if (*(a1 + 56) == 1)
  {
    v8 = *(a1 + 32);
    v45 = v6;
    v9 = [NSArray arrayWithObjects:&v45 count:1];
    v34 = 0;
    LOBYTE(v8) = [v8 executeUpdate:@"UPDATE item_stats SET liked_state=1 withParameters:liked_state_changed_date=0 WHERE item_pid=?" error:{v9, &v34}];
    v10 = v34;
    *(*(*(a1 + 48) + 8) + 24) = v8;

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 40);
        v13 = [v7 longLongValue];
        v14 = *(*(a1 + 40) + 88);
        *buf = 138544130;
        v38 = v12;
        v39 = 2048;
        v40 = v13;
        v41 = 2048;
        v42 = v14;
        v43 = 2114;
        v44 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Could not revert liked_state=1, liked_state_changed_date=0 for track with persistentID=%lld, storeID:%lld. Error=%{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v15 = *(a1 + 32);
    v36 = v7;
    v16 = [NSArray arrayWithObjects:&v36 count:1];
    v33 = v10;
    v17 = [v15 executeUpdate:@"UPDATE item_store SET store_saga_id = store_saga_id WHERE item_pid = ?" withParameters:v16 error:&v33];
    v18 = v33;

    *(*(*(a1 + 48) + 8) + 24) = v17;
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      if (*(a1 + 57) != 1)
      {
        goto LABEL_11;
      }

      v19 = *(a1 + 32);
      v35[0] = &off_1001ED1C8;
      v35[1] = v7;
      v35[2] = &off_1001ED1E0;
      v35[3] = &off_1001ED1F8;
      v20 = [NSArray arrayWithObjects:v35 count:4];
      v32 = v18;
      LOBYTE(v19) = [v19 executeUpdate:@"UPDATE item SET keep_local = ? WHERE item_pid = ? AND in_my_library = 1 AND media_type IN (? withParameters:?)" error:{v20, &v32}];
      v21 = v32;

      *(*(*(a1 + 48) + 8) + 24) = v19;
      v18 = v21;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
LABEL_11:
        v22 = [*(a1 + 40) musicLibrary];
        +[ML3Track incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:](ML3Track, "incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:", v22, [v7 longLongValue], 0, 0, *(a1 + 32));

        v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 40);
          v25 = [v7 longLongValue];
          *buf = 138543618;
          v38 = v24;
          v39 = 2048;
          v40 = v25;
          v26 = "%{public}@ Updated in_my_library for track with persistent ID %lld";
          v27 = v23;
          v28 = OS_LOG_TYPE_DEFAULT;
          v29 = 22;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v27, v28, v26, buf, v29);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    v18 = v10;
  }

  *a4 = 1;
  v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v30 = *(a1 + 40);
    v31 = [v7 longLongValue];
    *buf = 138543874;
    v38 = v30;
    v39 = 2048;
    v40 = v31;
    v41 = 2114;
    v42 = v18;
    v26 = "%{public}@ Failed to update in_my_library for track with persistent ID %lld with error: %{public}@";
    v27 = v23;
    v28 = OS_LOG_TYPE_ERROR;
    v29 = 32;
    goto LABEL_16;
  }

LABEL_17:
}

void sub_1000484F8(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) musicLibrary];
    [v3 notifyEntitiesAddedOrRemoved];

    v4 = [*(a1 + 32) musicLibrary];
    [v4 notifyContentsDidChange];
  }
}

id sub_100048760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = [NSNumber numberWithLongLong:*(*(a1 + 32) + 96)];
  v27 = v7;
  v8 = [NSArray arrayWithObjects:&v27 count:1];
  v18 = 0;
  v9 = [v3 executeUpdate:@"UPDATE album_artist SET liked_state=1 withParameters:liked_state_changed_date=0 WHERE album_artist_pid=?" error:{v8, &v18}];
  v10 = v18;

  if ((v9 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 88);
      v14 = *(v12 + 96);
      *buf = 138544130;
      v20 = v12;
      v21 = 2048;
      v22 = v13;
      v23 = 2048;
      v24 = v14;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Could not revert liked_state=1, liked_state_changed_date=0 for album_artist with store=%lld, persistentID=%lld. Error=%{public}@", buf, 0x2Au);
    }
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100048BA0;
  v16[3] = &unk_1001DEF00;
  v17 = *(a1 + 40);
  [v3 enqueueBlockForTransactionCommit:v16];

  return v9;
}

id sub_100048994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v23 = *(*(a1 + 32) + 120);
  v7 = [NSArray arrayWithObjects:&v23 count:1];
  v16 = 0;
  v8 = [v3 executeUpdate:@"UPDATE album_artist SET liked_state=1 withParameters:liked_state_changed_date=0 WHERE cloud_universal_library_id=?" error:{v7, &v16}];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 120);
      *buf = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Could not revert liked_state=1, liked_state_changed_date=0 for album_artist with cloud_universal_library_id=%{public}@. Error=%{public}@", buf, 0x20u);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100048B90;
  v14[3] = &unk_1001DEF00;
  v15 = *(a1 + 40);
  [v3 enqueueBlockForTransactionCommit:v14];

  return v8;
}

id *sub_100048B90(id *result, int a2)
{
  if (a2)
  {
    return [result[4] notifyContentsDidChange];
  }

  return result;
}

id *sub_100048BA0(id *result, int a2)
{
  if (a2)
  {
    return [result[4] notifyContentsDidChange];
  }

  return result;
}

id sub_100048DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = [NSNumber numberWithLongLong:*(*(a1 + 32) + 96)];
  v29 = v7;
  v8 = [NSArray arrayWithObjects:&v29 count:1];
  v22 = 0;
  v9 = [v3 executeUpdate:@"UPDATE album SET liked_state=1 withParameters:liked_state_changed_date=0 WHERE album_pid=?" error:{v8, &v22}];
  v10 = v22;

  if (v9)
  {
    v11 = +[NSMutableArray array];
    v12 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStorePlaylistID equalToInt64:*(*(a1 + 32) + 88)];
    v13 = [ML3Track allItemsQueryWithLibrary:*(a1 + 40) predicate:v12 orderingTerms:&__NSArray0__struct usingSections:0];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000492C0;
    v20[3] = &unk_1001DED58;
    v21 = v11;
    v14 = v11;
    [v13 enumeratePersistentIDsUsingBlock:v20];
    [*(a1 + 32) _recomputeInUsersLibraryForTrackPids:v14 resetFavoriteState:0 usingConnection:v3];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 96);
      *buf = 138543874;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Could not revert liked_state=1, liked_state_changed_date=0 for album with album_pid=%lld. Error=%{public}@", buf, 0x20u);
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100049320;
  v18[3] = &unk_1001DEF00;
  v19 = *(a1 + 40);
  [v3 enqueueBlockForTransactionCommit:v18];

  return v9;
}

id sub_1000490B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v23 = *(*(a1 + 32) + 112);
  v7 = [NSArray arrayWithObjects:&v23 count:1];
  v16 = 0;
  v8 = [v3 executeUpdate:@"UPDATE album SET liked_state=1 withParameters:liked_state_changed_date=0 WHERE cloud_library_id=?" error:{v7, &v16}];
  v9 = v16;

  if ((v8 & 1) == 0)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 112);
      *buf = 138543874;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Could not revert liked_state=1, liked_state_changed_date=0 for album with cloud_universal_id=%{public}@ with error=%{public}@", buf, 0x20u);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000492B0;
  v14[3] = &unk_1001DEF00;
  v15 = *(a1 + 40);
  [v3 enqueueBlockForTransactionCommit:v14];

  return v8;
}

id *sub_1000492B0(id *result, int a2)
{
  if (a2)
  {
    return [result[4] notifyContentsDidChange];
  }

  return result;
}

void sub_1000492C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

id *sub_100049320(id *result, int a2)
{
  if (a2)
  {
    return [result[4] notifyContentsDidChange];
  }

  return result;
}

uint64_t sub_100049824(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithLongLong:v7[12]];
  v11 = v8;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  [v7 _recomputeInUsersLibraryForTrackPids:v9 resetFavoriteState:1 usingConnection:v3];

  return 1;
}

uint64_t sub_10004A178(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004A190(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

uint64_t sub_10004A1F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = *(a1 + 32);
  v8 = [*(*(*(a1 + 40) + 8) + 40) allObjects];
  [v7 _recomputeInUsersLibraryForTrackPids:v8 resetFavoriteState:0 usingConnection:v3];

  return 1;
}

uint64_t sub_10004A2A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004A6F0;
  v15[3] = &unk_1001DACE8;
  v7 = *(a1 + 64);
  v18 = *(a1 + 56);
  v19 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16 = v3;
  v17 = v8;
  v10 = v3;
  [v9 enumerateObjectsUsingBlock:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004A89C;
  v13[3] = &unk_1001DEF00;
  v14 = *(a1 + 48);
  [v10 enqueueBlockForTransactionCommit:v13];
  v11 = *(*(*(a1 + 56) + 8) + 24);

  return v11;
}

uint64_t sub_10004A40C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  [v3 setPrivacyContext:v6];

  v7 = [*(a1 + 32) configuration];
  LODWORD(v5) = sub_10013FB04(v7);

  if (v5)
  {
    v32[0] = *(a1 + 40);
    v32[1] = &off_1001ED1C8;
    v8 = [NSNumber numberWithLongLong:*(*(a1 + 32) + 96)];
    v32[2] = v8;
    v9 = [NSArray arrayWithObjects:v32 count:3];
    v22 = 0;
    v10 = [v3 executeUpdate:@"UPDATE album SET cloud_library_id=? withParameters:keep_local=? WHERE album_pid=?" error:{v9, &v22}];
    v11 = v22;
  }

  else
  {
    v31[0] = *(a1 + 40);
    v8 = [NSNumber numberWithLongLong:*(*(a1 + 32) + 96)];
    v31[1] = v8;
    v9 = [NSArray arrayWithObjects:v31 count:2];
    v21 = 0;
    v10 = [v3 executeUpdate:@"UPDATE album SET cloud_library_id=? WHERE album_pid=?" withParameters:v9 error:&v21];
    v11 = v21;
  }

  v12 = v11;

  if (v10)
  {
    v13 = 1;
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = *(v15 + 96);
      *buf = 138544130;
      v24 = v15;
      v25 = 2114;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ set cloud_library_id=%{public}@ for album with persistentID=%lld with error=%{public}@", buf, 0x2Au);
    }

    v13 = 0;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004A6E0;
  v19[3] = &unk_1001DEF00;
  v20 = *(a1 + 48);
  [v3 enqueueBlockForTransactionCommit:v19];

  return v13;
}

id *sub_10004A6E0(id *result, int a2)
{
  if (a2)
  {
    return [result[4] notifyContentsDidChange];
  }

  return result;
}

void sub_10004A6F0(void *a1)
{
  v2 = a1[4];
  v3 = [NSNumber numberWithLongLong:a1[7]];
  v21[0] = v3;
  v4 = [NSNumber numberWithLongLong:*(a1[5] + 96)];
  v21[1] = v4;
  v5 = [NSArray arrayWithObjects:v21 count:2];
  v12 = 0;
  v6 = [v2 executeUpdate:@"UPDATE container SET store_cloud_id=? WHERE container_pid=?" withParameters:v5 error:&v12];
  v7 = v12;
  *(*(a1[6] + 8) + 24) = v6;

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      v10 = a1[7];
      v11 = *(v9 + 96);
      *buf = 138544130;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not set store_cloud_id=%lld for container with persistentID=%lld. Error=%{public}@", buf, 0x2Au);
    }
  }
}

id *sub_10004A89C(id *result, int a2)
{
  if (a2)
  {
    return [result[4] notifyContentsDidChange];
  }

  return result;
}

void sub_10004B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10004B120(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v12 = [v11 method];
    v13 = @"POST";
    if (!v12)
    {
      v13 = @"GET";
    }

    v28 = v13;
    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 responseCode];
    v18 = [v5 responseData];
    *buf = 138545154;
    v30 = v10;
    v31 = 2048;
    v32 = v11;
    v33 = 2114;
    v34 = v28;
    v35 = 2114;
    v36 = v14;
    v37 = 2114;
    v38 = v16;
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v17;
    v43 = 2048;
    v44 = [v18 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);
  }

  if (v6)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed with error: %{public}@", buf, 0x20u);
    }
  }

  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v5;
  v24 = v5;

  v25 = *(*(a1 + 64) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v6;
  v27 = v6;

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10004B9D4(id a1)
{
  qword_100213BA0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICCloudServerAvailabilityServiceProtocol];

  _objc_release_x1();
}

void sub_10004C3D8(uint64_t a1)
{
  *(a1 + 40);
  *(a1 + 40);
  v1 = *(a1 + 32);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10004C4A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = *(a1 + 48);
        v11 = *(a1 + 40);
        ICDAAPUtilitiesWriteProperty();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_10004CA84(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = [v6 msv_description];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished request to end collaboration error=%{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request to end collaboration", &v14, 0xCu);
  }

  v12 = [v5 responseCode];
  if (v12 > 399)
  {
    if (v12 == 404 || v12 == 400)
    {
      v13 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 1;
  if (v12 != 200 && v12 != 204)
  {
LABEL_13:
    v13 = 2;
  }

LABEL_14:
  [a1[4] setStatus:v13];
  [a1[4] setError:v6];
  if (!v6)
  {
    *(a1[4] + 107) = [v5 updateRequired];
    *(a1[4] + 114) = [a1[5] longLongValue];
  }

  [a1[6] endTransaction];
  [a1[4] finish];
}

void sub_10004D01C(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICMediaUserStateCenterServerProtocol];
  v2 = qword_100213BB0;
  qword_100213BB0 = v1;

  v3 = qword_100213BB0;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v3 setClasses:v5 forSelector:"getUserStatesForcingRefresh:withReply:" argumentIndex:0 ofReply:1];
}

void sub_10004D364(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: connection invalidated: pid=%u", &v5, 0x12u);
  }
}

void sub_10004D428(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: connection interrupted: pid=%u", &v5, 0x12u);
  }
}

void sub_10004D8A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [v3 setIdentityStore:v4];

  [v3 setIdentity:*(a1 + 32)];
  [v3 setAllowsExpiredBags:1];
  v5 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v3 setAuthenticationProvider:v5];
}

id sub_10004DAA4(id a1, ICMediaUserState *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10004DB48;
  v5[3] = &unk_1001DB2C8;
  v6 = a2;
  v2 = v6;
  v3 = [(ICMediaUserState *)v2 copyWithBlock:v5];

  return v3;
}

void sub_10004DB48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 music];
  v5 = [v4 copyWithBlock:&stru_1001DB2A0];

  [v3 setMusic:v5];
}

void sub_10004DE4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v59 = *(a1 + 32);
      v60 = v7;
      v8 = [*(a1 + 40) DSID];
      v9 = MSVHasherSharedSeed();
      v11 = v10;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v12 = v9 ^ 0x736F6D6570736575;
      v76 = 0;
      v13 = v10 ^ 0x646F72616E646F6DLL;
      v14 = v9 ^ 0x6C7967656E657261;
      *buf = 1000;
      v15 = [v8 integerValue];
      v16 = v11 ^ 0x7465646279746573 ^ v15;
      v17 = (v12 + v13) ^ __ROR8__(v13, 51);
      v18 = v14 + v16;
      v19 = (v14 + v16) ^ __ROR8__(v16, 48);
      v20 = v19 + __ROR8__(v12 + v13, 32);
      v21 = v18 + v17;
      v22 = v21 ^ __ROR8__(v17, 47);
      v65 = 0x800000000000000;
      memset(&v77[1], 0, 64);
      v23 = v20 ^ __ROR8__(v19, 43) ^ 0x800000000000000;
      v24 = (v20 ^ v15) + v22;
      v25 = v24 ^ __ROR8__(v22, 51);
      v26 = __ROR8__(v21, 32) + v23;
      v27 = __ROR8__(v23, 48);
      v28 = (v26 ^ v27) + __ROR8__(v24, 32);
      v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
      v30 = v26 + v25;
      v31 = v30 ^ __ROR8__(v25, 47);
      v32 = (v28 ^ 0x800000000000000) + v31;
      v33 = __ROR8__(v32, 32);
      v34 = v32 ^ __ROR8__(v31, 51);
      v35 = (__ROR8__(v30, 32) ^ 0xFFLL) + v29;
      v36 = v35 ^ __ROR8__(v29, 48);
      v37 = v33 + v36;
      v38 = (v33 + v36) ^ __ROR8__(v36, 43);
      v39 = v34 + v35;
      v40 = v39 ^ __ROR8__(v34, 47);
      v41 = v40 + v37;
      v42 = v41 ^ __ROR8__(v40, 51);
      v43 = __ROR8__(v39, 32) + v38;
      v44 = __ROR8__(v38, 48);
      v45 = __ROR8__(v41, 32) + (v43 ^ v44);
      v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
      v47 = v42 + v43;
      v48 = v47 ^ __ROR8__(v42, 47);
      v49 = v48 + v45;
      v50 = v49 ^ __ROR8__(v48, 51);
      v51 = __ROR8__(v47, 32) + v46;
      v52 = __ROR8__(v46, 48);
      v53 = __ROR8__(v49, 32) + (v51 ^ v52);
      v54 = v53 ^ __ROR8__(v51 ^ v52, 43);
      v55 = v50 + v51;
      *&buf[8] = v53;
      v63 = __ROR8__(v55, 32);
      v64 = v54;
      v77[0] = 1000;
      v77[1] = v55 ^ __ROR8__(v50, 47) ^ v53 ^ v63 ^ v54;
      *&v77[9] = *v77;
      *&v77[11] = *&v77[2];
      *&v77[13] = *&v77[4];
      *&v77[15] = *&v77[6];
      v77[17] = 0;
      v7 = v60;
      v57 = [NSNumber numberWithUnsignedInteger:v77[1]];
      v58 = [v57 stringValue];

      *buf = 138543874;
      *&buf[4] = v59;
      *&buf[12] = 2114;
      *&buf[14] = v58;
      v62 = 2114;
      v63 = v6;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch user state for user %{public}@, refresh triggered by expired token. err=%{public}@", buf, 0x20u);
    }

    v56 = *(*(a1 + 48) + 16);
  }

  else
  {
    v56 = *(*(a1 + 48) + 16);
  }

  v56();
}

unint64_t sub_10004E46C(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

void sub_10004E7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004E7DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004E7F4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch token status. err=%{public}@", buf, 0x16u);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetched token status dictionary: %{public}@", buf, 0x16u);
    }

    v11 = [v5 mutableCopy];
    v12 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004EA04;
    v16[3] = &unk_1001DB1D0;
    v13 = a1[6];
    v17 = v12;
    v18 = v13;
    v14 = v12;
    [v11 enumerateKeysAndObjectsUsingBlock:v16];
    (*(a1[5] + 16))(a1[5], v14, 0, v15);
  }
}

void sub_10004EA04(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [ICMusicLibraryAuthToken alloc];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004EB84;
  v19[3] = &unk_1001DB180;
  v8 = v5;
  v20 = v8;
  v9 = [v7 initWithBlock:v19];
  v10 = [ICMusicLibraryAuthTokenStatus alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004EC74;
  v16[3] = &unk_1001DB1A8;
  v17 = v9;
  v18 = v8;
  v11 = v8;
  v12 = v9;
  v13 = [v10 initWithBlock:v16];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  [*(a1 + 32) setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:v6];
}

void sub_10004EB84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 tokenResult];
  v6 = [v5 token];
  [v4 setToken:v6];

  v7 = [*(a1 + 32) tokenResult];
  v8 = [v7 expirationDate];
  [v4 setExpirationDate:v8];

  v11 = [*(a1 + 32) tokenResult];
  v9 = [v11 tokenIdentitifer];
  v10 = [v9 deviceGUID];
  [v4 setDeviceGUID:v10];
}

void sub_10004EC74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setToken:v3];
  v4 = [*(a1 + 40) lastError];
  [v6 setLastError:v4];

  v5 = [*(a1 + 40) lastUpdatedDate];
  [v6 setLastUpdatedDate:v5];

  [v6 setShouldExcludeFromBackgroundRefresh:{objc_msgSend(*(a1 + 40), "shouldExcludeFromBackgroundRefresh")}];
}

void sub_10004F0F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error fetching user social profile. Returning cached userState error=%{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v8 = [*(a1 + 32) _updatedUserStateFromState:*(a1 + 40) withUserProfile:a2];
    v6 = v8;
    if (v8 != *(a1 + 40) && ([v8 isEqual:?]& 1) == 0)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "UserState_Oversize");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        v14 = 138543874;
        v15 = v10;
        v16 = 2114;
        v17 = v11;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Updated user state. cachedUserState=%{public}@ newUserState=%{public}@", &v14, 0x20u);
      }
    }

    os_unfair_lock_lock((*(*(a1 + 72) + 8) + 32));
    v12 = *(a1 + 48);
    v13 = [*(a1 + 56) DSID];
    [v12 setObject:v6 forKeyedSubscript:v13];

    os_unfair_lock_unlock((*(*(a1 + 72) + 8) + 32));
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_10004F2C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) allValues];
  (*(v1 + 16))(v1, v2);
}

void sub_10004F6F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v7 = *(*(a1 + 32) + 48);
  v8 = +[NSMutableArray array];
  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 57);
  v13 = *(v11 + 56);
  *(v11 + 57) = 0;
  *(*(a1 + 32) + 56) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v14 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = [v7 count];
    v17 = *(a1 + 40);
    v18 = *(a1 + 41);
    *buf = 138544130;
    v27 = v15;
    v28 = 2048;
    v29 = v16;
    v30 = 1024;
    v31 = v17;
    v32 = 1024;
    v33 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ user state account fetch finished with %lu pending completions. forceRefresh=%{BOOL}u ignoreCache=%{BOOL}u", buf, 0x22u);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004FC14;
  v23[3] = &unk_1001DB078;
  v19 = v5;
  v24 = v19;
  v20 = v6;
  v25 = v20;
  [v7 enumerateObjectsUsingBlock:v23];
  if ([v7 count] >= 2)
  {
    v21 = *(a1 + 32);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10004FCF4;
    v22[3] = &unk_1001DEAC8;
    v22[4] = v21;
    [v21 _fetchAccountsWithForceRefresh:v13 ignoreResponseCache:v12 completion:v22];
  }
}

void sub_10004F958(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = dispatch_group_create();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = *(a1 + 32);
    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          dispatch_group_enter(v6);
          v12 = *(a1 + 64);
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10004FBB0;
          v19[3] = &unk_1001DB108;
          v13 = *(a1 + 40);
          v20 = *(a1 + 48);
          v21 = v6;
          [v13 _getUserStateFromIdentity:v11 tokensDictionary:v5 ignoreResponseCache:v12 completion:v19];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    v14 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004FBF4;
    block[3] = &unk_1001DF5A0;
    v18 = *(a1 + 56);
    v17 = *(a1 + 48);
    dispatch_group_notify(v6, v14, block);
  }
}

void sub_10004FBB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_10004FC14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004FE64;
  block[3] = &unk_1001DF5F0;
  v9 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_10004FCF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      v12 = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ user state refresh completed with userStates %{public}@ error=%{public}@", &v12, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ user state refresh completed with userStates %{public}@", &v12, 0x16u);
    }

    [*(a1 + 32) _notifyServerStateUpdatedIfNeeded:v5];
  }
}

void sub_100050680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  _Block_object_dispose((v62 - 240), 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose((v62 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_100050714(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:ICErrorDomain])
  {
    v8 = [v6 code];

    if (v8 == -7007)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 138543362;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Couldn't fetch subscription status due to privacy restriction - fetching lightweight version instead", buf, 0xCu);
      }

      v11 = [[ICLightweightMusicSubscriptionStatusRequest alloc] initWithRequestContext:*(a1 + 40)];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100053044;
      v27[3] = &unk_1001DAEA8;
      v12 = *(a1 + 64);
      v27[4] = *(a1 + 32);
      v29 = v12;
      v26 = *(a1 + 48);
      v13 = v26;
      v28 = v26;
      [v11 performRequestWithResponseHandler:v27];

      goto LABEL_18;
    }
  }

  else
  {
  }

  if (v5)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    v15 = v14;
    if (v6)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = [v6 msv_description];
        *buf = 138543874;
        v31 = v16;
        v32 = 2114;
        v33 = v5;
        v34 = 2114;
        v35 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ Subscription status request completed with response: %{public}@ error=%{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      *buf = 138543618;
      v31 = v23;
      v32 = 2114;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscription status request completed with response: %{public}@", buf, 0x16u);
    }

    v24 = [v5 subscriptionStatus];
    v25 = *(*(a1 + 72) + 8);
    v22 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ Failed to perform subscription status request. err=%{public}@", buf, 0x16u);
    }

    v20 = *(*(a1 + 56) + 8);
    v21 = v6;
    v22 = *(v20 + 40);
    *(v20 + 40) = v21;
  }

  dispatch_group_leave(*(a1 + 48));
LABEL_18:
}

void sub_100050A54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      v26 = 138543874;
      v27 = v9;
      v28 = 2114;
      v29 = v5;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished updating user social profile: %{public}@ error=%{public}@", &v26, 0x20u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 8));
    v11 = *(*(a1 + 32) + 40);
    v12 = [*(a1 + 40) identity];
    v13 = [v12 DSID];
    v14 = [v11 objectForKey:v13];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
    if (v14)
    {
      v15 = [v14 music];

      if (v15)
      {
        v16 = os_log_create("com.apple.amp.itunescloudd", "UserState");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 32);
          v18 = *(*(*(a1 + 56) + 8) + 40);
          v26 = 138543874;
          v27 = v17;
          v28 = 2114;
          v29 = v18;
          v30 = 2114;
          v31 = v6;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error fetching user social profile; keeping cached ICMusicUserProfile: %{public}@. error=%{public}@", &v26, 0x20u);
        }

        v19 = [v14 music];
        v20 = [v19 userProfile];
        v21 = *(*(a1 + 56) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 32);
      v26 = 138543618;
      v27 = v23;
      v28 = 2114;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished updating user social profile: %{public}@", &v26, 0x16u);
    }

    v24 = *(*(a1 + 56) + 8);
    v25 = v5;
    v14 = *(v24 + 40);
    *(v24 + 40) = v25;
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100050CF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 msv_description];
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished fetching bag for storefront details error=%{public}@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v15 = 138543362;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished fetching bag for storefront details", &v15, 0xCu);
  }

  v12 = [v6 stringForBagKey:ICURLBagKeyCountryCode];

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  dispatch_group_leave(*(a1 + 40));
}

void sub_100050E7C(uint64_t a1)
{
  sub_100052E80();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WLKStoredConfigurationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213BC0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getWLKStoredConfigurationManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDMediaUserStateCenterServer.m" lineNumber:48 description:{@"Unable to find class %s", "WLKStoredConfigurationManager"}];

    __break(1u);
  }
}

id sub_100050F44()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100213BD0;
  v7 = qword_100213BD0;
  if (!qword_100213BD0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100052DB8;
    v3[3] = &unk_1001DF318;
    v3[4] = &v4;
    sub_100052DB8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10005100C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100051024(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 msv_description];
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished fetching watchKit configuration error=%{public}@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished fetching watchKit configuration", &v13, 0xCu);
  }

  v12 = [v6 isActiveUser];
  *(*(*(a1 + 48) + 8) + 24) = v12;
  dispatch_group_leave(*(a1 + 40));
}

void sub_100051190(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished gathering user state info", buf, 0xCu);
  }

  v4 = [ICMediaUserState alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100051434;
  v13[3] = &unk_1001DB028;
  v5 = *(a1 + 40);
  v20 = *(a1 + 112);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v17 = *(a1 + 64);
  v18 = *(a1 + 80);
  v16 = *(a1 + 48);
  v19 = *(a1 + 88);
  v7 = [v4 initWithBlock:v13];
  if (*(*(*(a1 + 104) + 8) + 40))
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [*(*(*(a1 + 104) + 8) + 40) msv_description];
      *buf = 138543874;
      v22 = v9;
      v23 = 2114;
      v24 = v7;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ _buildUserStateFromUserIdentity completed. userState=%{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "UserState_Oversize");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ _buildUserStateFromUserIdentity completed. userState=%{public}@", buf, 0x16u);
    }
  }

  v12 = *(*(*(a1 + 104) + 8) + 40);
  (*(*(a1 + 56) + 16))();
}

void sub_100051434(uint64_t a1, void *a2)
{
  v3 = a2;
  *&data = 0;
  *(&data + 1) = &data;
  *&v173 = 0x2050000000;
  v4 = qword_100213BD8;
  *(&v173 + 1) = qword_100213BD8;
  if (!qword_100213BD8)
  {
    buf[0].i64[0] = _NSConcreteStackBlock;
    buf[0].i64[1] = 3221225472;
    buf[1].i64[0] = sub_100052744;
    buf[1].i64[1] = &unk_1001DF318;
    *v170 = &data;
    sub_100052744(buf);
    v4 = *(*(&data + 1) + 24);
  }

  v5 = v4;
  _Block_object_dispose(&data, 8);
  if ([v4 isCurrentDeviceValidHomeAccessory])
  {
    *&data = 0;
    *(&data + 1) = &data;
    *&v173 = 0x2050000000;
    v6 = qword_100213BE8;
    *(&v173 + 1) = qword_100213BE8;
    if (!qword_100213BE8)
    {
      buf[0].i64[0] = _NSConcreteStackBlock;
      buf[0].i64[1] = 3221225472;
      buf[1].i64[0] = sub_10005280C;
      buf[1].i64[1] = &unk_1001DF318;
      *v170 = &data;
      sub_10005280C(buf);
      v6 = *(*(&data + 1) + 24);
    }

    v7 = v6;
    _Block_object_dispose(&data, 8);
    v8 = [*(a1 + 32) homeUserIdentifiers];
    v9 = [v6 userMonitorWithHomeIdentifiers:v8];

    if (v9)
    {
      v160 = [v9 isPrivateListeningEnabledForCurrentAccessory];
    }

    else
    {
      v160 = 1;
    }
  }

  else
  {
    v160 = 0;
  }

  v10 = [*(a1 + 32) homeUserIdentifiers];
  v11 = [v10 msv_map:&stru_1001DAF88];

  v12 = [*(a1 + 32) DSID];
  memset(v170, 0, sizeof(v170));
  memset(buf, 0, sizeof(buf));
  v13 = MSVHasherSharedSeed();
  memset(&v170[8], 0, 176);
  buf[0].i64[0] = 1000;
  buf[0].i64[1] = v13 ^ 0x736F6D6570736575;
  buf[1].i64[0] = v14 ^ 0x646F72616E646F6DLL;
  buf[1].i64[1] = v13 ^ 0x6C7967656E657261;
  *v170 = v14 ^ 0x7465646279746573;
  v15 = [v12 integerValue];
  v16 = v170;
  *&data = v15;
  v17 = buf[0].i64[0];
  if (buf[0].i64[0] <= 3000)
  {
    if (buf[0].i64[0] <= 1999)
    {
      if (buf[0].i64[0])
      {
        if (buf[0].i64[0] != 1000)
        {
          goto LABEL_63;
        }

        v18 = *&v170[8];
        if ((*&v170[8] & 0x400000000000000) != 0)
        {
          v46 = *&v170[8] & 0xFFFFFFFFFFFFFFLL | (v15 << 32);
          v47 = (buf[0].i64[1] + buf[1].i64[0]) ^ __ROR8__(buf[1].i64[0], 51);
          v48 = buf[1].i64[1] + (*v170 ^ v46);
          v49 = __ROR8__(*v170 ^ v46, 48);
          v50 = (v48 ^ v49) + __ROR8__(buf[0].i64[1] + buf[1].i64[0], 32);
          v51 = v50 ^ __ROR8__(v48 ^ v49, 43);
          v52 = v48 + v47;
          buf[1].i64[1] = __ROR8__(v52, 32);
          *v170 = v51;
          buf[0].i64[1] = v50 ^ v46;
          buf[1].i64[0] = v52 ^ __ROR8__(v47, 47);
          v36 = (*&v170[8] & 0xFF00000000000000) + HIDWORD(v15) + 0x800000000000000;
        }

        else
        {
          v19 = buf[0].i64[1];
          v21 = buf[1].i64[1];
          v20 = buf[1].i64[0];
          v22 = *v170;
          if ((*&v170[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v23 = (buf[0].i64[1] + buf[1].i64[0]) ^ __ROR8__(buf[1].i64[0], 51);
            v24 = buf[1].i64[1] + (*v170 ^ *&v170[8] & 0xFFFFFFFFFFFFFFLL);
            v25 = __ROR8__(*v170 ^ *&v170[8] & 0xFFFFFFFFFFFFFFLL, 48);
            v26 = (v24 ^ v25) + __ROR8__(buf[0].i64[1] + buf[1].i64[0], 32);
            v22 = v26 ^ __ROR8__(v24 ^ v25, 43);
            v27 = v24 + v23;
            v20 = v27 ^ __ROR8__(v23, 47);
            v21 = __ROR8__(v27, 32);
            v19 = v26 ^ *&v170[8] & 0xFFFFFFFFFFFFFFLL;
            v18 = *&v170[8] & 0xFF00000000000000;
          }

          v28 = v22 ^ v15;
          v29 = v19 + v20;
          v30 = (v19 + v20) ^ __ROR8__(v20, 51);
          v31 = v21 + v28;
          v32 = __ROR8__(v28, 48);
          v33 = (v31 ^ v32) + __ROR8__(v29, 32);
          v34 = v33 ^ __ROR8__(v31 ^ v32, 43);
          v35 = v31 + v30;
          buf[1].i64[1] = __ROR8__(v35, 32);
          *v170 = v34;
          buf[0].i64[1] = v33 ^ v15;
          buf[1].i64[0] = v35 ^ __ROR8__(v30, 47);
          v36 = v18 + 0x800000000000000;
        }

        *&v170[8] = v36;
      }

      else
      {
        v39 = +[NSAssertionHandler currentHandler];
        v40 = [NSString stringWithUTF8String:"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"];
        [v39 handleFailureInFunction:v40 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
      }

      goto LABEL_62;
    }

    if (buf[0].i64[0] == 2000)
    {
      LOBYTE(v41) = 0;
      if (buf[1].u8[3] > 1u)
      {
        if (buf[1].u8[3] == 2)
        {
          v44 = v15 >> 8;
          v42 = buf[1].u8[0];
          LODWORD(v41) = HIBYTE(buf[1].u16[0]);
          LOBYTE(v43) = v15;
        }

        else
        {
          v42 = 0;
          LOBYTE(v43) = 0;
          LODWORD(v44) = 0;
          if (buf[1].u8[3] == 3)
          {
            v42 = buf[1].u8[0];
            LODWORD(v41) = HIBYTE(buf[1].u16[0]);
            LOBYTE(v43) = buf[1].i8[2];
            LODWORD(v44) = v15;
          }
        }
      }

      else if (buf[1].i8[3])
      {
        v42 = 0;
        LOBYTE(v43) = 0;
        LODWORD(v44) = 0;
        if (buf[1].u8[3] == 1)
        {
          v43 = v15 >> 8;
          v42 = buf[1].u8[0];
          v44 = v15 >> 16;
          LOBYTE(v41) = v15;
        }
      }

      else
      {
        v41 = v15 >> 8;
        v43 = v15 >> 16;
        v42 = v15;
        v44 = v15 >> 24;
      }

      v57 = (v43 << 16) | (v44 << 24) | v42 | (v41 << 8);
      HIDWORD(v58) = (461845907 * ((380141568 * v57) | ((-862048943 * v57) >> 17))) ^ buf[0].i32[2];
      LODWORD(v58) = HIDWORD(v58);
      v59 = 5 * (v58 >> 19) - 430675100;
      buf[0].i32[2] = v59;
      v60 = &data - buf[1].u8[3] + 4;
      v61 = &data + ((buf[1].u8[3] + 8) & 0x1FC) - buf[1].u8[3];
      if (v60 < v61)
      {
        do
        {
          v62 = *v60;
          v60 += 4;
          HIDWORD(v63) = (461845907 * ((380141568 * v62) | ((-862048943 * v62) >> 17))) ^ v59;
          LODWORD(v63) = HIDWORD(v63);
          v59 = 5 * (v63 >> 19) - 430675100;
        }

        while (v60 < v61);
        buf[0].i32[2] = v59;
      }

      if ((buf[1].i8[3] & 3u) > 1uLL)
      {
        buf[1].i16[0] = *v61;
        if ((buf[1].i8[3] & 3) != 2)
        {
          buf[1].i8[2] = v61[2];
        }
      }

      else if ((buf[1].i8[3] & 3) != 0)
      {
        buf[1].i8[0] = *v61;
      }

      buf[1].i8[3] &= 3u;
      buf[0].i32[3] += 8;
      goto LABEL_62;
    }

    if (buf[0].i64[0] != 3000)
    {
      goto LABEL_63;
    }

    v37 = (buf[0].i32[2] + 8) > 0xF;
    buf[0].i32[2] += 8;
    buf[0].i32[3] |= v37;
    if (*&v170[16] > 7u)
    {
      memcpy(&v170[*&v170[16]], &data, (16 - *&v170[16]));
      HIDWORD(v53) = buf[1].i32[0] - 2048144777 * *v170;
      LODWORD(v53) = HIDWORD(v53);
      v54 = -1640531535 * (v53 >> 19);
      HIDWORD(v53) = buf[1].i32[1] - 2048144777 * *&v170[4];
      LODWORD(v53) = HIDWORD(v53);
      buf[1].i32[0] = v54;
      buf[1].i32[1] = -1640531535 * (v53 >> 19);
      HIDWORD(v53) = buf[1].i32[2] - 2048144777 * *&v170[8];
      LODWORD(v53) = HIDWORD(v53);
      buf[1].i32[2] = -1640531535 * (v53 >> 19);
      HIDWORD(v53) = buf[1].i32[3] - 2048144777 * *&v170[12];
      LODWORD(v53) = HIDWORD(v53);
      v55 = 16 - *&v170[16];
      buf[1].i32[3] = -1640531535 * (v53 >> 19);
      *&v170[16] = 0;
      if (v55 > 7)
      {
        goto LABEL_62;
      }

      v38 = 8 - v55;
      __memcpy_chk();
    }

    else
    {
      *&v170[*&v170[16]] = v15;
      v38 = *&v170[16] + 8;
    }

    *&v170[16] = v38;
    goto LABEL_62;
  }

  if (buf[0].i64[0] > 4000)
  {
    switch(buf[0].i64[0])
    {
      case 0xFA1:
        CC_SHA1_Update(&buf[0].u64[1], &data, 4u);
        break;
      case 0x10A0:
        CC_SHA256_Update(&buf[0].u64[1], &data, 4u);
        break;
      case 0x11A0:
        CC_SHA512_Update(&buf[0].u64[1], &data, 4u);
        break;
      default:
        goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (buf[0].i64[0] == 3001)
  {
    buf[0].i64[1] += 8;
    if (*&v170[48] > 0x17u)
    {
      memcpy(&v170[*&v170[48] + 16], &data, (32 - *&v170[48]));
      buf[1].i64[0] = 0x9E3779B185EBCA87 * __ROR8__(buf[1].i64[0] - 0x3D4D51C2D82B14B1 * *&v170[16], 33);
      buf[1].i64[1] = 0x9E3779B185EBCA87 * __ROR8__(buf[1].i64[1] - 0x3D4D51C2D82B14B1 * *&v170[24], 33);
      *v170 = 0x9E3779B185EBCA87 * __ROR8__(*v170 - 0x3D4D51C2D82B14B1 * *&v170[32], 33);
      *&v170[8] = 0x9E3779B185EBCA87 * __ROR8__(*&v170[8] - 0x3D4D51C2D82B14B1 * *&v170[40], 33);
      v56 = 32 - *&v170[48];
      *&v170[48] = 0;
      if (v56 > 7)
      {
        goto LABEL_62;
      }

      v45 = 8 - v56;
      __memcpy_chk();
    }

    else
    {
      *&v170[*&v170[48] + 16] = v15;
      v45 = *&v170[48] + 8;
    }

    *&v170[48] = v45;
    goto LABEL_62;
  }

  if (buf[0].i64[0] != 4000)
  {
    goto LABEL_63;
  }

  CC_MD5_Update(&buf[0].u64[1], &data, 4u);
LABEL_62:
  v17 = buf[0].i64[0];
LABEL_63:
  memset(&v171[8], 0, 64);
  *v171 = v17;
  if (v17 > 3000)
  {
    if (v17 <= 4000)
    {
      if (v17 == 3001)
      {
        *&v171[8] = sub_10004E46C(&buf[0].i64[1]);
      }

      else if (v17 == 4000)
      {
        CC_MD5_Final(&v171[8], &buf[0].u64[1]);
      }
    }

    else
    {
      switch(v17)
      {
        case 4001:
          CC_SHA1_Final(&v171[8], &buf[0].u64[1]);
          break;
        case 4256:
          CC_SHA256_Final(&v171[8], &buf[0].u64[1]);
          break;
        case 4512:
          CC_SHA512_Final(&v171[8], &buf[0].u64[1]);
          break;
      }
    }

    goto LABEL_100;
  }

  if (v17 > 1999)
  {
    if (v17 != 2000)
    {
      if (v17 != 3000)
      {
        goto LABEL_100;
      }

      if (buf[0].i32[3])
      {
        v94 = vaddvq_s32(vorrq_s8(vshlq_u32(buf[1], xmmword_10016AE40), vshlq_u32(buf[1], xmmword_10016AE30)));
      }

      else
      {
        v94 = buf[1].i32[2] + 374761393;
      }

      v98 = buf[0].i32[2] + v94;
      v99 = v170[16] & 0xF;
      if (v99 >= 4)
      {
        do
        {
          v100 = *v16;
          v16 += 4;
          HIDWORD(v101) = v98 - 1028477379 * v100;
          LODWORD(v101) = HIDWORD(v101);
          v98 = 668265263 * (v101 >> 15);
          v99 -= 4;
        }

        while (v99 > 3);
      }

      for (; v99; --v99)
      {
        v102 = *v16++;
        HIDWORD(v103) = v98 + 374761393 * v102;
        LODWORD(v103) = HIDWORD(v103);
        v98 = -1640531535 * (v103 >> 21);
      }

      v104 = (-2048144777 * (v98 ^ (v98 >> 15))) ^ ((-2048144777 * (v98 ^ (v98 >> 15))) >> 13);
      v105 = (-1028477379 * v104) ^ ((-1028477379 * v104) >> 16);
      goto LABEL_99;
    }

    switch(buf[1].u8[3])
    {
      case 1u:
        v97 = buf[1].u8[0];
        break;
      case 2u:
        v97 = buf[1].u16[0];
        break;
      case 3u:
        v97 = buf[1].u16[0] | (buf[1].u8[2] << 16);
        break;
      default:
        v106 = buf[0].u32[2];
        goto LABEL_98;
    }

    v106 = (461845907 * ((380141568 * v97) | ((-862048943 * v97) >> 17))) ^ buf[0].i32[2];
LABEL_98:
    v107 = -2048144789 * (v106 ^ buf[0].i32[3] ^ ((v106 ^ buf[0].i32[3]) >> 16));
    v105 = (-1028477387 * (v107 ^ (v107 >> 13))) ^ ((-1028477387 * (v107 ^ (v107 >> 13))) >> 16);
    buf[0].i32[2] = v105;
LABEL_99:
    *&v171[8] = v105;
    goto LABEL_100;
  }

  if (v17)
  {
    if (v17 == 1000)
    {
      v64 = (buf[0].i64[1] + buf[1].i64[0]) ^ __ROR8__(buf[1].i64[0], 51);
      v65 = buf[1].i64[1] + (*v170 ^ *&v170[8]);
      v66 = __ROR8__(*v170 ^ *&v170[8], 48);
      v67 = (v65 ^ v66) + __ROR8__(buf[0].i64[1] + buf[1].i64[0], 32);
      v68 = v67 ^ __ROR8__(v65 ^ v66, 43);
      v69 = v65 + v64;
      v70 = v69 ^ __ROR8__(v64, 47);
      v71 = (v67 ^ *&v170[8]) + v70;
      v72 = v71 ^ __ROR8__(v70, 51);
      v73 = (__ROR8__(v69, 32) ^ 0xFFLL) + v68;
      v74 = __ROR8__(v68, 48);
      v75 = __ROR8__(v71, 32) + (v73 ^ v74);
      v76 = v75 ^ __ROR8__(v73 ^ v74, 43);
      v77 = v72 + v73;
      v78 = v77 ^ __ROR8__(v72, 47);
      v79 = v78 + v75;
      v80 = v79 ^ __ROR8__(v78, 51);
      v81 = __ROR8__(v77, 32) + v76;
      v82 = __ROR8__(v76, 48);
      v83 = __ROR8__(v79, 32) + (v81 ^ v82);
      v84 = v83 ^ __ROR8__(v81 ^ v82, 43);
      v85 = v80 + v81;
      v86 = v85 ^ __ROR8__(v80, 47);
      v87 = v86 + v83;
      v88 = v87 ^ __ROR8__(v86, 51);
      v89 = __ROR8__(v85, 32) + v84;
      v90 = __ROR8__(v84, 48);
      v91 = __ROR8__(v87, 32) + (v89 ^ v90);
      v92 = v91 ^ __ROR8__(v89 ^ v90, 43);
      v93 = v88 + v89;
      buf[0].i64[1] = v91;
      buf[1].i64[0] = v93 ^ __ROR8__(v88, 47);
      buf[1].i64[1] = __ROR8__(v93, 32);
      *v170 = v92;
      *&v171[8] = buf[1].i64[0] ^ v91 ^ buf[1].i64[1] ^ v92;
    }
  }

  else
  {
    v95 = +[NSAssertionHandler currentHandler];
    v96 = [NSString stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
    [v95 handleFailureInFunction:v96 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];
  }

LABEL_100:
  data = *v171;
  v173 = *&v171[16];
  v174 = *&v171[32];
  v175 = *&v171[48];
  v176 = *&v171[64];
  if (*v171 <= 3999)
  {
    if (*v171 <= 2999)
    {
      if (*v171 != 1000)
      {
        if (*v171 != 2000)
        {
          goto LABEL_126;
        }

LABEL_119:
        v114 = DWORD2(data);
        goto LABEL_127;
      }

      goto LABEL_113;
    }

    if (*v171 == 3000)
    {
      goto LABEL_119;
    }

    if (*v171 == 3001)
    {
LABEL_113:
      v114 = *(&data + 1);
      goto LABEL_127;
    }

LABEL_126:
    v133 = +[NSAssertionHandler currentHandler];
    v134 = [NSString stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
    [v133 handleFailureInFunction:v134 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

    v114 = 0;
    goto LABEL_127;
  }

  if (*v171 > 4255)
  {
    if (*v171 == 4256)
    {
      v127 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
      v128 = 0;
      v129 = &data + 8;
      do
      {
        v130 = *v129++;
        v131 = &v127[v128];
        *v131 = a0123456789abcd[v130 >> 4];
        v131[1] = a0123456789abcd[v130 & 0xF];
        v128 += 2;
      }

      while (v128 != 64);
      v132 = [[NSString alloc] initWithBytesNoCopy:v127 length:64 encoding:4 freeWhenDone:1];
      v114 = [v132 hash];
    }

    else
    {
      if (*v171 != 4512)
      {
        goto LABEL_126;
      }

      v115 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
      v116 = 0;
      v117 = &data + 8;
      do
      {
        v118 = *v117++;
        v119 = &v115[v116];
        *v119 = a0123456789abcd[v118 >> 4];
        v119[1] = a0123456789abcd[v118 & 0xF];
        v116 += 2;
      }

      while (v116 != 128);
      v120 = [[NSString alloc] initWithBytesNoCopy:v115 length:128 encoding:4 freeWhenDone:1];
      v114 = [v120 hash];
    }
  }

  else if (*v171 == 4000)
  {
    v121 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
    v122 = 0;
    v123 = &data + 8;
    do
    {
      v124 = *v123++;
      v125 = &v121[v122];
      *v125 = a0123456789abcd[v124 >> 4];
      v125[1] = a0123456789abcd[v124 & 0xF];
      v122 += 2;
    }

    while (v122 != 32);
    v126 = [[NSString alloc] initWithBytesNoCopy:v121 length:32 encoding:4 freeWhenDone:1];
    v114 = [v126 hash];
  }

  else
  {
    if (*v171 != 4001)
    {
      goto LABEL_126;
    }

    v108 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
    v109 = 0;
    v110 = &data + 8;
    do
    {
      v111 = *v110++;
      v112 = &v108[v109];
      *v112 = a0123456789abcd[v111 >> 4];
      v112[1] = a0123456789abcd[v111 & 0xF];
      v109 += 2;
    }

    while (v109 != 40);
    v113 = [[NSString alloc] initWithBytesNoCopy:v108 length:40 encoding:4 freeWhenDone:1];
    v114 = [v113 hash];
  }

LABEL_127:
  v135 = [NSNumber numberWithUnsignedInteger:v114];
  v136 = [v135 stringValue];

  [v3 setIdentifier:v136];
  [v3 setIsActive:{objc_msgSend(*(a1 + 32), "isActive")}];
  v137 = [*(a1 + 32) DSID];
  [v3 setDsid:v137];

  v138 = [*(a1 + 32) alternateDSID];
  [v3 setAlternateDSID:v138];

  v139 = [*(a1 + 32) iCloudPersonID];
  [v3 setICloudPersonID:v139];

  [v3 setHomeUserIDs:v11];
  v140 = [*(a1 + 32) storefrontIdentifier];
  [v3 setStorefrontIdentifier:v140];

  [v3 setCountryCode:*(*(*(a1 + 56) + 8) + 40)];
  v141 = [*(a1 + 32) firstName];
  [v3 setFirstName:v141];

  v142 = [*(a1 + 32) lastName];
  [v3 setLastName:v142];

  v143 = [*(a1 + 32) username];
  [v3 setUsername:v143];

  [v3 setAgeVerificationRequired:*(a1 + 96)];
  v144 = +[ICUserIdentityStore defaultIdentityStore];
  v145 = +[ICUserIdentity defaultMediaIdentity];
  v168 = 0;
  v146 = [v144 DSIDForUserIdentity:v145 outError:&v168];
  v147 = v168;

  if (v147)
  {
    v148 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      v149 = *(a1 + 40);
      v150 = [v147 msv_description];
      buf[0].i32[0] = 138543618;
      *(buf[0].i64 + 4) = v149;
      buf[0].i16[6] = 2114;
      *(&buf[0].i64[1] + 6) = v150;
      _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_ERROR, "%{public}@ Failed to resolve DSID for default media user error=%{public}@", buf, 0x16u);
    }
  }

  v151 = [*(a1 + 32) DSID];
  v152 = v151;
  if (v151 == v146)
  {
    v153 = 1;
  }

  else
  {
    v153 = [v151 isEqual:v146];
  }

  [v3 setDefaultMediaUser:v153];

  v154 = [ICMusicUserState alloc];
  v162[0] = _NSConcreteStackBlock;
  v162[1] = 3221225472;
  v162[2] = sub_1000528D4;
  v162[3] = &unk_1001DAFD8;
  v163 = *(a1 + 32);
  v165 = *(a1 + 64);
  v167 = v160;
  v155 = *(a1 + 48);
  v156 = *(a1 + 80);
  v164 = v155;
  v166 = v156;
  v157 = [v154 initWithBlock:v162];
  v158 = [ICTVUserState alloc];
  v161[0] = _NSConcreteStackBlock;
  v161[1] = 3221225472;
  v161[2] = sub_100052AC8;
  v161[3] = &unk_1001DB000;
  v161[4] = *(a1 + 88);
  v159 = [v158 initWithBlock:v161];
  [v3 setMusic:v157];
  [v3 setTv:v159];
}