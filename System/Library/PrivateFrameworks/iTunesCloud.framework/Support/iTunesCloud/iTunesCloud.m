void sub_1000023D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000025A8(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) supportedConfigurations];
  v2 = [v6 allObjects];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000292C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing pending key invalidations", buf, 0xCu);
  }

  v6 = [*(a1 + 32) _storeRequestContext];
  v7 = [v6 copyWithBlock:&stru_1001DD770];

  v8 = +[ICURLBagProvider sharedBagProvider];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002CC4;
  v10[3] = &unk_1001DFB88;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v9 = v3;
  [v8 getBagForRequestContext:v7 withCompletionHandler:v10];
}

void sub_100002ADC(id a1, ICStoreRequestContext *a2)
{
  v2 = a2;
  [(ICStoreRequestContext *)v2 setAllowsExpiredBags:1];
  v3 = +[ICUserIdentity activeAccount];
  [(ICStoreRequestContext *)v2 setIdentity:v3];

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [(ICStoreRequestContext *)v2 setIdentityStore:v4];

  v5 = +[ICClientInfo defaultInfo];
  [(ICStoreRequestContext *)v2 setClientInfo:v5];

  v6 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [(ICStoreRequestContext *)v2 setAuthenticationProvider:v6];
}

void sub_100002C58(id a1, ICStoreRequestContext *a2)
{
  v2 = a2;
  v3 = [[ICClientInfo alloc] initWithSystemApplicationType:3];
  [(ICStoreRequestContext *)v2 setClientInfo:v3];
}

void sub_100002CC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch bag to obtain invalidation URLS. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping key session for keys", buf, 0xCu);
    }

    v11 = +[ICContentKeySession pendingInvalidationKeyStorePath];
    v12 = [[ICFileContentKeyStore alloc] initWithPath:v11];
    v13 = [ICContentKeySession alloc];
    v14 = [*(a1 + 32) _storeRequestContext];
    v15 = [v13 initWithRequestContext:v14 keyStore:v12];

    [v15 setKeyServerProtocolType:2];
    v16 = [v5 urlForBagKey:ICURLBagKeyPodcastsLicenseOfflineStop];
    [v15 setOfflineLeaseStopURL:v16];

    v17 = [v5 urlForBagKey:ICURLBagKeyPodcastsLicenseOfflineStopNonce];
    [v15 setOfflineLeaseStopNonceURL:v17];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002F60;
    v20[3] = &unk_1001DFBB0;
    v18 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v12;
    v22 = v18;
    v19 = v12;
    [v15 stopSessionInvalidatingKeys:1 withCompletion:v20];
  }
}

void sub_100002F60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Finished Invalidating offline keys error=%{public}@", buf, 0x16u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DB3B4;
    v10[3] = &unk_1001DD798;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    [v8 enumerateKeyEntriesUsingBlock:v10];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished Invalidating offline keys", buf, 0xCu);
    }
  }

  [*(a1 + 48) finishWithError:v3];
}

void sub_1000031E4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 userIdentityStore];
  v6 = [v4 userIdentity];

  v18 = 0;
  v7 = [v5 getPropertiesForUserIdentity:v6 error:&v18];
  v8 = v18;
  if (!v8 && v7)
  {
    v9 = [v7 cloudLibraryStateReason];
    if (v3)
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000033C8;
      block[3] = &unk_1001DF5A0;
      v14 = v3;
      v9 = v9;
      v13 = v9;
      dispatch_async(v10, block);
    }

    goto LABEL_7;
  }

  if (v3)
  {
    v11 = dispatch_get_global_queue(0, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E7660;
    v15[3] = &unk_1001DF5A0;
    v17 = v3;
    v16 = v8;
    dispatch_async(v11, v15);

    v9 = v17;
LABEL_7:
  }
}

id sub_1000033E0(void *a1)
{
  v1 = a1;
  if (MSVDeviceSupportsMultipleLibraries())
  {
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = qword_100213D50;
    v12 = qword_100213D50;
    if (!qword_100213D50)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000E7678;
      v8[3] = &unk_1001DF318;
      v8[4] = &v9;
      sub_1000E7678(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    v5 = [v1 userIdentity];
    v6 = [v3 controllerWithUserIdentity:v5];
    v2 = [v6 isEnablingCloudLibraryDestructive];
  }

  return v2;
}

void sub_1000034F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003528(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_100213C78;
  v9 = off_100213C78;
  if (!off_100213C78)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007B6B0;
    v5[3] = &unk_1001DF318;
    v5[4] = &v6;
    sub_10007B6B0(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1, @"com.apple.Music", 1000);
  }

  else
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void soft_SBSSetStatusBarShowsActivityForApplication(Boolean, CFStringRef, unsigned int)"];
    [v3 handleFailureInFunction:v4 file:@"ICDServerOperationsManager.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100003654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004290(uint64_t a1, char a2, int a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if ((a2 & 1) != 0 || a3)
  {
    if (*(a1 + 56) == 1)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 32);
      v16 = *(*(*(a1 + 48) + 8) + 24);
      v23 = 138543618;
      v24 = v15;
      v25 = 1024;
      LODWORD(v26) = v16;
      v12 = "%{public}@ - user is a subscriber and locker bit is set. includeMediaKindSong=%{BOOL}u";
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v17 = *(a1 + 32);
      v18 = *(*(*(a1 + 48) + 8) + 24);
      v23 = 138543618;
      v24 = v17;
      v25 = 1024;
      LODWORD(v26) = v18;
      v12 = "%{public}@ - user is a subscriber and locker bit is NOT set. includeMediaKindSong=%{BOOL}u";
    }

    goto LABEL_15;
  }

  if (!v7)
  {
    if (MSVDeviceSupportsSideLoadedMediaContent())
    {
      v19 = [*(a1 + 32) musicLibrary];
      v20 = [v19 jaliscoLastExcludedMediaKinds];
      *(*(*(a1 + 48) + 8) + 24) = [v20 containsObject:&off_1001ECFB8] ^ 1;
    }

    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v21 = *(a1 + 32);
    v22 = *(*(*(a1 + 48) + 8) + 24);
    v23 = 138543618;
    v24 = v21;
    v25 = 1024;
    LODWORD(v26) = v22;
    v12 = "%{public}@ - user is a NOT a subscriber. includeMediaKindSong=%{BOOL}u";
LABEL_15:
    v13 = v9;
    v14 = 18;
    goto LABEL_16;
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(*(*(a1 + 48) + 8) + 24);
    v23 = 138543874;
    v24 = v10;
    v25 = 2114;
    v26 = v8;
    v27 = 1024;
    v28 = v11;
    v12 = "%{public}@ Error %{public}@ loading subscription status. includeMediaKindSong=%{BOOL}u";
    v13 = v9;
    v14 = 28;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v23, v14);
  }

LABEL_17:

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100004B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100004B8C()
{
  v0 = +[ICDeviceInfo currentDeviceInfo];
  if ([v0 isWatch])
  {
    v1 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    v2 = [v1 isMediaSyncingSupported];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100004BFC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 userIdentity];
  v6 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v5];
  if (![v6 shouldBlockPersonalizedNetworkRequestsForMusic])
  {
    v10 = +[ICMusicSubscriptionStatusController sharedStatusController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004E18;
    v11[3] = &unk_1001DDBD8;
    v9 = &v12;
    v12 = v3;
    v13 = v4;
    [v10 getSubscriptionStatusForUserIdentity:v5 bypassingCache:0 withCompletionHandler:v11];

    v8 = v13;
    goto LABEL_7;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cant load subscription status because privacy acknowledgement is required for identity %{[ublic}@", buf, 0xCu);
  }

  if (v4)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E7C18;
    block[3] = &unk_1001DF5C8;
    v9 = &v15;
    v15 = v4;
    dispatch_async(v8, block);
LABEL_7:
  }
}

void sub_100004E18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to load subscription status. error=%{public}@", buf, 0xCu);
    }

    LOBYTE(v8) = 0;
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [v5 hasCapability:1];
    v8 = [v5 isMatchEnabled];
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) userIdentity];
      *buf = 138543874;
      v19 = v10;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ has AM subscription enabled=%{BOOL}u, Match subscription enabled=%{BOOL}u", buf, 0x18u);
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005040;
    block[3] = &unk_1001DDBB0;
    v15 = v11;
    v16 = v9;
    v17 = v8;
    v14 = v6;
    dispatch_async(v12, block);
  }
}

void sub_10000511C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000055B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005624(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100005F2C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  [v5 setIdentityStore:v3];

  [v5 setIdentity:*(a1 + 32)];
  [v5 setAllowsExpiredBags:1];
  v4 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v5 setAuthenticationProvider:v4];

  [v5 setPersonalizationStyle:2];
}

uint64_t sub_100005FEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t ICDAppIntentDispatcher.dispatchMusicPushNotificationIntentWithTopic(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return sub_10000936C();
}

uint64_t sub_10000604C()
{
  if (&static IntentsServices.localDispatcher(clientLabel:source:environment:options:))
  {
    if (qword_100213980 != -1)
    {
      sub_1000092D0(&qword_100213980);
    }

    v2 = v0[9];
    v3 = type metadata accessor for Logger();
    v0[13] = sub_100007B5C(v3, qword_100213EE0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[8];
      v6 = v0[9];
      v8 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      *(v8 + 4) = sub_1000096FC(4.8149e-34, v1, v9, v10, v11, v12);
      sub_1000096E4();
      _os_log_impl(v13, v14, v15, v16, v8, 0xCu);
      sub_100008B14(v1);
      sub_1000094E4(v1);
      sub_1000094E4(v8);
    }

    sub_1000095A0();
    sub_100007BFC(0, &qword_100212750, &type metadata accessor for IntentParameter);
    sub_100009764(v17);

    v18 = IntentParameter.init(wrappedValue:)();
    sub_1000094B4(v18);

    v0[15] = IntentParameter.init(wrappedValue:)();
    sub_100007B94();
    v0[16] = v19;
    sub_10000947C(v19);
    v0[17] = *(v20 + 64);
    v0[18] = sub_100009604();
    v21 = *(v1 + OBJC_IVAR____TtC12itunescloudd22ICDAppIntentDispatcher_localDispatcher);
    v22 = *(v1 + OBJC_IVAR____TtC12itunescloudd22ICDAppIntentDispatcher_localDispatcher + 8);
    swift_getObjectType();
    v23 = sub_100009654();
    sub_100009698(v23);
    v0[20] = v24;
    v26 = *(v25 + 64);
    v27 = sub_100009604();
    v0[21] = v27;
    sub_1000093DC(v27, &qword_100212770);
    sub_10000947C(v28);
    v30 = *(v29 + 64);
    v31 = sub_100009604();
    v32 = type metadata accessor for UTType();
    sub_100009680(v31, v33, v34, v32);
    sub_100007C5C(0, &qword_100212778, &type metadata accessor for SnippetEnvironment);
    sub_10000947C(v35);
    v37 = *(v36 + 64);
    v38 = sub_100009604();
    v39 = type metadata accessor for SnippetEnvironment();
    sub_100009680(v38, v40, v41, v39);
    v42 = static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
    sub_10000939C(v42, v43, v44, v45, v46, v47, v48, v49, v65, v66, v67);

    v50 = type metadata accessor for DefaultPerformAppIntentDelegate();
    sub_100009764(v50);
    v0[22] = DefaultPerformAppIntentDelegate.init()();
    v51 = async function pointer to AppIntentDispatching.perform<A>(_:options:delegate:)[1];
    v52 = swift_task_alloc();
    v0[23] = v52;
    sub_100007CD8();
    *v52 = v0;
    v52[1] = sub_100006468;
    sub_100009458();
    sub_10000971C();

    return AppIntentDispatching.perform<A>(_:options:delegate:)();
  }

  else
  {
    if (qword_100213980 != -1)
    {
      sub_1000092D0(&qword_100213980);
    }

    v54 = type metadata accessor for Logger();
    sub_100007B5C(v54, qword_100213EE0);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      sub_1000096E4();
      _os_log_impl(v58, v59, v60, v61, v57, 2u);
      sub_1000094E4(v57);
    }

    sub_100009360();
    sub_10000971C();

    return v62();
  }
}

uint64_t sub_100006468()
{
  sub_100009594();
  sub_1000094A8();
  v3 = v2;
  v4 = v2[23];
  v5 = *v1;
  sub_100009314();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[21];
    v7 = v3[22];
    v11 = v3 + 19;
    v9 = v3[19];
    v10 = v11[1];

    (*(v10 + 8))(v8, v9);
    v12 = sub_100006704;
  }

  else
  {
    v13 = sub_1000096B8();
    v14(v13);

    v12 = sub_1000065C8;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1000065C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100009638();
  sub_1000096AC();
  sub_100009404();
  sub_100009534(v18, &qword_100212760);
  v19 = sub_1000096D8();
  sub_100007CB0(v19, 0, 1, v20);
  v21 = swift_task_alloc();
  sub_100009518(v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = sub_1000094FC(v23);
  v25 = v15[18];
  if (v24)
  {
    sub_100009324();
    sub_10000955C();
    sub_1000096CC();
    v26 = sub_100009734(4.8149e-34);
    sub_100009578(v26);
    sub_10000974C();
    sub_1000095D8();

    sub_1000095BC(v27, v28);
    sub_10000977C();
    *(v17 + 4) = v16;
    sub_10000937C(&_mh_execute_header, v29, v30, "Received response: %s");
    sub_100009424();
    sub_1000094E4(v17);
  }

  else
  {
    v31 = v15[14];
    v32 = v15[15];

    sub_100007D90(v14);
  }

  sub_100007D90(v25);
  sub_100009794();

  sub_100009360();
  sub_10000961C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100006704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100009638();
  sub_1000096AC();
  v18 = v15[21];

  sub_100009404();
  sub_100009534(v19, &qword_100212760);
  v20 = sub_1000096D8();
  sub_100009680(v20, v21, v22, v23);
  v24 = swift_task_alloc();
  sub_100009518(v24);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = sub_1000094FC(v26);
  v28 = v15[18];
  if (v27)
  {
    sub_100009324();
    sub_10000955C();
    sub_1000096CC();
    v29 = sub_100009734(4.8149e-34);
    sub_100009578(v29);
    sub_10000974C();
    sub_1000095D8();

    sub_1000095BC(v30, v31);
    sub_10000977C();
    *(v17 + 4) = v16;
    sub_10000937C(&_mh_execute_header, v32, v33, "Received response: %s");
    sub_100009424();
    sub_1000094E4(v17);
  }

  else
  {
    v34 = v15[14];
    v35 = v15[15];

    sub_100007D90(v14);
  }

  sub_100007D90(v28);
  sub_100009794();

  sub_100009360();
  sub_10000961C();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100006860(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10000695C;

  return ICDAppIntentDispatcher.dispatchMusicPushNotificationIntentWithTopic(_:payload:)(v6, v8, v9, v11);
}

uint64_t sub_10000695C()
{
  sub_1000094A8();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v7 = *v0;
  sub_100009314();
  *v8 = v7;

  v5[2](v5);
  _Block_release(v5);
  sub_100009360();

  return v9();
}

uint64_t sub_100006AC4(uint64_t a1, uint64_t a2)
{
  sub_100007C5C(0, &qword_1002127B8, &type metadata accessor for TaskPriority);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100007CB0(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_10016AC18;
  v10[5] = v9;
  sub_10000809C(0, 0, v7, &unk_10016AC28, v10);
}

uint64_t ICDAppIntentDispatcher.dispatchPodcastsPushNotificationIntentWithTopic(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return sub_10000936C();
}

uint64_t sub_100006C00()
{
  if (&static IntentsServices.localDispatcher(clientLabel:source:environment:options:))
  {
    if (qword_100213980 != -1)
    {
      sub_1000092D0(&qword_100213980);
    }

    v2 = v0[9];
    v3 = type metadata accessor for Logger();
    v0[13] = sub_100007B5C(v3, qword_100213EE0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[8];
      v6 = v0[9];
      v8 = swift_slowAlloc();
      v1 = swift_slowAlloc();
      *(v8 + 4) = sub_1000096FC(4.8149e-34, v1, v9, v10, v11, v12);
      sub_1000096E4();
      _os_log_impl(v13, v14, v15, v16, v8, 0xCu);
      sub_100008B14(v1);
      sub_1000094E4(v1);
      sub_1000094E4(v8);
    }

    sub_1000095A0();
    sub_100007BFC(0, &qword_100212750, &type metadata accessor for IntentParameter);
    sub_100009764(v17);

    v18 = IntentParameter.init(wrappedValue:)();
    sub_1000094B4(v18);

    v0[15] = IntentParameter.init(wrappedValue:)();
    sub_100007B94();
    v0[16] = v19;
    sub_10000947C(v19);
    v0[17] = *(v20 + 64);
    v0[18] = sub_100009604();
    v21 = *(v1 + OBJC_IVAR____TtC12itunescloudd22ICDAppIntentDispatcher_localDispatcher);
    v22 = *(v1 + OBJC_IVAR____TtC12itunescloudd22ICDAppIntentDispatcher_localDispatcher + 8);
    swift_getObjectType();
    v23 = sub_100009654();
    sub_100009698(v23);
    v0[20] = v24;
    v26 = *(v25 + 64);
    v27 = sub_100009604();
    v0[21] = v27;
    sub_1000093DC(v27, &qword_100212770);
    sub_10000947C(v28);
    v30 = *(v29 + 64);
    v31 = sub_100009604();
    v32 = type metadata accessor for UTType();
    sub_100009680(v31, v33, v34, v32);
    sub_100007C5C(0, &qword_100212778, &type metadata accessor for SnippetEnvironment);
    sub_10000947C(v35);
    v37 = *(v36 + 64);
    v38 = sub_100009604();
    v39 = type metadata accessor for SnippetEnvironment();
    sub_100009680(v38, v40, v41, v39);
    v42 = static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
    sub_10000939C(v42, v43, v44, v45, v46, v47, v48, v49, v65, v66, v67);

    v50 = type metadata accessor for DefaultPerformAppIntentDelegate();
    sub_100009764(v50);
    v0[22] = DefaultPerformAppIntentDelegate.init()();
    v51 = async function pointer to AppIntentDispatching.perform<A>(_:options:delegate:)[1];
    v52 = swift_task_alloc();
    v0[23] = v52;
    sub_100008A7C();
    *v52 = v0;
    v52[1] = sub_10000701C;
    sub_100009458();
    sub_10000971C();

    return AppIntentDispatching.perform<A>(_:options:delegate:)();
  }

  else
  {
    if (qword_100213980 != -1)
    {
      sub_1000092D0(&qword_100213980);
    }

    v54 = type metadata accessor for Logger();
    sub_100007B5C(v54, qword_100213EE0);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      sub_1000096E4();
      _os_log_impl(v58, v59, v60, v61, v57, 2u);
      sub_1000094E4(v57);
    }

    sub_100009360();
    sub_10000971C();

    return v62();
  }
}

uint64_t sub_10000701C()
{
  sub_100009594();
  sub_1000094A8();
  v3 = v2;
  v4 = v2[23];
  v5 = *v1;
  sub_100009314();
  *v6 = v5;

  if (v0)
  {
    v8 = v3[21];
    v7 = v3[22];
    v11 = v3 + 19;
    v9 = v3[19];
    v10 = v11[1];

    (*(v10 + 8))(v8, v9);
    v12 = sub_1000072B8;
  }

  else
  {
    v13 = sub_1000096B8();
    v14(v13);

    v12 = sub_10000717C;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10000717C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100009638();
  sub_1000096AC();
  sub_100009404();
  sub_100009534(v18, &qword_100212760);
  v19 = sub_1000096D8();
  sub_100007CB0(v19, 0, 1, v20);
  v21 = swift_task_alloc();
  sub_100009518(v21);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = sub_1000094FC(v23);
  v25 = v15[18];
  if (v24)
  {
    sub_100009324();
    sub_10000955C();
    sub_1000096CC();
    v26 = sub_100009734(4.8149e-34);
    sub_100009578(v26);
    sub_10000974C();
    sub_1000095D8();

    sub_1000095BC(v27, v28);
    sub_10000977C();
    *(v17 + 4) = v16;
    sub_10000937C(&_mh_execute_header, v29, v30, "Received response = %s");
    sub_100009424();
    sub_1000094E4(v17);
  }

  else
  {
    v31 = v15[14];
    v32 = v15[15];

    sub_100007D90(v14);
  }

  sub_100007D90(v25);
  sub_100009794();

  sub_100009360();
  sub_10000961C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000072B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100009638();
  sub_1000096AC();
  v18 = v15[21];

  sub_100009404();
  sub_100009534(v19, &qword_100212760);
  v20 = sub_1000096D8();
  sub_100009680(v20, v21, v22, v23);
  v24 = swift_task_alloc();
  sub_100009518(v24);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = sub_1000094FC(v26);
  v28 = v15[18];
  if (v27)
  {
    sub_100009324();
    sub_10000955C();
    sub_1000096CC();
    v29 = sub_100009734(4.8149e-34);
    sub_100009578(v29);
    sub_10000974C();
    sub_1000095D8();

    sub_1000095BC(v30, v31);
    sub_10000977C();
    *(v17 + 4) = v16;
    sub_10000937C(&_mh_execute_header, v32, v33, "Received response = %s");
    sub_100009424();
    sub_1000094E4(v17);
  }

  else
  {
    v34 = v15[14];
    v35 = v15[15];

    sub_100007D90(v14);
  }

  sub_100007D90(v28);
  sub_100009794();

  sub_100009360();
  sub_10000961C();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100007414(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_1000095F4();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_100006AC4(a7, v12);
}

uint64_t sub_100007498(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000092CC;

  return ICDAppIntentDispatcher.dispatchPodcastsPushNotificationIntentWithTopic(_:payload:)(v6, v8, v9, v11);
}

uint64_t variable initialization expression of ICDAppIntentDispatcher.localDispatcher()
{
  v0 = [objc_opt_self() defaultEnvironment];
  v23[3] = sub_100008AD0();
  v23[4] = &protocol witness table for LNEnvironment;
  v23[0] = v0;
  v1 = type metadata accessor for IntentsServices.DispatcherOptions();
  v2 = sub_10000934C(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100009414();
  v9 = v8 - v7;
  sub_100007C5C(0, &qword_100212788, &type metadata accessor for IntentsServices.InterfaceIdiom);
  v11 = sub_10000947C(v10);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  v14 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v15 = sub_10000934C(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100009414();
  (*(v20 + 104))(v19 - v18, enum case for IntentsServices.PayloadPrivacy.default(_:));
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v21 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  (*(v4 + 8))(v9, v1);
  sub_100008B14(v23);
  return v21;
}

id ICDAppIntentDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICDAppIntentDispatcher.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12itunescloudd22ICDAppIntentDispatcher_localDispatcher];
  v2 = [objc_opt_self() defaultEnvironment];
  v28[3] = sub_100008AD0();
  v28[4] = &protocol witness table for LNEnvironment;
  v28[0] = v2;
  v3 = type metadata accessor for IntentsServices.DispatcherOptions();
  v4 = sub_10000934C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100009414();
  v11 = v10 - v9;
  sub_100007C5C(0, &qword_100212788, &type metadata accessor for IntentsServices.InterfaceIdiom);
  v13 = sub_10000947C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  v16 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v17 = sub_10000934C(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100009414();
  (*(v22 + 104))(v21 - v20, enum case for IntentsServices.PayloadPrivacy.default(_:));
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v23 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  v25 = v24;
  (*(v6 + 8))(v11, v3);
  sub_100008B14(v28);
  *v1 = v23;
  v1[1] = v25;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for ICDAppIntentDispatcher();
  return objc_msgSendSuper2(&v27, "init");
}

id ICDAppIntentDispatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICDAppIntentDispatcher();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007AE0()
{
  v0 = type metadata accessor for Logger();
  sub_100009254(v0, qword_100213EE0);
  sub_100007B5C(v0, qword_100213EE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100007B5C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_100007B94()
{
  if (!qword_100212758)
  {
    sub_100007BFC(255, &qword_100212760, &type metadata accessor for AppIntentSuccessResult);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100212758);
    }
  }
}

void sub_100007BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String, &protocol witness table for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100007C5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100007CD8()
{
  result = qword_100213988;
  if (!qword_100213988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100213988);
  }

  return result;
}

uint64_t sub_100007D2C(uint64_t a1, uint64_t a2)
{
  sub_100007B94();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007D90(uint64_t a1)
{
  sub_100007B94();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007DEC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000092C4;

  return v7();
}

uint64_t sub_100007ED4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100007FBC;

  return v8();
}

uint64_t sub_100007FBC()
{
  sub_1000096F0();
  sub_1000094A8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100009314();
  *v4 = v3;

  sub_100009360();

  return v5();
}

uint64_t sub_10000809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100007C5C(0, &qword_1002127B8, &type metadata accessor for TaskPriority);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v25 - v11;
  sub_100008E68(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100008EE8(v12, 1, v13) == 1)
  {
    sub_100008F10(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100008F10(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008F10(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100008348(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008440;

  return v7(a1);
}

uint64_t sub_100008440()
{
  sub_1000096F0();
  sub_1000094A8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100009314();
  *v4 = v3;

  sub_100009360();

  return v5();
}

uint64_t sub_100008524(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000085E8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000091A4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100008B14(v11);
  return v7;
}

unint64_t sub_1000085E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000086E8(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000086E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008734(a1, a2);
  sub_10000884C(&off_1001D9C18);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008734(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100008930(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10000884C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_100008994(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100008930(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100009200();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100008994(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009200();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100008A7C()
{
  result = qword_100213990[0];
  if (!qword_100213990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100213990);
  }

  return result;
}

unint64_t sub_100008AD0()
{
  result = qword_100212780;
  if (!qword_100212780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100212780);
  }

  return result;
}

uint64_t sub_100008B14(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_100008B84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100008BA4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008C34()
{
  sub_100009594();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100009550(v5);
  *v6 = v7;
  v8 = sub_1000092F0(v6);

  return v9(v8);
}

uint64_t sub_100008CD0()
{
  sub_100009594();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100009550(v5);
  *v6 = v7;
  v8 = sub_1000092F0(v6);

  return v9(v8);
}

uint64_t sub_100008D6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_1000095F4();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100008DA4()
{
  sub_100009594();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_100009550(v7);
  *v8 = v9;
  v8[1] = sub_1000092C4;

  return sub_100007ED4(v2, v3, v4, v6);
}

uint64_t sub_100008E68(uint64_t a1, uint64_t a2)
{
  sub_100007C5C(0, &qword_1002127B8, &type metadata accessor for TaskPriority);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008F10(uint64_t a1)
{
  sub_100007C5C(0, &qword_1002127B8, &type metadata accessor for TaskPriority);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008F88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100009550(v3);
  *v4 = v5;
  v6 = sub_100009488(v4);

  return v7(v6);
}

uint64_t sub_100009024()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100009550(v3);
  *v4 = v5;
  v6 = sub_100009488(v4);

  return v7(v6);
}

uint64_t sub_1000090C0()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1000095F4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100009108()
{
  sub_100009594();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100009550(v5);
  *v6 = v7;
  v8 = sub_1000092F0(v6);

  return v9(v8);
}

uint64_t sub_1000091A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100009200()
{
  if (!qword_1002127C0)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1002127C0);
    }
  }
}

uint64_t *sub_100009254(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000092D0(uint64_t a1)
{

  return _swift_once(a1, sub_100007AE0);
}

uint64_t sub_1000092F0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100009324()
{
  v2 = v0[16];
  v5 = v0[14];
  v6 = v0[15];
  v3 = v0[17] + 15;

  return swift_slowAlloc();
}

uint64_t sub_100009360()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_10000937C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10000939C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOWORD(a11) = 0;

  return AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)(0, 0, 0, 1, 2, v11, 0, 0, 0, 0, a11, v12);
}

void sub_1000093DC(uint64_t a1, unint64_t *a2)
{

  sub_100007C5C(0, a2, &type metadata accessor for UTType);
}

void sub_100009404()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[17] + 15;
}

uint64_t sub_100009424()
{
  sub_100008B14(v0);

  return _swift_slowDealloc(v0, -1, -1);
}

uint64_t sub_100009488(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1000094B4(uint64_t a1)
{
  v2[14] = a1;
  v2[4] = v4;
  v2[5] = v1;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);

  return swift_allocObject();
}

uint64_t sub_1000094E4(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

BOOL sub_1000094FC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100009518(uint64_t a1)
{

  return sub_100007D2C(v1, a1);
}

void sub_100009534(uint64_t a1, unint64_t *a2)
{

  sub_100007BFC(0, a2, &type metadata accessor for AppIntentSuccessResult);
}

uint64_t sub_10000955C()
{

  return swift_slowAlloc();
}

uint64_t sub_100009578(uint64_t a1)
{

  return sub_100007D2C(v1, a1);
}

void sub_1000095A0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v0[2] = v0[8];
  v0[3] = v3;
}

uint64_t sub_1000095BC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100008524(v3, v2, va);
}

uint64_t sub_1000095D8()
{

  return sub_100007D90(v0);
}

uint64_t sub_100009604()
{

  return swift_task_alloc();
}

uint64_t sub_100009654()
{
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;

  return type metadata accessor for AppIntentPerformOptions(0);
}

uint64_t sub_100009680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100007CB0(a1, 1, 1, a4);
}

uint64_t sub_100009698(uint64_t a1)
{
  *(v1 + 152) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_1000096B8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v0[20] + 8);
  return v0[21];
}

uint64_t sub_1000096FC(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *v8 = a1;

  return sub_100008524(v7, v6, va);
}

uint64_t sub_100009734(float a1)
{
  *v1 = a1;

  return swift_task_alloc();
}

uint64_t sub_10000974C()
{

  return String.init<A>(describing:)(v0, v1);
}

uint64_t sub_100009764(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_10000977C()
{
}

uint64_t sub_100009794()
{
  v2 = *(v0 + 144);
}

void sub_100009B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100009B58(uint64_t a1)
{
  v2 = sub_100009BA8();
  result = dlsym(v2, "PLShouldLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100213AA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100009BA8()
{
  v4[0] = 0;
  if (!qword_100213AA8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100009D4C;
    v4[4] = &unk_1001DF350;
    v4[5] = v4;
    v5 = off_1001D9E30;
    v6 = 0;
    qword_100213AA8 = _sl_dlopen();
  }

  v0 = qword_100213AA8;
  if (!qword_100213AA8)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *PowerLogLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ICDPowerEventLogger.m" lineNumber:15 description:{@"%s", v4[0]}];

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

void *sub_100009CFC(uint64_t a1)
{
  v2 = sub_100009BA8();
  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100213AB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100009D4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213AA8 = result;
  return result;
}

id sub_10000A0D0(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  if (v2[2])
  {
    dispatch_source_cancel(v2[2]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    v2 = *(a1 + 32);
  }

  return [(dispatch_source_t *)v2 _onQueue_flushSyncBlocks];
}

void sub_10000A350(uint64_t a1)
{
  v2 = [*(a1 + 32) library];
  v3 = [v2 libraryUID];
  v4 = [*(a1 + 32) playbackPositionDomain];
  v5 = [NSString stringWithFormat:@"%@-%@", v3, v4];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000A470;
  v9[3] = &unk_1001DE918;
  v9[4] = v6;
  v10 = v5;
  v11 = *(a1 + 32);
  v8 = v5;
  [v6 _onQueue_scheduleBlockWithIdentifier:v8 isCheckpoint:v7 block:v9];
}

void sub_10000A470(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if ([*(*(a1 + 32) + 32) containsObject:*(a1 + 40)])
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 138543618;
      v16 = v3;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync in-progress for identifier=%{public}@. Scheduling follow-up sync.", buf, 0x16u);
    }

    [*(a1 + 32) scheduleSyncForContext:*(a1 + 48) isCheckpoint:1];
  }

  else
  {
    [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
    v5 = [ICDPlaybackPositionRequestOperationSynchronize alloc];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_10000A60C;
    v12 = &unk_1001D9E50;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = v6;
    v8 = [(ICDPlaybackPositionRequestOperationSynchronize *)v5 initWithContext:v7 completionHandler:&v9];
    [*(*(a1 + 32) + 40) addOperation:{v8, v9, v10, v11, v12, v13}];
  }
}

void sub_10000A60C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = [v5 msv_description];
      *buf = 138544130;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 1024;
      v23 = a2;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Sync finished for library %{public}@ success=%{BOOL}u error=%{public}@", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 138543874;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 1024;
    v23 = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync finished for library %{public}@ success=%{BOOL}u", buf, 0x1Cu);
  }

  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(v14 + 8);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000A7EC;
  v16[3] = &unk_1001DF618;
  v16[4] = v14;
  v17 = v13;
  dispatch_async(v15, v16);
}

void sub_10000A9FC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 writeUInt32:*(*(a1 + 32) + 104) withCode:1835624804];
  [v3 writeUInt32:*(*(a1 + 32) + 112) withCode:1836413810];
  v4 = [*(*(a1 + 32) + 120) objectForKeyedSubscript:ML3ContainerPropertyEditSessionID];
  if ([v4 length])
  {
    [v3 writeString:v4 withCode:1634354515];
  }

  v6 = *(a1 + 32);
  v5 = v3;
  ICDAAPUtilitiesWriteContainer();
}

void sub_10000AB28(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 120) count])
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10000AC48;
    v13 = &unk_1001DFAC0;
    v4 = *(a1 + 40);
    v14 = *(a1 + 32);
    ICDAAPUtilitiesWriteContainer();
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AD20;
  v8[3] = &unk_1001D9EA0;
  v8[4] = v5;
  v9 = v3;
  v7 = v3;
  [v6 enumerateObjectsUsingBlock:v8];
}

void sub_10000AC48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICDAAPPropertyInfo sharedContainerPropertyInfo];
  v5 = *(*(a1 + 32) + 120);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B5E0;
  v8[3] = &unk_1001DE390;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_10000AD20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 itemAdamID];
  v5 = [v3 itemUUID];
  v6 = [v3 itemPositionUUID];
  v7 = [v3 referencePositionUUID];
  v8 = [v3 reactionString];
  v9 = [v3 type];
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        if (v5 && v6)
        {
          v15 = *(a1 + 40);
          v24 = v5;
          v25 = v6;
          v26 = v7;
          v27 = v3;
          ICDAAPUtilitiesWriteContainer();

          v11 = v24;
          goto LABEL_36;
        }

        v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        break;
      case 4:
        if (v5 && v8)
        {
          v17 = *(a1 + 40);
          v21 = v5;
          v22 = v8;
          v23 = v3;
          ICDAAPUtilitiesWriteContainer();

          v11 = v21;
          goto LABEL_36;
        }

        v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        break;
      case 5:
        if (v5 && v8)
        {
          v12 = *(a1 + 40);
          v19 = v5;
          v20 = v8;
          ICDAAPUtilitiesWriteContainer();

          v11 = v19;
          goto LABEL_36;
        }

        v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        break;
      default:
        goto LABEL_37;
    }

LABEL_34:
    v18 = *(a1 + 32);
    *buf = 138543618;
    v34 = v18;
    v35 = 2114;
    v36 = v3;
    v14 = "%{public}@ ignoring track edit with incomplete params: %{public}@";
    goto LABEL_35;
  }

  switch(v9)
  {
    case 0:
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      v13 = *(a1 + 32);
      *buf = 138543618;
      v34 = v13;
      v35 = 2114;
      v36 = v3;
      v14 = "%{public}@ ignoring track edit of unknown type: %{public}@";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
      goto LABEL_36;
    case 1:
      if (v4 && v5 && v6)
      {
        v16 = *(a1 + 40);
        v29 = v5;
        v30 = v6;
        v31 = v7;
        v32 = v3;
        ICDAAPUtilitiesWriteContainer();

        v11 = v29;
        goto LABEL_36;
      }

      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 2:
      if (v5)
      {
        v10 = *(a1 + 40);
        v28 = v5;
        ICDAAPUtilitiesWriteContainer();
        v11 = v28;
LABEL_36:

        break;
      }

      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      goto LABEL_34;
  }

LABEL_37:
}

void sub_10000B344(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 writeUInt64:*(a1 + 64) withCode:1634025833];
  [v4 writeString:*(a1 + 32) withCode:1634354005];
  [v4 writeString:*(a1 + 40) withCode:1634357365];
  v3 = *(a1 + 48);
  if (v3)
  {
    [v4 writeString:v3 withCode:1634357865];
  }

  else
  {
    [v4 writeUInt32:objc_msgSend(*(a1 + 56) withCode:{"positionType"), 1634357364}];
  }
}

void sub_10000B408(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 writeString:*(a1 + 32) withCode:1634354005];
  [v4 writeString:*(a1 + 40) withCode:1634357365];
  v3 = *(a1 + 48);
  if (v3)
  {
    [v4 writeString:v3 withCode:1634357865];
  }

  else
  {
    [v4 writeUInt32:objc_msgSend(*(a1 + 56) withCode:{"positionType"), 1634357364}];
  }
}

void sub_10000B4A4(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 writeString:*(a1 + 32) withCode:1634354005];
  [v8 writeString:*(a1 + 40) withCode:1634357845];
  v3 = [*(a1 + 48) timestamp];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSDate now];
  }

  v6 = v5;

  [v6 timeIntervalSince1970];
  [v8 writeUInt64:v7 withCode:1634357828];
}

void sub_10000B568(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 writeString:v3 withCode:1634354005];
  [v4 writeString:*(a1 + 40) withCode:1634357845];
}

void sub_10000B5E0(uint64_t a1, void *a2, void *a3)
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

void sub_10000BEFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 configuration];
  v5 = [v4 userIdentity];
  [v9 setIdentity:v5];

  v6 = [*(a1 + 32) configuration];
  v7 = [v6 userIdentityStore];
  [v9 setIdentityStore:v7];

  v8 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v9 setAuthenticationProvider:v8];

  [v9 setAllowsExpiredBags:1];
  [v9 setStoreDialogResponseHandler:0];
}

void sub_10000BFEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Automatic download media kind update task completed with error=%{public}@", &v6, 0x16u);
  }
}

void sub_10000C0C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Automatic download media kind update task completed with error=%{public}@", &v6, 0x16u);
  }
}

void sub_10000C614(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10000C644(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t sub_10000C6C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C6D8(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 145) = 0;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = *(v5 + 145);
    v11 = 138544386;
    v12 = v5;
    v13 = 1024;
    v14 = 1;
    v15 = 1024;
    v16 = v6;
    v17 = 2114;
    v18 = v3;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history by adding kind=%d for reason=%d with error=%{public}@, _didManuallyReloadCloudLibrary=%{BOOL}u", &v11, 0x28u);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
  v10 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_10000C808(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v10 = 138543874;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", &v10, 0x1Cu);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_10000C910(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 3)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 96);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000CDA4;
    v25[3] = &unk_1001DFC28;
    v12 = *(a1 + 56);
    v25[4] = *(a1 + 32);
    v26 = v12;
    [v9 disableCloudLibraryWithClientIdentity:v10 reason:v11 completionHandler:v25];
    v8 = v26;
    goto LABEL_9;
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 104);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000CBE0;
    v27[3] = &unk_1001DA688;
    v6 = *(a1 + 88);
    v27[4] = v3;
    v30 = v6;
    v21 = *(a1 + 56);
    v7 = v21;
    v28 = v21;
    v29 = *(a1 + 72);
    [v3 _performInitialSagaImportWithClientIdentity:v4 allowingNoisyAuthPrompt:v5 completionHandler:v27];
    v8 = v28;
LABEL_9:

    return;
  }

  v13 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v14 = [*(a1 + 32) configuration];
  [v13 updateContentTasteForConnectionConfiguration:v14 invalidateLocalCache:1 withCompletionHandler:0];

  v15 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 80);
    v18 = *(a1 + 96);
    *buf = 138543874;
    v32 = v16;
    v33 = 1024;
    v34 = v17;
    v35 = 1024;
    v36 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will schedule a retry for status=%d, failureCode=%d", buf, 0x18u);
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    v20 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000CE60;
    block[3] = &unk_1001DF5A0;
    v24 = v19;
    v23 = *(a1 + 48);
    dispatch_async(v20, block);

    v8 = v24;
    goto LABEL_9;
  }
}

void sub_10000CBE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 64);
    *buf = 138543874;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    v21 = 2114;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading saga library for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v9 = v3;

  v10 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v11 = [*(a1 + 32) configuration];
  [v10 updateContentTasteForConnectionConfiguration:v11 invalidateLocalCache:1 withCompletionHandler:0];

  v12 = *(*(a1 + 32) + 88);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000CE90;
  v14[3] = &unk_1001DA660;
  v13 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v13;
  v16 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  dispatch_async(v12, v14);
}

void sub_10000CDA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000CE78;
    v6[3] = &unk_1001DF5A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10000CE90(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(*(a1 + 32) + 96);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000CF40;
    v5[3] = &unk_1001DA660;
    v4 = v1;
    v5[4] = *(a1 + 32);
    v6 = v4;
    v7 = *(a1 + 48);
    dispatch_async(v3, v5);
  }
}

void sub_10000CF40(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _prepareLibraryLoadErrorWithJaliscoError:*(*(*(a1 + 48) + 8) + 40) sagaError:*(*(*(a1 + 56) + 8) + 40)];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10000D15C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 isActiveLocker] & 1) == 0)
  {
    notify_post("com.apple.itunescloudd.jaliscoUpdateInProgressChanged");
    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = @"Unknown";
      if (v14 == 1)
      {
        v15 = @"Saga";
      }

      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = @"Jalisco";
      }

      v17 = 138543618;
      v18 = v13;
      v19 = 2114;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting JALISCO_UPDATE_IN_PROGRESS_CHANGED for libraryType=%{public}@", &v17, 0x16u);
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = @"Unknown";
      if (v9 == 1)
      {
        v10 = @"Saga";
      }

      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = @"Jalisco";
      }

      v17 = 138543618;
      v18 = v8;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting SAGA_UPDATE_IN_PROGRESS_CHANGED for libraryType=%{public}@", &v17, 0x16u);
    }

    notify_post("com.apple.itunescloudd.sagaUpdateInProgressChanged");
  }
}

id sub_10000DCF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 longLongValue];
  if (a4)
  {
    if (result == 1)
    {
      *a4 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  return result;
}

void sub_10000DD3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    ICSiriPostDynamiteClientStateChangedNotification();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000DEEC;
    v6[3] = &unk_1001DF5A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10000DE00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    ICSiriPostDynamiteClientStateChangedNotification();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000DED8;
    v6[3] = &unk_1001DF5A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10000E0B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (*(a1 + 40) == 1)
  {
    if (v2)
    {
      return;
    }

    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v13 = 138543362;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - locker bit is set on the account, creating SagaRequestHandler", &v13, 0xCu);
    }

    v5 = [SagaRequestHandler alloc];
    v6 = [*(a1 + 32) configuration];
    v7 = [(SagaRequestHandler *)v5 initWithConfiguration:v6 progressObserver:*(a1 + 32)];
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;
  }

  else
  {
    if (!v2)
    {
      return;
    }

    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - locker bit is not set on the account and we have a valid SagaRequestHandler. Removing it now ....", &v13, 0xCu);
    }

    v12 = *(a1 + 32);
    v6 = *(v12 + 56);
    *(v12 + 56) = 0;
  }
}

void sub_10000E7E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_10000E810(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
    (*(v1 + 16))(v1, 2, v2);
  }
}

void sub_10000E8A0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10000EB30;
  v9 = &unk_1001DD5D0;
  objc_copyWeak(&v12, &location);
  v4 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = v4;
  [*(a1 + 32) setCompletionBlock:&v6];
  [*(a1 + 32) setName:{@"com.apple.itunescloudd.ICDCloudMusicLibraryRequestHandler.sagaDeauthenticateOperation", v6, v7, v8, v9, v10}];
  v5 = +[ICDServer server];
  [v5 addOperation:*(a1 + 32) priority:2];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_10000E9A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000E9C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EA84;
  block[3] = &unk_1001DF5F0;
  block[4] = v4;
  v8 = WeakRetained;
  v9 = v3;
  v6 = WeakRetained;
  dispatch_async(v5, block);
}

void sub_10000EA84(uint64_t a1)
{
  --*(*(a1 + 32) + 136);
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = [*(a1 + 40) status];
    v4 = [*(a1 + 40) error];
    (*(v1 + 16))(v1, v3, v4);
  }
}

void sub_10000EB30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EBF4;
  block[3] = &unk_1001DF5F0;
  block[4] = v4;
  v8 = WeakRetained;
  v9 = v3;
  v6 = WeakRetained;
  dispatch_async(v5, block);
}

void sub_10000EBF4(uint64_t a1)
{
  --*(*(a1 + 32) + 136);
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = [*(a1 + 40) status];
    v4 = [*(a1 + 40) error];
    (*(v1 + 16))(v1, v3, v4);
  }
}

void sub_10000EFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000EFDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained status];
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 configuration];
    v7 = [v6 userIdentity];
    v8 = [WeakRetained error];
    v9 = [WeakRetained status];
    v10 = [WeakRetained authenticateFailureCode];
    *buf = 138544386;
    v27 = v5;
    v28 = 2114;
    v29 = v7;
    v30 = 2114;
    v31 = v8;
    v32 = 1024;
    v33 = v9;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Authentication finished for %{public}@ with error=%{public}@, status=%d, authFailureCode=%{public}@", buf, 0x30u);
  }

  if ((v3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if (WeakRetained)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"ICDCloudMusicLibraryRequestHandler.m" lineNumber:3149 description:@"SagaAuthenticateOperation can only return CloudLibraryOperationStatusSuccess OR CloudLibraryOperationStatusPermanentlyFailed"];

    if (WeakRetained)
    {
      goto LABEL_8;
    }
  }

  *(*(a1 + 32) + 146) = 0;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = v12[146];
    *buf = 138543618;
    v27 = v12;
    v28 = 1024;
    LODWORD(v29) = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ - CloudAuthenticateOperation is nil. Resetting _isPendingAuthentication=%{BOOL}u", buf, 0x12u);
  }

LABEL_8:
  v14 = *(a1 + 32);
  v15 = *(v14 + 88);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000F2C0;
  v20[3] = &unk_1001DA1D8;
  v20[4] = v14;
  v21 = WeakRetained;
  v17 = *(a1 + 56);
  v16 = *(a1 + 64);
  v23 = v3;
  v24 = v16;
  v25 = v17;
  v22 = *(a1 + 40);
  v18 = WeakRetained;
  dispatch_async(v15, v20);
}

uint64_t sub_10000F2C0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(*(a1 + 32) + 56))
    {
      v2 = dispatch_semaphore_create(0);
      v3 = MSVAutoBugCaptureDomainiTunesCloud;
      v4 = *(a1 + 40);
      v25[1] = @"enableReason";
      v26[0] = v4;
      v25[0] = @"strongAuthenticateOperation";
      v5 = [NSNumber numberWithInteger:*(a1 + 64)];
      v26[1] = v5;
      v6 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
      v27 = v6;
      v7 = [NSArray arrayWithObjects:&v27 count:1];
      v18 = _NSConcreteStackBlock;
      v19 = 3221225472;
      v20 = sub_10000F598;
      v21 = &unk_1001DF578;
      v22 = v2;
      v8 = v2;
      [MSVAutoBugCapture snapshotWithDomain:v3 type:@"Bug" subType:@"SagaAuthenticationBug" context:@"DuplicateSagaAuthentication" triggerThresholdValues:0 events:v7 completion:&v18];

      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      if (*(*(a1 + 32) + 56))
      {
        v17 = +[NSAssertionHandler currentHandler];
        [v17 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"ICDCloudMusicLibraryRequestHandler.m" lineNumber:3164 description:{@"Invalid State - We already have a valid SagaRequestHandler (enableReason=%d)", *(a1 + 64), v18, v19, v20, v21}];
      }
    }

    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Initializing SagaRequestHander ....", buf, 0xCu);
    }

    v11 = [SagaRequestHandler alloc];
    v12 = [*(a1 + 32) configuration];
    v13 = [(SagaRequestHandler *)v11 initWithConfiguration:v12 progressObserver:*(a1 + 32)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 56);
    *(v14 + 56) = v13;
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_10000F674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userIdentityStore];
  v5 = [*(a1 + 32) userIdentity];
  v128 = 0;
  v6 = [v4 getPropertiesForUserIdentity:v5 error:&v128];
  v7 = v128;

  v8 = +[ICDServer server];
  v9 = [*(a1 + 32) configuration];
  v10 = [v8 daemonOptionsForConfiguration:v9];

  v11 = [v10 supportsAutomaticEnablingiCloudMusicLibrary];
  v12 = [*(a1 + 32) _getCurrentSubscriptionStatusForReason:*(a1 + 48)];
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    *buf = 138544130;
    v130 = v14;
    v131 = 1024;
    *v132 = v15;
    *&v132[4] = 1024;
    *&v132[6] = v11;
    v133 = 1024;
    v134 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Trying to enable cloud library for reason=%d, supportsAutoEnablingLibrary=%{BOOL}u, subscriptionStatus=%d", buf, 0x1Eu);
  }

  if (!v6)
  {
    v24 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138543618;
      v130 = v25;
      v131 = 2114;
      *v132 = v7;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error %{public}@ loading user identity properties.", buf, 0x16u);
    }

    if (v11)
    {
      [*(a1 + 32) _retryEnablingCloudMusicLibraryForReason:*(a1 + 48)];
    }

    v26 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011094;
    block[3] = &unk_1001DF5A0;
    v84 = *(a1 + 40);
    v83 = v7;
    dispatch_async(v26, block);
    [v3 finish];

    v23 = v84;
    goto LABEL_28;
  }

  v16 = [v6 isActiveLocker];
  if (([*(a1 + 32) _isNativeMusicAppInstalled] & 1) == 0)
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      *buf = 138543362;
      v130 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ - Native music app is NOT installed. Not enabling Cloud Music Library", buf, 0xCu);
    }

    v29 = *(a1 + 32);
    v30 = [v29 configuration];
    v31 = [v30 clientIdentity];
    if (v16)
    {
      v125[0] = _NSConcreteStackBlock;
      v125[1] = 3221225472;
      v125[2] = sub_100010580;
      v125[3] = &unk_1001DDEA8;
      v32 = *(a1 + 40);
      v125[4] = *(a1 + 32);
      v127 = v32;
      v126 = v3;
      [v29 disableCloudLibraryWithClientIdentity:v31 reason:-5 completionHandler:v125];

      v23 = v127;
    }

    else
    {
      v121[0] = _NSConcreteStackBlock;
      v121[1] = 3221225472;
      v121[2] = sub_100010648;
      v121[3] = &unk_1001DC4E8;
      v36 = *(a1 + 40);
      v35 = *(a1 + 48);
      v121[4] = *(a1 + 32);
      v124 = v35;
      v123 = v36;
      v122 = v3;
      [v29 _performInitialJaliscoImportWithClientIdentity:v31 completion:v121];

      v23 = v123;
    }

    goto LABEL_28;
  }

  if (v16)
  {
    if (v12 == 3)
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138543874;
        v130 = v18;
        v131 = 1024;
        *v132 = 1;
        *&v132[4] = 1024;
        *&v132[6] = 3;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - isActiveLockerAccount=%{BOOL}u, subscriptionStatus=%d. Disabling CloudLibrary as the user is no longer a subscriber", buf, 0x18u);
      }

      v19 = *(a1 + 32);
      v20 = [v19 configuration];
      v21 = [v20 clientIdentity];
      v118[0] = _NSConcreteStackBlock;
      v118[1] = 3221225472;
      v118[2] = sub_1000107B8;
      v118[3] = &unk_1001DDEA8;
      v22 = *(a1 + 40);
      v118[4] = *(a1 + 32);
      v120 = v22;
      v119 = v3;
      [v19 disableCloudLibraryWithClientIdentity:v21 reason:-4 completionHandler:v118];

      v23 = v120;
    }

    else
    {
      v42 = *(a1 + 32);
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_100010880;
      v115[3] = &unk_1001DF5F0;
      v115[4] = v42;
      v43 = *(a1 + 48);
      v117 = *(a1 + 40);
      v116 = v3;
      [v42 _registerDeviceAndPerformInitialImportWithUserIdentityProperties:v6 cloudLibraryEnableReason:v43 completionHandler:v115];

      v23 = v117;
    }

    goto LABEL_28;
  }

  if (!v12 || v12 == 3 || ([v10 supportsAutomaticEnablingiCloudMusicLibrary] & 1) == 0)
  {
    v37 = *(a1 + 32);
    v38 = [v37 configuration];
    v39 = [v38 clientIdentity];
    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_100010924;
    v111[3] = &unk_1001DC4E8;
    v41 = *(a1 + 40);
    v40 = *(a1 + 48);
    v111[4] = *(a1 + 32);
    v114 = v40;
    v113 = v41;
    v112 = v3;
    [v37 _performInitialJaliscoImportWithClientIdentity:v39 completion:v111];

    v23 = v113;
LABEL_28:

    goto LABEL_29;
  }

  if (v12 != 2)
  {
    if (v12 == 1)
    {
      v33 = *(a1 + 32);
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_100010ADC;
      v109[3] = &unk_1001DF5A0;
      v109[4] = v33;
      v34 = *(a1 + 48);
      v110 = *(a1 + 40);
      [v33 _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:v34 completionHandler:v109];
      [v3 finish];
      v23 = v110;
    }

    else
    {
      v55 = sub_10010291C();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *(a1 + 32);
        *buf = 138543618;
        v130 = v56;
        v131 = 1024;
        *v132 = v12;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "%{public}@ - Unhandled subscription status=%d when trying to enable cloud library", buf, 0x12u);
      }

      v57 = *(*(a1 + 32) + 96);
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_100011008;
      v85[3] = &unk_1001DF5C8;
      v86 = *(a1 + 40);
      dispatch_async(v57, v85);
      [v3 finish];
      v23 = v86;
    }

    goto LABEL_28;
  }

  if (!v11)
  {
    v58 = sub_10010291C();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *(a1 + 32);
      v60 = +[ICDeviceInfo currentDeviceInfo];
      *buf = 138543618;
      v130 = v59;
      v131 = 2114;
      *v132 = v60;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ - Platform %{public}@ doesn't support automatically enabling cloud library", buf, 0x16u);
    }

    v61 = *(*(a1 + 32) + 96);
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100010FEC;
    v87[3] = &unk_1001DF5C8;
    v88 = *(a1 + 40);
    dispatch_async(v61, v87);
    [v3 finish];
    v23 = v88;
    goto LABEL_28;
  }

  v44 = [*(a1 + 32) userIdentity];
  v45 = [ML3MusicLibrary musicLibraryForUserAccount:v44];

  v46 = [v45 sagaAccountID];

  if (!v46)
  {
    v47 = sub_10010291C();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 32);
      *buf = 138543362;
      v130 = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ - New account [enabling iCML if possible]", buf, 0xCu);
    }

    *(*(a1 + 32) + 120) = 0;
    *(*(a1 + 32) + 128) = 0;
  }

  v49 = sub_10010291C();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(a1 + 32);
    v51 = *(a1 + 48);
    *buf = 138543618;
    v130 = v50;
    v131 = 1024;
    *v132 = v51;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@ - Preparing to enable Cloud Music Library for reason=%d", buf, 0x12u);
  }

  if (MSVDeviceSupportsMultipleLibraries())
  {
    v52 = *(a1 + 32);
    v53 = *(a1 + 48);
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_100010B74;
    v105[3] = &unk_1001DA570;
    v105[4] = v52;
    v108 = v53;
    v107 = *(a1 + 40);
    v106 = v3;
    [v52 _authenticateAndStartInitialImportWithMergePreference:0 userIdentityProperties:v6 enableReason:v53 withCompletionHandler:v105];

    v54 = v107;
  }

  else
  {
    v62 = +[ICDeviceInfo currentDeviceInfo];
    v63 = [v62 supportsSideLoadedMediaContent];

    if (v63)
    {
      v64 = *(a1 + 32);
      v65 = *(a1 + 48);
      v101[0] = _NSConcreteStackBlock;
      v101[1] = 3221225472;
      v101[2] = sub_100010C84;
      v101[3] = &unk_1001DA570;
      v101[4] = v64;
      v104 = v65;
      v103 = *(a1 + 40);
      v102 = v3;
      [v64 _tryEnablingICMLOnDevicesSupportingSideLoadedContentWithProperties:v6 reason:v65 withCompletionHandler:v101];

      v54 = v103;
    }

    else
    {
      v66 = +[ICDeviceInfo currentDeviceInfo];
      v67 = [v66 isWatch];

      if (v67)
      {
        if (sub_100004B8C())
        {
          v68 = sub_10010291C();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = *(a1 + 32);
            v70 = *(a1 + 48);
            *buf = 138543618;
            v130 = v69;
            v131 = 1024;
            *v132 = v70;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping initial import on non standalone watch for reason=%d", buf, 0x12u);
          }

          v71 = *(*(a1 + 32) + 96);
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_100010FD0;
          v99[3] = &unk_1001DF5C8;
          v100 = *(a1 + 40);
          dispatch_async(v71, v99);
          [v3 finish];
          v54 = v100;
        }

        else
        {
          v76 = *(a1 + 32);
          v77 = *(a1 + 48);
          v95[0] = _NSConcreteStackBlock;
          v95[1] = 3221225472;
          v95[2] = sub_100010D94;
          v95[3] = &unk_1001DA570;
          v95[4] = v76;
          v98 = v77;
          v97 = *(a1 + 40);
          v96 = v3;
          [v76 _authenticateAndStartInitialImportWithMergePreference:0 userIdentityProperties:v6 enableReason:v77 withCompletionHandler:v95];

          v54 = v97;
        }
      }

      else
      {
        v72 = +[ICDeviceInfo currentDeviceInfo];
        v73 = [v72 isROSDevice];

        if (v73)
        {
          v74 = *(a1 + 32);
          v75 = *(a1 + 48);
          v91[0] = _NSConcreteStackBlock;
          v91[1] = 3221225472;
          v91[2] = sub_100010EA4;
          v91[3] = &unk_1001DA570;
          v91[4] = v74;
          v94 = v75;
          v93 = *(a1 + 40);
          v92 = v3;
          [v74 _authenticateAndStartInitialImportWithMergePreference:0 userIdentityProperties:v6 enableReason:v75 withCompletionHandler:v91];

          v54 = v93;
        }

        else
        {
          v78 = sub_10010291C();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v81 = *(a1 + 32);
            v79 = +[ICDeviceInfo currentDeviceInfo];
            *buf = 138543618;
            v130 = v81;
            v131 = 2114;
            *v132 = v79;
            _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "%{public}@ - Not enabling iCML on unsupported platform %{public}@", buf, 0x16u);
          }

          v80 = *(*(a1 + 32) + 96);
          v89[0] = _NSConcreteStackBlock;
          v89[1] = 3221225472;
          v89[2] = sub_100010FB4;
          v89[3] = &unk_1001DF5C8;
          v90 = *(a1 + 40);
          dispatch_async(v80, v89);
          [v3 finish];
          v54 = v90;
        }
      }
    }
  }

LABEL_29:
}

void sub_100010580(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100011298;
  v10 = &unk_1001DF5A0;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v6 = v3;
  dispatch_async(v4, &v7);
  [*(a1 + 40) finish];
}

void sub_100010648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    *buf = 138543874;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  v7 = *(*(a1 + 32) + 96);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100011278;
  v13 = &unk_1001DF5A0;
  v8 = *(a1 + 48);
  v14 = v3;
  v15 = v8;
  v9 = v3;
  dispatch_async(v7, &v10);
  [*(a1 + 40) finish];
}

void sub_1000107B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 96);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100011258;
  v10 = &unk_1001DF5A0;
  v5 = *(a1 + 48);
  v11 = v3;
  v12 = v5;
  v6 = v3;
  dispatch_async(v4, &v7);
  [*(a1 + 40) finish];
}

void sub_100010880(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001123C;
  block[3] = &unk_1001DF5C8;
  v4 = *(a1 + 48);
  dispatch_async(v2, block);
  [*(a1 + 40) finish];
}

void sub_100010924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    *buf = 138543874;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    v19 = 2114;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  v7 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v8 = [*(a1 + 32) configuration];
  [v7 updateContentTasteForConnectionConfiguration:v8 invalidateLocalCache:1 withCompletionHandler:0];

  v9 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011170;
  block[3] = &unk_1001DF5F0;
  v10 = *(a1 + 48);
  v13 = v3;
  v14 = v10;
  block[4] = *(a1 + 32);
  v11 = v3;
  dispatch_async(v9, block);
  [*(a1 + 40) finish];
}

void sub_100010ADC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011154;
  block[3] = &unk_1001DF5C8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void sub_100010B74(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001112C;
    block[3] = &unk_1001DA020;
    v5 = *(a1 + 56);
    block[4] = v3;
    block[5] = v5;
    dispatch_async(v4, block);
  }

  v6 = *(*(a1 + 32) + 96);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011138;
  v7[3] = &unk_1001DF5C8;
  v8 = *(a1 + 48);
  dispatch_async(v6, v7);
  [*(a1 + 40) finish];
}

void sub_100010C84(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011104;
    block[3] = &unk_1001DA020;
    v5 = *(a1 + 56);
    block[4] = v3;
    block[5] = v5;
    dispatch_async(v4, block);
  }

  v6 = *(*(a1 + 32) + 96);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011110;
  v7[3] = &unk_1001DF5C8;
  v8 = *(a1 + 48);
  dispatch_async(v6, v7);
  [*(a1 + 40) finish];
}

void sub_100010D94(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000110DC;
    block[3] = &unk_1001DA020;
    v5 = *(a1 + 56);
    block[4] = v3;
    block[5] = v5;
    dispatch_async(v4, block);
  }

  v6 = *(*(a1 + 32) + 96);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000110E8;
  v7[3] = &unk_1001DF5C8;
  v8 = *(a1 + 48);
  dispatch_async(v6, v7);
  [*(a1 + 40) finish];
}

void sub_100010EA4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000110B4;
    block[3] = &unk_1001DA020;
    v5 = *(a1 + 56);
    block[4] = v3;
    block[5] = v5;
    dispatch_async(v4, block);
  }

  v6 = *(*(a1 + 32) + 96);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000110C0;
  v7[3] = &unk_1001DF5C8;
  v8 = *(a1 + 48);
  dispatch_async(v6, v7);
  [*(a1 + 40) finish];
}

uint64_t sub_100010FB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100010FD0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100010FEC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100011008(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_100011094(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1000110C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_1000110E8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100011110(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100011138(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100011154(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100011170(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(*(a1 + 32) + 96);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100011228;
    v4[3] = &unk_1001DF5A0;
    v6 = v1;
    v5 = *(a1 + 40);
    dispatch_async(v3, v4);
  }
}

uint64_t sub_10001123C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100011258(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100011278(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100011298(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100011760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    *buf = 138543874;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v18 = 2114;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  v7 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v8 = [*(a1 + 32) configuration];
  [v7 updateContentTasteForConnectionConfiguration:v8 invalidateLocalCache:1 withCompletionHandler:0];

  v9 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011904;
  block[3] = &unk_1001DE1A0;
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v10;
  v13 = *(a1 + 56);
  dispatch_async(v9, block);
}

void sub_100011904(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(*(a1 + 32) + 96);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000119B0;
    v4[3] = &unk_1001DC9E8;
    v5 = v1;
    v6 = *(a1 + 48);
    dispatch_async(v3, v4);
  }
}

void sub_100011ABC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011B6C;
  v7[3] = &unk_1001DA4F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 _handleSagaAuthentication:a2 finishedForReason:v4 explicitUserAction:0 shouldStartInitialImport:1 completionHandler:v7];
}

void sub_100011B6C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = *(*(a1 + 32) + 96);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100011C14;
    v6[3] = &unk_1001DC9E8;
    v7 = v3;
    v8 = a3;
    dispatch_async(v5, v6);
  }
}

void sub_1000121FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 configuration];
  v4 = [v3 clientIdentity];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012AEC;
  v6[3] = &unk_1001D9F80;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _removeCloudSourcesForReason:-10 withClientIdentity:v4 byDisablingActiveLockerAccount:0 completionHandler:v6];
}

void sub_1000122C8(void *a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[6];
    *buf = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *(v8 + 88);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000127D8;
  v10[3] = &unk_1001DF5A0;
  v10[4] = v8;
  v11 = v7;
  dispatch_async(v9, v10);
}

void sub_100012420(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000124C0;
  block[3] = &unk_1001DA070;
  v4 = a1[5];
  v3 = a1[6];
  block[4] = v1;
  v7 = v3;
  v6 = v4;
  dispatch_async(v2, block);
}

void sub_1000124C0(void *a1)
{
  v2 = a1[4];
  v3 = [v2 configuration];
  v4 = [v3 clientIdentity];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001258C;
  v7[3] = &unk_1001DA430;
  v6 = a1[5];
  v5 = a1[6];
  v7[4] = a1[4];
  v9 = v5;
  v8 = v6;
  [v2 _performInitialJaliscoImportWithClientIdentity:v4 completion:v7];
}

void sub_10001258C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    *buf = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  v7 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v8 = [*(a1 + 32) configuration];
  [v7 updateContentTasteForConnectionConfiguration:v8 invalidateLocalCache:1 withCompletionHandler:0];

  v9 = *(*(a1 + 32) + 88);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100012728;
  v11[3] = &unk_1001DF5A0;
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v10;
  dispatch_async(v9, v11);
}

void sub_100012728(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000127C8;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1000127D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 configuration];
  v4 = [v3 clientIdentity];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000128A0;
  v6[3] = &unk_1001DFC28;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _performInitialSagaImportWithClientIdentity:v4 allowingNoisyAuthPrompt:0 completionHandler:v6];
}

void sub_1000128A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 88);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012938;
  v4[3] = &unk_1001DF5A0;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_100012938(uint64_t a1)
{
  if (MSVDeviceSupportsMultipleLibraries())
  {
    [*(*(a1 + 32) + 56) increasePriorityForAllOperations];
  }

  v2 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v3 = [*(a1 + 32) configuration];
  [v2 updateContentTasteForConnectionConfiguration:v3 invalidateLocalCache:1 withCompletionHandler:0];

  v4 = *(*(a1 + 32) + 88);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012A3C;
  v6[3] = &unk_1001DF5A0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, v6);
}

void sub_100012A3C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012ADC;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_100012AEC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012B8C;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_100013788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000137D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKey:@"CloudLibraryStateReasonKey"];
    v8 = [v5 objectForKey:@"AutoEnableCloudLibraryFailureReasonKey"];
    v9 = [v7 intValue] == -101;
    v10 = [v8 intValue];
    v11 = v10 == -1;
    v12 = v10 == -1 || v9;
    *(*(*(a1 + 48) + 8) + 24) = v12 ^ 1;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(*(*(a1 + 48) + 8) + 24);
    v16 = 138544386;
    v17 = v14;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = v15;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - ICML (notEnabledInBackup=%{BOOL}u, manuallyDisabled=%{BOOL}u), shouldHandle=%{BOOL}u, cloudLibraryStateReason=%{public}@", &v16, 0x28u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100013F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100013FB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v8 = [a2 objectForKey:@"CloudLibraryStateReasonKey"];
    *(*(*(a1 + 48) + 8) + 24) = [v8 intValue] == -1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100014288(uint64_t a1)
{
  *(*(a1 + 32) + 141) = 0;
  v2 = [*(a1 + 32) isActive];
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting retry operation to enable ICML.", buf, 0xCu);
    }

    v6 = [ICAsyncBlockOperation alloc];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100014430;
    v10[3] = &unk_1001DA3E0;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v10[5] = v7;
    v3 = [v6 initWithStartHandler:v10];
    [*(*(a1 + 32) + 112) addOperation:v3];
  }

  else if (v4)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138543618;
    v12 = v8;
    v13 = 1024;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - NOT retrying to enable cloud library for reason=%d as the handler is not active", buf, 0x12u);
  }
}

void sub_100014430(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userIdentityStore];
  v5 = [*(a1 + 32) userIdentity];
  v15 = 0;
  v6 = [v4 getPropertiesForUserIdentity:v5 error:&v15];
  v7 = v15;

  if (v7 || !v6)
  {
    ++*(*(a1 + 32) + 120);
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 120);
      *buf = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v7;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Could not get properties for current user identity - error=%{public}@., _autoEnableFailureCount=%ld", buf, 0x20u);
    }

    [*(a1 + 32) _retryEnablingCloudMusicLibraryForReason:*(a1 + 40)];
    v11 = v7;
  }

  else
  {
    if (MSVDeviceSupportsMultipleLibraries() || [v6 isActive])
    {
      [*(a1 + 32) _tryEnablingCloudMusicLibraryForReason:*(a1 + 40) completionHandler:0];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = [v6 isActive];
        *buf = 138543874;
        v17 = v13;
        v18 = 2114;
        v19 = 0;
        v20 = 1024;
        LODWORD(v21) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished loading user identity properties with error=%{public}@. account is active=%{BOOL}u. Not loading iCML", buf, 0x1Cu);
      }
    }

    v11 = 0;
  }

  [v3 finishWithError:v11];
}

void sub_1000148BC(uint64_t a1)
{
  *(*(a1 + 32) + 80) = 3;
  v2 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000157E4;
  v5[3] = &unk_1001DFC28;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _tryEnablingCloudMusicLibraryForReason:v2 completionHandler:v5];
}

void sub_100014970(void *a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = a1[4];
  v9 = *(v8 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014A50;
  block[3] = &unk_1001DA390;
  v10 = a1[5];
  v15 = a1[6];
  v16 = a2;
  v17 = a3;
  block[4] = v8;
  v13 = v7;
  v14 = v10;
  v11 = v7;
  dispatch_async(v9, block);
}

void sub_100014A50(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 65);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(v6 + 124);
    *buf = 138544642;
    v72 = v6;
    v73 = 1024;
    v74 = v3;
    v75 = 1024;
    v76 = v4;
    v77 = 1024;
    v78 = v5;
    v79 = 2114;
    v80 = v7;
    v81 = 1024;
    v82 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - finished reloading subscription status for reason=%d, AM=%{BOOL}u, Match=%{BOOL}u, error=%{public}@, subscriptionStatusFailureCount=%d", buf, 0x2Eu);
  }

  if ([*(a1 + 32) isActive])
  {
    v9 = *(*(a1 + 32) + 80);
    v10 = +[ICDefaults standardDefaults];
    if ([v10 shouldTreatSubscriptionStatusCheckAsIncomplete])
    {
      v11 = MSVDeviceOSIsInternalInstall();

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = *(v12 + 124);
        *(v12 + 80) = 0;
        ++*(*(a1 + 32) + 124);
        v14 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138543362;
          v72 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - shouldTreatSubscriptionStatusCheckAsIncomplete is set. Will treat subscription status check as incomplete", buf, 0xCu);
        }

        [*(a1 + 32) _enqueueSubscriptionStatusCheckForReason:*(a1 + 56)];
        if (v13)
        {
          v16 = *(a1 + 48);
          if (!v16)
          {
            return;
          }

          v17 = *(*(a1 + 32) + 96);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000153EC;
          block[3] = &unk_1001DF5C8;
          v67 = v16;
          dispatch_async(v17, block);
          v18 = v67;
        }

        else
        {
          v34 = *(a1 + 32);
          v35 = [v34 configuration];
          v36 = [v35 clientIdentity];
          v68[0] = _NSConcreteStackBlock;
          v68[1] = 3221225472;
          v68[2] = sub_100015250;
          v68[3] = &unk_1001DA430;
          v38 = *(a1 + 48);
          v37 = *(a1 + 56);
          v68[4] = *(a1 + 32);
          v70 = v37;
          v69 = v38;
          [v34 _performInitialJaliscoImportWithClientIdentity:v36 completion:v68];

          v18 = v69;
        }

        goto LABEL_39;
      }
    }

    else
    {
    }

    if (*(a1 + 64))
    {
      *(*(a1 + 32) + 80) = 2;
      if (MSVDeviceSupportsSideLoadedMediaContent() && CFPreferencesGetAppBooleanValue(@"UserRequestedSubscriptionHidden", @"com.apple.mobileipod", 0))
      {
        v23 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v25 = *(v24 + 80);
          v26 = *(a1 + 64);
          v27 = *(a1 + 65);
          *buf = 138544130;
          v72 = v24;
          v73 = 1024;
          v74 = v25;
          v75 = 1024;
          v76 = v26;
          v77 = 1024;
          v78 = v27;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - _musicSubscriptionCheckStatus=%d, subscribedToAppleMusic=%{BOOL}u, subscribedToiTunesMatch=%{BOOL}u, setting userRequestedSubscriptionHidden to 0", buf, 0x1Eu);
        }

        CFPreferencesSetAppValue(@"UserRequestedSubscriptionHidden", &__kCFBooleanFalse, @"com.apple.mobileipod");
        CFPreferencesAppSynchronize(@"com.apple.mobileipod");
      }
    }

    else
    {
      if (*(a1 + 65) == 1)
      {
        v28 = *(a1 + 32);
        v29 = 2;
      }

      else
      {
        v28 = *(a1 + 32);
        if (*(a1 + 40))
        {
          v30 = *(v28 + 124);
          *(v28 + 124) = v30 + 1;
          v31 = *(a1 + 32);
          if (v30)
          {
            [*(a1 + 32) _enqueueSubscriptionStatusCheckForReason:*(a1 + 56)];
            v32 = *(a1 + 48);
            if (!v32)
            {
              return;
            }

            v33 = *(*(a1 + 32) + 96);
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = sub_1000155A4;
            v61[3] = &unk_1001DF5C8;
            v62 = v32;
            dispatch_async(v33, v61);
            v18 = v62;
          }

          else
          {
            v51 = [*(a1 + 32) configuration];
            v52 = [v51 clientIdentity];
            v63[0] = _NSConcreteStackBlock;
            v63[1] = 3221225472;
            v63[2] = sub_1000153FC;
            v63[3] = &unk_1001DA430;
            v54 = *(a1 + 48);
            v53 = *(a1 + 56);
            v63[4] = *(a1 + 32);
            v65 = v53;
            v64 = v54;
            [v31 _performInitialJaliscoImportWithClientIdentity:v52 completion:v63];

            v18 = v64;
          }

          goto LABEL_39;
        }

        v29 = 3;
      }

      *(v28 + 80) = v29;
    }

    *(*(a1 + 32) + 124) = 0;
    v39 = *(*(a1 + 32) + 80);
    v40 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v9 != v39)
    {
      if (v41)
      {
        v46 = *(a1 + 32);
        v47 = *(v46 + 80);
        *buf = 138543874;
        v72 = v46;
        v73 = 1024;
        v74 = v9;
        v75 = 1024;
        v76 = v47;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ - subscription status has changed (old=%d, new=%d)", buf, 0x18u);
      }

      v48 = *(a1 + 32);
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_1000155B4;
      v59[3] = &unk_1001DFC28;
      v49 = *(a1 + 56);
      v50 = *(a1 + 48);
      v59[4] = *(a1 + 32);
      v60 = v50;
      [v48 _tryEnablingCloudMusicLibraryForReason:v49 completionHandler:v59];
      v18 = v60;
      goto LABEL_39;
    }

    if (v41)
    {
      v42 = *(a1 + 32);
      v43 = *(v42 + 80);
      *buf = 138543618;
      v72 = v42;
      v73 = 1024;
      v74 = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ - subscription status has not changed (status=%d)", buf, 0x12u);
    }

    v44 = *(a1 + 48);
    if (v44)
    {
      v45 = *(*(a1 + 32) + 96);
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100015654;
      v57[3] = &unk_1001DF5C8;
      v58 = v44;
      dispatch_async(v45, v57);
      v18 = v58;
      goto LABEL_39;
    }
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 138543362;
      v72 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring subscription status change as the handler is not active", buf, 0xCu);
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      v22 = *(*(a1 + 32) + 96);
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100015664;
      v55[3] = &unk_1001DF5C8;
      v56 = v21;
      dispatch_async(v22, v55);
      v18 = v56;
LABEL_39:
    }
  }
}

void sub_100015250(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    *buf = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  v7 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v8 = [*(a1 + 32) configuration];
  [v7 updateContentTasteForConnectionConfiguration:v8 invalidateLocalCache:1 withCompletionHandler:0];

  v9 = *(*(a1 + 32) + 88);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015734;
  v11[3] = &unk_1001DF5A0;
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v10;
  dispatch_async(v9, v11);
}

void sub_1000153FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    *buf = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2114;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished reloading media purchase history for reason=%d with error=%{public}@", buf, 0x1Cu);
  }

  [*(a1 + 32) _enqueueSubscriptionStatusCheckForReason:*(a1 + 48)];
  v7 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  v8 = [*(a1 + 32) configuration];
  [v7 updateContentTasteForConnectionConfiguration:v8 invalidateLocalCache:1 withCompletionHandler:0];

  v9 = *(*(a1 + 32) + 88);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015684;
  v11[3] = &unk_1001DF5A0;
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v10;
  dispatch_async(v9, v11);
}

void sub_1000155B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015674;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_100015684(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015724;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_100015734(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000157D4;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1000157E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015884;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1000159A4(uint64_t a1, void *a2, void *a3)
{
  v5 = 115200;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = *(*(a1 + 32) + 132);
  if (v9 >= 10)
  {
    v9 = 10;
  }

  v10 = 600 * (v9 ^ 2);
  if (!v7)
  {
    v11 = [v6 libraryDAAPConfiguration];
    if ([v11 maxSyncRetryIntervalSeconds])
    {
      v5 = [v11 maxSyncRetryIntervalSeconds];
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138543618;
        v26 = v13;
        v27 = 2048;
        v28 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ maxRetryDelaySeconds=%lu", buf, 0x16u);
      }
    }
  }

  if (v5 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v5;
  }

  v15 = v14;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = [NSDate dateWithTimeIntervalSinceNow:v15];
    v19 = *(*(a1 + 32) + 132);
    *buf = 138544130;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    v29 = 2048;
    v30 = v19;
    v31 = 2048;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Scheduling retry to update cloud libary on %{public}@ (failureCount=%lu, retryDelaySeconds=%lu)", buf, 0x2Au);
  }

  v20 = dispatch_time(0x8000000000000000, (v15 * 1000000000.0));
  v21 = *(a1 + 32);
  v22 = *(v21 + 88);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100015C2C;
  v24[3] = &unk_1001DA020;
  v23 = *(a1 + 40);
  v24[4] = v21;
  v24[5] = v23;
  dispatch_after(v20, v22, v24);
}

void sub_100015C2C(uint64_t a1)
{
  *(*(a1 + 32) + 142) = 0;
  v2 = [*(a1 + 32) isActive];
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v10 = 138543618;
      v11 = v5;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - retrying to enable cloud library for reason=%d", &v10, 0x12u);
    }

    if (*(a1 + 40) == 1)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    [*(a1 + 32) _tryEnablingCloudMusicLibraryForReason:v7 completionHandler:0];
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v8;
      v12 = 1024;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - NOT retrying to update cloud library for reason=%d as the handler is not active", &v10, 0x12u);
    }
  }
}

void sub_10001602C(uint64_t a1)
{
  *(*(a1 + 32) + 140) = 0;
  if ([*(a1 + 32) isActive])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v2 _runSubscriptionStatusCheckOperationWithReason:v3 completionHandler:0];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Not reloading subscription status as the handler is not active.", &v6, 0xCu);
    }
  }
}

void sub_1000161E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting operation to refresh subscription status.", buf, 0xCu);
  }

  v6 = [*(a1 + 32) userIdentityStore];
  v7 = [*(a1 + 32) userIdentity];
  v22 = 0;
  v8 = [v6 getPropertiesForUserIdentity:v7 error:&v22];
  v9 = v22;

  v10 = MSVDeviceSupportsMultipleLibraries();
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 == 0;
  }

  v12 = !v11;
  if (v10)
  {
    if (!v12 || ([v8 isActiveLocker] & 1) != 0)
    {
      v13 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = [v8 isActiveLocker];
        *buf = 138543874;
        v24 = v14;
        v25 = 1024;
        v26 = v15;
        v27 = 2114;
        v28[0] = v9;
        v16 = "%{public}@ - Not refreshing subscription status. isActiveLocker=%{BOOL}u, loading user identity properties finished with error=%{public}@";
        v17 = v13;
        v18 = 28;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  else if (!v12 || ([v8 isActiveLocker] & 1) != 0 || !objc_msgSend(v8, "isActive"))
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = [v8 isActive];
      v21 = [v8 isActiveLocker];
      *buf = 138544130;
      v24 = v19;
      v25 = 1024;
      v26 = v20;
      v27 = 1024;
      LODWORD(v28[0]) = v21;
      WORD2(v28[0]) = 2114;
      *(v28 + 6) = v9;
      v16 = "%{public}@ - Not refreshing subscription status. isActiveAccount=%{BOOL}u, isActiveLocker=%{BOOL}u, loading user identity properties finished with error=%{public}@";
      v17 = v13;
      v18 = 34;
      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_22;
  }

  [*(a1 + 32) _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:*(a1 + 40) completionHandler:0];
LABEL_22:
  [v3 finishWithError:v9];
}

void sub_100016570(uint64_t a1)
{
  if (*(a1 + 56) == 4 && ([*(a1 + 32) musicLibrary], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "sagaAccountID"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "longLongValue"), v3, v2, !v4))
  {
    v25 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      *buf = 138543362;
      v39 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Ignoring request for periodic poll because ICML is not enabled", buf, 0xCu);
    }

    v27 = *(a1 + 48);
    if (v27)
    {
      v28 = *(*(a1 + 32) + 96);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100016954;
      v36[3] = &unk_1001DF5C8;
      v37 = v27;
      dispatch_async(v28, v36);
      v17 = v37;
      goto LABEL_19;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    if (v6)
    {
      if (*(v5 + 148) == 1)
      {
        v8 = *(a1 + 48);
        v7 = *(a1 + 56);
        v9 = *(a1 + 64);
        v10 = *(a1 + 65);
        v11 = *(a1 + 66);
        v12 = *(a1 + 40);

        [v6 updateLibraryWithClientIdentity:v12 reason:v7 allowNoisyAuthPrompt:v9 isExplicitUserAction:v10 reconcileLibraryPins:v11 completionHandler:v8];
        return;
      }

      v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        *buf = 138543362;
        v39 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Deferring saga library update as the handler has not finished initial setup", buf, 0xCu);
      }

      v20 = dispatch_time(0x8000000000000000, 60000000000);
      v22 = *(a1 + 32);
      v21 = *(a1 + 40);
      v23 = *(v22 + 88);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000169CC;
      v31[3] = &unk_1001DA390;
      v24 = *(a1 + 56);
      v31[4] = v22;
      v34 = v24;
      v32 = v21;
      v35 = *(a1 + 64);
      v33 = *(a1 + 48);
      dispatch_after(v20, v23, v31);

      v17 = v32;
LABEL_19:

      return;
    }

    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Not updating saga library as the handler is nil", buf, 0xCu);
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(*(a1 + 32) + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100016ABC;
      block[3] = &unk_1001DF5C8;
      v30 = v15;
      dispatch_async(v16, block);
      v17 = v30;
      goto LABEL_19;
    }
  }
}

void sub_100016954(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

id sub_1000169CC(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting to update saga library for reason=%{public}@", &v7, 0x16u);
  }

  return [*(a1 + 32) updateSagaLibraryWithClientIdentity:*(a1 + 40) forReason:*(a1 + 56) allowNoisyAuthPrompt:*(a1 + 64) isExplicitUserAction:*(a1 + 65) completionHandler:*(a1 + 48)];
}

void sub_100016ABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100017168(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    *buf = 67109378;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished updating Jalisco Library with reason=%d, error=%{public}@", buf, 0x12u);
  }

  if (*(a1 + 64) == 1)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      *buf = 67109120;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating Saga Library with reason=%d", buf, 8u);
    }

    v9 = *(a1 + 40);
    v10 = [v9 configuration];
    v11 = [v10 clientIdentity];
    v12 = *(a1 + 56);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000173FC;
    v15[3] = &unk_1001DA340;
    v20 = v12;
    v16 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = *(a1 + 40);
    v19 = v13;
    v17 = v14;
    v18 = v3;
    [v9 updateSagaLibraryWithClientIdentity:v11 forReason:v12 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:v15];
  }
}

void sub_100017384(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1000173FC(void *a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[8];
    v6 = a1[4];
    *buf = 67109378;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished updating Saga Library with reason=%d, error=%{public}@", buf, 0x12u);
  }

  v7 = a1[7];
  if (v7)
  {
    v8 = *(a1[5] + 96);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100017574;
    v12[3] = &unk_1001DF730;
    v9 = v7;
    v10 = a1[5];
    v11 = a1[6];
    v15 = v9;
    v12[4] = v10;
    v13 = v11;
    v14 = v3;
    dispatch_async(v8, v12);
  }
}

void sub_100017574(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _prepareLibraryLoadErrorWithJaliscoError:*(a1 + 40) sagaError:*(a1 + 48)];
  (*(v1 + 16))(v1, v2);
}

void sub_100017688(uint64_t a1)
{
  [*(a1 + 32) setActive:(*(a1 + 48) & 1) == 0];
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *buf = 138543874;
    *&buf[4] = v3;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    *&buf[18] = 1024;
    *&buf[20] = [v3 isActive];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - becomeInactiveWithDeauthentication, deauthentication=%{BOOL}u, active=%{BOOL}u", buf, 0x18u);
  }

  if ((*(a1 + 48) & 1) != 0 || (MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v7 = +[ICEnvironmentMonitor sharedMonitor];
    [v7 unregisterObserver:*(a1 + 32)];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:*(a1 + 32)];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = sub_10000C6C0;
    v54 = sub_10000C6D0;
    v55 = *(*(a1 + 32) + 64);
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = sub_10000C6C0;
    v44[4] = sub_10000C6D0;
    v45 = *(*(a1 + 32) + 72);
    v9 = *(*(a1 + 32) + 72);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100017D70;
    v43[3] = &unk_1001DC2E0;
    v43[4] = buf;
    [v9 cancelOperationsWithCompletionHandler:v43];
    v10 = *(*(a1 + 32) + 64);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100017D84;
    v42[3] = &unk_1001DC2E0;
    v42[4] = v44;
    [v10 cancelOperationsWithCompletionHandler:v42];
    v11 = *(a1 + 32);
    v12 = *(v11 + 72);
    *(v11 + 72) = 0;

    v13 = *(*(a1 + 32) + 64);
    *(*(a1 + 32) + 64) = 0;

    v14 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
    v15 = [*(a1 + 32) configuration];
    [v14 removeContentTasteOperationsForConnectionConfiguration:v15];

    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *v46 = 138543362;
      v47 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Finished removing content taste items", v46, 0xCu);
    }

    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *v46 = 138543362;
      v47 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing allArtistImagesMapCacheFile due to account change", v46, 0xCu);
    }

    v20 = +[NSFileManager defaultManager];
    v21 = +[CloudArtistHeroImageImporter allArtistImagesMapCacheFilePathURL];
    [v20 removeItemAtURL:v21 error:0];

    if (!MSVDeviceSupportsSideLoadedMediaContent())
    {
      goto LABEL_21;
    }

    v22 = [*(a1 + 32) userIdentity];
    v23 = [ML3MusicLibrary musicLibraryForUserAccount:v22];

    v24 = [v23 sagaAccountID];
    v25 = [v23 sagaLastKnownActiveLockerAccountDSID];
    if ([v24 longLongValue])
    {
      v26 = v25;
      v27 = v24;
      v28 = v27;
      if (v26 == v27)
      {

LABEL_19:
        goto LABEL_20;
      }

      v29 = [v26 isEqual:v27];

      if ((v29 & 1) == 0)
      {
        [v23 setSagaLastKnownActiveLockerAccountDSID:v28];
        v30 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a1 + 32);
          v32 = [v26 longLongValue];
          v33 = [v28 longLongValue];
          *v46 = 138543874;
          v47 = v31;
          v48 = 2048;
          v49 = v32;
          v50 = 2048;
          v51 = v33;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating last known active locker account from %lld to %lld", v46, 0x20u);
        }

        v26 = v30;
        goto LABEL_19;
      }
    }

LABEL_20:

LABEL_21:
    v34 = *(a1 + 32);
    v35 = [v34 configuration];
    v36 = [v35 clientIdentity];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100017D98;
    v40[3] = &unk_1001D9F80;
    v37 = *(a1 + 40);
    v40[4] = *(a1 + 32);
    v41 = v37;
    [v34 _removeCloudSourcesForReason:-11 withClientIdentity:v36 byDisablingActiveLockerAccount:0 completionHandler:v40];

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(buf, 8);

    return;
  }

  [*(*(a1 + 32) + 64) decreasePriorityForAllOperations];
  [*(*(a1 + 32) + 56) decreasePriorityForAllOperations];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017E54;
    block[3] = &unk_1001DF5C8;
    v39 = v5;
    dispatch_async(v6, block);
  }
}

void sub_100017D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100017D70(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100017D84(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_100017D98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 96);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100017E68;
    v7[3] = &unk_1001DF5A0;
    v9 = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

id sub_100017EF8(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v39 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - becomeActive", buf, 0xCu);
  }

  [*(a1 + 32) setActive:1];
  if (MSVDeviceSupportsMultipleLibraries())
  {
    v4 = *(*(a1 + 32) + 64);
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        v39 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - we have a valid JaliscoRequestHandler.", buf, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v22 = *(a1 + 32);
        *buf = 138543362;
        v39 = v22;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - initializing JaliscoRequestHandler", buf, 0xCu);
      }

      v23 = [JaliscoRequestHandler alloc];
      v5 = [*(a1 + 32) configuration];
      v24 = [(JaliscoRequestHandler *)v23 initWithConfiguration:v5 updateTaskHelper:*(a1 + 32)];
      v25 = *(a1 + 32);
      v26 = *(v25 + 64);
      *(v25 + 64) = v24;
    }

    v27 = *(*(a1 + 32) + 72);
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    v28 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v28)
      {
        v29 = *(a1 + 32);
        *buf = 138543362;
        v39 = v29;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - we have a valid SubscriptionRequestHandler.", buf, 0xCu);
      }
    }

    else
    {
      if (v28)
      {
        v30 = *(a1 + 32);
        *buf = 138543362;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - initializing SubscriptionRequestHandler", buf, 0xCu);
      }

      v31 = [SubscriptionRequestHandler alloc];
      v18 = [*(a1 + 32) configuration];
      v32 = [(SubscriptionRequestHandler *)v31 initWithConfiguration:v18];
      v33 = *(a1 + 32);
      v34 = *(v33 + 72);
      *(v33 + 72) = v32;
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v39 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - initializing JaliscoRequestHandler", buf, 0xCu);
    }

    v10 = [JaliscoRequestHandler alloc];
    v11 = [*(a1 + 32) configuration];
    v12 = [(JaliscoRequestHandler *)v10 initWithConfiguration:v11 updateTaskHelper:*(a1 + 32)];
    v13 = *(a1 + 32);
    v14 = *(v13 + 64);
    *(v13 + 64) = v12;

    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138543362;
      v39 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - initializing SubscriptionRequestHandler", buf, 0xCu);
    }

    v17 = [SubscriptionRequestHandler alloc];
    v18 = [*(a1 + 32) configuration];
    v19 = [(SubscriptionRequestHandler *)v17 initWithConfiguration:v18];
    v20 = *(a1 + 32);
    v21 = *(v20 + 72);
    *(v20 + 72) = v19;
  }

  v35 = *(a1 + 32);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100018350;
  v37[3] = &unk_1001DF578;
  v37[4] = v35;
  return [v35 _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:1 completionHandler:v37];
}

void sub_100018350(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Start observing subscription status changed notification", buf, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"_handleMusicSubscriptionStatusDidChangeNotification:" name:ICMusicSubscriptionStatusDidChangeNotification object:0];

  *(*(a1 + 32) + 148) = 1;
  v5 = dispatch_time(0x8000000000000000, 120000000000);
  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000184C4;
  block[3] = &unk_1001DF578;
  block[4] = v6;
  dispatch_after(v5, v7, block);
}

void sub_1000184C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 146) & 1) != 0 || *(v2 + 136) > 0 || ![v2 isActive] || *(*(a1 + 32) + 80) == 1)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v4[146];
      v6 = [v4 isActive];
      v7 = *(a1 + 32);
      v8 = *(v7 + 80);
      LODWORD(v7) = *(v7 + 136);
      *buf = 138544386;
      v14 = v4;
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v8;
      v21 = 1024;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - skipping additional subscription status check isPendingAuthentication=%{BOOL}u, isHandlerActive=%{BOOL}u, musicSubscriptionCheckStatus=%d, deauthOperationCount=%d ", buf, 0x24u);
    }
  }

  else
  {
    v9 = +[ICUserIdentityStore defaultIdentityStore];
    v10 = [*(a1 + 32) userIdentity];
    v12 = 0;
    v11 = [v9 getPropertiesForUserIdentity:v10 error:&v12];
    v3 = v12;

    if (!v3 && v11 && [v11 isActive])
    {
      [*(a1 + 32) _updateAutomaticDownloadsPreference];
    }

    [*(a1 + 32) _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:5 completionHandler:0];
  }
}

void sub_10001888C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  v3 = [NSNumber numberWithInteger:*(a1 + 40)];
  v9 = [v2 objectForKey:v3];

  LODWORD(v4) = *(a1 + 48);
  v5 = [NSNumber numberWithFloat:v4];
  if (v9)
  {
    [v9 setObject:v5 forKey:@"ICDCloudLibrarySyncProgressKey"];
  }

  else
  {
    v9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v5, @"ICDCloudLibrarySyncProgressKey", 0];
  }

  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 152);
  v8 = [NSNumber numberWithInteger:v6];
  [v7 setObject:v9 forKey:v8];
}

id sub_100018A64(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"Unknown";
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    if (v5 == 1)
    {
      v3 = @"Saga";
    }

    v6 = *(a1 + 32);
    *buf = 138543874;
    if (!v5)
    {
      v3 = @"Jalisco";
    }

    v37 = v6;
    v38 = 2114;
    v39 = v3;
    v40 = 2114;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ finished update operation for %{public}@ library, response=%{public}@", buf, 0x20u);
  }

  v7 = *(*(a1 + 32) + 152);
  v8 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v7 removeObjectForKey:v8];

  v9 = [*(a1 + 40) objectForKey:@"ICDCloudMusicLibraryProgressUpdateOperationStatusKey"];
  v10 = [v9 integerValue];

  if (*(a1 + 48) == 1)
  {
    v11 = [*(a1 + 40) objectForKey:@"ICDCloudMusicLibraryProgressRequestReasonKey"];
    v12 = [v11 integerValue];

    if (v10 == 5)
    {
      v23 = [*(a1 + 40) objectForKey:@"ICDCloudMusicLibraryProgressTemporaryFialureTypeKey"];
      v24 = v23;
      if (v23)
      {
        v25 = [v23 integerValue];
        v26 = [*(a1 + 32) configuration];
        v27 = [NSNumber numberWithInteger:v25];
        sub_1000E6970(v26, v27, 1, 0);
      }
    }

    else
    {
      if (v10 == 3)
      {
        *(*(a1 + 32) + 144) = 0;
        v14 = [*(a1 + 40) objectForKey:@"ICDCloudMusicLibraryProgressWasExplicitUserActionKey"];
        v15 = [v14 BOOLValue];

        v16 = [*(a1 + 40) objectForKey:@"ICDCloudMusicLibraryProgressWasInitialImportKey"];
        v17 = [v16 BOOLValue];

        v18 = [*(a1 + 40) objectForKey:@"ICDCloudMusicLibraryProgressPermanentFailureTypeKey"];
        v19 = [v18 integerValue];

        v20 = *(a1 + 32);
        v21 = [v20 configuration];
        v22 = [v21 clientIdentity];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100018E7C;
        v33[3] = &unk_1001DA2F0;
        v34 = v15;
        v35 = v17;
        v33[4] = *(a1 + 32);
        v33[5] = v19;
        [v20 disableCloudLibraryWithClientIdentity:v22 reason:v19 completionHandler:v33];

        return [*(a1 + 32) _postLibraryUpdateProgressChangedForLibraryType:*(a1 + 48)];
      }

      if (v10 == 1)
      {
        *(*(a1 + 32) + 132) = 0;
        v13 = *(a1 + 32);
LABEL_17:
        *(v13 + 144) = 0;
        return [*(a1 + 32) _postLibraryUpdateProgressChangedForLibraryType:*(a1 + 48)];
      }
    }

    v28 = [*(a1 + 32) musicLibrary];
    v29 = [v28 sagaOnDiskDatabaseRevision];

    v13 = *(a1 + 32);
    if (v29)
    {
      goto LABEL_17;
    }

    ++*(v13 + 132);
    v30 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      *buf = 138543362;
      v37 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ - scheduling initial cloud library update", buf, 0xCu);
    }

    [*(a1 + 32) _enqueueCloudUpdateLibraryOperationForReason:v12];
  }

  return [*(a1 + 32) _postLibraryUpdateProgressChangedForLibraryType:*(a1 + 48)];
}

void sub_100018E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1 && *(a1 + 49) == 1 && MSVDeviceSupportsSideLoadedMediaContent() && *(a1 + 40) == -2)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v20 = 138543618;
      v21 = v5;
      v22 = 1024;
      v23 = -2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Showing system dialog for enable cloud library error code=%d", &v20, 0x12u);
    }

    v6 = MGGetSInt32Answer();
    v7 = +[NSBundle mediaPlayerBundle];
    v8 = [v7 localizedStringForKey:@"ENABLE_SYNC_LIBRARY_FAILED_TOO_MANY_ITEMS_TITLE" value:&stru_1001E0388 table:@"MediaPlayer"];

    v9 = +[NSBundle mediaPlayerBundle];
    v10 = v9;
    v11 = @"ENABLE_SYNC_LIBRARY_FAILED_TOO_MANY_ITEMS_MESSAGE_IPHONE";
    if (v6 == 2)
    {
      v11 = @"ENABLE_SYNC_LIBRARY_FAILED_TOO_MANY_ITEMS_MESSAGE_IPOD";
    }

    if (v6 == 3)
    {
      v12 = @"ENABLE_SYNC_LIBRARY_FAILED_TOO_MANY_ITEMS_MESSAGE_IPAD";
    }

    else
    {
      v12 = v11;
    }

    v13 = [v9 localizedStringForKey:v12 value:&stru_1001E0388 table:@"MediaPlayer"];

    if (![v8 length] && !objc_msgSend(v13, "length"))
    {
      v18 = +[NSAssertionHandler currentHandler];
      v19 = [NSString stringWithUTF8String:"void CloudLibraryUtilitiesShowFailedToEnableCloudLibrarySystemDialog(ICCloudLibraryUtilitiesDisableICMLReason)"];
      [v18 handleFailureInFunction:v19 file:@"CloudLibraryUtilities.m" lineNumber:105 description:@"Either alertHeader or alertMessage is required."];
    }

    v14 = objc_alloc_init(MSVSystemDialogOptions);
    [v14 setAlertHeader:v8];
    [v14 setAlertMessage:v13];
    v15 = +[NSBundle mediaPlayerBundle];
    v16 = [v15 localizedStringForKey:@"OK" value:&stru_1001E0388 table:@"MediaPlayer"];
    [v14 setDefaultButtonTitle:v16];

    [v14 setForceModalAlertAppearance:1];
    v17 = [[MSVSystemDialog alloc] initWithOptions:v14];
    [v17 presentWithCompletion:0];
  }
}

void sub_1000191D4(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"Unknown";
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v5 == 1)
    {
      v3 = @"Saga";
    }

    v6 = *(a1 + 48);
    *buf = 138543874;
    if (!v5)
    {
      v3 = @"Jalisco";
    }

    v12 = v4;
    v13 = 2114;
    v14 = v3;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ starting update operation for %{public}@ library, initialImport=%{BOOL}u", buf, 0x1Cu);
  }

  v7 = [NSNumber numberWithBool:*(a1 + 48)];
  v8 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v7, @"ICDCloudLibraryIsInitialImportKey", 0];

  v9 = *(*(a1 + 32) + 152);
  v10 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v9 setObject:v8 forKey:v10];

  [*(a1 + 32) _postLibraryUpdateProgressChangedForLibraryType:*(a1 + 40)];
}

void sub_100019444(void *a1)
{
  v2 = *(a1[4] + 72);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadScreenshotInfoForSubscriptionPersistentIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadScreenshotInfoForSubscriptionPersistentIDs as we don't have a valid SubscriptionRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000195C4;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_1000195C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001972C(void *a1)
{
  v2 = *(a1[4] + 72);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadArtworkInfoForSubscriptionContainerPersistentIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadArtworkInfoForSubscriptionContainerPersistentIDs as we don't have a valid SubscriptionRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000198AC;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_1000198AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100019A14(void *a1)
{
  v2 = *(a1[4] + 72);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadArtworkInfoForSubscriptionItemPersistentIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadArtworkInfoForSubscriptionItemPersistentIDs as we don't have a valid SubscriptionRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100019B94;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100019B94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100019C8C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeSubscriptionContainerArtworkForPersistentID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeSubscriptionContainerArtworkForPersistentID as we don't have a valid SubscriptionRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_100019E0C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeSubscriptionScreenshotForPersistentID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeSubscriptionScreenshotForPersistentID as we don't have a valid SubscriptionRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_100019F8C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeSubscriptionItemArtworkForPersistentID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeSubscriptionItemArtworkForPersistentID as we don't have a valid SubscriptionRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_10001A160(void *a1)
{
  v2 = *(a1[4] + 72);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importContainerArtworkForPersistentID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importContainerArtworkForPersistentID as we don't have a valid SubscriptionRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A2E0;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001A2E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001A428(void *a1)
{
  v2 = *(a1[4] + 72);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importScreenshotForPersistentID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importScreenshotForPersistentID as we don't have a valid SubscriptionRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A5A8;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001A5A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001A6F0(void *a1)
{
  v2 = *(a1[4] + 72);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importItemArtworkForPersistentID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importItemArtworkForPersistentID as we don't have a valid SubscriptionRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001A870;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001A870(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001A9D4(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 hideItemsWithPurchaseHistoryIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring hideItemsWithPurchaseHistoryIDs as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001AB54;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001AB54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001AC6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    [v2 loadMissingArtworkWithClientIdentity:*(a1 + 40)];
  }

  else
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadMissingArtwork as we don't have a valid JaliscoRequestHandler", &v8, 0xCu);
    }
  }

  v5 = *(*(a1 + 32) + 72);
  if (v5)
  {
    [v5 loadMissingArtworkWithClientIdentity:*(a1 + 40)];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadMissingArtwork as we don't have a valid SubscriptionRequestHandler", &v8, 0xCu);
    }
  }
}

void sub_10001AEAC(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadBooksForStoreIDs:v3 clientIdentity:v4 withCompletionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadBooksForStoreIDs as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B02C;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001B02C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001B178(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 isMediaKindDisabledForJaliscoLibrary:v3 withClientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring isMediaKindDisabledForJaliscoLibrary as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B2F8;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001B2F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001B460(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadScreenshotInfoForPurchaseHistoryIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadScreenshotInfoForPurchaseHistoryIDs as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B5E0;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001B5E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001B748(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadArtworkInfoForPurchaseHistoryIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadArtworkInfoForPurchaseHistoryIDs as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001B8C8;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001B8C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001BA40(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[7];
    v5 = a1[8];

    [v2 setItemProperties:v3 forPurchaseHistoryID:v5 clientIdentity:v4 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setItemProperties as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001BBC0;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001BBC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001BD04(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];

    [v2 removeLibraryWithClientIdentity:v3 completion:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring removeLibraryWithCompletion as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v7 = a1[6];
    if (v7)
    {
      v8 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001BE80;
      block[3] = &unk_1001DF5C8;
      v10 = v7;
      dispatch_async(v8, block);
    }
  }
}

void sub_10001BE80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001BF74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeScreenshotForPurchaseHistoryID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeScreenshotForPurchaseHistoryID as we don't have a valid JaliscoRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_10001C0F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = *(a1 + 40);

    [v2 deprioritizeItemArtworkForPurchaseHistoryID:v3];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring deprioritizeItemArtworkForPurchaseHistoryID as we don't have a valid JaliscoRequestHandler", &v6, 0xCu);
    }
  }
}

void sub_10001C2C8(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importScreenshotForPurchaseHistoryID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importScreenshotForPurchaseHistoryID as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C448;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001C448(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001C590(void *a1)
{
  v2 = *(a1[4] + 64);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 importItemArtworkForPurchaseHistoryID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring importItemArtworkForPurchaseHistoryID as we don't have a valid JaliscoRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C710;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001C710(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001C804(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {

    [v2 prepareToDownloadAllLibraryPinnedEntities];
  }

  else
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring prepareToDownloadAllLibraryPinnedEntities as we don't have a valid SagaRequestHandler", &v5, 0xCu);
    }
  }
}

void sub_10001C9E4(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 movePinnedAlbumWithPersistentID:v3 cloudAlbumID:v5 toPosition:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to move pinned album, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001CB64;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001CB64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001CCBC(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 movePinnedArtistWithPersistentID:v3 cloudArtistID:v5 toPosition:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to move pinned artist, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001CE3C;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001CE3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001CF7C(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[9];
    v7 = a1[5];
    v6 = a1[6];

    [v2 movePinnedEntityWithPersistentID:v6 cloudID:v3 type:v4 toPosition:v5 completion:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to move pinned entity, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001D100;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_10001D100(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001D258(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 updatePinnedLibraryAlbumWithPersistentID:v3 cloudAlbumID:v5 defaultAction:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to update pinned album, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001D3D8;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001D3D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001D530(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 updatePinnedLibraryArtistWithPersistentID:v3 cloudArtistID:v5 defaultAction:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to update pinned artist, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001D6B0;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001D6B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001D7F0(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[9];
    v7 = a1[5];
    v6 = a1[6];

    [v2 updatePinnedLibraryEntityWithPersistentID:v6 cloudID:v3 type:v4 defaultAction:v5 completion:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to update pinned entity, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001D974;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_10001D974(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001DABC(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 removePinnedAlbumWithPersistentID:v3 cloudAlbumID:v5 completion:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to remove pinned album, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001DC3C;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001DC3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001DD84(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 removePinnedArtistWithPersistentID:v3 cloudArtistID:v5 completion:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to remove pinned artist, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001DF04;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001DF04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001E040(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v6 = a1[5];
    v5 = a1[6];

    [v2 removePinnedEntityWithPersistentID:v5 cloudID:v3 type:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to remove pinned entity, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[5];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E1C0;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001E1C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001E318(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 pinLibraryAlbumWithPersistentID:v3 cloudAlbumID:v5 defaultAction:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to pin entity, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E498;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001E498(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001E5F0(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 pinLibraryArtistWithPersistentID:v3 cloudArtistID:v5 defaultAction:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to pin entity, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001E770;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001E770(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001E8B0(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[9];
    v7 = a1[5];
    v6 = a1[6];

    [v2 pinLibraryEntityWithPersistentID:v6 cloudID:v3 type:v4 defaultAction:v5 completion:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to pin entity, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[5];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001EA34;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_10001EA34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001EB5C(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[5];
    v3 = a1[6];

    [v2 resetInvitationURLForCollaborationWithPersistentID:v3 completion:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to remove a collaborator, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v7 = a1[5];
    if (v7)
    {
      v8 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001ECD8;
      block[3] = &unk_1001DF5C8;
      v10 = v7;
      dispatch_async(v8, block);
    }
  }
}

void sub_10001ECD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001EE24(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 removeCollaborators:v5 fromCollaborationWithPersistentID:v3 completion:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to remove a collaborator, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001EFA4;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001EFA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001F0FC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 40);

    [v2 respondToPendingCollaborator:v6 onCollaborationWithPersistentID:v3 withApproval:v5 completion:v4];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring request to respond to a collaborator, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(*(a1 + 32) + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F280;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001F280(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001F3E4(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 joinCollaborationWithGlobalPlaylistID:v3 invitationURL:v4 completion:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring join collaboration request, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F564;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001F564(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001F6DC(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[7];
    v5 = a1[8];

    [v2 editCollaborationWithPersistentID:v5 properties:v3 trackEdits:v4 completion:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring edit collaboration request, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001F85C;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10001F85C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001F984(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[5];
    v3 = a1[6];

    [v2 endCollaborationWithPersistentID:v3 completion:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring end collaboration request, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v7 = a1[5];
    if (v7)
    {
      v8 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FB00;
      block[3] = &unk_1001DF5C8;
      v10 = v7;
      dispatch_async(v8, block);
    }
  }
}

void sub_10001FB00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001FC30(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[6];
    v4 = a1[7];
    v5 = a1[5];

    [v2 beginCollaborationUsingPlaylistWithPersistentID:v3 sharingMode:v4 completion:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring start collaboration request, as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[5];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001FDB0;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10001FDB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10001FF10(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2 && a1[7] && a1[8])
  {
    v3 = a1[9];
    v4 = a1[5];
    v5 = a1[6];

    [v2 favoriteEntityWithPersistentID:? sagaID:? entityType:? time:? completionHandler:?];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[9];
      v9 = NSStringFromICFavoriteMediaEntityType();
      v10 = a1[7];
      v11 = a1[8];
      *buf = 138544130;
      v17 = v7;
      v18 = 2114;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignore favoriting entityType=%{public}@ with sagaID=%lld, persistentID=%lld as we don't have a valid SagaRequestHandler OR the identifiers are invalid", buf, 0x2Au);
    }

    v12 = a1[6];
    if (v12)
    {
      v13 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000200E4;
      block[3] = &unk_1001DF5C8;
      v15 = v12;
      dispatch_async(v13, block);
    }
  }
}

void sub_1000200E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100020258(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2 && a1[5] && a1[8])
  {
    v3 = a1[6];
    v4 = a1[7];

    [v2 favoriteArtistWithPersistentID:? cloudLibraryID:? time:? completionHandler:?];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[8];
      *buf = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignore favoriting artist with cloudLibraryID=%{public}@, persistentID=%lld  as we don't have a valid SagaRequestHandler OR the identifiers are invalid", buf, 0x20u);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020400;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100020400(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100020574(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2 && a1[5] && a1[8])
  {
    v3 = a1[6];
    v4 = a1[7];

    [v2 favoriteAlbumWithPersistentID:? cloudLibraryID:? time:? completionHandler:?];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[8];
      *buf = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignore favoriting album with cloudLibraryID=%{public}@, persistentID=%lld as we don't have a valid SagaRequestHandler OR the identifiers are invalid", buf, 0x20u);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002071C;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_10002071C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100020890(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2 && a1[8] && a1[5])
  {
    v3 = a1[6];
    v4 = a1[7];

    [v2 favoritePlaylistWithPersistentID:? globalID:? time:? completionHandler:?];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[8];
      *buf = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignore favoriting playlist with globalID=%{public}@, persistentID=%lld as we don't have a valid SagaRequestHandler OR the identifiers are invalid", buf, 0x20u);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020A38;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100020A38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100020B94(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2 && a1[7] && a1[8])
  {
    v3 = a1[9];
    v4 = a1[5];
    v5 = a1[6];

    [v2 favoriteEntityWithPersistentID:? storeID:? entityType:? time:? completionHandler:?];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[9];
      v9 = NSStringFromICFavoriteMediaEntityType();
      v11 = a1[7];
      v10 = a1[8];
      *buf = 138544130;
      v17 = v7;
      v18 = 2114;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignore favoriting entityType=%{public}@ with storeID=%lld, persistentID=%lld as we don't have a valid SagaRequestHandler OR the identifiers are invalid", buf, 0x2Au);
    }

    v12 = a1[6];
    if (v12)
    {
      v13 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100020D68;
      block[3] = &unk_1001DF5C8;
      v15 = v12;
      dispatch_async(v13, block);
    }
  }
}

void sub_100020D68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1000212EC(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadScreenshotInfoForSagaIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadScreenshotInfoForSagaIDs as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002146C;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10002146C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000215D4(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadArtworkInfoForContainerSagaIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadArtworkInfoForContainerSagaIDs as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100021754;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100021754(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000218BC(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 loadArtworkInfoForSagaIDs:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadArtworkInfoForSagaIDs as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100021A3C;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100021A3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100021B88(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 loadGeniusItemsForSagaID:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring loadGeniusItemsForSagaID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100021D08;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_100021D08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100021E98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 73);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 56);
    v7 = *(a1 + 64);

    [v2 updateSubscribedPlaylistsWithSagaIDs:v5 ignoreMinRefreshInterval:v3 requestReason:v7 pinnedOnly:v4 clientIdentity:v6 completionHandler:v8];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring updateSubscribedPlaylistsWithSagaIDs as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = *(*(a1 + 32) + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100022020;
      block[3] = &unk_1001DF5C8;
      v14 = v11;
      dispatch_async(v12, block);
    }
  }
}

void sub_100022020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100022164(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];

    [v2 updatePlaylistPlayDataWithClientIdentity:v3 completionHandler:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring updatePlaylistPlayDataWithCompletionHandler as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v7 = a1[6];
    if (v7)
    {
      v8 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000222E0;
      block[3] = &unk_1001DF5C8;
      v10 = v7;
      dispatch_async(v8, block);
    }
  }
}

void sub_1000222E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100022424(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];

    [v2 updateItemPlayDataWithClientIdentity:v3 completionHandler:v4];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring updateItemPlayDataWithCompletionHandler as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v7 = a1[6];
    if (v7)
    {
      v8 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000225A0;
      block[3] = &unk_1001DF5C8;
      v10 = v7;
      dispatch_async(v8, block);
    }
  }
}

void sub_1000225A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100022714(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[7];
    v5 = a1[8];

    [v2 setAlbumArtistProperties:v3 withArtistPersistentID:v5 clientIdentity:v4 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setAlbumArtistProperties as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100022894;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100022894(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100022A08(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[7];
    v5 = a1[8];

    [v2 setAlbumEntityProperties:v3 withAlbumPersistentID:v5 clientIdentity:v4 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setAlbumProperties as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100022B88;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100022B88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100022CFC(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[7];
    v5 = a1[8];

    [v2 setAlbumProperties:v3 forItemsWithAlbumPersistentID:v5 clientIdentity:v4 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setAlbumItemProperties as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100022E7C;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100022E7C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100022FF0(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[7];
    v5 = a1[8];

    [v2 setItemProperties:v3 forSagaID:v5 clientIdentity:v4 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setItemProperties as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100023170;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100023170(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1000232C4(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    if (a1[7])
    {
      v3 = a1[5];
      v4 = a1[6];

      [v2 setCloudFavoriteSongAddToLibraryBehavior:? clientIdentity:? completionHandler:?];
      return;
    }

    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v12 = a1[7];
      v13 = ICCloudClientGetStringForAddToLibraryBehavior();
      *buf = 138543618;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setCloudFavoriteSongAddToLibraryBehavior as %{public}@ is not a valid behavior", buf, 0x16u);
    }

    v14 = a1[6];
    if (v14)
    {
      v15 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002354C;
      block[3] = &unk_1001DF5C8;
      v19 = v14;
      dispatch_async(v15, block);
      v9 = v19;
      goto LABEL_14;
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setCloudFavoriteSongAddToLibraryBehavior as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v7 = a1[6];
    if (v7)
    {
      v8 = *(a1[4] + 96);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000235C4;
      v16[3] = &unk_1001DF5C8;
      v17 = v7;
      dispatch_async(v8, v16);
      v9 = v17;
LABEL_14:
    }
  }
}

void sub_10002354C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1000235C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10002370C(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v5 = a1[5];

    [v2 setCloudAddToPlaylistBehavior:v3 clientIdentity:v5 completionHandler:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setCloudAddToPlaylistBehavior as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[6];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002388C;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_10002388C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100023A4C(void *a1)
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

    [v2 setPlaylistProperties:v3 trackList:v4 forPlaylistPersistentID:v7 clientIdentity:v5 requestingBundleID:v6 completionHandler:v8];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setPlaylistProperties with bundleID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v11 = a1[9];
    if (v11)
    {
      v12 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100023BD0;
      block[3] = &unk_1001DF5C8;
      v14 = v11;
      dispatch_async(v12, block);
    }
  }
}

void sub_100023BD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100023D64(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[8];
    v5 = a1[9];
    v7 = a1[7];

    [v2 setPlaylistProperties:v3 trackList:v4 forPlaylistPersistentID:v5 clientIdentity:v7 completionHandler:v6];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring setPlaylistProperties as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[8];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100023EE8;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_100023EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10002404C(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 addStorePlaylistWithGlobalID:v3 clientIdentity:v4 completionHandler:v5];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addStorePlaylistWithGlobalID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v8 = a1[7];
    if (v8)
    {
      v9 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000241CC;
      block[3] = &unk_1001DF5C8;
      v11 = v8;
      dispatch_async(v9, block);
    }
  }
}

void sub_1000241CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100024360(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];

    [v2 addStoreItemWithOpaqueID:v3 requestingBundleID:v4 clientIdentity:v5 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addStoreItemWithOpaqueID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[8];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000244E0;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_1000244E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100024674(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];

    [v2 addStoreItemsWithAdamIDs:v3 referral:v4 clientIdentity:v5 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addStoreItemWithAdamID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[8];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000247F4;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_1000247F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10002496C(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v6 = a1[7];
    v5 = a1[8];

    [v2 addStoreItemWithAdamID:v5 referral:v3 clientIdentity:v4 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addStoreItemWithAdamID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[7];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100024AEC;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}

void sub_100024AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100024C68(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[8];
    v4 = a1[9];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    [v2 addItemWithSagaID:v3 toPlaylistWithPersistentID:v4 requestingBundleID:v5 clientIdentity:v6 completionHandler:v7];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addItemWithSagaID with bundleID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[7];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100024DEC;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_100024DEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100024F80(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v4 = a1[8];
    v3 = a1[9];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    [v2 addStoreItemWithOpaqueID:v5 toPlaylistWithPersistentID:v3 requestingBundleID:v6 clientIdentity:v7 completionHandler:v4];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addStoreItemWithOpaqueID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v10 = a1[8];
    if (v10)
    {
      v11 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100025104;
      block[3] = &unk_1001DF5C8;
      v13 = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_100025104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100025260(void *a1)
{
  v2 = *(a1[4] + 56);
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[8];
    v5 = a1[5];
    v6 = a1[6];

    [v2 addItemWithSagaID:v3 toPlaylistWithPersistentID:v4 clientIdentity:v5 completionHandler:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring addItemWithSagaID as we don't have a valid SagaRequestHandler", buf, 0xCu);
    }

    v9 = a1[6];
    if (v9)
    {
      v10 = *(a1[4] + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000253E0;
      block[3] = &unk_1001DF5C8;
      v12 = v9;
      dispatch_async(v10, block);
    }
  }
}