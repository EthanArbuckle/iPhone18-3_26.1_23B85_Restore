void start(int a1, char **a2)
{
  do
  {
    while (1)
    {
      v4 = getopt(a1, a2, "S");
      if (v4 != 83)
      {
        break;
      }

      byte_10000D318 = 1;
    }
  }

  while (v4 != -1);
  v5 = os_log_create("com.apple.filesystems.userfsd", "main");
  v6 = qword_10000D340;
  qword_10000D340 = v5;

  if (!v5)
  {
    err(73, "main:error creating default log.");
  }

  v7 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
  {
    v27[0] = 67109120;
    v27[1] = byte_10000D318;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "main:start:spotlight:%d]", v27, 8u);
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = qword_10000D328;
  qword_10000D328 = v8;

  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = qword_10000D330;
  qword_10000D330 = v10;

  v12 = objc_alloc_init(VolumeManagerDelegate);
  if (!v12)
  {
    v13 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "main:volumeManager:delegate:alloc:failed", v27, 2u);
    }

    err(73, "main:externalVolumeDelegate:aloc:failed");
  }

  v14 = [LiveFSVolumeManager newServiceProxyObjectWithDelegate:v12];
  v15 = qword_10000D320;
  qword_10000D320 = v14;

  if (!qword_10000D320)
  {
    v16 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "main:volumeManager:alloc:failed", v27, 2u);
    }

    err(73, "main:externalVolumeManager:alloc:failed");
  }

  v17 = objc_alloc_init(VolumeManagerNSXPCListenerDelegate);
  v18 = qword_10000D348;
  qword_10000D348 = v17;

  if (!qword_10000D348)
  {
    v19 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "main:volumeManager:listener:delegate:create:failed", v27, 2u);
    }

    err(73, "Can't create delegate for the mount service.\n");
  }

  [qword_10000D348 setServer:qword_10000D320];
  v20 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.filesystems.localLiveFiles"];
  if (!v20)
  {
    v21 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "main:volumeManager:listener:create:failed", v27, 2u);
    }

    err(73, "Can't create mount service listener.\n");
  }

  v22 = v20;
  [v20 setDelegate:qword_10000D348];
  v23 = dispatch_queue_create("com.apple.userfsd.volumeManager.requests", 0);
  v24 = qword_10000D338;
  qword_10000D338 = v23;

  if (!qword_10000D338)
  {
    v25 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "main:volumeManager:dispatchQueue:create:fail.", v27, 2u);
    }

    err(73, "main: unable to create LiveFSService queue\n");
  }

  [v22 _setQueue:?];
  sub_1000013AC();
  [v22 resume];
  [qword_10000D320 initializationFinished];
  v26 = qword_10000D340;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_INFO))
  {
    LOWORD(v27[0]) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "main:VolumeManager:started", v27, 2u);
  }

  dispatch_main();
}

void sub_1000013AC()
{
  v0 = [LiveFSMountClient newClientForProvider:@"com.apple.filesystems.UserFS.FileProvider"];
  v1 = v0;
  if (v0)
  {
    v2 = qword_10000D320 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "cleanupStateIfNeeded:mounterServer:notReachable:skiping", buf, 2u);
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_58;
  }

  v48 = 0;
  v6 = [v0 allMounts:&v48];
  v7 = v48;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
  {
    sub_100003DD0();
  }

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  v10 = !v9;
  if (v9)
  {
    if (v7)
    {
      if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
      {
        sub_100003E38();
      }
    }

    else
    {
      if (!v6)
      {
        v33 = qword_10000D340;
        if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "cleanupStateIfNeeded:mounterService:noMounts:finish", buf, 2u);
        }
      }

      v7 = 0;
    }

    v4 = 0;
    v5 = 0;
  }

  else
  {
    v36 = v10;
    v39 = v1;
    v11 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v6;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v13)
    {
      v14 = v13;
      v38 = 0;
      v15 = *v45;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v45 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
          v19 = [v18 isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"];

          if (v19)
          {
            v20 = [v17 objectForKeyedSubscript:LiveFSMounterVolumeNameKey];
            [v11 addObject:v20];

            ++v38;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v14);
    }

    else
    {
      v38 = 0;
    }

    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_100003EAC();
    }

    v35 = objc_alloc_init(NSMutableDictionary);
    v21 = [v35 allKeys];
    v22 = [NSSet setWithArray:v21];
    [v11 minusSet:v22];

    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
    {
      sub_100003F14();
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v23 = v11;
    v24 = [v23 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v7 = 0;
      v5 = 0;
      v26 = *v41;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          v28 = v7;
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v40 + 1) + 8 * j);
          v30 = [@"com.apple.filesystems.userfsd" stringByAppendingPathComponent:v29];
          v31 = qword_10000D340;
          if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v50 = v29;
            _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "cleanUpStateIfNeeded:unmounting:%@", buf, 0xCu);
          }

          v7 = [v39 unmountVolume:v30 how:6];

          if (v7)
          {
            v32 = qword_10000D340;
            if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v50 = v29;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "cleanUpStateIfNeeded: failed to cleanup volume: %@", buf, 0xCu);
            }
          }

          else
          {
            ++v5;
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v25);
    }

    else
    {
      v7 = 0;
      v5 = 0;
    }

    v1 = v39;
    v6 = v37;
    v10 = v36;
    v4 = v38;
  }

  if (v10)
  {
LABEL_58:
    v34 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v50 = v4;
      *&v50[4] = 1024;
      *&v50[6] = v5;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "cleanupStateIfNeeded:finish:kernelMounts:%d:cleanedup:%d", buf, 0xEu);
    }
  }
}

void sub_100001930(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100001CE4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void sub_100001F7C(uint64_t a1)
{
  v25 = 0;
  v26[0] = &v25;
  v26[1] = 0x3032000000;
  v26[2] = sub_100002314;
  v26[3] = sub_100002324;
  v27 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100002314;
  v23 = sub_100002324;
  v24 = 0;
  v2 = qword_10000D328;
  objc_sync_enter(v2);
  v3 = qword_10000D328;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000232C;
  v15[3] = &unk_100008298;
  v16 = *(a1 + 32);
  v17 = &v25;
  v18 = &v19;
  [v3 enumerateKeysAndObjectsUsingBlock:v15];

  objc_sync_exit(v2);
  if (*(v26[0] + 40))
  {
    v4 = qword_10000D340;
    if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v26[0] + 40);
      *buf = 138412290;
      *v29 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "connection interrupted:%@", buf, 0xCu);
    }
  }

  v6 = v20[5];
  if (v6)
  {
    if ([v6 exited])
    {
      v7 = qword_10000D340;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v20[5] pid];
        v9 = *(v26[0] + 40);
        *buf = 67109378;
        *v29 = v8;
        *&v29[4] = 2112;
        *&v29[6] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cleaning up UVFSService[%d] for device %@.", buf, 0x12u);
      }
    }

    else if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_1000042B0(v26);
    }

    v10 = qword_10000D328;
    objc_sync_enter(v10);
    v11 = [qword_10000D328 objectForKeyedSubscript:*(v26[0] + 40)];
    v12 = v11;
    if (v11 && ([v11 UUID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqual:", *(a1 + 32)), v13, v14))
    {
      [qword_10000D328 removeObjectForKey:*(v26[0] + 40)];
    }

    else if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
    {
      sub_100004320();
    }

    objc_sync_exit(v10);
  }

  else if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
  {
    sub_100004360(v26);
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
}

void sub_1000022D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000232C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = [v8 UUID];
  v10 = [v9 isEqual:a1[4]];

  if (v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100002B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id location, char a45)
{
  objc_sync_exit(v45);
  objc_destroyWeak(&a43);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v46 - 256), 8);
  _Block_object_dispose((v46 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_100002B80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained handleInvalidation:*(a1 + 32) fileSystemType:*(a1 + 40) service:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void sub_100002BD8(uint64_t a1)
{
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
  {
    sub_100004440(a1);
  }
}

void sub_100002C24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(qword_10000D340, OS_LOG_TYPE_ERROR))
  {
    sub_1000044B4();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002CA8(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100002D24(uint64_t a1, void *a2, void *a3)
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

void sub_100003308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  objc_sync_exit(v29);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10000333C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10000339C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000033FC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000038A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000038E0(uint64_t a1, uint64_t a2)
{
  v3 = [NSDictionary dictionaryWithDictionary:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_100003D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void sub_100003DB4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100003F7C(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  sub_100001CD0();
  sub_100001CE4(&_mh_execute_header, v4, v5, "%s:pid:%d:start", v6, v7, v8, v9, 2u);
}

void sub_100004010(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  sub_100001CD0();
  sub_100001CE4(&_mh_execute_header, v4, v5, "%s:pid:%d:accepting", v6, v7, v8, v9, 2u);
}

void sub_1000040A4(void *a1, void *a2)
{
  v3 = a1;
  [a2 processIdentifier];
  v4[0] = 136315394;
  sub_100001CD0();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s:pid:%d:rejecting", v4, 0x12u);
}

void sub_100004148(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got exit notification for device %@", &v2, 0xCu);
}

void sub_1000041C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Marking UVFSService for device %@ as exited", &v2, 0xCu);
}

void sub_100004238(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Got exit notificaiton for non-tracked device:%@", &v2, 0xCu);
}

void sub_1000042B0(uint64_t a1)
{
  sub_100003D7C(a1, __stack_chk_guard);
  sub_100003DA8();
  sub_100003D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100004360(uint64_t a1)
{
  sub_100003D7C(a1, __stack_chk_guard);
  sub_100003DA8();
  sub_100003D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000043D0(uint64_t a1)
{
  sub_100003D7C(a1, __stack_chk_guard);
  sub_100003DA8();
  sub_100003D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100004440(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100003DA8();
  sub_100003D9C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000044B4()
{
  sub_10000194C();
  sub_100003D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000462C(uint64_t a1)
{
  sub_100003D7C(a1, __stack_chk_guard);
  sub_100003D8C();
  sub_100003DB4(&_mh_execute_header, v1, v2, "%s:helper:reply:%@, forcing it", v3, v4, v5, v6, 2u);
}

void sub_1000046A4(uint64_t a1)
{
  sub_100003D7C(a1, __stack_chk_guard);
  sub_100003D8C();
  sub_100003D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100004724()
{
  sub_10000194C();
  sub_100003D8C();
  sub_100003D9C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000047A4()
{
  sub_10000194C();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Found %@ device hosting %d volumes", v2, 0x12u);
}

void sub_100004828(uint64_t a1)
{
  sub_100003D7C(a1, __stack_chk_guard);
  sub_100003DA8();
  sub_100003D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}