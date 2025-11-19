void sub_100083AA8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) underlyingConnection];
  v4 = [v3 connectionState];

  if (v4 == 2)
  {
    v5 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 134217984;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - already connected to library, running pending changes operation", buf, 0xCu);
    }

    [*(a1 + 32) _performPendingOperations];
  }

  else if (([*v2 loginRequestInFlight] & 1) == 0)
  {
    v7 = [*(a1 + 32) connectionGroup];
    dispatch_group_enter(v7);

    [*(a1 + 32) setLoginRequestInFlight:1];
    v8 = *(a1 + 32);
    v9 = [NSString stringWithFormat:@"%@ Ensure Connection", objc_opt_class()];
    v10 = [[MSVXPCTransaction alloc] initWithName:v9];
    [v10 beginTransaction];
    objc_initWeak(buf, *(a1 + 32));
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100083DAC;
    v19[3] = &unk_1001DC218;
    objc_copyWeak(&v21, buf);
    v19[4] = *(a1 + 32);
    v11 = v10;
    v20 = v11;
    v12 = objc_retainBlock(v19);
    v13 = [*(*(a1 + 32) + 32) baseURL];

    v14 = *(a1 + 32);
    if (v13)
    {
      [v14 _continueConnectingToLibraryWithCompletionHandler:v12];
    }

    else
    {
      [v14 _connectToLibraryWithCompletionHandler:v12 allowRetry:1 forceBagReload:0];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v15 = [*(a1 + 32) connectionGroup];
  v16 = [*(a1 + 32) connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083F24;
  block[3] = &unk_1001DF5C8;
  v18 = *(a1 + 40);
  dispatch_group_notify(v15, v16, block);
}

void sub_100083D88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100083DAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Connected to library", buf, 0xCu);
    }

    v7 = [WeakRetained connectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100083F34;
    block[3] = &unk_1001DE918;
    v9 = WeakRetained;
    v10 = v3;
    v11 = *(a1 + 40);
    dispatch_async(v7, block);
  }

  else
  {
    [*(a1 + 40) endTransaction];
  }
}

id sub_100083F34(uint64_t a1)
{
  [*(a1 + 32) setUnderlyingConnection:*(a1 + 40)];
  v2 = [*(a1 + 32) underlyingConnection];
  [*(a1 + 32) setFailedToConnect:v2 == 0];

  v3 = [*(a1 + 32) underlyingConnection];
  v4 = [v3 connectionState];

  if (v4 == 2)
  {
    [*(a1 + 32) _performPendingOperations];
  }

  [*(a1 + 32) setLoginRequestInFlight:0];
  v5 = [*(a1 + 32) connectionGroup];
  dispatch_group_leave(v5);

  v6 = *(a1 + 48);

  return [v6 endTransaction];
}

void sub_100084594(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v11 = 138544130;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = v3;
    v10 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %p - Cancelling one of our operations [%{public}@ %p]", &v11, 0x2Au);
  }

  [v3 cancel];
}

void sub_1000847D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v11 = 138544130;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = v3;
    v10 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  Increasing priority of one of our operations [%{public}@ %p]", &v11, 0x2Au);
  }

  [v3 increasePriority];
}

void sub_100084A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = v7;
    v11 = 138544130;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = v3;
    v10 = v16;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  Decreasing priority of one of our operations [%{public}@ %p]", &v11, 0x2Au);
  }

  [v3 decreasePriority];
}

void sub_100084C08(uint64_t a1)
{
  v2 = [*(a1 + 32) failedToConnect];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    [v3 _enqueuePendingOperation:v4];
  }

  else
  {
    v5 = [v3 underlyingConnection];
    [*(a1 + 40) setConnection:v5];

    v6 = [*(a1 + 40) completionBlock];
    objc_initWeak(&location, *(a1 + 40));
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100084D7C;
    v12 = &unk_1001DD5D0;
    objc_copyWeak(&v15, &location);
    v13 = *(a1 + 32);
    v7 = v6;
    v14 = v7;
    [*(a1 + 40) setCompletionBlock:&v9];
    v8 = [ICDServer server:v9];
    [v8 addBackgroundOperation:*(a1 + 40) priority:*(a1 + 48)];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void sub_100084D5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100084D7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained status] == 1)
    {
      v7 = *(a1 + 32);
      v8 = [objc_opt_class() logCategory];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      v9 = *(a1 + 32);
      v24 = 134218498;
      v25 = v9;
      v26 = 2114;
      v27 = objc_opt_class();
      v28 = 2048;
      v29 = v6;
      v10 = v27;
      v11 = "CloudLibrary %p - Background operation of type %{public}@ %p completed with status CloudLibraryOperationStatusSuccess.";
    }

    else
    {
      if ([v6 status] == 2)
      {
        v12 = *(a1 + 32);
        v13 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v24 = 134218498;
          v25 = v14;
          v26 = 2114;
          v27 = objc_opt_class();
          v28 = 2048;
          v29 = v6;
          v15 = v27;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Background operation of type %{public}@ %p completed with status CloudLibraryOperationStatusFailed.", &v24, 0x20u);
        }

        [*(a1 + 32) _enqueueFailedOperation:v6];
        v8 = [*(a1 + 32) underlyingConnection];
        [v8 disconnect];
        goto LABEL_10;
      }

      if ([v6 status] == 3)
      {
        v17 = *(a1 + 32);
        v8 = [objc_opt_class() logCategory];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        v18 = *(a1 + 32);
        v24 = 134218498;
        v25 = v18;
        v26 = 2114;
        v27 = objc_opt_class();
        v28 = 2048;
        v29 = v6;
        v10 = v27;
        v11 = "CloudLibrary %p - Background operation of type %{public}@ %p completed with status CloudLibraryOperationStatusPermanentlyFailed.";
      }

      else
      {
        v19 = [v6 status];
        v20 = *(a1 + 32);
        v8 = [objc_opt_class() logCategory];
        v21 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (v19 == 4)
        {
          if (!v21)
          {
            goto LABEL_10;
          }

          v22 = *(a1 + 32);
          v24 = 134218498;
          v25 = v22;
          v26 = 2114;
          v27 = objc_opt_class();
          v28 = 2048;
          v29 = v6;
          v10 = v27;
          v11 = "CloudLibrary %p - Background operation of type %{public}@ %p completed with status CloudLibraryOperationStatusCancelled.";
        }

        else
        {
          if (!v21)
          {
            goto LABEL_10;
          }

          v23 = *(a1 + 32);
          v24 = 134218498;
          v25 = v23;
          v26 = 2114;
          v27 = objc_opt_class();
          v28 = 2048;
          v29 = v6;
          v10 = v27;
          v11 = "CloudLibrary %p - BACKGROUND OPERATION FAILED TO SET STATUS %{public}@ %p";
        }
      }
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, &v24, 0x20u);

    goto LABEL_10;
  }

LABEL_11:
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3, v4, v5);
  }
}

void sub_100085178(uint64_t a1)
{
  v2 = [*(a1 + 32) failedToConnect];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    [v3 _enqueuePendingOperation:v4];
  }

  else
  {
    v5 = [v3 underlyingConnection];
    [*(a1 + 40) setConnection:v5];

    v6 = [*(a1 + 40) completionBlock];
    objc_initWeak(&location, *(a1 + 40));
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1000852EC;
    v12 = &unk_1001DD5D0;
    objc_copyWeak(&v15, &location);
    v13 = *(a1 + 32);
    v7 = v6;
    v14 = v7;
    [*(a1 + 40) setCompletionBlock:&v9];
    v8 = [ICDServer server:v9];
    [v8 addOperation:*(a1 + 40) priority:*(a1 + 48)];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void sub_1000852CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000852EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained status] == 1)
    {
      v7 = *(a1 + 32);
      v8 = [objc_opt_class() logCategory];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      v9 = *(a1 + 32);
      v24 = 134218498;
      v25 = v9;
      v26 = 2114;
      v27 = objc_opt_class();
      v28 = 2048;
      v29 = v6;
      v10 = v27;
      v11 = "CloudLibrary %p - Operation of type %{public}@ %p completed with status CloudLibraryOperationStatusSuccess.";
    }

    else
    {
      if ([v6 status] == 2)
      {
        v12 = *(a1 + 32);
        v13 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v24 = 134218498;
          v25 = v14;
          v26 = 2114;
          v27 = objc_opt_class();
          v28 = 2048;
          v29 = v6;
          v15 = v27;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Operation of type %{public}@ %p completed with status CloudLibraryOperationStatusFailed.", &v24, 0x20u);
        }

        [*(a1 + 32) _enqueueFailedOperation:v6];
        v8 = [*(a1 + 32) underlyingConnection];
        [v8 disconnect];
        goto LABEL_10;
      }

      if ([v6 status] == 3)
      {
        v17 = *(a1 + 32);
        v8 = [objc_opt_class() logCategory];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        v18 = *(a1 + 32);
        v24 = 134218498;
        v25 = v18;
        v26 = 2114;
        v27 = objc_opt_class();
        v28 = 2048;
        v29 = v6;
        v10 = v27;
        v11 = "CloudLibrary %p - Operation of type %{public}@ %p completed with status CloudLibraryOperationStatusPermanentlyFailed.";
      }

      else
      {
        v19 = [v6 status];
        v20 = *(a1 + 32);
        v8 = [objc_opt_class() logCategory];
        v21 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (v19 == 4)
        {
          if (!v21)
          {
            goto LABEL_10;
          }

          v22 = *(a1 + 32);
          v24 = 134218498;
          v25 = v22;
          v26 = 2114;
          v27 = objc_opt_class();
          v28 = 2048;
          v29 = v6;
          v10 = v27;
          v11 = "CloudLibrary %p - Operation of type %{public}@ %p completed with status CloudLibraryOperationStatusCancelled.";
        }

        else
        {
          if (!v21)
          {
            goto LABEL_10;
          }

          v23 = *(a1 + 32);
          v24 = 134218498;
          v25 = v23;
          v26 = 2114;
          v27 = objc_opt_class();
          v28 = 2048;
          v29 = v6;
          v10 = v27;
          v11 = "CloudLibrary %p - OPERATION FAILED TO SET STATUS %{public}@ %p";
        }
      }
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, &v24, 0x20u);

    goto LABEL_10;
  }

LABEL_11:
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v3, v4, v5);
  }
}

void sub_10008600C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v17 = 134217984;
    *&v17[4] = [v5 responseCode];
    v9 = "Set item properties response status code: %lu";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    *v17 = 0;
    v9 = "Set item properties received no response";
    v10 = v8;
    v11 = OS_LOG_TYPE_FAULT;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v9, v17, v12);
LABEL_7:

  if (v6)
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 138543362;
      *&v17[4] = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Set item properties response failed with error: %{public}@", v17, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v15 = [v5 responseCode];
  if (v15 > 399)
  {
    if (v15 != 404 && v15 != 400)
    {
      goto LABEL_18;
    }

    v16 = 3;
  }

  else
  {
    v16 = 1;
    if (v15 != 200 && v15 != 204)
    {
LABEL_18:
      v16 = 2;
    }
  }

  [v14 setStatus:v16];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100086864(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed cloud library update error=%{public}@", buf, 0x16u);
    }

LABEL_5:
    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed cloud library update", buf, 0xCu);
  }

  if (!*(a1 + 56))
  {
    goto LABEL_5;
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    *buf = 138543618;
    v20 = v10;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting subscribed playlist update for %lld", buf, 0x16u);
  }

  v12 = *(a1 + 32);
  v13 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  v18 = v13;
  v14 = [NSArray arrayWithObjects:&v18 count:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100086C44;
  v16[3] = &unk_1001DFC28;
  v15 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = *(a1 + 48);
  [v12 updateSubscribedPlaylistsWithSagaIDs:v14 ignoreMinRefreshInterval:1 requestReason:8 pinnedOnly:0 clientIdentity:v15 completionHandler:v16];

LABEL_12:
}

void sub_100086AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed subscribed playlist update error=%{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed subscribed playlist update", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100086C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed subscribed playlist update error=%{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed subscribed playlist update", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100086EF8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) msv_errorByRemovingUnsafeUserInfo];
        (*(v7 + 16))(v7, v8);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000878DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7007 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100087954(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ic_cloudClientErrorWithCode:2013 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1000879D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ic_cloudClientErrorWithCode:2003 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100087A40(uint64_t a1)
{
  if (*(a1 + 56) && *(*(a1 + 32) + 56))
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v39 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cloud library update already in progress, attaching completion handler.", buf, 0xCu);
    }

    v4 = *(*(a1 + 32) + 64);
    v5 = [*(a1 + 56) copy];
    [v4 addObject:v5];
  }

  v6 = *(a1 + 32);
  if (!*(v6 + 56))
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 64);
      v12 = ICCloudClientGetStringForRequestReason();
      *buf = 138543618;
      v39 = v10;
      v40 = 2114;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Enqueuing update cloud library operation (requestReason = %{public}@)", buf, 0x16u);
    }

    v13 = +[ICDServer server];
    v7 = [v13 daemonOptionsForConfiguration:*(*(a1 + 32) + 96)];

    v14 = [v7 prohibitLibraryUpload];
    v15 = [v7 prohibitArtworkPrefetch];
    v16 = +[ICDeviceInfo currentDeviceInfo];
    v17 = v15 ^ 1;
    if ([v16 isWatch])
    {
      v18 = +[ICEnvironmentMonitor sharedMonitor];
      v19 = [v18 isCharging];

      if (v19)
      {
LABEL_20:
        v20 = *(*(a1 + 32) + 96);
        v21 = [[CloudUpdateLibraryOperation alloc] initWithConfiguration:v20 clientIdentity:*(a1 + 40) reason:*(a1 + 64) updateTaskHelper:*(*(a1 + 32) + 88)];
        v22 = *(*(a1 + 32) + 56);
        *(*(a1 + 32) + 56) = v21;

        v23 = *(a1 + 56);
        if (v23)
        {
          v24 = *(*(a1 + 32) + 64);
          v25 = [v23 copy];
          [v24 addObject:v25];
        }

        [*(*(a1 + 32) + 56) setUploadingLibraryIsSupported:v14 ^ 1];
        [*(*(a1 + 32) + 56) setAllowNoisyAuthPrompt:*(a1 + 72)];
        [*(*(a1 + 32) + 56) setIsExplicitUserAction:*(a1 + 73)];
        if (*(a1 + 74) == 1 && *(a1 + 64) == 9)
        {
          [*(*(a1 + 32) + 104) setSagaForcePerformDeltaSync:1];
        }

        objc_initWeak(&location, *(a1 + 32));
        objc_initWeak(&from, *(*(a1 + 32) + 56));
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_100087F90;
        v31 = &unk_1001DC498;
        objc_copyWeak(&v33, &location);
        objc_copyWeak(&v34, &from);
        v35 = v17;
        v32 = *(a1 + 40);
        [*(*(a1 + 32) + 56) setCompletionBlock:&v28];
        [*(*(a1 + 32) + 56) setName:{@"com.apple.itunescloudd.SagaRequestHandler.updateLibraryOperation", v28, v29, v30, v31}];
        [*(a1 + 48) addOperation:*(*(a1 + 32) + 56) priority:2];
        v26 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = *(a1 + 32);
          *buf = 138543362;
          v39 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting Saga update in progress changed notification", buf, 0xCu);
        }

        objc_destroyWeak(&v34);
        objc_destroyWeak(&v33);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        goto LABEL_28;
      }

      v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not performing artwork update because power is required", buf, 2u);
      }

      v17 = 0;
    }

    goto LABEL_20;
  }

  if (*(a1 + 74) == 1 && (*(v6 + 112) & 1) == 0 && *(a1 + 64) == 9)
  {
    *(v6 + 112) = 1;
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will perform a followup cloud update to reconcile pins", buf, 0xCu);
    }

LABEL_28:
  }
}

void sub_100087F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_100087F90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = v3;
  if (WeakRetained)
  {
    v5 = WeakRetained[5];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100088114;
    block[3] = &unk_1001DC470;
    v12 = v3;
    v6 = WeakRetained;
    v13 = v6;
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    dispatch_async(v5, block);
    if (*(v6 + 112) == 1)
    {
      [v6[13] setSagaForcePerformDeltaSync:1];
      *(v6 + 112) = 0;
      v7 = WeakRetained[5];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100088594;
      v8[3] = &unk_1001DF618;
      v9 = v6;
      v10 = *(a1 + 32);
      dispatch_async(v7, v8);
    }
  }
}

void sub_100088114(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  v3 = *(a1 + 40);
  if (v2 == 1)
  {
    v4 = v3[12];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000885B4;
    v21[3] = &unk_1001DC448;
    v25 = *(a1 + 56);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v5 = v4;
    v6 = v21;
    v7 = [v5 userIdentityStore];
    v8 = [v5 userIdentity];
    v9 = +[NSDate date];
    v41[0] = 0;
    v10 = [v7 getPropertiesForUserIdentity:v8 error:v41];
    v11 = v41[0];
    if (v11 || !v10)
    {
      v18 = dispatch_get_global_queue(0, 0);
      block = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_1000E70FC;
      v29 = &unk_1001DF5A0;
      v31 = v6;
      v30 = v11;
      dispatch_async(v18, &block);
    }

    else
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_1000E5AD0;
      v39 = sub_1000E5AE0;
      v12 = [v10 cloudLibraryStateReason];
      v40 = [v12 mutableCopy];

      v13 = [v36[5] objectForKey:@"EnableCloudLibraryFailureReasonKey"];
      v14 = [v36[5] objectForKey:@"AutoEnableCloudLibraryFailureReasonKey"];
      v19 = v7;
      if (v13 | v14)
      {
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000E7110;
        v34[3] = &unk_1001DDB38;
        v34[4] = &v35;
        block = _NSConcreteStackBlock;
        v27 = 3221225472;
        v28 = sub_1000E719C;
        v29 = &unk_1001DDB60;
        v33 = &v35;
        v15 = v8;
        v30 = v15;
        v31 = v9;
        v32 = v6;
        [v7 insertPropertiesForUserIdentity:v15 andPostAccountChangeNotification:0 usingBlock:v34 completionHandler:&block];
        v16 = v6;

        v17 = v31;
      }

      else
      {
        v17 = dispatch_get_global_queue(0, 0);
        block = _NSConcreteStackBlock;
        v27 = 3221225472;
        v28 = sub_1000E7348;
        v29 = &unk_1001DF5C8;
        v16 = v6;
        v30 = v6;
        dispatch_async(v17, &block);
      }

      _Block_object_dispose(&v35, 8);
      v6 = v16;
      v7 = v19;
    }
  }

  else
  {
    v20 = [*(a1 + 32) error];
    [v3 _handleCloudLibraryUpdateOperationFinishedWithError:v20];
  }
}

void sub_1000885B4(uint64_t a1)
{
  if (*(a1 + 56) == 1 && [*(a1 + 32) isInitialUpdate])
  {
    [*(*(a1 + 40) + 16) importAllItemArtworkWithClientIdentity:*(a1 + 48)];
  }

  v2 = *(a1 + 40);
  v3 = v2[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008867C;
  v4[3] = &unk_1001DF618;
  v5 = v2;
  v6 = *(a1 + 32);
  dispatch_async(v3, v4);
}

void sub_10008867C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) error];
  [v1 _handleCloudLibraryUpdateOperationFinishedWithError:v2];
}

void sub_100089360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100089388(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [WeakRetained libraryUpdateRequired];
  v5 = [WeakRetained playlistCloudLibraryID];
  v6 = [WeakRetained updatedInvitationURL];
  if (v3)
  {
    v7 = *(a1 + 40);
    v8 = [v3 msv_errorByRemovingUnsafeUserInfo];
    (*(v7 + 16))(v7, v6, v8);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000894C8;
    v10[3] = &unk_1001DFC28;
    v9 = *(a1 + 32);
    v12 = *(a1 + 40);
    v11 = v6;
    [v9 _handleLibraryEditOperationCompletionUpdatingLibrary:v4 andSubscribedPlaylist:v5 completion:v10];
  }
}

void sub_1000894C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_100089730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100089758(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [WeakRetained libraryUpdateRequired];
  v5 = [WeakRetained playlistCloudLibraryID];
  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [v3 msv_errorByRemovingUnsafeUserInfo];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100089868;
    v10[3] = &unk_1001DD8F0;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 _handleLibraryEditOperationCompletionUpdatingLibrary:v4 andSubscribedPlaylist:v8 completion:v10];
  }
}

void sub_100089868(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3);
}

void sub_100089AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100089AE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [WeakRetained libraryUpdateRequired];
  v5 = [WeakRetained playlistCloudLibraryID];
  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [v3 msv_errorByRemovingUnsafeUserInfo];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100089BF0;
    v10[3] = &unk_1001DD8F0;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 _handleLibraryEditOperationCompletionUpdatingLibrary:v4 andSubscribedPlaylist:v8 completion:v10];
  }
}

void sub_100089BF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3);
}

void sub_100089E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100089E60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [WeakRetained libraryUpdateRequired];
  v5 = [WeakRetained resultingPlaylistCloudLibraryID];
  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [v3 msv_errorByRemovingUnsafeUserInfo];
    (*(v6 + 16))(v6, v5, v7);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100089F74;
    v9[3] = &unk_1001DC390;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 _handleLibraryEditOperationCompletionUpdatingLibrary:v4 andSubscribedPlaylist:v5 completion:v9];
  }
}

void sub_100089F74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10008A1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008A1F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [WeakRetained libraryUpdateRequired];
  v5 = [WeakRetained playlistCloudLibraryID];
  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [v3 msv_errorByRemovingUnsafeUserInfo];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10008A300;
    v10[3] = &unk_1001DD8F0;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 _handleLibraryEditOperationCompletionUpdatingLibrary:v4 andSubscribedPlaylist:v8 completion:v10];
  }
}

void sub_10008A300(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3);
}

void sub_10008A520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008A548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [WeakRetained libraryUpdateRequired];
  v5 = [WeakRetained resultingPlaylistCloudLibraryID];
  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [v3 msv_errorByRemovingUnsafeUserInfo];
    (*(v6 + 16))(v6, v5, v7);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10008A65C;
    v9[3] = &unk_1001DC390;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 _handleLibraryEditOperationCompletionUpdatingLibrary:v4 andSubscribedPlaylist:v5 completion:v9];
  }
}

void sub_10008A65C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10008A88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008A8B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = [WeakRetained libraryUpdateRequired];
  v5 = [WeakRetained resultingCollaborationCloudLibraryID];
  if (v3)
  {
    v6 = *(a1 + 40);
    v7 = [v3 msv_errorByRemovingUnsafeUserInfo];
    (*(v6 + 16))(v6, v5, v7);
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10008A9C8;
    v9[3] = &unk_1001DC390;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 _handleLibraryEditOperationCompletionUpdatingLibrary:v4 andSubscribedPlaylist:0 completion:v9];
  }
}

void sub_10008A9C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10008AD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008AD5C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_10008B0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008B108(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_10008B568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008B590(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_10008B80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008B834(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_10008BAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008BAFC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

id sub_10008BC24(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  if (result)
  {
    result = [result progress];
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  return result;
}

void sub_10008BF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10008BFB4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008BFCC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_10008C264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008C28C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained itemIDs];
    (*(v1 + 16))(v1, v2, 0);
  }
}

uint64_t sub_10008C310(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10008CA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008CA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained cloudArtworkInfoDictionaries];
    (*(v1 + 16))(v1, v2, 0);
  }
}

uint64_t sub_10008CABC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10008CDEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_10008CE14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10008CE90(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained cloudArtworkInfoDictionaries];
    (*(v1 + 16))(v1, v2, 0);
  }
}

uint64_t sub_10008CF14(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10008D1D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10008D4C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10008D7A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

id sub_10008D8F0(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 56) != 0;
  result = [*(a1[4] + 56) isInitialUpdate];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_10008DB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008DBA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained error];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_10008DC20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008DE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008DE98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained error];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_10008DF18(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008E168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008E190(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained error];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_10008E210(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008E454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008E47C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

uint64_t sub_10008E4F8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008E73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008E764(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

uint64_t sub_10008E7E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008EA48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_10008EA70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained updateRequired];
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = objc_retainBlock(*(a1 + 48));
      *buf = 138543874;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      v24 = 2048;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - add store playlist with global ID: %{public}@ finished. Performing follow up request, completionHandler=%p", buf, 0x20u);
    }

    v9 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10008EDD4;
    v16[3] = &unk_1001DC3F8;
    v16[4] = v9;
    v17 = *(a1 + 40);
    v19 = *(a1 + 48);
    v18 = WeakRetained;
    [v9 _handleLibraryEditOperationCompletionUpdatingLibrary:1 andSubscribedPlaylist:0 completion:v16];
  }

  else
  {
    if (v5)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = objc_retainBlock(*(a1 + 48));
      *buf = 138543874;
      v21 = v10;
      v22 = 2114;
      v23 = v11;
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - add store playlist with global ID: %{public}@ finished. Calling completionHandler=%p", buf, 0x20u);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = [WeakRetained globalIDToSagaIDMap];
      v15 = [WeakRetained error];
      (*(v13 + 16))(v13, v14, v15);
    }
  }
}

void sub_10008ECC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_retainBlock(*(a1 + 40));
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Add store playlist with global ID: %{public}@ finished with noLibraryError=%{public}@, completionHandler=%p", &v8, 0x20u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }
}

void sub_10008EDD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = objc_retainBlock(*(a1 + 56));
    v11 = 138544130;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v3;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - updating cloud library after adding store playlist with global ID: %{public}@ finished with error=%{public}@. Performing follow up request, completionHandler=%p", &v11, 0x2Au);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = [*(a1 + 48) globalIDToSagaIDMap];
    v10 = [*(a1 + 48) error];
    (*(v8 + 16))(v8, v9, v10);
  }
}

uint64_t sub_10008F134(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10008F14C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10008F538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008F560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained updateRequired])
  {
    [*(a1 + 32) _handleLibraryEditOperationCompletionUpdatingLibrary:1 andSubscribedPlaylist:0 completion:&stru_1001DC3D0];
  }

  v2 = *(a1 + 40);
  v3 = WeakRetained;
  if (v2)
  {
    v4 = [WeakRetained adamIDToSagaIDMap];
    v5 = [WeakRetained error];
    (*(v2 + 16))(v2, v4, v5);

    v3 = WeakRetained;
  }
}

uint64_t sub_10008F61C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10008FAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008FAF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained updateRequired])
  {
    [*(a1 + 32) _handleLibraryEditOperationCompletionUpdatingLibrary:1 andSubscribedPlaylist:0 completion:&stru_1001DC3B0];
  }

  v2 = *(a1 + 40);
  v3 = WeakRetained;
  if (v2)
  {
    v4 = [WeakRetained adamIDToSagaIDMap];
    v5 = [WeakRetained error];
    (*(v2 + 16))(v2, v4, v5);

    v3 = WeakRetained;
  }
}

uint64_t sub_10008FBAC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10008FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008FE88(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_retainBlock(*(a1 + 40));
    v8 = 138543618;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating subscribed playlists with sagaIDs:%{public}@ finished. completionHandler=%p", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained error];
    (*(v5 + 16))(v5, v7);
  }
}

void sub_10008FF98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_retainBlock(*(a1 + 40));
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating subscribed playlist with sagaIDs:%{public}@ finished with error=%{public}@. completionHandler=%p", &v8, 0x20u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1000902BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000902E4(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = objc_retainBlock(*(a1 + 40));
    v9 = 138543874;
    v10 = v4;
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - update artwork for playlist with persistentID: %lld finished. completionHandler=%p", &v9, 0x20u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = [WeakRetained error];
    (*(v6 + 16))(v6, v8);
  }
}

void sub_100090660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100090688(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = objc_retainBlock(*(a1 + 48));
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - remove playlist with sagaIDs: %{public}@ finished. completionHandler=%p", &v9, 0x20u);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = [WeakRetained error];
    (*(v6 + 16))(v6, v8);
  }
}

void sub_1000907B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_retainBlock(*(a1 + 40));
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Remove playlists with sagaIDs:%{public}@ finished with noLibraryError=%{public}@, completionHandler=%p", &v8, 0x20u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_100090AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100090B08(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained error];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_100090B88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100090DC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100090DEC(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = objc_retainBlock(*(a1 + 40));
    v11 = 138543874;
    v12 = v4;
    v13 = 2048;
    v14 = v3;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - publishing playlist with sagaID: %lld finished. completionHandler=%p", &v11, 0x20u);
  }

  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = *(a1 + 40);
    v8 = [WeakRetained playlistGlobalID];
    v9 = [WeakRetained playlistShareURL];
    v10 = [WeakRetained error];
    (*(v7 + 16))(v7, v8, v9, v10);
  }
}

void sub_100090F44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = objc_retainBlock(*(a1 + 32));
    v8 = 134218498;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Publish playlist with sagaID:%lld finished with noLibraryError=%{public}@, completionHandler=%p", &v8, 0x20u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, 0, v3);
  }
}

void sub_10009133C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100091364(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [WeakRetained error];

    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = [WeakRetained error];
      (*(v4 + 16))(v4, v5);
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [WeakRetained clientIdentity];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10009149C;
      v8[3] = &unk_1001DD8F0;
      v9 = *(a1 + 40);
      [v6 updateLibraryWithClientIdentity:v7 reason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 reconcileLibraryPins:0 completionHandler:v8];
    }
  }
}

uint64_t sub_100091484(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10009176C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100091794(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if ([WeakRetained libraryUpdateRequired])
    {
      v2 = *(a1 + 32);
      v3 = [WeakRetained clientIdentity];
      [v2 updateLibraryWithClientIdentity:v3 reason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 reconcileLibraryPins:0 completionHandler:&stru_1001DC340];
    }

    v4 = *(a1 + 40);
    v5 = [WeakRetained error];
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t sub_100091860(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100091AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100091AE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained error];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_100091B68(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100091DAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100091DC4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10009200C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100092034(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained error];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t sub_1000920B4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000924D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000924FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained updateRequired])
  {
    [*(a1 + 32) _handleLibraryEditOperationCompletionUpdatingLibrary:1 andSubscribedPlaylist:0 completion:&stru_1001DC320];
  }

  v2 = *(a1 + 40);
  v3 = WeakRetained;
  if (v2)
  {
    v4 = [WeakRetained error];
    (*(v2 + 16))(v2, v4);

    v3 = WeakRetained;
  }
}

uint64_t sub_100092598(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100092A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100092A8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained updateRequired])
  {
    [*(a1 + 32) _handleLibraryEditOperationCompletionUpdatingLibrary:1 andSubscribedPlaylist:0 completion:&stru_1001DC300];
  }

  v2 = *(a1 + 40);
  v3 = WeakRetained;
  if (v2)
  {
    v4 = [WeakRetained error];
    (*(v2 + 16))(v2, v4);

    v3 = WeakRetained;
  }
}

uint64_t sub_100092B28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100092DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100092DF0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained playlistSagaID];
    v4 = [WeakRetained error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

uint64_t sub_100092E84(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_100093174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009319C(uint64_t a1)
{
  if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [WeakRetained error];

    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = [WeakRetained error];
      (*(v4 + 16))(v4, 0, v5);
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [WeakRetained clientIdentity];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000932F0;
      v8[3] = &unk_1001DFC28;
      v10 = *(a1 + 40);
      v9 = WeakRetained;
      [v6 updateLibraryWithClientIdentity:v7 reason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 reconcileLibraryPins:0 completionHandler:v8];
    }
  }
}

uint64_t sub_1000932D0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_1000932F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  (*(v2 + 16))(v2, [v3 playlistSagaID], v4);
}

void sub_100093604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009362C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained playlistSagaID];
    v4 = [WeakRetained error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

uint64_t sub_1000936C0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_100093788(void *a1)
{
  v2 = *(a1[4] + 80);
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = a1[4];
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Postponing playlist play data timer due to continued updates", buf, 0xCu);
    }

    v6 = *(a1[4] + 80);
    v7 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }

  else
  {
    if (v4)
    {
      v8 = a1[4];
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Created timer to update playlist play data", buf, 0xCu);
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1[4] + 32));
    v10 = a1[4];
    v11 = *(v10 + 80);
    *(v10 + 80) = v9;

    v12 = *(a1[4] + 80);
    v13 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v15 = a1[4];
    v14 = a1[5];
    v16 = *(v15 + 80);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000939A0;
    handler[3] = &unk_1001DE600;
    handler[4] = v15;
    v18 = v14;
    v19 = a1[6];
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(*(a1[4] + 80));
  }
}

void sub_1000939A0(uint64_t a1)
{
  [*(*(a1 + 32) + 104) setClientIdentity:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 104) sagaLastPlaylistPlayDataUploadDate];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:v2];
  v5 = v4;

  if (v2 && v5 <= *(a1 + 48))
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(&v9->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v21 = 138543874;
      v22 = v16;
      v23 = 2048;
      v24 = *&v5;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, &v9->super.super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping playlist play data upload (minimum time interval not satisfied (%.0f < %.0f)", &v21, 0x20u);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      [v2 timeIntervalSince1970];
      v21 = 138543618;
      v22 = v7;
      v23 = 2048;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Uploading playlist play data since %{time}zd", &v21, 0x16u);
    }

    v9 = [(CloudLibraryOperation *)[SagaUploadPlaylistPlayDataOperation alloc] initWithConfiguration:*(*(a1 + 32) + 96) clientIdentity:*(a1 + 40)];
    v10 = [*(a1 + 32) _library];
    [v10 addOperation:v9 priority:2];

    [(SagaUploadPlaylistPlayDataOperation *)v9 waitUntilFinished];
    v11 = [(CloudLibraryOperation *)v9 status];
    if (v11 == 1)
    {
      v12 = +[NSDate date];
      [*(*(a1 + 32) + 104) setSagaLastPlaylistPlayDataUploadDate:v12];
    }

    else
    {
      v13 = v11;
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        if (v13 > 4)
        {
          v15 = @"Unknown Cloud Library Operation Status";
        }

        else
        {
          v15 = *(&off_1001DC508 + v13);
        }

        v18 = v15;
        v21 = 138543618;
        v22 = v14;
        v23 = 2114;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Upload playlist play data operation failed with status: %{public}@", &v21, 0x16u);
      }
    }
  }

  dispatch_source_cancel(*(*(a1 + 32) + 80));
  v19 = *(a1 + 32);
  v20 = *(v19 + 80);
  *(v19 + 80) = 0;
}

void sub_100093D30(void *a1)
{
  v2 = *(a1[4] + 72);
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = a1[4];
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Postponing item play data timer due to continued updates", buf, 0xCu);
    }

    v6 = *(a1[4] + 72);
    v7 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }

  else
  {
    if (v4)
    {
      v8 = a1[4];
      *buf = 138543362;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Created timer to update item play data", buf, 0xCu);
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1[4] + 24));
    v10 = a1[4];
    v11 = *(v10 + 72);
    *(v10 + 72) = v9;

    v12 = *(a1[4] + 72);
    v13 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v15 = a1[4];
    v14 = a1[5];
    v16 = *(v15 + 72);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100093F48;
    handler[3] = &unk_1001DE600;
    handler[4] = v15;
    v18 = v14;
    v19 = a1[6];
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(*(a1[4] + 72));
  }
}

void sub_100093F48(double *a1)
{
  [*(*(a1 + 4) + 104) setClientIdentity:*(a1 + 5)];
  v2 = [*(*(a1 + 4) + 104) sagaLastItemPlayDataUploadDate];
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:v2];
  v5 = v4;

  if (v2 && v5 <= a1[6])
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(&v9->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 4);
      v16 = *(a1 + 6);
      *buf = 138543874;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v5;
      *&buf[22] = 2048;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, &v9->super.super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping item play data upload (minimum time interval not satisfied (%.0f < %.0f)", buf, 0x20u);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 4);
      [v2 timeIntervalSince1970];
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Uploading item play data since %{time}zd", buf, 0x16u);
    }

    v9 = [(CloudLibraryOperation *)[SagaUploadItemPlayDataOperation alloc] initWithConfiguration:*(*(a1 + 4) + 96) clientIdentity:*(a1 + 5)];
    [(SagaUploadItemPlayDataOperation *)v9 setName:@"com.apple.itunescloudd.SagaRequestHandler.uploadPlayDataOperation"];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v26) = 1;
    v10 = *(a1 + 4);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000942D8;
    v20[3] = &unk_1001DC2E0;
    v20[4] = buf;
    [v10 _addLibraryOperation:v9 priority:2 noLibraryHandler:v20];
    if (*(*&buf[8] + 24) == 1)
    {
      [(SagaUploadItemPlayDataOperation *)v9 waitUntilFinished];
    }

    v11 = [(CloudLibraryOperation *)v9 status];
    if (v11 == 1)
    {
      v12 = +[NSDate date];
      [*(*(a1 + 4) + 104) setSagaLastItemPlayDataUploadDate:v12];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 4);
        if (v11 > 4)
        {
          v14 = @"Unknown Cloud Library Operation Status";
        }

        else
        {
          v14 = *(&off_1001DC508 + v11);
        }

        v17 = v14;
        *v21 = 138543618;
        v22 = v13;
        v23 = 2114;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ - Upload item play data operation failed with status: %{public}@", v21, 0x16u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  dispatch_source_cancel(*(*(a1 + 4) + 72));
  v18 = *(a1 + 4);
  v19 = *(v18 + 72);
  *(v18 + 72) = 0;
}

void sub_1000942B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100094490(uint64_t a1, void *a2)
{
  v3 = [a2 libraryDAAPConfiguration];
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ = Fetched library DAAP configuration: %{public}@", buf, 0x16u);
  }

  if ([v3 playDataBatchIntervalInMinutes] < 1)
  {
    v6 = 3600.0;
  }

  else
  {
    v6 = [v3 playDataBatchIntervalInMinutes] * 60.0;
  }

  [*(a1 + 32) uploadPlaylistPropertiesWithClientIdentity:*(a1 + 40) minimumTimeInterval:v6];
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100094618;
    block[3] = &unk_1001DF5C8;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

void sub_1000947D4(uint64_t a1, void *a2)
{
  v3 = [a2 libraryDAAPConfiguration];
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Fetched library DAAP configuration: %{public}@", buf, 0x16u);
  }

  if ([v3 playDataBatchIntervalInMinutes] < 1)
  {
    v6 = 3600.0;
  }

  else
  {
    v6 = [v3 playDataBatchIntervalInMinutes] * 60.0;
  }

  [*(a1 + 32) uploadItemPropertiesWithClientIdentity:*(a1 + 40) minimumTimeInterval:v6];
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 48);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009495C;
    block[3] = &unk_1001DF5C8;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

void sub_100094D6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094EA4;
  block[3] = &unk_1001DF578;
  block[4] = v2;
  dispatch_sync(v3, block);
  [*(*(a1 + 32) + 16) cancelAllImportsAndWaitForOperationsToFinish:0];
  [*(*(a1 + 32) + 8) cancelAllOperations];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperations: - Done!", buf, 0xCu);
  }
}

void sub_100094EA4(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperations: - _updateCloudLibraryOperation", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 56) cancel];
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

void sub_10009509C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100095244;
  block[3] = &unk_1001DF578;
  block[4] = v2;
  dispatch_sync(v3, block);
  [*(*(a1 + 32) + 16) cancelAllImportsAndWaitForOperationsToFinish:1];
  [*(*(a1 + 32) + 8) cancelAllOperations];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperationsWithCompletion: - Done!", buf, 0xCu);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10009528C;
    v10[3] = &unk_1001DF5C8;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

void sub_100095244(uint64_t a1)
{
  [*(*(a1 + 32) + 56) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

id sub_10009576C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userIdentity];
  v5 = [v4 accountDSID];
  v6 = [v3 stringByAppendingFormat:@".%@", v5];

  return v6;
}

intptr_t sub_100096464(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 itemIDs];
  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = v4;

  v7 = *(a1 + 32);
  v8 = [v3 responseCode];

  if (v8 > 399)
  {
    if (v8 == 404 || v8 == 400)
    {
      v9 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 1;
  if (v8 != 200 && v8 != 204)
  {
LABEL_8:
    v9 = 2;
  }

LABEL_9:
  [v7 setStatus:v9];
  v10 = *(a1 + 40);

  return dispatch_semaphore_signal(v10);
}

void sub_100096870(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  if (v3 >= 1)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Update Match Library failed with status: %ld", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000969BC;
    v7[3] = &unk_1001DC7F0;
    v8 = v5;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_100097D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICConnectionConfiguration alloc];
  v5 = +[ICUserIdentity activeAccount];
  v6 = +[ICUserIdentityStore defaultIdentityStore];
  v7 = [v4 initWithUserIdentity:v5 userIdentityStore:v6 clientIdentity:*(a1 + 32)];

  v8 = [*(a1 + 40) handlerProvider];
  v16 = 0;
  v9 = [v8 handlerWithType:0 configuration:v7 error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = [v7 clientIdentity];
    [v9 disableCloudLibraryWithClientIdentity:v11 reason:*(a1 + 56) completionHandler:*(a1 + 48)];

    [v3 finish];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 56);
      *buf = 134218498;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CloudService %p - disableCloudLibraryWithReason (%d) - Unable to service request for cloud library - error=%{public}@", buf, 0x1Cu);
    }

    [v3 finish];
    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, v10);
    }
  }
}

void sub_100098070(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 handlerProvider];
  v6 = *(a1 + 40);
  v16 = 0;
  v7 = [v5 handlerWithType:0 configuration:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [*(a1 + 40) clientIdentity];
    [v7 enableCloudLibraryWithClientIdentity:v9 startInitialImport:*(a1 + 64) enableCloudLibraryPolicy:*(a1 + 56) isExplicitUserAction:*(a1 + 65) completionHandler:*(a1 + 48)];

    [v4 finish];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = *(a1 + 56);
      v14 = *(a1 + 65);
      *buf = 134219010;
      v18 = v11;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - authenticateForConfiguration (startInitialImport=%{BOOL}u, enableCloudLibraryPolicy=%d, isExplicitUserAction=%{BOOL}u) - Unable to service request for cloud library - error=%{public}@", buf, 0x28u);
    }

    [v4 finish];
    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, v8);
    }
  }
}

uint64_t sub_1000983CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_10009859C(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v10 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 134219008;
    v14 = v11;
    v15 = 1024;
    v16 = a3;
    v17 = 1024;
    v18 = a2;
    v19 = 1024;
    v20 = a5;
    v21 = 1024;
    v22 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadIsUpdateInProgressForConfiguration: Saga [initial import: %{BOOL}u. Update in progress: %{BOOL}u], Jalisco [initial import: %{BOOL}u. Update in progress: %{BOOL}u]", &v13, 0x24u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2 | a4, a3 | a5);
  }

  return result;
}

void sub_100098BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadArtworkInfoForSubscriptionContainerPersistentIDs: - Sending subscription container artwork info: %{public}@ - error=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100098E94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadScreenshotInfoForSubscriptionPersistentIDs: - Sending subscription screenshot artwork info: %{public}@ - error=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100099180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadArtworkInfoForSubscriptionItemPersistentIDs: - Sending subscription item artwork info: %{public}@ - error=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009AAE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadScreenshotInfoForPurchaseHistoryIDs: - Sending purchase history screenshot artwork info: %{public}@ - error=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009ADDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218242;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - Sending purchase history artwork info: %{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10009B630(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadSagaUpdateProgressForConfiguration: - Jalisco update progress: %f", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 48));
  }

  return result;
}

uint64_t sub_10009B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 134218496;
    v12 = v9;
    v13 = 1024;
    v14 = a5;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadIsJaliscoUpdateInProgressForConfiguration: - Jalisco initial import: %{BOOL}u. Update in progress: %{BOOL}u", &v11, 0x18u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a4, a5);
  }

  return result;
}

void sub_10009C048(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryForBagKey:ICURLBagKeyPurchaseDAAP];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = ICGetCloudDAAPClientPrefix();
  v5 = [v4 stringByAppendingString:@"update-on-app-focus-enabled"];
  v6 = [v3 objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v3 objectForKey:@"update-on-app-focus-enabled"];
  }

  v9 = v8;

  v10 = (objc_opt_respondsToSelector() & 1) != 0 ? [v9 BOOLValue] : 0;
  v11 = ICGetCloudDAAPClientPrefix();
  v12 = [v11 stringByAppendingString:@"update-polling-frequency-secs"];
  v13 = [v3 objectForKey:v12];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [v3 objectForKey:@"update-polling-frequency-secs"];
  }

  v16 = v15;

  v17 = (objc_opt_respondsToSelector() & 1) != 0 ? [v16 intValue] : 900.0;
  if (!v10)
  {
LABEL_23:
    v26 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Jalisco] Periodic update on app focus disabled via bag.", buf, 2u);
    }

    goto LABEL_29;
  }

  if (![*(a1 + 32) jaliscoOnDiskDatabaseRevision])
  {
LABEL_26:
    v27 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Jalisco] Updating jalisco library...", buf, 2u);
    }

    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10009C460;
    v30[3] = &unk_1001DE828;
    v31 = *(a1 + 32);
    [v28 updateJaliscoLibraryWithReason:7 forConfiguration:v29 completion:v30];
    v26 = v31;
LABEL_29:

    goto LABEL_30;
  }

  v18 = [*(a1 + 32) jaliscoLastLibraryUpdateTime];
  [v18 timeIntervalSinceReferenceDate];
  if (v19 <= 0.0)
  {

    goto LABEL_26;
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [v18 timeIntervalSince1970];
    *buf = 134217984;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Jalisco] Last library update time: %{time_t}zd", buf, 0xCu);
  }

  v22 = +[NSDate date];
  [v22 timeIntervalSinceDate:v18];
  v24 = v23;

  v25 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v33 = *&v24;
    v34 = 2048;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Jalisco] Elapsed time since last library update: %g, minimum: %g", buf, 0x16u);
  }

  if (v24 >= v17)
  {
    goto LABEL_26;
  }

LABEL_30:
}

void sub_10009C460(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = +[NSDate date];
    [*(a1 + 32) setJaliscoLastLibraryUpdateTime:v3];
  }
}

void sub_10009E47C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 0x100) != 0)
  {
    v10 = [*(a1 + 32) handlerProvider];
    v11 = *(a1 + 40);
    v20 = 0;
    v8 = [v10 handlerWithType:0 configuration:v11 error:&v20];
    v7 = v20;

    if (v8)
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 32) requestingBundleID];
      v14 = [*(a1 + 40) clientIdentity];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10009E71C;
      v18[3] = &unk_1001DC6E0;
      v19 = *(a1 + 56);
      [v8 addStoreItemWithOpaqueID:v12 requestingBundleID:v13 clientIdentity:v14 completionHandler:v18];
    }

    else
    {
      v15 = os_log_create("com.apple.amp.itunescloudd", "SDK");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 134218242;
        v22 = v16;
        v23 = 2114;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - sdk_addStoreItemWithOpaqueID: - Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
      }

      v17 = *(a1 + 56);
      if (v17)
      {
        (*(v17 + 16))(v17, 0, v7);
      }

      v8 = 0;
    }

    goto LABEL_11;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v25 = NSDebugDescriptionErrorKey;
    v7 = [NSString stringWithFormat:@"Missing add to library capabilities in %ld", a2];
    v26 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v9 = [NSError errorWithDomain:ICErrorDomain code:-7602 userInfo:v8];
    (*(v6 + 16))(v6, 0, v9);

LABEL_11:
  }
}

uint64_t sub_10009F804(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000A15DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadScreenshotInfoForSagaIDs: - Sending saga screenshot artwork info: %{public}@ - error=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000A18D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadArtworkInfoForContainerSagaIDs: - Sending saga container artwork info: %{public}@ - error=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000A1BC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 134218498;
    v10 = v8;
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadArtworkInfoForSagaIDs: - Sending saga artwork info: %{public}@ - error=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000A2880(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v6 = 134218240;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadSagaUpdateProgressForConfiguration: - Saga update progress: %f", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 48));
  }

  return result;
}

uint64_t sub_1000A2B18(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 134218496;
    v14 = v11;
    v15 = 1024;
    v16 = a3 | a5;
    v17 = 1024;
    v18 = a2 | a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CloudService %p - loadIsSagaUpdateInProgressForConfiguration: - Saga initial import: %{BOOL}u. Update in progress: %{BOOL}u", &v13, 0x18u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2 | a4, a3 | a5);
  }

  return result;
}

void sub_1000A3310(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isActiveLocker])
  {
    [v6 DSID];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000A3818(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Could not get properties for user identity: %{public}@ - error=%{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v7 = [ML3MusicLibrary musicLibraryForUserAccount:a1[4]];
    v8 = [[ICStoreRequestContext alloc] initWithIdentity:a1[4]];
    v9 = +[ICURLBagProvider sharedBagProvider];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A39CC;
    v14[3] = &unk_1001DC5A0;
    v10 = a1[5];
    v11 = a1[6];
    v15 = v7;
    v16 = v10;
    v17 = v11;
    v12 = v7;
    [v9 getBagForRequestContext:v8 withCompletionHandler:v14];
  }
}

void sub_1000A39CC(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryForBagKey:ICURLBagKeyLibraryDAAP];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"auto-update-polling-frequency-secs"];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = 900.0;
    }

    v7 = [v3 objectForKey:@"subscribed-container-polling-frequency-secs"];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 integerValue];
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = -1;
    v5 = 900.0;
  }

  v8 = [*(a1 + 32) sagaOnDiskDatabaseRevision];
  if (v8)
  {
    v9 = [*(a1 + 32) sagaLastLibraryUpdateTime];
    [v9 timeIntervalSinceReferenceDate];
    if (v10 <= 0.0)
    {
      v17 = 1;
    }

    else
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [v9 timeIntervalSince1970];
        *buf = 134217984;
        *v63 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Last library update time: %{time_t}zd", buf, 0xCu);
      }

      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:v9];
      v15 = v14;

      v16 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *v63 = v15;
        *&v63[8] = 2048;
        v64 = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Elapsed time since last library update: %g, minimum: %g", buf, 0x16u);
      }

      v17 = v15 >= v5;
    }
  }

  else
  {
    v17 = 1;
  }

  if (v6 == -1)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Subscribed containers periodic update disabled via bag.", buf, 2u);
    }

    v34 = 0;
    v35 = 0;
  }

  else
  {
    v18 = [*(a1 + 32) sagaLastSubscribedContainersUpdateTime];
    [v18 timeIntervalSinceReferenceDate];
    if (v19 <= 0.0)
    {
      goto LABEL_28;
    }

    v20 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [v18 timeIntervalSince1970];
      *buf = 134217984;
      *v63 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Last subscribed containers update time: %{time_t}zd", buf, 0xCu);
    }

    v22 = +[NSDate date];
    [v22 timeIntervalSinceDate:v18];
    v24 = v23;

    v25 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v63 = v24;
      *&v63[8] = 2048;
      v64 = v6;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Elapsed time since last subscribed containers update: %g, minimum: %g", buf, 0x16u);
    }

    if (v24 >= v6)
    {
LABEL_28:
      v34 = 0;
      v35 = 0;
      v36 = 1;
      goto LABEL_33;
    }

    v47 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyDistinguishedKind equalToInteger:0];
    v61[0] = v47;
    v26 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyCloudLastUpdateTime equalToInteger:0];
    v61[1] = v26;
    [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyCloudIsSubscribed equalToInt64:1];
    v27 = v49 = v3;
    v61[2] = v27;
    v28 = ML3ContainerPropertyStoreCloudID;
    v29 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID value:&off_1001ED5B8 comparison:2];
    v61[3] = v29;
    v30 = [NSArray arrayWithObjects:v61 count:4];
    v48 = [ML3AllCompoundPredicate predicateMatchingPredicates:v30];

    v3 = v49;
    v31 = [ML3Container queryWithLibrary:*(a1 + 32) predicate:v48];
    v32 = objc_alloc_init(NSMutableArray);
    v60 = v28;
    v33 = [NSArray arrayWithObjects:&v60 count:1];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000A429C;
    v58[3] = &unk_1001DF8D0;
    v34 = v32;
    v59 = v34;
    [v31 enumeratePersistentIDsAndProperties:v33 usingBlock:v58];

    v35 = [v34 count] != 0;
  }

  v36 = 0;
LABEL_33:

  v37 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v63 = v36;
    *&v63[4] = 1024;
    *&v63[6] = v35;
    LOWORD(v64) = 1024;
    *(&v64 + 2) = v17;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] shouldUpdateAllSubscribedContainers=%{BOOL}u, shouldUpdateSubscribedContainersWithNoLastUpdateTimestamp=%{BOOL}u, shouldUpdateLibrary=%{BOOL}u", buf, 0x14u);
  }

  if (v17)
  {
    if (v8)
    {
      v38 = 7;
    }

    else
    {
      v38 = 1;
    }

    v39 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v63 = v8;
      *&v63[4] = 1024;
      *&v63[6] = v8 == 0;
      LOWORD(v64) = 1024;
      *(&v64 + 2) = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Updating cloud library. databaseRevision=%u, allowNoisyAuthPrompts=%{BOOL}u, reason=%d", buf, 0x14u);
    }

    v41 = *(a1 + 40);
    v40 = *(a1 + 48);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1000A42A8;
    v52[3] = &unk_1001DC558;
    v56 = v36;
    v52[4] = v41;
    v53 = v40;
    v54 = *(a1 + 32);
    v57 = v35;
    v55 = v34;
    [v41 _updateSagaLibraryWithReason:v38 allowNoisyAuthPrompt:v8 == 0 forConfiguration:v53 completionHandler:v52];

    v42 = v53;
LABEL_46:

    goto LABEL_47;
  }

  if (v36)
  {
    v43 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Skipped cloud library update, updating all subscribed containers now (not ignoring min refresh interval)...", buf, 2u);
    }

    v44 = *(a1 + 40);
    v45 = *(a1 + 48);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000A4428;
    v50[3] = &unk_1001DE828;
    v51 = *(a1 + 32);
    [v44 updateSubscribedPlaylistsWithSagaIDs:0 ignoreMinRefreshInterval:0 configuration:v45 completion:v50];
    v42 = v51;
    goto LABEL_46;
  }

  if (v35)
  {
    v46 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Skipped cloud library update and skipped updating all subscribed containers. Updating all subscribed containers with no last_update now...", buf, 2u);
    }

    [*(a1 + 40) updateSubscribedPlaylistsWithSagaIDs:v34 ignoreMinRefreshInterval:0 configuration:*(a1 + 48) completion:&stru_1001DC578];
  }

LABEL_47:
}

void sub_1000A42A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 64) == 1)
    {
      v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Update saga library completed successfully, updating all subscribed containers...", buf, 2u);
      }

      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000A4490;
      v7[3] = &unk_1001DE828;
      v8 = *(a1 + 48);
      [v4 updateSubscribedPlaylistsWithSagaIDs:0 ignoreMinRefreshInterval:1 configuration:v5 completion:v7];
    }

    else if (*(a1 + 65) == 1)
    {
      v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BecomeActive::Cloud] Update saga library completed successfully, skipped updating all subscribed containers. Updating all subscribed containers with no last_update now...", buf, 2u);
      }

      [*(a1 + 32) updateSubscribedPlaylistsWithSagaIDs:*(a1 + 56) ignoreMinRefreshInterval:0 configuration:*(a1 + 40) completion:&stru_1001DC530];
    }
  }
}

void sub_1000A4428(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = +[NSDate date];
    [*(a1 + 32) setSagaLastSubscribedContainersUpdateTime:v4];
  }
}

void sub_1000A4490(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = +[NSDate date];
    [*(a1 + 32) setSagaLastSubscribedContainersUpdateTime:v4];
  }
}

void sub_1000A589C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v17 = 134217984;
    *&v17[4] = [v5 responseCode];
    v9 = "Set album properties response: %lu";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *v17 = 0;
    v9 = "Set album properties received no response";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v9, v17, v12);
LABEL_7:

  if (v6)
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v17 = 138543362;
      *&v17[4] = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Set album properties response with error: %{public}@", v17, 0xCu);
    }
  }

  v14 = *(a1 + 32);
  v15 = [v5 responseCode];
  if (v15 > 399)
  {
    if (v15 != 404 && v15 != 400)
    {
      goto LABEL_18;
    }

    v16 = 3;
  }

  else
  {
    v16 = 1;
    if (v15 != 200 && v15 != 204)
    {
LABEL_18:
      v16 = 2;
    }
  }

  [v14 setStatus:v16];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000A6EB0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v18 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = a2;
  [a1 setObject:v15 forKey:v13];
  [v17 addObject:v13];

  [v16 addObject:v15];
  if (v14)
  {
    [v18 setObject:v14 forKey:v13];
  }
}

id sub_1000A760C(void *a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000A7B84;
  v39 = sub_1000A7B94;
  v40 = 0;
  v12 = [ICStoreRequestContext alloc];
  v13 = +[ICUserIdentity activeAccount];
  v14 = [v12 initWithIdentity:v13];

  if (v9)
  {
    goto LABEL_14;
  }

  if (!v10)
  {
    v29 = +[NSAssertionHandler currentHandler];
    v30 = [NSString stringWithUTF8String:"ICStoreURLRequest *_CloudGeniusUtilitiesCreatePostRequest(NSURL *__strong, NSString *__strong, NSTimeInterval, NSInteger, NSMutableDictionary *__strong, BOOL, BOOL)"];
    [v29 handleFailureInFunction:v30 file:@"CloudGeniusUtilities.m" lineNumber:315 description:@"Must provide either a URL or a URL Bag Key"];
  }

  v15 = dispatch_semaphore_create(0);
  *&v42 = 0;
  *(&v42 + 1) = &v42;
  v43 = 0x3032000000;
  v44 = sub_1000A7B84;
  v45 = sub_1000A7B94;
  v46 = 0;
  v16 = +[ICURLBagProvider sharedBagProvider];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000A7B9C;
  v31[3] = &unk_1001DE320;
  v33 = &v42;
  v34 = &v35;
  v17 = v15;
  v32 = v17;
  [v16 getBagForRequestContext:v14 withCompletionHandler:v31];

  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (v36[5])
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Genius");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v36[5];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "failed to fetch bag. err=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v18 = [*(*(&v42 + 1) + 40) stringForBagKey:v10];
    if (v18)
    {
      v9 = [NSURL URLWithString:v18];
      goto LABEL_13;
    }

    v20 = os_log_create("com.apple.amp.itunescloudd", "Genius");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "not creating request because url bag key '%{public}@' not found", buf, 0xCu);
    }

    v18 = 0;
  }

  v9 = 0;
LABEL_13:

  _Block_object_dispose(&v42, 8);
  if (!v9)
  {
    v27 = 0;
    goto LABEL_25;
  }

LABEL_14:
  v21 = [NSMutableURLRequest requestWithURL:v9];
  [v21 setHTTPMethod:@"POST"];
  if (a5 > 0.0)
  {
    [v21 setTimeoutInterval:a5];
  }

  v22 = v11;
  if (!v22)
  {
    v22 = +[NSMutableDictionary dictionary];
  }

  v23 = v22;
  [v22 setObject:&off_1001ED5D0 forKey:@"protocol-version"];
  [v23 setObject:&off_1001ED5D0 forKey:@"min-compatible-version"];
  *buf = 0;
  v24 = [NSPropertyListSerialization dataWithPropertyList:v23 format:100 options:0 error:buf];
  v25 = *buf;
  if (!v24)
  {
    v26 = os_log_create("com.apple.amp.itunescloudd", "Genius");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v42) = 138543362;
      *(&v42 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to serialize body dictionary to plist with error: %{public}@", &v42, 0xCu);
    }

    v24 = 0;
  }

  if (v24)
  {
    [v21 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    [v21 setHTTPBody:v24];
  }

  v27 = [[ICStoreURLRequest alloc] initWithURLRequest:v21 requestContext:v14];
  [v27 setMaxRetryCount:a3];
  [v27 setShouldUseMescalSigning:1];

LABEL_25:
  _Block_object_dispose(&v35, 8);

  return v27;
}

void sub_1000A7B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7B84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A7B9C(uint64_t a1, void *a2, void *a3)
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

void sub_1000A8034(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = [v6 msv_description];
      *buf = 138543618;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished request error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request", buf, 0xCu);
  }

  v12 = [v5 responseCode];
  if (v12 > 399)
  {
    if (v12 == 404 || v12 == 400)
    {
      v13 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 1;
  if (v12 != 200 && v12 != 204)
  {
LABEL_13:
    v13 = 2;
  }

LABEL_14:
  [a1[4] setStatus:v13];
  [a1[4] setError:v6];
  if (!v6)
  {
    v14 = v5;
    v15 = [v14 updatedInvitationURL];
    v16 = [v14 updatedInviteURLExpirationDate];
    if (v16)
    {
      v17 = v16 - 978307200;
    }

    else
    {
      v17 = 0;
    }

    objc_storeStrong((a1[4] + 106), v15);
    v18 = [a1[4] musicLibrary];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1000A8370;
    v27 = &unk_1001DC818;
    v28 = v15;
    v31 = v17;
    v19 = a1[5];
    v20 = a1[4];
    v29 = v19;
    v30 = v20;
    v21 = v15;
    [v18 databaseConnectionAllowingWrites:1 withBlock:&v24];

    LOBYTE(v18) = [v14 updateRequired];
    *(a1[4] + 98) = v18;
    *(a1[4] + 114) = [a1[6] longLongValue];
  }

  v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a1[4];
    *buf = 138543362;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Operation complete", buf, 0xCu);
  }

  [a1[7] endTransaction];
  [a1[4] finish];
}

void sub_1000A8370(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = ML3ContainerPropertyCollaborationInvitationURL;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [*(a1 + 32) absoluteString];
  }

  else
  {
    v5 = &stru_1001E0388;
  }

  v12[1] = ML3ContainerPropertyCollaborationInvitationURLExpirationDate;
  v13[0] = v5;
  v6 = [NSNumber numberWithLongLong:*(a1 + 56)];
  v13[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  if (v4)
  {
  }

  if (([*(a1 + 40) setValuesForPropertiesWithDictionary:v7] & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update container properties", &v10, 0xCu);
    }
  }
}

void sub_1000A89C4(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Delivering response to remote client for request to update subscription status for %{public}@. err=%{public}@", &v10, 0x20u);
  }

  (*(a1[6] + 16))();
}

void sub_1000A8BCC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Delivering response to remote client for request %@", buf, 0x16u);
  }

  v10 = a1[6];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A8D48;
  v14[3] = &unk_1001DE828;
  v14[4] = a1[4];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v14];
  v12 = a1[5];
  v13 = [v5 msv_errorByRemovingUnsafeUserInfo];

  [v11 deliverSubscriptionStatusResponse:v6 forRemoteRequestWithUniqueIdentifier:v12 error:v13];
}

void sub_1000A8D48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to obtain remote proxy to deliver subscription status response. error = %{public}@.", &v6, 0x16u);
  }
}

void *sub_1000A8E90(void *result)
{
  if (*(result[4] + 16) == 1)
  {
    v1 = result;
    v2 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping...", &v4, 0xCu);
    }

    *(v1[4] + 16) = 0;
    [*(v1[4] + 24) invalidate];
    return [*(v1[4] + 24) setDelegate:0];
  }

  return result;
}

void *sub_1000A8FEC(void *result)
{
  if ((*(result[4] + 16) & 1) == 0)
  {
    v1 = result;
    v2 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ starting up...", &v4, 0xCu);
    }

    *(v1[4] + 16) = 1;
    [*(v1[4] + 24) setDelegate:?];
    return [*(v1[4] + 24) resume];
  }

  return result;
}

void sub_1000A92DC(id a1)
{
  qword_100213C98 = [[CloudMusicSubscriptionStatusServiceListener alloc] _init];

  _objc_release_x1();
}

void sub_1000A9C80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(a1 + 32))
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"ICContentTasteRequestHandler.m" lineNumber:191 description:@"content taste change to post cannot be nil"];
  }

  if (*(*(a1 + 40) + 64))
  {
    v4 = [[MSVXPCTransaction alloc] initWithName:@"PostPendingContentTasteChanges"];
    [v4 beginTransaction];
    v5 = [*(*(a1 + 40) + 32) pendingChanges];
    v6 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543618;
      v30 = v7;
      v31 = 1024;
      LODWORD(v32) = [v5 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %d pending content taste changes to post.", buf, 0x12u);
    }

    [*(a1 + 40) _postContentTasteChanges:v5 withCompletionHandler:0];
    v8 = [*(a1 + 32) objectForKey:@"ContentTastePendingChangesCoordinatorOperationIdentifierKey"];
    if ([v8 isEqualToString:@"ICContentTasteRequestHandlerRetryTaskIdentifier"] && !objc_msgSend(v5, "count"))
    {
      v15 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste_Oversize");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        *buf = 138543362;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ No pending changes for retry task.", buf, 0xCu);
      }

      *(*(a1 + 40) + 48) = 0;
      v17 = *(a1 + 48);
      if (!v17)
      {
        goto LABEL_10;
      }

      v18 = dispatch_get_global_queue(0, 0);
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1000AA0BC;
      v23 = &unk_1001DF5C8;
      v24 = v17;
      dispatch_async(v18, &v20);

      v10 = v24;
    }

    else
    {
      v9 = *(a1 + 40);
      v28 = *(a1 + 32);
      v10 = [NSArray arrayWithObjects:&v28 count:1];
      [v9 _postContentTasteChanges:v10 withCompletionHandler:*(a1 + 48)];
    }

LABEL_10:
    [v4 endTransaction];
    [v3 finishWithError:0];

LABEL_15:
    goto LABEL_16;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138543618;
    v30 = v12;
    v31 = 2048;
    v32 = v3;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ handler is no longer valid. Not running operation=%p", buf, 0x16u);
  }

  v4 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  [v3 finishWithError:v4];
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AA0A8;
    block[3] = &unk_1001DF5A0;
    v27 = v13;
    v4 = v4;
    v26 = v4;
    dispatch_async(v14, block);

    v5 = v27;
    goto LABEL_15;
  }

LABEL_16:
}

id sub_1000AA298(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@  starting retry operation to post content taste change", &v5, 0xCu);
  }

  return [*(a1 + 32) updateContentTasteForReason:2 invalidatingLocalCache:0 completionHandler:0];
}

id sub_1000AA424(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@  running default task tp update content taste", &v5, 0xCu);
  }

  return [*(a1 + 32) updateContentTasteForReason:3 invalidatingLocalCache:0 completionHandler:0];
}

void sub_1000AA630(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(v3 + 16) operationCount];
    *buf = 138543618;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelling %d operations and clearing all pending changes", buf, 0x12u);
  }

  *(*(a1 + 32) + 64) = 0;
  v5 = +[ICBGTaskScheduler sharedTaskScheduler];
  [v5 cancelTask:*(*(a1 + 32) + 56)];

  v6 = +[ICCloudContentTasteResponseCacheManager sharedCloudContentTasteResponseCacheManager];
  [v6 removeCachedContentTasteResponseForConnectionConfiguration:*(*(a1 + 32) + 24)];

  [*(*(a1 + 32) + 32) removePendingChanges];
  [*(*(a1 + 32) + 16) cancelAllOperations];
  v7 = *(*(a1 + 32) + 16);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AA7D4;
  v8[3] = &unk_1001DF5C8;
  v9 = *(a1 + 40);
  [v7 addOperationWithBlock:v8];
}

void sub_1000AA7D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AA878;
    block[3] = &unk_1001DF5C8;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1000AA954(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = +[ICCloudContentTasteResponseCacheManager sharedCloudContentTasteResponseCacheManager];
    [v2 removeCachedContentTasteResponseForConnectionConfiguration:*(*(a1 + 32) + 24)];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v16[1] = @"ContentTastePendingChangesCoordinatorInvalidateCacheKey";
    v17[0] = v3;
    v16[0] = @"ContentTastePendingChangesCoordinatorContentTasteItemKey";
    v4 = [NSNumber numberWithBool:*(a1 + 56)];
    v17[1] = v4;
    v5 = v17;
    v6 = v16;
    v7 = 2;
  }

  else
  {
    v14 = @"ContentTastePendingChangesCoordinatorInvalidateCacheKey";
    v4 = [NSNumber numberWithBool:*(a1 + 56)];
    v15 = v4;
    v5 = &v15;
    v6 = &v14;
    v7 = 1;
  }

  v8 = [NSDictionary dictionaryWithObjects:v5 forKeys:v6 count:v7];

  v12[0] = @"ContentTastePendingChangesCoordinatorOperationIdentifierKey";
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  v12[1] = @"ContentTastePendingChangesCoordinatorPendingChangesKey";
  v13[0] = v10;
  v13[1] = v8;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

  [*(a1 + 32) _postPendingContentTasteChangesByAddingChange:v11 completionHandler:*(a1 + 48)];
}

void sub_1000AABAC(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = +[ICCloudContentTasteResponseCacheManager sharedCloudContentTasteResponseCacheManager];
    [v2 removeCachedContentTasteResponseForConnectionConfiguration:*(*(a1 + 32) + 24)];

    v3 = *(a1 + 56);
  }

  else
  {
    v3 = 0;
  }

  v19 = @"ContentTastePendingChangesCoordinatorInvalidateCacheKey";
  v4 = [NSNumber numberWithBool:v3 & 1];
  v20 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v6 = *(a1 + 48);
  if (v6 >= 4)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 48);
      *buf = 138543618;
      v16 = v9;
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%{public}@ - Requesting content taste for invalid reason=%d", buf, 0x12u);
    }

    v11 = +[NSUUID UUID];
    v7 = [v11 UUIDString];
  }

  else
  {
    v7 = off_1001DC920[v6];
  }

  v13[0] = @"ContentTastePendingChangesCoordinatorOperationIdentifierKey";
  v13[1] = @"ContentTastePendingChangesCoordinatorPendingChangesKey";
  v14[0] = v7;
  v14[1] = v5;
  v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  [*(a1 + 32) _postPendingContentTasteChangesByAddingChange:v12 completionHandler:*(a1 + 40)];
}

void sub_1000AB338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000AB358(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v6 = WeakRetained;
    v3 = [WeakRetained status];
    v4 = *(a1 + 32);
    if (v3 == 1)
    {
      v5 = [v6 books];
      (*(v4 + 16))(v4, v5, 0);
    }

    else
    {
      v5 = [NSError ic_cloudClientErrorWithCode:2002 userInfo:0];
      (*(v4 + 16))(v4, 0, v5);
    }

    WeakRetained = v6;
  }
}

uint64_t sub_1000AB41C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_1000AB57C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    v7 = 138543618;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelling _updateLibraryOperation=%p", &v7, 0x16u);
  }

  [*(*(a1 + 32) + 64) cancel];
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = 0;
}

void sub_1000AB760(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    [*(*(a1 + 32) + 16) setClientIdentity:*(a1 + 40)];
    v13 = [*(a1 + 32) _DAAPMediaKindFromJaliscoSupportedMediaKind:*(a1 + 56)];
    v14 = [*(*(a1 + 32) + 16) jaliscoLastExcludedMediaKinds];
    v15 = [v14 containsObject:v13];

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = *(*(a1 + 32) + 24);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000AB9D8;
      v18[3] = &unk_1001DC9E8;
      v19 = v16;
      v20 = v15;
      dispatch_async(v17, v18);
    }

    goto LABEL_8;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(v8 + 8) userIdentity];
    v10 = [v9 accountDSID];
    *buf = 138543874;
    v25 = v8;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Failed to get account properties - DSID=%{public}@ err=%{public}@", buf, 0x20u);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AB9C0;
    block[3] = &unk_1001DF5A0;
    v23 = v11;
    v22 = v6;
    dispatch_async(v12, block);

    v13 = v23;
LABEL_8:
  }
}

void sub_1000ABAF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [*(v9 + 8) userIdentity];
      v11 = [v10 accountDSID];
      *buf = 138543874;
      v24 = v9;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Failed to get account properties - DSID=%{public}@ err=%{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(*(a1 + 32) + 24);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000ABD4C;
      v20[3] = &unk_1001DF5A0;
      v22 = v12;
      v21 = v6;
      dispatch_async(v13, v20);
    }
  }

  else
  {
    if (v8)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      *buf = 138543618;
      v24 = v14;
      v25 = 1024;
      LODWORD(v26) = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Reload media purchase history by removing media kind %d", buf, 0x12u);
    }

    [*(*(a1 + 32) + 16) setClientIdentity:*(a1 + 40)];
    v16 = *(a1 + 32);
    v17 = v16[2];
    v18 = [v16 _DAAPMediaKindFromJaliscoSupportedMediaKind:*(a1 + 56)];
    v19 = [NSSet setWithObject:v18];
    [v17 updateJaliscoExcludedMediaKindsWith:v19 excludingMediaKindsInSet:1];

    [*(a1 + 32) _updateJaliscoLibraryWithClientIdentity:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_1000ABE5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [*(v9 + 8) userIdentity];
      v11 = [v10 accountDSID];
      *buf = 138543874;
      v24 = v9;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Failed to get account properties - DSID=%{public}@ err=%{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(*(a1 + 32) + 24);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000AC0B8;
      v20[3] = &unk_1001DF5A0;
      v22 = v12;
      v21 = v6;
      dispatch_async(v13, v20);
    }
  }

  else
  {
    if (v8)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      *buf = 138543618;
      v24 = v14;
      v25 = 1024;
      LODWORD(v26) = v15;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Reload media purchase history by adding media kind %d", buf, 0x12u);
    }

    [*(*(a1 + 32) + 16) setClientIdentity:*(a1 + 40)];
    v16 = *(a1 + 32);
    v17 = v16[2];
    v18 = [v16 _DAAPMediaKindFromJaliscoSupportedMediaKind:*(a1 + 56)];
    v19 = [NSSet setWithObject:v18];
    [v17 updateJaliscoExcludedMediaKindsWith:v19 excludingMediaKindsInSet:0];

    [*(a1 + 32) _updateJaliscoLibraryWithClientIdentity:*(a1 + 40) completion:*(a1 + 48)];
  }
}

void sub_1000AC46C(uint64_t a1)
{
  v2 = [(BaseRequestHandler *)ArtistImageRequestHandler handlerForConfiguration:*(*(a1 + 32) + 8)];
  [v2 cancelAllOperationsAndWaitForOperationsToFinish:1];

  [*(a1 + 32) cancelAllOperationsAndWaitForOperationsToFinish:1];
  [*(*(a1 + 32) + 16) clearJaliscoLastExcludedMediaKinds];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AC544;
    block[3] = &unk_1001DF5C8;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void sub_1000ACDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ACE24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000ACEA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = [WeakRetained cloudArtworkInfoDictionaries];
    (*(v1 + 16))(v1, v2, 0);
  }
}

uint64_t sub_1000ACF24(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_1000AD0E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v8 = [*(a1 + 32) artworkImporter];
    [v8 importScreenshotForPurchaseHistoryID:*(a1 + 56) clientIdentity:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 56);
      *buf = 138543618;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ - No active account, skipping import screenshot for purchase history ID: %llu", buf, 0x16u);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000AD278;
      block[3] = &unk_1001DF5C8;
      v10 = v6;
      dispatch_async(v7, block);
    }
  }
}

void sub_1000AD278(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1000AD3E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v8 = [*(a1 + 32) artworkImporter];
    [v8 importItemArtworkForPurchaseHistoryID:*(a1 + 56) clientIdentity:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 56);
      *buf = 138543618;
      v12 = v4;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ - No active account, skipping import artwork for purchase history ID: %llu", buf, 0x16u);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000AD570;
      block[3] = &unk_1001DF5C8;
      v10 = v6;
      dispatch_async(v7, block);
    }
  }
}

void sub_1000AD570(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1000AD7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AD7E4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v2 = *(a1 + 32);
    v3 = [WeakRetained error];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_1000ADA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000ADAAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained error];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1000ADB18(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000AE364(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7400 userInfo:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

void sub_1000AE3DC(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setClientIdentity:*(a1 + 40)];
  [*(*(a1 + 32) + 16) setJaliscoAccountID:*(a1 + 48)];
  v2 = [*(a1 + 56) storefrontIdentifier];
  if (v2)
  {
    v3 = [*(a1 + 56) storefrontIdentifier];
    [*(*(a1 + 32) + 16) setStorefrontIdentifier:v3];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  if (v4[8])
  {
    if (v5)
    {
      v6 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138543362;
        v41 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update library operation in progress, attaching completion handler.", buf, 0xCu);
      }

      v8 = [*(a1 + 32) updateLibraryCompletionHandlers];
      v9 = [*(a1 + 72) copy];
      [v8 addObject:v9];
    }
  }

  else
  {
    if (v5)
    {
      v10 = [v4 updateLibraryCompletionHandlers];
      v11 = [*(a1 + 72) copy];
      [v10 addObject:v11];
    }

    v12 = [[JaliscoMediaUpdateOperation alloc] initWithConfiguration:*(*(a1 + 32) + 8) reason:*(a1 + 80) supportedMediaKindsHandler:*(*(a1 + 32) + 40) clientIdentity:*(a1 + 40)];
    v13 = *(*(a1 + 32) + 64);
    *(*(a1 + 32) + 64) = v12;

    v14 = +[ICDServer server];
    v15 = [v14 daemonOptionsForConfiguration:*(*(a1 + 32) + 8)];
    v16 = [v15 prohibitArtworkPrefetch];

    v17 = *(a1 + 80);
    v18 = [*(*(a1 + 32) + 16) jaliscoOnDiskDatabaseRevision];
    v19 = v18 == 0;
    if (v16)
    {
      LODWORD(v17) = 0;
    }

    else if (v17 != 1)
    {
      LODWORD(v17) = [*(*(a1 + 32) + 16) jaliscoNeedsUpdateForTokens];
    }

    v20 = +[ICDeviceInfo currentDeviceInfo];
    if ([v20 isWatch])
    {
      v21 = +[ICEnvironmentMonitor sharedMonitor];
      v22 = [v21 isCharging];

      if ((v22 & 1) == 0)
      {
        v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not performing artwork update because power is required", buf, 2u);
        }

        LODWORD(v17) = 0;
      }
    }

    else
    {
    }

    v23 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v18 == 0;
      v25 = *(a1 + 32);
      v26 = *(a1 + 80);
      v27 = ICCloudClientGetStringForRequestReason();
      v28 = *(*(a1 + 32) + 64);
      *buf = 138544386;
      v41 = v25;
      v42 = 2114;
      v43 = v27;
      v44 = 1024;
      v45 = v24;
      v46 = 1024;
      v47 = v17;
      v48 = 2048;
      v49 = v28;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating media purchase history - Reason=%{public}@ - isInitialImport=%{BOOL}u - prefetchArtwork=%{BOOL}u, _updateLibraryOperation=%p", buf, 0x2Cu);
    }

    [*(*(a1 + 32) + 40) startingUpdateOperationForLibraryType:0 isInitialImport:*(a1 + 80) == 1];
    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, *(*(a1 + 32) + 64));
    v29 = *(*(a1 + 32) + 64);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000AE960;
    v32[3] = &unk_1001DC970;
    objc_copyWeak(&v34, &location);
    objc_copyWeak(v35, &from);
    v35[1] = *(a1 + 80);
    v36 = v19;
    v37 = v17;
    v33 = *(a1 + 40);
    [v29 setCompletionBlock:v32];
    if ([*(*(a1 + 32) + 64) isInitialImport])
    {
      [*(a1 + 32) cancelPendingChanges];
    }

    [*(*(a1 + 32) + 64) setName:@"com.apple.itunescloudd.JaliscoRequestHandler.updateLibraryOperation"];
    [*(a1 + 64) addOperation:*(*(a1 + 32) + 64) priority:2];
    notify_post("com.apple.itunescloudd.jaliscoUpdateInProgressChanged");
    v30 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      *buf = 138543362;
      v41 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting Jalisco update in progress notification", buf, 0xCu);
    }

    objc_destroyWeak(v35);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void sub_1000AE928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_1000AE960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Library update finished.", buf, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [WeakRetained updateLibraryQueue];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000AEBC4;
    v14 = &unk_1001DC948;
    v15 = v4;
    v6 = WeakRetained;
    v7 = *(a1 + 56);
    v16 = v6;
    v17 = v7;
    v18 = *(a1 + 64);
    dispatch_async(v5, &v11);

    if (*(a1 + 65) == 1)
    {
      v8 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Importing artwork and screenshots if relevant [post library update]", buf, 0xCu);
      }

      v9 = [v6 artworkImporter];
      [v9 importAllItemArtworkAndScreenshotsWithClientIdentity:*(a1 + 32)];
    }
  }

  notify_post("com.apple.itunescloudd.jaliscoUpdateInProgressChanged");
  v10 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting Jalisco update in progress notification", buf, 0xCu);
  }
}

void sub_1000AEBC4(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  v3 = [*(a1 + 40) updateLibraryOperation];
  v4 = [v3 error];
  v5 = [v4 copy];

  [*(a1 + 40) setUpdateLibraryOperation:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [*(a1 + 40) updateLibraryCompletionHandlers];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v21 + 1) + 8 * v10) + 16))();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  v11 = [*(a1 + 40) updateLibraryCompletionHandlers];
  [v11 removeAllObjects];

  v12 = *(*(a1 + 40) + 40);
  v13 = [NSNumber numberWithInteger:v2];
  v14 = [NSNumber numberWithInteger:*(a1 + 48)];
  v15 = [NSNumber numberWithBool:*(a1 + 56)];
  v16 = [NSDictionary dictionaryWithObjectsAndKeys:v13, @"ICDCloudMusicLibraryProgressUpdateOperationStatusKey", v14, @"ICDCloudMusicLibraryProgressRequestReasonKey", v15, @"ICDCloudMusicLibraryProgressWasInitialImportKey", 0];
  [v12 finishedUpdateOperationForLibraryType:0 withResponse:v16];

  v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 40);
    *buf = 138543362;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Update Jalisco library completed", buf, 0xCu);
  }

  v19 = *(a1 + 40);
  v20 = *(v19 + 64);
  *(v19 + 64) = 0;
}

void sub_1000AEF0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AEF24(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = [result updateProgress];
    *(*(*(a1 + 40) + 8) + 24) = v3;
  }

  return result;
}

void sub_1000AF05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void *sub_1000AF080(void *result)
{
  if (*(result[4] + 64))
  {
    v1 = result;
    *(*(result[5] + 8) + 24) = 1;
    result = [*(result[4] + 64) isInitialImport];
    *(*(v1[6] + 8) + 24) = result;
  }

  return result;
}

void sub_1000AF368(uint64_t a1)
{
  [*(*(a1 + 32) + 64) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

void sub_1000AF3B0(uint64_t a1)
{
  [*(*(a1 + 32) + 64) cancel];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

void sub_1000AFFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

void sub_1000B005C(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

uint64_t sub_1000B00D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000B00E8(uint64_t a1, void *a2)
{
  v73 = a2;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v3 = [*(a1 + 32) musicLibrary];
  v4 = [v3 sagaMaximumLibraryPinCount];

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && [*(a1 + 32) entityType] == 3)
  {
    v91[0] = &off_1001ED6A8;
    v5 = [*(a1 + 32) cloudLibraryID];
    v91[1] = v5;
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
    v91[2] = v6;
    v7 = [*(a1 + 32) cloudLibraryID];
    v91[3] = v7;
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
    v91[4] = v8;
    v9 = [NSArray arrayWithObjects:v91 count:5];
    v10 = [v73 executeQuery:@"SELECT 1 FROM album_artist LEFT OUTER JOIN item ON (item.album_artist_pid=album_artist.album_artist_pid) WHERE ((album_artist.liked_state=? AND album_artist.cloud_universal_library_id=? AND album_artist.album_artist_pid=?) OR (item.in_my_library AND album_artist.cloud_universal_library_id=? AND album_artist.album_artist_pid=?))" withParameters:v9];

    if (([v10 hasAtLeastOneRow] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      [*(a1 + 32) setStatus:2];
      v11 = [NSError msv_errorWithDomain:ICErrorDomain code:-8402 debugDescription:@"cannot find artist OR artist is not eligible to be pinned to pin"];
      [*(a1 + 32) setError:v11];

      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v83 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Cannot pin artist with no library tracks", buf, 0xCu);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && [*(a1 + 32) entityType] == 4)
  {
    v14 = [*(a1 + 32) cloudLibraryID];
    v90[0] = v14;
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
    v90[1] = v15;
    v16 = [NSArray arrayWithObjects:v90 count:2];
    v17 = [v73 executeQuery:@"SELECT 1 FROM item JOIN album ON (item.album_pid=album.album_pid) WHERE (in_my_library AND cloud_library_id=? AND album.album_pid=?)" withParameters:v16];

    if (([v17 hasAtLeastOneRow] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      [*(a1 + 32) setStatus:2];
      v18 = [NSError msv_errorWithDomain:ICErrorDomain code:-8402 debugDescription:@"cannot find album to pin"];
      [*(a1 + 32) setError:v18];

      v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 138543362;
        v83 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ Cannot pin album with no library tracks", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = v10;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && [*(a1 + 32) entityType] == 1)
  {
    v21 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
    v89[0] = v21;
    v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) sagaID]);
    v89[1] = v22;
    v23 = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
    v89[2] = v23;
    v24 = [NSArray arrayWithObjects:v89 count:3];
    v25 = [v73 executeQuery:@"SELECT media_type FROM item JOIN item_store using(item_pid) WHERE (in_my_library AND item_pid=? AND store_saga_id=? AND media_type & ? != 0)" withParameters:v24];

    if (([v25 hasAtLeastOneRow] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      [*(a1 + 32) setStatus:2];
      v26 = [NSError msv_errorWithDomain:ICErrorDomain code:-8402 debugDescription:@"cannot find library song to pin"];
      [*(a1 + 32) setError:v26];

      v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        *buf = 138543362;
        v83 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@ Cound not find song to pin", buf, 0xCu);
      }
    }
  }

  else
  {
    v25 = v17;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && [*(a1 + 32) entityType] == 2)
  {
    v29 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
    v88[0] = v29;
    v30 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) sagaID]);
    v88[1] = v30;
    v31 = [NSArray arrayWithObjects:v88 count:2];
    v32 = [v73 executeQuery:@"SELECT 1 FROM container WHERE container_pid=? AND store_cloud_id=?" withParameters:v31];

    if (([v32 hasAtLeastOneRow] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      [*(a1 + 32) setStatus:2];
      v33 = [NSError msv_errorWithDomain:ICErrorDomain code:-8402 debugDescription:@"cannot find library playlist to pin"];
      [*(a1 + 32) setError:v33];

      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 138543362;
        v83 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@ Cound not find container to pin", buf, 0xCu);
      }
    }
  }

  else
  {
    v32 = v25;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && ![*(a1 + 32) state])
  {
    v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) ml3EntityType]);
    v87[0] = v41;
    v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isPersistent]);
    v87[1] = v42;
    v43 = [NSArray arrayWithObjects:v87 count:2];
    v36 = [v73 executeQuery:@"SELECT 1 from library_pins WHERE entity_type=? AND entity_pid=?" withParameters:v43];

    if ([v36 hasAtLeastOneRow])
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      [*(a1 + 32) setStatus:2];
      v44 = [NSError msv_errorWithDomain:ICErrorDomain code:-8404 debugDescription:@"entity is already pinned"];
      [*(a1 + 32) setError:v44];

      v45 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = *(a1 + 32);
        *buf = 138543362;
        v83 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@ Entity is already pinned", buf, 0xCu);
      }
    }
  }

  else
  {
    v36 = v32;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && ![*(a1 + 32) state])
  {
    v37 = [v73 executeQuery:@"SELECT COUNT() from library_pins"];

    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1000B1244;
    v77[3] = &unk_1001DCE20;
    v77[4] = &v78;
    [v37 enumerateRowsWithBlock:v77];
    if (v79[3] >= v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      [*(a1 + 32) setStatus:2];
      v47 = [NSError msv_errorWithDomain:ICErrorDomain code:-8403 debugDescription:@"cannot add more pins"];
      [*(a1 + 32) setError:v47];

      v48 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v49 = *(a1 + 32);
        *buf = 138543618;
        v83 = v49;
        v84 = 1024;
        LODWORD(v85) = v4;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ Cannot add new pin as we are at max capacity (%d)", buf, 0x12u);
      }
    }
  }

  else
  {
    v37 = v36;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && ![*(a1 + 32) state])
  {
    if (![*(a1 + 32) pinPersistentID])
    {
      v50 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v73 tableName:@"library_pins"];
      [*(a1 + 32) setPinPersistentID:{objc_msgSend(v50, "nextPersistentID")}];
      v51 = +[NSUUID UUID];
      v52 = [v51 UUIDString];
      [*(a1 + 32) setPositionUUID:v52];
    }

    [*(a1 + 32) setPosition:v79[3]];
    v72 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) pinPersistentID]);
    v86[0] = v72;
    v53 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
    v86[1] = v53;
    v54 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) ml3EntityType]);
    v86[2] = v54;
    v55 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) position]);
    v86[3] = v55;
    v56 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) action]);
    v86[4] = v56;
    v57 = [*(a1 + 32) positionUUID];
    v86[5] = v57;
    v58 = [NSArray arrayWithObjects:v86 count:6];
    v59 = *(*(a1 + 56) + 8);
    obj = *(v59 + 40);
    v60 = [v73 executeUpdate:@"INSERT INTO library_pins (pin_pid withParameters:entity_pid error:{entity_type, position, default_action, position_uuid) VALUES (?, ?, ?, ?, ?, ?)", v58, &obj}];
    objc_storeStrong((v59 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v60;

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v61 = [*(a1 + 32) musicLibrary];
      *(*(*(a1 + 48) + 8) + 24) = +[ML3LibraryPin incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:](ML3LibraryPin, "incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:", v61, [*(a1 + 32) pinPersistentID], 0, 0, v73);

      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        v62 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = *(a1 + 32);
          v64 = [v63 pinPersistentID];
          *buf = 138543618;
          v83 = v63;
          v84 = 2048;
          v85 = v64;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "%{public}@ Could not update entity revision for pinPID=%lld", buf, 0x16u);
        }
      }

      [*(a1 + 32) setState:1];
    }

    else
    {
      [*(a1 + 32) setPinPersistentID:0];
      v65 = [*(*(*(a1 + 56) + 8) + 40) msv_errorByRemovingUnsafeUserInfo];
      v66 = [NSError msv_errorWithDomain:ICErrorDomain code:-8406 underlyingError:v65 debugDescription:@"Could not add entry to library pins table"];
      [*(a1 + 32) setError:v66];

      v67 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = *(a1 + 32);
        v69 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543618;
        v83 = v68;
        v84 = 2114;
        v85 = v69;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "%{public}@ Could not add entry to library pins table, error=%{public}@", buf, 0x16u);
      }
    }

    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000B1280;
    v75[3] = &unk_1001DEF00;
    v75[4] = *(a1 + 32);
    [v73 enqueueBlockForTransactionCommit:v75];
  }

  else
  {
    v38 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
    v39 = v38 == 0;

    if (!v39)
    {
      v40 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B1360;
      block[3] = &unk_1001DF578;
      block[4] = *(a1 + 32);
      dispatch_async(v40, block);
    }
  }

  v70 = *(*(*(a1 + 48) + 8) + 24);
  _Block_object_dispose(&v78, 8);

  return v70 & 1;
}

void sub_1000B0FDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v12 = [v11 method];
    v13 = @"POST";
    if (!v12)
    {
      v13 = @"GET";
    }

    v25 = v13;
    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 responseCode];
    v18 = [v5 responseData];
    *buf = 138545154;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2114;
    v31 = v25;
    v32 = 2114;
    v33 = v14;
    v34 = 2114;
    v35 = v16;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v17;
    v40 = 2048;
    v41 = [v18 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);
  }

  if (v6)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed with error: %{public}@", buf, 0x20u);
    }
  }

  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v5;
  v24 = v5;

  [*(a1 + 40) setError:v6];
  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_1000B1244(uint64_t a1, void *a2)
{
  result = [a2 intForColumnIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000B1280(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) musicLibrary];
    [v3 notifyEntitiesAddedOrRemoved];

    v4 = [*(a1 + 32) musicLibrary];
    [v4 notifyContentsDidChange];
  }

  v5 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];

  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B13D4;
    block[3] = &unk_1001DF578;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void sub_1000B1360(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_1000B13D4(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_1000B4000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B4020(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B4038(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 libraryUID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000B6DB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v31 = v9;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to load bag. err=%{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithError:v6];
  }

  else
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Executing request for AMPMusicArtistNewContentResponse", buf, 0xCu);
    }

    v11 = [v5 dictionaryForBagKey:ICURLBagKeyArtistNewContent];
    v12 = [v11 objectForKey:@"url"];
    v13 = [NSURL URLWithString:v12];
    if (v13)
    {
      v25 = v11;
      v14 = [[NSMutableURLRequest alloc] initWithURL:v13];
      [v14 setCachePolicy:1];
      [v14 setHTTPMethod:@"GET"];
      [v14 setValue:ICHTTPHeaderContentTypeXProtobuf forHTTPHeaderField:ICHTTPHeaderKeyContentType];
      v15 = *(*(a1 + 32) + 8);
      v16 = [[ICStoreURLRequest alloc] initWithURLRequest:v14 requestContext:v15];
      [v16 setAnisetteVersion:0];
      v17 = +[MCProfileConnection sharedConnection];
      v18 = [v17 effectiveBoolValueForSetting:MCFeatureExplicitContentAllowed];

      if (v18 != 1)
      {
        v28 = @"itre";
        v29 = @"1";
        v19 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        [v16 setAdditionalHTTPCookies:v19];
      }

      v20 = +[ICURLSessionManager defaultSession];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000B71A0;
      v26[3] = &unk_1001DDE30;
      v26[4] = *(a1 + 32);
      v27 = v14;
      v21 = v14;
      [v20 enqueueDataRequest:v16 withCompletionHandler:v26];

      v11 = v25;
    }

    else
    {
      v22 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        *buf = 138543618;
        v31 = v23;
        v32 = 2114;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Failure to find bag key for artist recommendations url. Bag Key: %{public}@", buf, 0x16u);
      }

      v24 = *(a1 + 32);
      v21 = [NSError errorWithDomain:ICErrorDomain code:-7201 userInfo:0];
      [v24 finishWithError:v21];
    }
  }
}

void sub_1000B71A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 bodyData];
  v7 = v6;
  if (v5)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v19 = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync request failed. err=%{public}@", &v19, 0x16u);
    }

    v10 = v5;
    goto LABEL_14;
  }

  if (![v6 length])
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = 138543618;
      v20 = v17;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Sync request failed. Artist new content request returned no data %{public}@", &v19, 0x16u);
    }

    goto LABEL_13;
  }

  v11 = [[AMPMusicArtistNewContentResponse alloc] initWithData:v7];
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  *(v12 + 16) = v11;

  if (*(*(a1 + 32) + 16))
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  v14 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v19 = 138543362;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to decode response object", &v19, 0xCu);
  }

  v10 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
LABEL_14:
  [*(a1 + 32) finishWithError:v10];
}

void sub_1000B7948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 msv_description];
      *buf = 138543362;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to complete artist update request error=%{public}@", buf, 0xCu);
    }
  }

  v9 = v6;
  if ([v5 responseCode] != 200)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v40 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Received non-200 response for artists request, failing update", buf, 0xCu);
    }

    v9 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-5 userInfo:0];
  }

  if (v9)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if ([*(a1 + 32) isCancelled])
    {
      v12 = *(a1 + 64);
      v13 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-2 userInfo:0];
      (*(v12 + 16))(v12, v13, 0);
    }

    else
    {
      v13 = objc_alloc_init(SagaImportController);
      [(SagaImportController *)v13 processDAAPFileAtURL:*(a1 + 40)];
      if ([(SagaImportController *)v13 shouldRestart])
      {
        v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v16 = [*(a1 + 48) count];
          *buf = 138543618;
          v40 = v15;
          v41 = 1024;
          *v42 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Server requested restart for artists request. clearing %d previous pages and starting again...", buf, 0x12u);
        }

        v17 = +[NSFileManager defaultManager];
        v18 = *(a1 + 56);
        v38 = 0;
        v19 = [v17 removeItemAtPath:v18 error:&v38];
        v20 = v38;
        if ((v19 & 1) == 0)
        {
          v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v40 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to remove obsolete items DAAP files with error: %@", buf, 0xCu);
          }
        }

        *(*(a1 + 32) + 72) = 0;
        v22 = *(a1 + 32);
        v23 = +[NSMutableArray array];
        [v22 _fetchUpdatedArtistsWithPaginationToken:0 responseFileURLs:v23 completion:*(a1 + 64)];
      }

      else
      {
        v24 = [(SagaImportController *)v13 processedItemCount];
        v25 = v24 / [(SagaImportController *)v13 totalItemCount];
        *&v26 = v25;
        [*(a1 + 32) _updateProgressWithItemsProgress:0.0 albumsProgress:0.0 artistsProgress:v26 playlistProgress:0.0 importerProgress:0.0];
        v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 32);
          v29 = [(SagaImportController *)v13 currentItemCount];
          v30 = [(SagaImportController *)v13 processedItemCount];
          v31 = [(SagaImportController *)v13 totalItemCount];
          *buf = 138544386;
          v40 = v28;
          v41 = 1024;
          *v42 = v29;
          *&v42[4] = 2048;
          *&v42[6] = (v25 * 100.0);
          v43 = 1024;
          v44 = v30;
          v45 = 1024;
          v46 = v31;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloaded artists response contains %u artists -- overall progress = %.0f%% (%u/%u)", buf, 0x28u);
        }

        [*(a1 + 48) addObject:*(a1 + 40)];
        v17 = [(SagaImportController *)v13 currentPaginationToken];
        v32 = [v17 length];
        v33 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (v32)
        {
          if (v34)
          {
            v35 = *(a1 + 32);
            *buf = 138543618;
            v40 = v35;
            v41 = 2114;
            *v42 = v17;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting next batch of artist data with token: %{public}@", buf, 0x16u);
          }

          [*(a1 + 32) _fetchUpdatedArtistsWithPaginationToken:v17 responseFileURLs:*(a1 + 48) completion:*(a1 + 64)];
        }

        else
        {
          if (v34)
          {
            v36 = *(a1 + 32);
            *buf = 138543362;
            v40 = v36;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished fetching artist data", buf, 0xCu);
          }

          v37 = *(a1 + 48);
          (*(*(a1 + 64) + 16))();
        }
      }
    }
  }
}

void sub_1000B82BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      *buf = 138543618;
      v42 = v8;
      v43 = 2114;
      *v44 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to complete albums update request error=%{public}@", buf, 0x16u);
    }
  }

  v10 = v6;
  if ([v5 responseCode] != 200)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v42 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Received non-200 response for albums request, failing update", buf, 0xCu);
    }

    v10 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-5 userInfo:0];
  }

  if (v10)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if ([*(a1 + 32) isCancelled])
    {
      v13 = *(a1 + 64);
      v14 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-2 userInfo:0];
      (*(v13 + 16))(v13, v14, 0);
    }

    else
    {
      v14 = objc_alloc_init(SagaImportController);
      [(SagaImportController *)v14 processDAAPFileAtURL:*(a1 + 40)];
      if ([(SagaImportController *)v14 shouldRestart])
      {
        v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          v17 = [*(a1 + 48) count];
          *buf = 138543618;
          v42 = v16;
          v43 = 1024;
          *v44 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Server requested restart for albums request. clearing %d previous pages and starting again...", buf, 0x12u);
        }

        v18 = +[NSFileManager defaultManager];
        v19 = *(a1 + 56);
        v40 = 0;
        v20 = [v18 removeItemAtPath:v19 error:&v40];
        v21 = v40;
        if ((v20 & 1) == 0)
        {
          v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = *(a1 + 32);
            *buf = 138543618;
            v42 = v23;
            v43 = 2112;
            *v44 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove obsolete items DAAP files with error: %@", buf, 0x16u);
          }
        }

        *(*(a1 + 32) + 68) = 0;
        v24 = *(a1 + 32);
        v25 = +[NSMutableArray array];
        [v24 _fetchUpdatedAlbumsWithPaginationToken:0 responseFileURLs:v25 completion:*(a1 + 64)];
      }

      else
      {
        v26 = [(SagaImportController *)v14 processedItemCount];
        v27 = v26 / [(SagaImportController *)v14 totalItemCount];
        *&v28 = v27;
        [*(a1 + 32) _updateProgressWithItemsProgress:0.0 albumsProgress:v28 artistsProgress:0.0 playlistProgress:0.0 importerProgress:0.0];
        v29 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(a1 + 32);
          v31 = [(SagaImportController *)v14 currentItemCount];
          v32 = [(SagaImportController *)v14 processedItemCount];
          v33 = [(SagaImportController *)v14 totalItemCount];
          *buf = 138544386;
          v42 = v30;
          v43 = 1024;
          *v44 = v31;
          *&v44[4] = 2048;
          *&v44[6] = (v27 * 100.0);
          v45 = 1024;
          v46 = v32;
          v47 = 1024;
          v48 = v33;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloaded albums response contains %u albums -- overall progress = %.0f%% (%u/%u)", buf, 0x28u);
        }

        [*(a1 + 48) addObject:*(a1 + 40)];
        v18 = [(SagaImportController *)v14 currentPaginationToken];
        v34 = [v18 length];
        v35 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          if (v36)
          {
            v37 = *(a1 + 32);
            *buf = 138543618;
            v42 = v37;
            v43 = 2114;
            *v44 = v18;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting next batch of album data with token: %{public}@", buf, 0x16u);
          }

          [*(a1 + 32) _fetchUpdatedAlbumsWithPaginationToken:v18 responseFileURLs:*(a1 + 48) completion:*(a1 + 64)];
        }

        else
        {
          if (v36)
          {
            v38 = *(a1 + 32);
            *buf = 138543362;
            v42 = v38;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished fetching album data", buf, 0xCu);
          }

          v39 = *(a1 + 48);
          (*(*(a1 + 64) + 16))();
        }
      }
    }
  }
}

void sub_1000B8B48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      v19 = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to complete pins update request error=%{public}@", &v19, 0x16u);
    }
  }

  v10 = v6;
  if ([v5 responseCode] != 200)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Received non-200 response for pins request, failing update", &v19, 0xCu);
    }

    v10 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-5 userInfo:0];
  }

  if (v10)
  {
    v13 = *(*(a1 + 48) + 16);
LABEL_16:
    v13();
    goto LABEL_17;
  }

  if (![*(a1 + 32) isCancelled])
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished fetching pins data", &v19, 0xCu);
    }

    [*(a1 + 32) _updateProgressWithItemsProgress:0.0 albumsProgress:0.0 artistsProgress:0.0 playlistProgress:0.0 importerProgress:0.0];
    v18 = *(a1 + 40);
    v13 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v14 = *(a1 + 48);
  v15 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-2 userInfo:0];
  (*(v14 + 16))(v14, v15, 0);

LABEL_17:
}

void sub_1000B9104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      v20 = 138543618;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to complete playlist update request error=%{public}@", &v20, 0x16u);
    }
  }

  v10 = v6;
  if ([v5 responseCode] != 200)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v20 = 138543362;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Received non-200 response for playlist request, failing update", &v20, 0xCu);
    }

    v10 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-5 userInfo:0];
  }

  if (v10)
  {
    v13 = *(*(a1 + 48) + 16);
LABEL_16:
    v13();
    goto LABEL_17;
  }

  if (![*(a1 + 32) isCancelled])
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished fetching playlist data", &v20, 0xCu);
    }

    LODWORD(v18) = 1.0;
    [*(a1 + 32) _updateProgressWithItemsProgress:0.0 albumsProgress:0.0 artistsProgress:0.0 playlistProgress:v18 importerProgress:0.0];
    v19 = *(a1 + 40);
    v13 = *(*(a1 + 48) + 16);
    goto LABEL_16;
  }

  v14 = *(a1 + 48);
  v15 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-2 userInfo:0];
  (*(v14 + 16))(v14, v15, 0);

LABEL_17:
}

void sub_1000B96D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      *buf = 138543618;
      v49 = v8;
      v50 = 2114;
      *v51 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to complete playlist update request error=%{public}@", buf, 0x16u);
    }
  }

  v10 = v6;
  if ([v5 responseCode] != 200)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v49 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Received non-200 response for playlist request, failing update", buf, 0xCu);
    }

    v10 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-5 userInfo:0];
  }

  if (v10)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if ([*(a1 + 32) isCancelled])
    {
      v13 = *(a1 + 72);
      v14 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-2 userInfo:0];
      (*(v13 + 16))(v13, v14, 0, 0, 0);
    }

    else
    {
      v14 = objc_alloc_init(SagaImportController);
      [(SagaImportController *)v14 processDAAPFileAtURL:*(a1 + 40)];
      if ([(SagaImportController *)v14 shouldRestart])
      {
        v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 32);
          v17 = [*(a1 + 48) count];
          *buf = 138543618;
          v49 = v16;
          v50 = 1024;
          *v51 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Server requested restart for items request. clearing %d previous pages and starting again...", buf, 0x12u);
        }

        v18 = +[NSFileManager defaultManager];
        v19 = *(a1 + 56);
        v47 = 0;
        v20 = [v18 removeItemAtPath:v19 error:&v47];
        v21 = v47;
        if ((v20 & 1) == 0)
        {
          v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = *(a1 + 32);
            *buf = 138543618;
            v49 = v23;
            v50 = 2112;
            *v51 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove obsolete items DAAP files with error: %@", buf, 0x16u);
          }
        }

        *(*(a1 + 32) + 64) = 0;
        v24 = *(a1 + 32);
        v25 = +[NSMutableArray array];
        v26 = +[NSMutableDictionary dictionary];
        [v24 _fetchUpdatedTracksWithPaginationToken:0 responseFileURLs:v25 currentIncludesBookmarkable:0 cloudIDToLyricsTokenMap:v26 completion:*(a1 + 72)];
      }

      else
      {
        v27 = (*(a1 + 80) & 1) != 0 || [(SagaImportController *)v14 includesBookmarkable];
        v28 = [(SagaImportController *)v14 cloudIDToLyricsTokenMap];
        v29 = [v28 count];

        if (v29)
        {
          v30 = *(a1 + 64);
          v31 = [(SagaImportController *)v14 cloudIDToLyricsTokenMap];
          [v30 addEntriesFromDictionary:v31];
        }

        v32 = [(SagaImportController *)v14 processedItemCount];
        v33 = v32 / [(SagaImportController *)v14 totalItemCount];
        *&v34 = v33;
        [*(a1 + 32) _updateProgressWithItemsProgress:v34 albumsProgress:0.0 artistsProgress:0.0 playlistProgress:0.0 importerProgress:0.0];
        v35 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 32);
          v37 = [(SagaImportController *)v14 currentItemCount];
          v38 = [(SagaImportController *)v14 processedItemCount];
          v39 = [(SagaImportController *)v14 totalItemCount];
          *buf = 138544386;
          v49 = v36;
          v50 = 1024;
          *v51 = v37;
          *&v51[4] = 2048;
          *&v51[6] = (v33 * 100.0);
          v52 = 1024;
          v53 = v38;
          v54 = 1024;
          v55 = v39;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloaded items response contains %u items -- overall progress = %.0f%% (%u/%u)", buf, 0x28u);
        }

        [*(a1 + 48) addObject:*(a1 + 40)];
        v18 = [(SagaImportController *)v14 currentPaginationToken];
        v40 = [v18 length];
        v41 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v40)
        {
          if (v42)
          {
            v43 = *(a1 + 32);
            *buf = 138543618;
            v49 = v43;
            v50 = 2114;
            *v51 = v18;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting next batch of item data with token: %{public}@", buf, 0x16u);
          }

          [*(a1 + 32) _fetchUpdatedTracksWithPaginationToken:v18 responseFileURLs:*(a1 + 48) currentIncludesBookmarkable:v27 cloudIDToLyricsTokenMap:*(a1 + 64) completion:*(a1 + 72)];
        }

        else
        {
          if (v42)
          {
            v44 = *(a1 + 32);
            *buf = 138543362;
            v49 = v44;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished fetching items data", buf, 0xCu);
          }

          v45 = *(a1 + 48);
          v46 = *(a1 + 64);
          (*(*(a1 + 72) + 16))();
        }
      }
    }
  }
}

id sub_1000BA1F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID value:&off_1001ED6C0 comparison:2];
  v34[0] = v4;
  v5 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreCloudAssetAvailable equalToInt64:0];
  v34[1] = v5;
  v6 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreProtectionType equalToInt64:2];
  v34[2] = v6;
  v7 = [NSArray arrayWithObjects:v34 count:3];
  v8 = [ML3AllCompoundPredicate predicateMatchingPredicates:v7];

  v9 = [ML3Track unrestrictedAllItemsQueryWithlibrary:*(a1 + 32) predicate:v8 orderingTerms:&__NSArray0__struct];
  +[NSMutableArray array];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000BA60C;
  v10 = v28[3] = &unk_1001DED58;
  v29 = v10;
  [v9 enumeratePersistentIDsUsingBlock:v28];
  if ([v10 count])
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = [v10 count];
      *buf = 138543874;
      v31 = v12;
      v32 = 2048;
      *v33 = v13;
      *&v33[8] = 1024;
      *&v33[10] = 2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %lu unavailable tracks to unlink with asset protection type = %d", buf, 0x1Cu);
    }

    v14 = +[NSMutableSet set];
    v15 = *(a1 + 32);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000BA66C;
    v26 = &unk_1001DCB60;
    v16 = v14;
    v27 = v16;
    [ML3Track enumeratePathsToDeleteFromLibrary:v15 persistentIDs:v10 usingBlock:&v23];
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      *buf = 138543874;
      v31 = v18;
      v32 = 1024;
      *v33 = 2;
      *&v33[4] = 2114;
      *&v33[6] = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@  Deleting assets with protection type = %d that are no longer cloud available: %{public}@", buf, 0x1Cu);
    }

    ML3DeleteAssetsAtPaths();
    v19 = [ML3Track clearLocationFromLibrary:*(a1 + 32) persistentIDs:v10 disableKeepLocal:0 usingConnection:v3, v23, v24, v25, v26];
    if ((v19 & 1) == 0)
    {
      v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 40);
        *buf = 138543618;
        v31 = v21;
        v32 = 1024;
        *v33 = 2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@  Failed to clear location for unavailable tracks with asset protection type = %d", buf, 0x12u);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_1000BA60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

uint64_t sub_1000BA66C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if ([v3 length])
    {
      [*(a1 + 32) addObject:v5];
    }
  }

  return _objc_release_x1();
}

void sub_1000BAE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose((v71 - 256), 8);
  _Block_object_dispose((v71 - 208), 8);
  _Block_object_dispose((v71 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BAE7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BAE94(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v18 = a2;
  v10 = a3;
  v11 = a5;
  os_unfair_lock_lock((*(a1 + 32) + 48));
  if (v18)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;
  v14 = v10;

  *(*(*(a1 + 64) + 8) + 24) = a4;
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v11;
  v17 = v11;

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000BAF90(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 48));
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000BB048(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 48));
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000BB100(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 48));
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000BB1B8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 48));
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 48));
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000BB270(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138543362;
      v53 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping saga import as the operation is cancelled", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-2 userInfo:0];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543618;
        v53 = v9;
        v54 = 2114;
        v55 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to obtain updated library data. err=%{public}@", buf, 0x16u);
      }

      v11 = *(*(*(a1 + 48) + 8) + 40);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v53 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Metadata update complete - starting import", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v15 = *(v13 + 40);
      v14 = *(v13 + 44);
      v16 = *(*(*(a1 + 56) + 8) + 40);
      v51 = *(*(*(a1 + 64) + 8) + 40);
      v17 = [NSArray arrayWithObjects:&v51 count:1];
      v18 = *(*(*(a1 + 72) + 8) + 40);
      v19 = *(*(*(a1 + 80) + 8) + 40);
      if (_os_feature_enabled_impl())
      {
        v50 = *(*(*(a1 + 88) + 8) + 40);
        v20 = [NSArray arrayWithObjects:&v50 count:1];
        sub_1000E5FD8(2, v15, v14, v16, v17, v18, v19, v20);
      }

      else
      {
        sub_1000E5FD8(2, v15, v14, v16, v17, v18, v19, 0);
      }

      v21 = *(a1 + 32);
      v22 = v21[10];
      v38 = v22 == 0;
      if (!v22)
      {
        v49 = objc_opt_class();
        v23 = [NSArray arrayWithObjects:&v49 count:1];
        v24 = [*(a1 + 32) configuration];
        [CloudKeepLocalUtilities downPinCollectionsForClasses:v23 configuration:v24];

        v21 = *(a1 + 32);
      }

      v39 = [v21 _importDataFromResponseFileURLs:*(*(*(a1 + 56) + 8) + 40)];
      v25 = [*(a1 + 32) _importDataFromResponseFileURLs:*(*(*(a1 + 72) + 8) + 40)];
      v26 = [*(a1 + 32) _importDataFromResponseFileURLs:*(*(*(a1 + 80) + 8) + 40)];
      v27 = *(a1 + 32);
      v48 = *(*(*(a1 + 64) + 8) + 40);
      v28 = [NSArray arrayWithObjects:&v48 count:1];
      v29 = [v27 _importDataFromResponseFileURLs:v28];

      if (_os_feature_enabled_impl())
      {
        v30 = *(a1 + 32);
        v47 = *(*(*(a1 + 88) + 8) + 40);
        v31 = [NSArray arrayWithObjects:&v47 count:1];
        v32 = [v30 _importDataFromResponseFileURLs:v31];
      }

      else
      {
        v32 = 0;
      }

      v33 = [ML3MusicLibrary musicLibraryForUserAccount:*(*(a1 + 32) + 8)];
      [v33 setClientIdentity:*(*(a1 + 32) + 24)];
      v34 = [v33 databasePath];
      v35 = [[ML3DatabaseImport alloc] initWithLibraryPath:v34 trackData:v39 playlistData:v29 albumArtistData:v25 albumData:v26 libraryPinsData:v32 clientIdentity:*(*(a1 + 32) + 24)];
      [v35 setClientInitiatedReset:*(*(a1 + 32) + 17)];
      objc_initWeak(buf, *(a1 + 32));
      v36 = +[MLMediaLibraryService sharedMediaLibraryService];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1000BB8CC;
      v45[3] = &unk_1001DE448;
      objc_copyWeak(&v46, buf);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000BB930;
      v40[3] = &unk_1001DCB10;
      v40[4] = *(a1 + 32);
      v44 = v38;
      v37 = v33;
      v41 = v37;
      v43 = *(a1 + 96);
      v42 = *(a1 + 40);
      [v36 performImport:v35 fromSource:2 withProgressBlock:v45 completionHandler:v40];

      objc_destroyWeak(&v46);
      objc_destroyWeak(buf);
    }
  }
}

void sub_1000BB8A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1000BB8CC(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    *&v4 = a2;
    [WeakRetained _updateProgressWithItemsProgress:0.0 albumsProgress:0.0 artistsProgress:0.0 playlistProgress:0.0 importerProgress:v4];
    WeakRetained = v5;
  }
}

void sub_1000BB930(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v7 msv_description];
      *buf = 138543618;
      v49 = v11;
      v50 = 2114;
      v51 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Database import completed error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 138543362;
    v49 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Database import completed", buf, 0xCu);
  }

  v14 = v7;
  if (*(a1 + 72) == 1)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138543362;
      v49 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Re-pinning albums", buf, 0xCu);
    }

    v47 = objc_opt_class();
    v17 = [NSArray arrayWithObjects:&v47 count:1];
    v18 = [*(a1 + 32) configuration];
    [CloudKeepLocalUtilities rePinCollectionsForClasses:v17 configuration:v18];
  }

  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 138543362;
    v49 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing unavailable subscription content", buf, 0xCu);
  }

  [*(a1 + 32) _removeUnavailableSubscriptionAssetsInLibrary:*(a1 + 40)];
  if (a2)
  {
    if ([*(a1 + 32) isCancelled])
    {
      v21 = 1;
    }

    else
    {
      v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *buf = 138543362;
        v49 = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating subscribed playlists", buf, 0xCu);
      }

      v46[0] = *(*(a1 + 32) + 32);
      v46[1] = @"containers.daap";
      v24 = [NSArray arrayWithObjects:v46 count:2];
      v25 = [NSURL fileURLWithPathComponents:v24];

      v45[0] = *(*(a1 + 32) + 32);
      v45[1] = @"subscribed-containers.daap";
      v26 = [NSArray arrayWithObjects:v45 count:2];
      v27 = [NSURL fileURLWithPathComponents:v26];

      v28 = *(a1 + 32);
      v29 = [v25 path];
      v21 = [v28 _updateGlobalPlaylistsFromContainersPayloadAtPath:v29 downloadPathForSubscribedContainersPayload:v27];

      if ((v21 & 1) == 0)
      {
        v30 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = *(a1 + 32);
          *buf = 138543362;
          v49 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update subscribed playlists", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v32 = +[ICDeviceInfo currentDeviceInfo];
  if ([v32 isWatch])
  {
    v33 = 1;
    if (!v21)
    {
      goto LABEL_25;
    }

LABEL_28:
    if ((([*(a1 + 32) isCancelled] | v33) & 1) == 0)
    {
      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 32);
        *buf = 138543362;
        v49 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating lyrics", buf, 0xCu);
      }

      [*(a1 + 32) _importLyricsWithLyricsTokenMap:*(*(*(a1 + 56) + 8) + 40)];
    }

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v36 = +[NSNotificationCenter defaultCenter];
      v37 = [*(a1 + 40) libraryUID];
      [v36 postNotificationName:@"ICDPlaybackPositionImportRequiresSyncNotification" object:v37];
    }

    if (!v7)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v33 = [v32 isAudioAccessory];
  if (v21)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!v7)
  {
    v7 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-1 userInfo:0];
LABEL_38:
    v38 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 32);
      *buf = 138543362;
      v49 = v41;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ Saga update complete", buf, 0xCu);
    }

    goto LABEL_40;
  }

LABEL_35:
  v38 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = *(a1 + 32);
    v40 = [v14 msv_description];
    *buf = 138543618;
    v49 = v39;
    v50 = 2114;
    v51 = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%{public}@ Saga update complete error=%{public}@", buf, 0x16u);
  }

  v7 = v14;
LABEL_40:

  *(*(a1 + 32) + 88) = 1065353216;
  [*(a1 + 40) notifyContentsDidChange];
  v42 = [*(a1 + 32) isCancelled];
  v43 = *(a1 + 48);
  if (v42)
  {
    v44 = [NSError errorWithDomain:@"SagaImporterErrorDomain" code:-2 userInfo:0];
    (*(v43 + 16))(v43, v44);
  }

  else
  {
    (*(v43 + 16))(v43, v7);
  }
}

void sub_1000BC610(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 responseCode];
  if (v7 > 399)
  {
    if (v7 == 404 || v7 == 400)
    {
      v8 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = 1;
  if (v7 != 200 && v7 != 204)
  {
LABEL_8:
    v8 = 2;
  }

LABEL_9:
  [*(a1 + 32) setStatus:v8];
  [*(a1 + 32) setError:v6];
  if (v6)
  {
    v9 = [*(a1 + 32) error];
    v10 = [v9 domain];
    v11 = ICCloudClientErrorDomain;
    if (([v10 isEqualToString:ICCloudClientErrorDomain] & 1) == 0)
    {

      goto LABEL_25;
    }

    v12 = [*(a1 + 32) error];
    v13 = [v12 code];

    if (v13 == 2019)
    {
      v14 = [*(a1 + 32) error];
      v15 = [v14 userInfo];
      v9 = [v15 objectForKey:@"CloudLibraryConnectionRequestForbiddenAdditonalErrorCodeKey"];

      v16 = [v9 integerValue];
      if (v16 == 959)
      {
        v28 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 32);
          *buf = 138543362;
          v34 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@ - Server response indicates the limit on pending collaborators has been reached", buf, 0xCu);
        }

        [*(a1 + 32) setStatus:3];
        v19 = @"Pending collaborator limit exceeded";
        v20 = v11;
        v21 = 2024;
        goto LABEL_24;
      }

      if (v16 == 958)
      {
        v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          *buf = 138543362;
          v34 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ - Server response indicates the limit on active collaborators has been reached", buf, 0xCu);
        }

        [*(a1 + 32) setStatus:3];
        v19 = @"Active collaborator limit exceeded";
        v20 = v11;
        v21 = 2023;
LABEL_24:
        v30 = [NSError msv_errorWithDomain:v20 code:v21 underlyingError:v6 debugDescription:v19];
        [*(a1 + 32) setError:v30];
      }

LABEL_25:
    }
  }

  else
  {
    v22 = v5;
    v23 = [v22 collaborationCloudLibraryID];
    v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138543618;
      v34 = v25;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request to join collaboration. sagaID=%u", buf, 0x12u);
    }

    *(*(a1 + 32) + 114) = v23;
    v26 = [*(a1 + 32) musicLibrary];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000BCA10;
    v31[3] = &unk_1001DCC40;
    v31[4] = *(a1 + 32);
    v32 = v23;
    [v26 databaseConnectionAllowingWrites:1 withBlock:v31];

    v27 = [v22 updateRequired];
    *(*(a1 + 32) + 106) = v27;
  }

  [*(a1 + 40) endTransaction];
  [*(a1 + 32) finish];
}

void sub_1000BCA10(uint64_t a1)
{
  v2 = [*(a1 + 32) musicLibrary];
  v3 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyCloudGlobalID equalToValue:*(*(a1 + 32) + 90)];
  v4 = [ML3Container anyInLibrary:v2 predicate:v3];

  if ([v4 existsInLibrary])
  {
    v11[0] = ML3ContainerPropertyStoreCloudID;
    v5 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    v12[0] = v5;
    v12[1] = &__kCFBooleanTrue;
    v11[1] = ML3ContainerPropertyIsCollaborative;
    v11[2] = ML3ContainerPropertyCollaboratorStatus;
    v12[2] = &off_1001ED6D8;
    v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

    if (([v4 setValuesForPropertiesWithDictionary:v6] & 1) == 0)
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = 138543362;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update container properties", &v9, 0xCu);
      }
    }
  }
}

uint64_t sub_1000BD7E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BD800(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000BD9A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  ICDAAPUtilitiesWriteContainer();
}

void sub_1000BDA3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        ICDAAPUtilitiesWriteProperty();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000BE2D8(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

uint64_t sub_1000BE34C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000BE364(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
  v44[0] = v4;
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) ml3EntityType]);
  v44[1] = v5;
  v6 = [NSArray arrayWithObjects:v44 count:2];
  v7 = [v3 executeQuery:@"SELECT pin_pid withParameters:{position from library_pins WHERE entity_pid=? AND entity_type=?", v6}];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000BEBD0;
  v37[3] = &unk_1001DEE48;
  v37[4] = *(a1 + 32);
  [v7 enumerateRowsWithBlock:v37];
  if ([*(a1 + 32) pinPersistentID])
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) pinPersistentID]);
    v43 = v8;
    v9 = [NSArray arrayWithObjects:&v43 count:1];
    v10 = *(*(a1 + 40) + 8);
    obj = *(v10 + 40);
    v11 = [v3 executeUpdate:@"DELETE FROM library_pins WHERE pin_pid=?" withParameters:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);

    if (v11)
    {
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) position]);
      v42 = v12;
      v13 = [NSArray arrayWithObjects:&v42 count:1];
      v14 = *(*(a1 + 40) + 8);
      v35 = *(v14 + 40);
      v15 = [v3 executeUpdate:@"UPDATE library_pins SET position=position-1 WHERE position > ?" withParameters:v13 error:&v35];
      objc_storeStrong((v14 + 40), v35);

      if (v15)
      {
        v16 = [*(a1 + 32) musicLibrary];
        v17 = +[ML3LibraryPin incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:](ML3LibraryPin, "incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:", v16, [*(a1 + 32) pinPersistentID], 1, 0, v3);

        if ((v17 & 1) == 0)
        {
          v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = *(a1 + 32);
            v20 = [v19 pinPersistentID];
            *buf = 138543618;
            v39 = v19;
            v40 = 2048;
            v41 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ Could not update entity revision for pinPID=%lld", buf, 0x16u);
          }
        }

        [*(a1 + 32) setState:1];
        goto LABEL_18;
      }

      v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        v29 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v29;
        v27 = "%{public}@ could not update postion of pinned entities post delete - error=%{public}@";
        goto LABEL_16;
      }
    }

    else
    {
      v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        v26 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v39 = v25;
        v40 = 2114;
        v41 = v26;
        v27 = "%{public}@ could not delete pinned entity - error=%{public}@";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
      }
    }

    v17 = 0;
LABEL_18:
    v30 = *(*(*(a1 + 40) + 8) + 40);
    if (v30)
    {
      v31 = [v30 msv_errorByRemovingUnsafeUserInfo];
      v32 = [NSError msv_errorWithDomain:ICErrorDomain code:-8406 underlyingError:v31 debugDescription:@"Could not set properties locally"];
      [*(a1 + 32) setError:v32];
    }

    goto LABEL_20;
  }

  v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    *buf = 138543362;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ Entity is not pinned", buf, 0xCu);
  }

  v23 = [NSError msv_errorWithDomain:ICErrorDomain code:-8405 debugDescription:@"cannot find pinned entity"];
  [*(a1 + 32) setError:v23];

  v17 = 1;
  [*(a1 + 32) setState:1];
LABEL_20:
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000BEC40;
  v34[3] = &unk_1001DEF00;
  v34[4] = *(a1 + 32);
  [v3 enqueueBlockForTransactionCommit:v34];

  return v17;
}

void sub_1000BE8F4(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_1000BE968(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v12 = [v11 method];
    v13 = @"POST";
    if (!v12)
    {
      v13 = @"GET";
    }

    v25 = v13;
    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 responseCode];
    v18 = [v5 responseData];
    *buf = 138545154;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2114;
    v31 = v25;
    v32 = 2114;
    v33 = v14;
    v34 = 2114;
    v35 = v16;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v17;
    v40 = 2048;
    v41 = [v18 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);
  }

  if (v6)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed with error: %{public}@", buf, 0x20u);
    }
  }

  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v5;
  v24 = v5;

  [*(a1 + 40) setError:v6];
  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_1000BEBD0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setPinPersistentID:{objc_msgSend(v3, "int64ForColumnIndex:", 0)}];
  v4 = [v3 intForColumnIndex:1];

  v5 = *(a1 + 32);

  return [v5 setPosition:v4];
}

void sub_1000BEC40(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) musicLibrary];
    [v3 notifyEntitiesAddedOrRemoved];

    v4 = [*(a1 + 32) musicLibrary];
    [v4 notifyContentsDidChange];
  }

  v5 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];

  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BED20;
    block[3] = &unk_1001DF578;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void sub_1000BED20(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_1000C0078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000C00B4(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 88);
  v4 = a2;
  v5 = [NSNumber numberWithLongLong:v3];
  v16 = v5;
  v6 = [NSArray arrayWithObjects:&v16 count:1];
  v11 = 0;
  v7 = [v4 executeUpdate:@"UPDATE container SET parent_pid=0 WHERE container_pid=?" withParameters:v6 error:&v11];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1 + 32) + 88);
      *buf = 134218242;
      v13 = v10;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to update parent persistent-id to 0 in database for playlist with persistent-id %lld - error=%{public}@", buf, 0x16u);
    }
  }
}

uint64_t sub_1000C0224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C023C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v15 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(a1 + 32);
  v13 = [*(*(*(a1 + 48) + 8) + 40) responseCode];
  if (v13 > 399)
  {
    if (v13 == 404 || v13 == 400)
    {
      v14 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 1;
  if (v13 != 200 && v13 != 204)
  {
LABEL_8:
    v14 = 2;
  }

LABEL_9:
  [v12 setStatus:v14];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000C0330(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C04BC;
  v7[3] = &unk_1001DCC90;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void sub_1000C03C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v15 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(a1 + 32);
  v13 = [*(*(*(a1 + 48) + 8) + 40) responseCode];
  if (v13 > 399)
  {
    if (v13 == 404 || v13 == 400)
    {
      v14 = 3;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 1;
  if (v13 != 200 && v13 != 204)
  {
LABEL_8:
    v14 = 2;
  }

LABEL_9:
  [v12 setStatus:v14];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000C04BC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v18 = v6;
  v8 = [NSArray arrayWithObjects:&v18 count:1];
  v13 = 0;
  v9 = [v7 executeUpdate:@"UPDATE container SET parent_pid=0 WHERE store_cloud_id=?" withParameters:v8 error:&v13];
  v10 = v13;

  if ((v9 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 40) + 88);
      *buf = 134218242;
      v15 = v12;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to update parent persistent-id to 0 in database for playlist with persistent-id %lld - error=%{public}@", buf, 0x16u);
    }

    *a4 = 1;
  }
}

void sub_1000C14F4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C19EC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 104);
  v4 = a2;
  [v4 writeString:v3 withCode:1634357319];
  v5 = [*(*(a1 + 32) + 112) absoluteString];
  [v4 writeString:v5 withCode:1634354025];
}

void sub_1000C23C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C23E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C2400(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a2;
  v7 = a3;
  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = *(a1 + 32);
    v29 = v4;
    if ([v12 method])
    {
      v13 = @"POST";
    }

    else
    {
      v13 = @"GET";
    }

    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    NSStringFromClass(v15);
    v16 = v31 = v7;
    v17 = [v6 responseCode];
    v18 = [v6 responseData];
    *buf = 138545154;
    v36 = v11;
    v37 = 2048;
    v38 = v12;
    v39 = 2114;
    v40 = v13;
    v4 = v30;
    v41 = 2114;
    v42 = v14;
    v43 = 2114;
    v44 = v16;
    v45 = 2048;
    v46 = v6;
    v47 = 2048;
    v48 = v17;
    v49 = 2048;
    v50 = [v18 length];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);

    v7 = v31;
  }

  v19 = *(a1 + 40);
  v20 = [v6 responseCode];
  if (v20 > 399)
  {
    if (v20 == 404 || v20 == 400)
    {
      v21 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v21 = 1;
  if (v20 != 200 && v20 != 204)
  {
LABEL_13:
    v21 = 2;
  }

LABEL_14:
  [v19 setStatus:v21];
  if (v7)
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "SagaRemovePlaylistOperation failed with error: %{public}@", buf, 0xCu);
    }
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v4);
  if (v6)
  {
    v23 = [v6 deletedItems];
    v24 = +[NSMutableArray array];
    v25 = *(a1 + 48);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000C27D0;
    v32[3] = &unk_1001DCCB8;
    v26 = v23;
    v33 = v26;
    v27 = v24;
    v34 = v27;
    [v25 enumerateObjectsUsingBlock:v32];
    if ([v27 count])
    {
      v28 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "SagaRemovePlaylistOperation failed to delete saga IDs: %{public}@", buf, 0xCu);
      }

      [*(a1 + 40) setStatus:2];
      objc_storeStrong((*(a1 + 40) + 88), v24);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_1000C27D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_1000C2AC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 longLongValue])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1000C2C40(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 longLongValue])
  {
    [*(a1 + 32) addObject:v3];
  }
}

id sub_1000C3178(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 allObjects];
  v6 = [v4 executeUpdate:v2 withParameters:v5 error:0];

  return v6;
}

id sub_1000C3740(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C382C;
  v10[3] = &unk_1001DCF60;
  v5 = v11 = v3;
  v12 = v5;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v5;
}

void sub_1000C382C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) valueForProperty:?];
  if (v3)
  {
    [*(a1 + 40) setObject:v3 forKey:v4];
  }
}

void sub_1000C39E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C39F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000C3A10(uint64_t a1, void *a2)
{
  v15 = *(a1 + 32);
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v15 count:1];
  v5 = [v3 executeQuery:@"SELECT key withParameters:{play_count_user, has_been_played, bookmark_time_ms, bookmark_sync_timestamp FROM cloud_kvs WHERE key = ?", v4}];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C3B5C;
  v12[3] = &unk_1001DCF10;
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v13 = v10;
  v14 = v9;
  [v5 enumerateRowsWithBlock:v12];

  return 1;
}

void sub_1000C3B5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ICPlaybackPositionEntity alloc] initWithDomain:*(a1 + 32)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v13 = [v3 numberForColumnIndex:1];
  v7 = [v3 numberForColumnIndex:2];
  v8 = [v3 numberForColumnIndex:3];
  v9 = [v3 numberForColumnIndex:4];

  [*(*(*(a1 + 56) + 8) + 40) setPlaybackPositionKey:*(a1 + 40)];
  v10 = [*(a1 + 48) libraryUID];
  [*(*(*(a1 + 56) + 8) + 40) setLibraryIdentifier:v10];

  [*(*(*(a1 + 56) + 8) + 40) setUserPlayCount:v13];
  [*(*(*(a1 + 56) + 8) + 40) setHasBeenPlayed:v7];
  [*(*(*(a1 + 56) + 8) + 40) setBookmarkTimestamp:v9];
  if (v8)
  {
    [v8 doubleValue];
    v12 = [NSNumber numberWithDouble:v11 / 1000.0];
  }

  else
  {
    v12 = 0;
  }

  [*(*(*(a1 + 56) + 8) + 40) setBookmarkTime:v12];
  if (v8)
  {
  }
}

void sub_1000C404C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C4074(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:a1[4]];
  [v3 setPrivacyContext:v4];

  v9 = a1[5];
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v3 executeUpdate:@"DELETE FROM cloud_kvs WHERE key = ?" withParameters:v5 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  *(*(a1[6] + 8) + 24) = v7;
}

void sub_1000C4348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C4368(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  v5 = [*(a1 + 40) playbackPositionKey];
  v80 = v5;
  v6 = [NSArray arrayWithObjects:&v80 count:1];
  v7 = [v3 executeQuery:@"SELECT key FROM cloud_kvs WHERE key = ?" withParameters:v6];

  if ([v7 hasAtLeastOneRow])
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = (a1 + 40);
    v10 = [*(a1 + 40) hasBeenPlayed];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &off_1001ED708;
    }

    [v8 setObject:v12 forKeyedSubscript:@"has_been_played"];

    v13 = [*v9 userPlayCount];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &off_1001ED708;
    }

    [v8 setObject:v15 forKeyedSubscript:@"play_count_user"];

    v16 = [*v9 bookmarkTimestamp];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &off_1001ED708;
    }

    [v8 setObject:v18 forKeyedSubscript:@"bookmark_sync_timestamp"];

    v19 = [*v9 bookmarkTime];
    if (v19)
    {
      v20 = [*(a1 + 40) bookmarkTime];
      [v20 doubleValue];
      v22 = [NSNumber numberWithDouble:v21 * 1000.0];
      [v8 setObject:v22 forKeyedSubscript:@"bookmark_time_ms"];
    }

    else
    {
      [v8 setObject:&off_1001ED708 forKeyedSubscript:@"bookmark_time_ms"];
    }

    v23 = [v8 allKeys];
    v24 = [v23 count] == 0;

    if (v24)
    {

      v42 = 1;
      goto LABEL_24;
    }

    v25 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 48) currentRevision]);
    [v8 setObject:v25 forKey:@"bookmark_sync_revision"];

    v26 = [v8 allKeys];
    v27 = [v26 count];

    v28 = objc_alloc_init(NSMutableString);
    v29 = objc_alloc_init(NSMutableArray);
    v30 = [v8 allKeys];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_1000C4A84;
    v73[3] = &unk_1001DCE70;
    v74 = v28;
    v75 = v29;
    v76 = v8;
    v77 = v27;
    v31 = v8;
    v32 = v29;
    v33 = v28;
    [v30 enumerateObjectsUsingBlock:v73];

    v34 = [*(a1 + 40) playbackPositionKey];
    [v32 addObject:v34];

    v35 = [NSString stringWithFormat:@"UPDATE cloud_kvs SET %@ WHERE key = ?", v33];
    *(*(*(a1 + 64) + 8) + 24) = [v3 executeUpdate:v35 withParameters:v32 error:0];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 56) _updateUbiquitousDatabaseWithEntity:*(a1 + 40) syncRevision:objc_msgSend(*(a1 + 48) usingConnection:{"currentRevision"), v3}];
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v36 = [*(a1 + 40) playbackPositionKey];
    v79 = v36;
    v37 = [NSArray arrayWithObjects:&v79 count:1];
    v38 = [v3 executeQuery:@"SELECT item_pid withParameters:{play_count_user, has_been_played, bookmark_time_ms FROM cloud_kvs INNER JOIN item_kvs USING (key) LEFT OUTER JOIN item USING (item_pid) WHERE key = ? AND item.item_pid IS NOT NULL", v37}];

    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = sub_1000C39F8;
    v71 = sub_1000C3A08;
    v72 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = sub_1000C39F8;
    v65 = sub_1000C3A08;
    v66 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_1000C39F8;
    v59 = sub_1000C3A08;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_1000C39F8;
    v53 = sub_1000C3A08;
    v54 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000C4B4C;
    v44[3] = &unk_1001DCE98;
    v44[4] = &v67;
    v44[5] = &v61;
    v44[6] = &v55;
    v44[7] = &v49;
    v44[8] = &v45;
    [v38 enumerateRowsWithBlock:v44];
    if (*(v46 + 24) == 1 && [v68[5] longLongValue])
    {
      v39 = v56[5];
      v78[0] = v50[5];
      v78[1] = v39;
      v40 = v68[5];
      v78[2] = v62[5];
      v78[3] = v40;
      v41 = [NSArray arrayWithObjects:v78 count:4];
      *(*(*(a1 + 64) + 8) + 24) = [v3 executeUpdate:@"UPDATE item_stats SET bookmark_time_ms = ? withParameters:has_been_played = ? error:{play_count_user = ? where item_pid = ?", v41, 0}];
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v61, 8);

    _Block_object_dispose(&v67, 8);
    v42 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v42 = 0;
  }

LABEL_24:

  return v42 & 1;
}

void sub_1000C4A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1000C4A84(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 appendFormat:@"%@ = ?", v6];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) objectForKey:v6];

  [v7 addObject:v8];
  if (*(a1 + 56) - 1 > a3)
  {
    v9 = *(a1 + 32);

    [v9 appendString:{@", "}];
  }
}

void sub_1000C4B4C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numberForColumnIndex:0];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 numberForColumnIndex:1];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v3 numberForColumnIndex:2];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v3 numberForColumnIndex:3];

  v14 = *(a1[7] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  *(*(a1[8] + 8) + 24) = 1;
}

void sub_1000C4CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C4D0C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:a1[4]];
  [v3 setPrivacyContext:v4];

  v5 = [[ML3Track alloc] initWithPersistentID:a1[7] inLibrary:a1[5]];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 valueForProperty:ML3TrackPropertyRememberBookmarkTime];
    v8 = [v7 BOOLValue];

    if (!v8)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v9 = ML3TrackPropertyStoreBookmarkMetadataIdentifier;
    v10 = [v6 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataIdentifier];
    if ([v10 length])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x3032000000;
      v24 = sub_1000C39F8;
      v25 = sub_1000C3A08;
      v26 = 0;
      v21 = v10;
      v11 = [NSArray arrayWithObjects:&v21 count:1];
      v12 = [v3 executeQuery:@"SELECT play_count_user withParameters:{has_been_played, bookmark_time_ms FROM cloud_kvs WHERE key = ?", v11}];

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000C5038;
      v19[3] = &unk_1001DCE20;
      v19[4] = &buf;
      [v12 enumerateRowsWithBlock:v19];
      if (*(*(&buf + 1) + 40))
      {
        [v6 setValuesForPropertiesWithDictionary:?];
      }

      v13 = [v6 valueForProperty:v9];
      v20[0] = &off_1001EE3F8;
      v20[1] = &off_1001ED708;
      v20[2] = v13;
      v14 = [NSArray arrayWithObjects:v20 count:3];
      v15 = [v3 executeQuery:@"UPDATE cloud_kvs SET bookmark_sync_timestamp = ? withParameters:{bookmark_sync_revision = ? WHERE key = ?", v14}];

      *(*(a1[6] + 8) + 24) = 1;
      _Block_object_dispose(&buf, 8);

      v16 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[7];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "updateMusicLibraryByApplyingUbiquitousBookmarkMetadataToTrackWithPersistentID:, persistentID %lld doesn't exist.", &buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_10:

LABEL_12:
  return v16;
}

void sub_1000C5014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C5038(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      v11[0] = ML3TrackPropertyPlayCountUser;
      v4 = a2;
      v5 = [v4 numberForColumnIndex:0];
      v12[0] = v5;
      v11[1] = ML3TrackPropertyHasBeenPlayed;
      v6 = [v4 numberForColumnIndex:1];
      v12[1] = v6;
      v11[2] = ML3TrackPropertyBookmarkTime;
      v7 = [v4 numberForColumnIndex:2];

      v12[2] = v7;
      v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

void sub_1000C52B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C52D8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:a1[4]];
  [v3 setPrivacyContext:v4];

  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v3 executeUpdate:@"DELETE FROM cloud_kvs" withParameters:&__NSArray0__struct error:&obj];

  objc_storeStrong((v5 + 40), obj);
  *(*(a1[5] + 8) + 24) = v6;
}

void sub_1000C550C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C5524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  v17 = [NSMutableString stringWithString:@"SELECT key, play_count_user, has_been_played, bookmark_time_ms, bookmark_sync_timestamp FROM cloud_kvs WHERE key"];
  v16 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v5 = [*(a1 + 40) count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = -1;
    do
    {
      if (&v6[-v8] >= 0x64)
      {
        v10 = 100;
      }

      else
      {
        v10 = &v6[-v8];
      }

      v11 = [*(a1 + 40) subarrayWithRange:{v8, v10}];
      if (v9 != v10)
      {
        v12 = [v16 statementWithPrefix:v17 inParameterCount:v10];

        v9 = v10;
        v7 = v12;
      }

      v8 += v10;
      v13 = [v3 executeQuery:v7 withParameters:v11];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000C56F0;
      v18[3] = &unk_1001DEED8;
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v19 = v14;
      v20 = v15;
      [v13 enumerateRowsWithBlock:v18];
    }

    while (v8 < v6);
  }
}

void sub_1000C56F0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    v4 = a2;
    v12 = [v4 stringForColumnIndex:0];
    v5 = [v4 numberForColumnIndex:1];
    v6 = [v4 numberForColumnIndex:2];
    v7 = [v4 numberForColumnIndex:3];
    v8 = [v4 numberForColumnIndex:4];

    v9 = [[ICPlaybackPositionEntity alloc] initWithDomain:*(a1 + 32)];
    [v9 setPlaybackPositionKey:v12];
    [v9 setUserPlayCount:v5];
    [v9 setHasBeenPlayed:v6];
    [v9 setBookmarkTimestamp:v8];
    if (v7)
    {
      [v7 doubleValue];
      v11 = [NSNumber numberWithDouble:v10 / 1000.0];
      [v9 setBookmarkTime:v11];
    }

    else
    {
      [v9 setBookmarkTime:0];
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
  }
}

uint64_t sub_1000C5CFC(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C5F6C;
  v4[3] = &unk_1001DCD80;
  v2 = a1[4];
  v1 = a1[5];
  v6 = a1[6];
  v5 = v1;
  [v2 enumerateKeysAndObjectsUsingBlock:v4];

  return 1;
}

uint64_t sub_1000C5D90(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setLastSyncedEntityRevision:*(a1 + 64)];
  [*(a1 + 32) setLastSyncedDomainVersion:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = +[NSDate date];
  [v4 setDateLastSynced:v5];

  [*(a1 + 32) setLastNotificationDomainVersion:*(a1 + 40)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C5E90;
  v9[3] = &unk_1001DCDD0;
  v9[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = v3;
  v7 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  return 1;
}

void sub_1000C5E90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 playbackPositionKey];
  v6 = [v4 _kvsEntityWithKVSKey:v5 domain:*(a1 + 40)];

  v7 = [v6 bookmarkTimestamp];
  [v7 doubleValue];
  v9 = v8;

  if (!v6 || ([v13 bookmarkTimestamp], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "doubleValue"), v12 = v11, v10, v12 > v9))
  {
    [*(a1 + 32) _updateUbiquitousDatabaseWithEntity:v13 syncRevision:0 usingConnection:*(a1 + 48)];
  }
}

void sub_1000C5F6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSNull null];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [v6 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataIdentifier];
    if ([v9 length])
    {
      v10 = [v6 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataEntityRevision];
      v11 = [v10 unsignedLongLongValue];

      if (v11 <= *(a1 + 40))
      {
        goto LABEL_5;
      }

      v12 = [v6 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataTimestamp];
      [v12 doubleValue];
      v14 = v13;

      v15 = [v5 bookmarkTimestamp];
      [v15 doubleValue];
      v17 = v16;

      if (v14 >= v17)
      {
        [*(a1 + 32) addObject:v5];
      }

      else
      {
LABEL_5:
        v18 = [v5 hasBeenPlayed];
        v19 = v18;
        v20 = &off_1001ED708;
        if (v18)
        {
          v21 = v18;
        }

        else
        {
          v21 = &off_1001ED708;
        }

        v22 = v21;

        v23 = [v5 userPlayCount];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = &off_1001ED708;
        }

        v26 = v25;

        v27 = [v5 bookmarkTime];
        if (v27)
        {
          v28 = [v5 bookmarkTime];
          [v28 doubleValue];
          v20 = [NSNumber numberWithDouble:v29 * 1000.0];
        }

        v31[0] = ML3TrackPropertyPlayCountUser;
        v31[1] = ML3TrackPropertyHasBeenPlayed;
        v32[0] = v26;
        v32[1] = v22;
        v31[2] = ML3TrackPropertyBookmarkTime;
        v32[2] = v20;
        v30 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
        [v6 setValuesForPropertiesWithDictionary:v30];
      }
    }
  }
}

uint64_t sub_1000C6300(id *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 _queryForTracksNeedingPushWithEntityRevisionAnchor:objc_msgSend(v4 orderingTerms:{"lastSyncedEntityRevision"), &__NSArray0__struct}];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000C656C;
  v25[3] = &unk_1001DCD08;
  v7 = a1[6];
  v21 = *(a1 + 2);
  v8 = v21.i64[1];
  v9 = a1[7];
  v10.i64[0] = v7;
  v10.i64[1] = v9;
  v11 = vzip2q_s64(v21, v10);
  v10.i64[1] = v21.i64[0];
  v26 = v10;
  v27 = v11;
  [v6 enumeratePersistentIDsUsingBlock:v25];
  v12 = [a1[4] _sqlQueryStringForItemsNeedingPush];
  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a1[5] lastSyncedEntityRevision]);
  v28 = v13;
  v14 = [NSArray arrayWithObjects:&v28 count:1];
  v15 = [v5 executeQuery:v12 withParameters:v14];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C6650;
  v22[3] = &unk_1001DCD30;
  v21.i64[0] = a1[4];
  v16 = a1[6];
  v17 = a1[7];
  *&v18 = a1[5];
  *(&v18 + 1) = v17;
  *&v19 = v21.i64[0];
  *(&v19 + 1) = v16;
  v23 = v19;
  v24 = v18;
  [v15 enumerateRowsWithBlock:v22];

  return 1;
}