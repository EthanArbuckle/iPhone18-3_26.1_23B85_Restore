void sub_100001F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_sync_exit(v19);
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001F30(id *a1)
{
  if ([a1[4] isEqualToString:@"requestAssessmentMode"] && (v2 = objc_loadWeakRetained(a1 + 6), objc_msgSend(v2, "delegate"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_opt_respondsToSelector(), v3, v2, (v4 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v5 = [WeakRetained delegate];
    v6 = [a1[5] original];
    [v5 device:v6 didRequestOperationMode:1];
  }

  else
  {
    if (![a1[4] isEqualToString:@"requestSuiteFinish"])
    {
      return;
    }

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v5 = [WeakRetained delegate];
    v6 = [a1[5] original];
    [v5 device:v6 didRequestSuiteFinishWithCompletionHandler:0];
  }
}

void sub_10000242C(uint64_t a1)
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Syncing Device State: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) messenger];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) destination];
  [v4 sendMessage:@"deviceState" data:v5 toDestination:v6 forceLocalDelivery:1 expectsResponse:0 response:&stru_10001C5C8];
}

void sub_100002538(id a1, BOOL a2, NSError *a3, NSString *a4, DAIDSMessageObject *a5)
{
  v5 = a2;
  v6 = DiagnosticLogHandleForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Synced device state.", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10000D95C(v7);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[DDMain sharedInstance];
  v2 = objc_alloc_init(DDXPCServiceDelegate);
  v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.iosdiagnosticsd"];
  [v3 setDelegate:v2];
  [v3 resume];
  v4 = +[NSRunLoop currentRunLoop];
  [v4 run];

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_1000031A0(id a1)
{
  qword_100026390 = objc_alloc_init(DADeviceConnectionConfigurator);

  _objc_release_x1();
}

void sub_1000038AC(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  qword_1000263A0 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_100003F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003F78(uint64_t a1)
{
  v2 = +[DDMain sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 removeConnection:WeakRetained];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 serviceName];
  v6 = v5;
  v7 = @"com.apple.iosdiagnosticsd";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [NSError errorWithDomain:v8 code:0 userInfo:0];

  [DSAnalytics sendAnalyticsWithEvent:3 error:v9];
}

void sub_100004064(uint64_t a1)
{
  v2 = +[DDMain sharedInstance];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v2 removeConnection:WeakRetained];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 serviceName];
  v6 = v5;
  v7 = @"com.apple.iosdiagnosticsd";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [NSError errorWithDomain:v8 code:0 userInfo:0];

  [DSAnalytics sendAnalyticsWithEvent:4 error:v9];
}

void sub_1000044CC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000DB70();
  }

  [DSAnalytics sendAnalyticsWithEvent:5 error:v2];
}

void sub_100004618(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000DBF0();
  }

  [DSAnalytics sendAnalyticsWithEvent:5 error:v2];
}

void sub_100004958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_sync_exit(v20);
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004988(uint64_t a1)
{
  v2 = [*(a1 + 32) messageReceiverQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004AA0;
  v9[3] = &unk_10001C7D0;
  objc_copyWeak(&v12, (a1 + 72));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v13 = *(a1 + 80);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  dispatch_async(v2, v9);

  objc_destroyWeak(&v12);
}

void sub_100004AA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained receiver];
  [v2 receiveMessage:*(a1 + 32) data:*(a1 + 40) fromDestination:*(a1 + 48) expectsResponse:*(a1 + 72) response:*(a1 + 56)];
}

void sub_100004DCC(id a1)
{
  v1 = [NSError errorWithDomain:@"com.apple.iosdiagnosticsd" code:0 userInfo:0];
  [DSAnalytics sendAnalyticsWithEvent:3 error:v1];
}

void sub_100004E40(id a1)
{
  v1 = [NSError errorWithDomain:@"com.apple.iosdiagnosticsd" code:0 userInfo:0];
  [DSAnalytics sendAnalyticsWithEvent:4 error:v1];
}

void sub_100004EF8(id a1)
{
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  qword_1000263B0 = [NSSet setWithObjects:v13, v12, v11, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0];

  _objc_release_x1();
}

void sub_10000522C(id a1)
{
  qword_1000263C0 = objc_alloc_init(DDMain);

  _objc_release_x1();
}

void sub_100005660(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unionSet:a2];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) copy];
  (*(v3 + 16))(v3, v4);
}

void sub_100005CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_sync_exit(v20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005D28(id a1, NSError *a2)
{
  v2 = a2;
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10000DD10(v2, v3);
  }

  [DSAnalytics sendAnalyticsWithEvent:5 error:v2];
}

void sub_100005D94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained receiveMessage:*(a1 + 32) data:*(a1 + 40) fromDestination:*(a1 + 48) expectsResponse:*(a1 + 72) response:*(a1 + 56)];
}

void sub_100006478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000064C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000064D8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [*(a1 + 32) purgeSecurityKey];
    [*(a1 + 32) setDeviceIdentityKey:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "referenceKey")}];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  else
  {
    [*(a1 + 32) setDeviceIdentityKey:a2];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100007474(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = objc_opt_new();
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100007558;
  v6[3] = &unk_10001C940;
  v9 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  v7 = *(a1 + 32);
  [v2 issueClientCertificateWithCompletionOnQueue:0 withOptions:v3 completion:v6];
}

void sub_100007558(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (!a2)
  {
    v16 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000E17C();
    }

    v14 = (*(*(a1 + 56) + 8) + 40);
    v15 = a4;
    goto LABEL_9;
  }

  v10 = [v8 certificates];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 certificates];
    if ([v12 count] == 2)
    {
      v13 = [v8 referenceKey];

      if (v13)
      {
        v14 = (*(*(a1 + 48) + 8) + 40);
        v15 = a3;
LABEL_9:
        objc_storeStrong(v14, v15);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v17 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10000E1E4();
  }

LABEL_14:
  v18 = *(*(*(a1 + 48) + 8) + 40);
  v19 = *(*(*(a1 + 56) + 8) + 40);
  (*(*(a1 + 40) + 16))();
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000076EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100007714(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100007730(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000077A8(id a1)
{
  qword_1000263D0 = objc_alloc_init(DAPlatform_iOS_NonUI);

  _objc_release_x1();
}

void sub_100007A8C(id a1)
{
  v1 = objc_alloc_init(MIBUClient);
  v9 = 0;
  v2 = [v1 isInBoxUpdateMode:&v9];
  v3 = v9;
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "In-box update mode is active.", v8, 2u);
    }

    byte_1000263E0 = 1;
  }

  else if (v3)
  {
    v6 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000E240(v4, v6);
    }
  }
}

void sub_10000A134(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"info";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"com.apple.Diagnostics.deviceStateChangedNotification" object:v4 userInfo:v5];
}

void sub_10000C4C8(uint64_t a1)
{
  [*(a1 + 32) setIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) messageStorage];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_10000CC88(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [DDIDSOutgoingMessage alloc];
  v8 = [*(a1 + 32) destination];
  v9 = [(DDIDSOutgoingMessage *)v7 initWithDestination:v8 message:v6 data:v5];

  v10 = [*(a1 + 40) outgoingResponseIdentifier];
  [(DDIDSOutgoingMessage *)v9 setPeerResponseIdentifier:v10];

  v11 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(DDIDSOutgoingMessage *)v9 peerResponseIdentifier];
    v13 = *(a1 + 48);
    v14 = 138412802;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] > Responding to message: %@, with message: %@", &v14, 0x20u);
  }

  [*(a1 + 56) _sendIDSMessage:v9];
}

void sub_10000D9A0(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error: could not archive object [%@]", &v4, 0xCu);
}

void sub_10000DA38(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 objectForKeyedSubscript:@"class"];
  v6 = [a2 localizedDescription];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error: could not unarchive object of type %@, Reason: [%@]", &v7, 0x16u);
}

void sub_10000DB70()
{
  v1[0] = 136315394;
  sub_100005130();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", v1, 0x16u);
}

void sub_10000DBF0()
{
  v1[0] = 136315394;
  sub_100005130();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s Failed to retrieve remote object proxy: %@", v1, 0x16u);
}

void sub_10000DC98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received an unknown message: %@", &v2, 0xCu);
}

void sub_10000DD10(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get remote object proxy with error: %@", &v2, 0xCu);
}

void sub_10000DF68(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  sub_10000774C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create file handle from file at path = %@.", v4, 0xCu);
}

void sub_10000E240(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get in-box update mode status with error: %@", &v4, 0xCu);
}

void sub_10000E2D8(void *a1)
{
  v1 = [a1 identifier];
  sub_10000D1D4();
  sub_10000D1E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10000E380(void *a1)
{
  v1 = [a1 identifier];
  sub_10000D1D4();
  sub_10000D1E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10000E41C(void *a1)
{
  v1 = [a1 outgoingResponseIdentifier];
  sub_10000D1D4();
  sub_10000D1E8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}