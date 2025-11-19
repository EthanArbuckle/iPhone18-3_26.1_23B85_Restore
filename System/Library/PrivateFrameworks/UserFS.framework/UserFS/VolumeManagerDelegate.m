@interface VolumeManagerDelegate
- (id)childConnectionForDevice:(id)a3;
- (void)LiveMountService:(id)a3 addDisk:(id)a4 fileSystemType:(id)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 addVolume:(id)a4 atServer:(id)a5 credentialType:(int64_t)a6 credential:(id)a7 reply:(id)a8;
- (void)LiveMountService:(id)a3 ejectDisk:(id)a4 usingFlags:(unsigned int)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 ejectVolume:(id)a4 named:(id)a5 withFlags:(unsigned int)a6 reply:(id)a7;
- (void)LiveMountService:(id)a3 ejectVolumeCluster:(id)a4 withFlags:(unsigned int)a5 reply:(id)a6;
- (void)LiveMountService:(id)a3 sharesAtServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 reply:(id)a7;
- (void)handleInvalidation:(id)a3 fileSystemType:(id)a4 service:(id)a5;
@end

@implementation VolumeManagerDelegate

- (void)handleInvalidation:(id)a3 fileSystemType:(id)a4 service:(id)a5
{
  v5 = a3;
  v6 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection Interrupted for UVFSService UUID: %@", buf, 0xCu);
  }

  v7 = qword_10000D338;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F7C;
  block[3] = &unk_1000082C0;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

- (void)LiveMountService:(id)a3 addDisk:(id)a4 fileSystemType:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38 = a6;
  v13 = objc_opt_new();
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v14 = dispatch_semaphore_create(0);
  v64 = 0;
  v65[0] = &v64;
  v65[1] = 0x3032000000;
  v65[2] = sub_100002314;
  v65[3] = sub_100002324;
  v66 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_100002314;
  v62 = sub_100002324;
  v63 = 0;
  v15 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v72 = v11;
    v73 = 2112;
    v74 = v12;
    v75 = 2112;
    v76 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "liveFSService:delegate:addDisk:%@:fileSystemType:%@:start:%@", buf, 0x20u);
  }

  v16 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.filesystems.lifs.userfsd.UVFSService"];
  v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UVFSServiceProtocol];
  [v16 setRemoteObjectInterface:v17];

  v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UVFSServiceCallbackProtocol];
  [v16 setExportedInterface:v18];

  v19 = objc_alloc_init(UVFSServiceNotifciations);
  [v16 setExportedObject:v19];

  [v16 _setUUID:v13];
  objc_initWeak(&location, self);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100002B80;
  v52[3] = &unk_1000082E8;
  objc_copyWeak(&v56, &location);
  v20 = v13;
  v53 = v20;
  v21 = v12;
  v54 = v21;
  v22 = v10;
  v55 = v22;
  [v16 setInterruptionHandler:v52];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100002BD8;
  v50[3] = &unk_1000082C0;
  v23 = v11;
  v51 = v23;
  [v16 setInvalidationHandler:v50];
  v24 = [[ChildProcess alloc] initForDevice:v23 withConnection:v16];
  [v24 setUUID:v20];
  v25 = qword_10000D328;
  objc_sync_enter(v25);
  [qword_10000D328 setObject:v24 forKeyedSubscript:v23];
  objc_sync_exit(v25);

  [v16 resume];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100002C24;
  v47[3] = &unk_100008310;
  v49 = &v64;
  v26 = v14;
  v48 = v26;
  v27 = [v16 remoteObjectProxyWithErrorHandler:v47];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100002CA8;
  v43[3] = &unk_100008338;
  v45 = &v64;
  v46 = &v67;
  v28 = v26;
  v44 = v28;
  [v27 startUp:v43];
  v29 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v28, v29))
  {
    v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:0];
    v31 = *(v65[0] + 40);
    *(v65[0] + 40) = v30;
  }

  if (*(v65[0] + 40))
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_1000043D0(v65);
    }

    (*(v38 + 2))(v38, *(v65[0] + 40), 0);
  }

  else
  {
    [v24 setPid:*(v68 + 6)];
    v32 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "liveFSService:delegate:addDisk:XPCService:startup:done", buf, 2u);
    }

    if (byte_10000D318)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100002D24;
    v39[3] = &unk_100008360;
    v41 = &v64;
    v42 = &v58;
    v34 = v28;
    v40 = v34;
    [v27 createVolumesForTheDevice:v23 fsType:v21 how:v33 withReply:v39];
    dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
    v35 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(v65[0] + 40);
      v37 = v59[5];
      *buf = 138413058;
      v72 = v23;
      v73 = 2112;
      v74 = v21;
      v75 = 2112;
      v76 = v36;
      v77 = 2112;
      v78 = v37;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "liveFSService:delegate:addDisk:%@:fileSystemType:%@:finish:%@,%@", buf, 0x2Au);
    }

    (*(v38 + 2))(v38, *(v65[0] + 40), v59[5]);
  }

  objc_destroyWeak(&v56);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v67, 8);
}

- (id)childConnectionForDevice:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_100004524();
  }

  v4 = qword_10000D328;
  objc_sync_enter(v4);
  v5 = [qword_10000D328 objectForKeyedSubscript:v3];
  objc_sync_exit(v4);

  v6 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_1000045AC(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  return v5;
}

- (void)LiveMountService:(id)a3 ejectDisk:(id)a4 usingFlags:(unsigned int)a5 reply:(id)a6
{
  v25 = a3;
  v9 = a4;
  v10 = a6;
  v11 = v9;
  v35 = 0;
  v36[0] = &v35;
  v36[1] = 0x3032000000;
  v36[2] = sub_100002314;
  v36[3] = sub_100002324;
  v37 = 0;
  v12 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[VolumeManagerDelegate LiveMountService:ejectDisk:usingFlags:reply:]";
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s:%@:start", buf, 0x16u);
  }

  v13 = qword_10000D328;
  objc_sync_enter(v13);
  v14 = [qword_10000D328 objectForKeyedSubscript:v11];
  objc_sync_exit(v13);

  if (v14)
  {
    v15 = dispatch_semaphore_create(0);
    v16 = [v14 helper];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000333C;
    v32[3] = &unk_100008310;
    v34 = &v35;
    v17 = v15;
    v33 = v17;
    v18 = [v16 remoteObjectProxyWithErrorHandler:v32];

    v19 = a5;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10000339C;
    v29[3] = &unk_100008310;
    v31 = &v35;
    v20 = v17;
    v30 = v20;
    [v18 ejectVolumesForDevice:v11 how:v19 withReply:v29];
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    if ([*(v36[0] + 40) code] == 16)
    {
      if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
      {
        sub_10000462C(v36);
      }

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000033FC;
      v26[3] = &unk_100008310;
      v28 = &v35;
      v21 = v20;
      v27 = v21;
      [v18 ejectVolumesForDevice:v11 how:7 withReply:v26];
      dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
      if (*(v36[0] + 40) && os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
      {
        sub_1000046A4(v36);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_100004724();
    }

    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:19 userInfo:0];
    v18 = *(v36[0] + 40);
    *(v36[0] + 40) = v22;
  }

  v23 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v36[0] + 40);
    *buf = 136315650;
    v39 = "[VolumeManagerDelegate LiveMountService:ejectDisk:usingFlags:reply:]";
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s:%@:finish:%@", buf, 0x20u);
  }

  v10[2](v10, *(v36[0] + 40));

  _Block_object_dispose(&v35, 8);
}

- (void)LiveMountService:(id)a3 ejectVolume:(id)a4 named:(id)a5 withFlags:(unsigned int)a6 reply:(id)a7
{
  v25 = a3;
  v24 = a4;
  v11 = a5;
  v12 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100002314;
  v36 = sub_100002324;
  v37 = 0;
  v13 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[VolumeManagerDelegate LiveMountService:ejectVolume:named:withFlags:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s:%@:start", buf, 0x16u);
  }

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000038E0;
  v31[3] = &unk_100008388;
  v31[4] = &v32;
  [v25 listVolumes:v31];
  v14 = [v33[5] objectForKeyedSubscript:v11];
  if (v14)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v33[5];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v42 count:16];
    v23 = a6;
    v17 = 0;
    if (v16)
    {
      v18 = *v28;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v33[5] objectForKeyedSubscript:*(*(&v27 + 1) + 8 * i)];
          v21 = [v20 isEqualToString:v14];

          v17 += v21;
        }

        v16 = [v15 countByEnumeratingWithState:&v27 objects:v42 count:16];
      }

      while (v16);
    }

    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_1000047A4();
    }

    if (v17 == 1)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v39 = sub_100002314;
      v40 = sub_100002324;
      v41 = 0;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100003934;
      v26[3] = &unk_1000083B0;
      v26[4] = buf;
      [v25 ejectDisk:v14 usingFlags:v23 reply:v26];
      if (*(*&buf[8] + 40))
      {
        if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
        {
          sub_100004828(&buf[8]);
        }
      }

      else if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
      {
        sub_100004898();
      }

      _Block_object_dispose(buf, 8);
    }
  }

  v22 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[VolumeManagerDelegate LiveMountService:ejectVolume:named:withFlags:reply:]";
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s:%@:finish", buf, 0x16u);
  }

  v12[2](v12, 0);

  _Block_object_dispose(&v32, 8);
}

- (void)LiveMountService:(id)a3 ejectVolumeCluster:(id)a4 withFlags:(unsigned int)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a6 + 2))(v7, v8);
}

- (void)LiveMountService:(id)a3 addVolume:(id)a4 atServer:(id)a5 credentialType:(int64_t)a6 credential:(id)a7 reply:(id)a8
{
  v9 = a8;
  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a8 + 2))(v9, v10);
}

- (void)LiveMountService:(id)a3 sharesAtServer:(id)a4 credentialType:(int64_t)a5 credential:(id)a6 reply:(id)a7
{
  v8 = a7;
  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  (*(a7 + 2))(v8, 0, v9);
}

@end