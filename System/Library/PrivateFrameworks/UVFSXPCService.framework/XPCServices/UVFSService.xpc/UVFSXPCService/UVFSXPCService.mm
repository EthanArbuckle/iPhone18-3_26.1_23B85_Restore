int main(int argc, const char **argv, const char **envp)
{
  v3 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    sub_10001DFC4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [NSMutableArray arrayWithCapacity:16];
  v12 = UVFSServiceConnections;
  UVFSServiceConnections = v11;

  v13 = objc_opt_new();
  v14 = +[NSXPCListener serviceListener];
  v15 = UVFSServiceListener;
  UVFSServiceListener = v14;

  [UVFSServiceListener setDelegate:v13];
  v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v16)
  {
    sub_10001E000(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  [UVFSServiceListener resume];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10001E03C();
  }

  return 0;
}

void sub_10000120C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100001CC4(uint64_t a1)
{
  v1 = [NSDictionary sharedKeySetForKeys:*(a1 + 32)];
  v2 = [NSMutableDictionary dictionaryWithSharedKeySet:v1];
  v3 = qword_10003FDF0;
  qword_10003FDF0 = v2;

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E700();
  }
}

void sub_100001D4C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *sub_100001D98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_100003314(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100003330(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10000334C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_100003368(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_1000038C8(const char *a1, unsigned int a2)
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F5F4();
  }

  mach_service = xpc_connection_create_mach_service("com.apple.filesystems.userfs_helper", 0, 0);
  if (!mach_service)
  {
    sub_10001F898();
  }

  v5 = mach_service;
  if (xpc_get_type(mach_service) != &_xpc_type_connection)
  {
    sub_10001F664();
  }

  xpc_connection_set_event_handler(v5, &stru_100038718);
  xpc_connection_resume(v5);
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "path", a1);
  xpc_dictionary_set_int64(v6, "flags", a2);
  v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
  v8 = v7;
  if (!v7 || xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    v9 = userfs_log_default;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001F778(v8 == 0, v8, v9);
    }

    v10 = 0xFFFFFFFFLL;
    LODWORD(int64) = 5;
    goto LABEL_10;
  }

  v10 = xpc_dictionary_dup_fd(v8, "fd");
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F690();
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
LABEL_15:
    LODWORD(int64) = 0;
    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(v8, "error");
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10001F704();
  }

  if (!int64)
  {
    LODWORD(int64) = 5;
  }

LABEL_10:
  xpc_connection_cancel(v5);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F818();
  }

  *__error() = int64;

  return v10;
}

void sub_100003AF8(void *a1, uint64_t a2, int a3)
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F8C4();
  }

  if (a3 == -536870896)
  {
    v5 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10001F944(v5, a1);
    }

    v6 = a1;
    objc_sync_enter(v6);
    v7 = [v6 volumes];
    v8 = [NSArray arrayWithArray:v7];

    objc_sync_exit(v6);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v10)
    {
      v12 = *v20;
      *&v11 = 136315394;
      v18 = v11;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 useKOIO])
          {
            [v14 revokeDeviceIfNeeded];
            v15 = userfs_log_default;
            if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              v17 = [v6 deviceName];
              *buf = v18;
              v24 = "DeviceNotification";
              v25 = 2112;
              v26 = v17;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s[%@]: revoked block devices for kernel", buf, 0x16u);
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v10);
    }

    [v6 close];
    [v6 terminateVolumesWithErrors];
  }

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001F9FC();
  }
}

id sub_100004B70(uint64_t a1)
{
  v4[0] = @"fsTypeName";
  v4[1] = @"volumeCount";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

uint64_t sub_1000056EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 24);
  return result;
}

_BYTE *sub_1000056F8(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100005708(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void notifyMainServiceAndExit(void *a1, int a2)
{
  v2 = a1;
  v17 = dispatch_semaphore_create(0);
  v3 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "notifyMainServiceAndExit";
    v29 = 2112;
    v30 = v2;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s:start:%@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = UVFSServiceConnections;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100005A50;
        v20[3] = &unk_100038740;
        v9 = v17;
        v21 = v9;
        v10 = [v8 remoteObjectProxyWithErrorHandler:v20];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100005AB4;
        v18[3] = &unk_100038740;
        v11 = v9;
        v19 = v11;
        [v10 serviceExitingForDevice:v2 withReply:v18];
        v12 = dispatch_time(0, 1000000000);
        if (dispatch_semaphore_wait(v11, v12))
        {
          v13 = userfs_log_default;
          if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v28 = "notifyMainServiceAndExit";
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s:error:timeout", buf, 0xCu);
          }
        }

        [v8 invalidate];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  [UVFSServiceListener invalidate];
  v14 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "notifyMainServiceAndExit";
    v29 = 1024;
    LODWORD(v30) = a2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s:finish:exiting:%d", buf, 0x12u);
  }

  exit(a2);
}

void sub_100005A50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002037C();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005AB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000203F8();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005F30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000074F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_100007568(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000075E8(id a1)
{
  if (os_log_type_enabled(uvfsservice_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100020AF4();
  }
}

void sub_100008670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008688(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000086A0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

id sub_100008D30(uint64_t a1)
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000214DC();
  }

  [*(a1 + 32) LIDisableSearch];
  return [*(a1 + 32) LISearchAbortAll];
}

void sub_100008D88(uint64_t a1)
{
  [*(a1 + 32) pauseIOQueue];
  [*(a1 + 32) resumeIOQueue];
  v2 = *(a1 + 32);
  v3 = *(v2 + 632);
  *(v2 + 632) = 0;

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021518();
  }

  [*(a1 + 32) purgeMappingTables];
  v4 = *(a1 + 40);
  if ((v4 & 8) == 0)
  {
    [*(*(a1 + 32) + 544) syncTheFileSystem:1];
    v4 = *(a1 + 40);
  }

  [*(*(a1 + 32) + 544) unloadFileSystem:v4];
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021554();
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 544);
  *(v5 + 544) = 0;

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021590();
  }
}

void sub_10000A35C(uint64_t a1)
{
  v2 = [*(a1 + 32) rootNode];
  [v2 syncTheFileSystem:1];

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021B80();
  }

  dispatch_source_cancel(*(*(a1 + 32) + 504));
  v3 = *(a1 + 32);
  v4 = *(v3 + 504);
  *(v3 + 504) = 0;
}

void sub_10000B210(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = userfs_log_default;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = v17;
    v19 = v9;
    v20 = [v17 UTF8String];
    v21 = *(a1 + 56);
    *buf = 138413570;
    v23 = v15;
    v24 = 2112;
    v25 = v16;
    v26 = 1024;
    v27 = a2;
    v28 = 2080;
    v29 = v20;
    v30 = 2048;
    v31 = v21;
    v32 = 2048;
    v33 = v7;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "LILookup(%@/%@): reply(%d, %s, %p, %p)", buf, 0x3Au);
  }

  v10 = *(a1 + 72);
  v11 = *(a1 + 92);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  (*(*(a1 + 80) + 16))(*(a1 + 80), *(a1 + 88));
}

void sub_10000B6FC(uint64_t a1, int a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = 0;
  }

  else
  {
    if (*(a1 + 48) <= a3)
    {
      goto LABEL_6;
    }

    v9 = v6;
    v8 = [*(a1 + 32) subdataWithRange:{0, a3}];
    v6 = v9;
    v7 = v8;
  }

  v6 = v7;
LABEL_6:
  v10 = v6;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000B98C(uint64_t a1)
{
  v3 = 0;
  [*(a1 + 32) readData:*(a1 + 64) intoDataBuffer:*(a1 + 40) withLengthOut:&v3];
  [*(*(a1 + 48) + 656) reenableSystemSleep];
  return (*(*(a1 + 56) + 16))();
}

void sub_10000BBE8(uint64_t a1)
{
  v6 = 0;
  v2 = [*(a1 + 32) writeData:*(a1 + 64) fromBuffer:*(a1 + 40) withLengthOut:&v6];
  if (!v2 && ![*(a1 + 32) lfn_wasWritten])
  {
    [*(a1 + 32) setLfn_wasWritten:1];
  }

  [*(*(a1 + 48) + 656) reenableSystemSleep];
  v3 = v6;
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) getFreeSpaceInVolume];
  (*(v4 + 16))(v4, v2, v3, v5);
}

void sub_10000BF30(uint64_t a1)
{
  v2 = (*(a1 + 80) & 0x3F) + 1;
  v9 = (*(a1 + 80) & 0x3F) + 1;
  v3 = [NSMutableData dataWithLength:24 * v2];
  v4 = [*(a1 + 32) blockmapWithRange:*(a1 + 56) flags:*(a1 + 64) operationID:*(a1 + 80) extentCount:*(a1 + 72) extents:{&v9, v3}];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v9 == 0;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 subdataWithRange:{0, 24 * v9}];
  }

  [*(*(a1 + 40) + 656) reenableSystemSleep];
  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) getFreeSpaceInVolume];
  (*(v7 + 16))(v7, v4, v6, v8);
}

uint64_t sub_10000C2C8(uint64_t a1)
{
  if (![*(a1 + 32) endIOWithRange:*(a1 + 56) status:*(a1 + 64) flags:*(a1 + 80) operationID:{*(a1 + 84), *(a1 + 72)}] && (*(a1 + 85) & 2) != 0 && !objc_msgSend(*(a1 + 32), "lfn_wasWritten"))
  {
    [*(a1 + 32) setLfn_wasWritten:1];
  }

  [*(*(a1 + 40) + 656) reenableSystemSleep];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10000F5F8(uint64_t a1, int a2, unint64_t a3)
{
  v6 = [*(a1 + 32) createDispatchData];
  v7 = v6;
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    if (*(a1 + 48) <= a3)
    {
      goto LABEL_6;
    }

    v10 = v6;
    v9 = [v6 subdataWithRange:{0, a3}];
    v7 = v10;
    v8 = v9;
  }

  v7 = v8;
LABEL_6:
  v11 = v7;
  (*(*(a1 + 40) + 16))();
}

void sub_10000F7EC(uint64_t a1, int a2, unint64_t a3)
{
  v6 = [*(a1 + 32) createDispatchData];
  v7 = v6;
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    if (*(a1 + 48) <= a3)
    {
      goto LABEL_6;
    }

    v10 = v6;
    v9 = [v6 subdataWithRange:{0, a3}];
    v7 = v10;
    v8 = v9;
  }

  v7 = v8;
LABEL_6:
  v11 = v7;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100010F58(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.ResourceFork"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.decmpfs"];
  }

  return v2;
}

id sub_10001271C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ((sub_100010F58(v9) & 1) == 0)
          {
            [v3 addObject:{v9, v11}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100012C5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 callerID] == *(a1 + 32))
  {
    [v4 abortSearch];
  }
}

void sub_100013BC8(uint64_t a1)
{
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022C74(a1);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(*(a1 + 32) + 40) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v17;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v16 + 1) + 8 * i);
      v9 = [*(*(a1 + 32) + 544) getFH];
      v10 = [v8 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        v11 = [*(*(a1 + 32) + 40) objectForKey:v8];

        v12 = [v11 lfn_inUseClientSet];
        [v11 setLfn_inUseClientSet:v12 & ~*(a1 + 40)];
        if ((*(a1 + 40) & v12) != 0 && ![v11 lfn_inUseClientSet])
        {
          v13 = [v11 lfn_name];
          if ([v13 isEqualToString:&stru_100038E98])
          {
            goto LABEL_14;
          }

          v14 = [v11 lfn_parent];

          if (v14)
          {
            v15 = *(a1 + 32);
            v13 = [v11 lfn_parent];
            [v15 removeFromNameCache:v11 withParent:v13];
LABEL_14:
          }

          [*(a1 + 32) removeFromFHCache:v11];
          [v11 reclaim];
        }

        v5 = v11;
        continue;
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v4);
LABEL_21:

  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100022CE8(a1);
  }
}

void sub_100015A38(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x730], 8);
  _Block_object_dispose(&STACK[0x540], 8);
  _Block_object_dispose(&STACK[0x570], 8);
  _Block_object_dispose(&STACK[0x5A0], 8);
  _Unwind_Resume(a1);
}

void sub_100015B38(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) parentFH];
  v4 = [*(a1 + 40) elementName];
  v5 = [*(a1 + 48) searchLIClientID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015C04;
  v6[3] = &unk_1000389C0;
  v7 = *(a1 + 56);
  [v2 lookupin:v3 name:v4 forClient:v5 usingFlags:0 requestID:-1 reply:v6];
}

uint64_t sub_100015C24(uint64_t a1)
{
  v2 = [*(a1 + 32) getNodeForFH:*(*(*(a1 + 48) + 8) + 40) withError:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100015C84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 56) + 8) + 40) getFH];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) searchLIClientID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015D48;
  v6[3] = &unk_1000389C0;
  v7 = *(a1 + 64);
  [v2 lookupin:v3 name:v4 forClient:v5 usingFlags:0 requestID:-1 reply:v6];
}

void sub_100015D48(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v8 = v7;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
    v7 = v8;
  }
}

id sub_100015DCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015E50;
  v4[3] = &unk_100038A60;
  v5 = *(a1 + 48);
  return [v1 listXattrsOf:v2 requestID:-1 reply:v4];
}

void sub_100015E50(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_100015ED4(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(*(*(v3 + 16) + 8) + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015FDC;
  v8[3] = &unk_100038AB0;
  v9 = *(v3 + 24);
  [v4 xattrOf:v5 named:v2 requestID:-1 reply:v8];
  v6 = *(*(*(v3 + 24) + 8) + 24);
  if (v6 != 93)
  {
    if (v6)
    {
      if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100023098((v3 + 24));
      }
    }

    else
    {
      v7 = *(*(*(a1 + 72) + 8) + 40);
      if (v7)
      {
        [*(a1 + 48) setObject:v7 forKeyedSubscript:*(a1 + 40)];
      }
    }
  }
}

void sub_100015FDC(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

id sub_100016060(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000160E8;
  v5[3] = &unk_100038AB0;
  v6 = *(a1 + 56);
  return [v3 xattrOf:v2 named:v1 requestID:-1 reply:v5];
}

void sub_1000160E8(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

id sub_10001616C(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) searchLIClientID];

  return [v2 reclaim:v1 forClient:v3 requestID:-1 reply:&stru_100038B40];
}

void sub_1000161C4(id a1, int a2, NSData *a3)
{
  v4 = a3;
  if (a2 && os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100023128();
  }
}

void sub_100016228(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 56) + 8) + 40) getFH];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) searchLIClientID];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000162EC;
  v6[3] = &unk_1000389C0;
  v7 = *(a1 + 64);
  [v2 lookupin:v3 name:v4 forClient:v5 usingFlags:0 requestID:-1 reply:v6];
}

uint64_t sub_10001630C(uint64_t a1)
{
  v2 = [*(a1 + 32) getNodeForFH:*(*(*(a1 + 48) + 8) + 40) withError:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001636C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(*(a1 + 48) + 8) + 40) getFH];
  [v2 reclaim:v3 forClient:objc_msgSend(*(a1 + 40) requestID:"searchLIClientID") reply:{-1, &stru_100038B88}];
}

_BYTE *sub_1000165C0(uint64_t a1, unsigned int a2)
{
  result = [*(a1 + 32) mutableBytes];
  if (*(a1 + 40) > a2)
  {
    result[a2] = 1;
  }

  return result;
}

uint64_t sub_100016604(uint64_t a1)
{
  if (![*(*(a1 + 32) + 544) scanVolumeForFileIDs:objc_msgSend(*(a1 + 40) count:"bytes") returningAttributes:*(a1 + 72) withBlock:{257, *(a1 + 56)}])
  {
    v3 = *(a1 + 48);
  }

  v2 = *(*(a1 + 64) + 16);

  return v2();
}

void sub_1000167EC(uint64_t a1)
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100008688;
  v39 = sub_100008698;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100008688;
  v33 = sub_100008698;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100016D34;
  v24[3] = &unk_100038C00;
  v24[4] = &v35;
  v24[5] = &v29;
  v24[6] = &v25;
  v23 = objc_retainBlock(v24);
  v2 = +[NSMutableDictionary dictionary];
  v21 = [*(a1 + 32) bytes];
  if (*(a1 + 64))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v36[5];
      v36[5] = 0;

      v8 = v30[5];
      v30[5] = 0;

      *(v26 + 24) = 0;
      if ([*(*(a1 + 40) + 544) scanVolumeForFileIDs:&v21[8 * v3] count:1 returningAttributes:769 withBlock:v23])
      {
        (*(*(a1 + 48) + 16))();
        goto LABEL_29;
      }

      if (*(v26 + 24))
      {
        break;
      }

      v12 = v5;
LABEL_22:
      ++v3;
      v5 = v12;
      if (v3 >= *(a1 + 64))
      {
        goto LABEL_26;
      }
    }

    v9 = v4;
    v22 = v3;
    v10 = [v36[5] bytes];
    if (v10[9] == *(a1 + 56))
    {
      v11 = 0;
    }

    else
    {
      v11 = [NSNumber numberWithUnsignedLongLong:?];
    }

    v13 = [NSDictionary dictionaryWithObjectsAndKeys:v36[5], @"attributes", v30[5], @"name", v11, @"parent", 0];

    v12 = [NSNumber numberWithUnsignedLongLong:v10[8]];

    [v2 setObject:v13 forKeyedSubscript:v12];
    while (2)
    {
      v6 = v11;
      while (1)
      {
        if (v10[9] == *(a1 + 56))
        {
          v4 = v13;
          goto LABEL_21;
        }

        v14 = [v2 objectForKeyedSubscript:v6];

        if (!v14)
        {
          break;
        }

        v15 = [v14 objectForKeyedSubscript:@"attributes"];
        v16 = v36[5];
        v36[5] = v15;

        v17 = [v14 objectForKeyedSubscript:@"parent"];

        v10 = [v36[5] bytes];
        v6 = v17;
        v13 = v14;
      }

      v18 = v36[5];
      v36[5] = 0;

      v19 = v30[5];
      v30[5] = 0;

      *(v26 + 24) = 0;
      if (![*(*(a1 + 40) + 544) scanVolumeForFileIDs:v10 + 9 count:1 returningAttributes:769 withBlock:v23])
      {
        if (*(v26 + 24))
        {
          v10 = [v36[5] bytes];
          if (v10[9] == *(a1 + 56))
          {
            v11 = 0;
          }

          else
          {
            v11 = [NSNumber numberWithUnsignedLongLong:?];
          }

          v13 = [NSDictionary dictionaryWithObjectsAndKeys:v36[5], @"attributes", v30[5], @"name", v11, @"parent", 0];
          v20 = [NSNumber numberWithUnsignedLongLong:v10[8]];

          [v2 setObject:v13 forKeyedSubscript:v20];
          v12 = v20;
          continue;
        }

        v4 = 0;
LABEL_21:
        v3 = v22;
        goto LABEL_22;
      }

      break;
    }

    (*(*(a1 + 48) + 16))();
    v4 = 0;
    v5 = v12;
  }

  else
  {
    v6 = 0;
    v12 = 0;
    v4 = 0;
LABEL_26:
    (*(*(a1 + 48) + 16))();
    v5 = v12;
  }

LABEL_29:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
}

void sub_100016CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100016D34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [NSData dataWithBytes:a3 length:184];
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [NSString stringWithUTF8String:a4];
  v10 = *(a1[5] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_100016ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016EE4(uint64_t a1, int a2, id a3)
{
  if (!a2)
  {
    v13 = v3;
    v14 = v4;
    v6 = [a3 bytes];
    add = 0;
    v7 = *(a1 + 32);
    v11 = *v6 * *(v7 + 488);
    add = atomic_fetch_add((v7 + 512), 1uLL);
    v8 = [NSData dataWithBytes:&v11 length:16];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_1000179B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_1000179EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

const char *sub_100017A4C(unsigned int *a1)
{
  v2 = *a1;

  return dispatch_queue_get_label(0);
}

void sub_100017F10(id a1)
{
  v1 = objc_alloc_init(UserFSSleepManager);
  v2 = qword_10003FE08;
  qword_10003FE08 = v1;

  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "UFSPM: Created shared sleep manager", v4, 2u);
  }
}

void sub_100018008(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 12);
  if (!v2)
  {
    v4 = [NSNumber numberWithInt:255];
    IOPMAssertionSetProperty(*(*(a1 + 32) + 8), @"AssertLevel", v4);

    v1 = *(a1 + 32);
    v2 = *(v1 + 12);
  }

  *(v1 + 12) = v2 + 1;
}

void sub_100018110(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 12);
  if (!v2)
  {
    if (*(v1 + 24))
    {
      v2 = 0;
    }

    else
    {
      v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 40));
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = v4;

      dispatch_source_set_timer(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
      v7 = *(a1 + 32);
      v8 = *(v7 + 24);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_1000182BC;
      handler[3] = &unk_100038668;
      handler[4] = v7;
      dispatch_source_set_event_handler(v8, handler);
      v9 = *(*(a1 + 32) + 24);
      v10 = dispatch_time(0, 6000000000);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
      dispatch_resume(*(*(a1 + 32) + 24));
      v11 = [NSNumber numberWithInt:255];
      IOPMAssertionSetProperty(*(*(a1 + 32) + 8), @"AssertLevel", v11);
      v12 = livefs_std_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "UFSPM: Preventing machine sleep.", v13, 2u);
      }

      v1 = *(a1 + 32);
      v2 = *(v1 + 12);
    }
  }

  *(v1 + 12) = v2 + 1;
}

void sub_1000182BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018330;
  block[3] = &unk_100038668;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_100018330(uint64_t a1)
{
  v1 = a1 + 32;
  if (*(*(a1 + 32) + 12))
  {
    v2 = livefs_std_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_100023420(v1, v2);
    }

    v3 = *(*v1 + 24);
    v4 = dispatch_time(0, 6000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }

  else
  {
    v5 = [NSNumber numberWithInt:0];
    dispatch_source_cancel(*(*v1 + 24));
    v6 = *(*v1 + 24);
    *(*v1 + 24) = 0;

    IOPMAssertionSetProperty(*(*v1 + 8), @"AssertLevel", v5);
    v7 = livefs_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "UFSPM: timer: Allowing machine sleep.", v8, 2u);
    }
  }
}

void sub_1000184D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 12);
  if (v2)
  {
    *(v1 + 12) = v2 - 1;
  }

  else
  {
    v3 = livefs_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1000234A0(v3);
    }
  }
}

void sub_100018EC4(uint64_t a1)
{
  v6 = [*(a1 + 32) targetVolume];
  v2 = [*(a1 + 32) startLocation];
  v3 = [*(a1 + 32) searchCriteria];
  v4 = [*(a1 + 32) searchToken];
  v5 = [*(a1 + 32) resultsHandler];
  [v6 searchVolume:v2 withCriteria:v3 withSearchToken:v4 andWithResultsHandler:v5];
}

void sub_1000190E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001D27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D294(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001D2AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000243B8();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001D330(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10002442C(a1 + 40);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001D658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10001D67C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000244F4();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001D700(uint64_t a1, void *a2, void *a3)
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

void sub_10001DB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10001DB70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000244F4();
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001DBF4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001DC54(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void initAllUVFSdecmpfsRegistration()
{
  qword_10003FE30 = off_10003FD80;
  unk_10003FE38 = &off_10003FD98;
  qword_10003FE50 = off_10003FD80;
  unk_10003FE58 = &off_10003FD98;
  qword_10003FE60 = off_10003FD80;
  unk_10003FE68 = &off_10003FD98;
  qword_10003FE70 = off_10003FD80;
  unk_10003FE78 = &off_10003FD98;
}

uint64_t decmpGetFunc(unsigned int a1, int a2)
{
  if (a1 > 0xFE)
  {
    return 0;
  }

  v4 = qword_10003FE18[a1];
  if (!v4)
  {
    v5 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002483C(a1, v5);
    }

    return 0;
  }

  if (a2 == 2)
  {
    return v4[2];
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      return *v4;
    }

    return 0;
  }

  return v4[1];
}

uint64_t sub_10001DD40(uint64_t result, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = *(result + 12);
  return result;
}

uint64_t sub_10001DDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5)
  {
    return 22;
  }

  if (!a4)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [NSMutableData dataWithLength:184];
    if (!v13)
    {
      return 12;
    }

    v14 = v13;
    v10 = (*(v12 + 80))(v11, [v13 mutableBytes]);
    if (!v10)
    {
      *a5 = *([v14 mutableBytes] + 6);
    }

    return v10;
  }

  v7 = a1 + 32;
  v6 = *(a1 + 32);
  v8 = *(*(v7 + 8) + 288);

  return v8(v6);
}

void sub_10001DEA4(uint64_t a1, void *a2, unint64_t *a3)
{
  v3 = (*a3 + *a2 + 0xFFFF) & 0xFFFFFFFFFFFF0000;
  *a2 &= 0xFFFFFFFFFFFF0000;
  *a3 = v3;
}

uint64_t sub_10001DECC(uint64_t a1)
{
  if (*a1 < 0x18u)
  {
    return 0;
  }

  v1 = *(a1 + 20) & 1;
  v2 = *(a1 + 20) & 0xFFFFFFFFFFFFFFFELL;
  if (v2)
  {
    v3 = userfs_log_default;
    if (os_log_type_enabled(userfs_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000248B4(v2, v3);
    }
  }

  return v1;
}

void sub_10001E084(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  sub_100001D8C();
  sub_100001D4C(&_mh_execute_header, v1, v2, "loadFileSystemDylibPassingParameterDict:loaded:%@", v3, v4, v5, v6, v7);
}

void sub_10001E0EC(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  sub_100001D8C();
  sub_100001D4C(&_mh_execute_header, v1, v2, "loadFileSystemDylibPassingParameterDict:inited:%@", v3, v4, v5, v6, v7);
}

void sub_10001E154(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  sub_100001D8C();
  sub_100001D4C(&_mh_execute_header, v1, v2, "loadFileSystemDylibPassingParameterDict:opsVectorLoaded:%@", v3, v4, v5, v6, v7);
}

void sub_10001E1BC()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E1F8(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  v2 = *v1;
  sub_100001D8C();
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "loadFileSystemDylibPassingParameterDict:notvalidDyLib:%llu:%d", v5, 0x12u);
}

void sub_10001E280()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E2BC()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E2F8()
{
  sub_100001D68();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001E368(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  sub_100001D8C();
  v6 = 2048;
  v7 = v3;
  _os_log_fault_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "underflow for UVFS plug-in refcount: %@, %p", v5, 0x16u);
}

void sub_10001E42C()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10001E4D0()
{
  sub_100001D68();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "getUVFSPluginForFS:start:%@:%@", v2, 0x16u);
}

void sub_10001E558()
{
  sub_100001D68();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001ED40(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "[UVFSAnalytics discoverPartitions:]";
  sub_100003330(&_mh_execute_header, a2, a3, "%s: Couldn't find child partition properties, won't log this partition's properties", a1);
}

void sub_10001ED84(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "[UVFSAnalytics discoverPartitions:]";
  sub_100003330(&_mh_execute_header, a2, a3, "%s: Partition type wasn't found in the partition, won't log it to telemetry.", a1);
}

void sub_10001EDC8(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "[UVFSAnalytics discoverPartitions:]";
  sub_100003330(&_mh_execute_header, a2, a3, "%s: Partition size wasn't found in the partition, won't log it to telemetry.", a1);
}

void sub_10001F2BC()
{
  sub_1000056CC();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001F33C()
{
  sub_100005678();
  sub_100005690();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001F3AC()
{
  sub_100005678();
  sub_100005690();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001F41C()
{
  sub_100005678();
  sub_100005690();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001F48C(int *a1)
{
  v6 = *a1;
  sub_1000056C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_10001F510()
{
  sub_100005678();
  sub_100005690();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001F5F4()
{
  sub_100005678();
  sub_1000056A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001F778(char a1, xpc_object_t object, os_log_t log)
{
  if (a1)
  {
    v4 = "NULL";
  }

  else
  {
    v4 = xpc_copy_description(object);
  }

  v5 = 136446210;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "open:invalidReply:%{public}s", &v5, 0xCu);
}

void sub_10001F944(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 deviceName];
  v6[0] = 136315394;
  sub_1000056B0();
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s:kIOMessageServiceIsTerminated:%@", v6, 0x16u);
}

void sub_10001FA7C()
{
  sub_1000056B0();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001FAFC()
{
  sub_1000056CC();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001FB80()
{
  sub_1000056B0();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10001FC00(uint64_t a1)
{
  sub_1000056EC(a1, __stack_chk_guard);
  sub_100005690();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_10001FC94()
{
  sub_1000056CC();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10001FD18(uint64_t a1)
{
  sub_1000056EC(a1, __stack_chk_guard);
  sub_1000056D8();
  sub_1000056A0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10001FDA0(uint64_t a1)
{
  sub_1000056EC(a1, __stack_chk_guard);
  sub_1000056D8();
  sub_100005690();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10001FE28(uint64_t a1)
{
  sub_1000056EC(a1, __stack_chk_guard);
  sub_1000056B0();
  sub_100005690();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10001FEA0(uint64_t a1)
{
  sub_1000056EC(a1, __stack_chk_guard);
  sub_1000056B0();
  sub_1000056A0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10001FF9C(uint64_t *a1)
{
  v6 = *a1;
  sub_1000056CC();
  sub_100005690();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10002001C(uint64_t a1)
{
  sub_1000056EC(a1, __stack_chk_guard);
  sub_1000056D8();
  sub_1000056A0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1000201D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = a2;
  v4 = *__error();
  v5 = 138412546;
  v6 = v2;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%@]:close:error:%d", &v5, 0x12u);
}

void sub_10002037C()
{
  sub_100003300();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000203F8()
{
  sub_100003300();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000204B8()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000204F4()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020530()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002056C(uint64_t a1, int a2, os_log_t log)
{
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "reply:%u:%@", v3, 0x12u);
}

void sub_1000205F4()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000206B0(uint64_t a1)
{
  v6 = *(*a1 + 40);
  sub_1000056C0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000207B4()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000207F0()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002082C()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020868()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000208D8()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100020948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = 138543618;
  v7 = a1;
  v8 = 2048;
  v9 = [a3 count];
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "device:%{public}@:rawDevice:loadedVolumes:%lu", &v6, 0x16u);
}

void sub_100020A00()
{
  sub_100001D68();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "device:%{public}@:raw:device:creation:error:%@:exiting", v2, 0x16u);
}

void sub_100020A84()
{
  sub_100001D68();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100020AF4()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020B30(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_100017A20();
  sub_1000056C0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100020BBC()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020C2C()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020C68(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  [a1 bytes];
  sub_100001D68();
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "LFM init: unable to set volume name to '%s'.", v6, 0xCu);
}

void sub_100020D08()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100020D78()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020DB4()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020DF0()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100020E2C(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  sub_100001D8C();
  sub_1000179E0();
  sub_1000056A0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100020EA4()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100020F14()
{
  sub_100001D68();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100020F84(uint64_t a1)
{
  v1 = *(a1 + 552);
  sub_100001D8C();
  sub_1000056A0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10002100C(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100001D8C();
  sub_100001D80();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100021080(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100001D8C();
  sub_100001D80();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000210F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [sub_100017A14() count];
  sub_10001796C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 8u);
}

void sub_10002118C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [sub_100017A14() count];
  sub_10001796C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 8u);
}

void sub_100021224(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "liveFSVolume:purging:FHToNodeTable:rootNode:reclaim:skipped", buf, 2u);
}

void sub_100021264()
{
  sub_1000179D4();
  sub_1000056A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000212E0()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021350(uint64_t a1)
{
  v1 = *(a1 + 552);
  dispatch_queue_get_label(0);
  sub_100017A68();
  sub_1000179D4();
  sub_1000179B4(&_mh_execute_header, v2, v3, "userFSVolume:unmount:%@:queue:%s:how:%#x:start", v4, v5, v6, v7, v8);
}

void sub_1000213F8()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021434(uint64_t a1)
{
  v1 = *(a1 + 552);
  dispatch_queue_get_label(0);
  sub_100017A68();
  sub_1000179D4();
  sub_1000179B4(&_mh_execute_header, v2, v3, "liveFSVolume:unmount:%@:queue:%s:how:%#x:finish", v4, v5, v6, v7, v8);
}

void sub_1000214DC()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021518()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021554()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021590()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000215CC(void *a1)
{
  v2 = a1;
  v3 = [sub_100017A14() volumeName];
  sub_100001D68();
  sub_10001796C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100021664(void *a1)
{
  v2 = a1;
  v3 = [sub_100017A14() volumeName];
  sub_100001D68();
  sub_10001796C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000216FC()
{
  sub_100017A74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002176C()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000217A8()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000217E4()
{
  sub_100017A74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100021854()
{
  sub_1000179A0();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100021950()
{
  sub_100001D68();
  sub_1000179E0();
  sub_1000056A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000219C8()
{
  sub_100001D68();
  sub_1000179E0();
  v3 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "pathToStringNode:node:%@name:%@, failed to get UTF8 representation", v2, 0x16u);
}

void sub_100021A48()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021AB8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 504);
  sub_100017A20();
  sub_1000056A0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_100021B44()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021B80()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100021BBC()
{
  v1[0] = 136315394;
  sub_1000179A0();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s: failed to register fd with kernel. status: %d.", v1, 0x12u);
}

void sub_100021C3C()
{
  sub_1000179A0();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100021CB8()
{
  sub_1000179A0();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100021D34()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021DA4()
{
  sub_100001D68();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021E14()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100021E84(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lfn_name];
  sub_1000179E0();
  sub_100017A3C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100021F40()
{
  sub_100001D68();
  sub_1000179E0();
  sub_1000056A0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100021FB8()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100022028(os_log_t log)
{
  v1 = 136315138;
  v2 = "[userFSVolume readLinkOf:requestID:reply:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s: failed to encode link content", &v1, 0xCu);
}

void sub_1000221E0(unsigned int *a1)
{
  v1 = *a1;
  sub_100017A20();
  sub_100001D80();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100022254()
{
  sub_100017A08();
  v3 = v2;
  v4 = [v1 getFH];
  v6[0] = 136315650;
  sub_100003300();
  v7 = v5;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s: file handle mismatch: %@ != %@: ENOENT", v6, 0x20u);
}

void sub_100022314()
{
  sub_100017A08();
  v2 = v1;
  v3 = [v0 lfn_name];
  sub_100003300();
  sub_100017A3C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10002244C(unsigned int *a1)
{
  v1 = *a1;
  sub_100017A20();
  sub_1000056A0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_1000224CC()
{
  sub_100017A08();
  sub_100017A4C(v0);
  sub_10001797C();
  sub_1000179B4(&_mh_execute_header, v1, v2, "removeItem(): finished reply(%d, %p) on %s", v3, v4, v5, v6, v7);
}

void sub_100022548()
{
  sub_100017A08();
  sub_100017A4C(v0);
  sub_10001797C();
  sub_1000179B4(&_mh_execute_header, v1, v2, "removeDirectory(): running reply(%d, %p) on %s", v3, v4, v5, v6, v7);
}

void sub_1000225C4()
{
  sub_100017A08();
  sub_100017A4C(v0);
  sub_10001797C();
  sub_1000179B4(&_mh_execute_header, v1, v2, "removeDirectory(): finished reply(%d, %p) on %s", v3, v4, v5, v6, v7);
}

void sub_100022674()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000226B0()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000226EC()
{
  sub_100017A08();
  v3 = v2;
  v4 = v2;
  v5 = v1;
  v6 = [v3 UTF8String];
  v7 = *v0;
  v8 = 136315650;
  v9 = "[userFSVolume otherAttributeOf:named:requestID:reply:]";
  v10 = 2080;
  v11 = v6;
  v12 = 1024;
  v13 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: failed to getNodeForFH %s %d", &v8, 0x1Cu);
}

void sub_1000227BC()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000227F8()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022834()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022870(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 lfn_appledouble];
  sub_100001D68();
  sub_100017A3C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

void sub_100022924()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022960()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002299C()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000229D8()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022A14()
{
  sub_100017A08();
  v3 = v2;
  v4 = v2;
  v5 = v1;
  [v3 UTF8String];
  v6 = objc_retainBlock(v0);
  sub_100017A68();
  sub_1000179D4();
  sub_10001796C();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_100022AD0()
{
  sub_100017A08();
  v3 = v2;
  v4 = v2;
  v5 = v1;
  [v3 UTF8String];
  v6 = objc_retainBlock(v0);
  sub_100017A68();
  sub_1000179D4();
  sub_10001796C();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_100022B8C()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022BC8()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100022C38()
{
  sub_100001D74();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022C74(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100001D8C();
  sub_1000056C0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100022CE8(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100001D8C();
  sub_1000056C0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100022D5C()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100022DCC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "searchRequest:push:%@", buf, 0xCu);
}

void sub_100022E24()
{
  sub_100017A2C();
  *v1 = 138412290;
  *v3 = v2;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "search: trying to get xattrs: %@", v4, 0xCu);
}

void sub_100022E78()
{
  sub_100017A2C();
  *v1 = 138412290;
  *v3 = v2;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "search:push:[%@]@0", v4, 0xCu);
}

void sub_100022ECC()
{
  sub_100017A2C();
  *v1 = 138412290;
  *v3 = v2;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "searchVolume:scanDir:bad:cookie:skipping:%@", v4, 0xCu);
}

void sub_100022F20(uint8_t *buf, uint64_t a2, _DWORD *a3, os_log_t log)
{
  v4 = *(*a2 + 24);
  *buf = 67109120;
  *a3 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "searchVolume:scanDir:aborting:error:%d", buf, 8u);
}

void sub_100022F74()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100022FB0(uint64_t a1)
{
  v1 = *(*a1 + 24);
  sub_100017A20();
  sub_100001D80();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100023028()
{
  sub_100001D68();
  sub_1000056C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100023098(uint64_t *a1)
{
  sub_100001D98(a1, __stack_chk_guard);
  v2 = *(*(v1 + 8) + 24);
  v4 = *v3;
  sub_100017A20();
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "search: got error %d from getXattr for '%@'", v7, 0x12u);
}

void sub_100023128()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100023198(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  v5 = [sub_100017A14() deviceName];
  sub_100003300();
  sub_10001796C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_10002323C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100017A14() deviceName];
  sub_100003300();
  sub_10001796C();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1000232E0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [sub_100017A14() deviceName];
  v6[0] = 136315394;
  sub_100003300();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s:CHECK_AND_REPAIR:failed:%@", v6, 0x16u);
}

void sub_100023420(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 12);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "UFSPM: timer: sleepCount: %d, rescheduling timer", v3, 8u);
}

void sub_100023640(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "liveFilesSearchRequest:alloced:clientid:0x%llx", &v3, 0xCu);
}

void sub_1000236BC(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 16);
  v3 = 136315394;
  v4 = "[liveFilesSearchRequest invalidateConnections]";
  v5 = 2048;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:clientid:0x%llx:start", &v3, 0x16u);
}

void sub_1000237C0(uint64_t a1, int a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "LFN[%p]: dealoc failed to reclaim: %d", &v3, 0x12u);
}

void sub_100023848()
{
  sub_1000179A0();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000238C4()
{
  sub_1000179A0();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100023940()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000239B0(uint64_t a1)
{
  v1 = *(*a1 + 4);
  sub_100017A20();
  sub_100001D80();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void sub_100023A3C(uint64_t a1)
{
  v1 = *(*a1 + 8);
  sub_100017A20();
  sub_100001D80();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100023AB4()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023AF0(unsigned int *a1)
{
  v1 = *a1;
  sub_100017A20();
  sub_100001D80();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100023B64(uint64_t a1, NSObject *a2)
{
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 12);
  v4[0] = 67109376;
  v4[1] = v2;
  v5 = 2048;
  v6 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "decmpfsFetchCompressedHeader: header type [%d] header size [%llu]", v4, 0x12u);
}

void sub_100023BF4(unsigned int *a1)
{
  v1 = *a1;
  sub_100017A20();
  sub_100001D80();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_100023C9C()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023CD8()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100023D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = 134217984;
  *(a2 + 4) = v2;
  sub_10001D008();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100023D5C()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100023DCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = 134217984;
  *(a2 + 4) = v2;
  sub_10001D008();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100023E14(int *a1)
{
  v6 = *a1;
  sub_10001D008();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
}

void sub_100023ED0(void *a1, void *a2, int a3)
{
  v6 = a1;
  v7 = a2;
  v8 = *([a1 bytes] + 1);
  v9[0] = 67109376;
  v9[1] = a3;
  v10 = 2048;
  v11 = v8;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error setting attribute: %d[0x%llx]", v9, 0x12u);
}

void sub_100024078()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000240E8()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100024124()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100024194(uint64_t a1)
{
  v6 = *(*a1 + 12);
  sub_10001D008();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100024220()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100024290()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000242CC()
{
  sub_100017A74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10002433C()
{
  sub_100001D74();
  sub_100001D80();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002442C(uint64_t a1)
{
  v1 = *(*(*a1 + 8) + 40);
  sub_1000056D8();
  sub_1000056C0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100024628(char a1, uint64_t *a2)
{
  if ((a1 & 1) == 0)
  {
    v2 = *a2;
  }

  sub_1000056D8();
  sub_10001DC54(&_mh_execute_header, v3, v4, "%s:return1:NO:error:%@", 136315394);
}

void sub_1000246AC(char a1, uint64_t *a2)
{
  if ((a1 & 1) == 0)
  {
    v2 = *a2;
  }

  sub_1000056D8();
  sub_10001DC54(&_mh_execute_header, v3, v4, "%s:return2:NO:error:%@", 136315394);
}

void sub_1000247B0(uint64_t *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  sub_1000056D8();
  sub_1000056C0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002483C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "decmpGetFunc: decompressors[%d] == NULL", v2, 8u);
}

void sub_1000248B4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "get_decompression_flags_chunked: unknown type4 flags %llx\n", &v2, 0xCu);
}