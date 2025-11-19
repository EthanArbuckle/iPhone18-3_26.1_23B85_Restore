void sub_100127178(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

id sub_100127614(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 40) finalState];
  v6 = [v5 copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;

  v9 = *(*(a1 + 32) + 24);

  return [v9 save];
}

void sub_100127890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t sub_1001278BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001278D4(void *a1)
{
  v2 = +[ICUserIdentityStore defaultIdentityStore];
  v3 = [v2 _unsafeBackend];

  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 allStoreAccountsWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = [*(a1[4] + 24) activeConfiguration];
    v7 = [ICDAccountManagerState stateForAccounts:v5 baseConfiguration:v6];

    v8 = a1[4];
    if (*(v8 + 40) == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    v10 = [ICDAccountManagerStateChange stateChangeFromState:*(v8 + 24) toState:v7 computation:v9];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_100127AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100127BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100127BFC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100127D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100127D64(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100127EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100127ECC(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) activeConfiguration];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100128F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100128F2C(uint64_t a1)
{
  sub_100129044();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPHomeMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213E58 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPHomeMonitorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDMediaUserStateCenterServerNotificationsManager.m" lineNumber:21 description:{@"Unable to find class %s", "MPHomeMonitor"}];

    __break(1u);
  }
}

void *sub_100128FF4(uint64_t a1)
{
  v2 = sub_100129044();
  result = dlsym(v2, "MPHomeUserMonitorPrivateListeningForCurrentDeviceSettingDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100213E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100129044()
{
  v4[0] = 0;
  if (!qword_100213E60)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1001291A8;
    v4[4] = &unk_1001DF350;
    v4[5] = v4;
    v5 = off_1001DEF98;
    v6 = 0;
    qword_100213E60 = _sl_dlopen();
  }

  v0 = qword_100213E60;
  if (!qword_100213E60)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ICDMediaUserStateCenterServerNotificationsManager.m" lineNumber:20 description:{@"%s", v4[0]}];

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

uint64_t sub_1001291A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213E60 = result;
  return result;
}

void sub_100129A10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];

  if (v4)
  {
    [*(a1 + 32) removeObject:v6];
    v7 = [*(a1 + 40) objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      v10 = [v9 intValue];

      if (v5 == v10)
      {
        v11 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412802;
          v15 = v6;
          v16 = 2048;
          v17 = v4;
          v18 = 2048;
          v19 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Container with PlaylistGlobalId: %@, persistentID: %lld, liked_state: %lld is imported and has the correct liked state", &v14, 0x20u);
        }

        goto LABEL_11;
      }

      [*(a1 + 48) addObject:v8];
      v13 = *(a1 + 56);
      v12 = [NSNumber numberWithLongLong:v4];
      [v13 addObject:v12];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find content taste for playlistGlobalID=%{public}@", &v14, 0xCu);
      }
    }

LABEL_11:
  }
}

void sub_100129C18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 intValue];

  if (v6 <= 1)
  {
    [*(a1 + 40) addObject:v3];
    v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = 138543874;
      v10 = v8;
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ skip lookup of global playlist=%{public}@, likedStateInfo=%{public}@", &v9, 0x20u);
    }
  }
}

void sub_100129D44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error %{public}@ adding global playlists", buf, 0xCu);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_11:
      v9();
    }
  }

  else if ([*(a1 + 32) isCancelled])
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ is cancelled", buf, 0xCu);
    }

    v12 = *(a1 + 72);
    if (v12)
    {
      v9 = *(v12 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10012A004;
    v18[3] = &unk_1001DF2C8;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = *(a1 + 56);
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
    v13 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 64) count];
      +[NSDate timeIntervalSinceReferenceDate];
      v16 = v15 - *(a1 + 80);
      *buf = 134218240;
      v23 = v14;
      v24 = 2048;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Finished loading content taste for %lu playlists in %3f seconds", buf, 0x16u);
    }

    v17 = *(a1 + 72);
    if (v17)
    {
      (*(v17 + 16))(v17, *(a1 + 48), *(a1 + 56), 0);
    }
  }
}

void sub_10012A004(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 longLongValue];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectForKey:v5];
    if (v8)
    {
      v9 = v8;
      [*(a1 + 40) addObject:v8];
      v10 = *(a1 + 48);
      v11 = [NSNumber numberWithLongLong:v7];
      [v10 addObject:v11];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find content taste for playlistGlobalID=%{public}@", &v13, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "global playlist %{public}@ was not imported", &v13, 0xCu);
    }
  }
}

uint64_t sub_10012ADE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10012ADFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v6 = [v3 int64ForColumnIndex:2];
  v7 = [v3 int64ForColumnIndex:3];
  v8 = [v3 int64ForColumnIndex:4];
  v9 = [v3 int64ForColumnIndex:5];

  if (v4)
  {
    if (v9)
    {
      if ([*(a1 + 32) isEqualToString:@"store_item_id"])
      {
        v10 = v6;
      }

      else
      {
        v10 = v7;
      }

      v11 = *(a1 + 40);
      v12 = [NSNumber numberWithLongLong:v10];
      [v11 removeObject:v12];

      if (v8 < 1)
      {
        v19 = *(a1 + 48);
        v20 = [NSNumber numberWithLongLong:v10];
        v13 = [v19 objectForKey:v20];

        if (v13)
        {
          v21 = [v13 objectAtIndexedSubscript:0];
          v22 = [v21 intValue];

          if (v5 == v22)
          {
            v23 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(a1 + 32);
              v28 = 134219010;
              v29 = v6;
              v30 = 2048;
              v31 = v7;
              v32 = 2048;
              v33 = v4;
              v34 = 1024;
              *v35 = v5;
              *&v35[4] = 2112;
              *&v35[6] = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Track with storeItemID: %lld, subscriptionStoreItemID: %lld, persistenID: %lld, liked_state: %d for property: %@ is imported and has the correct liked state", &v28, 0x30u);
            }
          }

          else
          {
            [*(a1 + 56) addObject:v13];
            v26 = *(a1 + 64);
            v27 = [NSNumber numberWithLongLong:v4];
            [v26 addObject:v27];
          }
        }

        else
        {
          v25 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 134217984;
            v29 = v10;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Could not find content taste for media item with storeID=%lld", &v28, 0xCu);
          }

          v13 = 0;
        }
      }

      else
      {
        v13 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v28 = 134219010;
          v29 = v6;
          v30 = 2048;
          v31 = v7;
          v32 = 2048;
          v33 = v4;
          v34 = 2112;
          *v35 = v14;
          *&v35[8] = 2048;
          *&v35[10] = v8;
          v15 = "Track with storeItemID: %lld, subscriptionStoreItemID: %lld, persistenID: %lld for property: %@ has a storeSagaID: %lld and will not be updated";
          v16 = v13;
          v17 = 52;
LABEL_13:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v28, v17);
        }
      }
    }

    else
    {
      v13 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v28 = 134218754;
        v29 = v6;
        v30 = 2048;
        v31 = v7;
        v32 = 2048;
        v33 = v4;
        v34 = 2112;
        *v35 = v18;
        v15 = "Track with storeItemID: %lld, subscriptionStoreItemID: %lld, persistenID: %lld for property: %@ will be imported to include subscription data source";
        v16 = v13;
        v17 = 42;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134217984;
      v29 = v6;
      v15 = "Track with storeItemID: %lld will be imported";
      v16 = v13;
      v17 = 12;
      goto LABEL_13;
    }
  }
}

void sub_10012B210(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v6 = [v3 int64ForColumnIndex:2];
  v7 = [v3 int64ForColumnIndex:3];
  v8 = [v3 int64ForColumnIndex:4];
  v9 = [v3 int64ForColumnIndex:5];

  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [NSNumber numberWithLongLong:v6];
      [v10 removeObject:v11];

      if (v8 < 1)
      {
        v16 = *(a1 + 40);
        v17 = [NSNumber numberWithLongLong:v6];
        v12 = [v16 objectForKey:v17];

        if (v12)
        {
          v18 = [v12 objectAtIndexedSubscript:0];
          v19 = [v18 intValue];

          if (v5 == v19)
          {
            v20 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v23 = 134218496;
              v24 = v6;
              v25 = 2048;
              v26 = v4;
              v27 = 2048;
              v28 = v5;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Album with storeItemId: %lld, albumPid: %lld, liked_state: %lld is imported and has the correct liked state", &v23, 0x20u);
            }
          }

          else
          {
            [*(a1 + 48) addObject:v12];
            v21 = *(a1 + 56);
            v22 = [NSNumber numberWithLongLong:v4];
            [v21 addObject:v22];
          }
        }
      }

      else
      {
        v12 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 134218496;
          v24 = v6;
          v25 = 2048;
          v26 = v4;
          v27 = 2048;
          v28 = v8;
          v13 = "Album with storeItemId: %lld, albumPid: %lld, has storeSagaID: %lld and will not be updated";
          v14 = v12;
          v15 = 32;
LABEL_10:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v23, v15);
        }
      }
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134218240;
        v24 = v6;
        v25 = 2048;
        v26 = v4;
        v13 = "Album with albumStoreID: %lld, persistenID: %lld will be imported to include subscription data source";
        v14 = v12;
        v15 = 22;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134217984;
      v24 = v6;
      v13 = "Album with storeItemID: %lld will be imported";
      v14 = v12;
      v15 = 12;
      goto LABEL_10;
    }
  }
}

void sub_10012B554(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 intValue];

  if (v6 <= 1)
  {
    [*(a1 + 40) addObject:v3];
    v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = 138543874;
      v10 = v8;
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ skip lookup of adamID=%{public}@, likedStateInfo=%{public}@", &v9, 0x20u);
    }
  }
}

void sub_10012B680(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      *buf = 134218242;
      v85 = v8;
      v86 = 2112;
      v87 = *&v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error importing %lu tracks to the library. %@", buf, 0x16u);
    }

    v9 = *(a1 + 96);
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(v9 + 16);
LABEL_11:
      v14();
      goto LABEL_64;
    }

    goto LABEL_64;
  }

  v15 = [*(a1 + 72) isCancelled];
  v16 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if ((v15 & 1) == 0)
  {
    v62 = 0;
    if (v17)
    {
      v20 = [v5 count];
      v21 = [*(a1 + 32) count];
      *buf = 134218240;
      v85 = v20;
      v86 = 2048;
      v87 = *&v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Imported %lu mediaItems for %lu storeAdamIds", buf, 0x16u);
    }

    v22 = +[NSMutableArray array];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v63 = v5;
    v23 = v5;
    v24 = [v23 countByEnumeratingWithState:&v80 objects:v91 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v81;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v81 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(*(&v80 + 1) + 8 * i) persistentID]);
          [v22 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v80 objects:v91 count:16];
      }

      while (v25);
    }

    v65 = +[NSMutableSet set];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v29 = v22;
    v75 = [v29 countByEnumeratingWithState:&v76 objects:v90 count:16];
    if (!v75)
    {
LABEL_55:

      v6 = v62;
      if ([*(a1 + 32) count])
      {
        if ([*(*(*(a1 + 104) + 8) + 40) count])
        {
          [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 104) + 8) + 40)];
        }

        v54 = [*(a1 + 32) componentsJoinedByString:{@"$", v62}];
        v55 = *(*(a1 + 112) + 8);
        v56 = *(v55 + 40);
        *(v55 + 40) = v54;
      }

      v57 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [*(a1 + 32) count];
        +[NSDate timeIntervalSinceReferenceDate];
        v60 = v59 - *(a1 + 120);
        *buf = 134218240;
        v85 = v58;
        v86 = 2048;
        v87 = v60;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Finished loading content taste for %lu items/albums in %3f seconds", buf, 0x16u);
      }

      v61 = *(a1 + 96);
      v5 = v63;
      if (v61)
      {
        (*(v61 + 16))(v61, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(*(*(a1 + 112) + 8) + 40), 0);
      }

      goto LABEL_64;
    }

    v30 = *v77;
    v74 = ML3TrackPropertyStoreItemID;
    v72 = ML3TrackPropertySubscriptionStoreItemID;
    v73 = ML3TrackPropertyStoreSagaID;
    v70 = ML3TrackPropertyAlbumPersistentID;
    v68 = ML3AlbumPropertyStoreAlbumID;
    v67 = ML3AlbumPropertyStoreCloudID;
    v66 = ML3TrackPropertyStorePlaylistID;
    v71 = *v77;
    v69 = v29;
LABEL_23:
    v31 = 0;
    while (1)
    {
      if (*v77 != v30)
      {
        objc_enumerationMutation(v29);
      }

      v32 = *(*(&v76 + 1) + 8 * v31);
      v33 = +[ML3Track newWithPersistentID:inLibrary:](ML3Track, "newWithPersistentID:inLibrary:", [v32 longLongValue], *(a1 + 80));
      v34 = [v33 valueForProperty:v74];
      v35 = v34;
      if (!v34 || ![v34 longLongValue])
      {
        v36 = [v33 valueForProperty:v72];

        v35 = v36;
      }

      v37 = [*(a1 + 88) objectForKey:v35];
      if (v37)
      {
        v38 = v37;
        v39 = [v33 valueForProperty:v73];
        if ([v39 longLongValue] < 1)
        {
          [*(a1 + 40) addObject:v38];
          [*(a1 + 48) addObject:v32];
        }

        else
        {
          v40 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [v32 longLongValue];
            v42 = [v35 longLongValue];
            v43 = [v39 longLongValue];
            *buf = 134218496;
            v85 = v41;
            v86 = 2048;
            v87 = *&v42;
            v30 = v71;
            v88 = 2048;
            v89 = v43;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Not updating liked_state for track with persistentID: %lld, storeAdamID: %lld as it has a valid storeSagaID: %lld", buf, 0x20u);
          }
        }

        [*(a1 + 32) removeObject:v35];
        goto LABEL_46;
      }

      v39 = [v33 valueForProperty:v70];
      v44 = [v39 longLongValue];
      if (!v44)
      {
        v38 = 0;
        goto LABEL_46;
      }

      v45 = v44;
      v46 = [ML3Album newWithPersistentID:v44 inLibrary:*(a1 + 80)];
      v47 = [v46 valueForProperty:v68];
      v48 = [v46 valueForProperty:v67];
      if (!v47 || ![v47 longLongValue])
      {
        v49 = [v33 valueForProperty:v66];

        v47 = v49;
      }

      if ([v48 length])
      {
        v50 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v47 longLongValue];
          *buf = 134218242;
          v85 = v51;
          v86 = 2114;
          v87 = *&v48;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Skipping content taste for album with storeID=%lld, cloudUniversalLibraryID=%{public}@", buf, 0x16u);
        }

        v38 = 0;
      }

      else
      {
        if (![v47 longLongValue])
        {
          v38 = 0;
          goto LABEL_43;
        }

        v38 = [*(a1 + 88) objectForKey:v47];
        if (!v38 || ([v65 containsObject:v47] & 1) != 0)
        {
          goto LABEL_43;
        }

        [*(a1 + 56) addObject:v38];
        v64 = *(a1 + 64);
        v52 = [NSNumber numberWithLongLong:v45];
        [v64 addObject:v52];

        [v65 addObject:v47];
      }

      [*(a1 + 32) removeObject:v47];
LABEL_43:

      v29 = v69;
      v30 = v71;
LABEL_46:

      if (v75 == ++v31)
      {
        v53 = [v29 countByEnumeratingWithState:&v76 objects:v90 count:16];
        v75 = v53;
        if (!v53)
        {
          goto LABEL_55;
        }

        goto LABEL_23;
      }
    }
  }

  if (v17)
  {
    v18 = *(a1 + 72);
    *buf = 138543362;
    v85 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ is cancelled", buf, 0xCu);
  }

  v19 = *(a1 + 96);
  if (v19)
  {
    v14 = *(v19 + 16);
    goto LABEL_11;
  }

LABEL_64:
}

void sub_10012C918(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10012C974(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];
  v7 = [v3 int64ForColumnIndex:3];

  if (v4)
  {
    v8 = *(a1 + 32);
    v9 = [NSNumber numberWithLongLong:v7];
    [v8 removeObject:v9];

    if ([v6 length])
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218242;
        v22 = v7;
        v23 = 2114;
        *v24 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping content taste checks for album artist with storeID=%lld, cloudUniversalLibraryID=%{public}@", &v21, 0x16u);
      }

      goto LABEL_13;
    }

    v11 = *(a1 + 40);
    v12 = [NSNumber numberWithLongLong:v7];
    v10 = [v11 objectForKey:v12];

    if (v10)
    {
      v13 = [v10 objectAtIndexedSubscript:0];
      v14 = [v13 intValue];

      if (v5 == v14)
      {
LABEL_13:

        goto LABEL_14;
      }

      [*(a1 + 48) addObject:v10];
      v15 = *(a1 + 56);
      v16 = [NSNumber numberWithLongLong:v4];
      [v15 addObject:v16];

      v17 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218496;
        v22 = v4;
        v23 = 1024;
        *v24 = v5;
        *&v24[4] = 1024;
        *&v24[6] = v14;
        v18 = "Will update content taste for album artist with persistentID=%lld from %d to %d";
        v19 = v17;
        v20 = 24;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v21, v20);
      }
    }

    else
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134217984;
        v22 = v7;
        v18 = "Could not find content taste for album artist with storeID=%lld";
        v19 = v17;
        v20 = 12;
        goto LABEL_11;
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_10012CC30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 intValue];

  if (v6 <= 1)
  {
    [*(a1 + 40) addObject:v3];
    v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = 138543874;
      v10 = v8;
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ skip lookup of album artist adamID=%{public}@, likedStateInfo=%{public}@", &v9, 0x20u);
    }
  }
}

void sub_10012CD5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = qword_100213E80;
  v11 = qword_100213E80;
  if (!qword_100213E80)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10012D650;
    v7[3] = &unk_1001DF318;
    v7[4] = &v8;
    sub_10012D650(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = [[v4 alloc] initWithStoreItemID:objc_msgSend(v3 additionalTrackMetadata:{"longLongValue"), 0}];
  [*(a1 + 32) addObject:v6];
}

void sub_10012CE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012CE78(uint64_t a1)
{
  sub_10012D48C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPStoreItemLibraryImport");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213E88 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPStoreItemLibraryImportClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICCloudContentTasteUpdateOperation.m" lineNumber:42 description:{@"Unable to find class %s", "MPStoreItemLibraryImport"}];

    __break(1u);
  }
}

void sub_10012CF40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) count];
      *buf = 134218242;
      v34 = v8;
      v35 = 2114;
      v36 = *&v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not import %ld album artists, error=%{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 96);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_11:
      v10();
    }
  }

  else if ([*(a1 + 40) isCancelled])
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      *buf = 138543362;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ is cancelled", buf, 0xCu);
    }

    v13 = *(a1 + 96);
    if (v13)
    {
      v10 = *(v13 + 16);
      goto LABEL_11;
    }
  }

  else
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012D298;
    v29[3] = &unk_1001DF228;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v30 = v19;
    v31 = v18;
    v32 = *(a1 + 80);
    [v5 enumerateObjectsUsingBlock:v29];
    v20 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 80) count];
      +[NSDate timeIntervalSinceReferenceDate];
      v23 = v22 - *(a1 + 112);
      *buf = 134218240;
      v34 = v21;
      v35 = 2048;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Finished loading content taste for %lu album artists in %3f seconds", buf, 0x16u);
    }

    [*(a1 + 80) addObjectsFromArray:*(a1 + 88)];
    if ([*(a1 + 80) count])
    {
      v24 = *(a1 + 80);
      v25 = MSVArchivedDataWithRootObject();
      v26 = *(*(a1 + 104) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    v28 = *(a1 + 96);
    if (v28)
    {
      (*(v28 + 16))(v28, *(a1 + 64), *(a1 + 72), *(*(*(a1 + 104) + 8) + 40), 0);
    }
  }
}

void sub_10012D298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ML3AlbumArtist newWithPersistentID:inLibrary:](ML3AlbumArtist, "newWithPersistentID:inLibrary:", [v3 longLongValue], *(a1 + 32));
  v5 = [v4 valueForProperty:ML3AlbumArtistPropertyCloudUniversalLibraryID];
  if ([v5 length])
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218242;
      v10 = [v3 longLongValue];
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping content taste checks for album artist with persistentID=%lld, cloudUniversalLibraryID=%{public}@", &v9, 0x16u);
    }
  }

  else
  {
    v6 = [v4 valueForProperty:ML3AlbumArtistPropertyStoreID];
    if (v6)
    {
      v7 = [*(a1 + 40) objectForKey:v6];
      if (v7)
      {
        [*(a1 + 48) addObject:v7];
        [*(a1 + 56) addObject:v3];
        [*(a1 + 64) removeObject:v6];
      }

      else
      {
        v8 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134217984;
          v10 = [v6 longLongValue];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not find content taste for album artist with storeID=%lld", &v9, 0xCu);
        }
      }
    }
  }
}

void sub_10012D48C()
{
  v3[0] = 0;
  if (!qword_100213E78)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10012D5DC;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DF338;
    v5 = 0;
    qword_100213E78 = _sl_dlopen();
  }

  if (!qword_100213E78)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICCloudContentTasteUpdateOperation.m" lineNumber:39 description:{@"%s", v3[0]}];

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

uint64_t sub_10012D5DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213E78 = result;
  return result;
}

void sub_10012D650(uint64_t a1)
{
  sub_10012D48C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPStoreItemLibraryImportElement");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213E80 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPStoreItemLibraryImportElementClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICCloudContentTasteUpdateOperation.m" lineNumber:41 description:{@"Unable to find class %s", "MPStoreItemLibraryImportElement"}];

    __break(1u);
  }
}

void sub_10012D718(id a1, ML3DatabaseConnection *a2)
{
  if (([(ML3DatabaseConnection *)a2 executeUpdate:@"DELETE FROM _MLDatabaseProperties WHERE key=?" withParameters:&off_1001EE3B0 error:0]& 1) == 0)
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "removing artists mapped to different entities failed", v3, 2u);
    }
  }
}

BOOL sub_10012DAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 globalPlaylistID];
  if ([v4 length])
  {
    if (([*(a1 + 32) containsObject:v4] & 1) == 0)
    {
      [*(a1 + 32) addObject:v4];
LABEL_9:
      v7 = [v3 contentTasteType] != 0;
      goto LABEL_10;
    }
  }

  else
  {
    v5 = [v3 storeID];
    if (v5)
    {
      v6 = [NSNumber numberWithLongLong:v5];
      if (([*(a1 + 40) containsObject:v6] & 1) == 0)
      {
        [*(a1 + 40) addObject:v6];

        goto LABEL_9;
      }
    }
  }

  v7 = 0;
LABEL_10:

  return v7;
}

void sub_10012ECA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIdentity:v2];
  v4 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v3 setAuthenticationProvider:v4];
}

void sub_10012ED14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 urlForBagKey:ICURLBagKeyMediaContentTastePostURL];
    if (!v7)
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ Error getting sync url", buf, 0xCu);
      }

      v19 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
      v20 = *(a1 + 32);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      dispatch_semaphore_signal(*(a1 + 48));
      goto LABEL_39;
    }

    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v91 = sub_10012ADE4;
    v92 = sub_10012ADF4;
    v93 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x3032000000;
    v76 = sub_10012ADE4;
    v77 = sub_10012ADF4;
    v78 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v8 = [[NSMutableURLRequest alloc] initWithURL:v7];
    v55 = [v5 numberForBagKey:ICURLBagKeyMediaContentTasteRefreshIntervalInMins];
    [v55 doubleValue];
    v10 = v9 * 60.0;
    if (v10 >= 2.22044605e-16)
    {
      v11 = v10;
    }

    else
    {
      v11 = 86400.0;
    }

    v12 = *(a1 + 32);
    if (v12[1])
    {
      v89 = v12[1];
      v13 = [NSArray arrayWithObjects:&v89 count:1];
      v12 = *(a1 + 32);
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    v67 = 0;
    v68 = 0;
    v54 = v13;
    [v12 _getPBData:&v68 includedContentTasteItemUpdates:&v67 fromContentTasteUpdateItems:?];
    v22 = v68;
    v57 = v67;
    if ([v22 length])
    {
      *(v80 + 24) = 1;
      v23 = @"If-Match";
      v24 = @"POST";
    }

    else
    {
      v23 = @"If-None-Match";
      v24 = @"GET";
    }

    [v8 setHTTPMethod:v24];
    [v8 setCachePolicy:1];
    v25 = +[ICCloudContentTasteResponseCacheManager sharedCloudContentTasteResponseCacheManager];
    v26 = [v25 getCachedContentTasteResponseForConnectionConfiguration:*(*(a1 + 32) + 16)];

    v56 = [v26 userInfo];
    objc_storeStrong((*&buf[8] + 40), v26);
    if (*(*&buf[8] + 40) && *(*(a1 + 32) + 24) == 1)
    {
      v27 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        *v83 = 138543362;
        v84 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ invalidating cached response", v83, 0xCu);
      }

      v29 = [v56 objectForKey:@"_MediaContentTasteUpdateResponseTimeIntervalSinceReferenceDate"];
      if (v29)
      {
        v30 = [*(a1 + 32) _prepareCachedResponseFromResponse:*(*&buf[8] + 40) byAddingResponseTimeIntervalKey:0 withResponseTimeInterval:v29];
        v31 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v30;

        [*(a1 + 32) _setCachedContentTasteResponse:*(*&buf[8] + 40)];
      }
    }

    [v8 setValue:@"1.0" forHTTPHeaderField:@"Api-Version"];
    if ([v22 length])
    {
      *(v80 + 24) = 1;
      [v8 setValue:@"application/x-protobuf" forHTTPHeaderField:@"Content-Type"];
      [v8 setHTTPBody:v22];
    }

    else if (v56)
    {
      v32 = [v56 objectForKey:@"_MediaContentTasteUpdateResponseTimeIntervalSinceReferenceDate"];
      if (v32)
      {
        if (_NSIsNSNumber())
        {
          [v32 doubleValue];
          v34 = v33;
          +[NSDate timeIntervalSinceReferenceDate];
          if (v35 - v34 < v11)
          {
            v36 = [*(*&buf[8] + 40) data];
            v37 = v74[5];
            v74[5] = v36;

            v38 = [NSDate dateWithTimeIntervalSinceReferenceDate:v34];
            loga = [*(*&buf[8] + 40) response];
            v39 = [ICCloudContentTasteUpdateResponse eTagValueFromContentTasteResponse:loga];
            v40 = [v39 longLongValue];
            v70[3] = v40;

            log = sub_1001028AC();
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(a1 + 32);
              v42 = v70[3];
              *v83 = 138543874;
              v84 = v41;
              v85 = 2114;
              v86 = v38;
              v87 = 2048;
              v88 = v42;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%{public}@ preparing cached response with date %{public}@, revisionID %llu", v83, 0x20u);
            }

            v43 = v74[5];
            if (v43)
            {
              v44 = [*(a1 + 32) _contentTasteUpdateResponseWithServerResponse:v43 expirationDate:v38 revisionID:v70[3] isCachedResponse:1];
              v45 = *(a1 + 32);
              v46 = *(v45 + 56);
              *(v45 + 56) = v44;
            }

            dispatch_semaphore_signal(*(a1 + 48));
            goto LABEL_38;
          }
        }
      }
    }

    v47 = [v26 response];
    v48 = [ICCloudContentTasteUpdateResponse eTagValueFromContentTasteResponse:v47];

    [v8 setValue:v48 forHTTPHeaderField:v23];
    v49 = [[ICStoreURLRequest alloc] initWithURLRequest:v8 requestContext:*(a1 + 40)];
    v50 = +[ICURLSessionManager defaultSession];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10012F62C;
    v58[3] = &unk_1001DF0F8;
    v51 = *(a1 + 32);
    v65 = v11;
    v58[4] = v51;
    v61 = &v69;
    v62 = buf;
    v63 = &v73;
    v64 = &v79;
    v59 = v57;
    v66 = *(a1 + 56);
    v60 = *(a1 + 48);
    [v50 enqueueDataRequest:v49 withCompletionHandler:v58];

    v38 = 0;
LABEL_38:

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v79, 8);
LABEL_39:

    goto LABEL_40;
  }

  v14 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = [*(v15 + 16) userIdentity];
    *buf = 138543874;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v91 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Error %{public}@ getting bag for identity %{public}@", buf, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 40), a3);
  dispatch_semaphore_signal(*(a1 + 48));
LABEL_40:
}

void sub_10012F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v39 - 176), 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_10012F62C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v62 = a3;
  objc_storeStrong((*(a1 + 32) + 40), a3);
  v6 = +[NSDate date];
  v63 = [v6 dateByAddingTimeInterval:*(a1 + 88)];

  v7 = [v5 urlResponse];
  v8 = [v7 statusCode];

  v9 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 40);
    *buf = 138544130;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 2114;
    v150 = v11;
    LOWORD(v151) = 2048;
    *(&v151 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with response=%{public}@, error=%{public}@, responseErrorCode %ld", buf, 0x2Au);
  }

  if (*(*(a1 + 32) + 40))
  {
    dispatch_semaphore_signal(*(a1 + 48));
    goto LABEL_32;
  }

  if (v8 == 304)
  {
    [*(*(*(a1 + 64) + 8) + 40) response];
  }

  else
  {
    v13 = [v5 bodyData];
    v14 = *(*(a1 + 72) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [v5 urlResponse];
  }
  v12 = ;
  v16 = [ICCloudContentTasteUpdateResponse eTagValueFromContentTasteResponse:v12];
  *(*(*(a1 + 56) + 8) + 24) = [v16 longLongValue];

  if (*(*(*(a1 + 80) + 8) + 24) == 1 && ![*(*(*(a1 + 72) + 8) + 40) length])
  {
    v17 = [*(a1 + 32) _contentTasteUpdateResponseWithServerResponse:*(*(*(a1 + 72) + 8) + 40) expirationDate:v63 revisionID:*(*(*(a1 + 56) + 8) + 24) isCachedResponse:0];
    v18 = *(a1 + 32);
    v19 = *(*(a1 + 72) + 8);
    obj = *(v19 + 40);
    v143 = 0;
    v20 = [v17 contentTasteItems];
    [v18 _prepareContentTasteResponse:&obj withContentTasteItems:&v143 fromCachedContentTasteResponseItems:v20 includedContentTasteItems:*(a1 + 40)];
    objc_storeStrong((v19 + 40), obj);
  }

  [v63 timeIntervalSinceReferenceDate];
  v61 = [NSNumber numberWithDouble:?];
  if (v8 == 304)
  {
    v21 = *(*(*(a1 + 64) + 8) + 40);
    if (v21)
    {
      v22 = [*(a1 + 32) _prepareCachedResponseFromResponse:v21 byAddingResponseTimeIntervalKey:1 withResponseTimeInterval:v61];
LABEL_16:
      [*(a1 + 32) _setCachedContentTasteResponse:v22];

      goto LABEL_17;
    }
  }

  if (v5)
  {
    v23 = [NSCachedURLResponse alloc];
    v24 = [v5 urlResponse];
    v25 = *(*(*(a1 + 72) + 8) + 40);
    v152 = @"_MediaContentTasteUpdateResponseTimeIntervalSinceReferenceDate";
    v153 = v61;
    v26 = [NSDictionary dictionaryWithObjects:&v153 forKeys:&v152 count:1];
    v22 = [v23 initWithResponse:v24 data:v25 userInfo:v26 storagePolicy:0];

    goto LABEL_16;
  }

LABEL_17:
  v27 = [*(a1 + 32) _contentTasteUpdateResponseWithServerResponse:*(*(*(a1 + 72) + 8) + 40) expirationDate:v63 revisionID:*(*(*(a1 + 56) + 8) + 24) isCachedResponse:0];
  v28 = *(*(a1 + 32) + 56);
  *(*(a1 + 32) + 56) = v27;

  v29 = *(a1 + 32);
  v142 = 0;
  v141 = 0;
  v140 = 0;
  [v29 _getStoreAdamIDLikedState:&v142 playlistGlobalIDLikedState:&v141 artistStoreAdamIDLikedState:&v140];
  v30 = v142;
  v31 = v141;
  v32 = v140;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v150 = sub_10012ADE4;
  *&v151 = sub_10012ADF4;
  *(&v151 + 1) = 0;
  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = sub_10012ADE4;
  v138 = sub_10012ADF4;
  v139 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x3032000000;
  v132[3] = sub_10012ADE4;
  v132[4] = sub_10012ADF4;
  v133 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x3032000000;
  v129 = sub_10012ADE4;
  v130 = sub_10012ADF4;
  v131 = 0;
  v124[0] = 0;
  v124[1] = v124;
  v124[2] = 0x3032000000;
  v124[3] = sub_10012ADE4;
  v124[4] = sub_10012ADF4;
  v125 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = sub_10012ADE4;
  v122 = sub_10012ADF4;
  v123 = 0;
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x3032000000;
  v116[3] = sub_10012ADE4;
  v116[4] = sub_10012ADF4;
  v117 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = sub_10012ADE4;
  v114 = sub_10012ADF4;
  v115 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = sub_10012ADE4;
  v108 = sub_10012ADF4;
  v109 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = sub_10012ADE4;
  v102 = sub_10012ADF4;
  v103 = 0;
  v33 = [*(*(a1 + 32) + 16) userIdentity];
  v34 = [ML3MusicLibrary musicLibraryForUserAccount:v33];

  v145 = 0;
  v146 = &v145;
  v147 = 0x2050000000;
  v35 = qword_100213E70;
  v148 = qword_100213E70;
  if (!qword_100213E70)
  {
    *v154 = _NSConcreteStackBlock;
    *&v154[8] = 3221225472;
    *&v154[16] = sub_1001303E8;
    v155 = &unk_1001DF318;
    v156 = &v145;
    sub_1001303E8(v154);
    v35 = v146[3];
  }

  v36 = v35;
  _Block_object_dispose(&v145, 8);
  v37 = [*(*(a1 + 32) + 16) userIdentity];
  v38 = [v35 deviceMediaLibraryWithUserIdentity:v37];

  v39 = [ICAsyncBlockOperation alloc];
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_1001304B0;
  v91[3] = &unk_1001DF008;
  v91[4] = *(a1 + 32);
  v60 = v32;
  v92 = v60;
  v40 = v34;
  v93 = v40;
  v41 = v38;
  v94 = v41;
  v95 = buf;
  v96 = &v134;
  v97 = &v98;
  v42 = [v39 initWithStartHandler:v91];
  v43 = [ICAsyncBlockOperation alloc];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_100130578;
  v82[3] = &unk_1001DF058;
  v82[4] = *(a1 + 32);
  v59 = v30;
  v83 = v59;
  v44 = v40;
  v84 = v44;
  v45 = v41;
  v85 = v45;
  v86 = v132;
  v87 = &v126;
  v88 = v124;
  v89 = &v118;
  v90 = &v104;
  v46 = [v43 initWithStartHandler:v82];
  v47 = [ICAsyncBlockOperation alloc];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100130644;
  v76[3] = &unk_1001DF0A8;
  v76[4] = *(a1 + 32);
  v48 = v31;
  v77 = v48;
  v49 = v44;
  v78 = v49;
  v50 = v45;
  v79 = v50;
  v80 = v116;
  v81 = &v110;
  v51 = [v47 initWithStartHandler:v76];
  [*(*(a1 + 32) + 48) addOperation:v42];
  [*(*(a1 + 32) + 48) addOperation:v46];
  [*(*(a1 + 32) + 48) addOperation:v51];
  [*(*(a1 + 32) + 48) waitUntilAllOperationsAreFinished];
  v52 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = *(a1 + 32);
    v54 = [v53 isCancelled];
    *v154 = 138543618;
    *&v154[4] = v53;
    *&v154[12] = 1024;
    *&v154[14] = v54;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished loading all content taste changes - isCancelled=%{BOOL}u", v154, 0x12u);
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0 && (objc_msgSend(v135[5], "count") || objc_msgSend(v127[5], "count") || objc_msgSend(v119[5], "count") || objc_msgSend(v111[5], "count") || v105[5] || v99[5]))
  {
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100130704;
    v64[3] = &unk_1001DF0D0;
    v64[4] = *(a1 + 32);
    v66 = &v134;
    v67 = buf;
    v65 = v49;
    v68 = &v110;
    v69 = v116;
    v70 = &v126;
    v71 = v132;
    v72 = &v118;
    v73 = v124;
    v74 = &v104;
    v75 = &v98;
    [v65 databaseConnectionAllowingWrites:1 withBlock:v64];
  }

  v55 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(a1 + 32);
    +[NSDate timeIntervalSinceReferenceDate];
    v58 = v57 - *(a1 + 96);
    *v154 = 138543618;
    *&v154[4] = v56;
    *&v154[12] = 2048;
    *&v154[14] = v58;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished updating content taste for media entities in %3f seconds", v154, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 48));
  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v110, 8);

  _Block_object_dispose(v116, 8);
  _Block_object_dispose(&v118, 8);

  _Block_object_dispose(v124, 8);
  _Block_object_dispose(&v126, 8);

  _Block_object_dispose(v132, 8);
  _Block_object_dispose(&v134, 8);

  _Block_object_dispose(buf, 8);
LABEL_32:
}

void sub_100130330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v70 - 256), 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x2D8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x338], 8);
  _Block_object_dispose((v70 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1001303E8(uint64_t a1)
{
  sub_10012D48C();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213E70 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICCloudContentTasteUpdateOperation.m" lineNumber:40 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void sub_1001304B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100131018;
  v9[3] = &unk_1001DEFE0;
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v10 = v3;
  v11 = v4;
  v8 = v3;
  [v4 _updateContentTasteForAlbumArtistItems:v5 musicLibrary:v6 mediaLibrary:v7 withCompletion:v9];
}

void sub_100130578(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100130E6C;
  v10[3] = &unk_1001DF030;
  v8 = *(a1 + 80);
  v13 = *(a1 + 64);
  v14 = v8;
  v15 = *(a1 + 96);
  v11 = v3;
  v12 = v4;
  v9 = v3;
  [v4 _updateContentTasteForMediaItems:v5 musicLibrary:v6 mediaLibrary:v7 withCompletion:v10];
}

void sub_100130644(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100130D44;
  v9[3] = &unk_1001DF080;
  v12 = *(a1 + 64);
  v10 = v3;
  v11 = v4;
  v8 = v3;
  [v4 _updateContentTasteForGlobalPlaylists:v5 musicLibrary:v6 mediaLibrary:v7 withCompletion:v9];
}

void sub_100130704(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v4 = *(*(*(a1 + 56) + 8) + 40);
      v47[0] = ML3AlbumArtistPropertyLikedState;
      v47[1] = ML3AlbumArtistPropertyLikedStateChangedDate;
      v5 = [NSArray arrayWithObjects:v47 count:2];
      v6 = [ML3AlbumArtist setDifferentValues:v4 forProperties:v5 forEntityPersistentIDs:*(*(*(a1 + 48) + 8) + 40) inLibrary:*(a1 + 40) usingConnection:v3];

      if ((v6 & 1) == 0)
      {
        v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 32);
          *buf = 138543362;
          v40 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Could not update content taste for album artists", buf, 0xCu);
        }
      }
    }
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      v9 = *(*(*(a1 + 72) + 8) + 40);
      v46[0] = ML3ContainerPropertyLikedState;
      v46[1] = ML3ContainerPropertyLikedStateChangedDate;
      v10 = [NSArray arrayWithObjects:v46 count:2];
      v11 = [ML3Container setDifferentValues:v9 forProperties:v10 forEntityPersistentIDs:*(*(*(a1 + 64) + 8) + 40) inLibrary:*(a1 + 40) usingConnection:v3];

      if ((v11 & 1) == 0)
      {
        v12 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(a1 + 32);
          *buf = 138543362;
          v40 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Could not update content taste for playlists", buf, 0xCu);
        }
      }
    }
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if ([*(*(*(a1 + 80) + 8) + 40) count])
    {
      v14 = *(*(*(a1 + 88) + 8) + 40);
      v45[0] = ML3TrackPropertyLikedState;
      v45[1] = ML3TrackPropertyLikedStateChangedDate;
      v15 = [NSArray arrayWithObjects:v45 count:2];
      v16 = [ML3Track setDifferentValues:v14 forProperties:v15 forEntityPersistentIDs:*(*(*(a1 + 80) + 8) + 40) inLibrary:*(a1 + 40) usingConnection:v3];

      if ((v16 & 1) == 0)
      {
        v17 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          *buf = 138543362;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ Could not update content taste for items", buf, 0xCu);
        }
      }
    }
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    if ([*(*(*(a1 + 96) + 8) + 40) count])
    {
      v19 = *(*(*(a1 + 104) + 8) + 40);
      v44[0] = ML3AlbumPropertyLikedState;
      v44[1] = ML3AlbumPropertyLikedStateChangedDate;
      v20 = [NSArray arrayWithObjects:v44 count:2];
      v21 = [ML3Album setDifferentValues:v19 forProperties:v20 forEntityPersistentIDs:*(*(*(a1 + 96) + 8) + 40) inLibrary:*(a1 + 40) usingConnection:v3];

      if ((v21 & 1) == 0)
      {
        v22 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 32);
          *buf = 138543362;
          v40 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Could not update content taste for albums", buf, 0xCu);
        }
      }
    }
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v24 = *(*(*(a1 + 112) + 8) + 40);
    if (v24)
    {
      v43[0] = @"NonMediaItemStoreAdamIds";
      v43[1] = v24;
      v25 = [NSArray arrayWithObjects:v43 count:2];
      v37 = 0;
      v26 = [v3 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key withParameters:value) VALUES (? error:{?)", v25, &v37}];
      v27 = v37;

      if ((v26 & 1) == 0)
      {
        v28 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 32);
          *buf = 138543618;
          v40 = v29;
          v41 = 2114;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@ Could not update non media item store adam IDs. error=%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      if (!*(*(*(a1 + 120) + 8) + 40))
      {
        goto LABEL_40;
      }

      v27 = 0;
    }

    v30 = *(*(*(a1 + 120) + 8) + 40);
    if (v30)
    {
      v38[0] = @"ArtistsMatchingDifferentStoreAdamIds";
      v38[1] = v30;
      v31 = [NSArray arrayWithObjects:v38 count:2];
      v36 = v27;
      v32 = [v3 executeUpdate:@"INSERT OR REPLACE INTO _MLDatabaseProperties (key withParameters:value) VALUES (? error:{?)", v31, &v36}];
      v33 = v36;

      if ((v32 & 1) == 0)
      {
        v34 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = *(a1 + 32);
          *buf = 138543618;
          v40 = v35;
          v41 = 2114;
          v42 = v33;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@ Could not update artist store adam IDs. error=%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v33 = v27;
    }
  }

LABEL_40:
}

void sub_100130D44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v10 = a4;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  [*(a1 + 32) finishWithError:v10];

  v11 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing content taste for playlists", &v13, 0xCu);
  }
}

void sub_100130E6C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v21 = a2;
  v20 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v17 = a7;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a6);
  [*(a1 + 32) finishWithError:v17];

  v18 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    *buf = 138543362;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing content taste for items/albums", buf, 0xCu);
  }
}

void sub_100131018(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v13 = a5;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
  [*(a1 + 32) finishWithError:v13];

  v14 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = 138543362;
    v17 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished processing content taste for album artists", &v16, 0xCu);
  }
}

void sub_100131678(id *a1, void *a2, void *a3)
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
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished request to edit collaboration error=%{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request to edit collaboration", &v14, 0xCu);
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
  if ([v5 responseCode] == 500)
  {
    [a1[4] setStatus:3];
  }

  [a1[4] setError:v6];
  if (!v6)
  {
    *(a1[4] + 114) = [v5 updateRequired];
    *(a1[4] + 122) = [a1[5] longLongValue];
  }

  [a1[6] endTransaction];
  [a1[4] finish];
}

void sub_10013215C(uint64_t a1, uint64_t a2, id *a3)
{
  v14 = *a3;
  if ([a3[1] longLongValue] < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3[1];
  }

  v7 = v6;
  [a3[2] doubleValue];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v9 = [v8 earlierDate:*(a1 + 32)];

  if (v9 == v8)
  {

    v8 = 0;
  }

  if (v7 | v8)
  {
    v10 = [NSMutableDictionary dictionaryWithCapacity:2];
    v11 = v10;
    if (v7)
    {
      [v10 setObject:v7 forKey:@"daap.incrementplaycount"];
    }

    if (v8)
    {
      [v11 setObject:v8 forKey:ML3ContainerPropertyDatePlayed];
    }

    [*(a1 + 40) addObject:v14];
    [*(a1 + 48) addObject:v11];
    v12 = *(a1 + 56);
    v13 = [NSNumber numberWithLongLong:a2];
    [v12 addObject:v13];
  }
}

void sub_1001322C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v5 responseCode];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bulk set containers properties response code: %lu", &v12, 0xCu);
  }

  if (v6)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bulk set containers properties failed with error: %{public}@", &v12, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v10 = [v5 responseCode];
  if (v10 > 399)
  {
    if (v10 != 404 && v10 != 400)
    {
      goto LABEL_14;
    }

    v11 = 3;
  }

  else
  {
    v11 = 1;
    if (v10 != 200 && v10 != 204)
    {
LABEL_14:
      v11 = 2;
    }
  }

  [v9 setStatus:v11];
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_10013245C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  v16 = v3;
  [v3 setPrivacyContext:v6];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    v10 = ML3ContainerPropertyPlayCountRecent;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) longLongValue];
        v13 = [ML3Container newWithPersistentID:v12 inLibrary:*(a1 + 48)];
        [v13 setValue:&off_1001EDDF8 forProperty:v10];
        v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v23 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Play data update succeeded for container with persistent ID: %lld", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  return 1;
}

void sub_100132F28(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 urlForBagKey:*(*(a1 + 32) + 8)];
  v7 = v6;
  if (a2 && v6)
  {
    v8 = [*(a1 + 32) _baseRequestWithURL:v6];
    v9 = [[ICStoreURLRequest alloc] initWithURLRequest:v8 requestContext:*(a1 + 40)];
    v10 = +[ICURLSessionManager defaultSession];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100133138;
    v15[3] = &unk_1001DF3C8;
    v15[4] = *(a1 + 32);
    [v10 enqueueDataRequest:v9 withCompletionHandler:v15];

LABEL_9:
    goto LABEL_10;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    *buf = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch URL from bag using key %{public}@. error=%{public}@", buf, 0x20u);
  }

  v14 = *(a1 + 32);
  if (!v5)
  {
    v8 = [NSError errorWithDomain:ICErrorDomain code:-7200 userInfo:0];
    [v14 _finishWithError:v8];
    goto LABEL_9;
  }

  [v14 _finishWithError:v5];
LABEL_10:
}

void sub_100133138(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 parsedBodyDictionary];
      v11 = [v6 msv_description];
      v14 = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ request completed with response: %{public}@ body: %{public}@ error=%{public}@", &v14, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [v5 parsedBodyDictionary];
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ request completed with response: %{public}@ body: %{public}@", &v14, 0x20u);
  }

  [*(a1 + 32) _finishWithResponse:v5 error:v6];
}

void sub_100133568(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  [v3 writeUInt32:v6 withCode:1836282979];
  [v3 writeUInt32:*(a1 + 40) withCode:1836413810];
  v8 = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  ICDAAPUtilitiesWriteContainer();
}

void sub_100133658(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_1001336F0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 128);
  v6 = a2;
  [*(a1 + 40) writeUInt8:DAAPPinTypeFromICLibraryPinEntityType() withCode:1835625316];
  v4 = *(a1 + 32);
  if (v4[13] < 1)
  {
    if (v4[16] == 4)
    {
      v5 = 1634353513;
    }

    else
    {
      v5 = 1634888036;
    }

    [v6 writeString:v4[14] withCode:v5];
  }

  else
  {
    [v6 writeUInt32:? withCode:?];
  }
}

void sub_100133DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"%@=%@", a2, a3];
  [v3 addObject:v4];
}

void sub_100134700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = [v3 responseCode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%p received response status code: %lu", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [v3 responseCode];
  if (v7 > 399)
  {
    if (v7 != 404 && v7 != 400)
    {
      goto LABEL_10;
    }

    v8 = 3;
  }

  else
  {
    v8 = 1;
    if (v7 != 200 && v7 != 204)
    {
LABEL_10:
      v8 = 2;
    }
  }

  [v6 setStatus:v8];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100135280(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentityStore:v3];
  [v4 setIdentity:*(a1 + 40)];
  [v4 setAllowsExpiredBags:1];
  v5 = [[ICURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v4 setAuthenticationProvider:v5];
}

void sub_100135318(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v6;
      v11 = "%{public}@: Did complete %{public}@. Encountered error: %{public}@.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v11, &v14, 0x20u);
    }
  }

  else if (v8)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    v18 = 2114;
    v19 = v5;
    v11 = "%{public}@: Did complete %{public}@. Received subscription status response %{public}@.";
    goto LABEL_6;
  }

  [*(a1 + 32) _updateWithSubscriptionStatusResponse:v5 error:v6];
  dispatch_group_leave(*(a1 + 48));
}

void sub_1001356C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v10 = "%{public}@: Did complete user identity properties request. Encountered error: %{public}@.";
      v11 = v7;
      v12 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v14 = 138543362;
    v15 = v13;
    v10 = "%{public}@: Did complete user identity properties request.";
    v11 = v7;
    v12 = 12;
    goto LABEL_6;
  }

  [*(a1 + 32) _updateWithIdentityProperties:v6 error:v5];
  dispatch_group_leave(*(a1 + 40));
}

void sub_100135B08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIdentityStore:v3];
  [v4 setIdentity:*(a1 + 40)];
  [v4 setAllowsExpiredBags:0];
  v5 = [[ICURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v4 setAuthenticationProvider:v5];
}

void sub_100135BA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v13 = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Did complete bag request. Encountered error: %{public}@.", &v13, 0x16u);
    }
  }

  else if (v8)
  {
    v10 = *(a1 + 32);
    v11 = [v5 serverCorrelationKey];
    v12 = [v5 serverEnvironment];
    v13 = 138544130;
    v14 = v10;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Did complete bag request. Received bag %{public}@ (serverCorrelationKey: %{public}@; serverEnvironment: %{public}@).", &v13, 0x2Au);
  }

  [*(a1 + 32) _updateWithBag:v5 error:v6];
  dispatch_group_leave(*(a1 + 40));
}

void sub_100136224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013624C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) _didCompletePrivacyPromptOperation:WeakRetained withStatus:a2 error:v5];
}

void sub_100136AC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  v5 = +[NSMutableArray array];
  v6 = [v3 executeQuery:@"SELECT DISTINCT (fetchable_artwork_token) withParameters:{store_cloud_id FROM best_artwork_token LEFT OUTER JOIN artwork ON fetchable_artwork_token = artwork_token JOIN container ON entity_pid = container_pid AND entity_type = ? WHERE artwork_token IS NULL AND best_artwork_token.artwork_type = ? AND fetchable_artwork_source_type = ? GROUP BY fetchable_artwork_token", &off_1001EE3E0}];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100136BF0;
  v9[3] = &unk_1001DF508;
  v7 = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v7;
  v11 = v5;
  v8 = v5;
  [v6 enumerateRowsWithBlock:v9];
  [*(a1 + 40) importCloudArtworkForRequests:v8];
}

void sub_100136BF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];

  v5 = [[CloudArtworkImportRequest alloc] initWithClientIdentity:*(a1 + 32)];
  [(CloudArtworkImportRequest *)v5 setCloudID:v4];
  [(CloudArtworkImportRequest *)v5 setToken:v6];
  [(CloudArtworkImportRequest *)v5 setMediaType:8];
  [(CloudArtworkImportRequest *)v5 setArtworkType:5];
  [(CloudArtworkImportRequest *)v5 setAllowsCellularData:*(a1 + 48)];
  [*(a1 + 40) addObject:v5];
}

void sub_100136D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  v5 = +[NSMutableArray array];
  v6 = [v3 executeQuery:@"SELECT DISTINCT (fetchable_artwork_token) withParameters:{store_saga_id, media_type FROM best_artwork_token LEFT OUTER JOIN artwork ON fetchable_artwork_token = artwork_token JOIN item_store ON entity_pid = item_store.item_pid AND entity_type = ? JOIN item USING (item_pid) WHERE artwork_token IS NULL AND best_artwork_token.artwork_type = ? AND fetchable_artwork_source_type = ? GROUP BY fetchable_artwork_token", &off_1001EE3C8}];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100136EC8;
  v9[3] = &unk_1001DF508;
  v7 = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v7;
  v11 = v5;
  v8 = v5;
  [v6 enumerateRowsWithBlock:v9];
  [*(a1 + 40) importCloudArtworkForRequests:v8];
}

void sub_100136EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];
  v5 = [v3 intForColumnIndex:2];

  v6 = [[CloudArtworkImportRequest alloc] initWithClientIdentity:*(a1 + 32)];
  [(CloudArtworkImportRequest *)v6 setCloudID:v4];
  [(CloudArtworkImportRequest *)v6 setToken:v7];
  [(CloudArtworkImportRequest *)v6 setMediaType:v5];
  [(CloudArtworkImportRequest *)v6 setArtworkType:1];
  [(CloudArtworkImportRequest *)v6 setAllowsCellularData:*(a1 + 48)];
  [*(a1 + 40) addObject:v6];
}

void sub_100137808(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICUpdateContentTasteRequestListener];
  v2 = qword_100213EA0;
  qword_100213EA0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100137B74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100137C10;
  v7[3] = &unk_1001DF618;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 cancelAllOperationsAndClearPendingChangesWithCompletionHandler:v7];
}

void sub_100137C10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100137CA0;
  v4[3] = &unk_1001DF618;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_100138324(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i was interrupted", &v5, 0x12u);
  }
}

void sub_1001383E8(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i was invalidated", &v5, 0x12u);
  }
}

void sub_1001385C8(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    if (*(a1 + 64))
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        v3 = [v2 userIdentity];
        v4 = +[ICMusicSubscriptionStatusController sharedStatusController];
        v5 = [*(a1 + 40) userIdentity];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001389FC;
        v20[3] = &unk_1001DF758;
        v20[4] = *(a1 + 32);
        v21 = v3;
        v24 = *(a1 + 56);
        v25 = *(a1 + 64);
        v22 = *(a1 + 40);
        v6 = *(a1 + 48);
        v7 = *(a1 + 80);
        v23 = v6;
        v26 = v7;
        v8 = v3;
        [v4 getSubscriptionStatusForUserIdentity:v5 withCompletionHandler:v20];

LABEL_13:
        return;
      }
    }

    v14 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 64);
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138543874;
      v32 = v16;
      v33 = 2048;
      v34 = v15;
      v35 = 2114;
      v36 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Cannot update content taste for artist with storeID %lld, configuration=%{public}@", buf, 0x20u);
    }

    v18 = *(a1 + 56);
    if (v18)
    {
      v19 = *(*(a1 + 32) + 24);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100138984;
      v27[3] = &unk_1001DF5C8;
      v28 = v18;
      dispatch_async(v19, v27);
      v8 = v28;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 64);
      *buf = 138543618;
      v32 = v10;
      v33 = 2048;
      v34 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Music app is not installed - not running content taste update operation for artist with storeID %lld", buf, 0x16u);
    }

    v12 = *(a1 + 56);
    if (v12)
    {
      v13 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10013890C;
      block[3] = &unk_1001DF5C8;
      v30 = v12;
      dispatch_async(v13, block);
      v8 = v30;
      goto LABEL_13;
    }
  }
}

void sub_10013890C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100138984(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1001389FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 hasCapability:512])
    {
      v7 = [[ICCloudContentTasteUpdateItem alloc] initWithStoreItemID:*(a1 + 72) mediaContentTasteItem:8 contentTaste:*(a1 + 80) configuration:*(a1 + 48) timeStamp:*(a1 + 56)];
      v8 = v7;
      if (*(a1 + 80) == 2 || !*(a1 + 88))
      {
        v41 = *(a1 + 32);
        v42 = *(v41 + 16);
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10013931C;
        v63[3] = &unk_1001DF730;
        v63[4] = v41;
        v64 = v7;
        v65 = *(a1 + 48);
        v66 = *(a1 + 64);
        dispatch_async(v42, v63);

        v15 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v9 = +[ICUserIdentityStore defaultIdentityStore];
      v10 = *(a1 + 40);
      v62 = 0;
      v11 = [v9 getPropertiesForUserIdentity:v10 error:&v62];
      v12 = v62;

      if (v11)
      {
        if ([v11 isActiveLocker])
        {
          v13 = +[ICDServer server];
          v14 = *(a1 + 48);
          v61 = v12;
          v51 = [v13 handlerWithType:0 configuration:v14 error:&v61];
          v15 = v61;

          if (v51)
          {
            v16 = sub_1001028AC();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              v17 = *(a1 + 32);
              v18 = *(a1 + 80);
              v19 = ICNSStringForICMediaContentTaste();
              v20 = *(a1 + 72);
              *buf = 138543874;
              *&buf[4] = v17;
              *&buf[12] = 2114;
              *&buf[14] = v19;
              *&buf[22] = 2048;
              v74 = v20;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%{public}@ Got request to %{public}@ item with storeID=%lld and the locker bit is set for the account", buf, 0x20u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v74 = sub_100139330;
            v75 = sub_100139340;
            v76 = 0;
            v21 = [*(a1 + 48) userIdentity];
            v50 = [ML3MusicLibrary musicLibraryForUserAccount:v21];

            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_100139348;
            v60[3] = &unk_1001DF640;
            v22 = *(a1 + 88);
            v60[4] = buf;
            v60[5] = v22;
            [v50 performReadOnlyDatabaseTransactionWithBlock:v60];
            if ([*(*&buf[8] + 40) length])
            {
              v71[0] = @"liked_state";
              v23 = [*(a1 + 32) _adjustedContentTasteForLibraryEndpoint:*(a1 + 80)];
              v72[0] = v23;
              v71[1] = @"liked_state_changed_date";
              v24 = *(a1 + 56);
              v25 = v24;
              if (!v24)
              {
                v25 = +[NSDate date];
              }

              v71[2] = @"cloud_universal_library_id";
              v26 = *(*&buf[8] + 40);
              v72[1] = v25;
              v72[2] = v26;
              v27 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:3, v50];
              if (!v24)
              {
              }

              v28 = *(a1 + 88);
              v29 = [*(a1 + 48) clientIdentity];
              [v51 setAlbumArtistProperties:v27 withArtistPersistentID:v28 clientIdentity:v29 completionHandler:*(a1 + 64)];
            }

            else if (*(a1 + 80) == 1)
            {
              [v51 favoriteEntityWithPersistentID:*(a1 + 88) storeID:*(a1 + 72) entityType:2 time:*(a1 + 56) completionHandler:*(a1 + 64)];
            }

            else
            {
              v48 = *(a1 + 32);
              v49 = *(v48 + 16);
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v56[2] = sub_100139444;
              v56[3] = &unk_1001DF730;
              v56[4] = v48;
              v57 = v8;
              v58 = *(a1 + 48);
              v59 = *(a1 + 64);
              dispatch_async(v49, v56);
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_30;
          }

          v12 = v15;
        }
      }

      else
      {
        v43 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 32);
          v45 = *(a1 + 40);
          *buf = 138543874;
          *&buf[4] = v44;
          *&buf[12] = 2114;
          *&buf[14] = v45;
          *&buf[22] = 2114;
          v74 = v12;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get properties for %{public}@, error=%{public}@", buf, 0x20u);
        }
      }

      v46 = *(a1 + 32);
      v47 = *(v46 + 16);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100139458;
      v52[3] = &unk_1001DF730;
      v52[4] = v46;
      v53 = v8;
      v54 = *(a1 + 48);
      v55 = *(a1 + 64);
      dispatch_async(v47, v52);

      v15 = v12;
LABEL_30:

      goto LABEL_31;
    }

    v35 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *(a1 + 32);
      v37 = *(a1 + 40);
      v38 = *(a1 + 72);
      *buf = 138543874;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = v37;
      *&buf[22] = 2048;
      v74 = v38;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ is not subscribed to Cloud Music Library. Not running content taste operation for artist with storeID %lld ", buf, 0x20u);
    }

    v39 = *(a1 + 64);
    if (v39)
    {
      v40 = *(*(a1 + 32) + 24);
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_1001392A4;
      v67[3] = &unk_1001DF5C8;
      v68 = v39;
      dispatch_async(v40, v67);
      v15 = v68;
      goto LABEL_32;
    }
  }

  else
  {
    v30 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v31;
      *&buf[12] = 2114;
      *&buf[14] = v32;
      *&buf[22] = 2114;
      v74 = v6;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get subscription status for %{public}@, error=%{public}@. Not running request", buf, 0x20u);
    }

    v33 = *(a1 + 64);
    if (v33)
    {
      v34 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10013922C;
      block[3] = &unk_1001DF5C8;
      v70 = v33;
      dispatch_async(v34, block);
      v15 = v70;
LABEL_32:
    }
  }
}

void sub_10013922C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_1001392A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100139330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100139348(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSNumber numberWithLongLong:v3];
  v12 = v5;
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  v7 = [v4 executeQuery:@"SELECT cloud_universal_library_id FROM album_artist WHERE album_artist_pid=?" withParameters:v6];

  v8 = [v7 objectForFirstRowAndColumn];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

void sub_100139620(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    if (*(a1 + 64) && *(a1 + 40))
    {
      v2 = [[ICCloudContentTasteUpdateItem alloc] initWithStoreItemID:*(a1 + 64) mediaContentTasteItem:3 contentTaste:*(a1 + 72) configuration:*(a1 + 40) timeStamp:*(a1 + 48)];
      if (*(a1 + 72) != 2 && *(a1 + 80))
      {
        v3 = [*(a1 + 40) userIdentity];
        v4 = +[ICUserIdentityStore defaultIdentityStore];
        v43 = 0;
        v5 = [v4 getPropertiesForUserIdentity:v3 error:&v43];
        v6 = v43;

        if (v5)
        {
          if ([v5 isActiveLocker])
          {
            v7 = +[ICDServer server];
            v8 = *(a1 + 40);
            v42 = v6;
            v9 = [v7 handlerWithType:0 configuration:v8 error:&v42];
            v10 = v42;

            if (v9)
            {
              v11 = sub_1001028AC();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
              {
                v12 = *(a1 + 32);
                v13 = *(a1 + 72);
                v14 = ICNSStringForICMediaContentTaste();
                v15 = *(a1 + 80);
                v16 = *(a1 + 64);
                *buf = 138544130;
                *&buf[4] = v12;
                *&buf[12] = 2114;
                *&buf[14] = v14;
                *&buf[22] = 2048;
                v51 = v15;
                LOWORD(v52) = 2048;
                *(&v52 + 2) = v16;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "%{public}@ Got request to %{public}@ album with persistentID=%lld, storeID=%lld and the locker bit is set for the account", buf, 0x2Au);
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v51 = sub_100139330;
              *&v52 = sub_100139340;
              *(&v52 + 1) = 0;
              v17 = [*(a1 + 40) userIdentity];
              v18 = [ML3MusicLibrary musicLibraryForUserAccount:v17];

              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_100139DC0;
              v41[3] = &unk_1001DF640;
              v19 = *(a1 + 80);
              v41[4] = buf;
              v41[5] = v19;
              [v18 performReadOnlyDatabaseTransactionWithBlock:v41];
              if ([*(*&buf[8] + 40) length])
              {
                v40 = v18;
                v48[0] = @"liked_state";
                v20 = [*(a1 + 32) _adjustedContentTasteForLibraryEndpoint:*(a1 + 72)];
                v49[0] = v20;
                v48[1] = @"liked_state_changed_date";
                v21 = *(a1 + 48);
                v22 = v21;
                if (!v21)
                {
                  v22 = +[NSDate date];
                }

                v48[2] = @"cloud_library_id";
                v23 = *(*&buf[8] + 40);
                v49[1] = v22;
                v49[2] = v23;
                v24 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
                if (!v21)
                {
                }

                v25 = *(a1 + 80);
                v26 = [*(a1 + 40) clientIdentity];
                [v9 setAlbumEntityProperties:v24 withAlbumPersistentID:v25 clientIdentity:v26 completionHandler:*(a1 + 56)];

                v18 = v40;
              }

              else if (*(a1 + 72) == 1)
              {
                [v9 favoriteEntityWithPersistentID:*(a1 + 80) storeID:*(a1 + 64) entityType:3 time:*(a1 + 48) completionHandler:*(a1 + 56)];
              }

              else
              {
                [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 40) withCompletionHandler:*(a1 + 56)];
              }

              _Block_object_dispose(buf, 8);
              goto LABEL_31;
            }

            v6 = v10;
          }
        }

        else
        {
          v38 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = *(a1 + 32);
            *buf = 138543874;
            *&buf[4] = v39;
            *&buf[12] = 2114;
            *&buf[14] = v3;
            *&buf[22] = 2114;
            v51 = v6;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get properties for %{public}@, error=%{public}@", buf, 0x20u);
          }
        }

        [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 40) withCompletionHandler:*(a1 + 56)];
        v10 = v6;
LABEL_31:

        goto LABEL_32;
      }

      [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 40) withCompletionHandler:*(a1 + 56)];
LABEL_32:

      return;
    }

    v32 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 64);
      v34 = *(a1 + 32);
      v35 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      *&buf[22] = 2114;
      v51 = v35;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@ Cannot update content taste for album with storeID %lld@, configuration=%{public}@", buf, 0x20u);
    }

    v36 = *(a1 + 56);
    if (v36)
    {
      v37 = *(*(a1 + 32) + 24);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100139D48;
      v44[3] = &unk_1001DF5C8;
      v45 = v36;
      dispatch_async(v37, v44);
      v2 = v45;
      goto LABEL_32;
    }
  }

  else
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      v29 = *(a1 + 64);
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ Music app is not installed - not running content taste update operation for album with storeID %lld", buf, 0x16u);
    }

    v30 = *(a1 + 56);
    if (v30)
    {
      v31 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100139CD0;
      block[3] = &unk_1001DF5C8;
      v47 = v30;
      dispatch_async(v31, block);
      v2 = v47;
      goto LABEL_32;
    }
  }
}

void sub_100139CD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_100139D48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100139DC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSNumber numberWithLongLong:v3];
  v12 = v5;
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  v7 = [v4 executeQuery:@"SELECT cloud_library_id FROM album WHERE album_pid=?" withParameters:v6];

  v8 = [v7 objectForFirstRowAndColumn];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 1;
}

void sub_10013A08C(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    if (*(a1 + 40) && *(a1 + 48))
    {
      v2 = [[ICCloudContentTasteUpdateItem alloc] initWithGlobalPlaylistID:*(a1 + 40) contentTaste:*(a1 + 72) configuration:*(a1 + 48)];
      if (*(a1 + 72) == 2 || !*(a1 + 80))
      {
        v30 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a1 + 32);
          *buf = 138543618;
          *&buf[4] = v31;
          *&buf[12] = 2114;
          *&buf[14] = v2;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Posting content taste for item=%{public}@", buf, 0x16u);
        }

        [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 48) withCompletionHandler:*(a1 + 64)];
        goto LABEL_31;
      }

      v3 = [*(a1 + 48) userIdentity];
      v4 = +[ICUserIdentityStore defaultIdentityStore];
      v46 = 0;
      v5 = [v4 getPropertiesForUserIdentity:v3 error:&v46];
      v6 = v46;

      if (v5)
      {
        if ([v5 isActiveLocker])
        {
          v7 = +[ICDServer server];
          v8 = *(a1 + 48);
          v45 = v6;
          v41 = [v7 handlerWithType:0 configuration:v8 error:&v45];
          v9 = v45;

          if (v41)
          {
            v10 = sub_1001028AC();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
            {
              v11 = *(a1 + 32);
              v12 = *(a1 + 72);
              v13 = ICNSStringForICMediaContentTaste();
              v14 = *(a1 + 40);
              *buf = 138543874;
              *&buf[4] = v11;
              *&buf[12] = 2114;
              *&buf[14] = v13;
              *&buf[22] = 2114;
              v54 = v14;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}@ Got request to %{public}@ playlist with globalID=%{public}@ and the locker bit is set for the account", buf, 0x20u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v54 = 0;
            v15 = [*(a1 + 48) userIdentity];
            v40 = [ML3MusicLibrary musicLibraryForUserAccount:v15];

            v42[0] = _NSConcreteStackBlock;
            v42[1] = 3221225472;
            v42[2] = sub_10013A880;
            v42[3] = &unk_1001DF6B8;
            v43 = *(a1 + 40);
            v44 = buf;
            [v40 performReadOnlyDatabaseTransactionWithBlock:v42];
            if (*(*&buf[8] + 24))
            {
              v51[0] = @"liked_state";
              v16 = [*(a1 + 32) _adjustedContentTasteForLibraryEndpoint:*(a1 + 72)];
              v52[0] = v16;
              v51[1] = @"liked_state_changed_date";
              v17 = *(a1 + 56);
              if (v17)
              {
                v18 = *(a1 + 56);
              }

              else
              {
                v18 = +[NSDate date];
              }

              v39 = v18;
              v52[1] = v18;
              v36 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
              v37 = *(a1 + 80);
              v38 = [*(a1 + 48) clientIdentity];
              [v41 setPlaylistProperties:v36 trackList:0 forPlaylistPersistentID:v37 clientIdentity:v38 completionHandler:*(a1 + 64)];

              if (!v17)
              {
              }
            }

            else
            {
              if (*(a1 + 72) != 1)
              {
                [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 48) withCompletionHandler:*(a1 + 64)];
                goto LABEL_39;
              }

              v34 = *(a1 + 80);
              v35 = *(a1 + 40);
              v16 = +[NSDate date];
              [v41 favoritePlaylistWithPersistentID:v34 globalID:v35 time:v16 completionHandler:*(a1 + 64)];
            }

LABEL_39:
            _Block_object_dispose(buf, 8);

            goto LABEL_30;
          }

          v6 = v9;
        }
      }

      else
      {
        v32 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 32);
          *buf = 138543874;
          *&buf[4] = v33;
          *&buf[12] = 2114;
          *&buf[14] = v3;
          *&buf[22] = 2114;
          v54 = v6;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get properties for %{public}@, error=%{public}@", buf, 0x20u);
        }
      }

      [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 48) withCompletionHandler:*(a1 + 64)];
      v9 = v6;
LABEL_30:

      goto LABEL_31;
    }

    v24 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      *buf = 138543874;
      *&buf[4] = v25;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      *&buf[22] = 2114;
      v54 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%{public}@ Cannot update content taste for item with globalPlaylistID=%{public}@, configuration=%{public}@", buf, 0x20u);
    }

    v28 = *(a1 + 64);
    if (v28)
    {
      v29 = *(*(a1 + 32) + 24);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10013A808;
      v47[3] = &unk_1001DF5C8;
      v48 = v28;
      dispatch_async(v29, v47);
      v2 = v48;
      goto LABEL_31;
    }
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Music app is not installed - not running content taste update operation for playlist %{public}@", buf, 0x16u);
    }

    v22 = *(a1 + 64);
    if (v22)
    {
      v23 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10013A790;
      block[3] = &unk_1001DF5C8;
      v50 = v22;
      dispatch_async(v23, block);
      v2 = v50;
LABEL_31:
    }
  }
}

void sub_10013A790(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10013A808(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10013A880(uint64_t a1, void *a2)
{
  v8 = *(a1 + 32);
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [v3 executeQuery:@"SELECT store_cloud_id FROM CONTAINER WHERE cloud_global_id=?" withParameters:{v4, v8}];

  v6 = [v5 objectForFirstRowAndColumn];
  *(*(*(a1 + 40) + 8) + 24) = [v6 longLongValue];

  return 1;
}

void sub_10013AB28(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    if (*(a1 + 72) && *(a1 + 40))
    {
      v2 = [[ICCloudContentTasteUpdateItem alloc] initWithStoreItemID:*(a1 + 72) mediaContentTasteItem:*(a1 + 64) contentTaste:*(a1 + 80) configuration:*(a1 + 40) timeStamp:*(a1 + 48)];
      if (*(a1 + 80) == 2 || !*(a1 + 88))
      {
        v32 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 32);
          *buf = 138543618;
          *&buf[4] = v33;
          *&buf[12] = 2114;
          *&buf[14] = v2;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Posting content taste for item=%{public}@", buf, 0x16u);
        }

        [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 40) withCompletionHandler:*(a1 + 56)];
        goto LABEL_31;
      }

      v3 = [*(a1 + 40) userIdentity];
      v4 = +[ICUserIdentityStore defaultIdentityStore];
      v46 = 0;
      v5 = [v4 getPropertiesForUserIdentity:v3 error:&v46];
      v6 = v46;

      if (v5)
      {
        if ([v5 isActiveLocker])
        {
          v7 = +[ICDServer server];
          v8 = *(a1 + 40);
          v45 = v6;
          v42 = [v7 handlerWithType:0 configuration:v8 error:&v45];
          v9 = v45;

          if (v42)
          {
            v10 = sub_1001028AC();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
            {
              v11 = *(a1 + 32);
              v12 = *(a1 + 80);
              v13 = ICNSStringForICMediaContentTaste();
              v14 = *(a1 + 72);
              *buf = 138543874;
              *&buf[4] = v11;
              *&buf[12] = 2114;
              *&buf[14] = v13;
              *&buf[22] = 2048;
              *&buf[24] = v14;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "%{public}@ Got request to %{public}@ item with storeID=%lld and the locker bit is set for the account", buf, 0x20u);
            }

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            *&buf[24] = 0;
            v15 = [*(a1 + 40) userIdentity];
            v41 = [ML3MusicLibrary musicLibraryForUserAccount:v15];

            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_10013B380;
            v44[3] = &unk_1001DF640;
            v16 = *(a1 + 88);
            v44[4] = buf;
            v44[5] = v16;
            [v41 performReadOnlyDatabaseTransactionWithBlock:v44];
            if (*(*&buf[8] + 24))
            {
              v51[0] = @"item_stats.liked_state";
              v39 = [*(a1 + 32) _adjustedContentTasteForLibraryEndpoint:*(a1 + 80)];
              v51[1] = @"item_stats.liked_state_changed_date";
              v52[0] = v39;
              v17 = *(a1 + 48);
              if (v17)
              {
                v18 = *(a1 + 48);
              }

              else
              {
                v18 = +[NSDate date];
              }

              v52[1] = v18;
              v36 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2, v39];
              v37 = *(*&buf[8] + 24);
              v38 = [*(a1 + 40) clientIdentity];
              [v42 setItemProperties:v36 forSagaID:v37 clientIdentity:v38 completionHandler:*(a1 + 56)];

              if (!v17)
              {
              }
            }

            else if (*(a1 + 80) == 1)
            {
              [v42 favoriteEntityWithPersistentID:*(a1 + 88) storeID:*(a1 + 72) entityType:0 time:*(a1 + 48) completionHandler:*(a1 + 56)];
            }

            else
            {
              [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 40) withCompletionHandler:*(a1 + 56)];
            }

            if (*(a1 + 80) == 1)
            {
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 3221225472;
              v43[2] = sub_10013B480;
              v43[3] = &unk_1001DF668;
              v43[4] = buf;
              v43[5] = 1;
              v43[6] = *(a1 + 88);
              [v41 performDatabaseTransactionWithBlock:v43];
            }

            _Block_object_dispose(buf, 8);
            goto LABEL_30;
          }

          v6 = v9;
        }
      }

      else
      {
        v34 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 32);
          *buf = 138543874;
          *&buf[4] = v35;
          *&buf[12] = 2114;
          *&buf[14] = v3;
          *&buf[22] = 2114;
          *&buf[24] = v6;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get properties for %{public}@, error=%{public}@", buf, 0x20u);
        }
      }

      [*(a1 + 32) _updateContentTasteForItem:v2 invalidatingLocalCache:0 configuration:*(a1 + 40) withCompletionHandler:*(a1 + 56)];
      v9 = v6;
LABEL_30:

      goto LABEL_31;
    }

    v25 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 64);
      v27 = *(a1 + 72);
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v28;
      *&buf[12] = 1024;
      *&buf[14] = v26;
      *&buf[18] = 2048;
      *&buf[20] = v27;
      *&buf[28] = 2114;
      *&buf[30] = v29;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@ Cannot update content taste for item type %d with storeId=%lld, configuration=%{public}@", buf, 0x26u);
    }

    v30 = *(a1 + 56);
    if (v30)
    {
      v31 = *(*(a1 + 32) + 24);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10013B308;
      v47[3] = &unk_1001DF5C8;
      v48 = v30;
      dispatch_async(v31, v47);
      v2 = v48;
      goto LABEL_31;
    }
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 64);
      v22 = *(a1 + 72);
      *buf = 138543874;
      *&buf[4] = v20;
      *&buf[12] = 1024;
      *&buf[14] = v21;
      *&buf[18] = 2048;
      *&buf[20] = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Music app is not installed - not running content taste update operation for item %d, id %lld", buf, 0x1Cu);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      v24 = *(*(a1 + 32) + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10013B290;
      block[3] = &unk_1001DF5C8;
      v50 = v23;
      dispatch_async(v24, block);
      v2 = v50;
LABEL_31:
    }
  }
}

void sub_10013B290(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10013B308(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10013B380(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSNumber numberWithLongLong:v3];
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v7 = [v4 executeQuery:@"SELECT store_saga_id FROM item_store WHERE item_pid=?" withParameters:v6];

  v8 = [v7 objectForFirstRowAndColumn];
  *(*(*(a1 + 32) + 8) + 24) = [v8 longLongValue];

  return 1;
}

uint64_t sub_10013B480(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  v11[0] = v4;
  v11[1] = &off_1001EDE70;
  v5 = [NSArray arrayWithObjects:v11 count:2];
  [v3 executeUpdate:@"UPDATE container SET date_modified=? WHERE distinguished_kind=?" withParameters:v5 error:0];

  if (!*(*(a1[4] + 8) + 24) && a1[5] == 1)
  {
    v6 = +[NSDate date];
    v10[1] = v6;
    v7 = [NSNumber numberWithLongLong:a1[6]];
    v10[2] = v7;
    v8 = [NSArray arrayWithObjects:v10 count:3];
    [v3 executeUpdate:@"UPDATE item SET in_my_library=? withParameters:date_added=? WHERE item_pid=?" error:{v8, 0}];
  }

  return 1;
}

void sub_10013B730(uint64_t a1)
{
  v2 = [*(a1 + 32) userIdentityStore];
  v3 = [*(a1 + 32) userIdentity];
  v12 = 0;
  v4 = [v2 DSIDForUserIdentity:v3 outError:&v12];
  v5 = v12;

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6 || ![v4 longValue])
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138543874;
      v14 = v8;
      v15 = 2048;
      v16 = v9;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Could not get DSID for configuration=%p, error=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v7 = [*(*(a1 + 40) + 32) objectForKey:v4];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013B900;
    v10[3] = &unk_1001DF618;
    v10[4] = *(a1 + 40);
    v11 = v4;
    [v7 cancelAllOperationsAndClearPendingChangesWithCompletionHandler:v10];
  }
}

void sub_10013B900(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013B990;
  v4[3] = &unk_1001DF618;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_10013BA60(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 40) == 1)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      *buf = 138543362;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ updating content taste for media items", buf, 0xCu);
    }

    v5 = a1[4];
    v6 = a1[5];
    v18 = 0;
    v7 = [v5 _contentTasteRequestHandlerForConfiguration:v6 outError:&v18];
    v8 = v18;
    v9 = a1[6];
    if (v8 || !v7)
    {
      if (v9)
      {
        v12 = *(a1[4] + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10013BC60;
        block[3] = &unk_1001DF5A0;
        v17 = v9;
        v16 = v8;
        dispatch_async(v12, block);
      }
    }

    else
    {
      [v7 updateContentTasteForReason:0 invalidatingLocalCache:1 completionHandler:v9];
    }
  }

  else
  {
    v10 = a1[6];
    if (!v10)
    {
      return;
    }

    v11 = *(v2 + 24);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013BC74;
    v13[3] = &unk_1001DF5C8;
    v14 = v10;
    dispatch_async(v11, v13);
    v8 = v14;
  }
}

void sub_10013BC74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10013BD60(uint64_t a1)
{
  v2 = [ICConnectionConfiguration alloc];
  v3 = +[ICUserIdentity activeAccount];
  v4 = +[ICUserIdentityStore defaultIdentityStore];
  v5 = [v2 initWithUserIdentity:v3 userIdentityStore:v4];

  v6 = *(a1 + 32);
  v9 = 0;
  v7 = [v6 _contentTasteRequestHandlerForConfiguration:v5 outError:&v9];
  v8 = v7;
  if (!v9 && v7)
  {
    [v7 updateContentTasteForReason:1 invalidatingLocalCache:0 completionHandler:0];
  }
}

void *sub_10013BE9C(void *result)
{
  if (*(result[4] + 40) == 1)
  {
    v1 = result;
    v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Music app is uninstalled - clearing all content taste handlers", &v4, 0xCu);
    }

    *(v1[4] + 40) = 0;
    return [v1[4] _cancelAllContentTasteRequestHandlers];
  }

  return result;
}

void *sub_10013BFE4(void *result)
{
  if ((*(result[4] + 40) & 1) == 0)
  {
    v1 = result;
    v2 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Music app is installed - starting a content taste update operation", &v4, 0xCu);
    }

    *(v1[4] + 40) = 1;
    return [v1[4] _postContentTasteChangesForPendingItems];
  }

  return result;
}

void sub_10013C45C(id a1)
{
  v1 = [[CloudContentTasteUpdateRequestListener alloc] _init];
  v2 = qword_100213E90;
  qword_100213E90 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10013C804(id a1)
{
  v1 = objc_alloc_init(CloudArtworkImportSetupOperation);
  v2 = qword_100213EB8;
  qword_100213EB8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10013CE8C(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  if ([v4 longLongValue] >= 1)
  {
    [*(a1 + 32) addObject:v4];
    [*(a1 + 40) addObject:*(a1 + 48)];
  }
}

void sub_10013CEF4(uint64_t a1, void *a2, void *a3)
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
    v9 = "Set album item properties response: %lu";
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
    v9 = "Set album item properties received no response";
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
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Set album item properties response with error: %{public}@", v17, 0xCu);
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

void sub_10013D514(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 writeUInt32:v3 withCode:1835624804];
  [v4 writeUInt32:*(a1 + 40) withCode:1634353999];
}

void sub_10013E370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013E3A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013E3B8(uint64_t a1, void *a2, void *a3)
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

void sub_10013E454(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  if ([v4 unsignedLongLongValue])
  {
    [*(a1 + 32) addCloudItemID:objc_msgSend(v4 idType:{"unsignedLongLongValue"), 0}];
  }
}

void sub_10013E4C0(uint64_t a1, void *a2, void *a3)
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

void sub_10013F180(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10013F1E0(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  if ([v4 unsignedLongLongValue])
  {
    [*(a1 + 32) addCloudItemID:objc_msgSend(v4 idType:{"unsignedLongLongValue"), 0}];
  }
}

void sub_10013F24C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10013F544(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 8);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;

      v5 = *(a1 + 8);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return _objc_release_x1(v3, v4);
}

id sub_10013FB04(void *a1)
{
  v1 = a1;
  v2 = [v1 userIdentityStore];
  v3 = [v1 userIdentity];

  v15 = 0;
  v4 = [v2 getPropertiesForUserIdentity:v3 error:&v15];
  v5 = v15;

  if (v5 || !v4)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not get active account. Treating automatic downloads as disabled", buf, 2u);
    }

    v10 = 0;
  }

  else
  {
    v6 = [v4 DSID];
    v7 = +[ACAccountStore ic_sharedAccountStore];
    v14 = 0;
    v8 = [v7 ic_storeAccountForStoreAccountID:v6 error:&v14];
    v9 = v14;

    if (v9 || !v8)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v6 longLongValue];
        *buf = 134218240;
        v17 = v12;
        v18 = 1024;
        v19 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not get account for DSID=%lld. Automatic Downloads are %{BOOL}u", buf, 0x12u);
      }

      v10 = 0;
    }

    else
    {
      v10 = [v8 ic_isAutomaticDownloadsEnabledForMediaKindMusic];
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v17) = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Automatic Downloads are %{BOOL}u.", buf, 8u);
      }
    }
  }

  return v10;
}

void sub_10013FD54(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "processing cloud add/favorite operation with response=%{public}@", buf, 0xCu);
  }

  if ([v5 count])
  {
    v9 = [v5 mutableCopy];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1001400F8;
    v29[3] = &unk_1001DF948;
    v30 = v7;
    v10 = v9;
    v31 = v10;
    v11 = v6;
    v32 = v11;
    v33 = v5;
    [v11 performDatabaseTransactionWithBlock:v29];
    v12 = [v10 count];
    if (v12)
    {
      v13 = v12;
      v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v36 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found %lu adam ids that didn't map to a track without a cloud-id, attempting with cloud-id now...", buf, 0xCu);
      }

      v15 = [v10 allValues];
      v16 = [v15 mutableCopy];

      v17 = ML3TrackPropertyStoreSagaID;
      v18 = [NSSet setWithArray:v16];
      v19 = [ML3ContainmentPredicate predicateWithProperty:v17 values:v18];

      v20 = [ML3Track allItemsQueryWithLibrary:v11 predicate:v19 orderingTerms:&__NSArray0__struct usingSections:0];
      v34 = v17;
      v21 = [NSArray arrayWithObjects:&v34 count:1];
      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_1001406C0;
      v27 = &unk_1001DF8D0;
      v22 = v16;
      v28 = v22;
      [v20 enumeratePersistentIDsAndProperties:v21 usingBlock:&v24];

      if ([v22 count])
      {
        v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v36 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "The server returned cloud-ids that are not in the database, but should be: %{public}@", buf, 0xCu);
        }
      }
    }
  }
}

uint64_t sub_1001400F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  v28 = v3;
  [v3 setPrivacyContext:v4];

  v5 = objc_alloc_init(NSMutableSet);
  v6 = [*(a1 + 40) allValues];
  v7 = [NSSet setWithArray:v6];
  v8 = ML3TrackPropertyStoreSagaID;
  v30 = [ML3ContainmentPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID values:v7];

  v29 = [ML3Track queryWithLibrary:*(a1 + 48) predicate:v30];
  v60 = v8;
  v9 = [NSArray arrayWithObjects:&v60 count:1];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100140798;
  v51[3] = &unk_1001DF8D0;
  v10 = v5;
  v52 = v10;
  [v29 enumeratePersistentIDsAndProperties:v9 usingBlock:v51];

  v11 = *(a1 + 56);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1001407AC;
  v48[3] = &unk_1001DF8F8;
  v12 = v10;
  v49 = v12;
  v50 = *(a1 + 40);
  [v11 enumerateKeysAndObjectsUsingBlock:v48];
  if ([*(a1 + 40) count])
  {
    v13 = [ML3ComparisonPredicate predicateWithProperty:v8 equalToInt64:0];
    v59[0] = v13;
    v14 = [*(a1 + 40) allKeys];
    v15 = [NSSet setWithArray:v14];
    v16 = ML3TrackPropertySubscriptionStoreItemID;
    v17 = [ML3ContainmentPredicate predicateWithProperty:ML3TrackPropertySubscriptionStoreItemID values:v15];
    v59[1] = v17;
    v18 = [NSArray arrayWithObjects:v59 count:2];
    v19 = [ML3AllCompoundPredicate predicateMatchingPredicates:v18];

    v20 = [ML3Track queryWithLibrary:*(a1 + 48) predicate:v19];
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_1001408A4;
    v46 = sub_1001408B4;
    v47 = +[NSMutableArray array];
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_1001408A4;
    v40 = sub_1001408B4;
    v41 = +[NSMutableArray array];
    v58 = v16;
    v21 = [NSArray arrayWithObjects:&v58 count:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1001408BC;
    v31[3] = &unk_1001DF920;
    v32 = *(a1 + 56);
    v33 = *(a1 + 40);
    v34 = &v42;
    v35 = &v36;
    [v20 enumeratePersistentIDsAndProperties:v21 usingBlock:v31];

    if ([v43[5] count])
    {
      v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v37[5];
        v24 = v43[5];
        *buf = 138543618;
        v55 = v23;
        v56 = 2114;
        v57 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting sagaIDS=%{public}@ for trackPIDS=%{public}@", buf, 0x16u);
      }

      v25 = v37[5];
      v53 = v8;
      v26 = [NSArray arrayWithObjects:&v53 count:1];
      [ML3Track setDifferentValues:v25 forProperties:v26 forEntityPersistentIDs:v43[5] inLibrary:*(a1 + 48) usingConnection:v28];
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
  }

  return 1;
}

void sub_1001406C0(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  if (v4)
  {
    [*(a1 + 32) removeObject:v4];
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = [v4 longLongValue];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found cloud-id already in library: %lld", &v6, 0xCu);
    }
  }
}

id *sub_100140798(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void sub_1001407AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [v6 longLongValue];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Track with cloud-id %lld is already in the library, no updates needed...", &v8, 0xCu);
    }

    [*(a1 + 40) removeObjectForKey:v5];
  }
}

uint64_t sub_1001408A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001408BC(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  if (v5)
  {
    v6 = [*(a1 + 32) objectForKey:v5];
    [*(a1 + 40) removeObjectForKey:v5];
    if (v6 && [v6 longLongValue] >= 1)
    {
      v7 = *(*(*(a1 + 48) + 8) + 40);
      v8 = [NSNumber numberWithLongLong:a2];
      [v7 addObject:v8];

      v9 = *(*(*(a1 + 56) + 8) + 40);
      v11 = v6;
      v10 = [NSArray arrayWithObjects:&v11 count:1];
      [v9 addObject:v10];
    }
  }
}

void sub_100141044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100141068(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100141080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    v10 = v25 = v6;
    v11 = *(a1 + 32);
    if ([v11 method])
    {
      v12 = @"POST";
    }

    else
    {
      v12 = @"GET";
    }

    v13 = [*(a1 + 32) action];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v5 responseCode];
    v17 = [v5 responseData];
    *buf = 138545154;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v15;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v16;
    v40 = 2048;
    v41 = [v17 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);

    v6 = v25;
  }

  if (v6)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SagaRemoveItemOperation failed with error: %{public}@", buf, 0xCu);
    }
  }

  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v5;
  v21 = v5;

  v22 = *(a1 + 40);
  v23 = [v21 responseCode];
  if (v23 > 399)
  {
    if (v23 != 404 && v23 != 400)
    {
      goto LABEL_17;
    }

    v24 = 3;
  }

  else
  {
    v24 = 1;
    if (v23 != 200 && v23 != 204)
    {
LABEL_17:
      v24 = 2;
    }
  }

  [v22 setStatus:v24];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100141898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  [v3 writeUInt32:v6 withCode:1836282979];
  [v3 writeUInt32:*(a1 + 72) withCode:1836413810];
  v15 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v13 = v12;
  v14 = v11;
  ICDAAPUtilitiesWriteContainer();
}

void sub_1001419EC(uint64_t a1)
{
  v10 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v8 = v7;
  v9 = v6;
  ICDAAPUtilitiesWriteContainer();
}

void sub_100141AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 64) >= 1)
  {
    [v3 writeSInt64:? withCode:?];
    goto LABEL_10;
  }

  if ([*(a1 + 32) length])
  {
    v4 = *(a1 + 32);
  }

  else if ([*(a1 + 40) length])
  {
    v4 = *(a1 + 40);
  }

  else
  {
    if (![*(a1 + 48) length])
    {
      goto LABEL_10;
    }

    v4 = *(a1 + 48);
  }

  [v6 writeString:v4 withCode:1634353993];
LABEL_10:
  [*(a1 + 56) timeIntervalSince1970];
  [v6 writeUInt32:v5 withCode:1634036850];
}

void sub_1001426DC(id a1)
{
  v1 = [ArtistImageRequestHandler alloc];
  v4 = objc_opt_new();
  v2 = [(ArtistImageRequestHandler *)v1 initWithConfiguration:v4];
  v3 = qword_100213ED0;
  qword_100213ED0 = v2;
}

void sub_1001427EC(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100213EC0;
  qword_100213EC0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001429BC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 writeUInt32:*(a1 + 72) withCode:1836413810];
  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
  if (*(a1 + 64))
  {
    goto LABEL_4;
  }

  if ([*(a1 + 48) length])
  {
    v4 = *(a1 + 64);
LABEL_4:
    v5 = *(a1 + 48);
    ICDAAPUtilitiesWriteContainer();
  }
}

void sub_100142B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 writeSInt64:objc_msgSend(*(*(&v9 + 1) + 8 * v8) withCode:{"longLongValue", v9), 1634025833}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }

  else if (*(a1 + 48) < 1)
  {
    [v3 writeString:*(a1 + 40) withCode:1634357319];
  }

  else
  {
    [v3 writeUInt32:? withCode:?];
  }
}

id sub_100142C64(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    return [a2 writeSInt64:v2 withCode:1634029641];
  }

  else
  {
    return [a2 writeString:*(a1 + 32) withCode:1634357319];
  }
}

void sub_100144400(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 writeUInt32:v3 withCode:1836413810];
  v5 = *(a1 + 32);
  ICDAAPUtilitiesWriteContainer();
}

void sub_100144D64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 writeUInt32:v3 withCode:1836413810];
  v5 = *(a1 + 32);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10014651C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v13 = 134218242;
      v14 = v6;
      v15 = 2114;
      v16 = v3;
      v7 = "ICDBackgroundTaskManager %p - jaliscoDeferredPushUpate - Failed - error=%{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v13, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 134217984;
    v14 = v11;
    v7 = "ICDBackgroundTaskManager %p - jaliscoDeferredPushUpate - Succeeded";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v12);
}

void sub_100146828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v13 = 134218242;
      v14 = v6;
      v15 = 2114;
      v16 = v3;
      v7 = "ICDBackgroundTaskManager %p - sagaDeferredPushUpate - Failed - error=%{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v13, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 134217984;
    v14 = v11;
    v7 = "ICDBackgroundTaskManager %p - sagaDeferredPushUpate - Succeeded";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v12);
}

id sub_100146D24(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10014704C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100147078(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = a1[4];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100147150;
    v5[3] = &unk_1001DFBB0;
    v6 = WeakRetained;
    v7 = a1[5];
    v8 = a1[4];
    [v6 _handleTask:v4 completion:v5];
  }
}

void sub_100147150(uint64_t a1, uint64_t a2)
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 134218242;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ICDBackgroundTaskManager %p - scheduleTask - Task failed [%{public}@]", &v11, 0x16u);
    }

    v8 = +[ICBGTaskScheduler sharedTaskScheduler];
    [v8 scheduleTask:*(a1 + 40) afterDelay:0 withUserData:3600.0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 134218242;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - scheduleTask - Task succeeded [%{public}@]", &v11, 0x16u);
    }

    [*(a1 + 32) _stopTask:*(a1 + 48)];
  }
}

void sub_100147BB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _pollingRefreshIntervalSecondsUsingBag:v5];
  v8 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 134218240;
    v14 = v9;
    v15 = 2048;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - startPeriodicPolling - Setting timer to perform periodic poll for %llds", buf, 0x16u);
  }

  v10 = +[ICBGTaskScheduler sharedTaskScheduler];
  if (([v10 hasScheduledTask:@"com.apple.itunescloud.ICDBackgroundTaskManager.periodic-poll-activity"] & 1) == 0)
  {
    [v10 scheduleRecurringTask:@"com.apple.itunescloud.ICDBackgroundTaskManager.periodic-poll-activity" withInterval:0 afterDelay:v7 withUserData:v7];
  }

  objc_initWeak(buf, *(a1 + 32));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100147DA0;
  v11[3] = &unk_1001DFB60;
  objc_copyWeak(&v12, buf);
  [v10 registerForTask:@"com.apple.itunescloud.ICDBackgroundTaskManager.periodic-poll-activity" handler:v11];
  [*(a1 + 40) endTransaction];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void sub_100147D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100147DA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained accountManager];
    v4 = [v3 state];
    v5 = [v4 supportedConfigurations];
    v6 = [v5 count];

    v7 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 134217984;
        v15 = v2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - periodicPolling - Performing periodic sync", buf, 0xCu);
      }

      v9 = [v2 handlerCoordinator];
      v10 = [v2 accountManager];
      v11 = [v10 state];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100147F88;
      v12[3] = &unk_1001DFB38;
      v13 = v2;
      [v9 enumerateHandlersForAccountState:v11 usingBlock:v12];

      v7 = v13;
    }

    else if (v8)
    {
      *buf = 134217984;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDBackgroundTaskManager %p - periodicPolling - Ignoring polling [No configurations]", buf, 0xCu);
    }
  }
}

void sub_100147F88(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100148030;
  v5[3] = &unk_1001DFB10;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  [v4 updateLibraryWithReason:4 completionHandler:v5];
}

void sub_100148030(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "BackgroundTasks");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 40);
      v19 = 134218754;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      v25 = 2114;
      v26 = v3;
      v11 = "ICDBackgroundTaskManager %p - periodicPolling - Failed to update %@ %p [error] - error=%{public}@";
      v12 = v5;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v19, v14);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v17 = objc_opt_class();
    v9 = NSStringFromClass(v17);
    v18 = *(a1 + 40);
    v19 = 134218498;
    v20 = v16;
    v21 = 2112;
    v22 = v9;
    v23 = 2048;
    v24 = v18;
    v11 = "ICDBackgroundTaskManager %p - periodicPolling - Updated %@ %p [no error]";
    v12 = v5;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 32;
    goto LABEL_6;
  }
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v4 = _div(__x, __y);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v4 = _ldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v4 = _lldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}