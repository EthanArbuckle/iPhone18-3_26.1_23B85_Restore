uint64_t start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "smbclientd main starting", v10, 2u);
  }

  v0 = objc_alloc_init(SMBClientdSettings);
  v1 = qword_1000954F0;
  qword_1000954F0 = v0;

  if (_set_user_dir_suffix())
  {
    v2 = NSTemporaryDirectory();
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004B99C();
  }

  v3 = objc_opt_new();
  v4 = [SMBClientService newServiceProxyObjectWithDelegate:v3];
  v5 = objc_opt_new();
  [v5 setServer:v4];
  v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.filesystems.smbclientd"];
  [v6 setDelegate:v5];
  v7 = qword_1000954E8;
  qword_1000954E8 = v4;
  v8 = v4;

  [v6 resume];
  [qword_1000954F0 reconstituteWithService:v8];
  [v8 initializationFinished];

  CFRunLoopRun();
  return 0;
}

void sub_1000023C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000253C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002554(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v5)
  {
    [*(a1 + 32) setDeObj:v5];
    [*(a1 + 32) setEnumState:1];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004B9E0();
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100002868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002880(uint64_t a1, int a2)
{
  v3 = a1 + 48;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004BBD0(a1, v3);
    }
  }

  else
  {
    ++*(*(a1 + 32) + 56);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100003A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003B40(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003BF8;
  v7[3] = &unk_10008C7B8;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v6 _getEntriesInBuffer:v1 BufferLen:v2 CookieIn:v3 VerifyIn:v4 IsReadDirAttr:v5 CompletionHandler:v7];
}

id sub_100003F60(uint64_t a1)
{
  v3 = (a1 + 72);
  v2 = *(a1 + 72);
  if (v2 == -1)
  {
    [*(a1 + 32) setEnumState:2];
    [*(a1 + 32) close_dir_enum];
    v13 = *(a1 + 48);
    if (v13)
    {
      if (*(a1 + 80))
      {
        *(v13 + 8) = 0;
        *v13 = -1;
      }

      else
      {
        *(v13 + 16) = 0;
        *(v13 + 8) = -1;
      }
    }

    goto LABEL_23;
  }

  if (v2)
  {
    if (v2 == 55)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        if (*(a1 + 80))
        {
          *(v4 + 8) = 0;
        }

        else
        {
          *(v4 + 16) = 0;
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C370();
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C3B4(a1, v3);
      }

      v14 = *v3;
    }

LABEL_23:
    v19 = [*(a1 + 32) dnp];
    [v19 getReadDirVerifier];

    v20 = *(a1 + 76);
    return (*(*(a1 + 40) + 16))();
  }

  v21 = 0;
  v5 = [*(a1 + 32) fillNextEntry:*(a1 + 56) BufLen:*(a1 + 64) IsReadDirAttr:*(a1 + 80) BytesFilled:&v21];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 76);
    v10 = *(a1 + 80);
    v11 = *(a1 + 48);
    return [v6 processNextEntry:*(a1 + 40) inbufPtr:? prevEntry:? inbufRemain:? bytesFilled:? IsReadDirAttr:? CompletionHandler:?];
  }

  else
  {
    ++v6[7];
    v15 = 8;
    if (!*(a1 + 80))
    {
      v15 = 16;
    }

    v16 = *(*(a1 + 56) + v15);
    v17 = *(a1 + 64) - v16;
    v18 = (*(a1 + 76) + v16);
    return [*(a1 + 32) processNextEntry:*(a1 + 40) inbufPtr:? prevEntry:? inbufRemain:? bytesFilled:? IsReadDirAttr:? CompletionHandler:?];
  }
}

void sub_100004828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004888(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(a1 + 64);
  v9 = v7[13];
  v8 = v7[14];
  v10 = v7[12];
  *(v6 + 272) = *(v7 + 30);
  *(v6 + 240) = v9;
  *(v6 + 256) = v8;
  *(v6 + 224) = v10;
  v11 = v7[11];
  v13 = v7[8];
  v12 = v7[9];
  *(v6 + 192) = v7[10];
  *(v6 + 208) = v11;
  *(v6 + 160) = v13;
  *(v6 + 176) = v12;
  v14 = v7[7];
  v16 = v7[4];
  v15 = v7[5];
  *(v6 + 128) = v7[6];
  *(v6 + 144) = v14;
  *(v6 + 96) = v16;
  *(v6 + 112) = v15;
  v17 = *v7;
  v18 = v7[1];
  v19 = v7[3];
  *(v6 + 64) = v7[2];
  *(v6 + 80) = v19;
  *(v6 + 32) = v17;
  *(v6 + 48) = v18;
  free(*(a1 + 64));
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v5;
  v22 = v5;

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100004B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004D94(uint64_t a1, int a2)
{
  free(*(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

void sub_100005014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000052B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000052E0(uint64_t a1, int a2)
{
  free(*(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v4 = *(a1 + 32);

  dispatch_group_leave(v4);
}

uint64_t sub_100008F0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W8>, float a5@<S0>)
{
  *a2 = a5;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = result;
  *(a2 + 18) = 1024;
  *(a2 + 20) = a4;
  return result;
}

void sub_100008F44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 8u);
}

float *sub_100008F88(float *result, int a2, _DWORD *a3, float a4)
{
  *result = a4;
  *a3 = a2;
  return result;
}

uint64_t sub_100008F94(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 8) = 2112;
  *(a2 + 10) = result;
  return result;
}

void sub_100008FAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x18u);
}

void sub_100009DC8(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[52])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v4 = [*v3 shareName];
      v8 = 136315394;
      v9 = "[smbMount tryCreateRootNode]_block_invoke";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: share: %@, already have a root node", &v8, 0x16u);
    }
  }

  else
  {
    v5 = [v2 connState];
    if (v5)
    {
      if (v5 == 1)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10005041C(v3);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000504C0(v3);
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v6 = [*v3 shareName];
        v8 = 136315394;
        v9 = "[smbMount tryCreateRootNode]_block_invoke";
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: share: %@, connecting to server...", &v8, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) connectToServer];
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100050374(v3);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          v7 = [*v3 shareName];
          v8 = 136315394;
          v9 = "[smbMount tryCreateRootNode]_block_invoke";
          v10 = 2112;
          v11 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%s: share: %@ connected, connection now ACTIVE", &v8, 0x16u);
        }

        *(*v3 + 45) = 1;
        [*v3 resumeIdleTimer];
      }
    }
  }
}

void sub_10000A104(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) connState];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = (*v2 + 472);

      clock_gettime(_CLOCK_REALTIME, v4);
    }
  }

  else if (([*v2 shutdownReason] & 4) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100050574(v2);
    }

    *(*(*(a1 + 40) + 8) + 24) = 57;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) connectToServer];
    v5 = *(*(*(a1 + 40) + 8) + 24);
    if (v5)
    {
      v6 = sub_1000326AC(v5);
      v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v7)
        {
          sub_1000506D0();
        }

        [*v2 setShutdownReason:{objc_msgSend(*v2, "shutdownReason") | 2}];
        [*v2 setConnState:6];
        [*v2 cancelIdleTimer];
        v8 = [*v2 connQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000A304;
        block[3] = &unk_10008C880;
        block[4] = *v2;
        dispatch_barrier_async(v8, block);
      }

      else if (v7)
      {
        sub_100050618();
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100050788(v2);
      }

      *(*v2 + 45) = 1;
      [*v2 resumeIdleTimer];
    }
  }
}

void sub_10000A5F8(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A688;
  block[3] = &unk_10008C880;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

id sub_10000A7B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 openFileCounter] + *(a1 + 40);

  return [v1 setOpenFileCounter:v2];
}

id sub_10000A890(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 40);
  v3 = (a1 + 32);
  if (v2 <= [*(a1 + 32) openFileCounter])
  {
    v5 = *v3;
    v6 = [v5 openFileCounter] - *v1;

    return [v5 setOpenFileCounter:v6];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100050C48();
    }

    return [*v3 setOpenFileCounter:0];
  }
}

id sub_10000AA60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 pendingChangeNotifyCount] + *(a1 + 40);

  return [v1 setPendingChangeNotifyCount:v2];
}

id sub_10000AB3C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 40);
  v3 = (a1 + 32);
  if (v2 <= [*(a1 + 32) pendingChangeNotifyCount])
  {
    v5 = *v3;
    v6 = [v5 pendingChangeNotifyCount] - *v1;

    return [v5 setPendingChangeNotifyCount:v6];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100050D08();
    }

    return [*v3 setPendingChangeNotifyCount:0];
  }
}

void sub_10000AD98(uint64_t a1)
{
  v1 = a1 + 32;
  [*(a1 + 32) setShutdownReason:{objc_msgSend(*(a1 + 32), "shutdownReason") | 1}];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100050DC8(v1);
  }
}

void sub_10000B270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B2A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10000B2B8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000B32C;
  v3[3] = &unk_10008C8D0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 prepareForReclaim:v3];
}

void sub_10000B800(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000B8A8;
  v5[3] = &unk_10008C8F8;
  v5[4] = v1;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v1 _LILookup:v2 name:v4 forClient:v3 reply:v5];
}

void sub_10000B8A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v10 = a3;
  v9 = [v7 opsSyncGroup];
  dispatch_group_leave(v9);

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

void sub_10000BF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 240), 8);
  _Block_object_dispose((v57 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BFD0(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000C02C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 lockMeta];
  if ([v3 isRevokedLocked])
  {
    [v3 unlockMeta];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [v3 setInUseClientSet:{*(a1 + 64) | objc_msgSend(v3, "inUseClientSet")}];
    [v3 unlockMeta];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000C15C;
    v7[3] = &unk_10008C998;
    v12 = *(a1 + 56);
    v8 = *(a1 + 32);
    v4 = v3;
    v13 = *(a1 + 64);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = v4;
    v10 = v5;
    v11 = v6;
    [v4 fetchAttrDataWithCompletionHandler:v7];
  }
}

void sub_10000C15C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(a1 + 56);
    v7 = [*(a1 + 40) fh];
    (*(v6 + 16))(v6, 0, v7, v5);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000511AC();
    }

    [*(a1 + 40) lockMeta];
    [*(a1 + 40) setInUseClientSet:{objc_msgSend(*(a1 + 40), "inUseClientSet") & ~*(a1 + 72)}];
    [*(a1 + 40) unlockMeta];
    if (a3 == 2)
    {
      v8 = [*(a1 + 48) nodeTableSyncQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000C2E4;
      block[3] = &unk_10008C970;
      v10 = *(a1 + 40);
      v9 = v10.i64[0];
      v12 = vextq_s8(v10, v10, 8uLL);
      dispatch_sync(v8, block);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10000C2F0(uint64_t a1)
{
  v6 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000C398(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(*(a1[5] + 8) + 40);
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C460;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr queryNameInParent:v5 QueryName:v4 FAttrs:v6 CompletionHandler:v8];
}

void sub_10000C470(uint64_t a1, int a2)
{
  v4 = *(a1 + 88);
  v6 = v4[1];
  v5 = v4[2];
  v59 = *v4;
  v60 = v6;
  v61 = v5;
  v7 = v4[6];
  v9 = v4[3];
  v8 = v4[4];
  v64 = v4[5];
  v65 = v7;
  v62 = v9;
  v63 = v8;
  v10 = v4[10];
  v12 = v4[7];
  v11 = v4[8];
  v68 = v4[9];
  v69 = v10;
  v66 = v12;
  v67 = v11;
  v13 = v4[14];
  v15 = v4[11];
  v14 = v4[12];
  v72 = v4[13];
  v73 = v13;
  v70 = v15;
  v71 = v14;
  free(v4);
  if (a2)
  {
    if (a2 != 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000512E8(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v16 = [[smbNode alloc] initWithName:*(a1 + 32) andParent:*(*(*(a1 + 72) + 8) + 40) andAttr:&v59];
    if (v16)
    {
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10000C9AC;
      v53[3] = &unk_10008CA88;
      v17 = *(a1 + 80);
      v18 = *(a1 + 48);
      v53[4] = *(a1 + 40);
      v57 = v17;
      v54 = v18;
      v55 = *(a1 + 32);
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      v56 = v19;
      v58 = v20;
      v21 = objc_retainBlock(v53);
      v22 = v21;
      if (DWORD2(v66) == 5)
      {
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = sub_10000B2A0;
        v51 = sub_10000B2B0;
        v52 = 0;
        v23 = *(a1 + 40);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10000CCF4;
        v44[3] = &unk_10008CAD8;
        v45 = v16;
        v46 = &v47;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10000CE1C;
        v38[3] = &unk_10008CB00;
        v39 = *(a1 + 32);
        v41 = *(a1 + 56);
        v40 = v45;
        v43 = &v47;
        v42 = v22;
        [v23 submitRequestBlock:v44 continuationBlock:v38];

        _Block_object_dispose(&v47, 8);
      }

      else if (DWORD2(v66) == 1 && v60 == 1067)
      {
        v47 = 0;
        v48 = &v47;
        v49 = 0x3032000000;
        v50 = sub_10000B2A0;
        v51 = sub_10000B2B0;
        v52 = 0;
        v36[0] = 0;
        v36[1] = v36;
        v36[2] = 0x2020000000;
        v37 = 0;
        v24 = *(a1 + 40);
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10000CEC4;
        v32[3] = &unk_10008CB50;
        v33 = v16;
        v34 = v36;
        v35 = &v47;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10000D000;
        v25[3] = &unk_10008CB78;
        v26 = *(a1 + 32);
        v28 = *(a1 + 56);
        v30 = v36;
        v27 = v33;
        v31 = &v47;
        v29 = v22;
        [v24 submitRequestBlock:v32 continuationBlock:v25];

        _Block_object_dispose(v36, 8);
        _Block_object_dispose(&v47, 8);
      }

      else
      {
        (v21[2])(v21, v16);
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10005124C(a1 + 72, (a1 + 32));
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_10000C978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_10000C9AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nodeTableSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000CB54;
  block[3] = &unk_10008C9E8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v20 = *(a1 + 64);
  block[4] = v5;
  v18 = v6;
  v19 = *(a1 + 48);
  dispatch_sync(v4, block);

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) nodeTableSyncQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000CBFC;
    v13[3] = &unk_10008CA60;
    v13[4] = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 72);
    v14 = v8;
    v16 = v9;
    v15 = *(a1 + 48);
    dispatch_sync(v7, v13);

    (*(*(a1 + 56) + 16))(*(a1 + 56), v8, v10, v11, v12);
  }
}

void sub_10000CB54(uint64_t a1)
{
  v6 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000CBFC(uint64_t a1)
{
  v2 = [*(a1 + 32) handleTable];
  v3 = *(a1 + 40);
  v4 = [v3 fh];
  [v2 setObject:v3 forKey:v4];

  v8 = [*(a1 + 32) nameTable];
  v5 = *(a1 + 40);
  v6 = [*(*(*(a1 + 56) + 8) + 40) fh];
  v7 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v6, *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  [v8 setObject:v5 forKey:v7];
}

void sub_10000CCF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CDA0;
  v7[3] = &unk_10008CAB0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [smb_subr readReparseSymlink:v5 completionHandler:v7];
}

void sub_10000CDA0(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000CE1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000513A0(a1);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    [*(a1 + 40) setReparseSymLink:*(*(*(a1 + 64) + 8) + 40)];
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 56) + 16);

    return v5();
  }
}

void sub_10000CEC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000CF78;
  v6[3] = &unk_10008CB28;
  v8 = *(a1 + 40);
  v7 = v3;
  v5 = v3;
  [smb_subr checkForWindowsSymlink:v4 CompletionHandler:v6];
}

void sub_10000CF78(void *a1, int a2, char a3, id obj)
{
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), obj);
  v6 = obj;
  (*(a1[4] + 16))();
}

uint64_t sub_10000D000(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005142C(a1);
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 40) setWindowsSymLink:*(*(*(a1 + 72) + 8) + 40)];
    }

    v4 = *(a1 + 40);
    v5 = *(*(a1 + 56) + 16);

    return v5();
  }
}

void sub_10000D1C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000D254;
  v3[3] = &unk_10008CBC8;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _getAttr:v2 reply:v3];
}

void sub_10000D254(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 opsSyncGroup];
  dispatch_group_leave(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_10000D584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000D5B4(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000D610(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100051508(a1);
    }

    if (a3 == 2)
    {
      v7 = [*(a1 + 32) nodeTableSyncQueue];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000D720;
      v9[3] = &unk_10008C858;
      v8 = *(a1 + 48);
      v9[4] = *(a1 + 32);
      v9[5] = v8;
      dispatch_sync(v7, v9);
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_10000D848(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D8EC;
  v4[3] = &unk_10008CC40;
  v4[4] = v1;
  v5 = *(a1 + 48);
  [v1 _LIOpen:v2 withMode:v3 reply:v4];
}

uint64_t sub_10000D8EC(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10000DED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose((v60 - 224), 8);
  _Block_object_dispose((v60 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DF3C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10000DF98(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) findSharedFileRef:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000DFF0(void *a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1[4] + 8) + 40) isViable])
  {
    v4 = *(*(a1[4] + 8) + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000E0FC;
    v8[3] = &unk_10008CCB8;
    v5 = a1[6];
    v10 = a1[5];
    v9 = v3;
    [smb_subr openFileNode:v4 withStream:0 withArgs:v5 CompletionHandler:v8];
  }

  else
  {
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    (*(v3 + 2))(v3, 5);
  }
}

void sub_10000E0FC(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000E178(uint64_t a1)
{
  free(*(a1 + 80));
  v2 = [*(*(*(a1 + 40) + 8) + 40) fileRefSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E334;
  block[3] = &unk_10008CC90;
  v8 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v9 = *(a1 + 88);
  dispatch_sync(v2, block);

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [*(*(*(a1 + 64) + 8) + 40) setFidCtx:?];
      [*(*(*(a1 + 64) + 8) + 40) setCreateDisposition:*(*(*(a1 + 72) + 8) + 32)];
      v3 = [*(*(*(a1 + 40) + 8) + 40) fileRefSyncQueue];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10000E38C;
      v6[3] = &unk_10008CD08;
      v4 = *(a1 + 64);
      v6[4] = *(a1 + 40);
      v6[5] = v4;
      dispatch_sync(v3, v6);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000516DC(a1 + 40);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000E334(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) findSharedFileRef:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000E4B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E55C;
  v4[3] = &unk_10008CD58;
  v4[4] = v1;
  v5 = *(a1 + 48);
  [v1 _LIClose:v2 keepingMode:v3 reply:v4];
}

void sub_10000E55C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v8 = a5;
  v10 = a3;
  v9 = [v7 opsSyncGroup];
  dispatch_group_leave(v9);

  (*(*(a1 + 40) + 16))();
}

void sub_10000EAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 256), 8);
  _Block_object_dispose((v45 - 208), 8);
  _Block_object_dispose((v45 - 176), 8);
  _Block_object_dispose((v45 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EB68(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000EBC4(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4[0] = _NSConcreteStackBlock;
  v2 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4[1] = 3221225472;
  v4[2] = sub_10000EC84;
  v4[3] = &unk_10008CD80;
  v6 = v2;
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v5 = *(a1 + 32);
  [v3 closeFileRefWithMode:v1 CompletionHandler:v4];
}

uint64_t sub_10000EC84(void *a1, int a2, int a3)
{
  if (!(a3 | a2))
  {
    *(*(a1[5] + 8) + 24) = [*(*(a1[6] + 8) + 40) interestedClients];
    v4 = [*(*(a1[6] + 8) + 40) name];
    *(*(a1[7] + 8) + 24) = [v4 hasPrefix:@"."] ^ 1;

    *(*(a1[8] + 8) + 24) = [*(*(a1[6] + 8) + 40) wasWritten] != 0;
    [*(*(a1[6] + 8) + 40) setWasWritten:0];
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      v5 = [*(*(a1[6] + 8) + 40) parent];

      if (v5)
      {
        v6 = [*(*(a1[6] + 8) + 40) parent];
        v7 = [v6 fh];
        v8 = *(a1[9] + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        v10 = [*(*(a1[6] + 8) + 40) parent];
        *(*(a1[10] + 8) + 24) = [v10 interestedClients];

        v11 = [*(*(a1[6] + 8) + 40) name];
        v12 = *(a1[11] + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }
    }
  }

  v14 = *(*(a1[9] + 8) + 40);
  v15 = *(*(a1[10] + 8) + 24);
  v16 = *(*(a1[11] + 8) + 40);
  v17 = *(*(a1[5] + 8) + 24);
  v18 = *(*(a1[8] + 8) + 24);
  v19 = *(*(a1[7] + 8) + 24);
  v20 = *(a1[4] + 16);

  return v20();
}

void sub_10000EF70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F010;
  v4[3] = &unk_10008CC40;
  v4[4] = v1;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v1 _LIReclaim:v2 forClient:v3 reply:v4];
}

uint64_t sub_10000F010(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10000F410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F444(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000F4A0(uint64_t a1)
{
  v2 = [*(a1 + 32) nameTable];
  v3 = [*(*(*(a1 + 40) + 8) + 40) parent];
  v4 = [v3 fh];
  v5 = [*(*(*(a1 + 40) + 8) + 40) name];
  v6 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v4, v5, [*(a1 + 32) isCaseSensitive]);
  [v2 removeObjectForKey:v6];

  v8 = [*(a1 + 32) handleTable];
  v7 = [*(*(*(a1 + 40) + 8) + 40) fh];
  [v8 removeObjectForKey:v7];
}

void sub_10000F5B8(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000F64C;
  v2[3] = &unk_10008CA10;
  v3 = *(a1 + 32);
  [v1 prepareForReclaim:v2];
}

void sub_10000F7A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F854;
  v6[3] = &unk_10008CE20;
  v6[4] = v1;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v1 _LIReadDir:v2 intoBuffer:v5 forCookie:v3 andVerifier:v4 reply:v6];
}

uint64_t sub_10000F854(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10000FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 256), 8);
  _Block_object_dispose((v45 - 224), 8);
  _Block_object_dispose((v45 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FE5C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000FEB8(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bytes];
  v6 = [*(a1 + 40) length];
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000FFC8;
  v12[3] = &unk_10008CE70;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v13 = v3;
  v14 = v10;
  v15 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v12[4] = v9;
  v11 = v3;
  [v4 getEntriesInBuffer:v5 BufferLen:v6 CookieIn:v7 VerifyIn:v8 IsReadDirAttr:0 CompletionHandler:v12];
}

uint64_t sub_10000FFC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v10 = a3;
  v13 = a1[4];
  if (!v13)
  {
    v17 = 0;
    v16 = 0u;
LABEL_7:
    *(*(a1[6] + 8) + 24) = a4;
    v14 = 8;
    goto LABEL_8;
  }

  [v13 shareInfo];
  if ((BYTE8(v16) & 1) == 0 || a2 != 13 || (WORD4(v16) & 0x200) != 0)
  {
    goto LABEL_7;
  }

  v10 = 0;
  a2 = 0;
  v8 = 1;
  v14 = 6;
LABEL_8:
  *(*(a1[v14] + 8) + 24) = v10;
  *(*(a1[7] + 8) + 24) = v8;
  return (*(a1[5] + 16))(a1[5], a2, a3, a4, a5, a6, a7, a8, v16, *(&v16 + 1), v17);
}

uint64_t sub_100010098(void *a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100051B04(a1);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = *(*(a1[5] + 8) + 24);
    v6 = *(*(a1[6] + 8) + 24);
    v4 = *(a1[4] + 16);
    return v4();
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100051B80();
  }

  v4 = *(a1[4] + 16);
  return v4();
}

void sub_100010290(uint64_t a1, int a2, unint64_t a3)
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

void sub_1000104A8(uint64_t a1, int a2, unint64_t a3)
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

void sub_1000106B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010764;
  v6[3] = &unk_10008CE20;
  v6[4] = v1;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v1 _LIReadDirAndAttrs:v2 intoBuffer:v5 forCookie:v3 andVerifier:v4 reply:v6];
}

uint64_t sub_100010764(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100010CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 224), 8);
  _Block_object_dispose((v43 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010D00(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100010D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) bytes];
  v6 = [*(a1 + 40) length];
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100010E68;
  v10[3] = &unk_10008CF10;
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v11 = v3;
  v9 = v3;
  [v4 getEntriesInBuffer:v5 BufferLen:v6 CookieIn:v7 VerifyIn:v8 IsReadDirAttr:1 CompletionHandler:v10];
}

uint64_t sub_100010E68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(*(a1[5] + 8) + 24) = a4;
  *(*(a1[6] + 8) + 24) = a3;
  *(*(a1[7] + 8) + 24) = a5;
  return (*(a1[4] + 16))();
}

uint64_t sub_100010E9C(void *a1, int a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100051E18(a1);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = *(*(a1[5] + 8) + 24);
    v6 = *(*(a1[6] + 8) + 24);
    v4 = *(a1[4] + 16);
    return v4();
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100051E94();
  }

  v4 = *(a1[4] + 16);
  return v4();
}

void sub_1000110AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100011160;
  v6[3] = &unk_10008CF60;
  v6[4] = v1;
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  [v1 _LICreate:v2 named:v3 withAttrs:v4 andClient:v5 reply:v6];
}

void sub_100011160(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = a6;
  v11 = a5;
  v13 = a3;
  v12 = [v9 opsSyncGroup];
  dispatch_group_leave(v12);

  (*(*(a1 + 40) + 16))();
}

void sub_1000118A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose((v67 - 240), 8);
  _Block_object_dispose((v67 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011920(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001197C(uint64_t a1)
{
  v6 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100011A24(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(*(a1[5] + 8) + 40);
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011AF0;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr createFile:v5 NewName:v4 FileType:1 RetAttr:v6 CompletionHandler:v8];
}

void sub_100011B00(uint64_t a1, int a2)
{
  v4 = *(a1 + 112);
  v6 = v4[1];
  v5 = v4[2];
  v45[0] = *v4;
  v45[1] = v6;
  v45[2] = v5;
  v7 = v4[6];
  v9 = v4[3];
  v8 = v4[4];
  v45[5] = v4[5];
  v45[6] = v7;
  v45[3] = v9;
  v45[4] = v8;
  v10 = v4[10];
  v12 = v4[7];
  v11 = v4[8];
  v45[9] = v4[9];
  v45[10] = v10;
  v45[7] = v12;
  v45[8] = v11;
  v13 = v4[14];
  v15 = v4[11];
  v14 = v4[12];
  v45[13] = v4[13];
  v45[14] = v13;
  v45[11] = v15;
  v45[12] = v14;
  free(v4);
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000520A4(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100011E2C;
    v39[3] = &unk_10008CFB0;
    v16 = *(a1 + 64);
    v44 = *(a1 + 120);
    v42 = v16;
    v30 = *(a1 + 32);
    v17 = v30.i64[0];
    v40 = vextq_s8(v30, v30, 8uLL);
    v43 = *(a1 + 72);
    v41 = *(a1 + 56);
    v18 = objc_retainBlock(v39);
    v19 = [[smbNode alloc] initWithName:*(a1 + 32) andParent:*(*(*(a1 + 64) + 8) + 40) andAttr:v45];
    v20 = *(*(a1 + 80) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 48) bytes];
      v22 = *(*(*(a1 + 88) + 8) + 24);
      *(v22 + 8) &= 0xFFFFFFFFFFFFFFE7;
      v23 = *(*(*(a1 + 80) + 8) + 40);
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000120A8;
      v31[3] = &unk_10008D050;
      v35 = *(a1 + 64);
      v32 = *(a1 + 32);
      v26 = *(a1 + 56);
      v28 = *(a1 + 96);
      v27 = *(a1 + 104);
      v33 = v26;
      v29 = *(a1 + 80);
      v36 = v28;
      v37 = v29;
      v38 = v27;
      v34 = v18;
      [v24 setAttrInternalLocked:v23 setAttrs:v25 CompletionHandler:v31];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100052148(a1 + 64);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_100011E2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  [v7 setInUseClientSet:{*(a1 + 72) | objc_msgSend(v7, "inUseClientSet")}];
  v10 = [*(a1 + 32) nodeTableSyncQueue];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100011FB0;
  v19 = &unk_10008CA60;
  v11 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = v7;
  v23 = *(a1 + 56);
  v22 = v11;
  v12 = v7;
  dispatch_sync(v10, &v16);

  *(*(*(a1 + 64) + 8) + 24) = [*(*(*(a1 + 56) + 8) + 40) interestedClients];
  [*(*(*(a1 + 56) + 8) + 40) invalidateAttrs];
  v13 = *(a1 + 48);
  v14 = *(*(*(a1 + 64) + 8) + 24);
  v15 = [v12 fh];
  (*(v13 + 16))(v13, 0, v9, v14, v15, v8);
}

void sub_100011FB0(uint64_t a1)
{
  v2 = [*(a1 + 32) handleTable];
  v3 = *(a1 + 40);
  v4 = [v3 fh];
  [v2 setObject:v3 forKey:v4];

  v8 = [*(a1 + 32) nameTable];
  v5 = *(a1 + 40);
  v6 = [*(*(*(a1 + 56) + 8) + 40) fh];
  v7 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v6, *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  [v8 setObject:v5 forKey:v7];
}

void sub_1000120A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000521DC();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v3 = *(a1 + 56);
    v4 = *(*(v3 + 8) + 40);
    v9[1] = 3221225472;
    v9[2] = sub_1000121F0;
    v9[3] = &unk_10008D028;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v3;
    *&v8 = v5;
    *(&v8 + 1) = v6;
    v10 = v8;
    v11 = v7;
    [v4 fetchAttrDataWithCompletionHandler:v9];
  }
}

void sub_1000121F0(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v7 = *(*(*(a1 + 72) + 8) + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000123F8;
    v16[3] = &unk_10008D000;
    v8 = &v17;
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v19 = *(a1 + 80);
    *&v12 = *(a1 + 48);
    *(&v12 + 1) = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v17 = v13;
    v18 = v12;
    v20 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    [v7 fetchAttrDataWithCompletionHandler:v16];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052278();
    }

    v14 = *(*(*(a1 + 56) + 8) + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000123D0;
    v21[3] = &unk_10008CFD8;
    v8 = &v22;
    v15 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = a3;
    [smb_subr deleteNameInParent:v14 DeleteName:v15 FileType:1 CompletionHandler:v21];
  }
}

void sub_1000123F8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v5 = *(*(*(a1 + 72) + 8) + 40);
    v6 = *(*(*(a1 + 80) + 8) + 40);
    v7 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052314();
    }

    v8 = *(*(*(a1 + 56) + 8) + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100012538;
    v10[3] = &unk_10008CA10;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [smb_subr deleteNameInParent:v8 DeleteName:v9 FileType:1 CompletionHandler:v10];
  }
}

void sub_1000126B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012768;
  v6[3] = &unk_10008CF60;
  v6[4] = v1;
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  [v1 _LIMakeDir:v2 named:v3 withAttrs:v4 andClient:v5 reply:v6];
}

void sub_100012768(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = a6;
  v11 = a5;
  v13 = a3;
  v12 = [v9 opsSyncGroup];
  dispatch_group_leave(v12);

  (*(*(a1 + 40) + 16))();
}

void sub_100012EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose((v69 - 240), 8);
  _Block_object_dispose((v69 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012F28(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100012F84(uint64_t a1)
{
  v6 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001302C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(*(a1[5] + 8) + 40);
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000130F8;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr createFile:v5 NewName:v4 FileType:2 RetAttr:v6 CompletionHandler:v8];
}

void sub_100013108(uint64_t a1, int a2)
{
  v4 = *(a1 + 112);
  v6 = v4[1];
  v5 = v4[2];
  v45[0] = *v4;
  v45[1] = v6;
  v45[2] = v5;
  v7 = v4[6];
  v9 = v4[3];
  v8 = v4[4];
  v45[5] = v4[5];
  v45[6] = v7;
  v45[3] = v9;
  v45[4] = v8;
  v10 = v4[10];
  v12 = v4[7];
  v11 = v4[8];
  v45[9] = v4[9];
  v45[10] = v10;
  v45[7] = v12;
  v45[8] = v11;
  v13 = v4[14];
  v15 = v4[11];
  v14 = v4[12];
  v45[13] = v4[13];
  v45[14] = v13;
  v45[11] = v15;
  v45[12] = v14;
  free(v4);
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005250C(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100013434;
    v39[3] = &unk_10008CFB0;
    v16 = *(a1 + 64);
    v44 = *(a1 + 120);
    v42 = v16;
    v30 = *(a1 + 32);
    v17 = v30.i64[0];
    v40 = vextq_s8(v30, v30, 8uLL);
    v43 = *(a1 + 72);
    v41 = *(a1 + 56);
    v18 = objc_retainBlock(v39);
    v19 = [[smbNode alloc] initWithName:*(a1 + 32) andParent:*(*(*(a1 + 64) + 8) + 40) andAttr:v45];
    v20 = *(*(a1 + 80) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 48) bytes];
      v22 = *(*(*(a1 + 88) + 8) + 24);
      *(v22 + 8) &= 0xFFFFFFFFFFFFFFE7;
      v23 = *(*(*(a1 + 80) + 8) + 40);
      v24 = *(a1 + 40);
      v25 = *(a1 + 48);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000136B0;
      v31[3] = &unk_10008D050;
      v35 = *(a1 + 64);
      v32 = *(a1 + 32);
      v26 = *(a1 + 56);
      v28 = *(a1 + 96);
      v27 = *(a1 + 104);
      v33 = v26;
      v29 = *(a1 + 80);
      v36 = v28;
      v37 = v29;
      v38 = v27;
      v34 = v18;
      [v24 setAttrInternalLocked:v23 setAttrs:v25 CompletionHandler:v31];
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000525B0(a1 + 64);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_100013434(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  [v7 setInUseClientSet:{*(a1 + 72) | objc_msgSend(v7, "inUseClientSet")}];
  v10 = [*(a1 + 32) nodeTableSyncQueue];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000135B8;
  v19 = &unk_10008CA60;
  v11 = *(a1 + 40);
  v20 = *(a1 + 32);
  v21 = v7;
  v23 = *(a1 + 56);
  v22 = v11;
  v12 = v7;
  dispatch_sync(v10, &v16);

  *(*(*(a1 + 64) + 8) + 24) = [*(*(*(a1 + 56) + 8) + 40) interestedClients];
  [*(*(*(a1 + 56) + 8) + 40) invalidateAttrs];
  v13 = *(a1 + 48);
  v14 = *(*(*(a1 + 64) + 8) + 24);
  v15 = [v12 fh];
  (*(v13 + 16))(v13, 0, v9, v14, v15, v8);
}

void sub_1000135B8(uint64_t a1)
{
  v2 = [*(a1 + 32) handleTable];
  v3 = *(a1 + 40);
  v4 = [v3 fh];
  [v2 setObject:v3 forKey:v4];

  v8 = [*(a1 + 32) nameTable];
  v5 = *(a1 + 40);
  v6 = [*(*(*(a1 + 56) + 8) + 40) fh];
  v7 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v6, *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  [v8 setObject:v5 forKey:v7];
}

void sub_1000136B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052644();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v3 = *(a1 + 56);
    v4 = *(*(v3 + 8) + 40);
    v9[1] = 3221225472;
    v9[2] = sub_1000137F8;
    v9[3] = &unk_10008D028;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v3;
    *&v8 = v5;
    *(&v8 + 1) = v6;
    v10 = v8;
    v11 = v7;
    [v4 fetchAttrDataWithCompletionHandler:v9];
  }
}

void sub_1000137F8(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v7 = *(*(*(a1 + 72) + 8) + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000139EC;
    v12[3] = &unk_10008D0A0;
    v8 = *(a1 + 56);
    v16 = *(a1 + 80);
    v17 = v8;
    v9 = &v13;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v18 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    [v7 fetchAttrDataWithCompletionHandler:v12];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000526E0();
    }

    v10 = *(*(*(a1 + 56) + 8) + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000139C4;
    v19[3] = &unk_10008CFD8;
    v9 = &v20;
    v11 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = a3;
    [smb_subr deleteNameInParent:v10 DeleteName:v11 FileType:2 CompletionHandler:v19];
  }
}

void sub_1000139EC(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v7 = *(*(a1 + 56) + 8);
  if (v6 || *(v7 + 40))
  {
    objc_storeStrong((v7 + 40), a2);
    v8 = *(*(*(a1 + 72) + 8) + 40);
    v9 = *(*(*(a1 + 80) + 8) + 40);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005277C();
    }

    v11 = *(*(*(a1 + 64) + 8) + 40);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100013B34;
    v13[3] = &unk_10008CFD8;
    v12 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = a3;
    [smb_subr deleteNameInParent:v11 DeleteName:v12 FileType:2 CompletionHandler:v13];
  }
}

void sub_100013C88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100013D28;
  v4[3] = &unk_10008CBC8;
  v4[4] = v1;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _LIGetFsAttr:v2 name:v3 reply:v4];
}

void sub_100013D28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 opsSyncGroup];
  dispatch_group_leave(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_100014B14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pd];
  v5 = [*(a1 + 32) shareID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014BF0;
  v8[3] = &unk_10008D0F0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [smb_subr statFS:v4 ShareID:v5 CompletionHandler:v8];
}

uint64_t sub_100014BF0(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
    free(a3);
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100014C4C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 48) + 8) + 24);
    v6 = [NSData dataWithBytes:*(*(a1 + 40) + 8) + 32 length:8];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100014D1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pd];
  v5 = [*(a1 + 32) shareID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014DF8;
  v8[3] = &unk_10008D0F0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [smb_subr statFS:v4 ShareID:v5 CompletionHandler:v8];
}

uint64_t sub_100014DF8(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
    free(a3);
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100014E54(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 48) + 8) + 24);
    v6 = [NSData dataWithBytes:*(*(a1 + 40) + 8) + 32 length:8];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100014F24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pd];
  v5 = [*(a1 + 32) shareID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015000;
  v8[3] = &unk_10008D0F0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [smb_subr statFS:v4 ShareID:v5 CompletionHandler:v8];
}

uint64_t sub_100015000(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3[1] / a4;
    free(a3);
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100015064(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 48) + 8) + 24);
    v6 = [NSData dataWithBytes:*(*(a1 + 40) + 8) + 32 length:8];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100015134(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pd];
  v5 = [*(a1 + 32) shareID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015210;
  v8[3] = &unk_10008D0F0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [smb_subr statFS:v4 ShareID:v5 CompletionHandler:v8];
}

uint64_t sub_100015210(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3[3] / a4;
    free(a3);
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100015274(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 48) + 8) + 24);
    v6 = [NSData dataWithBytes:*(*(a1 + 40) + 8) + 32 length:8];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100015344(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pd];
  v5 = [*(a1 + 32) shareID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015420;
  v8[3] = &unk_10008D0F0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [smb_subr statFS:v4 ShareID:v5 CompletionHandler:v8];
}

uint64_t sub_100015420(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3[2] / a4;
    free(a3);
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100015484(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 48) + 8) + 24);
    v6 = [NSData dataWithBytes:*(*(a1 + 40) + 8) + 32 length:8];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100015554(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pd];
  v5 = [*(a1 + 32) shareID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100015630;
  v8[3] = &unk_10008D0F0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [smb_subr statFS:v4 ShareID:v5 CompletionHandler:v8];
}

uint64_t sub_100015630(uint64_t a1, int a2, void *a3, unint64_t a4)
{
  if (!a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3[4] / a4;
    free(a3);
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100015694(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 48) + 8) + 24);
    v6 = [NSData dataWithBytes:*(*(a1 + 40) + 8) + 32 length:8];
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100015900(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000159BC;
  v7[3] = &unk_10008CF60;
  v7[4] = v1;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v1 _LIMakeSymLink:v2 named:v3 withContents:v4 andAttrs:v6 andClient:v5 reply:v7];
}

void sub_1000159BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = a6;
  v11 = a5;
  v13 = a3;
  v12 = [v9 opsSyncGroup];
  dispatch_group_leave(v12);

  (*(*(a1 + 40) + 16))();
}

void sub_100016404(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001649C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000164F8(uint64_t a1)
{
  v6 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000165A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  [v9 setInUseClientSet:{*(a1 + 72) | objc_msgSend(v9, "inUseClientSet")}];
  v10 = [*(a1 + 32) handleTable];
  v11 = [v9 fh];
  [v10 setObject:v9 forKey:v11];

  v12 = [*(a1 + 32) nameTable];
  v13 = [*(*(*(a1 + 56) + 8) + 40) fh];
  v14 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v13, *(a1 + 40), [*(a1 + 32) isCaseSensitive]);
  [v12 setObject:v9 forKey:v14];

  *(*(*(a1 + 64) + 8) + 24) = [*(*(*(a1 + 56) + 8) + 40) interestedClients];
  [*(*(*(a1 + 56) + 8) + 40) invalidateAttrs];
  v15 = *(a1 + 48);
  v16 = *(*(*(a1 + 64) + 8) + 24);
  v17 = [v9 fh];

  (*(v15 + 16))(v15, 0, v8, v16, v17, v7);
}

void sub_100016748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052A0C();
    }

    v3 = *(*(*(a1 + 88) + 8) + 24);
    if (v3)
    {
      free(v3);
    }

    v4 = *(*(a1 + 64) + 16);
LABEL_7:
    v4();
    return;
  }

  v5 = [[smbNode alloc] initWithName:*(a1 + 40) andParent:*(*(*(a1 + 80) + 8) + 40) andAttr:*(*(*(a1 + 88) + 8) + 24)];
  v6 = *(*(a1 + 96) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  free(*(*(*(a1 + 88) + 8) + 24));
  v8 = *(*(*(a1 + 96) + 8) + 40);
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052AB0(a1 + 80);
    }

    v4 = *(*(a1 + 64) + 16);
    goto LABEL_7;
  }

  v9 = *(a1 + 32);
  if (*(*(*(a1 + 104) + 8) + 24))
  {
    [v8 setWindowsSymLink:v9];
  }

  else
  {
    [v8 setReparseSymLink:v9];
  }

  *(*(*(a1 + 112) + 8) + 24) = [*(a1 + 48) bytes];
  v10 = *(*(*(a1 + 96) + 8) + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100016974;
  v18[3] = &unk_10008D1B8;
  v22 = *(a1 + 80);
  v19 = *(a1 + 40);
  v13 = *(a1 + 64);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v20 = v13;
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  v23 = v15;
  v24 = v16;
  v25 = v14;
  v26 = v17;
  v21 = *(a1 + 72);
  [v12 setAttrInternalLocked:v10 setAttrs:v11 CompletionHandler:v18];
}

void sub_100016974(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052B44();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v3 = *(a1 + 56);
    v4 = *(*(v3 + 8) + 40);
    v9[1] = 3221225472;
    v9[2] = sub_100016AC0;
    v9[3] = &unk_10008D190;
    v5 = *(a1 + 32);
    v12 = *(a1 + 64);
    v6 = *(a1 + 40);
    v13 = *(a1 + 72);
    v14 = *(a1 + 88);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v3;
    *&v8 = v5;
    *(&v8 + 1) = v6;
    v10 = v8;
    v11 = v7;
    [v4 fetchAttrDataWithCompletionHandler:v9];
  }
}

void sub_100016AC0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    v5 = *(*(*(a1 + 80) + 8) + 40);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100016CD8;
    v15[3] = &unk_10008D168;
    v6 = &v16;
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v18 = *(a1 + 64);
    v9 = *(a1 + 40);
    v19 = *(a1 + 88);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = v7;
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v16 = v11;
    v17 = v10;
    v20 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
    [v5 fetchAttrDataWithCompletionHandler:v15];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052BE0();
    }

    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v12 = 1;
    }

    else
    {
      v12 = 5;
    }

    v13 = *(*(*(a1 + 56) + 8) + 40);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100016CB8;
    v21[3] = &unk_10008CA10;
    v6 = &v22;
    v14 = *(a1 + 32);
    v22 = *(a1 + 40);
    [smb_subr deleteNameInParent:v13 DeleteName:v14 FileType:v12 CompletionHandler:v21];
  }
}

void sub_100016CD8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    v5 = *(*(*(a1 + 80) + 8) + 40);
    v6 = *(*(*(a1 + 88) + 8) + 40);
    v7 = *(*(*(a1 + 72) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052C7C();
    }

    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v8 = 1;
    }

    else
    {
      v8 = 5;
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100016E2C;
    v11[3] = &unk_10008CA10;
    v10 = *(a1 + 32);
    v12 = *(a1 + 40);
    [smb_subr deleteNameInParent:v9 DeleteName:v10 FileType:v8 CompletionHandler:v11];
  }
}

void sub_100016E4C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  v5 = *(*(a1[6] + 8) + 40);
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(*(v4 + 8) + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100016F20;
  v10[3] = &unk_10008CA10;
  v11 = v3;
  v9 = v3;
  [smb_subr createReparseSymlink:v5 NewName:v7 Target:v6 RetAttr:v8 CompletionHandler:v10];
}

void sub_100016F30(uint64_t a1, int a2)
{
  if (a2 == 45)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100052D18();
    }

    [*(a1 + 32) setSm_flags:{objc_msgSend(*(a1 + 32), "sm_flags") & 0xFFFFFFFE}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000170C8;
    v14[3] = &unk_10008D208;
    v3 = *(a1 + 32);
    v10 = *(a1 + 64);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    *&v7 = v10;
    *(&v7 + 1) = *(a1 + 72);
    v15 = v6;
    v16 = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000171AC;
    v11[3] = &unk_10008D230;
    v13 = *(a1 + 80);
    v12 = *(a1 + 56);
    [v3 submitRequestBlockOnce:v14 continuationBlock:v11];
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(*(a1 + 56) + 16);

    v9();
  }
}

void sub_1000170C8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  v5 = *(*(a1[6] + 8) + 40);
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(*(v4 + 8) + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001719C;
  v10[3] = &unk_10008CA10;
  v11 = v3;
  v9 = v3;
  [smb_subr createWindowsSymlink:v5 NewName:v7 Target:v6 RetAttr:v8 CompletionHandler:v10];
}

void sub_1000171CC(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  v5 = *(*(a1[6] + 8) + 40);
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(*(v4 + 8) + 24);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000172A0;
  v10[3] = &unk_10008CA10;
  v11 = v3;
  v9 = v3;
  [smb_subr createWindowsSymlink:v5 NewName:v7 Target:v6 RetAttr:v8 CompletionHandler:v10];
}

void sub_100017418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000174AC;
  v3[3] = &unk_10008CBC8;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _LIPathConf:v2 reply:v3];
}

void sub_1000174AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 opsSyncGroup];
  dispatch_group_leave(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_100017790(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100017848;
  v6[3] = &unk_10008D280;
  v6[4] = v1;
  v7 = *(a1 + 48);
  [v1 _LIRead:v2 atOffset:v3 withPointer:v4 length:v5 reply:v6];
}

uint64_t sub_100017848(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100017CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017D1C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_100017D78(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) fileRefForRead];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100017F34(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && !*(a1 + 120))
  {
    if (v2 > [*(a1 + 40) serverMaxRd])
    {
      v2 = [*(a1 + 40) serverMaxRd];
    }

    v5 = *(a1 + 80);
    *v5 = 0u;
    v5[1] = 0u;
    v6 = *(a1 + 104);
    *(*(a1 + 80) + 8) = *(a1 + 96);
    v7 = *(a1 + 80);
    *(v7 + 16) = v2;
    *v7 = v6;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100018158;
    v31[3] = &unk_10008D2D0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = *(a1 + 80);
    v32 = v9;
    v33 = v10;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100018234;
    v20[3] = &unk_10008D2F8;
    v11 = *(a1 + 48);
    v12 = *(a1 + 104);
    v24 = *(a1 + 112);
    v25 = v2;
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v26 = v12;
    v27 = v13;
    v28 = v14;
    *&v15 = v11;
    *(&v15 + 1) = *(a1 + 40);
    v19 = v15;
    v16 = *(a1 + 56);
    v29 = *(a1 + 96);
    v17 = *(a1 + 32);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    v21 = v19;
    v22 = v18;
    v30 = *(a1 + 88);
    v23 = *(a1 + 64);
    [v8 submitRequestBlock:v31 continuationBlock:v20];
  }

  else
  {
    free(*(a1 + 80));
    [*(a1 + 32) decRef];
    if (!*(a1 + 120))
    {
      v4 = *(a1 + 88);
    }

    v3 = *(*(a1 + 64) + 16);

    v3();
  }
}

void sub_100018158(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fidCtx];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018224;
  v7[3] = &unk_10008CA10;
  v8 = v3;
  v6 = v3;
  [smb_subr sendRead:v4 Param:v5 ReadBuf:0 CompletionHandler:v7];
}

id sub_100018234(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    if (a2 == 96)
    {
      v3 = 0;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100052EF4();
    }

    return [*(a1 + 40) readRequest:*(a1 + 48) bptr:*(a1 + 112) smbNode:*(a1 + 32) fileRef:*(a1 + 56) rdparamPtr:*(a1 + 104) result:v3 thisOffset:*(a1 + 88) bytesRemain:0 bytesRead:*(a1 + 120) pass:*(a1 + 72) + 1 reply:*(a1 + 64)];
  }

  else
  {
    v4 = *(a1 + 104);
    v5 = *(v4 + 28);
    return [*(a1 + 40) readRequest:*(a1 + 48) bptr:*(a1 + 112) + v5 smbNode:*(a1 + 32) fileRef:*(a1 + 56) rdparamPtr:v4 result:0 thisOffset:*(a1 + 88) + v5 bytesRemain:*(a1 + 96) - v5 bytesRead:*(a1 + 120) + v5 pass:*(a1 + 72) + 1 reply:*(a1 + 64)];
  }
}

void sub_10001849C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000184B4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100018658(uint64_t a1, int a2, unint64_t a3)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    if (*(a1 + 48) > a3)
    {
      v7 = v4;
      v6 = [*(a1 + 32) subdataWithRange:{0, a3}];

      v4 = v6;
    }
  }

  v8 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_10001880C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000188A0;
  v3[3] = &unk_10008C8F8;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _LIReadLink:v2 reply:v3];
}

void sub_1000188A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v9 = a3;
  v8 = [v6 opsSyncGroup];
  dispatch_group_leave(v8);

  (*(*(a1 + 40) + 16))();
}

void sub_100018E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018E84(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100018EE0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (a3 == 2)
    {
      v8 = [*(a1 + 32) nodeTableSyncQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100018FDC;
      v10[3] = &unk_10008C858;
      v9 = *(a1 + 48);
      v10[4] = *(a1 + 32);
      v10[5] = v9;
      dispatch_sync(v8, v10);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_100018FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000190A8;
  v7[3] = &unk_10008CAB0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [smb_subr readSymlink:v4 completionHandler:v7];
}

void sub_1000190A8(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void sub_100019124(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000531C0(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) lockMeta];
    v3 = [*(*(*(a1 + 48) + 8) + 40) np_flag];
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v5 = *(*(*(a1 + 56) + 8) + 40);
    if ((v3 & 2) != 0)
    {
      [v4 setReparseSymLink:v5];
    }

    else
    {
      [v4 setWindowsSymLink:v5];
    }

    [*(*(*(a1 + 48) + 8) + 40) unlockMeta];
    v11[0] = _NSConcreteStackBlock;
    v6 = *(a1 + 48);
    v7 = *(*(v6 + 8) + 40);
    v11[1] = 3221225472;
    v11[2] = sub_100019280;
    v11[3] = &unk_10008D398;
    v10 = *(a1 + 32);
    v8 = *(&v10 + 1);
    *&v9 = v6;
    *(&v9 + 1) = *(a1 + 56);
    v12 = v10;
    v13 = v9;
    [v7 fetchAttrDataWithCompletionHandler:v11];
  }
}

void sub_100019280(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (a3 == 2)
    {
      v8 = [*(a1 + 32) nodeTableSyncQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001938C;
      v10[3] = &unk_10008C858;
      v9 = *(a1 + 48);
      v10[4] = *(a1 + 32);
      v10[5] = v9;
      dispatch_sync(v8, v10);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_100019554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000195F4;
  v4[3] = &unk_10008D410;
  v4[4] = v1;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _LIRemove:v2 name:v3 reply:v4];
}

void sub_1000195F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(a1 + 32);
  v9 = a6;
  v11 = a3;
  v10 = [v8 namespaceChangingGroup];
  dispatch_group_leave(v10);

  (*(*(a1 + 40) + 16))();
}

void sub_100019BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 240), 8);
  _Block_object_dispose((v51 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100019C2C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100019C88(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100019DD8;
  v19[3] = &unk_10008D438;
  v21 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v20 = v5;
  v22 = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100019EB8;
  v12[3] = &unk_10008D4B0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v3;
  v14 = v7;
  v17 = *(a1 + 64);
  v15 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v16 = v9;
  v18 = v10;
  v11 = v3;
  [v4 submitRequestBlockOnce:v19 continuationBlock:v12];
}

void sub_100019DD8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(*(a1[5] + 8) + 40);
  v6 = *(*(a1[6] + 8) + 24);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019EA8;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr deleteNameInParent:v5 DeleteName:v4 FileType:v6 CompletionHandler:v8];
}

void sub_100019EB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000533D8(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (*(a1 + 32))
    {
      v3 = [*(a1 + 40) nodeTableSyncQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A08C;
      block[3] = &unk_10008D460;
      v18 = *(a1 + 64);
      v9 = *(a1 + 32);
      v4 = v9.i64[0];
      v17 = vextq_s8(v9, v9, 8uLL);
      dispatch_sync(v3, block);
    }

    [*(*(*(a1 + 64) + 8) + 40) invalidateAttrs];
    v5 = *(a1 + 64);
    v6 = *(*(v5 + 8) + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001A148;
    v10[3] = &unk_10008D488;
    v14 = v5;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 72);
    v12 = v7;
    v15 = v8;
    [v6 fetchAttrDataWithCompletionHandler:v10];
  }
}

void sub_10001A08C(uint64_t a1)
{
  v5 = [*(a1 + 32) nameTable];
  v2 = [*(*(*(a1 + 48) + 8) + 40) fh];
  v3 = [*(a1 + 40) name];
  v4 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v2, v3, [*(a1 + 32) isCaseSensitive]);
  [v5 removeObjectForKey:v4];
}

void sub_10001A148(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(*(*(a1 + 56) + 8) + 40) interestedClients];
    if (v5)
    {
      v7 = [*(a1 + 40) interestedClients];
      v8 = [*(a1 + 40) fh];
      (*(v4 + 16))(v4, 0, v3, v6, v7, v8, *(*(*(a1 + 64) + 8) + 24));
    }

    else
    {
      (*(v4 + 16))(v4, 0, v3, v6, 0, &stru_10008EA58, *(*(*(a1 + 64) + 8) + 24));
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053458();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10001A288(uint64_t a1)
{
  v6 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_10001A330(void *a1)
{
  if ([*(*(a1[5] + 8) + 40) isSymlink] && (objc_msgSend(*(*(a1[5] + 8) + 40), "np_flag") & 2) != 0)
  {
    *(*(a1[6] + 8) + 24) = 5;
  }

  v2 = *(*(a1[5] + 8) + 40);
  v3 = *(a1[4] + 16);

  return v3();
}

void sub_10001A568(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001A608;
  v4[3] = &unk_10008D410;
  v4[4] = v1;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _LIRemoveDir:v2 name:v3 reply:v4];
}

void sub_10001A608(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(a1 + 32);
  v9 = a6;
  v11 = a3;
  v10 = [v8 namespaceChangingGroup];
  dispatch_group_leave(v10);

  (*(*(a1 + 40) + 16))();
}

void sub_10001ABDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001AC30(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001AC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001ADE8;
  v14[3] = &unk_10008D528;
  v16 = *(a1 + 72);
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AEB4;
  v7[3] = &unk_10008D578;
  v8 = *(a1 + 40);
  v12 = *(a1 + 56);
  v5 = *(a1 + 32);
  v9 = v3;
  v10 = v5;
  v11 = *(a1 + 48);
  v13 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
  v6 = v3;
  [v4 submitRequestBlockOnce:v14 continuationBlock:v7];
}

void sub_10001ADE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  v6 = *(*(*(v5 + 8) + 8) + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001AEA4;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr deleteNameInParent:v6 DeleteName:v4 FileType:2 CompletionHandler:v8];
}

void sub_10001AEB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005364C(a1);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (*(a1 + 40))
    {
      v3 = [*(a1 + 48) nodeTableSyncQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B118;
      block[3] = &unk_10008D550;
      v4 = *(a1 + 56);
      block[4] = *(a1 + 48);
      v20 = v4;
      v21 = *(a1 + 32);
      dispatch_sync(v3, block);

      v5 = [*(a1 + 40) fileRefSyncQueue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001B1A8;
      v17[3] = &unk_10008C880;
      v18 = *(a1 + 40);
      dispatch_sync(v5, v17);
    }

    [*(*(*(a1 + 72) + 8) + 40) invalidateAttrs];
    v6 = *(a1 + 72);
    v7 = *(*(v6 + 8) + 40);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001B1B0;
    v13[3] = &unk_10008D488;
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    *&v11 = v8;
    *(&v11 + 1) = v10;
    *&v12 = v9;
    *(&v12 + 1) = v6;
    v15 = v12;
    v14 = v11;
    v16 = *(a1 + 80);
    [v7 fetchAttrDataWithCompletionHandler:v13];
  }
}

void sub_10001B118(uint64_t a1)
{
  v3 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  [v3 removeObjectForKey:v2];
}

void sub_10001B1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(*(*(a1 + 56) + 8) + 40) interestedClients];
    if (v5)
    {
      v7 = [*(a1 + 40) interestedClients];
      v8 = [*(a1 + 40) fh];
      (*(v4 + 16))(v4, 0, v3, v6, v7, v8, *(*(*(a1 + 64) + 8) + 24));
    }

    else
    {
      (*(v4 + 16))(v4, 0, v3, v6, 0, &stru_10008EA58, *(*(*(a1 + 64) + 8) + 24));
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000536C8();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10001B2F0(uint64_t a1)
{
  v6 = [*(a1 + 32) nameTable];
  v2 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", *(a1 + 40), *(a1 + 48), [*(a1 + 32) isCaseSensitive]);
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10001B5F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B6B4;
  v7[3] = &unk_10008D5C8;
  v7[4] = v1;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v1 _LIRename:v2 name:v3 toDir:v4 andName:v6 withFlags:v5 reply:v7];
}

void sub_10001B6B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = *(a1 + 32);
  v17 = a11;
  v18 = a8;
  v19 = a5;
  v22 = a3;
  v20 = [v16 namespaceChangingGroup];
  dispatch_group_leave(v20);

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v22, a4, v19);
}

void sub_10001C37C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x438], 8);
  _Block_object_dispose(&STACK[0x548], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x360], 8);
  _Block_object_dispose(&STACK[0x390], 8);
  _Block_object_dispose(&STACK[0x3C0], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C434(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001C490(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001C4EC(uint64_t a1)
{
  v7 = [*(a1 + 32) nameTable];
  v2 = [*(*(*(a1 + 56) + 8) + 40) fh];
  v3 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v2, *(a1 + 40), [*(a1 + 32) isCaseSensitive]);
  v4 = [v7 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10001C5AC(uint64_t a1)
{
  v7 = [*(a1 + 32) nameTable];
  v2 = [*(*(*(a1 + 56) + 8) + 40) fh];
  v3 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v2, *(a1 + 40), [*(a1 + 32) isCaseSensitive]);
  v4 = [v7 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_10001C66C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(a1 + 32);
  if (*(a1 + 68))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001C768;
  v10[3] = &unk_10008CA10;
  v11 = v3;
  v9 = v3;
  [smb_subr renameFile:v4 FileName:v5 NewParent:v6 NewName:v7 VType:v8 CompletionHandler:v10];
}

void sub_10001C778(uint64_t a1, uint64_t a2)
{
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10001CD2C;
  v61[3] = &unk_10008D6E0;
  v4 = *(a1 + 80);
  v64 = *(a1 + 64);
  v65 = v4;
  v5 = *(a1 + 112);
  v66 = *(a1 + 96);
  v67 = v5;
  v70 = *(a1 + 160);
  v46 = *(a1 + 32);
  v6 = *(&v46 + 1);
  v68 = *(a1 + 128);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v62 = v46;
  v63 = v9;
  v69 = *(a1 + 144);
  v10 = objc_retainBlock(v61);
  v11 = v10;
  if (a2)
  {
    v12 = [*(*(*(a1 + 80) + 8) + 40) getSmbFattr];
    if (a2 == 13 && *(*(*(a1 + 80) + 8) + 40))
    {
      v13 = v12[30];
      v14 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
      if (v13 == 2)
      {
        if (v14)
        {
          v38 = [*(*(*(a1 + 72) + 8) + 40) name];
          v39 = *(a1 + 48);
          v40 = [*(*(*(a1 + 120) + 8) + 40) name];
          v41 = *(a1 + 40);
          *buf = 138413058;
          v72 = v38;
          v73 = 2112;
          v74 = v39;
          v75 = 2112;
          v76 = v40;
          v77 = 2112;
          v78 = v41;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "LIRename: frm_dnp: %@ frm_np: %@, to_dnp: %@ toName: %@, trying renameOverExistingDir", buf, 0x2Au);
        }

        v15 = *(a1 + 72);
        v16 = *(*(v15 + 8) + 40);
        v18 = *(a1 + 40);
        v17 = *(a1 + 48);
        v19 = *(*(*(a1 + 120) + 8) + 40);
        v20 = *(a1 + 32);
        v21 = *(*(*(a1 + 80) + 8) + 40);
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10001D724;
        v54[3] = &unk_10008D708;
        v59 = v15;
        v22 = v17;
        v23 = *(a1 + 120);
        v55 = v22;
        v60 = v23;
        v56 = *(a1 + 40);
        v57 = *(a1 + 56);
        v58 = v11;
        [v20 renameOverExistingDir:v16 FromName:v22 toDir:v19 NewName:v18 ToFile:v21 CompletionHandler:v54];

        v24 = v55;
      }

      else
      {
        if (v14)
        {
          v42 = [*(*(*(a1 + 72) + 8) + 40) name];
          v43 = *(a1 + 48);
          v44 = [*(*(*(a1 + 120) + 8) + 40) name];
          v45 = *(a1 + 40);
          *buf = 138413058;
          v72 = v42;
          v73 = 2112;
          v74 = v43;
          v75 = 2112;
          v76 = v44;
          v77 = 2112;
          v78 = v45;
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "LIRename: frm_dnp: %@ frm_np: %@, to_dnp: %@ toName: %@, trying renameOverExistingFile\n", buf, 0x2Au);
        }

        v25 = *(a1 + 72);
        v26 = *(*(v25 + 8) + 40);
        v28 = *(a1 + 40);
        v27 = *(a1 + 48);
        v29 = *(*(*(a1 + 120) + 8) + 40);
        v30 = *(a1 + 32);
        v31 = *(*(*(a1 + 80) + 8) + 40);
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10001D7DC;
        v47[3] = &unk_10008D708;
        v52 = v25;
        v32 = v27;
        v33 = *(a1 + 120);
        v48 = v32;
        v53 = v33;
        v49 = *(a1 + 40);
        v50 = *(a1 + 56);
        v51 = v11;
        [v30 renameOverExistingFile:v26 FromName:v32 toDir:v29 NewName:v28 ToFile:v31 CompletionHandler:v47];

        v24 = v48;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v34 = [*(*(*(a1 + 72) + 8) + 40) name];
        v35 = *(a1 + 48);
        v36 = [*(*(*(a1 + 120) + 8) + 40) name];
        v37 = *(a1 + 40);
        *buf = 138413314;
        v72 = v34;
        v73 = 2112;
        v74 = v35;
        v75 = 2112;
        v76 = v36;
        v77 = 2112;
        v78 = v37;
        v79 = 1024;
        v80 = a2;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "LIRename: frm_dnp: %@ frm_np: %@, to_dnp: %@ toName: %@, renameFile error: %d\n", buf, 0x30u);
      }

      (*(*(a1 + 56) + 16))(*(a1 + 56), a2, 0, 0);
    }
  }

  else
  {
    (v10[2])(v10);
  }
}

void sub_10001CD2C(uint64_t a1)
{
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = [*(a1 + 32) nodeTableSyncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001D07C;
    block[3] = &unk_10008D668;
    block[4] = *(a1 + 32);
    v32 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    dispatch_sync(v2, block);
  }

  v3 = *(*(*(a1 + 80) + 8) + 40);
  if (v3)
  {
    v4 = [v3 fh];
    v5 = *(*(a1 + 88) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 96) + 8) + 24) = [*(*(*(a1 + 80) + 8) + 40) interestedClients];
    *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 112) + 8) + 152) != 1;
    v7 = [*(a1 + 32) nodeTableSyncQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10001D140;
    v30[3] = &unk_10008D668;
    v8 = *(a1 + 120);
    v30[4] = *(a1 + 32);
    v30[5] = v8;
    v30[6] = *(a1 + 80);
    dispatch_sync(v7, v30);

    [*(*(*(a1 + 120) + 8) + 40) invalidateAttrs];
  }

  [*(*(*(a1 + 72) + 8) + 40) invalidateAttrs];
  if ((*(a1 + 160) & 1) == 0)
  {
    [*(*(*(a1 + 120) + 8) + 40) invalidateAttrs];
  }

  v9 = *(*(*(a1 + 64) + 8) + 40);
  if (v9)
  {
    [v9 setName:*(a1 + 40)];
    if ((*(a1 + 160) & 1) == 0)
    {
      [*(*(*(a1 + 64) + 8) + 40) setParent:*(*(*(a1 + 120) + 8) + 40)];
    }

    v10 = [*(a1 + 32) nodeTableSyncQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001D204;
    v29[3] = &unk_10008C858;
    v11 = *(a1 + 64);
    v29[4] = *(a1 + 32);
    v29[5] = v11;
    dispatch_sync(v10, v29);

    *(*(*(a1 + 128) + 8) + 24) = *(*(*(a1 + 136) + 8) + 152) != 1;
  }

  v12 = *(a1 + 72);
  v13 = *(*(v12 + 8) + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001D2E8;
  v17[3] = &unk_10008D6B8;
  v21 = v12;
  v14 = *(a1 + 48);
  v15 = *(a1 + 120);
  v18 = v14;
  v22 = v15;
  v19 = *(a1 + 40);
  v20 = *(a1 + 56);
  v28 = *(a1 + 160);
  v23 = *(a1 + 144);
  v16 = *(a1 + 128);
  v24 = *(a1 + 64);
  v25 = v16;
  v26 = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v27 = *(a1 + 104);
  [v13 fetchAttrDataWithCompletionHandler:v17];
}

void sub_10001D07C(uint64_t a1)
{
  v5 = [*(a1 + 32) nameTable];
  v2 = [*(*(*(a1 + 40) + 8) + 40) fh];
  v3 = [*(*(*(a1 + 48) + 8) + 40) name];
  v4 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v2, v3, [*(a1 + 32) isCaseSensitive]);
  [v5 removeObjectForKey:v4];
}

void sub_10001D140(uint64_t a1)
{
  v5 = [*(a1 + 32) nameTable];
  v2 = [*(*(*(a1 + 40) + 8) + 40) fh];
  v3 = [*(*(*(a1 + 48) + 8) + 40) name];
  v4 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v2, v3, [*(a1 + 32) isCaseSensitive]);
  [v5 removeObjectForKey:v4];
}

void sub_10001D204(uint64_t a1)
{
  v7 = [*(a1 + 32) nameTable];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 parent];
  v4 = [v3 fh];
  v5 = [*(*(*(a1 + 40) + 8) + 40) name];
  v6 = +[LiveFSItemPair newWithParent:fname:caseSensitivity:](LiveFSItemPair, "newWithParent:fname:caseSensitivity:", v4, v5, [*(a1 + 32) isCaseSensitive]);
  [v7 setObject:v2 forKey:v6];
}

void sub_10001D2E8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    if (*(a1 + 128))
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 72) + 8) + 40));
      v7 = *(*(*(a1 + 72) + 8) + 40);
      v8 = *(a1 + 48);
      v9 = [*(*(*(a1 + 56) + 8) + 40) interestedClients];
      v10 = *(*(*(a1 + 80) + 8) + 40);
      v11 = [*(*(*(a1 + 64) + 8) + 40) interestedClients];
      v12 = [*(*(*(a1 + 88) + 8) + 40) interestedClients];
      v13 = [*(*(*(a1 + 88) + 8) + 40) fh];
      (*(v8 + 16))(v8, 0, v7, v9, v10, v11, v12, v13, *(*(*(a1 + 96) + 8) + 24), *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 112) + 8) + 40), *(*(*(a1 + 120) + 8) + 24));
    }

    else
    {
      v14 = *(a1 + 56);
      v15 = *(*(*(a1 + 64) + 8) + 40);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001D584;
      v20[3] = &unk_10008D690;
      v16 = *(a1 + 32);
      v23 = *(a1 + 64);
      v17 = *(a1 + 40);
      *&v18 = *(a1 + 48);
      *(&v18 + 1) = v14;
      *&v19 = v16;
      *(&v19 + 1) = v17;
      v21 = v19;
      v22 = v18;
      v24 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
      v25 = *(a1 + 88);
      v26 = *(a1 + 104);
      v27 = *(a1 + 120);
      [v15 fetchAttrDataWithCompletionHandler:v20];
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053A5C();
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), a3, 0, 0);
  }
}

void sub_10001D584(void *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(a1[9] + 8) + 40), a2);
    v7 = *(*(a1[10] + 8) + 40);
    v8 = a1[6];
    v9 = [*(*(a1[7] + 8) + 40) interestedClients];
    v10 = *(*(a1[9] + 8) + 40);
    v11 = [*(*(a1[8] + 8) + 40) interestedClients];
    v12 = [*(*(a1[11] + 8) + 40) interestedClients];
    v13 = [*(*(a1[11] + 8) + 40) fh];
    (*(v8 + 16))(v8, 0, v7, v9, v10, v11, v12, v13, *(*(a1[12] + 8) + 24), *(*(a1[13] + 8) + 24), *(*(a1[14] + 8) + 40), *(*(a1[15] + 8) + 24));
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053B1C();
    }

    (*(a1[6] + 16))(a1[6], a3, 0, 0);
  }
}

uint64_t sub_10001D724(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053BDC();
    }

    return (*(*(a1 + 48) + 16))(*(a1 + 48), a2, 0, 0);
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    return v6();
  }
}

uint64_t sub_10001D7DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053C9C();
    }

    return (*(*(a1 + 48) + 16))(*(a1 + 48), a2, 0, 0);
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(*(a1 + 56) + 16);

    return v6();
  }
}

void sub_10001DC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10001DC9C(uint64_t a1)
{
  v19 = 0;
  v2 = malloc_type_malloc(0x28uLL, 0x10000400A747E1EuLL);
  *v2 = 0u;
  v2[1] = 0u;
  *(v2 + 4) = 0;
  v3 = [*(a1 + 32) share_fstype];
  v4 = v3;
  v5 = *(*(a1 + 56) + 8);
  v6 = v5[5];
  if ((v6 & 0x1000) != 0)
  {
    sub_100032F2C(v5 + 18, &v19, v3 == 1);
    *(v2 + 3) = v19;
    *(*(*(a1 + 64) + 8) + 24) = 1;
    v5 = *(*(a1 + 56) + 8);
    v6 = v5[5];
    if ((v6 & 0x800) == 0)
    {
LABEL_3:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 0x800) == 0)
  {
    goto LABEL_3;
  }

  sub_100032F2C(v5 + 16, &v19, v4 == 1);
  *(v2 + 2) = v19;
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v5 = *(*(a1 + 56) + 8);
  v6 = v5[5];
  if ((v6 & 0x400) == 0)
  {
LABEL_4:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  sub_100032F2C(v5 + 14, &v19, v4 == 1);
  *(v2 + 1) = v19;
  *(*(*(a1 + 64) + 8) + 24) = 1;
  v5 = *(*(a1 + 56) + 8);
  if ((v5[5] & 0x2000) != 0)
  {
LABEL_5:
    sub_100032F2C(v5 + 20, &v19, v4 == 1);
    *v2 = v19;
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

LABEL_6:
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001DF1C;
    v15[3] = &unk_10008D758;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 72);
    v16 = v8;
    v17 = v9;
    v18 = v2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001DFF8;
    v10[3] = &unk_10008D780;
    v13 = v2;
    v11 = *(a1 + 40);
    v14 = *(a1 + 80);
    v12 = *(a1 + 48);
    [v7 submitRequestBlock:v15 continuationBlock:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10001DF1C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = a1[4];
  v6 = *(*(*(a1[5] + 8) + 24) + 120);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001DFE8;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr setNodeBasicInfo:v5 BasicInfo:v4 FileType:v6 CompletionHandler:v8];
}

uint64_t sub_10001DFF8(uint64_t a1, int a2)
{
  free(*(a1 + 48));
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100053DC4(a1);
  }

  [*(a1 + 32) invalidateAttrs];
  return (*(*(a1 + 40) + 16))();
}

void sub_10001E064(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = *(*(a1[5] + 8) + 80);
  v6 = *(*(*(a1[6] + 8) + 24) + 120);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001E138;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr setNodeEOF:v4 Eof:v5 FileType:v6 CompletionHandler:v8];
}

uint64_t sub_10001E148(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  [*(a1 + 32) invalidateAttrs];
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053E68(v4);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }
}

void sub_10001E318(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001E3B8;
  v4[3] = &unk_10008D7F8;
  v4[4] = v1;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _LISetAttr:v2 setAttrs:v3 reply:v4];
}

void sub_10001E3B8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v9 = *(a1 + 32);
  v10 = a6;
  v11 = a4;
  v13 = a3;
  v12 = [v9 opsSyncGroup];
  dispatch_group_leave(v12);

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void sub_10001E874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak((v32 - 128));
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v32 - 208), 8);
  _Block_object_dispose((v32 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E8D8(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001E934(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  *(*(*(a1 + 40) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) interestedClients];
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v5 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v9[1] = 3221225472;
    v9[2] = sub_10001EA50;
    v9[3] = &unk_10008D820;
    v11 = v5;
    v9[4] = WeakRetained;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v7;
    v12 = v8;
    [v6 fetchAttrDataWithCompletionHandler:v9];
  }
}

void sub_10001EA50(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) parent];

    if (v7)
    {
      v8 = [*(*(*(a1 + 56) + 8) + 40) parent];
      v7 = [v8 fh];

      v9 = [*(*(*(a1 + 56) + 8) + 40) parent];
      v10 = [v9 interestedClients];
    }

    else
    {
      v10 = 0;
    }

    v13 = *(a1 + 40);
    v14 = *(*(*(a1 + 48) + 8) + 40);
    v15 = [*(*(*(a1 + 56) + 8) + 40) name];
    v16 = *(a1 + 56);
    v17 = *(*(*(a1 + 64) + 8) + 24);
    v18 = [*(*(v16 + 8) + 40) name];
    if ([v18 hasPrefix:@"."])
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    (*(v13 + 16))(v13, 0, v14, v7, v10, v15, v17, v19);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100053F8C(a1);
    }

    if (a3 == 2)
    {
      v11 = [*(a1 + 32) nodeTableSyncQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001EC98;
      v20[3] = &unk_10008C858;
      v12 = *(a1 + 56);
      v20[4] = *(a1 + 32);
      v20[5] = v12;
      dispatch_sync(v11, v20);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_10001EDB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001EE44;
  v3[3] = &unk_10008CBC8;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _LIStatFS:v2 reply:v3];
}

void sub_10001EE44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 opsSyncGroup];
  dispatch_group_leave(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_10001F1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001F20C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001F268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pd];
  v5 = [*(a1 + 32) shareID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F344;
  v8[3] = &unk_10008D0F0;
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [smb_subr statFS:v4 ShareID:v5 CompletionHandler:v8];
}

void sub_10001F360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100054074();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = [NSData dataWithBytes:*(*(*(a1 + 40) + 8) + 24) length:56];
    free(*(*(*(a1 + 40) + 8) + 24));
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001F578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F620;
  v5[3] = &unk_10008D280;
  v5[4] = v1;
  v4 = *(a1 + 64);
  v6 = *(a1 + 56);
  [v1 _LIWrite:v2 atOffset:v4 withBuffer:v3 reply:v5];
}

uint64_t sub_10001F620(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10001FAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001FB40(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001FB9C(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) fileRefForWrite];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001FD7C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && !*(a1 + 120))
  {
    if (v2 > [*(a1 + 48) serverMaxWr])
    {
      v2 = [*(a1 + 48) serverMaxWr];
    }

    v5 = [*(a1 + 56) bytes] + *(a1 + 96);
    v6 = [NSData dataWithBytesNoCopy:v5 length:v2 freeWhenDone:0];
    v7 = *(a1 + 88);
    *v7 = 0u;
    v7[1] = 0u;
    *(*(a1 + 88) + 8) = v5;
    v8 = *(a1 + 88);
    *(v8 + 16) = v2;
    *v8 = *(a1 + 104);
    v9 = *(a1 + 48);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100020028;
    v35[3] = &unk_10008D898;
    v10 = *(a1 + 32);
    v11 = *(a1 + 88);
    v37 = v6;
    v38 = v11;
    v36 = v10;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002010C;
    v24[3] = &unk_10008D8C0;
    v12 = *(a1 + 40);
    v13 = *(a1 + 104);
    v29 = *(a1 + 112);
    v30 = v2;
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    v31 = v13;
    v32 = v14;
    v33 = v15;
    *&v16 = v12;
    *(&v16 + 1) = *(a1 + 48);
    v23 = v16;
    v17 = *(a1 + 64);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v25 = v23;
    v26 = v19;
    v20 = *(a1 + 32);
    v21 = *(a1 + 96);
    v27 = v20;
    v34 = v21;
    v28 = *(a1 + 72);
    v22 = v6;
    [v9 submitRequestBlock:v35 continuationBlock:v24];
  }

  else
  {
    free(*(a1 + 88));
    [*(a1 + 32) decRef];
    [*(a1 + 40) invalidateAttrs];
    if (*(a1 + 96) && ![*(a1 + 40) wasWritten])
    {
      [*(a1 + 40) setWasWritten:1];
    }

    if (!*(a1 + 120))
    {
      v4 = *(a1 + 96);
    }

    v3 = *(*(a1 + 72) + 16);

    v3();
  }
}

void sub_100020028(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fidCtx];
  v7 = a1 + 40;
  v5 = *(a1 + 40);
  v6 = *(v7 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000200FC;
  v9[3] = &unk_10008CA10;
  v10 = v3;
  v8 = v3;
  [smb_subr sendWrite:v4 Param:v6 WriteBuf:v5 CompletionHandler:v9];
}

id sub_10002010C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000542C4();
    }

    return [*(a1 + 40) writeRequest:*(a1 + 48) withBuffer:*(a1 + 56) smbNode:*(a1 + 32) fileRef:*(a1 + 64) wrparamPtr:*(a1 + 112) result:a2 thisOffset:*(a1 + 96) bytesWritten:*(a1 + 120) bytesRemain:0 pass:*(a1 + 80) reply:*(a1 + 72)];
  }

  else
  {
    v5 = *(a1 + 112);
    return [*(a1 + 40) writeRequest:*(a1 + 48) withBuffer:*(a1 + 56) smbNode:*(a1 + 32) fileRef:*(a1 + 64) wrparamPtr:v5 result:0 thisOffset:*(a1 + 96) + *(v5 + 28) bytesWritten:*(a1 + 120) + *(v5 + 28) bytesRemain:*(a1 + 104) - *(v5 + 28) pass:*(a1 + 80) + 1 reply:*(a1 + 72)];
  }
}

void sub_100020340(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000203E0;
  v4[3] = &unk_10008CBC8;
  v4[4] = v1;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _LIGetXattr:v2 name:v3 reply:v4];
}

void sub_1000203E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 opsSyncGroup];
  dispatch_group_leave(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_100020950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 240), 8);
  _Block_object_dispose((v41 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000209A8(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100020A04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) serverMaxRd];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020AF0;
  v10[3] = &unk_10008D910;
  v8 = *(a1 + 64);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  [smb_subr readNodeStream:v4 StreamName:v6 ReadBuffer:v5 MaxReadXferLen:v7 CompletionHandler:v10];
}

void sub_100020B0C(uint64_t a1, int a2)
{
  if (a2 == 93)
  {
    [*(a1 + 32) setNegativeForName:*(a1 + 40)];
LABEL_12:
    v15 = *(*(a1 + 56) + 16);
LABEL_13:
    v15();
    return;
  }

  if (a2 == 34)
  {
    v3 = [[NSMutableData alloc] initWithLength:*(*(*(a1 + 80) + 8) + 24)];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100020DA0;
      v20[3] = &unk_10008D938;
      v23 = *(a1 + 72);
      v6 = *(a1 + 48);
      v7 = *(a1 + 40);
      v8 = *(a1 + 64);
      v9 = *(a1 + 48);
      v21 = v7;
      v22 = v9;
      v10 = *(a1 + 80);
      v24 = v8;
      v25 = v10;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100020EA8;
      v17[3] = &unk_10008D960;
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *&v13 = *(a1 + 56);
      *(&v13 + 1) = v8;
      *&v14 = v11;
      *(&v14 + 1) = v12;
      v18 = v14;
      v19 = v13;
      [v6 submitRequestBlock:v20 continuationBlock:v17];

      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100054448();
    }

    v15 = *(*(a1 + 56) + 16);
    goto LABEL_13;
  }

  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100054514();
    }

    goto LABEL_12;
  }

  v16 = [*(*(*(a1 + 64) + 8) + 40) copy];
  [*(a1 + 32) setData:v16 forName:*(a1 + 40)];
  (*(*(a1 + 56) + 16))();
}

void sub_100020DA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) serverMaxRd];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020E8C;
  v10[3] = &unk_10008D910;
  v8 = *(a1 + 64);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  [smb_subr readNodeStream:v4 StreamName:v6 ReadBuffer:v5 MaxReadXferLen:v7 CompletionHandler:v10];
}

void sub_100020EA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000545BC();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [*(*(*(a1 + 56) + 8) + 40) copy];
    [*(a1 + 32) setData:v3 forName:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000210CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021184;
  v6[3] = &unk_10008D9B0;
  v6[4] = v1;
  v7 = *(a1 + 64);
  [v1 _LISetXattr:v2 name:v3 value:v4 how:v5 reply:v6];
}

void sub_100021184(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v8 = a5;
  v10 = a3;
  v9 = [v7 opsSyncGroup];
  dispatch_group_leave(v9);

  (*(*(a1 + 40) + 16))();
}

void sub_100021820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002187C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_1000218D8(void *a1, int a2)
{
  *(*(a1[5] + 8) + 24) = [*(*(a1[6] + 8) + 40) interestedClients];
  if (a2)
  {
    v4 = *(a1[4] + 16);

    v4();
  }

  else
  {
    v5 = [*(*(a1[6] + 8) + 40) parent];

    if (v5)
    {
      v6 = [*(*(a1[6] + 8) + 40) parent];
      v7 = [v6 fh];
      v8 = *(a1[7] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = [*(*(a1[6] + 8) + 40) parent];
      *(*(a1[8] + 8) + 24) = [v10 interestedClients];
    }

    v11 = a1[4];
    v12 = *(*(a1[7] + 8) + 40);
    v13 = *(*(a1[8] + 8) + 24);
    v18 = [*(*(a1[6] + 8) + 40) name];
    v14 = a1[6];
    v15 = *(*(a1[5] + 8) + 24);
    v16 = [*(*(v14 + 8) + 40) name];
    if ([v16 hasPrefix:@"."])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    (*(v11 + 16))(v11, 0, v12, v13, v18, v15, v17);
  }
}

void sub_100021AA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) serverMaxWr];
  v8 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021B94;
  v10[3] = &unk_10008CA10;
  v11 = v3;
  v9 = v3;
  [smb_subr writeNodeStream:v4 StreamName:v6 How:v5 MaxWriteXferLen:v7 WriteBuffer:v8 CompletionHandler:v10];
}

uint64_t sub_100021BA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100054774();
    }
  }

  else
  {
    [*(a1 + 40) setData:*(a1 + 48) forName:*(a1 + 32)];
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100021C10(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  v6 = *(*(*(v5 + 8) + 8) + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100021CC8;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr deleteNodeStream:v6 StreamName:v4 CompletionHandler:v8];
}

uint64_t sub_100021CD8(uint64_t a1, int a2)
{
  if (a2 && a2 != 93)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100054834();
    }
  }

  else
  {
    [*(a1 + 40) setNegativeForName:*(a1 + 32)];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100021E50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100021EE4;
  v3[3] = &unk_10008DA78;
  v3[4] = v1;
  v4 = *(a1 + 48);
  [v1 _LIListXattrs:v2 reply:v3];
}

void sub_100021EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 opsSyncGroup];
  dispatch_group_leave(v5);

  (*(*(a1 + 40) + 16))();
}

void sub_10002235C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000223A4(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100022400(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000224B8;
  v7[3] = &unk_10008DAA0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [smb_subr listNodeStreams:v4 CompletionHandler:v7];
}

void sub_1000224B8(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

void sub_100022534(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 != 93)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000549E4();
      }

      (*(*(a1 + 40) + 16))();
      return;
    }

    goto LABEL_10;
  }

  if (![*(*(*(a1 + 48) + 8) + 40) length])
  {
LABEL_10:
    [*(a1 + 32) setNoXattrsPresent:1];
    v6 = *(*(a1 + 40) + 16);

    v6();
    return;
  }

  v3 = sub_100032794(*(*(*(a1 + 48) + 8) + 40));
  v4 = v3;
  if (v3 && [v3 count])
  {
    [*(a1 + 32) setNoXattrsPresent:0];
    v5 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000549A0();
    }

    v5 = *(*(a1 + 40) + 16);
  }

  v5();
}

void sub_10002285C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 callerID] == *(a1 + 32))
  {
    [v4 setSearchAborted];
  }
}

void sub_1000228B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022974;
  v7[3] = &unk_10008CC40;
  v7[4] = v1;
  v6 = *(a1 + 64);
  v8 = *(a1 + 72);
  [v1 _LISearch:v2 token:v3 criteria:v4 returnProxy:v6 withCallerID:v5 reply:v7];
}

uint64_t sub_100022974(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000236E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100023730(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100023860(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100023900;
  v4[3] = &unk_10008CA10;
  v5 = *(a1 + 48);
  [v1 _LISearchReplenishCredits:v2 credits:v3 reply:v4];
}

void sub_100023AD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100023B68;
  v3[3] = &unk_10008CA10;
  v4 = *(a1 + 48);
  [v1 _LISearchAbort:v2 reply:v3];
}

void sub_100023E1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 callerID] == *(a1 + 32))
  {
    [v4 setSearchAborted];
  }
}

void sub_100023F8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024030;
  v4[3] = &unk_10008CC40;
  v4[4] = v1;
  v5 = *(a1 + 48);
  [v1 _LIAccessCheck:v2 requestedAccess:v3 reply:v4];
}

uint64_t sub_100024030(uint64_t a1)
{
  v2 = [*(a1 + 32) opsSyncGroup];
  dispatch_group_leave(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10002443C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002447C(uint64_t a1)
{
  v2 = [*(a1 + 32) lookupHandle:*(a1 + 40) IsStale:*(*(a1 + 56) + 8) + 24];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_1000244D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (a1 + 56);
  v10 = *(a1 + 56);
  if ((a2 & 1) == 0 && (v10 & 2) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055B34();
    }

LABEL_38:
    v13 = 13;
    return (*(*(a1 + 40) + 16))(*(a1 + 40), v13, a3, a4, a5, a6, a7, a8, v15, *(&v15 + 1), v16);
  }

  if ((a2 & 2) == 0 && (v10 & 4) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055A98();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x20) == 0 && (v10 & 8) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000559FC();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x10000) == 0 && (v10 & 0x10) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055960();
    }

    goto LABEL_38;
  }

  if ((a2 & 4) == 0 && (v10 & 0x20) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000558C4();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x40) == 0 && (v10 & 0x40) != 0)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      [v12 shareInfo];
      if (a2 & 2) != 0 && (BYTE8(v15))
      {
        v10 = *v11;
        goto LABEL_27;
      }
    }

    else
    {
      v16 = 0;
      v15 = 0u;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055828();
    }

    goto LABEL_38;
  }

LABEL_27:
  if ((a2 & 0x80) == 0 && (v10 & 0x80) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005578C();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x100) == 0 && (v10 & 0x100) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000556F0();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x80) == 0 && (v10 & 0x200) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055654();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x100) == 0 && (v10 & 0x400) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000555B8();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x20000) == 0 && (v10 & 0x800) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005551C();
    }

    goto LABEL_38;
  }

  if ((a2 & 0x40000) == 0 && (v10 & 0x1000) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055480();
    }

    goto LABEL_38;
  }

  v13 = 0;
  if ((a2 & 0x80000) == 0 && (v10 & 0x2000) != 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000553E4();
    }

    goto LABEL_38;
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v13, a3, a4, a5, a6, a7, a8, v15, *(&v15 + 1), v16);
}

void sub_1000247D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100024888;
  v7[3] = &unk_10008DB58;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [smb_subr queryMaxAccess:v4 CompletionHandler:v7];
}

uint64_t sub_1000248A4(void *a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055BD0(a1);
    }

    *(*(a1[6] + 8) + 24) = 2032127;
    v4 = [*(*(a1[5] + 8) + 40) isRoot];
    if (a2 == 13 && (v4 & 1) == 0)
    {
      *(*(a1[6] + 8) + 24) = 0;
    }

    v5 = *(*(a1[6] + 8) + 24);
    return (*(a1[4] + 16))();
  }

  else
  {
    [*(*(a1[5] + 8) + 40) setMaxAccessAttr:*(*(a1[6] + 8) + 24)];
    v7 = *(*(a1[6] + 8) + 24);
    v8 = *(a1[4] + 16);

    return v8();
  }
}

void sub_100024B0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100024BB0;
  v5[3] = &unk_10008DB80;
  v4 = *(a1 + 56);
  v6 = *(a1 + 48);
  [v1 _LISetUpdateInterest:v2 interest:v3 forClient:v4 reply:v5];
}

void sub_100025104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id location)
{
  objc_destroyWeak((v46 + 56));
  _Block_object_dispose(&a40, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100025154(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100055D00(a1);
    }

    v3 = *(a1 + 40);
    v4 = getNSErrorFromLiveFSErrno();
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055D8C(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100025204(id *a1, int a2)
{
  if (a2)
  {
    if (a2 != 89 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100055E10(a1);
    }
  }

  else
  {
    v3 = [a1[5] namespaceChangingGroup];
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);

    v4 = [a1[5] opsQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100025318;
    v5[3] = &unk_10008DBD0;
    v6 = a1[4];
    v7 = *(a1 + 5);
    objc_copyWeak(&v8, a1 + 7);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v8);
  }
}

void sub_100025318(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100055E9C(a1);
  }

  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v2 historyResetItem:v3 interestedItem:v3 interestedClients:{objc_msgSend(WeakRetained, "interestedClients")}];
}

void sub_100025394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100055F34(a1);
    }

    v3 = *(a1 + 40);
    v4 = getNSErrorFromLiveFSErrno();
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100055FC0(a1);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100025520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002566C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = (a1 + 32);
  *(*(a1 + 32) + 184) |= *(a1 + 40);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100056044(v1, v2);
  }
}

void sub_10002588C(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 256);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002592C;
  block[3] = &unk_10008DC70;
  block[4] = v4;
  v7 = v3;
  v8 = a2;
  dispatch_async(v5, block);
}

void sub_10002595C(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionState];
  switch(v2)
  {
    case 1u:
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100025B6C;
      v13[3] = &unk_10008DCC0;
      v7 = *(a1 + 48);
      v8 = *(a1 + 40);
      v16 = *(a1 + 56);
      v13[4] = *(a1 + 32);
      v14 = v8;
      v15 = *(a1 + 48);
      (*(v7 + 16))(v7, v13);

      v6 = v14;
LABEL_11:

      return;
    case 2u:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100056188(a1);
      }

      atomic_fetch_add((*(a1 + 32) + 464), 0xFFFFFFFFFFFFFFFFLL);
      v4 = *(a1 + 32);
      v5 = *(v4 + 256);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100025CE0;
      v9[3] = &unk_10008DC98;
      v9[4] = v4;
      v10 = *(a1 + 48);
      v11 = *(a1 + 40);
      v12 = *(a1 + 56);
      dispatch_async(v5, v9);

      v6 = v10;
      goto LABEL_11;
    case 7u:
      v3 = *(*(a1 + 40) + 16);

      v3();
      break;
    default:
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100056208(a1);
      }

      (*(*(a1 + 40) + 16))();
      break;
  }
}

void sub_100025B6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (sub_1000326AC(a2))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100056284(a1);
      }

      [*(a1 + 32) notifyConnectionLost];
      if (*(a1 + 56) == 1)
      {
        v3 = *(a1 + 32);
        v4 = *(v3 + 256);
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_100025CCC;
        v7[3] = &unk_10008DC98;
        v7[4] = v3;
        v8 = *(a1 + 48);
        v9 = *(a1 + 40);
        v10 = *(a1 + 56);
        dispatch_async(v4, v7);
      }

      else
      {
        (*(*(a1 + 40) + 16))();
      }

      return;
    }

    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_100025D70(uint64_t a1)
{
  v2 = [*(a1 + 32) connState];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      [*(a1 + 32) setConnState:3];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100056344();
      }

      v3 = [*(a1 + 32) mgmtQueue];
      v4 = v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002603C;
      block[3] = &unk_10008C880;
      block[4] = *(a1 + 32);
      v5 = block;
      goto LABEL_20;
    }

    if (v2 == 4)
    {
      [*(a1 + 32) setConnState:5];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100056300();
      }

      v3 = [*(a1 + 32) mgmtQueue];
      v4 = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100026044;
      v6[3] = &unk_10008C880;
      v6[4] = *(a1 + 32);
      v5 = v6;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v2)
    {
      [*(a1 + 32) setConnState:6];
      [*(a1 + 32) cancelIdleTimer];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100056388();
      }

      v3 = [*(a1 + 32) connQueue];
      v4 = v3;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100026034;
      v8[3] = &unk_10008C880;
      v8[4] = *(a1 + 32);
      v5 = v8;
      goto LABEL_20;
    }

    if (v2 == 1)
    {
      [*(a1 + 32) setConnState:6];
      [*(a1 + 32) cancelIdleTimer];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_1000563CC();
      }

      v3 = [*(a1 + 32) connQueue];
      v4 = v3;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10002602C;
      v9[3] = &unk_10008C880;
      v9[4] = *(a1 + 32);
      v5 = v9;
LABEL_20:
      dispatch_barrier_async(v3, v5);

      return;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100056410();
  }
}

void sub_1000260D4(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) connState];
  if (v2 == 4 || v2 == 1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100056488();
    }

    [*v1 setConnState:2];
    [*v1 setServerConnected:0];
    [*v1 cancelIdleTimer];
    [*v1 setOpenFileCounter:0];
    [*v1 setPendingChangeNotifyCount:0];
    v4 = [*v1 connQueue];
    dispatch_suspend(v4);

    v5 = [*v1 mgmtQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000261F0;
    block[3] = &unk_10008C880;
    block[4] = *v1;
    dispatch_async(v5, block);
  }
}

void sub_100027660(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) handleTable];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(&v15 + 1) + 8 * v6));
        v7 = [*(a1 + 32) handleTable];
        v8 = [v7 objectForKey:*(*(*(a1 + 40) + 8) + 40)];
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v11 = [*(*(*(a1 + 48) + 8) + 40) fileRefSyncQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100027838;
        block[3] = &unk_10008DCE8;
        block[4] = *(a1 + 48);
        dispatch_sync(v11, block);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100027848(uint64_t a1)
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = (a1 + 32);
  obj = [*(a1 + 32) handleTable];
  v2 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v2)
  {
    v3 = *v42;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v42 != v3)
        {
          objc_enumerationMutation(obj);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(&v41 + 1) + 8 * v4));
        v5 = [*(a1 + 32) handleTable];
        v6 = [v5 objectForKey:*(*(*(a1 + 40) + 8) + 40)];
        v7 = *(*(a1 + 48) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        v9 = [*(*(*(a1 + 48) + 8) + 40) fileRefSyncQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100027DC8;
        block[3] = &unk_10008CD08;
        v40 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
        dispatch_sync(v9, block);

        if (*(*(*(a1 + 56) + 8) + 24) == 1)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000568FC((a1 + 48), v29);
          }

          [*v29 setServerConnected:{0, v27}];
          goto LABEL_21;
        }

        if ([*(*(*(a1 + 48) + 8) + 40) isDir])
        {
          v10 = [*(*(*(a1 + 48) + 8) + 40) changeNotifyFileRef];
          v11 = v10 == 0;

          if (!v11)
          {
            objc_initWeak(&location, *(*(*(a1 + 48) + 8) + 40));
            v12 = [NSString alloc];
            v13 = [*(*(*(a1 + 48) + 8) + 40) name];
            v14 = [v12 initWithString:v13];

            v36[0] = 0;
            v36[1] = v36;
            v36[2] = 0x3032000000;
            v36[3] = sub_10000B2A0;
            v36[4] = sub_10000B2B0;
            v37 = *(*(*(a1 + 40) + 8) + 40);
            v15 = *(*(*(a1 + 48) + 8) + 40);
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_100027E04;
            v31[3] = &unk_10008DBF8;
            v16 = v14;
            v17 = *(a1 + 32);
            v32 = v16;
            v33 = v17;
            v34 = v36;
            objc_copyWeak(&v35, &location);
            *(*(*(a1 + 56) + 8) + 24) = [v15 reopenChangeNotify:v31];
            v18 = *(*(*(a1 + 56) + 8) + 24);
            if (v18 == 1)
            {
              v19 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v28 = [*(*(*(a1 + 48) + 8) + 40) name];
                v21 = v28;
                v22 = [v28 UTF8String];
                v23 = [*v29 serverName];
                v24 = [*v29 shareName];
                *buf = 136315906;
                v46 = "[smbMount reconnectSession]_block_invoke";
                v47 = 2080;
                v48 = v22;
                v49 = 2112;
                v50 = v23;
                v51 = 2112;
                v27 = v23;
                v52 = v24;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: lost connection while reopening change notify for np: %s on server: %@, share: %@ \n", buf, 0x2Au);
              }

              [*v29 setServerConnected:0];
            }

            else
            {
              v20 = *(*(*(a1 + 40) + 8) + 40);
              [*(a1 + 32) historyResetItem:v20 interestedItem:v20 interestedClients:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "interestedClients")}];
            }

            objc_destroyWeak(&v35);

            _Block_object_dispose(v36, 8);
            objc_destroyWeak(&location);
            if (v18)
            {
              goto LABEL_21;
            }
          }
        }

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v25 = *(*(a1 + 40) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = 0;

LABEL_21:
}

void sub_100027D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 56));
  _Block_object_dispose(&a24, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100027DC8(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) reopenFilesAfterReconnect];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100027E04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 != 89 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100056AC4();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000569F0(a1);
    }

    v3 = *(a1 + 40);
    v4 = *(*(*(a1 + 48) + 8) + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [v3 historyResetItem:v4 interestedItem:v4 interestedClients:{objc_msgSend(WeakRetained, "interestedClients")}];
  }
}

id sub_100027EB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 shutdownReason] | 2;

  return [v1 setShutdownReason:v2];
}

void sub_1000285C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose((v41 - 176), 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_100028620(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) handleTable];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(&v15 + 1) + 8 * v6));
        v7 = [*(a1 + 32) handleTable];
        v8 = [v7 objectForKey:*(*(*(a1 + 40) + 8) + 40)];
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v11 = [*(*(*(a1 + 48) + 8) + 40) fileRefSyncQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000287F8;
        block[3] = &unk_10008DCE8;
        block[4] = *(a1 + 48);
        dispatch_sync(v11, block);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100028808(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) handleTable];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(&v17 + 1) + 8 * v6));
        v7 = [*(a1 + 32) handleTable];
        v8 = [v7 objectForKey:*(*(*(a1 + 48) + 8) + 40)];
        v9 = *(*(a1 + 56) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        dispatch_group_enter(*(a1 + 40));
        v11 = [*(*(*(a1 + 56) + 8) + 40) fileRefSyncQueue];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100028A00;
        v14[3] = &unk_10008DC20;
        v16 = *(a1 + 56);
        v15 = *(a1 + 40);
        dispatch_sync(v11, v14);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100028A00(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100028AA4;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 32);
  [v2 prepareForReclaim:v3];
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
}

id sub_100028AAC(uint64_t a1)
{
  result = [*(a1 + 32) shutdownReason];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100028E60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) name];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028F28;
  v7[3] = &unk_10008CA10;
  v8 = v3;
  v6 = v3;
  [smb_subr deleteNameInParent:v4 DeleteName:v5 FileType:2 CompletionHandler:v7];
}

void sub_100028F38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100056DD4();
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100056E80(a1);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000290F0;
    v8[3] = &unk_10008DDB0;
    v3 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v13 = *(a1 + 88);
    v11 = *(a1 + 32);
    v12 = *(a1 + 72);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000291DC;
    v4[3] = &unk_10008DDD8;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 80);
    [v3 submitRequestBlockOnce:v8 continuationBlock:v4];
  }
}

void sub_1000290F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (*(a1 + 64))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000291CC;
  v9[3] = &unk_10008CA10;
  v10 = v3;
  v8 = v3;
  [smb_subr renameFile:v4 FileName:v5 NewParent:v6 NewName:v7 VType:2 CompletionHandler:v9];
}

uint64_t sub_1000291DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100056F24();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100056FD0(a1);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100029498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) name];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029578;
  v9[3] = &unk_10008CA10;
  v10 = v3;
  v8 = v3;
  [smb_subr renameFile:v4 FileName:v5 NewParent:0 NewName:v6 VType:v7 CompletionHandler:v9];
}

void sub_100029588(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057074();
    }

    (*(*(a1 + 88) + 16))();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100057120(a1);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100029768;
    v13[3] = &unk_10008DE50;
    v3 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v19 = *(a1 + 100);
    v16 = *(a1 + 32);
    v17 = *(a1 + 72);
    v18 = *(a1 + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100029860;
    v6[3] = &unk_10008DE78;
    v7 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = v4;
    v9 = v5;
    v10 = *(a1 + 80);
    v12 = *(a1 + 96);
    v11 = *(a1 + 88);
    [v3 submitRequestBlockOnce:v13 continuationBlock:v6];
  }
}

void sub_100029768(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (*(a1 + 68))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 48);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100029850;
  v10[3] = &unk_10008CA10;
  v11 = v3;
  v9 = v3;
  [smb_subr renameFile:v4 FileName:v5 NewParent:v6 NewName:v7 VType:v8 CompletionHandler:v10];
}

void sub_100029860(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000571C4();
    }

    v4 = *(a1 + 48);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100029AD4;
    v19[3] = &unk_10008DE28;
    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v22 = *(a1 + 40);
    v23 = *(a1 + 72);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100029BC4;
    v15[3] = &unk_10008DDD8;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 64);
    [v4 submitRequestBlockOnce:v19 continuationBlock:v15];
  }

  v5 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100029C44;
  v10[3] = &unk_10008D898;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v14 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029D20;
  v6[3] = &unk_10008DDD8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  [v5 submitRequestBlockOnce:v10 continuationBlock:v6];
}

void sub_100029AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) name];
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029BB4;
  v9[3] = &unk_10008CA10;
  v10 = v3;
  v8 = v3;
  [smb_subr renameFile:v4 FileName:v5 NewParent:0 NewName:v6 VType:v7 CompletionHandler:v9];
}

uint64_t sub_100029BC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057270();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10005731C(a1);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_100029C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100029D08;
  v8[3] = &unk_10008CFD8;
  v9 = v3;
  v6 = *(a1 + 48);
  v10 = *(a1 + 52);
  v7 = v3;
  [smb_subr deleteNameInParent:v4 DeleteName:v5 FileType:v6 CompletionHandler:v8];
}

uint64_t sub_100029D20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000573C0();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10005746C(a1);
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_10002A8CC(uint64_t result, uint64_t a2, uint64_t a3, int a4, float a5)
{
  *a3 = a5;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  *(a3 + 22) = 1024;
  *(a3 + 24) = a4;
  return result;
}

uint64_t sub_10002A914(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

uint64_t sub_10002A9A0(uint64_t result, uint64_t a2, uint64_t a3, int a4, float a5)
{
  *a3 = a5;
  *(a3 + 4) = a4;
  *(a3 + 8) = 2112;
  *(a3 + 10) = result;
  *(a3 + 18) = 2112;
  *(a3 + 20) = a2;
  return result;
}

uint64_t sub_10002AAB0(uint64_t result, uint64_t a2, float a3)
{
  *result = a3;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = 184;
  return result;
}

uint64_t sub_10002AB54(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_10002ABF4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

void sub_10002AC18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10002AC30(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t sub_10002AC60@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_10002AC6C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_10002AC9C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t sub_10002AD00@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, int a3@<W8>, float a4@<S0>)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

uint64_t sub_10002AD5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*(result + 40) + 8) + 24);
  return result;
}

void sub_10002B0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B0C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002B0E0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000575DC();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002B164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = livefs_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100057650();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SMBMounterClientHelper createDomain:displayName:how:storageName:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s:setConnected:completionHandler: returned %@", &v6, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002B3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B410(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000576C4();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002B784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B874(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10002BB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002BB6C(uint64_t a1)
{
  if ([*(a1 + 32) refCount])
  {
    [*(a1 + 32) setRefCount:{objc_msgSend(*(a1 + 32), "refCount") - 1}];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100057918();
  }

  result = [*(a1 + 32) refCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10002D028(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002D0B8;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 48);
  [v1 closeFileRefInternal:v2 CompletionHandler:v3];
}

void sub_10002D0C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002D150;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 48);
  [v1 closeFileRefInternal:v2 CompletionHandler:v3];
}

void sub_10002D158(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002D1E8;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 48);
  [v1 closeFileRefInternal:v2 CompletionHandler:v3];
}

void sub_10002D1F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002D280;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 48);
  [v1 closeFileRefInternal:v2 CompletionHandler:v3];
}

void sub_10002D288(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002D318;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 48);
  [v1 closeFileRefInternal:v2 CompletionHandler:v3];
}

void sub_10002D320(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002D3B0;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 48);
  [v1 closeFileRefInternal:v2 CompletionHandler:v3];
}

void sub_10002D3B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002D448;
  v3[3] = &unk_10008DD60;
  v4 = *(a1 + 48);
  [v1 closeFileRefInternal:v2 CompletionHandler:v3];
}

uint64_t sub_10002D450(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) openFileRefs];
  v3 = *(v1 + 16);

  return v3(v1, 0, v2);
}

void sub_10002D640(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fidCtx];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D70C;
  v7[3] = &unk_10008CA10;
  v8 = v3;
  v6 = v3;
  [smb_subr sendClose:v4 Param:v5 GetPostAttrs:0 CompletionHandler:v7];
}

uint64_t sub_10002D71C(uint64_t a1, int a2)
{
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v4)
    {
      sub_100057BC0();
    }
  }

  else if (v4)
  {
    sub_100057C68(a1);
  }

  free(*(a1 + 56));
  return (*(*(a1 + 48) + 16))();
}

void sub_10002DAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DAFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002DB14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002DBCC;
  v7[3] = &unk_10008CA10;
  v8 = v3;
  v6 = v3;
  [smb_subr queryNode:v4 attrs:v5 CompletionHandler:v7];
}

void sub_10002DBDC(uint64_t a1, int a2)
{
  v4 = *(*(*(a1 + 48) + 8) + 24);
  v5 = v4[3];
  v58 = v4[2];
  v59 = v5;
  v6 = v4[5];
  v60 = v4[4];
  v61 = v6;
  v7 = v4[1];
  v56 = *v4;
  v57 = v7;
  v55 = *(v4 + 104);
  v8 = *(v4 + 30);
  v9 = *(v4 + 124);
  v10 = *(v4 + 140);
  v11 = *(v4 + 172);
  v64 = *(v4 + 156);
  v65 = v11;
  v62 = v9;
  v63 = v10;
  v12 = *(v4 + 188);
  v13 = *(v4 + 204);
  v14 = *(v4 + 220);
  v69 = *(v4 + 59);
  v67 = v13;
  v68 = v14;
  v66 = v12;
  free(v4);
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057D54(a1);
    }

    v15 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  v17 = (a1 + 32);
  v16 = *(a1 + 32);
  if (LODWORD(v16[8].tv_sec) != v8)
  {
    if (([(timespec *)v16 np_flag]& 1) != 0)
    {
      if (v8 == 1)
      {
        v16 = *v17;
        goto LABEL_7;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100057DCC(a1 + 32);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057E4C(a1 + 32);
    }

    [*(a1 + 32) setZombieState:1];
    v15 = *(*(a1 + 40) + 16);
LABEL_5:
    v15();
    return;
  }

LABEL_7:
  [v16[22].tv_nsec lock];
  v18 = *v17;
  v19 = v59;
  *&v18[2].tv_nsec = v58;
  *&v18[3].tv_nsec = v19;
  v20 = v61;
  *&v18[4].tv_nsec = v60;
  *&v18[5].tv_nsec = v20;
  v21 = v57;
  *&v18->tv_nsec = v56;
  *&v18[1].tv_nsec = v21;
  v18[7] = v55;
  LODWORD(v18[8].tv_sec) = v8;
  v22 = v62;
  v23 = v63;
  v24 = v64;
  *(v18 + 180) = v65;
  *(v18 + 164) = v24;
  *(v18 + 148) = v23;
  *(v18 + 132) = v22;
  v25 = v66;
  v26 = v67;
  v27 = v68;
  HIDWORD(v18[15].tv_sec) = v69;
  *(v18 + 228) = v27;
  *(v18 + 212) = v26;
  *(v18 + 196) = v25;
  clock_gettime(_CLOCK_REALTIME, *v17 + 16);
  v28 = *v17;
  if (((*v17)->tv_nsec & 0x40) != 0)
  {
    BYTE4(v28[15].tv_nsec) = 1;
    LODWORD((*v17)[15].tv_nsec) = (*v17)[15].tv_sec;
    clock_gettime(_CLOCK_REALTIME, *v17 + 17);
    v28 = *v17;
  }

  [v28[22].tv_nsec unlock];
  v29 = *v17;
  tv_sec_high = HIDWORD((*v17)[20].tv_sec);
  if ((tv_sec_high & 2) != 0)
  {
    v32 = [(timespec *)v29 mp];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10002E018;
    v52[3] = &unk_10008CAD8;
    v33 = *(a1 + 40);
    v34 = *(a1 + 56);
    v53 = *(a1 + 32);
    v54 = v34;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10002E140;
    v49[3] = &unk_10008DF90;
    v49[4] = v53;
    v35 = v33;
    v36 = *(a1 + 56);
    v50 = v35;
    v51 = v36;
    [v32 submitRequestBlock:v52 continuationBlock:v49];

    v37 = v50;
LABEL_21:

    return;
  }

  if (tv_sec_high)
  {
    v38 = [(timespec *)v29 mp];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10002E1F8;
    v46[3] = &unk_10008CAD8;
    v39 = *(a1 + 40);
    v40 = *(a1 + 56);
    v47 = *(a1 + 32);
    v48 = v40;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10002E320;
    v43[3] = &unk_10008DF90;
    v43[4] = v47;
    v41 = v39;
    v42 = *(a1 + 56);
    v44 = v41;
    v45 = v42;
    [v38 submitRequestBlock:v46 continuationBlock:v43];

    v37 = v44;
    goto LABEL_21;
  }

  v31 = *(*(a1 + 40) + 16);

  v31();
}

void sub_10002E018(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E0C4;
  v7[3] = &unk_10008CAB0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [smb_subr readReparseSymlink:v5 completionHandler:v7];
}

void sub_10002E0C4(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10002E140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057EE8(a1);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(*(a1 + 32) + 360) lock];
    [*(a1 + 32) setReparseSymLink:*(*(*(a1 + 48) + 8) + 40)];
    [*(*(a1 + 32) + 360) unlock];
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }
}

void sub_10002E1F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E2A4;
  v7[3] = &unk_10008CAB0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [smb_subr readWindowsSymlink:v5 completionHandler:v7];
}

void sub_10002E2A4(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10002E320(uint64_t a1, int a2)
{
  if (a2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100057EE8(a1);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(*(a1 + 32) + 360) lock];
    [*(a1 + 32) setWindowsSymLink:*(*(*(a1 + 48) + 8) + 40)];
    [*(*(a1 + 32) + 360) unlock];
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }
}

void sub_10002E4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002E784(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    [*(*(a1 + 32) + 360) lock];
    v5 = *(a1 + 32);
    v6 = v5[36];
    if (v6)
    {
      v7 = v5[45];
      v20 = v6;
      [v7 unlock];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v8 = [v5 mp];
      v9 = v8;
      if (v8)
      {
        [v8 shareInfo];
        v10 = v21;
      }

      else
      {
        v10 = 0;
      }

      sub_100032A28((v5 + 1), v10, &v22);

      v11 = *(a1 + 32);
      v12 = *(v11 + 408);
      *(v11 + 408) = v12 + 1;
      *&v23 = v12;
      v13 = *(a1 + 32);
      if ((*(v13 + 324) & 3) != 0)
      {
        *&v25 = *(v13 + 400);
      }

      v14 = [NSData dataWithBytes:&v22 length:184];
      v15 = *(a1 + 32);
      v16 = *(v15 + 288);
      *(v15 + 288) = v14;

      v17 = *(a1 + 32);
      v18 = *(v17 + 360);
      v19 = *(v17 + 288);
      [v18 unlock];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_10002EE48(uint64_t a1)
{
  v2 = [*(a1 + 32) Read_fileRef];
  v3 = [v2 fidCtx];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002EF28;
  v6[3] = &unk_10008E008;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v8 = v5;
  v7 = v4;
  [smb_subr sendClose:v3 Param:v5 GetPostAttrs:0 CompletionHandler:v6];
}

void sub_10002EF28(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100057FE4();
  }

  [*(a1 + 32) setRead_fileRef:0];
  dispatch_group_leave(*(a1 + 40));
}

void sub_10002EF88(uint64_t a1)
{
  v2 = [*(a1 + 32) Write_fileRef];
  v3 = [v2 fidCtx];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002F068;
  v6[3] = &unk_10008E008;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v8 = v5;
  v7 = v4;
  [smb_subr sendClose:v3 Param:v5 GetPostAttrs:0 CompletionHandler:v6];
}

void sub_10002F068(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100058084();
  }

  [*(a1 + 32) setWrite_fileRef:0];
  dispatch_group_leave(*(a1 + 40));
}

void sub_10002F0C8(uint64_t a1)
{
  v2 = [*(a1 + 32) ReadWrite_fileRef];
  v3 = [v2 fidCtx];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002F1A8;
  v6[3] = &unk_10008E008;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v8 = v5;
  v7 = v4;
  [smb_subr sendClose:v3 Param:v5 GetPostAttrs:0 CompletionHandler:v6];
}

void sub_10002F1A8(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100058124();
  }

  [*(a1 + 32) setReadWrite_fileRef:0];
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_10002F208(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          free([*(*(&v9 + 1) + 8 * v6) pointerValue]);
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    [*(a1 + 32) removeAllObjects];
  }

  if (*(a1 + 56))
  {
    v7 = [*(a1 + 40) mp];
    [v7 decreaseOpenFileCount:*(a1 + 56)];
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10002F400(uint64_t a1)
{
  if ([*(a1 + 32) isDir])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10002F4CC;
    v4[3] = &unk_10008CA10;
    v2 = *(a1 + 32);
    v5 = *(a1 + 40);
    [v2 clearChangeNotify:0 completionHandler:v4];
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

void sub_10002F640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F664(uint64_t a1)
{
  if ([*(a1 + 32) isDir])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10002F71C;
    v4[3] = &unk_10008C8D0;
    v2 = *(a1 + 32);
    v4[4] = *(a1 + 40);
    [v2 clearChangeNotify:0 completionHandler:v4];
  }

  else
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);

    dispatch_group_leave(v3);
  }
}

void sub_10002F94C(uint64_t a1)
{
  v2 = [*(a1 + 32) Read_fileRef];
  v3 = [v2 reconnState];

  if (v3 != 2)
  {
    v4 = [*(a1 + 32) Read_fileRef];
    [v4 setReconnState:1];
  }
}

void sub_10002F9E0(uint64_t a1)
{
  v2 = [*(a1 + 32) ReadWrite_fileRef];
  v3 = [v2 reconnState];

  if (v3 != 2)
  {
    v4 = [*(a1 + 32) ReadWrite_fileRef];
    [v4 setReconnState:1];
  }
}

void sub_10002FA74(uint64_t a1)
{
  v2 = [*(a1 + 32) Write_fileRef];
  v3 = [v2 reconnState];

  if (v3 != 2)
  {
    v4 = [*(a1 + 32) Write_fileRef];
    [v4 setReconnState:1];
  }
}

void sub_10002FE40(uint64_t a1)
{
  v2 = (a1 + 32);
  v10 = [*(a1 + 32) ReadWrite_fileRef];
  if ([v10 reconnState] == 1)
  {
    v3 = [*v2 ReadWrite_fileRef];
    v4 = [v3 shareMode];

    if (v4 != 7)
    {
      v5 = *(a1 + 32);
      v6 = [v5 ReadWrite_fileRef];
      *(*(*(a1 + 40) + 8) + 24) = [v5 reopenFileRef:v6];

      LODWORD(v6) = *(*(*(a1 + 40) + 8) + 24);
      v7 = [*(a1 + 32) ReadWrite_fileRef];
      v8 = v7;
      if (v6)
      {
        [v7 setReconnState:2];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000584C8(v2);
        }
      }

      else
      {
        [v7 setReconnState:0];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100058560(v2);
        }

        v9 = [*v2 mp];
        [v9 increaseOpenFileCount:1];
      }
    }
  }

  else
  {
  }
}

void sub_10002FFB0(uint64_t a1)
{
  v2 = (a1 + 32);
  v10 = [*(a1 + 32) Write_fileRef];
  if ([v10 reconnState] == 1)
  {
    v3 = [*v2 Write_fileRef];
    v4 = [v3 shareMode];

    if (v4 != 7)
    {
      v5 = *(a1 + 32);
      v6 = [v5 Write_fileRef];
      *(*(*(a1 + 40) + 8) + 24) = [v5 reopenFileRef:v6];

      LODWORD(v6) = *(*(*(a1 + 40) + 8) + 24);
      v7 = [*(a1 + 32) Write_fileRef];
      v8 = v7;
      if (v6)
      {
        [v7 setReconnState:2];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000585F0(v2);
        }
      }

      else
      {
        [v7 setReconnState:0];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100058688(v2);
        }

        v9 = [*v2 mp];
        [v9 increaseOpenFileCount:1];
      }
    }
  }

  else
  {
  }
}

void sub_100030120(uint64_t a1)
{
  v2 = (a1 + 32);
  v10 = [*(a1 + 32) Read_fileRef];
  if ([v10 reconnState] == 1)
  {
    v3 = [*v2 Read_fileRef];
    v4 = [v3 shareMode];

    if (v4 != 7)
    {
      v5 = *(a1 + 32);
      v6 = [v5 Read_fileRef];
      *(*(*(a1 + 40) + 8) + 24) = [v5 reopenFileRef:v6];

      LODWORD(v6) = *(*(*(a1 + 40) + 8) + 24);
      v7 = [*(a1 + 32) Read_fileRef];
      v8 = v7;
      if (v6)
      {
        [v7 setReconnState:2];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100058718(v2);
        }
      }

      else
      {
        [v7 setReconnState:0];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1000587B0(v2);
        }

        v9 = [*v2 mp];
        [v9 increaseOpenFileCount:1];
      }
    }
  }

  else
  {
  }
}

void sub_1000304CC(uint64_t a1)
{
  v2 = (a1 + 32);
  v10 = [*(a1 + 32) ReadWrite_fileRef];
  if ([v10 reconnState] == 1)
  {
    v3 = [*v2 ReadWrite_fileRef];
    v4 = [v3 shareMode];

    if (v4 == 7)
    {
      v5 = *(a1 + 32);
      v6 = [v5 ReadWrite_fileRef];
      *(*(*(a1 + 40) + 8) + 24) = [v5 reopenFileRef:v6];

      LODWORD(v6) = *(*(*(a1 + 40) + 8) + 24);
      v7 = [*(a1 + 32) ReadWrite_fileRef];
      v8 = v7;
      if (v6)
      {
        [v7 setReconnState:2];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100058840(v2);
        }
      }

      else
      {
        [v7 setReconnState:0];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_1000588D8(v2);
        }

        v9 = [*v2 mp];
        [v9 increaseOpenFileCount:1];
      }
    }
  }

  else
  {
  }
}

void sub_10003063C(uint64_t a1)
{
  v2 = (a1 + 32);
  v10 = [*(a1 + 32) Write_fileRef];
  if ([v10 reconnState] == 1)
  {
    v3 = [*v2 Write_fileRef];
    v4 = [v3 shareMode];

    if (v4 == 7)
    {
      v5 = *(a1 + 32);
      v6 = [v5 Write_fileRef];
      *(*(*(a1 + 40) + 8) + 24) = [v5 reopenFileRef:v6];

      LODWORD(v6) = *(*(*(a1 + 40) + 8) + 24);
      v7 = [*(a1 + 32) Write_fileRef];
      v8 = v7;
      if (v6)
      {
        [v7 setReconnState:2];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100058968(v2);
        }
      }

      else
      {
        [v7 setReconnState:0];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100058A00(v2);
        }

        v9 = [*v2 mp];
        [v9 increaseOpenFileCount:1];
      }
    }
  }

  else
  {
  }
}

void sub_1000307AC(uint64_t a1)
{
  v2 = (a1 + 32);
  v10 = [*(a1 + 32) Read_fileRef];
  if ([v10 reconnState] == 1)
  {
    v3 = [*v2 Read_fileRef];
    v4 = [v3 shareMode];

    if (v4 == 7)
    {
      v5 = *(a1 + 32);
      v6 = [v5 Read_fileRef];
      *(*(*(a1 + 40) + 8) + 24) = [v5 reopenFileRef:v6];

      LODWORD(v6) = *(*(*(a1 + 40) + 8) + 24);
      v7 = [*(a1 + 32) Read_fileRef];
      v8 = v7;
      if (v6)
      {
        [v7 setReconnState:2];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100058A90(v2);
        }
      }

      else
      {
        [v7 setReconnState:0];

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100058B28(v2);
        }

        v9 = [*v2 mp];
        [v9 increaseOpenFileCount:1];
      }
    }
  }

  else
  {
  }
}

void sub_100030B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100030B8C(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 56) + 16);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  free(*(a1 + 56));
  dispatch_group_leave(*(a1 + 32));
}

void sub_100030F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100030F58(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031014;
  v7[3] = &unk_10008E0A8;
  v5 = a1[4];
  v9 = a1[5];
  v10 = v4;
  v8 = v3;
  v6 = v3;
  [smb_subr openFileNode:v5 withStream:0 withArgs:v4 CompletionHandler:v7];
}

void sub_100031014(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1[6];
  v5[4];
  free(v5);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;
  v8 = v4;

  (*(a1[4] + 16))();
}

void sub_1000310AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    objc_storeStrong((*(a1 + 32) + 480), *(a1 + 40));
    [*(*(a1 + 32) + 480) setFidCtx:*(*(*(a1 + 64) + 8) + 40)];
    v8 = *(a1 + 32);
    *(v8 + 304) = 0;
    *(v8 + 312) = 0;
    *(*(a1 + 32) + 308) = 0;
    *(*(a1 + 32) + 312) = 3399;
    v9 = [*(a1 + 32) mp];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000312BC;
    v14[3] = &unk_10008E0D0;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000313A4;
    v11[3] = &unk_10008E0F8;
    v10 = *(a1 + 72);
    v11[4] = *(a1 + 32);
    v13 = v10;
    v12 = *(a1 + 48);
    [v9 submitRequestBlockOnce:v14 continuationBlock:v11];

    return;
  }

  v4 = [*(a1 + 32) mp];
  v5 = v4;
  if (v4)
  {
    [v4 shareInfo];

    if (BYTE8(v16))
    {
      v6 = (WORD4(v16) & 0x200) == 0 && a2 == 13;
      v7 = v6;
      if (a2 == 22 || v7)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v16 = 0u;
    v17 = 0u;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100058C8C((a1 + 32));
  }

LABEL_17:
  (*(*(a1 + 48) + 16))();
}

void sub_1000312BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 480) fidCtx];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100031394;
  v8[3] = &unk_10008CA10;
  v9 = v3;
  v7 = v3;
  [smb_subr setChangeNotify:v4 Param:v6 + 304 CompletionHandler:v8 NotifyHandler:v5];
}

uint64_t sub_1000313A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100058D30(a1);
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 480) decRef];
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    v4 = malloc_type_malloc(0x40uLL, 0x100004022DBA428uLL);
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    v5 = [*(a1 + 32) mp];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003154C;
    v17[3] = &unk_10008D2D0;
    v6 = *(a1 + 40);
    v18 = *(a1 + 32);
    v19 = v4;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10003162C;
    v12 = &unk_10008D780;
    v13 = v18;
    v15 = v4;
    v14 = v6;
    v16 = a2;
    [v5 submitRequestBlock:v17 continuationBlock:&v9];

LABEL_6:
    v7 = [*(a1 + 32) mp];
    [v7 increaseChangeNotifyCount:1];
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10003154C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 480) fidCtx];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003161C;
  v7[3] = &unk_10008CA10;
  v8 = v3;
  v6 = v3;
  [smb_subr sendClose:v4 Param:v5 GetPostAttrs:0 CompletionHandler:v7];
}

uint64_t sub_10003162C(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100058DD4(a1);
  }

  free(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 480);
  *(v3 + 480) = 0;

  v5 = *(a1 + 56);
  return (*(*(a1 + 40) + 16))();
}

void sub_1000319F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) fidCtx];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031AC4;
  v7[3] = &unk_10008CA10;
  v8 = v3;
  v6 = v3;
  [smb_subr sendClose:v4 Param:v5 GetPostAttrs:0 CompletionHandler:v7];
}

uint64_t sub_100031AD4(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100058F20(a1);
  }

  free(*(a1 + 48));
  v3 = [*(a1 + 32) mp];
  [v3 decreaseChangeNotifyCount:1];

  return (*(*(a1 + 40) + 16))();
}

void sub_100031B60(uint64_t a1)
{
  v2 = [*(a1 + 32) fidCtx];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100031C28;
  v5[3] = &unk_10008E008;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5[4] = *(a1 + 40);
  v7 = v4;
  v6 = v3;
  [smb_subr sendClose:v2 Param:v4 GetPostAttrs:0 CompletionHandler:v5];
}

void sub_100031C28(uint64_t a1, int a2)
{
  if (a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100058FC4();
  }

  v3 = [*(a1 + 32) mp];
  [v3 decreaseChangeNotifyCount:1];

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100031C98(uint64_t a1)
{
  free(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10003213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_100032174(uint64_t a1, int a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 56) + 16);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  free(*(a1 + 56));
  dispatch_group_leave(*(a1 + 32));
}

void sub_100032208(void *a1, int a2)
{
  v4 = a1[5];
  v3 = a1[6];
  *(*(v4 + 8) + 24) = a2;
  free(v3);
  v5 = a1[4];

  dispatch_group_leave(v5);
}

uint64_t sub_10003262C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, int a3@<W8>)
{
  *(a2 + 4) = v3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  *(a2 + 22) = 1024;
  *(a2 + 24) = a3;
  return result;
}

uint64_t sub_10003264C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(result + 32) + 384);
  return result;
}

uint64_t sub_100032674(uint64_t result)
{
  if (((result + 5046) > 4 || ((1 << (result - 74)) & 0x13) == 0) && (result + 5997) >= 2)
  {
    return result;
  }

  else
  {
    return 80;
  }
}

id sub_1000326C8(const sockaddr *a1, socklen_t a2)
{
  v2 = getnameinfo(a1, a2, __s, 0x401u, 0, 0, 2);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000591E8(v3);
    }

    goto LABEL_5;
  }

  if (strchr(__s, 37))
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = [[NSString alloc] initWithUTF8String:__s];
LABEL_6:

  return v4;
}

id sub_100032794(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || ![v1 length])
  {
    v4 = 0;
LABEL_20:
    v6 = 0;
    v5 = 0;
    goto LABEL_21;
  }

  v3 = [[NSString alloc] initWithData:v2 encoding:4];
  v4 = v3;
  if (!v3 || ![v3 length])
  {
    goto LABEL_20;
  }

  v5 = [v4 componentsSeparatedByString:&stru_10008EFD8];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v5;
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v16;
        do
        {
          v11 = 0;
          v12 = v9;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v15 + 1) + 8 * v11);

            if ([v9 length])
            {
              [v6 addObject:v9];
            }

            v11 = v11 + 1;
            v12 = v9;
          }

          while (v8 != v11);
          v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v8);
      }

      if ([v6 count])
      {
        v13 = [v6 copy];
        goto LABEL_22;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_21:
  v13 = 0;
LABEL_22:

  return v13;
}

uint64_t sub_100032988(unsigned int a1)
{
  v1 = (a1 >> 23) & 0xC0 | ((a1 >> 13) >> 15) & 0x1C0;
  v2 = v1 | 0x100;
  if ((a1 & 0x80000000) != 0)
  {
    v1 |= 0x100u;
  }

  if (a1)
  {
    v1 = v2;
  }

  v3 = (32 * a1) & 0x80;
  if ((a1 & 0x10000) != 0)
  {
    v3 = 128;
  }

  v4 = (2 * a1) & 0x40 | (((a1 & 2) != 0) << 7) | v3;
  if ((a1 & 0x40) != 0)
  {
    v4 = 192;
  }

  v5 = v4 | v1;
  v6 = (a1 >> 9) & 0x100;
  if ((a1 & 0x100000) != 0)
  {
    v6 = 256;
  }

  v7 = (a1 >> 11) & 0x80;
  if ((a1 & 0x80000) != 0)
  {
    v7 = 128;
  }

  return (a1 >> 1) & 0x80 | (((a1 >> 7) & 1) << 8) | v6 | v7 | v5;
}

uint64_t sub_100032A28(uint64_t a1, char a2, uint64_t a3)
{
  *(a3 + 176) = 0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v6 = *(a1 + 120);
  if (v6 != 1)
  {
    if (v6 == 5)
    {
      v6 = 3;
    }

    else if (v6 != 2)
    {
      NSLog(@"smbfattr_to_lifileattr: Unexpected fa_vtype: %u", *(a1 + 120));
      goto LABEL_7;
    }
  }

  *(a3 + 24) = v6;
  *(a3 + 8) |= 1uLL;
LABEL_7:
  if ((*a1 & 0x40) != 0)
  {
    result = sub_100032988(*(a1 + 232));
  }

  else
  {
    result = 448;
  }

  *(a3 + 28) = result;
  v8 = *(a3 + 8);
  *(a3 + 48) = *(a1 + 16);
  *(a3 + 64) = *(a1 + 96);
  *(a3 + 8) = v8 | 0x1C2;
  *(a3 + 80) = *(a1 + 32);
  *(a3 + 96) = *(a1 + 64);
  *(a3 + 112) = *(a1 + 48);
  *(a3 + 128) = *(a1 + 80);
  *(a3 + 44) = 0;
  if (*(a1 + 120) == 2)
  {
    v9 = 0;
    v10 = *(a1 + 8);
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x20) == 0)
  {
    v9 = 0x10000;
    *(a3 + 44) = 0x10000;
LABEL_15:
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = 0;
  if (v10)
  {
LABEL_16:
    v9 |= 2u;
    *(a3 + 44) = v9;
  }

LABEL_17:
  if ((v10 & 2) != 0)
  {
    v9 |= 0x8000u;
    *(a3 + 44) = v9;
  }

  if ((v10 & 0x400) != 0 && *(a1 + 168) == -2147483618 && (v10 & 0x401200) != 0)
  {
    *(a3 + 44) = v9 | 0x40000000;
  }

  *(a3 + 8) = v8 | 0x3DE2;
  return result;
}

uint64_t sub_100032BB0(uint64_t *a1)
{
  if (*(a1 + 2) <= 0x67u)
  {
    v15 = *(a1 + 2);
    printf("smb_parse_fileid_both_dir_info: Parse error, truncated FileIdBothDirInformation, buflen: %u\n");
    return 0;
  }

  v2 = a1[3];
  v2[13] = 0u;
  v2[14] = 0u;
  v2[11] = 0u;
  v2[12] = 0u;
  v2[9] = 0u;
  v2[10] = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  v3 = *a1;
  v4 = a1[3];
  v5 = *(*a1 + 16);
  v6 = qword_100095498;
  v4[10] = *(*a1 + 8) / 0x989680uLL - qword_100095498;
  v4[11] = 0;
  v4[4] = v5 / 0x989680 - v6;
  v4[5] = 0;
  v7 = *(v3 + 32);
  v4[8] = *(v3 + 24) / 0x989680uLL - v6;
  v4[9] = 0;
  v4[6] = v7 / 0x989680 - v6;
  v4[7] = 0;
  *(v4 + 1) = *(v3 + 40);
  v8 = *(v3 + 56);
  *(v4 + 2) = v8;
  if ((v8 & 0x10) != 0)
  {
    v10 = 2;
    goto LABEL_9;
  }

  *(v4 + 30) = 1;
  if ((v8 & 0x400) != 0)
  {
    v9 = *(v3 + 64);
    *(v4 + 42) = v9;
    if (v9 == -1610612724)
    {
      *v4 |= 2uLL;
      v10 = 5;
LABEL_9:
      *(v4 + 30) = v10;
    }
  }

  v11 = *v4;
  *v4 |= 1uLL;
  if ((~*(a1 + 4) & 5) == 0)
  {
    if ((v8 & 0x400) != 0)
    {
      v12 = 2032127;
    }

    else
    {
      v12 = *(v3 + 64);
    }

    *(v4 + 58) = v12;
    *v4 = v11 | 0x41;
  }

  v4[12] = *(v3 + 96);
  v13 = a1[4];
  if (v13)
  {
    v14 = *(v3 + 60);
    if (!v14)
    {
      puts("smb_parse_fileid_both_dir_info: FileIdBothDirInformation.name_len is zero");
      return 0;
    }

    if (*(a1 + 2) - 104 < v14)
    {
      v16 = *(v3 + 60);
      printf("smb_parse_fileid_both_dir_info: Truncated FileIdBothDirInformation, name_len: %u but bufremain: %u\n");
      return 0;
    }

    if (sub_100032DB4((v3 + 104), v14, v13, a1 + 10))
    {
      printf("smb_parse_fileid_both_dir_info: Failed to convert FileIdBothDirInformation.Filename, error: %d\n");
      return 0;
    }
  }

  return 1;
}

unint64_t sub_100032D88(unint64_t result, void *a2)
{
  *a2 = result / 0x989680 - qword_100095498;
  a2[1] = 0;
  return result;
}

uint64_t sub_100032DB4(UInt8 *bytes, CFIndex numBytes, UInt8 **a3, _DWORD *a4)
{
  v7 = CFStringCreateWithBytes(kCFAllocatorDefault, bytes, numBytes, 0x14000100u, 0);
  if (v7)
  {
    v8 = v7;
    usedBufLen = 0;
    Length = CFStringGetLength(v7);
    v16.location = 0;
    v16.length = Length;
    if (CFStringGetBytes(v8, v16, 0x8000100u, 0, 0, 0, 0, &usedBufLen))
    {
      v10 = usedBufLen;
      v11 = malloc_type_calloc(usedBufLen, 1uLL, 0x377295D1uLL);
      if (!v11)
      {
        printf("utf16_to_utf8: No memory for encode buffer, encode_len: %lu\n", v10);
        v13 = 12;
        goto LABEL_11;
      }

      v12 = v11;
      v17.location = 0;
      v17.length = Length;
      if (CFStringGetBytes(v8, v17, 0x8000100u, 0, 0, v11, v10, &usedBufLen))
      {
        v13 = 0;
        *a3 = v12;
        *a4 = v10;
LABEL_11:
        CFRelease(v8);
        return v13;
      }

      puts("utf16_to_utf8: Failed to convert input string");
      free(v12);
    }

    else
    {
      printf("utf16_to_utf8: Error converting input string: %s\n", bytes);
    }

    v13 = 22;
    goto LABEL_11;
  }

  printf("utf16_to_utf8: Failed to created CFString from inbuf: %s\n", bytes);
  return 22;
}

uint64_t *sub_100032F2C(uint64_t *result, void *a2, int a3)
{
  v3 = *result;
  if (a3)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL) + qword_100095498;
  }

  else
  {
    v4 = qword_100095498 + v3;
  }

  *a2 = 10000000 * v4;
  return result;
}

uint64_t sub_100032F68(char *cStr, UInt8 **a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v10 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (v10)
  {
    v11 = v10;
    maxBufLen = 0;
    Length = CFStringGetLength(v10);
    v19.location = 0;
    v19.length = Length;
    if (CFStringGetBytes(v11, v19, 0x14000100u, 0, 0, 0, 0, &maxBufLen))
    {
      v13 = maxBufLen;
      if (a5)
      {
        v13 = maxBufLen + 2;
        maxBufLen += 2;
      }

      v14 = malloc_type_calloc(v13, 1uLL, 0x8F3DF7ADuLL);
      if (!v14)
      {
        printf("utf8_to_utf16: No memory for encode_len: %lu\n", maxBufLen);
        a5 = 12;
LABEL_14:
        CFRelease(v11);
        return a5;
      }

      v15 = v14;
      v20.location = 0;
      v20.length = Length;
      Bytes = CFStringGetBytes(v11, v20, 0x14000100u, 0, 0, v14, maxBufLen, 0);
      if (Bytes)
      {
        *a2 = v15;
        *a3 = maxBufLen;
        *a4 = Bytes;
        if (a5)
        {
          a5 = 0;
          *a4 = Bytes + 1;
        }

        goto LABEL_14;
      }

      printf("utf8_to_utf16: Failed to convert input string: %s\n", cStr);
      free(v15);
    }

    else
    {
      printf("utf8_to_utf16: Error converting input string: %s\n", cStr);
    }

    a5 = 22;
    goto LABEL_14;
  }

  printf("utf8_to_utf16: Failed to created CFString from inbuf: %s\n", cStr);
  return 22;
}

_BYTE *sub_100033104(void *a1, int *a2)
{
  v3 = a1;
  v4 = v3;
  memset(&c, 0, sizeof(c));
  *a2 = 0;
  if (!v3 || ![v3 length] || (v5 = objc_msgSend(v4, "UTF8String")) == 0)
  {
    v9 = 0;
    v11 = 22;
LABEL_9:
    *a2 = v11;
    goto LABEL_10;
  }

  v6 = v5;
  v7 = strnlen(v5, 0x400uLL);
  v8 = malloc_type_malloc(0x42BuLL, 0x42FD01AFuLL);
  v9 = v8;
  if (!v8)
  {
    v11 = 12;
    goto LABEL_9;
  }

  *v8 = *aXsym;
  v8[4] = aXsym[4];
  snprintf(v8 + 5, 0x426uLL, "%04u\n", v7);
  CC_MD5_Init(&c);
  CC_MD5_Update(&c, v6, v7);
  CC_MD5_Final(md, &c);
  snprintf(v9 + 10, 0x421uLL, "%08x%08x%08x%08x\n", bswap32(*md), bswap32(v15), bswap32(v16), bswap32(v17));
  v10 = v9 + 43;
  __memcpy_chk();
  if ((v7 - 1025) <= -2)
  {
    v10[v7] = 10;
    if (v7 != 1023)
    {
      memset(&v10[v7 + 1], 32, 1023 - v7);
    }
  }

LABEL_10:

  return v9;
}

uint64_t sub_1000332CC(uint64_t a1, unsigned int a2, void *a3)
{
  if (a2 < 0x42B)
  {
    return 22;
  }

  if (*a1 != *aXsym || *(a1 + 4) != aXsym[4])
  {
    return 22;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(a1 + 5 + v7) - 48;
    if (v9 > 9)
    {
      break;
    }

    v8 = v9 + 10 * v8;
    if (++v7 == 4)
    {
      LODWORD(v7) = 4;
      break;
    }
  }

  result = 22;
  if (v7 == 4 && v8 <= 0x400)
  {
    memset(&c, 0, sizeof(c));
    CC_MD5_Init(&c);
    CC_MD5_Update(&c, (a1 + 43), v8);
    CC_MD5_Final(md, &c);
    snprintf(__str, 0x21uLL, "%08x%08x%08x%08x", bswap32(*md), bswap32(v21), bswap32(v22), bswap32(v23));
    if (*(a1 + 10) != *__str || *(a1 + 18) != v17 || *(a1 + 26) != v18 || *(a1 + 34) != v19)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_100059268();
      }

      return 22;
    }

    if (a3)
    {
      v13 = [[NSString alloc] initWithBytes:a1 + 43 length:v8 encoding:4];
      v14 = v13;
      result = 0;
      *a3 = v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000334E0(uint64_t a1)
{
  NSLog(@"a_valid_mask [0x%llx]", *a1);
  NSLog(@"fa_attr: 0x%x", *(a1 + 8));
  NSLog(@"fa_size: 0x%llx", *(a1 + 16));
  NSLog(@"fa_data_alloc: 0x%llx>", *(a1 + 24));
  v7 = *(a1 + 40) / 1000000000 + *(a1 + 32);
  v2 = ctime(&v7);
  NSLog(@"fa_atime: %s", v2);
  v7 = *(a1 + 56) / 1000000000 + *(a1 + 48);
  v3 = ctime(&v7);
  NSLog(@"fa_chtime: %s", v3);
  v7 = *(a1 + 72) / 1000000000 + *(a1 + 64);
  v4 = ctime(&v7);
  NSLog(@"fa_mtime: %s", v4);
  v7 = *(a1 + 88) / 1000000000 + *(a1 + 80);
  v5 = ctime(&v7);
  NSLog(@"fa_crtime: %s", v5);
  NSLog(@"fa_ino: 0x%llx>", *(a1 + 96));
  NSLog(@"fa_size: 0x%llx>", *(a1 + 16));
  v7 = *(a1 + 112) / 1000000000 + *(a1 + 104);
  v6 = ctime(&v7);
  NSLog(@"fa_reqtime: %s", v6);
  NSLog(@"fa_vtype: 0x%x", *(a1 + 120));
  NSLog(@"fa_uid: %llu>", *(a1 + 128));
  NSLog(@"fa_gid: %llu>", *(a1 + 136));
  NSLog(@"fa_permissions: 0x%llx", *(a1 + 144));
  NSLog(@"fa_nlinks: 0x%llx", *(a1 + 152));
  NSLog(@"fa_flags_mask: 0x%x", *(a1 + 160));
  NSLog(@"fa_unix: 0x%x", *(a1 + 164));
  NSLog(@"fa_reparse_tag: 0x%x", *(a1 + 168));
  NSLog(@"fa_fstatus: 0x%x", *(a1 + 172));
  NSLog(@"fa_created_disp: 0x%x", *(a1 + 176));
  NSLog(@"fa_rsrc_size: 0x%llx", *(a1 + 184));
  NSLog(@"fa_rsrc_alloc: 0x%llx", *(a1 + 192));
  NSLog(@"fa_max_access: 0x%x", *(a1 + 232));
}

void sub_100033CD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"mountNumber"];
  [*(*(a1 + 32) + 16) addObject:v4];
}

id sub_100033EC8(id *a1)
{
  v2 = +[NSFileManager defaultManager];
  v18 = 0;
  v17 = 0;
  v3 = [v2 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v17];
  v4 = v17;
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000594A4();
    }

    v10 = v4;
    goto LABEL_12;
  }

  v5 = [NSURL fileURLWithPath:@"smbclientd" relativeToURL:v3];
  if (!v5)
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10005942C();
    }

    v10 = v11;
LABEL_12:
    v9 = v10;
    v6 = 0;
LABEL_24:
    v13 = v10;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = [v5 path];
  v8 = [v2 fileExistsAtPath:v7 isDirectory:&v18];

  if (!v8)
  {
    v16 = v4;
    v12 = [v2 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:&v16];
    v9 = v16;

    if (v12)
    {
      goto LABEL_14;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100059334();
    }

    v10 = v9;
    goto LABEL_23;
  }

  if ((v18 & 1) == 0)
  {
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:20 userInfo:0];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000593AC();
    }

    v10 = v14;
LABEL_23:
    v9 = v10;
    goto LABEL_24;
  }

  v9 = v4;
LABEL_14:
  if (a1)
  {
    objc_storeStrong(a1, v6);
  }

  v13 = 0;
LABEL_25:

  return v13;
}

void sub_100034968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003498C(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 containsString:*(a1 + 32)];
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_100035600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id obj, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a47, 8);
  objc_sync_exit(obj);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 256), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003566C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100035684(void *a1)
{
  v1 = a1;
  [v1 setUser:0];
  [v1 setPath:0];
  v2 = [v1 URL];

  v3 = [v2 absoluteString];

  v4 = [v3 substringFromIndex:{objc_msgSend(@"smb://", "length")}];

  return v4;
}

void sub_10003571C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = *(*(*(a1 + 96) + 8) + 40);
    if (v4)
    {
      if (!*(*(*(a1 + 104) + 8) + 40))
      {
        v5 = [v4 objectForKeyedSubscript:@"shares"];
        v6 = *(*(a1 + 104) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;
      }
    }

    else
    {
      v8 = [*(a1 + 40) mutableCopy];
      v9 = *(*(a1 + 96) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = [*(a1 + 40) objectForKeyedSubscript:@"shares"];
      v12 = [v11 mutableCopy];
      v13 = *(*(a1 + 104) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      [*(*(*(a1 + 96) + 8) + 40) setObject:*(*(*(a1 + 104) + 8) + 40) forKeyedSubscript:@"shares"];
    }

    [*(*(*(a1 + 104) + 8) + 40) addObject:v3];
    [*(a1 + 32) addObject:v3];
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    v19 = [NSString stringWithFormat:@"%@", v3];
    v20 = [NSString stringWithFormat:@"%@%@", *(a1 + 88), v3];
    LODWORD(v25) = 1;
    v21 = [v15 internalAddShare:v3 server:v16 password:v17 service:v18 displayName:v19 storageName:v20 existingTags:0 flags:v25];

    if (v21)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100059AC0((a1 + 80));
      }

      v22 = *(*(a1 + 112) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
      v24 = v21;
    }

    else
    {
      ++*(*(*(a1 + 120) + 8) + 24);
    }
  }
}

void sub_100035B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_100035BB4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"user"];
  v9 = [v7 objectForKeyedSubscript:@"storageName"];
  if ([v9 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      v11 = 136315906;
      v12 = "[SMBClientdSettings removeServer:]_block_invoke";
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s [%@]Matching server entry: %@ user: %@", &v11, 0x2Au);
    }
  }
}

void sub_100035EE8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v4 = *(a1 + 32);
  v5 = [a2 objectForKeyedSubscript:LiveFSMounterMountedOnKey];
  [v4 addObject:v5];
}

void sub_100035F50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Got server %@", buf, 0xCu);
  }

  v7 = v5;
  v23 = [v6 objectForKeyedSubscript:@"mountNumber"];
  v8 = [v6 objectForKeyedSubscript:@"shares"];
  v9 = [v6 objectForKeyedSubscript:@"storageName"];
  v10 = [v6 objectForKeyedSubscript:@"user"];
  v11 = [v6 objectForKeyedSubscript:@"url"];
  v12 = [NSURL URLWithString:v11];
  v32 = 0;
  v13 = [SMBClientdKeychainUtilities getItemForIdentifier:v7 error:&v32];
  v14 = v32;
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100059CE8();
    }
  }

  else
  {
    v22 = v8;
    v15 = [[NSString alloc] initWithData:v13 encoding:4];
    v16 = [*(a1 + 32) addVolumeCluster:v9];
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100059D60();
      }
    }

    else
    {
      v18 = [SMBFPClient locallyBuildFPDomain:v9 displayName:v7 provider:@"com.apple.SMBClientProvider.FileProvider" how:1];
      if (!v18)
      {
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1000362B8;
        v24[3] = &unk_10008E288;
        v19 = v12;
        v21 = *(a1 + 32);
        v20 = *(a1 + 40);
        v25 = v19;
        v26 = v20;
        v27 = v15;
        v28 = v21;
        v29 = v7;
        v30 = v9;
        v31 = *(a1 + 48);
        v15 = v15;
        [v8 enumerateObjectsUsingBlock:v24];

        goto LABEL_13;
      }

      v17 = v18;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100059DD8();
      }
    }

    v8 = v22;
  }

LABEL_13:
}