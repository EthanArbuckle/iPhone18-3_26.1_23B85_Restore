id sub_1000010B8(uint64_t a1)
{
  if (qword_100011478 != -1)
  {
    sub_100005ECC();
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100001320;
  v11 = sub_100001330;
  v12 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001338;
  block[3] = &unk_10000C420;
  block[4] = &v7;
  block[5] = a1;
  dispatch_sync(qword_100011470, block);
  v2 = v8[5];
  if (!v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000013B8;
    v5[3] = &unk_10000C420;
    v5[4] = &v7;
    v5[5] = a1;
    dispatch_barrier_sync(qword_100011470, v5);
    v2 = v8[5];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);

  return v3;
}

void sub_100001224(id a1)
{
  v1 = dispatch_queue_create("com.apple.weather.watchapp.nwpdloggingqueue", &_dispatch_queue_attr_concurrent);
  v2 = qword_100011470;
  qword_100011470 = v1;

  v7[0] = &off_10000CAF0;
  v7[1] = &off_10000CB08;
  v8[0] = @"general";
  v8[1] = @"app-workspace-observer";
  v7[2] = &off_10000CB20;
  v8[2] = @"preferences-monitor";
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = qword_100011460;
  qword_100011460 = v3;

  v5 = [NSMutableDictionary dictionaryWithCapacity:18];
  v6 = qword_100011468;
  qword_100011468 = v5;
}

uint64_t sub_100001320(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001338(uint64_t a1)
{
  v2 = qword_100011468;
  v6 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000013B8(uint64_t a1)
{
  v2 = qword_100011460;
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v14 = [v2 objectForKeyedSubscript:v3];

  if (v14)
  {
    v4 = v14;
    v5 = os_log_create("com.apple.weather.watchapp", [v14 cStringUsingEncoding:4]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(*(a1 + 32) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (!v11)
  {
    objc_storeStrong(v9, &_os_log_default);
    v10 = *(*(*(a1 + 32) + 8) + 40);
  }

  v12 = qword_100011468;
  v13 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v12 setObject:v10 forKeyedSubscript:v13];
}

uint64_t sub_100001568(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_100011480 = objc_opt_new();

  return _objc_release_x1();
}

BOOL sub_1000016C0(id a1, LSApplicationProxy *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(LSApplicationProxy *)a2 bundleIdentifier:a3];
  v5 = [@"com.apple.weather" isEqualToString:v4];

  return v5;
}

BOOL sub_1000017C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _weatherApplicationProxyFromProxies:*(a1 + 40)];
  if (v2)
  {
    v3 = sub_1000010B8(1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "State changed to %lu for Weather App installation state.", buf, 0xCu);
    }

    v5 = [*(a1 + 32) delegate];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000190C;
    v8[3] = &unk_10000C4A8;
    v6 = *(a1 + 48);
    v8[4] = *(a1 + 32);
    v8[5] = v6;
    [v5 performBlockOnOperationQueue:v8];
  }

  return v2 != 0;
}

void sub_10000190C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 weatherAppInstallationStateDidChange:*(a1 + 40)];
}

void sub_100001C44(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!sub_1000064CC(v3))
  {
    v4 = sub_1000010B8(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Phone unlocked!", v5, 2u);
    }

    [v2 _notifyToRestartMonitoring];
  }
}

id sub_100001E1C(uint64_t a1)
{
  [*(a1 + 32) _stopMonitoring];
  v2 = *(a1 + 32);

  return [v2 _cleanupSharedManagers];
}

id sub_100001EE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001F5C;
  v4[3] = &unk_10000C590;
  v4[4] = v1;
  return [v2 addOperationWithBlock:v4];
}

void sub_100001F5C(uint64_t a1)
{
  v2 = sub_1000010B8(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Start monitoring.", buf, 2u);
  }

  v3 = [*(a1 + 32) monitoringStarted];
  v4 = *(a1 + 32);
  if (v3)
  {
    goto LABEL_15;
  }

  [v4 setMonitoringDeferred:0];
  if (!sub_1000064A0(v5))
  {
    v6 = sub_1000010B8(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not unlocked after first boot; punting.", buf, 2u);
    }

    [*(a1 + 32) setMonitoringDeferred:1];
  }

  if (([*(a1 + 32) monitoringDeferred] & 1) == 0)
  {
    v7 = [*(a1 + 32) syncCoordinator];
    v8 = [v7 syncRestriction];

    if (v8 == 1)
    {
      v9 = sub_1000010B8(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Our PSYSyncCoordinator is PSYSyncRestrictionLimitPush; punting.", buf, 2u);
      }

      [*(a1 + 32) setMonitoringDeferred:1];
    }
  }

  if ([*(a1 + 32) monitoringDeferred])
  {
    v4 = *(a1 + 32);
LABEL_15:
    [v4 _endXPCTransactionIfOK];
    return;
  }

  v10 = +[NanoWeatherPreferences sharedPreferences];
  [*(a1 + 32) setWatchPreferences:v10];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v11 = [*(a1 + 32) companionCityList];
  v12 = [v11 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v13 = [*(a1 + 32) companionWeatherPrefs];
  v14 = [v13 lastUpdated];

  v15 = [v10 cityList];
  v16 = [v10 lastUpdated];
  v17 = sub_1000010B8(2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"nil";
    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = @"nil";
    }

    if (v16)
    {
      v18 = v16;
    }

    *buf = 138543618;
    v62 = v19;
    v63 = 2114;
    v64 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Phone last updated? %{public}@, Watch last updated? %{public}@.", buf, 0x16u);
  }

  v20 = sub_1000010B8(2);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    NSStringFromSelector("name");
    v21 = v53 = v14;
    [v12 valueForKeyPath:v21];
    v51 = v16;
    v22 = v10;
    v24 = v23 = v12;
    v25 = [v24 componentsJoinedByString:{@", "}];
    v26 = [v15 valueForKeyPath:@"Name"];
    v27 = [v26 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v62 = v25;
    v63 = 2112;
    v64 = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Phone list? %@; Watch list? %@.", buf, 0x16u);

    v12 = v23;
    v10 = v22;
    v16 = v51;

    v14 = v53;
  }

  if (v16 && [(__CFString *)v14 compare:v16]!= 1)
  {
    if (!v14 || [(__CFString *)v16 compare:v14]== 1)
    {
      v52 = v16;
      v54 = v14;
      v48 = v12;
      v49 = v10;
      v50 = a1;
      v30 = sub_1000010B8(2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Phone has outdated city list; overwrite phone's list with watch's list.", buf, 2u);
      }

      v31 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v47 = v15;
      v32 = v15;
      v33 = [v32 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v57;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v57 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v56 + 1) + 8 * i);
            v38 = [[City alloc] initWithDictionaryRepresentation:v37];
            if (v38)
            {
              [v31 addObject:v38];
            }

            else
            {
              v39 = sub_1000010B8(2);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [v37 allKeys];
                v41 = [v40 componentsJoinedByString:{@", "}];
                *buf = 138543362;
                v62 = v41;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Couldn't create a City object from the city dictionary. The dictionary may be missing required values. Keys present in the dictionary: %{public}@.", buf, 0xCu);
              }
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v34);
      }

      v42 = sub_1000010B8(2);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Not syncing list to phone because iOS version does not support watch to phone syncing. ", buf, 2u);
      }

      v29 = 0;
      v10 = v49;
      a1 = v50;
      v15 = v47;
      v12 = v48;
      v16 = v52;
      v14 = v54;
      goto LABEL_50;
    }

    if (![v15 count])
    {
      v45 = sub_1000010B8(2);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Watch has zero cities in list; forcing sync of cloud preferences.", buf, 2u);
      }

      v46 = +[WeatherPreferences sharedPreferences];
      [v46 forceSyncCloudPreferences];

      v29 = 1;
      goto LABEL_50;
    }
  }

  else
  {
    v28 = sub_1000010B8(2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Watch has outdated city list; overwrite watch's list with phone's list.", buf, 2u);
    }

    [v10 setCityListFromCityObjs:v12 lastUpdated:v14];
  }

  v29 = 0;
LABEL_50:
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100002740;
  v55[3] = &unk_10000C590;
  v55[4] = *(a1 + 32);
  v43 = objc_retainBlock(v55);
  if (v29)
  {
    v44 = sub_1000010B8(2);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Phone list was updated during setup; reload phone list.", buf, 2u);
    }

    [*(a1 + 32) _loadCompanionCityListOnCompletion:v43];
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v43);
  }
}

void sub_100002740(uint64_t a1)
{
  v2 = [*(a1 + 32) companionWeatherPrefs];
  [v2 setSyncDelegate:*(a1 + 32)];

  v3 = [*(a1 + 32) utilityQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000027EC;
  v4[3] = &unk_10000C590;
  v4[4] = *(a1 + 32);
  [v3 addOperationWithBlock:v4];
}

void sub_1000028E4(uint64_t a1, void *a2)
{
  v3 = sub_1000010B8(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Watch prefs updated.", buf, 2u);
  }

  v4 = a2;
  objc_initWeak(buf, v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004868;
  v6[3] = &unk_10000C608;
  objc_copyWeak(&v7, buf);
  v5 = objc_retainBlock(v6);
  [v4 _loadCompanionCityListOnCompletion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void sub_1000029F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100002A0C(uint64_t a1)
{
  if (([*(a1 + 32) fullUpdateDone] & 1) == 0)
  {
    [*(a1 + 32) _doFullUpdateOfNanoPrefs:1];
  }

  if ([*(a1 + 32) syncCoordinatorWaitingForCompletion])
  {
    [*(a1 + 32) setSyncCoordinatorWaitingForCompletion:0];
    v2 = [*(a1 + 32) syncCoordinator];
    v3 = [v2 activeSyncSession];
    [v3 syncDidComplete];
  }

  v4 = +[NanoWeatherAppWorkSpaceObserver sharedWorkspaceObserver];
  [v4 startObservingAppInstallation];

  v5 = +[NanoWeatherAppWorkSpaceObserver sharedWorkspaceObserver];
  [v5 setDelegate:*(a1 + 32)];

  v6 = *(a1 + 32);

  return [v6 _endXPCTransactionIfOK];
}

void sub_100002F20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002F3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    [v3 _endXPCTransactionIfOK];
    WeakRetained = v3;
  }
}

void sub_100003118(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100003134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained monitoringDeferred])
  {
    [WeakRetained setSyncCoordinatorWaitingForCompletion:1];
    [WeakRetained _notifyToRestartMonitoring];
  }

  else if ([WeakRetained fullUpdateDone])
  {
    [*(a1 + 32) syncDidComplete];
  }

  else
  {
    [WeakRetained setSyncCoordinatorWaitingForCompletion:1];
  }

  [WeakRetained _endXPCTransactionIfOK];
}

void sub_10000328C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000032A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained monitoringDeferred])
  {
    v2 = [*(a1 + 32) syncCoordinator];
    v3 = [v2 syncRestriction];

    if (!v3)
    {
      [WeakRetained _notifyToRestartMonitoring];
    }
  }

  [WeakRetained _endXPCTransactionIfOK];
}

void sub_100003474(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003538;
  v3[3] = &unk_10000C608;
  objc_copyWeak(&v4, &location);
  [v2 _addOperationWithQOS:25 usingBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_10000351C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100003538(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[WeatherPreferences sharedPreferences];
  [v1 synchronizeStateToDisk];

  [WeakRetained _doFullUpdateOfNanoPrefs:0];
  [WeakRetained _endXPCTransactionIfOK];
}

void sub_100003684(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100003748;
  v3[3] = &unk_10000C608;
  objc_copyWeak(&v4, &location);
  [v2 _addOperationWithQOS:25 usingBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_10000372C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100003748(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[WeatherPreferences sharedPreferences];
  [v1 synchronizeStateToDisk];

  [WeakRetained _beginDelayingNanoPreferencesSync];
  [WeakRetained _updateCityList];
  [WeakRetained _endDelayingNanoPreferencesSync];
  [WeakRetained _endXPCTransactionIfOK];
}

void sub_100003D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003D38(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v11 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 locationID];

  v10 = [v11 locationID];
  LOBYTE(v8) = [v9 isEqualToString:v10];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id sub_100003EF4(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"UUID"];
  v4 = [*(a1 + 32) locationID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_10000431C(uint64_t a1)
{
  v2 = [*(a1 + 32) companionWeatherPrefs];

  if (!v2)
  {
    v3 = sub_1000010B8(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up companion WeatherPreferences.", &v20, 2u);
    }

    v4 = +[WeatherPreferences sharedPreferences];
    v5 = [*(a1 + 32) _defaultCities];
    [v4 setDefaultCities:v5];

    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v4;
  }

  v8 = [*(a1 + 32) companionWeatherPrefs];
  v9 = [v8 loadSavedCities];

  v10 = sub_1000010B8(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector("name");
    v12 = [v9 valueForKeyPath:v11];
    v13 = [v12 componentsJoinedByString:{@", "}];
    v20 = 138412290;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "City list from phone? %@.", &v20, 0xCu);
  }

  v14 = [NSPredicate predicateWithBlock:&stru_10000C698];
  v15 = [v9 filteredArrayUsingPredicate:v14];

  v16 = sub_1000010B8(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector("name");
    v18 = [v15 valueForKeyPath:v17];
    v19 = [v18 componentsJoinedByString:{@", "}];
    v20 = 138412290;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Static city list from phone? %@.", &v20, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  [*(a1 + 32) setCompanionCityList:v15];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 40) + 16))();
}

BOOL sub_1000045EC(id a1, City *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(City *)v3 isLocalWeatherCity];
  if (v4)
  {
    v5 = sub_1000010B8(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(City *)v3 name];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Filtering %@ as the phone thinks its a local city.", &v8, 0xCu);
    }
  }

  return v4 ^ 1;
}

void sub_100004868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004924;
  v3[3] = &unk_10000C608;
  objc_copyWeak(&v4, (a1 + 32));
  [WeakRetained _addOperationWithQOS:25 usingBlock:v3];
  objc_destroyWeak(&v4);
}

void sub_100004924(uint64_t a1)
{
  v2 = +[NanoWeatherPreferences sharedPreferences];
  [v2 syncPreferencesWithDisk];
  v3 = [v2 cityObjectsListFromNanoPreferences];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_1000010B8(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector("name");
    v7 = [v3 valueForKeyPath:v6];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loaded watch list to sync to phone: %@.", &v10, 0xCu);
  }

  v9 = sub_1000010B8(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not syncing list to phone because iOS version does not support watch to phone syncing. ", &v10, 2u);
  }
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_transaction_create();
  v2 = objc_alloc_init(NanoWeatherPreferencesMonitor);
  [(NanoWeatherPreferencesMonitor *)v2 run];
  v3 = dispatch_queue_create("com.apple.nanoweatherprefsd.notificationqueue", 0);
  v4 = qword_100011490;
  qword_100011490 = v3;

  xpc_set_event_stream_handler("com.apple.distnoted.matching", qword_100011490, &stru_10000C6E0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", qword_100011490, &stru_10000C6E0);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_100011490);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100004D00;
  handler[3] = &unk_10000C590;
  v9 = v2;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(v5);

  objc_autoreleasePoolPop(v0);
  v6 = +[NSRunLoop mainRunLoop];
  while (1)
  {
    v7 = +[NSDate distantFuture];
    [v6 runMode:NSDefaultRunLoopMode beforeDate:v7];
  }
}

void sub_100004C28(id a1, OS_xpc_object *a2)
{
  v2 = [NSString stringWithCString:xpc_dictionary_get_string(a2 encoding:_xpc_event_key_name), 1];
  v3 = sub_1000010B8(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Processing notification for %{public}@.", &v4, 0xCu);
  }
}

void sub_100004D00(uint64_t a1)
{
  v2 = sub_1000010B8(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Got SIGTERM; Exiting...", v3, 2u);
  }

  [*(a1 + 32) terminate];
  exit(0);
}

void sub_100004DB4(id a1)
{
  qword_100011498 = objc_alloc_init(NanoWeatherPreferences);

  _objc_release_x1();
}

void sub_100005E0C(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v7 = [sqlite3_user_data(a1) citySearchMatcher];
    if (sqlite3_value_text(*a3))
    {
      v5 = v7 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v7 matchesUTF8String:?];
    }

    sqlite3_result_int(a1, v6);
  }

  else
  {

    sqlite3_result_error(a1, "ALBasicDiacriticMatch: wrong number of arguments", -1);
  }
}

void sub_100005EF4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't open localized name database: error %i", v2, 8u);
}

uint64_t sub_1000064A0(double a1)
{
  if (!atomic_load(&unk_100011458))
  {
    sub_1000064F8(a1);
  }

  return MKBDeviceUnlockedSinceBoot();
}

uint64_t sub_1000064CC(double a1)
{
  if (!atomic_load(&unk_100011458))
  {
    sub_1000064F8(a1);
  }

  return MKBGetDeviceLockState();
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1000064F8(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 0);
  atomic_store(1u, &unk_100011458);
  return a1;
}