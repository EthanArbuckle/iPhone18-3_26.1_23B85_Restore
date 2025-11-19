void sub_100001174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, id a27)
{
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

id sub_1000011C4()
{
  if (qword_10000C910 != -1)
  {
    dispatch_once(&qword_10000C910, &stru_1000081B8);
  }

  v1 = qword_10000C908;

  return v1;
}

void sub_100001218(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4 = sub_1000011C4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICSharedListeningService: %p: invalidated.", &v8, 0xCu);
    }

    if (v3)
    {
      v5 = sub_1000011C4();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 xpcConnection];
        v8 = 134218242;
        v9 = WeakRetained;
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICSharedListeningService: %p: Removing controller for connection %@.", &v8, 0x16u);
      }

      v7 = [a1[4] controllers];
      [v7 removeObject:v3];
    }
  }
}

void sub_100001380(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4 = sub_1000011C4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICSharedListeningService: %p: connection interrupted.", &v8, 0xCu);
    }

    if (v3)
    {
      v5 = sub_1000011C4();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 xpcConnection];
        v8 = 134218242;
        v9 = WeakRetained;
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICSharedListeningService: %p: Removing controller for connection %@.", &v8, 0x16u);
      }

      v7 = [a1[4] controllers];
      [v7 removeObject:v3];
    }
  }
}

void sub_1000014E8(id a1)
{
  qword_10000C908 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = sub_1000011C4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "ICSharedListeningService starting.", v6, 2u);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v1 = qword_10000C918;
  v10 = qword_10000C918;
  if (!qword_10000C918)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100001754;
    v6[3] = &unk_1000082D8;
    v6[4] = &v7;
    sub_100001754(v6);
    v1 = v8[3];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);
  v3 = +[NSXPCListener serviceListener];
  v4 = objc_opt_new();
  [v3 setDelegate:v4];
  [v3 resume];

  return 0;
}

void sub_10000173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001754(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_10000C920)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100001940;
    v6[4] = &unk_100008310;
    v6[5] = v6;
    v7 = off_1000081D8;
    v8 = 0;
    qword_10000C920 = _sl_dlopen();
  }

  if (!qword_10000C920)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *iTunesCloudLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"main.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ICLiveLinkIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getICLiveLinkIdentityClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"main.m" lineNumber:24 description:{@"Unable to find class %s", "ICLiveLinkIdentity"}];

LABEL_10:
    __break(1u);
  }

  qword_10000C918 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100001940(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C920 = result;
  return result;
}

void sub_100001DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001DE0(uint64_t a1)
{
  sub_100001EA8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_ICLLProtocolMessage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000C948 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class get_ICLLProtocolMessageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICHostedSharedListeningConnectionController.m" lineNumber:22 description:{@"Unable to find class %s", "_ICLLProtocolMessage"}];

    __break(1u);
  }
}

void sub_100001EA8()
{
  v3[0] = 0;
  if (!qword_10000C940)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100001FF8;
    v3[4] = &unk_100008310;
    v3[5] = v3;
    v4 = off_1000082F8;
    v5 = 0;
    qword_10000C940 = _sl_dlopen();
  }

  if (!qword_10000C940)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *iTunesCloudLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICHostedSharedListeningConnectionController.m" lineNumber:19 description:{@"%s", v3[0]}];

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

uint64_t sub_100001FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000C940 = result;
  return result;
}

id sub_100002168()
{
  if (qword_10000C930 != -1)
  {
    dispatch_once(&qword_10000C930, &stru_1000082B0);
  }

  v1 = qword_10000C928;

  return v1;
}

void sub_1000021BC(id a1)
{
  qword_10000C928 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");

  _objc_release_x1();
}

void sub_100002400(uint64_t a1)
{
  sub_100001EA8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICSharedListeningConnectionController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10000C938 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getICSharedListeningConnectionControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICHostedSharedListeningConnectionController.m" lineNumber:20 description:{@"Unable to find class %s", "ICSharedListeningConnectionController"}];

    __break(1u);
  }
}