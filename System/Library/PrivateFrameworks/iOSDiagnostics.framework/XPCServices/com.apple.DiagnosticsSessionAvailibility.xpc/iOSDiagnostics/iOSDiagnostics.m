void sub_100001678(id a1)
{
  v1 = dispatch_queue_create("com.apple.Diagnostics.airpodsObservationQueue", 0);
  v2 = qword_10001C308;
  qword_10001C308 = v1;

  v3 = qword_10001C308;

  [BluetoothManager setSharedInstanceQueue:v3];
}

void sub_1000016D0(uint64_t a1)
{
  v2 = +[BluetoothManager sharedInstance];
  [*(a1 + 32) setBtManager:v2];
}

void sub_1000017C8(uint64_t a1)
{
  v2 = [*(a1 + 32) btManager];
  if (!v2 || (v3 = v2, [*(a1 + 32) btManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "available"), v4, v3, (v5 & 1) == 0))
  {
    v6 = [*(a1 + 32) btManagerAvailableSemaphore];
    v7 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v6, v7);
  }

  [*(a1 + 32) _ensureInitialDevicesFetched];
  [*(a1 + 32) _updateHandlers];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) devices];
  (*(v8 + 16))(v8, v9);
}

id sub_100001994(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = objc_retainBlock(v2);
  v4 = [*(a1 + 32) handlers];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _beginObserving];
}

void sub_100001AC0(uint64_t a1)
{
  v2 = [*(a1 + 32) handlers];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) handlers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 _endObserving];
  }
}

void sub_100002A64(uint64_t a1)
{
  if (NSClassFromString(@"DADeviceLocal"))
  {
    v2 = objc_opt_new();
  }

  else
  {
    v3 = MGCopyAnswer();
    v6 = [[DADeviceRepresentation alloc] initWithSerialNumber:v3 isLocal:1 attributes:&__NSDictionary0__struct];

    v2 = v6;
  }

  v4 = *(a1 + 32);
  v7 = v2;
  v5 = [NSSet setWithObject:v2];
  (*(v4 + 16))(v4, v5);
}

void sub_100002EA4(id a1)
{
  qword_10001C310 = objc_alloc_init(DANvramUtil);

  _objc_release_x1();
}

void sub_100003478(id a1)
{
  v1 = [NSError errorWithDomain:@"com.apple.DiagnosticsSessionAvailibility" code:0 userInfo:0];
  [DSAnalytics sendAnalyticsWithEvent:3 error:v1];
}

void sub_1000034EC(id a1)
{
  v1 = [NSError errorWithDomain:@"com.apple.DiagnosticsSessionAvailibility" code:0 userInfo:0];
  [DSAnalytics sendAnalyticsWithEvent:4 error:v1];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v3, &stru_100014678);
  dispatch_activate(v3);
  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

void sub_1000036CC(id a1)
{
  v1 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Received SIGTERM, exiting the process", v2, 2u);
  }

  exit(0);
}

void sub_100003B7C(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchDevices];
  (*(*(a1 + 40) + 16))();
}

id sub_100003CC8(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  v3 = objc_retainBlock(v2);
  v4 = [*(a1 + 32) handlers];
  [v4 setObject:v3 forKeyedSubscript:*(a1 + 40)];

  v5 = *(a1 + 32);

  return [v5 _beginObserving];
}

void sub_100003DF4(uint64_t a1)
{
  v2 = [*(a1 + 32) handlers];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) handlers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 _endObserving];
  }
}

void sub_1000042B0(uint64_t a1)
{
  v2 = [*(a1 + 32) devices];
  v12 = [v2 copy];

  v3 = [*(a1 + 32) _fetchDevices];
  v4 = [*(a1 + 32) devices];
  v5 = [v4 mutableCopy];

  [v5 minusSet:v3];
  v6 = [v3 mutableCopy];
  v7 = [*(a1 + 32) devices];
  [v6 minusSet:v7];

  v8 = [*(a1 + 32) devices];
  [v8 minusSet:v5];

  v9 = [*(a1 + 32) devices];
  [v9 unionSet:v6];

  v10 = [*(a1 + 32) devices];
  v11 = [v12 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    [*(a1 + 32) _updateHandlers];
  }
}

void sub_1000047F0(id a1)
{
  qword_10001C320 = [NSSet setWithObjects:@"Accessory.SmartBatteryCase", 0];

  _objc_release_x1();
}

void sub_100004F00(id a1)
{
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  qword_10001C330 = [NSSet setWithObjects:v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0];

  _objc_release_x1();
}

id sub_100005574(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1000055A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = DiagnosticLogHandleForCategory();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking for Enhanced Logging Session response", buf, 2u);
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10000571C;
      v8[3] = &unk_100014738;
      v6 = *(a1 + 32);
      v8[4] = WeakRetained;
      v8[5] = v6;
      [WeakRetained checkEnhancedLoggingStateWithReply:v8];
      xpc_transaction_exit_clean();
    }

    else
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No reply completion is present in dispatch block for checkAvailabilityWithReply", buf, 2u);
      }
    }
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Lost reference to self when entering dispatch block for checkAvailabilityWithReply", buf, 2u);
    }
  }
}

void sub_10000571C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DiagnosticLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending ELSResponse %@ in reply to checkAvailabilityWithReply", &v8, 0xCu);
    }

    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No ELS response. Getting session ID", &v8, 2u);
    }

    v6 = [*(a1 + 32) getSessionID];
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session ID is %@, sending in reply to checkAvailabilityWithReply", &v8, 0xCu);
    }

    (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  }
}

void sub_100005A8C(uint64_t a1)
{
  v2 = [*(a1 + 32) serialNumbers];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [ASTIdentity identityWithSerialNumber:*(*(&v18 + 1) + 8 * v8)];
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v6);
  }

  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Checking for sessions with identities %@", buf, 0xCu);
  }

  v11 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005CD4;
  v14[3] = &unk_1000147B0;
  v15 = v4;
  v12 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  v13 = v4;
  [ASTSession sessionStatusForIdentities:v3 ticketNumber:v12 timeout:v14 completionHandler:v11];
}

void sub_100005CD4(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000B7F8(a1, v8, v9);
    }
  }

  (*(*(a1 + 40) + 16))();
  v10 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v12[0] = 67109120;
    v12[1] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Complete with check for session... exitWhenDone: %d", v12, 8u);
  }

  if (*(a1 + 48) == 1)
  {
    xpc_transaction_exit_clean();
  }
}

void sub_100006204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100006238(uint64_t a1, int a2)
{
  v4 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checkAvailabilityWithTicketNumber finished. Success: %d", v6, 8u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10000640C(uint64_t a1, void *a2)
{
  [a2 status];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_100006724(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000067BC;
  v4[3] = &unk_100014870;
  v5 = *(a1 + 32);
  [a2 enumerateObjectsUsingBlock:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000067BC(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 state];
  if (v3)
  {
    v4 = v3;
    v5 = [v12 state];
    v6 = [v5 serialNumber];
    if (v6)
    {
      v7 = v6;
      v8 = [v12 state];
      v9 = [v8 serialNumber];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      v11 = *(a1 + 32);
      v4 = [v12 state];
      v5 = [v4 serialNumber];
      [v11 addObject:v5];
    }
  }

LABEL_6:
}

void sub_1000086F0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = @"info";
  v7 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"com.apple.Diagnostics.deviceStateChangedNotification" object:v4 userInfo:v5];
}

void sub_100009668(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_nanoRegistryDevicePaired:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_nanoRegistryDeviceUnpaired:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
}

void sub_1000097D4(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  if (v3)
  {
    v4 = [*(a1 + 40) _createDeviceWithNanoDevice:v3];
    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 state];
        v7 = [v6 serialNumber];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Nano device connected", &v9, 0xCu);
      }

      v8 = [*(a1 + 40) devices];
      [v8 addObject:v4];

      [*(a1 + 40) _updateHandlers];
    }
  }
}

void sub_1000099D8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];

  if (v3)
  {
    v4 = [*(a1 + 40) _createDeviceWithNanoDevice:v3];
    if (v4)
    {
      v5 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v4 state];
        v7 = [v6 serialNumber];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Nano device disconnected", &v9, 0xCu);
      }

      v8 = [*(a1 + 40) devices];
      [v8 removeObject:v4];

      [*(a1 + 40) _updateHandlers];
    }
  }
}

void sub_100009CAC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

void sub_100009D8C(uint64_t a1)
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = [v2 getPairedDevices];

  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
  v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];

  if ([v6 count])
  {
    v7 = [v3 arrayByAddingObjectsFromArray:v6];

    v3 = v7;
  }

  v25 = v6;
  v8 = [*(a1 + 32) devices];
  v9 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v8 count]);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(a1 + 32) _createDeviceWithNanoDevice:*(*(&v26 + 1) + 8 * i)];
        v16 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 state];
          v18 = [v17 serialNumber];
          *buf = 138412290;
          v31 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Nano device connected", buf, 0xCu);
        }

        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v12);
  }

  v19 = [*(a1 + 32) devices];
  v20 = [v19 mutableCopy];

  [v20 minusSet:v9];
  v21 = [v9 mutableCopy];
  v22 = [*(a1 + 32) devices];
  [v21 minusSet:v22];

  v23 = [*(a1 + 32) devices];
  [v23 minusSet:v20];

  v24 = [*(a1 + 32) devices];
  [v24 unionSet:v21];

  [*(a1 + 32) _updateHandlers];
}

void sub_10000A4D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "New devices: %@", &v7, 0xCu);
  }

  [WeakRetained setDevices:v3];
  v6 = [WeakRetained delegate];
  [v6 observerDidChangeDevices:WeakRetained];
}

void sub_10000A738(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000A75C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDevices:v3];
  v4 = [WeakRetained delegate];
  [v4 observerDidChangeDevices:WeakRetained];

  (*(*(a1 + 32) + 16))();
}

void sub_10000AEE0(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  v3 = dispatch_group_create();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = a1;
  v4 = [*(a1 + 32) observers];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        dispatch_group_enter(v3);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10000B0AC;
        v11[3] = &unk_100014898;
        v12 = v2;
        v13 = v3;
        [v9 oneshotWithHandler:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  (*(*(v10 + 40) + 16))();
}

void sub_10000B0AC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  v5 = [v6 allObjects];
  [v4 addObjectsFromArray:v5];

  objc_sync_exit(v3);
  dispatch_group_leave(*(a1 + 40));
}

void sub_10000B61C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No serial numbers are present for paired airpods device %@", &v2, 0xCu);
}

void sub_10000B6BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to add Bluetooth device: %@", &v2, 0xCu);
}

void sub_10000B7F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Session does not exist for serial numbers: %@, error: %@", &v4, 0x16u);
}