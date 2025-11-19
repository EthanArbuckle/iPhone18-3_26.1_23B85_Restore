uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(WLDaemonListener);
  [(WLDaemonListener *)v1 start];
  CFRunLoopRun();

  objc_autoreleasePoolPop(v0);
  return 1;
}

void sub_1000016B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000016D0(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
    if (string)
    {
      v4 = string;
      if (!strcasecmp([BYSetupAssistantExitedDarwinNotification UTF8String], string) || !strcasecmp("com.apple.welcomekitinternalsettings.dismissed", v4))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        [WeakRetained _buddyDidFinish];
      }
    }
  }
}

void sub_100001A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001A38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stop:*(a1 + 32)];
}

void sub_100001C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_sync_exit(v17);
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001C54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001C6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[WLDeviceDiscoveryController sharedInstance];
  v4 = [WeakRetained code];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001D64;
  v8[3] = &unk_1000082E0;
  v9 = WeakRetained;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = WeakRetained;
  [v3 startWiFiAndDeviceDiscoveryWithPreGeneratedCode:v4 completion:v8];

  [v7 setPairingBlock:0];
}

void sub_100001D64(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [*(a1 + 32) server];
  [v16 setPreferredChannel:a6];

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v20, v13, v14, a6, v15);
  }

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;
}

void sub_100001F58(uint64_t a1)
{
  v2 = +[WLDeviceDiscoveryController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002000;
  v5[3] = &unk_100008330;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 stopDeviceDiscoveryWithCompletion:v5];
}

void sub_100002000(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100002158(uint64_t a1)
{
  v2 = +[WLDeviceDiscoveryController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002200;
  v5[3] = &unk_100008330;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 stopWiFiAndDeviceDiscoveryWithCompletion:v5];
}

void sub_100002200(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100002358(uint64_t a1)
{
  v2 = +[WLDeviceDiscoveryController sharedInstance];
  v5 = [v2 sourceDevice];

  (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_10000247C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[WLDeviceDiscoveryController sharedInstance];
    (*(v1 + 16))(v1, [v2 supportsLocalImport], +[WLMigrator stashDataLocally](WLMigrator, "stashDataLocally"), 0);
  }
}

void sub_100002520(id a1)
{
  v1 = +[WLDeviceDiscoveryController sharedInstance];
  [v1 importLocalContent];
}

void sub_100002684(uint64_t a1)
{
  v2 = +[WLDeviceDiscoveryController sharedInstance];
  [v2 attemptDirectConnectionToAddress:*(a1 + 32)];
}

void sub_100002920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002948(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000029C4;
  v6[3] = &unk_100008430;
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 56);
  return [v2 startMigrationWithSourceDevice:v1 usingRetryPolicies:v3 delegate:v4 completion:v6];
}

uint64_t sub_1000029C4(uint64_t a1)
{
  _WLLog();
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  _WLLog();

  return xpc_transaction_exit_clean();
}

void sub_100002B24(uint64_t a1)
{
  +[MKAPIServer clean];
  v2 = objc_alloc_init(WLMigrator);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100002BC0;
  v3[3] = &unk_100008430;
  v3[4] = *(a1 + 32);
  [v2 close:v3];
}

uint64_t sub_100002BC0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;

  _WLLog();

  return xpc_transaction_exit_clean();
}

void sub_100002CF8(uint64_t a1)
{
  v4 = objc_alloc_init(WLMigrator);
  [v4 deleteMessages];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  _WLLog();
  xpc_transaction_exit_clean();
}

void sub_100002EA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _run:*(a1 + 32) transaction:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_10000307C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}