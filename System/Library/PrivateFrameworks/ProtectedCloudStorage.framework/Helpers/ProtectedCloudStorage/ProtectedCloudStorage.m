void sub_100001654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000016C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained syncUserRegistry];
}

void sub_100001708(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setupSubscriptions];
}

void sub_100001A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_100001A6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001A84(uint64_t a1)
{
  [*(a1 + 32) _onqueueSaveUserRegistryStats];
  [*(a1 + 32) setStats_dirty:0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_100001B1C(id a1)
{
  v1 = objc_alloc_init(CKOperationConfiguration);
  v2 = qword_1000406F0;
  qword_1000406F0 = v1;

  [qword_1000406F0 setTimeoutIntervalForResource:120.0];
  v3 = qword_1000406F0;

  [v3 setIsCloudKitSupportOperation:1];
}

void sub_100001C04(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 accountStatus];
  v8 = [v6 deviceToDeviceEncryptionAvailability];

  v9 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "accountInfoWithCompletionHandler: %d/%d error: %@", v16, 0x18u);
  }

  if (v7 == 1 && (v8 & 1) != 0)
  {
    v10 = [*(a1 + 32) stats];
    v11 = [v10 lastfetchRecordZoneChangesAtStart] + 86400;
    v12 = time(0);

    if (v11 <= v12)
    {
      v13 = [*(a1 + 32) oslog];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting to sync", v16, 2u);
      }

      v14 = [*(a1 + 32) syncUserRegistry];
    }
  }

  else if (v7 == 3)
  {
    v15 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Stoping syncing", v16, 2u);
    }
  }
}

void sub_100001FE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100001FFC(uint64_t a1)
{
  v2 = [*(a1 + 32) container];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000020B8;
  v3[3] = &unk_100038BE0;
  objc_copyWeak(&v4, (a1 + 40));
  [v2 serverPreferredPushEnvironmentWithCompletionHandler:v3];

  objc_destroyWeak(&v4);
}

void sub_1000020B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [APSConnection alloc];
  v5 = APSConnectionOverrideNamedDelegatePort;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained queue];
  v8 = [v4 initWithEnvironmentName:v3 namedDelegatePort:v5 queue:v7];

  v9 = qword_100040700;
  qword_100040700 = v8;

  v10 = objc_loadWeakRetained((a1 + 32));
  [qword_100040700 setDelegate:v10];

  v11 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.protectedcloudstorage.protectedcloudkeysyncing"];
  v13 = v11;
  v12 = [NSArray arrayWithObjects:&v13 count:1];
  [qword_100040700 _setEnabledTopics:v12];
}

void sub_100002654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000026B0(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 getConfigData:@"doneSubscription"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100002720(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained oslog];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Couldn't create database subscription; syncing is severely degraded: %@", buf, 0xCu);
    }

    v9 = [WeakRetained queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002988;
    v11[3] = &unk_100038C58;
    v11[4] = WeakRetained;
    dispatch_sync(v9, v11);

    [WeakRetained checkErrorForRetryPause:v5];
    v10 = [WeakRetained subscribeAction];
    [v10 trigger];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "subscription completed", buf, 2u);
    }

    v10 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002908;
    block[3] = &unk_100038C58;
    block[4] = WeakRetained;
    dispatch_sync(v10, block);
  }
}

void sub_100002908(uint64_t a1)
{
  v2 = [*(a1 + 32) userdb];
  v1 = [NSData dataWithBytes:"done" length:4];
  [v2 replaceConfigRecord:@"doneSubscription" data:v1];
}

void sub_100002988(uint64_t a1)
{
  v1 = [*(a1 + 32) userdb];
  [v1 deleteRecordID:@"doneSubscription"];
}

void sub_100002C1C(uint64_t a1)
{
  [*(a1 + 32) _onqueueDeleteServerChangeToken:@"serverChangeToken"];
  [*(a1 + 32) _onqueueDeleteServerChangeToken:@"MBserverChangeToken"];
  v2 = [*(a1 + 32) userdb];
  [v2 deleteRecordID:@"doneSubscription"];
}

void sub_100002C94(uint64_t a1)
{
  v2 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Creating resyncing operation, finishing with %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) createPendingSyncOperation:*(a1 + 40)];
  [*(a1 + 32) setCurrentSyncOperations:v4];
  v5 = [*(a1 + 32) mainOperationQueue];
  v6 = [v4 actualOperation];
  [v5 addOperation:v6];
}

void sub_100003254(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 144));
  _Unwind_Resume(a1);
}

void sub_1000032AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained oslog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 recordName];
      v14 = [v7 zoneID];
      v20 = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "received new record(%@) for: %@", &v20, 0x16u);
    }

    if (v9)
    {
      v15 = [v11 oslog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Got CloudKit error: %@", &v20, 0xCu);
      }

LABEL_11:

      goto LABEL_12;
    }

    v16 = [v7 zoneID];
    v17 = [v11 mobileBackupRecordZoneID];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      v15 = [v11 oslog];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 zoneID];
        v20 = 138412290;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "got update for unknown zone: %@", &v20, 0xCu);
      }

      goto LABEL_11;
    }

    [v11 saveEscrowChange:v8];
  }

LABEL_12:
}

void sub_1000034E8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 recordName];
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Record deleted: %@", &v13, 0xCu);
    }

    v8 = [v3 zoneID];
    v9 = [v5 mobileBackupRecordZoneID];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      [v5 deleteEscrowID:v3];
    }

    else
    {
      v11 = [v5 oslog];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v3 zoneID];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "got delete for unknown zone: %@", &v13, 0xCu);
      }
    }
  }
}

void sub_100003684(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    if (v11)
    {
      v14 = [v11 domain];
      v15 = [v14 isEqualToString:CKErrorDomain];

      v16 = [v13 oslog];
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v22 = 138412546;
          v23 = v11;
          v24 = 2112;
          v25 = v9;
          v18 = "Got CloudKit error while fetching: %@ for zone:%@";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, &v22, 0x16u);
        }
      }

      else if (v17)
      {
        v22 = 138412546;
        v23 = v11;
        v24 = 2112;
        v25 = v9;
        v18 = "Got other error: %@for zone:%@";
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    v19 = [WeakRetained oslog];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Finished fetching changes for %@ with change token %@", &v22, 0x16u);
    }

    if (v10)
    {
      v20 = [v13 mobileBackupRecordZoneID];
      v21 = [v9 isEqual:v20];

      if (v21)
      {
        [v13 saveServerChangeToken:v10 forKey:@"MBserverChangeToken"];
      }
    }
  }

LABEL_15:
}

void sub_100003890(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [WeakRetained oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetchRecordzoneChangesCompletionBlock error: %@", buf, 0xCu);
    }
  }

  v7 = [v5 stats];
  [v7 setFetchRecordZoneChanges:{objc_msgSend(v7, "fetchRecordZoneChanges") + 1}];

  [v5 flushStats];
  v8 = [v5 oslog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished fetching changes with error: %@", buf, 0xCu);
  }

  [*(a1 + 32) setError:v3];
  v9 = [v5 mainOperationQueue];
  [v9 addOperation:*(a1 + 32)];

  if (!v3)
  {
    v10 = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003A74;
    block[3] = &unk_100038C58;
    block[4] = v5;
    dispatch_sync(v10, block);
  }
}

id sub_100003A74(uint64_t a1)
{
  v2 = time(0);
  v3 = [*(a1 + 32) stats];
  [v3 setLastfetchRecordZoneChangesAtStart:v2];

  v4 = *(a1 + 32);

  return [v4 _onqueueSaveUserRegistryStats];
}

void sub_100003D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingSyncOperations];

  v3 = [*(a1 + 32) oslog];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) pendingSyncOperations];
      v6 = [v5 finishOperation];
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Returning pending syncing operation: %@", &v24, 0xCu);
    }

    v7 = [*(a1 + 32) pendingSyncOperations];
    v8 = [v7 finishOperation];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    if (v4)
    {
      v11 = [*(a1 + 32) currentSyncOperations];
      v24 = 138412290;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating new syncing operation, after %@", &v24, 0xCu);
    }

    v12 = [*(a1 + 32) createPendingSyncOperation:0];
    [*(a1 + 32) setPendingSyncOperations:v12];

    v13 = [*(a1 + 32) currentSyncOperations];
    v14 = [v13 finishOperation];

    if (v14)
    {
      v15 = [*(a1 + 32) pendingSyncOperations];
      v16 = [v15 actualOperation];
      v17 = [*(a1 + 32) currentSyncOperations];
      v18 = [v17 finishOperation];
      [v16 addDependency:v18];
    }

    v19 = [*(a1 + 32) pendingSyncOperations];
    v20 = [v19 finishOperation];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v7 = [*(a1 + 32) mainOperationQueue];
    v10 = [*(a1 + 32) pendingSyncOperations];
    v23 = [v10 actualOperation];
    [v7 addOperation:v23];
  }
}

void sub_1000042B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, char a20)
{
  _Block_object_dispose(&a20, 8);
  objc_destroyWeak((v20 - 104));
  _Unwind_Resume(a1);
}

void sub_100004328(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 oslog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning syncing operation %@", &buf, 0xCu);
  }

  if (*(a1 + 64) == 1)
  {
    v5 = [v3 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004CE8;
    block[3] = &unk_100038C58;
    block[4] = v3;
    dispatch_sync(v5, block);

    v6 = *(a1 + 32);
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100004DD8;
    v62[3] = &unk_100038D70;
    objc_copyWeak(&v63, (a1 + 56));
    objc_copyWeak(&v64, &location);
    objc_copyWeak(&v65, (a1 + 48));
    v62[4] = *(a1 + 40);
    [v6 addExecutionBlock:v62];
    objc_destroyWeak(&v65);
    objc_destroyWeak(&v64);
    objc_destroyWeak(&v63);
  }

  v7 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v77 = 0x3032000000;
  v78 = sub_100001A6C;
  v79 = sub_100001A7C;
  v80 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100001A6C;
  v60 = sub_100001A7C;
  v61 = 0;
  v8 = [v3 container];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100004EF4;
  v52[3] = &unk_100038D98;
  p_buf = &buf;
  v55 = &v56;
  v9 = v7;
  v53 = v9;
  [v8 accountInfoWithCompletionHandler:v52];

  v10 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    v11 = [NSError errorWithDomain:kPCSErrorDomain code:75 userInfo:0];
    [*(a1 + 32) setError:v11];

    v12 = [v3 mainOperationQueue];
    [v12 addOperation:*(a1 + 32)];
    goto LABEL_34;
  }

  if ([*(*(&buf + 1) + 40) accountStatus] == 1)
  {
    if ([*(*(&buf + 1) + 40) hasValidCredentials])
    {
      v13 = [v3 userdb];
      v12 = [v13 dsid];

      if (!v12 || ([v3 accounts], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "dsid"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v12, "isEqualToString:", v15), v15, v14, (v16 & 1) == 0))
      {
        v17 = [v3 accounts];
        v18 = [v17 dsid];

        if (!v18)
        {
          v39 = [v3 oslog];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v74 = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No DSID available. Quitting sync.", v74, 2u);
          }

          v40 = kPCSErrorDomain;
          v68 = NSLocalizedDescriptionKey;
          v69 = @"No iCloud account";
          v41 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          v42 = [NSError errorWithDomain:v40 code:66 userInfo:v41];
          [*(a1 + 32) setError:v42];

          v37 = [v3 mainOperationQueue];
          [v37 addOperation:*(a1 + 32)];
          goto LABEL_33;
        }

        v19 = [v3 queue];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100004F90;
        v50[3] = &unk_100038CA8;
        v50[4] = v3;
        v51 = v18;
        v20 = v18;
        dispatch_sync(v19, v50);
      }

      v21 = [v3 getServerChangeToken:@"MBserverChangeToken"];
      v22 = v21 == 0;

      if (v22)
      {
        v33 = [v3 oslog];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Creating zone before syncing", v74, 2u);
        }

        v34 = [v3 defaultCKConfiguration];
        v23 = [v3 createZone:v34 withName:@"PCSUserRegistryMobileBackup"];
      }

      else
      {
        v23 = 0;
      }

      v35 = objc_alloc_init(PCSRegistryOperation);
      v36 = v35;
      if (v23)
      {
        [(PCSRegistryOperation *)v35 addDependency:v23];
      }

      v43 = _NSConcreteStackBlock;
      v44 = 3221225472;
      v45 = sub_10000502C;
      v46 = &unk_100038DC0;
      objc_copyWeak(&v49, (a1 + 56));
      v37 = v23;
      v47 = v37;
      v48 = *(a1 + 32);
      [(PCSRegistryOperation *)v36 addExecutionBlock:&v43];
      v38 = [v3 mainOperationQueue];
      [v38 addOperation:v36];

      objc_destroyWeak(&v49);
LABEL_33:

      goto LABEL_34;
    }

    v30 = [v3 oslog];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v57[5];
      *v74 = 138412290;
      v75 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "iCloud account in grey mode (%@)", v74, 0xCu);
    }

    v32 = [NSError errorWithDomain:CKErrorDomain code:9 userInfo:0];
    [*(a1 + 32) setError:v32];

    v12 = [v3 mainOperationQueue];
    [v12 addOperation:*(a1 + 32)];
  }

  else
  {
    v24 = [v3 oslog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v57[5];
      *v74 = 138412290;
      v75 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Not logged into iCloud (%@)", v74, 0xCu);
    }

    v26 = v57[5];
    v27 = kPCSErrorDomain;
    if (v26)
    {
      v72[0] = NSLocalizedDescriptionKey;
      v72[1] = NSUnderlyingErrorKey;
      v73[0] = @"No iCloud account";
      v73[1] = v26;
      [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
    }

    else
    {
      v70 = NSLocalizedDescriptionKey;
      v71 = @"No iCloud account";
      [NSDictionary dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    }
    v28 = ;
    v29 = [NSError errorWithDomain:v27 code:66 userInfo:v28];
    [*(a1 + 32) setError:v29];

    v12 = [v3 mainOperationQueue];
    [v12 addOperation:*(a1 + 32)];
  }

LABEL_34:

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

void sub_100004C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  objc_destroyWeak((v29 - 248));
  _Unwind_Resume(a1);
}

id sub_100004CE8(uint64_t a1)
{
  v2 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) pendingSyncOperations];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "syncing operation (%@) no longer pending", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) pendingSyncOperations];
  [*(a1 + 32) setCurrentSyncOperations:v4];

  return [*(a1 + 32) setPendingSyncOperations:0];
}

void sub_100004DD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained oslog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 error];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished syncing operation %@: (%@)", &v9, 0x16u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100004EF4(uint64_t a1, void *a2, void *a3)
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

void sub_100004F90(uint64_t a1)
{
  [*(a1 + 32) _onqueueDeleteServerChangeToken:@"MBserverChangeToken"];
  v2 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Caching DSID from Accounts", v5, 2u);
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) userdb];
  [v4 setDsid:v3];
}

void sub_10000502C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = a1[4];
  if (v3 && ([v3 error], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [WeakRetained oslog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[4] error];
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Zone creation failed for some reason: (%@), stopping MobileBackup sync", buf, 0xCu);
    }

    v7 = [a1[4] error];
    [a1[5] setError:v7];

    v8 = [WeakRetained mainOperationQueue];
    [v8 addOperation:a1[5]];
  }

  else
  {
    v9 = [WeakRetained fetchAllChanges:0];
    v10 = objc_alloc_init(PCSRegistryOperation);
    [(PCSRegistryOperation *)v10 addDependency:v9];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000525C;
    v12[3] = &unk_100038DC0;
    objc_copyWeak(&v15, a1 + 6);
    v8 = v9;
    v13 = v8;
    v14 = a1[5];
    [(PCSRegistryOperation *)v10 addExecutionBlock:v12];
    v11 = [WeakRetained mainOperationQueue];
    [v11 addOperation:v10];

    objc_destroyWeak(&v15);
  }
}

void sub_10000525C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] error];

  if (v3)
  {
    v4 = [a1[4] error];
    [WeakRetained checkErrorForRetryPause:v4];

    v5 = [a1[4] error];
    v6 = [WeakRetained errorShouldCauseReset:v5];

    v7 = [WeakRetained oslog];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [a1[4] error];
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetch failed for some terrible reason: (%@), restarting entire sync process", buf, 0xCu);
      }

      [WeakRetained resyncDatabase:a1[5]];
    }

    else
    {
      if (v8)
      {
        v16 = [a1[4] error];
        *buf = 138412290;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching failed for some reason: (%@), scheduling sync restart", buf, 0xCu);
      }

      v17 = [WeakRetained resyncRegistryAction];
      [v17 trigger];

      v18 = [a1[4] error];
      [a1[5] setError:v18];

      v19 = [WeakRetained mainOperationQueue];
      [v19 addOperation:a1[5]];
    }
  }

  else
  {
    v10 = [WeakRetained mobileBackup];
    v11 = [v10 isBackupEnabled];

    if (v11)
    {
      v12 = [WeakRetained startBackupOfNewMobileBackupIdentities];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10000562C;
      v24[3] = &unk_100038DC0;
      objc_copyWeak(&v27, a1 + 6);
      v13 = v12;
      v25 = v13;
      v26 = a1[5];
      v14 = [NSBlockOperation blockOperationWithBlock:v24];
      v15 = v14;
      if (v13)
      {
        [v14 addDependency:v13];
      }

      else
      {
        v22 = [WeakRetained oslog];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No new items to push; finishing", buf, 2u);
        }
      }

      v23 = [WeakRetained mainOperationQueue];
      [v23 addOperation:v15];

      objc_destroyWeak(&v27);
    }

    else
    {
      v20 = [WeakRetained oslog];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MobileBackup is off; not pushing data to CloudKit", buf, 2u);
      }

      v21 = [WeakRetained mainOperationQueue];
      [v21 addOperation:a1[5]];
    }
  }
}

void sub_10000562C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained oslog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] error];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startBackupOfNewMobileBackupIdentities as part of syncing done: (%@)", &v12, 0xCu);
  }

  v5 = [a1[4] error];

  if (v5)
  {
    v6 = [WeakRetained oslog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[4] error];
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pushing new changes failed for some reason: (%@), scheduling retry", &v12, 0xCu);
    }

    v8 = [a1[4] error];
    [WeakRetained checkErrorForRetryPause:v8];

    v9 = [WeakRetained resyncRegistryAction];
    [v9 trigger];
  }

  v10 = [a1[4] error];
  [a1[5] setError:v10];

  v11 = [WeakRetained mainOperationQueue];
  [v11 addOperation:a1[5]];
}

void sub_1000059F4(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [*(a1 + 40) recordID];
  v3 = [v2 recordName];
  v4 = [*(a1 + 48) encodedData];
  [v5 replaceRecordID:v3 data:v4 publicKey:*(a1 + 56)];
}

void sub_100005C40(uint64_t a1)
{
  v4 = [*(a1 + 32) userdb];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) encodedData];
  [v4 replaceConfigRecord:v2 data:v3];
}

void sub_100005F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005F88(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 getConfigData:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006178(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 getConfigData:@"UserRegistryStats"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000063EC(uint64_t a1)
{
  v1 = [*(a1 + 32) userdb];
  [v1 deleteRecordAll];
}

void sub_100006D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006D3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained oslog];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CloudKit timeout complete", v3, 2u);
  }
}

void sub_100006DB4(uint64_t a1)
{
  v2 = [*(a1 + 32) mainOperationQueue];
  [v2 addOperation:*(a1 + 40)];
}

void sub_1000070F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000713C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [WeakRetained oslog];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = *(a1 + 32);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error creating zone (%@): %@", &v14, 0x16u);
    }

    [*(a1 + 40) setError:v7];
    [WeakRetained checkErrorForRetryPause:v7];
  }

  else
  {
    if (v10)
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Created zones: %@", &v14, 0xCu);
    }

    v12 = [WeakRetained subscribeAction];
    [v12 trigger];
  }

  v13 = [WeakRetained mainOperationQueue];
  [v13 addOperation:*(a1 + 40)];
}

void sub_100007470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000074B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained oslog];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = [WeakRetained mobileBackupRecordZoneID];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error deleting zone (%@): %@", &v13, 0x16u);
    }
  }

  else if (v10)
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleted zones: %@", &v13, 0xCu);
  }

  [*(a1 + 32) setError:v7];
  v12 = [WeakRetained mainOperationQueue];
  [v12 addOperation:*(a1 + 32)];
}

void sub_100007738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007750(uint64_t a1)
{
  v7 = [*(a1 + 32) userdb];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:v3 forKey:@"record"];

  v5 = [v4 encodedData];
  v6 = [v5 copy];

  *(*(*(a1 + 56) + 8) + 24) = [v7 setEscrowKey:v2 escrowBlob:v6];
}

void sub_1000078DC(uint64_t a1)
{
  v3 = [*(a1 + 32) recordName];
  v2 = [*(a1 + 40) userdb];
  [v2 deleteEscrowKey:v3];
}

void sub_100007A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100007AA8(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 queryEscrowKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100007B14(void *a1)
{
  v1 = a1;
  v2 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v1 error:0];

  v3 = [v2 decodeObjectOfClass:objc_opt_class() forKey:@"record"];

  return v3;
}

void sub_100007FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_10000806C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = a2;
  v35 = a3;
  v37 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = v8;
  if (WeakRetained)
  {
    v33 = a1;
    v34 = v8;
    v10 = [WeakRetained oslog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v52 = v37;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Finished uploading registry records (%@)", buf, 0xCu);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v36;
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v12)
    {
      v13 = *v46;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v46 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v45 + 1) + 8 * i);
          v16 = [WeakRetained oslog];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 recordID];
            v18 = [v17 recordName];
            *buf = 138412290;
            v52 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Stored record, saving in cache: %@", buf, 0xCu);
          }

          [WeakRetained saveEscrowChange:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v12);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = v35;
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v20)
    {
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [WeakRetained deleteEscrowID:*(*(&v41 + 1) + 8 * j)];
        }

        v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v20);
    }

    if (v37)
    {
      v23 = [WeakRetained oslog];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v37;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Retriggering syncing due to error (%@)", buf, 0xCu);
      }

      v24 = [WeakRetained resyncRegistryAction];
      [v24 trigger];

      [v34 setError:v37];
      v25 = [WeakRetained mainOperationQueue];
      [v25 addOperation:v34];
    }

    else
    {
      v26 = *(v33 + 32);
      if (v26)
      {
        v27 = [WeakRetained pushMobileBackupRecordsToCloudKit:v26 removeObjects:&__NSArray0__struct];
        v28 = objc_alloc_init(PCSRegistryOperation);
        [(PCSRegistryOperation *)v28 addDependency:v27];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100008544;
        v38[3] = &unk_100038F00;
        objc_copyWeak(&v40, (v33 + 48));
        v29 = v27;
        v39 = v29;
        [(PCSRegistryOperation *)v28 addExecutionBlock:v38];
        [v34 addDependency:v28];
        v30 = [WeakRetained mainOperationQueue];
        [v30 addOperation:v34];

        v31 = [WeakRetained mainOperationQueue];
        [v31 addOperation:v28];

        objc_destroyWeak(&v40);
      }

      else
      {
        v32 = [WeakRetained mainOperationQueue];
        [v32 addOperation:v34];
      }
    }

    v9 = v34;
  }

  else
  {
    [v8 cancel];
  }
}

void sub_100008544(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) error];
  [WeakRetained setError:v2];
}

id sub_10000874C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = PCSIdentityGetPublicKey();
  v7 = [NSString stringWithFormat:@"%@-%@%@", v5, v6, v4];

  v8 = [v7 UTF8String];
  ccsha256_di();
  strlen(v8);
  ccdigest();
  v9 = _PCSCreateHexString();

  return v9;
}

void sub_100008C2C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100008FB8(uint64_t a1, uint64_t a2)
{
  if (PCSServiceItemEscrowManateeIdentityByName())
  {
    v4 = *(a1 + 48);
    v5 = PCSIdentitySetCopyOrderedIdentities();
    if (v5)
    {
      v6 = v5;
      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_100009168;
      context[3] = &unk_100038F78;
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      context[4] = *(a1 + 32);
      v13 = v7;
      v12 = v8;
      v16.length = CFArrayGetCount(v6);
      v16.location = 0;
      CFArrayApplyFunction(v6, v16, sub_10000AC10, context);
      CFRelease(v6);

      return;
    }

    v9 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = a2;
      v10 = "No identities for %@";
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = a2;
      v10 = "Not doing MobileBackup for %@";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }
}

void sub_100009168(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) mobileBackupKeyRecordIdentity:a2 version:@"-v2"];
  v6 = [*(a1 + 32) queryEscrowName:v5];
  v7 = v6;
  if (!v6 || ([v6 etag], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v10 = *(a1 + 32);
    v11 = [v10 mobileBackupRecordZoneID];
    v9 = [v10 keyRecord:a2 withName:v5 zone:v11];

    if ([*(a1 + 32) updateEscrowData:v9 escrowIdentity:*(a1 + 48) identity:a2])
    {
      [*(a1 + 40) addObject:v9];
      v12 = [*(a1 + 32) oslog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = a2;
        v16 = 2112;
        v17 = v5;
        v13 = "Will store %@ as (%@)";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 0x16u);
      }
    }

    else
    {
      v12 = [*(a1 + 32) oslog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = a2;
        v16 = 2112;
        v17 = v5;
        v13 = "Couldn't escrow identity %@ (%@); skipping";
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  v9 = [*(a1 + 32) oslog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Already stored %@ as (%@); skipping", &v14, 0x16u);
  }

LABEL_12:

  objc_autoreleasePoolPop(v4);
}

void sub_100009BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009C1C(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 queryEscrowKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000A380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10000A3B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "queryMobileBackupKeysFromCloudKit: error: %@", &v13, 0xCu);
    }

    v8 = 48;
    v9 = v6;
LABEL_9:

    v10 = [v9 copy];
    v11 = *(*(a1 + v8) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    goto LABEL_10;
  }

  if (v5)
  {
    v7 = [*(a1 + 32) oslog];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = [v5 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "queryMobileBackupKeysFromCloudKit got keys (count %lu)", &v13, 0xCu);
    }

    v8 = 56;
    v9 = v5;
    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A974(uint64_t a1)
{
  v5 = [*(a1 + 32) userdb];
  v2 = [v5 queryEscrowKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000AE14(uint64_t a1)
{
  v5 = NSLocalizedDescriptionKey;
  v2 = [NSString stringWithFormat:@"Timed out waiting for a reply to %@ message with ID %@", *(a1 + 32), *(a1 + 40)];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  v4 = [NSError errorWithDomain:kPCSErrorDomain code:75 userInfo:v3];
  [*(a1 + 48) runReplyHandlerWithMessage:0 error:v4];
}

uint64_t sub_10000B1C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B1E0(id a1)
{
  v1 = dispatch_queue_create("com.apple.ProtectedCloudStorage.MessagerRegistration", 0);
  v2 = qword_100040710;
  qword_100040710 = v1;

  qword_100040718 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000B23C(void *a1)
{
  v2 = [qword_100040718 objectForKeyedSubscript:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[5] + 8) + 40))
  {
    v5 = a1[6];
    v6 = [objc_alloc(objc_opt_class()) initWithServiceName:a1[4]];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(a1[5] + 8) + 40))
    {
      v9 = qword_100040718;
      v10 = a1[4];

      [v9 setObject:? forKeyedSubscript:?];
    }
  }
}

id sub_10000B52C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  result = [*(a1 + 32) serviceDelegateSet];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) service];
    v4 = *(a1 + 32);
    v5 = [v4 internalQueue];
    [v3 addDelegate:v4 queue:v5];

    v6 = *(a1 + 32);

    return [v6 setServiceDelegateSet:1];
  }

  return result;
}

void sub_10000B684(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  if (!v2)
  {
    sub_100022900();
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    sub_1000228D4();
  }

  objc_storeWeak((*(a1 + 32) + 56), v3);
  v4 = [*(a1 + 32) service];
  v5 = [v4 devices];

  if (!v5)
  {
    v7 = qword_1000407B8;
    if (!os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v8 = *(a1 + 32);
    WeakRetained = v7;
    v9 = [v8 service];
    *v16 = 138412290;
    *&v16[4] = v9;
    v10 = "IDS Service %@ returned nil for devices array";
LABEL_10:
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, v10, v16, 0xCu);

    goto LABEL_11;
  }

  if (![v5 count])
  {
    v11 = qword_1000407B8;
    if (!os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 32);
    WeakRetained = v11;
    v9 = [v12 service];
    *v16 = 138412290;
    *&v16[4] = v9;
    v10 = "IDS Service %@ returned an empty devices array";
    goto LABEL_10;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained updatedIDSDevices:v5];
LABEL_11:

LABEL_12:
  if (([*(a1 + 32) serviceDelegateSet] & 1) == 0)
  {
    v13 = [*(a1 + 32) service];
    v14 = *(a1 + 32);
    v15 = [v14 internalQueue];
    [v13 addDelegate:v14 queue:v15];

    [*(a1 + 32) setServiceDelegateSet:1];
  }
}

void sub_10000B9D0(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 idsDeviceIdentifier];
    v5 = [NSSet setWithObject:v4];
  }

  else
  {
    v5 = [NSSet setWithObject:IDSDefaultPairedDevice];
  }

  v42[0] = IDSSendMessageOptionTimeoutKey;
  v6 = [NSNumber numberWithDouble:*(a1 + 72)];
  v43[0] = v6;
  v43[1] = &__kCFBooleanTrue;
  v42[1] = IDSSendMessageOptionForceLocalDeliveryKey;
  v42[2] = IDSSendMessageOptionExpectsPeerResponseKey;
  v7 = [NSNumber numberWithBool:v2 != 0];
  v43[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

  v9 = [*(a1 + 40) service];
  v10 = *(a1 + 48);
  v11 = *(a1 + 80);
  v36 = 0;
  v37 = 0;
  v12 = [v9 sendMessage:v10 toDestinations:v5 priority:v11 options:v8 identifier:&v37 error:&v36];
  v13 = v37;
  v14 = v36;

  if (v12)
  {
    v15 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      *buf = 138412546;
      v39 = v16;
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sent %@ message with IDS UUID %@", buf, 0x16u);
    }

    if (v2)
    {
      v30 = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_10000BDB0;
      v33 = &unk_100038CA8;
      v34 = *(a1 + 40);
      v17 = v13;
      v35 = v17;
      v18 = objc_retainBlock(&v30);
      v19 = [PCSIDSReplyContext alloc];
      v20 = *(a1 + 72) + 30.0;
      v21 = [*(a1 + 40) internalQueue];
      v22 = [(PCSIDSReplyContext *)v19 initWithTimeout:v21 queue:*(a1 + 56) logDescription:v17 sentID:*(a1 + 64) replyHandler:v18 completion:v20];

      v23 = [*(a1 + 40) pendingReplies];
      [v23 setObject:v22 forKeyedSubscript:v17];

      v24 = [*(a1 + 40) pendingReplies];
      v25 = [v24 count];

      if (v25 == 1)
      {
        v26 = os_transaction_create();
        [*(a1 + 40) setTransaction:v26];
      }
    }
  }

  else
  {
    v27 = *(a1 + 64);
    if (v27)
    {
      (*(v27 + 16))(v27, 0, v14);
    }

    else
    {
      v28 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 56);
        *buf = 138412546;
        v39 = v29;
        v40 = 2112;
        v41 = v14;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Error occurred sending %@ message with no replyHandler: %@", buf, 0x16u);
      }
    }
  }
}

void sub_10000BDB0(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingReplies];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) pendingReplies];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 setTransaction:0];
  }
}

void sub_10000C020(uint64_t a1)
{
  v2 = [*(a1 + 32) fromID];
  v3 = [NSSet setWithObject:v2];

  v4 = [*(a1 + 32) idsContext];
  v5 = [v4 outgoingResponseIdentifier];

  if (v5)
  {
    v31[0] = IDSSendMessageOptionTimeoutKey;
    v6 = [NSNumber numberWithDouble:*(a1 + 64)];
    v32[0] = v6;
    v32[1] = &__kCFBooleanTrue;
    v31[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v31[2] = IDSSendMessageOptionPeerResponseIdentifierKey;
    v32[2] = v5;
    v7 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

    v8 = [*(a1 + 40) service];
    v9 = *(a1 + 48);
    v10 = *(a1 + 72);
    v25 = 0;
    v26 = 0;
    v11 = [v8 sendMessage:v9 toDestinations:v3 priority:v10 options:v7 identifier:&v26 error:&v25];
    v12 = v26;
    v13 = v25;

    if (v11)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 56);
        *buf = 138412546;
        v28 = v14;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Sent %@ message with IDS UUID %@", buf, 0x16u);
      }
    }

    else
    {
      v20 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        v22 = v20;
        v23 = [v21 idsContext];
        v24 = [v23 incomingResponseIdentifier];
        *buf = 138412546;
        v28 = v5;
        v29 = 2112;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to send response with ID %@ to message with ID %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 idsContext];
      v19 = [v18 incomingResponseIdentifier];
      *buf = 138412290;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to get response ID from original message id %@; dropping reply", buf, 0xCu);
    }

    v12 = 0;
    v13 = 0;
  }
}

void sub_10000CEF4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_isReachable];
  if (*(a1 + 40))
  {
    v3 = IDSCopyIDForDevice();
    v4 = [*(a1 + 32) idsDeviceIdentifier];
    obj = v3;
    v5 = [v3 isEqualToString:v4];

    if ((v5 & 1) == 0)
    {
      v7 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = v7;
        v10 = [v8 idsDeviceIdentifier];
        *buf = 138412546;
        v27 = v10;
        v28 = 2112;
        v29 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Refusing to update device %@ because the new device has a different IDS device ID (got %@)", buf, 0x16u);
      }

      goto LABEL_20;
    }

    [*(a1 + 32) setIsConnected:{objc_msgSend(*(a1 + 40), "isConnected")}];
    if ([*(a1 + 40) isActive])
    {
      v6 = [*(a1 + 40) isLocallyPaired];
    }

    else
    {
      v6 = 0;
    }

    [*(a1 + 32) setIsActivePairedDevice:v6];
    [*(a1 + 32) setIsTombstone:0];
  }

  else
  {
    [*(a1 + 32) setIsConnected:0];
    [*(a1 + 32) setIsActivePairedDevice:0];
    [*(a1 + 32) setIsTombstone:1];
  }

  if (v2 == [*(a1 + 32) _onQueue_isReachable])
  {
    return;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [*(a1 + 32) observers];
  v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    v14 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v17 = dispatch_get_global_queue(21, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10000D1E4;
          block[3] = &unk_100038CA8;
          v18 = *(v13 + 32);
          block[4] = v16;
          block[5] = v18;
          dispatch_async(v17, block);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

LABEL_20:
}

void sub_10000D2A4(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_10000D3AC(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_10000D5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000D604(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_isReachable];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000DEDC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_alloc_init(objc_opt_class());
  v5 = qword_100040728;
  qword_100040728 = v4;

  objc_autoreleasePoolPop(v2);
}

void sub_10000E128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E140(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 UUIDString];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestSyncStateForPairingIdentifier for %@ returned error %@", &v10, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2 ^ 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10000E558(id a1)
{
  qword_100040738 = objc_alloc_init(PCSDeviceManager);

  _objc_release_x1();
}

void sub_10000E768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E780(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000E798(uint64_t a1)
{
  v2 = [*(a1 + 32) activePairedDevice];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000E99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E9BC(uint64_t a1)
{
  v5 = [*(a1 + 32) devices];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000EBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EBFC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) devices];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [v8 pairingID];
        if ([v9 isEqual:*(a1 + 40)])
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10000EE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EE60(uint64_t a1)
{
  v5 = [*(a1 + 32) devices];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000EF7C(uint64_t a1)
{
  v2 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEBUG))
  {
    sub_100022940(v2);
  }

  v45 = objc_opt_new();
  v44 = objc_opt_new();
  v40 = objc_opt_new();
  v42 = objc_opt_new();
  v41 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v50;
    do
    {
      v6 = 0;
      do
      {
        if (*v50 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * v6);
        v8 = IDSCopyIDForDevice();
        [v45 addObject:v8];
        v9 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEBUG))
        {
          v27 = v9;
          v28 = [v7 isActive];
          v29 = [v7 isLocallyPaired];
          v30 = [v7 isConnected];
          *buf = 138413058;
          v54 = v8;
          v55 = 1024;
          *v56 = v28;
          *&v56[4] = 1024;
          *&v56[6] = v29;
          v57 = 1024;
          v58 = v30;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Got device %@: isActive:%{BOOL}d isLocallyPaired:%{BOOL}d isConnected:%{BOOL}d", buf, 0x1Eu);
        }

        v10 = [*(a1 + 40) devices];
        v11 = [v10 objectForKeyedSubscript:v8];

        if (!v11)
        {
          v11 = [[PCSDevice alloc] initWithIDSDevice:v7];
          if (!v11)
          {
            goto LABEL_26;
          }

          v16 = [*(a1 + 40) devices];
          [v16 setObject:v11 forKeyedSubscript:v8];

LABEL_17:
          v15 = v44;
LABEL_19:
          [v15 addObject:v11];
          goto LABEL_20;
        }

        v12 = [(PCSDevice *)v11 isTombstone];
        v13 = [(PCSDevice *)v11 isConnected];
        v14 = [v7 isConnected];
        [(PCSDevice *)v11 updateIDSDevice:v7];
        if (v12)
        {
          goto LABEL_17;
        }

        if (!(v13 & 1 | ((v14 & 1) == 0)))
        {
          v15 = v42;
          goto LABEL_19;
        }

        if (!(v14 & 1 | ((v13 & 1) == 0)))
        {
          v15 = v41;
          goto LABEL_19;
        }

LABEL_20:
        if ([(PCSDevice *)v11 isActivePairedDevice])
        {
          v17 = [*(a1 + 40) activePairedDevice];
          if (!v17 || (v18 = v17, [*(a1 + 40) activePairedDevice], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqual:", v11), v19, v18, (v20 & 1) == 0))
          {
            v21 = qword_1000407B8;
            if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *(a1 + 40);
              v23 = v21;
              v24 = [v22 activePairedDevice];
              v25 = [v24 idsDeviceIdentifier];
              v26 = [(PCSDevice *)v11 idsDeviceIdentifier];
              *buf = 138412546;
              v54 = v25;
              v55 = 2112;
              *v56 = v26;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Active paired device changed from %@ to %@", buf, 0x16u);
            }

            [*(a1 + 40) setActivePairedDevice:v11];
          }
        }

LABEL_26:

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v4);
  }

  v31 = [*(a1 + 40) activePairedDevice];
  if (v31)
  {
    v32 = v31;
    v33 = [*(a1 + 40) activePairedDevice];
    v34 = [v33 idsDeviceIdentifier];
    v35 = [v45 containsObject:v34];

    if ((v35 & 1) == 0)
    {
      [*(a1 + 40) setActivePairedDevice:0];
    }
  }

  v36 = [*(a1 + 40) devices];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10000F4F0;
  v46[3] = &unk_100039130;
  v37 = v45;
  v47 = v37;
  v38 = v40;
  v48 = v38;
  [v36 enumerateKeysAndObjectsUsingBlock:v46];

  v39 = [*(a1 + 40) delegate];
  if ([v44 count] || objc_msgSend(v38, "count"))
  {
    [v39 newDevices:v44 removedDevices:v38];
  }

  if ([v42 count])
  {
    [v39 devicesAreNowNearby:v42];
  }

  if ([v41 count])
  {
    [v39 devicesAreNoLongerNearby:v41];
  }
}

void sub_10000F4F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) containsObject:a2] & 1) == 0 && (objc_msgSend(v5, "isTombstone") & 1) == 0)
  {
    [*(a1 + 40) addObject:v5];
    [v5 updateIDSDevice:0];
  }
}

void sub_100010140(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 handleIncomingMessage:*(a1 + 40)];
  }

  else
  {
    v5 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to get sync connection for IDS device %@; dropping message", &v7, 0xCu);
    }
  }
}

void sub_100010320(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained peers];
    v5 = [a1[4] idsDeviceIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = [PCSPeerSyncing alloc];
      v8 = a1[4];
      v9 = [v3 manager];
      v6 = [(PCSPeerSyncing *)v7 initWithDevice:v8 syncingManager:v9];

      if (v6)
      {
        v10 = [v3 peers];
        v11 = [a1[4] idsDeviceIdentifier];
        [v10 setObject:v6 forKey:v11];
      }
    }

    [(PCSPeerSyncing *)v6 updateLastSeen];
    v12 = [v3 queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000104B8;
    v15[3] = &unk_100038F50;
    v13 = a1[5];
    v16 = v6;
    v17 = v13;
    v14 = v6;
    [v12 addOperationWithBlock:v15];
  }
}

void sub_1000105BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1000105DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained peers];
  *(*(*(a1 + 32) + 8) + 24) = [v2 count] != 0;
}

void sub_10001074C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained peers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v5 = [*(a1 + 40) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010830;
  v7[3] = &unk_100039210;
  v8 = v4;
  v9 = *(a1 + 56);
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

void sub_100010950(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained peers];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = objc_loadWeakRetained((a1 + 40));
        v10 = [v9 peers];
        v11 = [v10 objectForKeyedSubscript:v8];

        v12 = [*(a1 + 32) queue];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100010B24;
        v15[3] = &unk_100039210;
        v16 = v11;
        v17 = *(a1 + 48);
        v13 = v11;
        [v12 addOperationWithBlock:v15];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

id sub_100010B24(uint64_t a1)
{
  v2 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "syncing  with: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) checkSyncing:*(a1 + 40)];
}

void sub_100010FEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isReachable])
  {
    [v3 checkSyncing:0];
  }
}

void sub_100012620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));
  _Unwind_Resume(a1);
}

void sub_100012660(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained setPendingRequest:0];

  v8 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412546;
    v33 = v5;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reply from initital checkin: %@ error: %@", &v32, 0x16u);
  }

  if (v6)
  {
    v9 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    [v9 keyFailure:0];
  }

  else
  {
    v10 = [v5 message];
    v11 = [v10 objectForKeyedSubscript:@"v"];
    v12 = [v11 intValue];
    v13 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    [v13 setClientVersion:v12];

    v14 = [v5 message];
    v9 = [v14 objectForKeyedSubscript:@"h"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v9 = 0;
    }

    v15 = [v5 message];
    v16 = [v15 objectForKeyedSubscript:@"r"];
    v17 = [v16 intValue];

    switch(v17)
    {
      case 3u:
        v21 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Client requests new protocol", &v32, 2u);
        }

        v22 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        v23 = [v22 syncingManager];
        v24 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        v25 = [v24 client];
        [v23 updateClient:v25];

        v26 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        v27 = [v26 client];
        [v27 setProtocolVersion:1];

        v28 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        v29 = [v28 syncingManager];
        v30 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        v31 = [v30 client];
        [v29 saveClient:v31];

        v19 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        [v19 sendKeys];
        break;
      case 2u:
        v20 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          v33 = v9;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Client requests updating keys: have %@", &v32, 0xCu);
        }

        v19 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        [v19 sendKeysOld];
        break;
      case 1u:
        v18 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v32 = 138412290;
          v33 = v9;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Client have keys: %@", &v32, 0xCu);
        }

        v19 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        [v19 haveKeys:v9];
        break;
      default:
        v19 = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        [v19 keyFailure:v9];
        break;
    }
  }
}

void sub_100012E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 + 40));
  _Unwind_Resume(a1);
}

void sub_100012EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  [WeakRetained setPendingRequest:0];
  [WeakRetained setKeys:0];
  v8 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reply from send key: %@ error: %@", &v16, 0x16u);
  }

  if (v6)
  {
    [WeakRetained keyFailure:0];
  }

  else
  {
    v9 = [v5 message];
    v10 = [v9 objectForKeyedSubscript:@"h"];

    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v10 = 0;
      }
    }

    v11 = [v5 message];
    v12 = [v11 objectForKeyedSubscript:@"r"];
    v13 = [v12 intValue];

    v14 = qword_1000407B8;
    v15 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
    if (v13 == 1)
    {
      if (v15)
      {
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "client confirms it have key: %@", &v16, 0xCu);
      }

      [WeakRetained haveKeys:v10];
    }

    else
    {
      if (v15)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "client failed", &v16, 2u);
      }

      [WeakRetained keyFailure:v10];
    }
  }
}

void sub_1000134BC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 48) pcsKeyData:?];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
    [*(a1 + 48) addObject:v4];
  }
}

void sub_100013538(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v8 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412546;
      v29 = v5;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reply from send key: %@ error: %@", &v28, 0x16u);
    }

    if (v6)
    {
      [WeakRetained keyFailure:0];
      [WeakRetained setPendingRequest:0];
      v9 = [WeakRetained syncingManager];
      v10 = [WeakRetained[2] idsDeviceIdentifier];
      [v9 signalComplete:v10];
    }

    else
    {
      v11 = [v5 message];
      v12 = [v11 objectForKeyedSubscript:@"r"];
      v13 = [v12 intValue];

      v14 = qword_1000407B8;
      v15 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v28 = 67109120;
          LODWORD(v29) = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "client failed: %d", &v28, 8u);
        }
      }

      else
      {
        if (v15)
        {
          v16 = *(a1 + 32);
          v17 = v14;
          v18 = [v16 count];
          v28 = 67109120;
          LODWORD(v29) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "client confirms stored keys: %u", &v28, 8u);
        }

        v19 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [WeakRetained device];
          v22 = [v21 idsDeviceIdentifier];
          v23 = *(a1 + 32);
          v28 = 138412546;
          v29 = v22;
          v30 = 2112;
          v31 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "device: %@ type: 1 keys: %@", &v28, 0x16u);
        }

        v24 = [WeakRetained syncingManager];
        v25 = [WeakRetained device];
        v26 = [v25 idsDeviceIdentifier];
        [v24 updateSyncedKeysToDevice:v26 type:1 keys:*(a1 + 32)];
      }

      v27 = *(a1 + 40);
      if (v27)
      {
        [WeakRetained sendSomeKeys:v27 dsid:*(a1 + 48)];
      }

      else
      {
        [WeakRetained sendCurrentKeys:*(a1 + 48)];
      }
    }
  }
}

void sub_1000139F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013A0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = PCSIdentitySetCopyCurrentIdentityWithError();
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) setObject:PCSIdentityGetPublicKey() forKeyedSubscript:a2];

    CFRelease(v6);
  }
}

void sub_100013A84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "set current: %@", &v9, 0xCu);
  }

  if (WeakRetained)
  {
    [WeakRetained setPendingRequest:0];
    v7 = [WeakRetained syncingManager];
    v8 = [WeakRetained[2] idsDeviceIdentifier];
    [v7 signalComplete:v8];

    CFRelease(*(a1 + 40));
  }
}

void sub_100013FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001401C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v20) = 138412290;
        *(&v20 + 4) = v6;
        v9 = "Failed to send message to peer: %@, trying later";
        v10 = v8;
        v11 = 12;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v20, v11);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v12 = [v5 message];
    v13 = [v12 objectForKeyedSubscript:@"r"];
    v14 = [v13 intValue];

    v15 = qword_1000407B8;
    v16 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        LODWORD(v20) = 67109120;
        DWORD1(v20) = v14;
        v9 = "Other failure to store iCDP state: %d, trying later";
        v10 = v15;
        v11 = 8;
        goto LABEL_8;
      }

LABEL_9:
      [WeakRetained setPendingRequest:{0, v20}];
      v17 = [WeakRetained syncingManager];
      v18 = [WeakRetained[2] idsDeviceIdentifier];
      [v17 signalComplete:v18];

      goto LABEL_10;
    }

    if (v16)
    {
      v19 = *(a1 + 56);
      LODWORD(v20) = 67109120;
      DWORD1(v20) = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Peer confirmed iCDP state too: %d", &v20, 8u);
    }

    [WeakRetained setPeeriCDPStatus:*(a1 + 56)];
    [WeakRetained setPeerCircleStatus:*(a1 + 57)];
    [WeakRetained sendSomeKeys:*(a1 + 32) dsid:*(a1 + 40)];
  }

LABEL_10:
}

id sub_100014EFC()
{
  if (qword_100040750 != -1)
  {
    sub_100022984();
  }

  v1 = qword_100040748;

  return v1;
}

void sub_100014F40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_suspend(WeakRetained[7]);
    v3 = v2[3];
    if (v3)
    {
      v4 = objc_retainBlock(v3);
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3032000000;
      v15[3] = sub_100015118;
      v15[4] = sub_100015128;
      v16 = v2[8];
      v5 = v2[8];
      v2[8] = 0;

      v6 = v2[6];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100015130;
      v12[3] = &unk_100039408;
      v7 = v4;
      v13 = v7;
      v14 = v15;
      [v6 addOperationWithBlock:v12];

      _Block_object_dispose(v15, 8);
    }

    v8 = dispatch_time(0, 1000000000 * v2[4]);
    v9 = sub_100014EFC();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000151A0;
    block[3] = &unk_100038C58;
    v11 = v2;
    dispatch_after(v8, v9, block);
  }
}

void sub_100015100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100015130(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    *(v3 + 40) = 0;
  }
}

void sub_100015370(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!*(WeakRetained + 9) && !*(WeakRetained + 8))
  {
    v3 = [*(a1 + 32) label];
    [v3 UTF8String];
    v4 = os_transaction_create();
    v5 = v6[8];
    v6[8] = v4;

    WeakRetained = v6;
  }

  dispatch_source_merge_data(*(WeakRetained + 7), 1uLL);
}

void sub_10001552C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("PCSDelayedActionQueue", v3);
  v2 = qword_100040748;
  qword_100040748 = v1;
}

void sub_100015840(id a1)
{
  qword_100040760 = objc_alloc_init(PCSMetrics);

  _objc_release_x1();
}

void sub_100015D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100015D70(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if ((PCSServiceItemTypeIsManatee() & 1) == 0 && ([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v24 = v4;
    IndexByName = PCSServiceItemGetIndexByName();
    v33[0] = kSecClass;
    v33[1] = kSecAttrSecurityDomain;
    v34[0] = kSecClassInternetPassword;
    v34[1] = kPCSServiceName;
    v33[2] = kSecMatchLimit;
    v33[3] = kSecAttrServer;
    v6 = *(a1 + 40);
    v34[2] = kSecMatchLimitAll;
    v34[3] = v6;
    v7 = kSecAttrSynchronizable;
    v34[4] = &__kCFBooleanTrue;
    v33[4] = kSecAttrSynchronizable;
    v33[5] = kSecAttrType;
    v23 = IndexByName;
    v8 = [NSNumber numberWithUnsignedInt:?];
    v33[6] = kSecReturnPersistentRef;
    v34[5] = v8;
    v34[6] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:7];

    result = 0;
    Count = 0;
    if (!SecItemCopyMatching(v9, &result))
    {
      Count = CFArrayGetCount(result);
      v11 = result;
      if (result)
      {
        result = 0;
        CFRelease(v11);
      }

      v7 = kSecAttrSynchronizable;
    }

    v31[0] = kSecClass;
    v31[1] = kSecAttrSecurityDomain;
    v32[0] = kSecClassInternetPassword;
    v32[1] = kPCSServiceName;
    v31[2] = kSecMatchLimit;
    v31[3] = kSecAttrServer;
    v12 = *(a1 + 40);
    v32[2] = kSecMatchLimitAll;
    v32[3] = v12;
    v32[4] = &__kCFBooleanTrue;
    v31[4] = v7;
    v31[5] = kSecAttrType;
    v13 = [NSNumber numberWithUnsignedInt:v23 | 0x10000];
    v31[6] = kSecReturnAttributes;
    v32[5] = v13;
    v32[6] = &__kCFBooleanTrue;
    v14 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];

    result = 0;
    if (SecItemCopyMatching(v14, &result))
    {
      v15 = a1;
    }

    else
    {
      Count += CFArrayGetCount(result);
      v15 = a1;
      if (*(a1 + 88) == 1)
      {
        v16 = result;
        context[0] = _NSConcreteStackBlock;
        context[1] = 3221225472;
        context[2] = sub_10001611C;
        context[3] = &unk_100039470;
        v22 = *(a1 + 40);
        v17 = v22.i64[0];
        v29 = v23;
        v18 = *(a1 + 64);
        v26 = vextq_s8(v22, v22, 8uLL);
        v27 = v18;
        v28 = *(a1 + 80);
        v35.length = CFArrayGetCount(v16);
        v35.location = 0;
        CFArrayApplyFunction(v16, v35, sub_100016B40, context);
      }

      v19 = result;
      if (result)
      {
        result = 0;
        CFRelease(v19);
      }
    }

    v20 = [NSString stringWithFormat:@"keycount_%u", v23];
    v21 = [NSNumber numberWithLong:Count];
    [*(v15 + 56) setObject:v21 forKeyedSubscript:v20];

    v4 = v24;
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_10001611C(uint64_t a1, CFDictionaryRef theDict)
{
  v4 = [*(a1 + 32) getKeyInfoWithDSID:*(a1 + 40) service:*(a1 + 72) publicKey:{CFDictionaryGetValue(theDict, kSecAttrAccount)}];
  if (v4)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v5 = CFDictionaryGetValue(theDict, kSecAttrIsNegative);
  if (v5 && (v8 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v8 BOOLValue] & 1) != 0)
  {
    v6 = 56;
  }

  else
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    v6 = 64;
  }

  ++*(*(*(a1 + v6) + 8) + 24);
LABEL_10:

  return _objc_release_x1();
}

void sub_10001646C(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000164F4;
  v3[3] = &unk_1000394E8;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  CFDictionaryApplyFunction(theDict, sub_100016B58, v3);
}

void sub_1000164F4(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kPCSSecureBackupCFKeyRegistryPublicIdentities);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000165A8;
  v5[3] = &unk_1000394C0;
  v6 = *(a1 + 32);
  v7.length = CFArrayGetCount(Value);
  v7.location = 0;
  CFArrayApplyFunction(Value, v7, sub_100016B40, v5);
}

void sub_1000165A8(uint64_t a1)
{
  v2 = PCSPublicIdentityCreateWithPublicKeyInfo();
  if (v2)
  {
    v3 = v2;
    ServiceID = PCSPublicIdentityGetServiceID();
    [*(a1 + 32) addKeyWithDSID:*(a1 + 40) service:ServiceID publicKey:PCSPublicIdentityGetPublicID()];

    CFRelease(v3);
  }
}

uint64_t sub_100016B74(char *a1)
{

  return sqlite3_bind_text(v1, 3, a1, -1, 0);
}

uint64_t sub_100016B98()
{

  return sqlite3_bind_text(v0, 1, v1, -1, 0);
}

void sub_100017508(id a1)
{
  qword_100040768 = objc_alloc_init(PCSKeySyncing);

  _objc_release_x1();
}

void sub_1000180C0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = a2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Updating service %@", buf, 0xCu);
  }

  IndexByName = PCSServiceItemGetIndexByName();
  if (IndexByName)
  {
    v6 = IndexByName;
    if (IndexByName == 54 || IndexByName == 56 || PCSServiceItemTypeIsShareableManatee())
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Skipping identities for service %@", buf, 0xCu);
      }

      if (([*(a1 + 32) deleteMirrorKeys:v6] & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = a2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to remove MirrorKeys from registry for %@", buf, 0xCu);
      }

      goto LABEL_36;
    }

    v7 = *(a1 + 40);
    v8 = PCSIdentitySetCopyOrderedIdentities();
    if (v8)
    {
      v9 = [*(a1 + 32) beginExclusiveTransaction];
      v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        v27 = v4;
        if (v10)
        {
          v11 = [v8 count];
          *buf = 134218242;
          v34 = v11;
          v35 = 2112;
          v36 = a2;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Syncing %lu identities %@ with database", buf, 0x16u);
        }

        [*(a1 + 32) markMirrorKey:v6 type:3];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v26 = v8;
        v12 = v8;
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v29;
          v16 = 1;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v18 = *(*(&v28 + 1) + 8 * i);
              v19 = objc_autoreleasePoolPush();
              ServiceID = PCSIdentityGetServiceID();
              if (ServiceID)
              {
                v21 = ServiceID == v6;
              }

              else
              {
                v21 = 0;
              }

              if (v21)
              {
                v22 = PCSIdentityCopyPublicKeyInfo();
                v23 = PCSIdentityGetPublicKey();
                [*(a1 + 32) setMirrorKey:v23 service:v6 type:3 publicIdentity:v22];
                [*(a1 + 32) updateMirrorKey:v23 service:v6 type:3 newType:1 current:v16 & 1];

                v16 = 0;
              }

              objc_autoreleasePoolPop(v19);
            }

            v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v14);
        }

        [*(a1 + 32) endTransaction:1];
        v8 = v26;
        v4 = v27;
        goto LABEL_35;
      }

      if (v10)
      {
        *buf = 0;
        v24 = "failed to open database transaction";
        v25 = 2;
        goto LABEL_34;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = a2;
      v24 = "Failed to get copy of identities of service type: %@";
      v25 = 12;
LABEL_34:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
    }

LABEL_35:
  }

LABEL_36:
  objc_autoreleasePoolPop(v4);
}

void sub_100018D10(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [PCSKeyClient alloc];
  v8 = [*(a1 + 32) accounts];
  v9 = [v8 dsid];
  v11 = [(PCSKeyClient *)v7 initWithName:v6 values:v5 dsid:v9];

  v10 = v11;
  if (v11)
  {
    [*(a1 + 40) addObject:v11];
    v10 = v11;
  }
}

void sub_100018ECC(id a1)
{
  v6 = os_transaction_create();
  v1 = objc_autoreleasePoolPush();
  v2 = [PCSSyncing alloc];
  v3 = +[PCSKeySyncing defaultSyncingManager];
  v4 = [(PCSSyncing *)v2 initWithPCSKeySyncing:v3];
  v5 = qword_100040778;
  qword_100040778 = v4;

  [qword_100040778 setupMetrics];
  objc_autoreleasePoolPop(v1);
}

void sub_1000193A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000193C8(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_1000194C8;
  v4[4] = sub_1000194D8;
  v5 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000194E0;
  v3[3] = &unk_100039620;
  v3[4] = v4;
  [WeakRetained triggerWatchSyncing:v3];

  _Block_object_dispose(v4, 8);
}

void sub_1000194B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000194C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000194E0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_1000198EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100019904(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error checking registry (%@)", &v7, 0xCu);
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100019C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_100019C38(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];
  [v2 syncKeysWithDatabase];

  v3 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Trigger syncing to watches", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019D50;
  v5[3] = &unk_1000396B8;
  objc_copyWeak(&v6, (a1 + 48));
  v5[4] = *(a1 + 40);
  [v4 syncKeys:&off_10003B388 withReply:v5];
  objc_destroyWeak(&v6);
}

void sub_100019D50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "notify sync key complete: %@: error: %@", &v12, 0x16u);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  if (WeakRetained)
  {
    v11 = [WeakRetained internalQueue];
    dispatch_async(v11, &stru_100039690);
  }
}

void sub_10001A1E0(id a1)
{
  v1 = [NSSet setWithArray:&off_10003B3B0];
  v2 = qword_100040790;
  qword_100040790 = v1;

  v3 = [NSSet setWithArray:&off_10003B3C8];
  v4 = qword_100040798;
  qword_100040798 = v3;

  v8[0] = @"com.apple.ProtectedCloudStorage.mobileBackupStateChange";
  v8[1] = @"com.apple.ProtectedCloudStorage.test.mobileBackupStateChange";
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [NSSet setWithArray:v5];
  v7 = qword_1000407A0;
  qword_1000407A0 = v6;
}

void sub_10001A988(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001A9AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v33 = 0;
    v3 = [PCSAccountsModel settingsKeyForKey:kPCSPendingRollEpoch error:&v33];
    v4 = v33;
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v7 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
      }

      dispatch_semaphore_signal(*(a1 + 32));
      goto LABEL_24;
    }

    v32 = 0;
    v8 = [PCSAccountsModel settingsKeyForKey:@"lastMobileBackupStatus" error:&v32];
    v9 = v32;
    v10 = v9;
    if (!v8 || v9)
    {
      v24 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v10;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
      }

      dispatch_semaphore_signal(*(a1 + 32));
    }

    else
    {
      v11 = [*(a1 + 40) settings];
      v12 = [v11 objectForKey:v8];

      v13 = [WeakRetained mobileBackup];
      v14 = [v13 isBackupEnabled];

      v15 = [*(a1 + 40) settings];
      v16 = [v15 BOOLForKey:v8];

      v17 = [*(a1 + 40) getRollEpoch];
      +[PCSAnalytics logger];
      v31 = v30 = v17;
      if (!v12 && v17)
      {
        v18 = [*(a1 + 40) settings];
        [v18 removeObjectForKey:v3];

        v29 = v14;
        v19 = kPCSErrorDomain;
        v36 = NSLocalizedDescriptionKey;
        v20 = [NSString stringWithFormat:@"No last mobile backup status, but have a keyroll epoch time (%@)", v30];
        v37 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v22 = [NSError errorWithDomain:v19 code:118 userInfo:v21];

        v12 = 0;
        v10 = 0;

        v17 = v30;
        [v31 logRecoverableError:v22 forEvent:PCSEventKeyRollStateChange withAttributes:0];

        v14 = v29;
      }

      if (v14 == v16)
      {
        v25 = kPCSErrorDomain;
        v34 = NSLocalizedDescriptionKey;
        v26 = [NSString stringWithFormat:@"False alarm check for backup state change"];
        v35 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v28 = [NSError errorWithDomain:v25 code:131 userInfo:v27];

        [v31 logRecoverableError:v28 forEvent:PCSEventKeyRollStateChange withAttributes:0];
        dispatch_semaphore_signal(*(a1 + 32));

        goto LABEL_24;
      }

      if (!(v14 & 1 | ((v16 & 1) == 0)))
      {
        [*(a1 + 40) recordEpochForKeyroll];
        [v31 logSuccessForEvent:PCSEventKeyRollStateChange];
      }

      v23 = [*(a1 + 40) settings];
      [v23 setBool:v14 forKey:v8];

      dispatch_semaphore_signal(*(a1 + 32));
    }

LABEL_24:
    goto LABEL_25;
  }

  dispatch_semaphore_signal(*(a1 + 32));
LABEL_25:
}

void sub_10001B484(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = objc_autoreleasePoolPush();
  if (state == 2)
  {
    [*(a1 + 32) triggerKeyRolling];
  }

  else if (!state)
  {
    [*(a1 + 32) setScheduledKeyrollActivity:v3];
    if ([*(a1 + 32) activityIsScheduled:v3])
    {
      v6 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Identity key roll is already scheduled.", &v10, 2u);
      }
    }

    else
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REPEATING, 1);
      xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, *(a1 + 40));
      xpc_dictionary_set_int64(v7, XPC_ACTIVITY_DELAY, *(a1 + 40));
      xpc_dictionary_set_int64(v7, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_HOUR);
      xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, 1);
      xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
      xpc_activity_set_criteria(v3, v7);
      v8 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = 134217984;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduled an identity key roll attempt to occur in %lld seconds.", &v10, 0xCu);
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10001B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B8F0(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v5 = a4;
  if (a4 && a5 && *(a1 + 32))
  {
    v9 = *(a1 + 80);
    v10 = [NSDate dateWithTimeIntervalSince1970:PCSIdentitySetGetCurrentCreationTime()];
    if ([*(a1 + 32) compare:v10] == 1)
    {
      (*(*(a1 + 64) + 16))();
    }
  }

  if (*(a1 + 88) == 1 && (v5 & 1) == 0 && *(a1 + 89) == 1 && ([*(a1 + 40) containsObject:a3] & 1) == 0)
  {
    v26[0] = kSecClass;
    v26[1] = kSecAttrSynchronizable;
    v27[0] = kSecClassInternetPassword;
    v27[1] = &__kCFBooleanTrue;
    v26[2] = kSecAttrSecurityDomain;
    v26[3] = kSecAttrServer;
    v11 = *(a1 + 48);
    v27[2] = kPCSServiceName;
    v27[3] = v11;
    v26[4] = kSecAttrType;
    v12 = [NSNumber numberWithUnsignedInt:a2 | 0x10000u];
    v26[5] = kSecAttrIsNegative;
    v27[4] = v12;
    v27[5] = &__kCFBooleanTrue;
    v13 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];

    *v25 = 0;
    v14 = _PCSKeychainForwardTable(v13, v25);
    if (v14 != -25300)
    {
      v15 = v14;
      if (v14)
      {
        v16 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_ERROR))
        {
          sub_100022CE0(a3, v15, v16);
        }
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  if (*(a1 + 88) == 1 && PCSServiceItemEscrowManateeIdentityByName())
  {
    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      v17 = [*(a1 + 56) registry];
      v18 = [v17 allMobileBackupPublicKeys];
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v21 = *(a1 + 80);
    v22 = PCSIdentitySetCopyCurrentIdentityWithError();
    if (v22)
    {
      v23 = v22;
      if ([*(*(*(a1 + 72) + 8) + 40) containsObject:PCSIdentityGetPublicKey()])
      {
        v24 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 138412290;
          *&v25[4] = a3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Keyrolling service %@ due to existing backup", v25, 0xCu);
        }

        (*(*(a1 + 64) + 16))();
      }

      CFRelease(v23);
    }
  }
}

void sub_10001BED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001BEF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v41 = WeakRetained;
    v3 = [WeakRetained accounts];
    v42 = [v3 dsid];

    if (!v42)
    {
      v27 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Keyroll triggered, but DSID is unknown; will retry later", v61, 2u);
      }

      goto LABEL_41;
    }

    v4 = [*(a1 + 32) shouldRollStingray];
    *v61 = 0;
    v62 = v61;
    v63 = 0x2020000000;
    v64 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_10001C740;
    v52[3] = &unk_100039778;
    v56 = v4;
    v54 = v61;
    v55 = &v57;
    v39 = objc_alloc_init(NSMutableSet);
    v53 = v39;
    if (([v41 getServicesToRoll:v42 handler:v52] & 1) == 0)
    {
LABEL_40:

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(v61, 8);
LABEL_41:

      v2 = v41;
      goto LABEL_42;
    }

    if (![v39 count])
    {
      v28 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(v58 + 24);
        *v70 = 67109120;
        *&v70[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Keyroll triggered but we've already completed rolling (defer: %d)", v70, 8u);
      }

      [*(a1 + 32) rollingComplete:*(v58 + 24)];
      goto LABEL_40;
    }

    if (v62[24] == 1)
    {
      v5 = [v41 settings];
      v6 = +[NSDate now];
      [v5 setObject:v6 forKey:kPCSSettingStingrayRoll];
    }

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v36 = _os_activity_create(&_mh_execute_header, "PCSCKKSRollAndSync", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v36, &state);
    *v70 = 0;
    v71 = v70;
    v72 = 0x2020000000;
    v73 = 0;
    v38 = [v39 count];
    v7 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v68) = v38;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CKKS registry roll & sync for all eligible services (%d)", buf, 8u);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = v39;
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v69 count:16];
    if (v9)
    {
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          v13 = dispatch_semaphore_create(0);
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_10001C7CC;
          v44[3] = &unk_1000397A0;
          v44[4] = v12;
          v46 = v70;
          v14 = v13;
          v45 = v14;
          [v41 createIdentity:v12 dsid:v42 roll:1 sync:1 forceSync:0 complete:{v44, v36}];
          dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
        }

        v9 = [v8 countByEnumeratingWithState:&v47 objects:v69 count:16];
      }

      while (v9);
    }

    v15 = +[PCSMetrics metrics];
    [v15 storeEventTimestamp:3];

    if (*(v71 + 6) == v38)
    {
      v16 = +[PCSMetrics metrics];
      [v16 storeEventTimestamp:4];
    }

    v43 = 0;
    v17 = [PCSAccountsModel settingsKeyForKey:@"testRollEpoch" error:&v43, v36];
    v18 = v43;
    v19 = v18;
    if (!v17 || v18)
    {
      v30 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v68 = v19;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Failed to get key: %@", buf, 0xCu);
      }

      goto LABEL_39;
    }

    v20 = +[PCSAnalytics logger];
    if (*(v71 + 6) == v38)
    {
      [v41 rollingComplete:*(v58 + 24)];
      v21 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(v71 + 6);
        *buf = 67109120;
        LODWORD(v68) = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Successfully completed keyroll operations for  %d keys", buf, 8u);
      }

      [v20 logSuccessForEvent:PCSEventKeyRollOperation];
      v23 = [*(a1 + 32) settings];
      v24 = [v23 BOOLForKey:v17];

      if (!v24)
      {
        goto LABEL_38;
      }

      notify_post("com.apple.ProtectedCloudStorage.test.mobileBackupStateChange.success");
      v25 = [*(a1 + 32) settings];
      [v25 setBool:0 forKey:v17];
    }

    else
    {
      v31 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v38 - *(v71 + 6);
        *buf = 67109120;
        LODWORD(v68) = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Failed keyroll operations for  %d keys", buf, 8u);
      }

      v25 = [NSError errorWithDomain:kPCSErrorDomain code:119 userInfo:0];
      v65[0] = @"attemptedRoll";
      v33 = [NSNumber numberWithInt:v38];
      v65[1] = @"successfulRoll";
      v66[0] = v33;
      v34 = [NSNumber numberWithInt:*(v71 + 6)];
      v66[1] = v34;
      v35 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
      [v20 logRecoverableError:v25 forEvent:PCSEventKeyRollOperation withAttributes:v35];
    }

LABEL_38:
LABEL_39:

    _Block_object_dispose(v70, 8);
    os_activity_scope_leave(&state);

    goto LABEL_40;
  }

  v26 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Keyroll triggered but there is no self", v61, 2u);
  }

LABEL_42:
}

void sub_10001C6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose((v44 - 144), 8);
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C740(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    goto LABEL_4;
  }

  if (*(a1 + 56) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_4:
    v8 = v5;
    v5 = [*(a1 + 32) addObject:v5];
    v6 = v8;
    goto LABEL_6;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_6:

  return _objc_release_x1(v5, v6);
}

void sub_10001C7CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v17 = 138412802;
      v18 = v11;
      v19 = 2114;
      v20 = v9;
      v21 = 2112;
      v22 = v8;
      v12 = "CKKS registry roll & sync failed for service %@ with: %{public}@ (mtt: %@)";
      v13 = v10;
      v14 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
    }
  }

  else
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v15 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v8;
      v12 = "CKKS registry roll & sync for service %@ completed: %@";
      v13 = v15;
      v14 = 22;
      goto LABEL_6;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001CC4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10001CC70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    if (*(a1 + 32) && *(a1 + 40))
    {
      v3 = [*(a1 + 48) settings];
      v4 = [v3 stringForKey:*(a1 + 56)];

      if (([v4 isEqualToString:*(a1 + 40)] & 1) == 0)
      {
        v5 = [*(a1 + 48) settings];
        [v5 setObject:*(a1 + 40) forKey:*(a1 + 56)];

        v6 = [*(a1 + 48) settings];
        [v6 removeObjectForKey:*(a1 + 64)];
      }

      v7 = [*(a1 + 48) settings];
      v8 = [v7 objectForKey:*(a1 + 64)];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v9 = [*(a1 + 48) settings];
        [v9 removeObjectForKey:*(a1 + 64)];

        v8 = 0;
      }

      v10 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Trigger syncing with escrow proxy on behalf of cloudd: next sync: %{public}@", buf, 0xCu);
      }

      v11 = +[NSDate date];
      v12 = v11;
      if (v8 && [v11 compare:v8] == -1)
      {
        v21 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "skipping sync due to ratelimiting", buf, 2u);
        }

        v16 = [NSError errorWithDomain:kPCSErrorDomain code:97 userInfo:0];
        (*(*(a1 + 72) + 16))();
      }

      else
      {
        v13 = [v12 dateByAddingTimeInterval:7200.0];

        v14 = [*(a1 + 48) settings];
        [v14 setObject:v13 forKey:*(a1 + 64)];

        v15 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "setting cloudd expiration to: %@", buf, 0xCu);
        }

        v16 = [[EscrowProxySyncOperation alloc] initWithDSID:*(a1 + 32)];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10001D114;
        v22[3] = &unk_1000397C8;
        v22[4] = *(a1 + 48);
        v23 = *(a1 + 64);
        v24 = *(a1 + 72);
        [(EscrowProxySyncOperation *)v16 setCompletionBlockWithError:v22];
        v17 = [WeakRetained serialOperationQueue];
        [v17 addOperation:v16];

        v8 = v13;
      }
    }

    else
    {
      v18 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = @"Skipping escrow proxy sync, could not determine dsid and/or identifier";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v25 = NSLocalizedDescriptionKey;
      v26 = @"Skipping escrow proxy sync, could not determine dsid and/or identifier";
      v4 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v19 = *(a1 + 72);
      v20 = [NSError errorWithDomain:kPCSErrorDomain code:66 userInfo:v4];
      (*(v19 + 16))(v19, 0, 0, v20);
    }
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void sub_10001D114(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109378;
    v14[1] = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Escrow proxy sync reported: %d: %{public}@", v14, 0x12u);
  }

  if ([v5 code] == 305)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:@"CloudServicesErrorDomain"];

    if (v8)
    {
      v9 = [v5 userInfo];
      v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if ([v10 code] == 311)
      {
        v11 = [v5 domain];
        v12 = [v11 isEqualToString:@"CloudServicesErrorDomain"];

        if (v12)
        {
          v13 = [*(a1 + 32) settings];
          [v13 removeObjectForKey:*(a1 + 40)];
        }
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10001D638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_10001D660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = _os_activity_create(&_mh_execute_header, "PCSCKKSRegistrySync", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee sync with CKKS registry for service %{public}@", buf, 0xCu);
    }

    v6 = [*(a1 + 40) forceSyncNeeded:*(a1 + 48) dsid:*(a1 + 56)];
    v7 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001D830;
    v9[3] = &unk_100039818;
    v8 = *(a1 + 56);
    v10 = *(a1 + 64);
    [WeakRetained createIdentity:v7 dsid:v8 roll:0 sync:1 forceSync:v6 complete:v9];

    os_activity_scope_leave(&state);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_10001D830(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = qword_1000407B8;
  v11 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v8;
      v12 = "CKKS registry sync failed with: %{public}@ (mtt: %@)";
      v13 = v10;
      v14 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v15, v14);
    }
  }

  else if (v11)
  {
    v15 = 138412290;
    v16 = v8;
    v12 = "CKKS registry sync completed: %@";
    v13 = v10;
    v14 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v7 != 0, v8, v9);
}

void sub_10001DDBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10001DDE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:kPCSSetupDSID];
    if (PCSCurrentPersonaMatchesDSID())
    {
      if (*(a1 + 56) != 1 || !PCSIdentityHaveiCloudIdentityLocally())
      {
        v10 = [*(a1 + 32) mutableCopy];
        v11 = +[PCSMetrics metrics];
        v12 = [v11 keyRegistryCallback];
        v13 = objc_retainBlock(v12);
        [v10 setObject:v13 forKeyedSubscript:kPCSSetupCallbackKeyRegistry];

        v14 = PCSIdentitySetup();
        if (v14)
        {
          CFRelease(v14);
        }

        else
        {
          v15 = qword_1000407B8;
          if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "setupIdentitiesForAccount: PCSIdentitySetup failed: %@", buf, 0xCu);
          }
        }

        goto LABEL_16;
      }

      v4 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 138412290;
        v17 = v5;
        v6 = "setupIdentitiesForAccount: account %@ is already setup, ignoring request";
        v7 = v4;
        v8 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      v9 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "Current persona doesn't match dsid";
        v7 = v9;
        v8 = 2;
        goto LABEL_9;
      }
    }

LABEL_16:
  }
}

void sub_10001E12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    _PCSIdentityMigrateToiCDP();
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10001E2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E2F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) mutableCopy];
    v4 = +[PCSMetrics metrics];
    v5 = [v4 keyRegistryCallback];
    v6 = objc_retainBlock(v5);
    [v3 setObject:v6 forKeyedSubscript:kPCSSetupCallbackKeyRegistry];

    v7 = +[PCSMetrics metrics];
    v8 = [v7 markNegativeCallback];
    v9 = objc_retainBlock(v8);
    [v3 setObject:v9 forKeyedSubscript:kPCSSetupCallbackMarkNegative];

    LODWORD(v7) = _PCSIdentityMigrateEnableWalrus();
    (*(*(a1 + 40) + 16))();

    if (v7)
    {
      v10 = +[PCSMetrics metrics];
      [v10 storeEventTimestamp:1];
    }
  }
}

void sub_10001E564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001E588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) mutableCopy];
    v4 = +[PCSMetrics metrics];
    v5 = [v4 keyRegistryCallback];
    v6 = objc_retainBlock(v5);
    [v3 setObject:v6 forKeyedSubscript:kPCSSetupCallbackKeyRegistry];

    LODWORD(v4) = _PCSIdentityMigrateDisableWalrus();
    (*(*(a1 + 40) + 16))();

    if (v4)
    {
      v7 = +[PCSMetrics metrics];
      [v7 storeEventTimestamp:2];
    }
  }
}

void sub_10001E7F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && [v7 count] == 1)
  {
    v10 = *(a1 + 40);
    v11 = [v7 objectAtIndexedSubscript:0];
    (*(v10 + 16))(v10, v11, v8, v9);
  }

  else
  {
    if (!v9)
    {
      v12 = *(a1 + 32);
      _PCSError();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }
}

void sub_10001F00C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138413058;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Completed best-effort mobile backup restore with recoverIssue:%@ missing:%@ present:%@ error:%@", &v14, 0x2Au);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001F120(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v38 = a3;
  v8 = a4;
  v36 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [v7 objectForKeyedSubscript:kPCSMessages3];
  v11 = v10;
  if (v10)
  {
    if ([v10 currentIdentity])
    {
      v12 = [v11 returnedExistingIdentity];
      if (!v8 && (v12 & 1) == 0)
      {
        v13 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Kicking off user registry sync due to new messages3 identity", buf, 2u);
        }

        v14 = [WeakRetained registry];
        v15 = [v14 syncUserRegistry];
      }
    }
  }

  v35 = WeakRetained;
  v37 = v8;
  v16 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = [v7 allValues];
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
  v39 = v7;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *v41;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = [v25 currentItemReference];

        if (v26)
        {
          v27 = [v25 returnedExistingIdentity];
          v20 = v20 + v27;
          v22 = v22 + (v27 ^ 1);
          v28 = [v25 currentItemReference];
          [v16 addObject:v28];
        }

        else
        {
          v21 = (v21 + 1);
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v29 = *(*(*(v36 + 40) + 8) + 40);
  v45[0] = @"numManateeIdentitiesNewlyCreated";
  v30 = [NSNumber numberWithInt:v22];
  v46[0] = v30;
  v45[1] = @"numManateeIdentitiesExisting";
  v31 = [NSNumber numberWithInt:v20];
  v46[1] = v31;
  v45[2] = @"numManateeIdentitiesErroredOnCreation";
  v32 = [NSNumber numberWithInt:v21];
  v46[2] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
  [v29 addMetrics:v33];

  [PCSAnalyticsReporterRTC sendMetricWithEvent:*(*(*(v36 + 40) + 8) + 40) success:v37 == 0 error:v37];
  (*(*(v36 + 32) + 16))();
}

void sub_10001F894(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = +[PCSAnalytics logger];
  if (v3)
  {
    v6 = &PCSEventWalrusRepairPerformed;
LABEL_3:
    [v5 logSuccessForEvent:*v6];
    goto LABEL_11;
  }

  v7 = [(NSError *)v4 domain];
  if ([v7 isEqualToString:kPCSErrorDomain])
  {
    v8 = [(NSError *)v4 code];

    if (v8 == 159)
    {
      v6 = &PCSEventWalrusRepairNotNeeded;
      goto LABEL_3;
    }
  }

  else
  {
  }

  v9 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "repair migrate result: %@", &v10, 0xCu);
  }

  [v5 logRecoverableError:v4 forEvent:PCSEventWalrusRepairPerformed withAttributes:0];
LABEL_11:
}

void sub_10001FA70(uint64_t a1)
{
  [*(a1 + 32) triggerWatchSyncing];
  [*(a1 + 32) notifyKeyRegistry];
  v2 = +[PCSAccountsModel accountForCurrentPersona];
  v3 = [v2 aa_personID];
  if (v3)
  {
    v4 = [*(a1 + 32) identityCopySet:v3];
    if (v4)
    {
      v5 = v4;
      if (_os_feature_enabled_impl())
      {
        [*(a1 + 32) repairWalrus];
      }

      if ([*(a1 + 32) shouldRoll])
      {
        [*(a1 + 32) triggerKeyRolling];
      }

      v6 = [v2 aa_altDSID];
      v11 = 0;
      v7 = [PCSAccountsModel accountEligibleForMBRestoreForAltDSID:v6 error:&v11];
      v8 = v11;
      if (v7)
      {
        [*(a1 + 32) restoreMobileBackup:0 dsid:v3 withReply:&stru_100039978];
      }

      else
      {
        v10 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v13 = v8;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MB: account not eligible for restore: %@", buf, 0xCu);
        }
      }

      CFRelease(v5);
    }
  }

  else
  {
    v9 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dsid is nil", buf, 2u);
    }
  }
}

void sub_10001FC5C(id a1, NSNumber *a2, NSNumber *a3, NSNumber *a4, NSError *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MB: %@ %@ %@ %@", &v13, 0x2Au);
  }
}

void sub_10001FFC4(uint64_t a1)
{
  if (byte_1000407A8 == 1)
  {
    v2 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Already a request (recently) pending, returning early", buf, 2u);
    }

    v3 = *(a1 + 40);
    v4 = PCSErrorCreate();
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    byte_1000407A8 = 1;
    v5 = [*(a1 + 32) registry];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000200F8;
    v7[3] = &unk_1000399C0;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v5 checkRegistry:v7];

    v4 = v8;
  }
}

void sub_1000200F8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = dispatch_time(0, 60000000000);
  v3 = [*(a1 + 32) registryQueue];
  dispatch_after(v2, v3, &stru_100039998);
}

void sub_100020180(id a1)
{
  v1 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Allowing checkRegistry calls again", v2, 2u);
  }

  byte_1000407A8 = 0;
}

void sub_1000202E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v9 = [v3 accounts];
  v5 = [v9 dsid];
  v6 = [v4 getValues:v5];
  v7 = *(a1 + 32);
  v8 = [v4 uuid];

  [v7 setObject:v6 forKeyedSubscript:v8];
}

__CFDictionary *sub_100020E40(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      CFDictionarySetValue(Mutable, v11, *v14);
      v12 = v14 + 1;
      v14 += 2;
      v11 = *v12;
    }

    while (*v12);
  }

  return Mutable;
}

void sub_1000214BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000214E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && [v5 count])
  {
    v23 = 0;
    v24 = v5;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v9)
    {
      goto LABEL_58;
    }

    v10 = v9;
    v11 = *v26;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        v14 = [v13 objectForKeyedSubscript:{@"view", v23, v24, v25}];
        v15 = [v14 isEqualToString:@"global"];

        if ((v15 & 1) == 0)
        {
          v16 = [v13 objectForKeyedSubscript:@"currentTLK"];
          v17 = sub_1000219F8(v16);

          v18 = [v13 objectForKeyedSubscript:@"keystate"];
          v19 = sub_1000219F8(v18);

          if ([v19 isEqualToString:@"ready"] || objc_msgSend(v19, "isEqualToString:", @"become_ready"))
          {
            *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_30:

            goto LABEL_31;
          }

          if ([v19 isEqualToString:@"readypendingunlock"])
          {
            v20 = *(*(a1 + 40) + 8);
            v21 = 23;
          }

          else if ([v19 isEqualToString:@"waitforunlock"])
          {
            v20 = *(*(a1 + 40) + 8);
            v21 = 13;
          }

          else if ([v19 isEqualToString:@"error"])
          {
            v20 = *(*(a1 + 40) + 8);
            v21 = 24;
          }

          else if ([v19 isEqualToString:@"initializing"] || objc_msgSend(v19, "isEqualToString:", @"initialized") || objc_msgSend(v19, "isEqualToString:", @"fetchcomplete") || objc_msgSend(v19, "isEqualToString:", @"begin_fetch") || objc_msgSend(v19, "isEqualToString:", @"fetchcomplete") || objc_msgSend(v19, "isEqualToString:", @"waitfortlkcreation") || objc_msgSend(v19, "isEqualToString:", @"waitfortlkupload"))
          {
            v20 = *(*(a1 + 40) + 8);
            v21 = 14;
          }

          else
          {
            if (![v19 isEqualToString:@"badcurrentpointers"])
            {
              if ([v19 isEqualToString:@"waitfortrust"] || objc_msgSend(v19, "isEqualToString:", @"needrefetch") || objc_msgSend(v19, "isEqualToString:", @"badcurrentpointers") || objc_msgSend(v19, "isEqualToString:", @"newtlksfailed"))
              {
                v20 = *(*(a1 + 40) + 8);
                v21 = 15;
                goto LABEL_29;
              }

              if ([v19 isEqualToString:@"fetching"])
              {
                *(*(*(a1 + 40) + 8) + 24) = 16;
                goto LABEL_30;
              }

              if ([v19 isEqualToString:@"tlkmissing"] || objc_msgSend(v19, "isEqualToString:", @"waitfortlk"))
              {
                v20 = *(*(a1 + 40) + 8);
                v21 = 17;
                goto LABEL_29;
              }

              if (![v19 isEqualToString:@"unhealthy"])
              {
                if ([v19 isEqualToString:@"healtlkshares"])
                {
                  v20 = *(*(a1 + 40) + 8);
                  v21 = 19;
                }

                else if ([v19 isEqualToString:@"healtlksharesfailed"])
                {
                  v20 = *(*(a1 + 40) + 8);
                  v21 = 20;
                }

                else if ([v19 isEqualToString:@"waitforfixupoperation"])
                {
                  v20 = *(*(a1 + 40) + 8);
                  v21 = 21;
                }

                else if ([v19 isEqualToString:@"resetzone"])
                {
                  v20 = *(*(a1 + 40) + 8);
                  v21 = 22;
                }

                else
                {
                  v20 = *(*(a1 + 40) + 8);
                  if (v17)
                  {
                    v21 = 8;
                  }

                  else
                  {
                    v21 = 7;
                  }
                }

                goto LABEL_29;
              }
            }

            v20 = *(*(a1 + 40) + 8);
            v21 = 18;
          }

LABEL_29:
          *(v20 + 24) = v21;
          goto LABEL_30;
        }

LABEL_31:
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v22 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v10 = v22;
      if (!v22)
      {
LABEL_58:

        v6 = v23;
        v5 = v24;
        goto LABEL_59;
      }
    }
  }

  v7 = pcsLogObjForScope();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PCSReportManateeStatus rpcStatus reply: %@", buf, 0xCu);
  }

  *(*(*(a1 + 40) + 8) + 24) = 10;
LABEL_59:
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1000219F8(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100021CD4(id a1, NSArray *a2, PCSMTT *a3, NSError *a4)
{
  v4 = a4;
  v5 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Batch manatee identity creation finished with error: %@", &v6, 0xCu);
  }
}

void sub_100021EF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100021F1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:kPCSSetupDSID];
    if (PCSCurrentPersonaMatchesDSID())
    {
      v4 = [*(a1 + 32) objectForKeyedSubscript:kPCSSetupRecoveryToken];
      v5 = [*(a1 + 32) mutableCopy];
      v6 = +[PCSMetrics metrics];
      v7 = [v6 keyRegistryCallback];
      v8 = objc_retainBlock(v7);
      [v5 setObject:v8 forKeyedSubscript:kPCSSetupCallbackKeyRegistry];

      v9 = PCSIdentitySetup();
      if (v9)
      {
        v10 = v9;
        (*(*(a1 + 40) + 16))();
        CFRelease(v10);
      }

      else
      {
        v13 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setupIdentitiesWithParameters: PCSIdentitySetup failed: %@", buf, 0xCu);
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v11 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Current persona doesn't match dsid", buf, 2u);
      }

      v12 = *(a1 + 40);
      v4 = PCSErrorCreate();
      (*(v12 + 16))(v12, 2, 0, 0, v4);
    }
  }
}

uint64_t start()
{
  bzero(v18, 0x400uLL);
  _set_user_dir_suffix();
  confstr(65537, v18, 0x400uLL);
  signal(15, 1);
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v1 = qword_1000407B0;
  qword_1000407B0 = v0;

  dispatch_source_set_event_handler(qword_1000407B0, &stru_100039A98);
  dispatch_activate(qword_1000407B0);
  v2 = objc_opt_new();
  v3 = +[PCSKeySyncing defaultSyncingManager];
  v4 = +[PCSSyncing defaultPCSSyncing];
  v5 = os_log_create("com.apple.ProtectedCloudStorage", "PCSSync");
  v6 = qword_1000407B8;
  qword_1000407B8 = v5;

  [v2 setManager:v3];
  v7 = objc_autoreleasePoolPush();
  v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.protectedcloudstorage.protectedcloudkeysyncing"];
  [v8 setDelegate:v2];
  [v8 resume];

  objc_autoreleasePoolPop(v7);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100022790;
  handler[3] = &unk_100039A78;
  v9 = v4;
  v17 = v9;
  xpc_activity_register("com.apple.ProtectedCloudStorage.fortnightly", XPC_ACTIVITY_CHECK_IN, handler);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000227F8;
  v14[3] = &unk_100039A78;
  v15 = v9;
  v10 = v9;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, v14);
  v11 = +[PCSPairedSyncDelegate sharedSyncDelegate];
  [v10 triggerWatchSyncing];
  v12 = +[NSRunLoop currentRunLoop];
  [v12 run];

  return 0;
}

void sub_100022790(uint64_t a1, void *a2)
{
  v4 = a2;
  if (xpc_activity_get_state(v4) == 2)
  {
    v3 = objc_autoreleasePoolPush();
    [*(a1 + 32) notifyDailyEvent];
    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000227F8(uint64_t a1, void *a2)
{
  v7 = a2;
  string = xpc_dictionary_get_string(v7, _xpc_event_key_name);
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [NSString stringWithUTF8String:string];
  [v5 notifyEvent:v6];

  objc_autoreleasePoolPop(v4);
}

void sub_100022C2C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100022CE0(uint64_t a1, int a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unexpected error finding current identity for %@: %d", &v3, 0x12u);
}