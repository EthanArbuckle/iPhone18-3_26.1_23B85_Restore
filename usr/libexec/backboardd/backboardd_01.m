void sub_100028378(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3 || (v6 = v3, v4 = [v3 isEqualToString:BKSDisplayUUIDMainKey], v6, v3 = v6, v4))
  {

    v3 = 0;
  }

  v7 = v3;
  v5 = sub_100007D54(v3, "_BKDisplaySetDisabled");
  [v5 setDisablesUpdates:a2];
}

void sub_100028414(uint64_t a1)
{
  v3 = [*(a1 + 32) windowServerDisplay];
  v1 = [v3 uniqueId];
  v2 = qword_100125DB8;
  qword_100125DB8 = v1;
}

void sub_10002846C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  sub_1000284E4(v3, v4, v5);
  [v6 setSize:?];
  [v6 setScale:*(a1 + 48)];
}

void sub_1000284E4(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if ((a1 & 0xFFFFFFFD) == 1)
  {
    v6 = BKLogDisplay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100027F18(a1);
      v13.width = a3;
      v13.height = a2;
      v8 = NSStringFromSize(v13);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Actually swapping the size because the display orientation is %{public}@ - new size:  %{public}@", &v9, 0x16u);
    }
  }
}

void sub_1000285F8(id a1)
{
  valuePtr = 0;
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
    CFRelease(v2);
    v3 = 11651 * ((360 - valuePtr) % 360);
    v4 = ((v3 >> 20) + (v3 >> 31));
  }

  else
  {
    v4 = 0.0;
  }

  qword_100125DF0 = *&v4;
}

void sub_1000286A0(id a1)
{
  v4 = +[BSDispatchQueueAttributes serial];
  v1 = [v4 serviceClass:33];
  v2 = BSDispatchQueueCreate();
  v3 = qword_100125E00;
  qword_100125E00 = v2;
}

void sub_100028720(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100125DD0;
  qword_100125DD0 = v1;
}

void sub_100028758(uint64_t a1)
{
  v2 = BKLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ exited with display-disabled assertion on %{public}@, releasing", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  sub_100028868(WeakRetained, *(a1 + 48), 0, *(a1 + 64));
}

id sub_10002882C(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

BOOL sub_100028868(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a2;
  os_unfair_lock_lock((a1 + 8));
  v8 = v7;
  os_unfair_lock_assert_owner((a1 + 8));
  v9 = v8;
  v10 = [v9 length];
  v11 = BKSDisplayUUIDMainKey;
  if (v10)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [NSNumber numberWithLongLong:a4];
  v34 = NSStringFromBSVersionedPID();
  v14 = [*(a1 + 16) objectForKeyedSubscript:v13];
  v15 = v14;
  if (a3)
  {
    if (!v14)
    {
      v15 = +[NSMutableDictionary dictionary];
      [*(a1 + 16) setObject:v15 forKeyedSubscript:v13];
    }

    v16 = [v15 objectForKeyedSubscript:v12];

    if (v16)
    {
      v17 = BKLogDisplay();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ requested to disable %{public}@, but had existing assertion!", buf, 0x16u);
      }

      v36 = 0;
    }

    else
    {
      objc_initWeak(&location, a1);
      v21 = [BSProcessDeathWatcher alloc];
      v22 = &_dispatch_main_q;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100028758;
      v42 = &unk_1000FA868;
      v23 = v34;
      v43 = v23;
      v24 = v12;
      v44 = v24;
      objc_copyWeak(v46, &location);
      v45 = v9;
      v46[1] = a4;
      v25 = [v21 initWithPID:a4 queue:&_dispatch_main_q deathHandler:buf];

      v26 = BKLogDisplay();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *v37 = 138543618;
        *&v37[4] = v23;
        *&v37[12] = 2114;
        *&v37[14] = v24;
        _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%{public}@ acquiring display-disabled assertion on %{public}@", v37, 0x16u);
      }

      v27 = [*(a1 + 24) acquireForReason:v23 withContext:v24];
      v28 = [BSSimpleAssertion alloc];
      *v37 = _NSConcreteStackBlock;
      *&v37[8] = 3221225472;
      *&v37[16] = sub_10002882C;
      v38 = &unk_1000FA890;
      v29 = v25;
      v39 = v29;
      v30 = v27;
      v40 = v30;
      v31 = [v28 initWithIdentifier:v24 forReason:v23 invalidationBlock:v37];
      [v15 setObject:v31 forKeyedSubscript:v24];

      v36 = 1;
      objc_destroyWeak(v46);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v18 = [v14 objectForKeyedSubscript:v12];
    v19 = BKLogDisplay();
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%{public}@ releasing display-disabled assertion on %{public}@", buf, 0x16u);
      }

      [v18 invalidate];
      if ([v15 count] < 2)
      {
        [*(a1 + 16) removeObjectForKey:v13];
      }

      else
      {
        [v15 removeObjectForKey:v12];
      }
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ requested to enable %{public}@ without previously disabling it!", buf, 0x16u);
      }
    }

    v36 = v18 != 0;
  }

  v32 = v36;
  os_unfair_lock_unlock((a1 + 8));
  return v32;
}

void sub_100028DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100028DEC(void *a1)
{
  v1 = sub_100007D54(a1, "BKDisplayResetFlipBookEnabled");
  v2 = [v1 isFlipBookEnabled];
  v3 = BKLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BKDisplayResetFlipBookEnabled flipBookIsEnabled:%{BOOL}u", v4, 8u);
  }

  if (v2)
  {
    [v1 setFlipBookEnabled:0];
    [v1 setFlipBookEnabled:1];
  }
}

void sub_100028ED0(void *a1)
{
  v3 = 0;
  v4 = 0;
  v2 = 0x3FF0000000000000;
  v1 = 0;
  sub_100007090(a1, &v3, &v4, &v2, &v1, 0);
}

void sub_100028F80(id a1)
{
  v1 = objc_alloc_init(_BKDisplayInfo);
  v2 = +[BSPathProviderFactory pathProviderForSystemContainerForCurrentProcess];
  v3 = [v2 cachesPath];
  v4 = [v3 path];

  v5 = BKLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v58 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StartWindowServer: Initializing shader cache path: %{public}@", buf, 0xCu);
  }

  if (v4)
  {
    MTLSetShaderCachePath();
    MTLMakeShaderCacheWritableByAllUsers();
  }

  v6 = v1;
  v55 = kCAWindowServerDisableUpdatesOnMainDisplay;
  v56 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v8 = [CAWindowServer serverWithOptions:v7];

  [v8 setRendererFlags:3];
  v9 = +[CADisplay mainDisplay];
  v10 = [v8 displayWithDisplayId:{objc_msgSend(v9, "displayId")}];
  v11 = BKLogDisplay();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 displayId];
    *buf = 67109120;
    *v58 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "StartWindowServer: disabling framebuffer changes on display (%d) at boot until we are ready for them.", buf, 8u);
  }

  if (v9 && v10)
  {
    v13 = v9;
    v14 = v10;
    v15 = v6;
    [(_BKDisplayInfo *)v15 setWindowServerDisplay:v14];
    [(_BKDisplayInfo *)v15 setExternal:[v13 isExternal]];
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    v20 = [v13 pointScale];
    v21 = [v13 currentMode];
    v22 = [v21 preferredScale];

    v23 = BKLogDisplay();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v58 = v20;
      *&v58[8] = 2048;
      v59 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "StartWindowServer: MG scale:%g display preferredScale:%g", buf, 0x16u);
    }

    if ([(_BKDisplayInfo *)v15 isExternal])
    {
      v24 = [v13 currentMode];

      if (v24)
      {
        v20 = v22;
      }
    }

    if (BSFloatLessThanFloat())
    {
      v25 = BKLogDisplay();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v58 = v20;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "StartWindowServer: Invalid point scale from CADisplay: %g; assuming 1.0", buf, 0xCu);
      }

      v20 = 1.0;
    }

    v54 = v6;
    if (qword_100125DF8 != -1)
    {
      dispatch_once(&qword_100125DF8, &stru_1000FA8D0);
    }

    v26 = *&qword_100125DF0;
    v27 = [v13 nativeOrientation];
    v28 = sub_10000A7CC(v27);

    v29 = BKLogDisplay();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_100027F18(v26);
      v31 = sub_100027F18(v28);
      *buf = 138543618;
      *v58 = v30;
      *&v58[8] = 2114;
      v59 = *&v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "StartWindowServer: digitizerToPanelRotation=%{public}@ layoutRotation=%{public}@", buf, 0x16u);
    }

    [v14 touchScales];
    v34 = 1.0 - v33;
    if (v26 == 1)
    {
      v35 = 1.0 - v33;
    }

    else
    {
      v35 = 0.0;
    }

    if (v26 == 1)
    {
      v36 = v33;
    }

    else
    {
      v36 = v32;
    }

    if (v26 == 1)
    {
      v37 = v32;
    }

    else
    {
      v37 = v33;
    }

    if (v26 == 2)
    {
      v35 = 1.0 - v32;
    }

    else
    {
      v34 = 0.0;
    }

    if (v26 == 2)
    {
      v36 = v32;
      v37 = v33;
    }

    if (v26 == 3)
    {
      v38 = 0.0;
    }

    else
    {
      v38 = v35;
    }

    if (v26 == 3)
    {
      v39 = 1.0 - v32;
    }

    else
    {
      v39 = v34;
    }

    if (v26 == 3)
    {
      v40 = v33;
    }

    else
    {
      v40 = v36;
    }

    if (v26 == 3)
    {
      v41 = v32;
    }

    else
    {
      v41 = v37;
    }

    v42 = BKLogDisplay();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v62.width = v17;
      v62.height = v19;
      v43 = NSStringFromSize(v62);
      v44 = [NSNumber numberWithDouble:v20];
      *buf = 138543618;
      *v58 = v43;
      *&v58[8] = 2114;
      v59 = *&v44;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "StartWindowServer: initial main screen size:%{public}@ scale:%{public}@", buf, 0x16u);
    }

    sub_1000284E4(v26, v17, v19);
    [(_BKDisplayInfo *)v15 setSize:?];
    [(_BKDisplayInfo *)v15 setScale:v20];
    [(_BKDisplayInfo *)v15 setNativeRotation:v26];
    [(_BKDisplayInfo *)v15 setNormalizedDigitizerRect:v38, v39, v40, v41];
    v45 = +[BKSDefaults localDefaults];
    v46 = [v45 forceMirroredOrientation];

    if (v46)
    {
      [v14 setOrientation:v46];
    }

    v47 = BKLogDisplay();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v58 = v15;
      *&v58[8] = 2114;
      v59 = *&v13;
      v60 = 2114;
      v61 = v14;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "StartWindowServer: main display info:%{public}@ -- display:%{public}@ serverDisplay:%{public}@", buf, 0x20u);
    }

    v6 = v54;
  }

  else
  {
    v13 = BKLogDisplay();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v58 = v9 == 0;
      *&v58[4] = 1024;
      *&v58[6] = v10 == 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "StartWindowServer: headless (display:%{BOOL}u/server:%{BOOL}u)", buf, 0xEu);
    }
  }

  v48 = v6;
  os_unfair_lock_assert_not_owner(&unk_100125DE8);
  os_unfair_lock_lock(&unk_100125DE8);
  v49 = qword_100125DE0;
  qword_100125DE0 = v48;

  os_unfair_lock_unlock(&unk_100125DE8);
  v50 = +[BKDisplayRenderOverlayManager sharedInstance];
  v51 = +[BKBootUIPresenter sharedInstance];
  v52 = sub_1000597A4();
  [BKTVOutController _handleIapServerConnectionDied]_0(v52);

  v53 = +[BKTetherController sharedInstance];

  [v53 updatePreferencesIfNeeded];
}

void sub_1000296D4()
{
  v0 = +[BKDisplayRenderOverlayManager sharedInstance];
  [v0 prepareForRestart];
}

void sub_10002971C(__IOSurface *a1)
{
  IOSurfaceUnlock(a1, 0, 0);

  CFRelease(a1);
}

id sub_10002B56C(uint64_t a1)
{
  result = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 128) withName:@"generation"];
  for (i = 2; i != 32; ++i)
  {
    v4 = *(*(a1 + 40) + 4 * i);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6[4] = i - 2;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10002B688;
      v7[3] = &unk_1000FA970;
      v8 = v4;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10002B6BC;
      v6[3] = &unk_1000FA990;
      result = [v5 appendCustomFormatForValue:v7 withCustomFormatForName:v6];
    }
  }

  return result;
}

uint64_t sub_10002B77C(uint64_t a1, uint64_t a2)
{
  if (a2 >= 30)
  {
    v4 = [NSString stringWithFormat:@"%d >= 32", a2];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector("updateMaskForPathIndex:");
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = a1;
      v15 = 2114;
      v16 = @"BKDirectTouchUpdateEvents.mm";
      v17 = 1024;
      v18 = 76;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10002B8E0);
  }

  return *(a1 + 4 * a2 + 8);
}

uint64_t sub_10002B914(uint64_t result, int a2, uint64_t a3)
{
  v3 = result;
  if (a3 >= 30)
  {
    v4 = [NSString stringWithFormat:@"%d >= 32", a3];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector("setUpdateMask:forPathIndex:");
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = v3;
      v15 = 2114;
      v16 = @"BKDirectTouchUpdateEvents.mm";
      v17 = 1024;
      v18 = 81;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10002BA78);
  }

  *(result + 4 * a3 + 8) = a2;
  return result;
}

void *sub_10002BAAC(uint64_t a1, uint64_t a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 8);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (v7)
        {
          v8 = v7[16];
        }

        else
        {
          v8 = 0;
        }

        if (v8 == a2)
        {
          v10 = v7;
          goto LABEL_15;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v9 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = v9;
    }

    while (v9);
  }

  v10 = 0;
LABEL_15:

  return v10;
}

id sub_10002BBF8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 8) count];
  if (v4 < 1)
  {
LABEL_9:
    v8 = 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [*(a1 + 8) objectAtIndex:v6];
      v8 = v7;
      v9 = v7 ? v7[16] : 0;
      if (v9 == a2)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_9;
      }
    }

    [*(a1 + 8) removeObjectAtIndex:v6];
  }

  return v8;
}

uint64_t sub_10002BCBC(uint64_t a1, int a2)
{
  v4 = BKLogSystemShell();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v7 = 136446210;
      v8 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "START WATCHDOG for %{public}s", &v7, 0xCu);
    }

    return wd_endpoint_begin_watchdog_monitoring_for_service();
  }

  else
  {
    if (v5)
    {
      v7 = 136446210;
      v8 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "STOP WATCHDOG for %{public}s", &v7, 0xCu);
    }

    return wd_endpoint_disable_monitoring_for_service();
  }
}

void sub_10002D0DC(int a1, CGContextRef c)
{
  v3[0] = xmmword_1000BFBE0;
  v3[1] = unk_1000BFBF0;
  CGContextSetFillColor(c, v3);
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  v4.size.width = 16.0;
  v4.size.height = 1.0;
  CGContextFillRect(c, v4);
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 1.0;
  v5.size.height = 16.0;
  CGContextFillRect(c, v5);
}

CGColorRef sub_10002D3BC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!DeviceRGB)
  {
    return 0;
  }

  v9 = DeviceRGB;
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v10 = CGColorCreate(DeviceRGB, components);
  CFRelease(v9);
  return v10;
}

void sub_10002D500(uint64_t a1, __IOHIDEvent *a2, void *a3, void *a4)
{
  if (a1)
  {
    v7 = a4;
    context = a3;
    sub_100008008(a1);
    v9 = objc_alloc_init(BKHIDCollectedEvent);
    v18 = v9;
    if (v9)
    {
      v10 = v9;
      event = v9->_event;
      if (event != a2)
      {
        if (event)
        {
          CFRelease(event);
        }

        v12 = CFRetain(a2);
        v10 = v18;
        v18->_event = v12;
      }

      objc_storeStrong(&v10->_attributes, a3);

      v13 = v7;
      context = v18->_context;
      v18->_context = v13;
    }

    if (v7)
    {
      v14 = v7[3];
    }

    else
    {
      v14 = 0;
    }

    v15 = [NSNumber numberWithUnsignedInt:v14];
    v16 = [*(a1 + 8) objectForKeyedSubscript:v15];
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 integerValue] + 1);
    [*(a1 + 8) setObject:v17 forKeyedSubscript:v15];

    [*(a1 + 16) addObject:v18];
  }
}

void sub_10002D658(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002D6F4;
    v5[3] = &unk_1000FA9F8;
    v5[4] = a1;
    v6 = v3;
    sub_10002D814(a1, v5);
  }
}

void sub_10002D6F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6[3];
  }

  else
  {
    v8 = 0;
  }

  v9 = [NSNumber numberWithUnsignedInt:v8];
  v10 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  v11 = [v10 integerValue];

  if (v11 >= 2)
  {
    v12 = [NSNumber numberWithInteger:v11 - 1];
    [*(*(a1 + 32) + 8) setObject:v12 forKeyedSubscript:v9];

    [v13 setOptions:{objc_msgSend(v13, "options") | 0x200}];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10002D814(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(a1 + 16);
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
          if (v9)
          {
            v10 = *(v9 + 8);
            v11 = *(v9 + 16);
            v12 = *(v9 + 24);
          }

          else
          {
            v11 = 0;
            v10 = 0;
            v12 = 0;
          }

          v3[2](v3, v10, v11, v12);

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v13 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v6 = v13;
      }

      while (v13);
    }
  }
}

uint64_t sub_10002D964(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v4 = sub_10002DA08;
  v5 = &unk_1000FC018;
  v6 = a1;
  if (!sub_1000025C8("_BKDisplayXXWillUnblank", BKBackBoardClientEntitlement, a2))
  {
    return 5;
  }

  v4(v3);
  return 0;
}

void sub_10002DA08(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v1 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v1 = 0;
  }

  v5 = v1;
  v2 = sub_100007D54(v5, "BKDisplayWillUnblank");
  if (v2)
  {
    v3 = BKLogDisplay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"Main";
      if (v5)
      {
        v4 = v5;
      }

      *buf = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ will unblank", buf, 0xCu);
    }

    [v2 willUnblank];
  }
}

uint64_t sub_10002DB28(_BYTE *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (sub_1000025C8("_BKDisplayXXGetSystemIdentifiers", BKBackBoardClientEntitlement, a4))
  {
    if (*a1)
    {
      v7 = [NSString stringWithUTF8String:a1];
    }

    else
    {
      v7 = 0;
    }

    v9 = sub_100007D54(v7, "BKDisplayGetSystemIdentifiers");
    v10 = [v9 systemIdentifiers];

    if (v10)
    {
      v11 = [v10 bs_secureEncoded];
      if (v11)
      {
        v12 = v11;
        *a2 = [v11 bs_bytesForMIG];
        *a3 = [v12 bs_lengthForMIG];

        v8 = 0;
LABEL_14:

        return v8;
      }

      v13 = BKLogDisplay();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "GetSystemIdentifiers failed to encode system identifiers", buf, 2u);
      }
    }

    else
    {
      v13 = BKLogDisplay();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "GetSystemIdentifiers: no active system identifiers", v15, 2u);
      }
    }

    v8 = 5;
    goto LABEL_14;
  }

  return 5;
}

uint64_t sub_10002DCB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v6 = sub_10002DD6C;
  v7 = &unk_1000FAA38;
  v10 = a3;
  v8 = a1;
  v9 = a2;
  if (!sub_100006994("_BKDisplayXXSetSystemIdentifiers", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a4))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_10002DD6C(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  if (!*(a1 + 48) || !*(a1 + 40))
  {
    v6 = 0;
LABEL_31:
    v6 = v6;
    v17 = sub_100007D54(v2, "BKDisplaySetSystemIdentifiers");
    [v17 setSystemIdentifiers:v6];

    goto LABEL_32;
  }

  v3 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 40) length:*(a1 + 48) freeWhenDone:0];
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = [NSObject bs_secureObjectFromData:v3 ofClasses:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v6 count])
  {
    v15 = 0;
LABEL_24:
    v16 = BKLogDisplay();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error unarchiving system identifiers", buf, 2u);
    }

    goto LABEL_27;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    v18 = v3;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = v12;
        if (!v13 || (objc_opt_isKindOfClass() & 1) == 0)
        {

LABEL_23:
          v15 = 0;
          v3 = v18;
          goto LABEL_24;
        }

        if (!v14)
        {
          goto LABEL_23;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v3 = v18;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_27:

  if (v6 && (v15 & 1) != 0 || !*(a1 + 48) || !*(a1 + 40))
  {
    goto LABEL_31;
  }

LABEL_32:
}

uint64_t sub_10002E038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10002E0EC;
  v6 = &unk_1000FAA58;
  v7 = a1;
  v8 = a2;
  if (!sub_100006994("_BKDisplayXXIsFlipBookEnabled", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10002E0EC(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  v3 = sub_100007D54(v2, "BKDisplayIsFlipBookEnabled");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isFlipBookEnabled];
  }

  else
  {
    v5 = 0;
  }

  **(a1 + 40) = v5;
}

uint64_t sub_10002E190(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10002E248;
  v6 = &unk_1000FAA78;
  v7 = a1;
  v8 = a2;
  if (!sub_100006994("_BKDisplayXXSetFlipBookEnabled", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10002E248(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v6 = v2;
  v4 = sub_100007D54(v2, "BKDisplaySetFlipBookEnabled");
  v5 = BKLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKDisplaySetFlipBookEnabled setFlipBookEnabled:%{BOOL}u", buf, 8u);
  }

  [v4 setFlipBookEnabled:v3 != 0];
}

uint64_t sub_10002E368(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10002E428;
  v8 = &unk_1000FAA38;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (!sub_100006994("_BKDisplayXXSetCalibrationPhase", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a5))
  {
    return 5;
  }

  v7(v6);
  return 0;
}

void sub_10002E428(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }
}

uint64_t sub_10002E47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10002E530;
  v6 = &unk_1000FAA58;
  v7 = a1;
  v8 = a2;
  if (!sub_100006994("_BKDisplayXXIsFlipBookSuppressed", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10002E530(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  v3 = sub_100007D54(v2, "BKDisplayIsFlipBookSuppressed");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isFlipBookSuppressed];
  }

  else
  {
    v5 = 0;
  }

  **(a1 + 40) = v5;
}

uint64_t sub_10002E5D4(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10002E68C;
  v6 = &unk_1000FAA78;
  v7 = a1;
  v8 = a2;
  if (!sub_100006994("_BKDisplayXXSetFlipBookSuppressed", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10002E68C(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 40);
  v6 = v2;
  v4 = sub_100007D54(v2, "BKDisplaySetFlipBookSuppressed");
  v5 = BKLogDisplay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BKDisplaySetFlipBookSuppressed setFlipBookSuppressed:%{BOOL}u", buf, 8u);
  }

  [v4 setFlipBookSuppressed:v3 != 0];
}

uint64_t sub_10002E7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10002E860;
  v6 = &unk_1000FAA58;
  v7 = a1;
  v8 = a2;
  if (!sub_100006994("_BKDisplayXXIsDisabled", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10002E860(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  v3 = sub_100007D54(v2, "BKDisplayIsDisabled");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 disablesUpdates];
  }

  else
  {
    v5 = 1;
  }

  **(a1 + 40) = v5;
}

uint64_t sub_10002E904(uint64_t a1, char a2, uint64_t a3, __int128 *a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v7 = sub_10002E9C8;
  v8 = &unk_1000FAA98;
  v9 = a1;
  v10 = a3;
  v13 = a2;
  v4 = a4[1];
  v11 = *a4;
  v12 = v4;
  if (!sub_100006994("_BKDisplayXXSetDisabled", BKDisableDisplaysEntitlement, BKBackBoardClientEntitlement, a4))
  {
    return 5;
  }

  v7(v6);
  return 0;
}

void sub_10002E9C8(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = [NSString stringWithUTF8String:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 80);
  v4 = *(a1 + 64);
  v10 = *(a1 + 48);
  v5 = BSVersionedPIDForAuditToken();
  v6 = v2;
  *&v10 = _NSConcreteStackBlock;
  *(&v10 + 1) = 3221225472;
  v11 = sub_100028720;
  v12 = &unk_1000FC018;
  v13 = objc_opt_self();
  if (qword_100125DC8 != -1)
  {
    dispatch_once(&qword_100125DC8, &v10);
  }

  v7 = v3 != 0;
  v8 = qword_100125DD0;
  v9 = sub_100028868(v8, v6, v7, v5);

  **(a1 + 40) = v9;
}

uint64_t sub_10002EB04(_BYTE *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if (!sub_1000025C8("_BKDisplayXXSetReachabilityBounds", BKBackBoardClientEntitlement, a2))
  {
    return 5;
  }

  if (*a1)
  {
    v11 = [NSString stringWithUTF8String:a1];
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_100007D54(v11, "BKDisplaySetReachabilityBounds");
  v14 = v13;
  if (v13)
  {
    [v13 setAccessibilityBounds:{a3, a4, a5, a6}];
  }

  return 0;
}

uint64_t sub_10002EBD4(uint64_t a1, char a2, __int128 *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v3 = a3[1];
  v9 = *a3;
  v6 = sub_10002EC84;
  v7 = &unk_1000FAAB8;
  v8 = a1;
  v11 = a2;
  v10 = v3;
  if (!sub_1000027D4(BKVirtualDisplayEntitlement, a3))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_10002EC84(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    v8 = BKLogDisplay();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      return;
    }

    LOWORD(block[0]) = 0;
    v9 = "SetCloneMirroringModeForDestinationDisplay: empty displayUUID not allowed";
    v10 = v8;
    v11 = 2;
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, block, v11);
    goto LABEL_11;
  }

  v2 = *(a1 + 72);
  if (v2 >= 4)
  {
    v8 = BKLogDisplay();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 72);
    LODWORD(block[0]) = 67109120;
    HIDWORD(block[0]) = v12;
    v9 = "SetCloneMirroringModeForDestinationDisplay: unknown mode value %X";
    v10 = v8;
    v11 = 8;
    goto LABEL_13;
  }

  v3 = BSPIDForAuditToken();
  v4 = [NSString stringWithUTF8String:*(a1 + 32)];
  v5 = sub_1000597A4();
  v6 = v4;
  v13 = v6;
  if (v5)
  {
    v7 = v5[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000598B8;
    block[3] = &unk_1000FBA90;
    block[4] = v5;
    v16 = v2;
    v15 = v6;
    v17 = v3;
    dispatch_async(v7, block);

    v6 = v13;
  }
}

uint64_t sub_10002EE94(uint64_t a1, __int128 *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v2 = a2[1];
  v8 = *a2;
  v5 = sub_10002EF3C;
  v6 = &unk_1000FAAD8;
  v7 = a1;
  v9 = v2;
  if (!sub_1000027D4(BKVirtualDisplayEntitlement, a2))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10002EF3C(uint64_t a1)
{
  if (**(a1 + 32))
  {
    v2 = BSPIDForAuditToken();
    v3 = [NSString stringWithUTF8String:*(a1 + 32)];
    v4 = sub_1000597A4();
    v7 = v3;
    if (v4)
    {
      v5 = v4[1];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000598D0;
      block[3] = &unk_1000FD1A0;
      block[4] = v4;
      v9 = v7;
      v10 = v2;
      dispatch_async(v5, block);
    }
  }

  else
  {
    v6 = BKLogDisplay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "RemoveCloneMirroringModeForDestinationDisplay: empty displayUUID not allowed", block, 2u);
    }
  }
}

void sub_10002F0A8(uint64_t a1)
{
  v3 = +[BKTetherController sharedInstance];
  if ([v3 isTethered])
  {
    v2 = +[BKSDefaults localDefaults];
    **(a1 + 32) = [v2 ignoreTetheringPreferences] ^ 1;
  }

  else
  {
    **(a1 + 32) = 0;
  }
}

void sub_10002F134(uint64_t a1)
{
  v2 = +[BKTetherController sharedInstance];
  [v2 setOrientationNotificationDisabled:*(a1 + 32) != 0];
}

void sub_10002F194(uint64_t a1)
{
  v2 = +[BKTetherController sharedInstance];
  if ([v2 isTethered])
  {
    [v2 noteInterfaceOrientationChangedWithInterfaceOrientation:*(a1 + 32)];
  }
}

void sub_10002F1F8(uint64_t a1)
{
  v2 = +[BKSDefaults localDefaults];
  v3 = BKLogDisplay();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = BSDeviceOrientationDescription();
    v26 = 138543362;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "UpdateMirroredDisplayOrientationWithInterfaceOrientation:%{public}@ ", &v26, 0xCu);
  }

  v6 = +[BKTetherController sharedInstance];
  v7 = [v6 isTethered];
  v8 = [v6 usesDisplayPortTethering];
  v9 = [v2 isSteveNoteRotationEnabled];
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || (v9 & 1) != 0)
  {
    v17 = [v2 forceMirroredOrientation];

    if (!v17)
    {
      v19 = +[CAWindowServer serverIfRunning];
      v11 = [v19 displays];

      if ([v11 count])
      {
        v13 = kCAWindowServerOrientation_Portrait;
        if (*(a1 + 32) - 2 <= 2)
        {
          v20 = **(&off_1000FAB60 + (*(a1 + 32) - 2));

          v13 = v20;
        }

        v21 = [v11 objectAtIndex:0];
        v22 = [v21 orientation];
        v23 = [v22 isEqualToString:v13];
        v24 = BKLogDisplay();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v25)
          {
            v26 = 138543362;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Ignoring request to update to same display interface orientation (%{public}@)", &v26, 0xCu);
          }
        }

        else
        {
          if (v25)
          {
            v26 = 138543618;
            v27 = v22;
            v28 = 2114;
            *v29 = v13;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updating external display interface orientation from %{public}@ to %{public}@", &v26, 0x16u);
          }

          [v21 setOrientation:v13];
        }

        goto LABEL_27;
      }

      v13 = BKLogDisplay();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:

        goto LABEL_28;
      }

      LOWORD(v26) = 0;
      v14 = "Ignoring request to update to same display interface orientation because there are no CADisplays";
      v15 = v13;
      v16 = 2;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v26, v16);
      goto LABEL_27;
    }

    v11 = BKLogDisplay();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v13 = BSDeviceOrientationDescription();
      v26 = 138543362;
      v27 = v13;
      v14 = "ignoring mirrored display orientation update to %{public}@ because (forceMirroredOrientation:YES)";
      v15 = v11;
      v16 = 12;
      goto LABEL_13;
    }
  }

  else
  {
    v11 = BKLogDisplay();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = BSDeviceOrientationDescription();
      v26 = 138544130;
      v27 = v13;
      v28 = 1024;
      *v29 = 1;
      *&v29[4] = 1024;
      *&v29[6] = 1;
      v30 = 1024;
      v31 = 0;
      v14 = "ignoring mirrored display orientation update to %{public}@ because (tethered:%{BOOL}u displayPortTethering:%{BOOL}u stevenoteRotationEnabled:%{BOOL}u)";
      v15 = v11;
      v16 = 30;
      goto LABEL_13;
    }
  }

LABEL_28:
}

uint64_t sub_10002F5B8(uint64_t a1, int a2, uint64_t a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10002F65C;
  v6 = &unk_1000FAAF8;
  v8 = a2;
  v7 = a1;
  if (!sub_1000027D4(BKDisplayArrangementEntitlement, a3))
  {
    return 5;
  }

  v5(v4);
  return 0;
}

void sub_10002F65C(uint64_t a1)
{
  if (!*(a1 + 40) || !*(a1 + 32))
  {
    goto LABEL_9;
  }

  v2 = [[NSData alloc] initWithBytesNoCopy:*(a1 + 32) length:*(a1 + 40) freeWhenDone:0];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  v5 = [NSObject bs_secureObjectFromData:v2 ofClasses:v4];

  if (v5)
  {

LABEL_10:
    v7 = [v5 firstObject];
    if (v7)
    {
      v8 = [v5 firstObject];
      v9 = [v8 edge];
    }

    else
    {
      v9 = 1;
    }

    v10 = +[BKSDefaults localDefaults];
    [v10 setPointerRegionArrangementEdge:v9];

    v11 = +[BKHIDEventProcessorRegistry sharedInstance];
    v12 = [v11 eventProcessorOfClass:objc_opt_class()];
    v13 = [v12 mousePointerController];
    [v13 setDisplayArrangement:v5];

    return;
  }

  v6 = BKLogDisplay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error unarchiving display arrangement", buf, 2u);
  }

  if (!*(a1 + 40) || !*(a1 + 32))
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }
}

uint64_t sub_10002F844(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!sub_1000025C8("_BKDisplayXXApplyRenderOverlay", BKBackBoardClientEntitlement, a5))
  {
    return 5;
  }

  v9 = sub_10002F984(a1, a2);
  v10 = sub_10002FA20(a3, a4);
  if (v9)
  {
    v11 = [v9 displayUUID];
    v12 = sub_10002FA98(v11);

    v13 = +[BKDisplayRenderOverlayManager sharedInstance];
    [v13 removeOverlay:v12 withAnimationSettings:0];

    v14 = [BKDisplayRenderOverlayImage alloc];
    LODWORD(v15) = 2139095039;
    v16 = [(BKDisplayRenderOverlayImage *)v14 initWithOverlayDescriptor:v9 level:v15];
    v17 = +[BKDisplayRenderOverlayManager sharedInstance];
    v18 = [v17 applyOverlay:v16 withAnimationSettings:v10];

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 5;
    }
  }

  else
  {
    v19 = 4;
  }

  return v19;
}

id sub_10002F984(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = [NSData dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v3 = +[BKSDisplayRenderOverlayDescriptor _classesRequiredToDecode];
    v4 = [BKSDisplayRenderOverlayDescriptor bs_secureDecodedFromData:v2 withAdditionalClasses:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10002FA20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = [NSData dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v3 = [BSAnimationSettings bs_secureDecodedFromData:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10002FA98(void *a1)
{
  v1 = a1;
  v2 = +[BKDisplayRenderOverlayManager sharedInstance];
  v3 = [v2 activeOverlays];

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10002FBE8;
  v14 = sub_10002FBF8;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FC00;
  v7[3] = &unk_1000FAB40;
  v4 = v1;
  v8 = v4;
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_10002FBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002FBE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002FC00(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  if ([v9 type] == 1)
  {
    v6 = *(a1 + 32);
    v7 = [v9 descriptor];
    v8 = [v7 displayUUID];
    LODWORD(v6) = BSEqualStrings();

    if (v6)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

uint64_t sub_10002FCC0(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!sub_1000025C8("_BKDisplayXXRemoveRenderOverlay", BKBackBoardClientEntitlement, a5))
  {
    return 5;
  }

  v9 = sub_10002F984(a1, a2);
  v10 = sub_10002FA20(a3, a4);
  if (v9)
  {
    v11 = +[BKDisplayRenderOverlayManager sharedInstance];
    v12 = [v11 activeOverlayWithDescriptor:v9];
    if (v12 && ([v11 removeOverlay:v12 withAnimationSettings:v10] & 1) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 5;
    }
  }

  else
  {
    v13 = 4;
  }

  return v13;
}

uint64_t sub_10002FDB4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!sub_1000025C8("_BKDisplayXXFreezeRenderOverlay", BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v5 = sub_10002F984(a1, a2);
  if (v5)
  {
    v6 = +[BKDisplayRenderOverlayManager sharedInstance];
    v7 = [v6 activeOverlayWithDescriptor:v5];
    if (v7 && ([v6 freezeOverlay:v7] & 1) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = 5;
    }
  }

  else
  {
    v8 = 4;
  }

  return v8;
}

uint64_t sub_10002FE78(_BYTE *a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (!sub_1000025C8("_BKDisplayXXRenderOverlay", BKBackBoardClientEntitlement, a4))
  {
    return 5;
  }

  if (*a1)
  {
    v7 = [NSString stringWithUTF8String:a1];
  }

  else
  {
    v7 = 0;
  }

  v9 = sub_10000A500(v7);
  if (v9 && (sub_10002FA98(v7), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [v10 descriptor];
    v13 = [v12 bs_secureEncoded];

    if (a2 && a3)
    {
      *a2 = [v13 bs_bytesForMIG];
      *a3 = [v13 bs_lengthForMIG];
    }

    v8 = 0;
  }

  else
  {
    v8 = 5;
  }

  return v8;
}

uint64_t sub_10002FF8C(uint64_t a1, int a2, __int128 *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v3 = a3[1];
  v10 = *a3;
  v6 = sub_100030040;
  v7 = &unk_1000FAB18;
  v8 = a1;
  v9 = a2;
  v11 = v3;
  if (!sub_1000025C8("_BKDisplayXXDismissInterstitialRenderOverlay", BKBackBoardClientEntitlement, a3))
  {
    return 5;
  }

  v6(v5);
  return 0;
}

void sub_100030040(uint64_t a1)
{
  v2 = sub_10002FA20(*(a1 + 32), *(a1 + 40));
  v1 = +[BKBootUIPresenter sharedInstance];
  [v1 dismissOverlayWithAnimationSettings:v2 requstedByPID:BSPIDForAuditToken()];
}

id sub_1000300C0(const char *a1)
{
  v2 = GSRegisterPurpleNamedPort();
  port_info = 16;
  mach_port_set_attributes(mach_task_self_, v2, 1, &port_info, 1u);
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  f = dispatch_mach_create_f();

  dispatch_mach_connect();

  return f;
}

void sub_100031358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100031390(uint64_t a1)
{
  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = 134217984;
    v10 = v8;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "launchFailed: %p", &v9, 0xCu);
  }

  [*(*(a1 + 32) + 32) invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = 0;

  return (*(*(a1 + 40) + 16))();
}

void sub_10003147C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[5];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100031534;
    v8[3] = &unk_1000FD128;
    v8[4] = WeakRetained;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

id sub_100031CD4(uint64_t a1)
{
  if ([*(a1 + 32) animates])
  {
    [*(a1 + 32) _stopAnimating];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _dismissWithAnimationSettings:v3];
}

void sub_1000320E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003210C(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _presentWithAnimationSettings:*(a1 + 40)];
  result = [*(a1 + 32) animates];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _startAnimating];
  }

  return result;
}

id sub_1000321F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[38] == 1)
  {
    return [v1 _startAnimating];
  }

  else
  {
    return [v1 _stopAnimating];
  }
}

id sub_100032C00(uint64_t a1)
{
  v2 = [*(a1 + 32) appendSize:@"pointSize" withName:{*(*(a1 + 40) + 32), *(*(a1 + 40) + 40)}];
  v3 = [*(a1 + 32) appendFloat:@"cornerRadius" withName:*(*(a1 + 40) + 8)];
  v4 = [*(a1 + 32) appendFloat:@"scale" withName:*(*(a1 + 40) + 16)];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 24);

  return [v5 appendString:v6 withName:@"displayUUID"];
}

void sub_100032E78(int a1, float a2)
{
  kdebug_trace();
  if (a1)
  {
    v4 = BKLogBacklight();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update last requested backlight factor: %g permanently:YES", &v11, 0xCu);
    }

    os_unfair_lock_lock(&stru_100125E20);
    dword_100125E24 = LODWORD(a2);
    os_unfair_lock_unlock(&stru_100125E20);
    v5 = a2 < 1.0 && _AXSVoiceOverTouchEnabled() == 0;
    os_unfair_lock_lock(&stru_100125E20);
    if (!v5 || qword_100125E10)
    {
      if (qword_100125E10)
      {
        v10 = v5;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        goto LABEL_16;
      }

      [qword_100125E10 invalidate];
      v7 = qword_100125E10;
      qword_100125E10 = 0;
    }

    else
    {
      v6 = +[BKHIDEventProcessorRegistry sharedInstance];
      v7 = [v6 eventProcessorOfClass:objc_opt_class()];

      v8 = [v7 cancelAndSuppressTouchesOnDisplay:0 reason:@"backlight dim/off"];
      v9 = qword_100125E10;
      qword_100125E10 = v8;
    }

LABEL_16:
    os_unfair_lock_unlock(&stru_100125E20);
  }
}

void sub_100033044(uint64_t a1)
{
  os_unfair_lock_lock(&stru_100125E20);
  v2 = *&dword_100125E24;
  os_unfair_lock_unlock(&stru_100125E20);
  if (v2 == *(a1 + 32))
  {
    notify_set_state(dword_100124660, (*(a1 + 36) * 100.0) & ~((*(a1 + 36) * 100.0) >> 31));

    notify_post("com.apple.backboardd.backlight.changed");
  }
}

uint64_t sub_100033B28(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 17) == 1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    v4 = *(v2 + 40);
    result = BSEqualObjects();
    if ((result & 1) == 0)
    {
      objc_storeStrong((*(v2 + 32) + 8), *(v2 + 40));
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      v7 = v5[3];

      return [v5 hitTestRegionsDidChangeSwift:v6 displayAnnotationController:v7];
    }
  }

  return result;
}

void sub_100033CA4(uint64_t a1)
{
  v6 = [*(a1 + 32) _stringDescribingContextID:*(a1 + 40) clientPort:*(a1 + 44)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [NSString stringWithFormat:@"always %@", v6];
  v5 = [NSString stringWithFormat:@"always-ctx.%X", *(a1 + 40)];
  [v2 _queue_annotateTouch:v3 withString:v4 uniqueIdentifier:v5 fromPID:0xFFFFFFFFLL];
}

void sub_100033E70(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 32) _keyPathForTouchIdentifier:*(a1 + 40)];
  [v1 removeAnnotationsForKeyPath:v2];
}

id sub_100033F48(uint64_t a1)
{
  [*(a1 + 32) _queue_removeAnnotationForTouch:*(a1 + 40) withUniqueIdentifier:@"touchDown"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_removeAnnotationForTouch:v3 withUniqueIdentifier:@"detached"];
}

uint64_t sub_10003401C(uint64_t a1)
{
  [*(a1 + 32) _queue_setCenter:*(a1 + 72) forTouchIdentifier:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 56);
  result = BSFloatIsZero();
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);

    return [v4 _queue_updateHoverStateForTouchIdentifier:v5 z:v6 maxZ:v7];
  }

  return result;
}

void sub_100034128(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = *(v2 + 8);
  }

  v4 = [NSString stringWithFormat:@"transferred to %X", v2];
  [v3 _queue_annotateTouch:v1 withUniqueString:v4];
}

void sub_1000342E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 8);
    v5 = *(v3 + 12);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v9 = [v2 _stringDescribingContextID:v4 clientPort:v5];
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = [NSString stringWithFormat:@"ctx.%d", *(a1 + 48)];
  [v6 _queue_annotateTouch:v7 withString:v9 uniqueIdentifier:v8 fromPID:0xFFFFFFFFLL];
}

id sub_100034418(uint64_t a1)
{
  [*(a1 + 32) _queue_setCenter:*(a1 + 64) forTouchIdentifier:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) _queue_applyBasicAnnotationTextForTouchIdentifier:*(a1 + 64) pathIndex:*(a1 + 56)];
  result = [*(a1 + 32) _queue_annotateTouch:*(a1 + 64) withString:@"touch down" uniqueIdentifier:@"touchDown" fromPID:0xFFFFFFFFLL];
  v3 = *(a1 + 68);
  if ((v3 & 0x800) != 0)
  {
    result = [*(a1 + 32) _queue_annotateTouch:*(a1 + 64) withUniqueString:@"from edge"];
    v3 = *(a1 + 68);
    if ((v3 & 0x40000) == 0)
    {
LABEL_3:
      if ((v3 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v3 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  result = [*(a1 + 32) _queue_annotateTouch:*(a1 + 64) withUniqueString:@"swipe-locked"];
  v3 = *(a1 + 68);
  if ((v3 & 0x2000) == 0)
  {
LABEL_4:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = [*(a1 + 32) _queue_annotateTouch:*(a1 + 64) withUniqueString:@"swipe-pending"];
  v3 = *(a1 + 68);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_5:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = [*(a1 + 32) _queue_annotateTouch:*(a1 + 64) withUniqueString:@"swipe up"];
  v3 = *(a1 + 68);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_6:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = [*(a1 + 32) _queue_annotateTouch:*(a1 + 64) withUniqueString:@"swipe down"];
    if ((*(a1 + 68) & 0x8000000) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = [*(a1 + 32) _queue_annotateTouch:*(a1 + 64) withUniqueString:@"swipe left"];
  v3 = *(a1 + 68);
  if ((v3 & 0x2000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v3 & 0x8000000) == 0)
  {
    return result;
  }

LABEL_15:
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);

  return [v4 _queue_annotateTouch:v5 withUniqueString:@"swipe right"];
}

id sub_1000345F0(uint64_t a1)
{
  [*(a1 + 32) _queue_setCenter:*(a1 + 80) forTouchIdentifier:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) _queue_applyBasicAnnotationTextForTouchIdentifier:*(a1 + 80) pathIndex:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);

  return [v2 _queue_updateHoverStateForTouchIdentifier:v3 z:v4 maxZ:v5];
}

void *sub_100034A78(void *result)
{
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 17) != v2)
  {
    v3 = result;
    *(v1 + 17) = v2;
    if ((result[5] & 1) == 0)
    {
      v4 = result[4];
      v5 = *(v4 + 8);
      *(v4 + 8) = 0;

      v6 = *(v3[4] + 24);

      return [v6 removeAnnotationsForKeyPath:@"hit-test-rgns"];
    }
  }

  return result;
}

void *sub_100034B6C(void *result)
{
  v1 = result[4];
  v2 = *(result + 40);
  if (*(v1 + 16) != v2)
  {
    *(v1 + 16) = v2;
    if ((result[5] & 1) == 0)
    {
      return [*(result[4] + 24) removeAnnotationsForKeyPath:@"touch"];
    }
  }

  return result;
}

void sub_100034E2C(id a1)
{
  v1 = BSDispatchQueueCreateWithQualityOfService();
  v2 = qword_100125E28;
  qword_100125E28 = v1;
}

void sub_100035C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100035C24(va);
  _Unwind_Resume(a1);
}

void sub_100035C24(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_100035C70(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 8);
  if (v4)
  {
    v4[2] = v3;
    v5 = *(a1 + 40);
    if (v5 && v4 != 0)
    {
      objc_setProperty_nonatomic_copy(v4, a2, v5, 32);
    }
  }

  v7 = *(a1 + 20);
  if (v7 == 2)
  {
    v9 = *(a1 + 8);
    if (v9)
    {
      v9 = v9[3];
    }

    v10 = v9;
    [v10 removeIndex:v3];
  }

  else
  {
    if (v7 != 1)
    {
      return;
    }

    v8 = *(a1 + 8);
    if (v8)
    {
      v8 = v8[3];
    }

    v10 = v8;
    [v10 addIndex:v3];
  }
}

void sub_100035D34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6)
{
  v10 = a5;
  v24 = a6;
  if (a1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = *v28;
      type = 2 * (a4 == 0);
      do
      {
        v13 = 0;
        v14 = v24;
        do
        {
          if (*v28 != v26)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * v13);
          Copy = IOHIDEventCreateCopy();
          v17 = [BKSHIDEventBaseAttributes baseAttributesFromProvider:v15];
          BKSHIDEventSetAttributes();
          v18 = sub_100008528();
          v19 = v18;
          if (a3)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              sub_100027568(Copy);
              v20 = v10;
              v22 = v21 = a3;
              *buf = 138543618;
              v32 = v22;
              v33 = 2114;
              v34 = v15;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "out %{public}@ -> %{public}@", buf, 0x16u);

              a3 = v21;
              v10 = v20;
              v14 = v24;
            }
          }

          else if (os_log_type_enabled(v18, type))
          {
            TimeStamp = IOHIDEventGetTimeStamp();
            *buf = 134218242;
            v32 = TimeStamp;
            v33 = 2114;
            v34 = v15;
            _os_log_impl(&_mh_execute_header, v19, type, "out %llX -> %{public}@", buf, 0x16u);
          }

          [v14 postEvent:Copy toDestination:v15];
          CFRelease(Copy);

          v13 = v13 + 1;
        }

        while (v12 != v13);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }
  }
}

void sub_100035FC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = v6;
  if (v6)
  {
    if (v6[2] > 3u)
    {
      goto LABEL_22;
    }

    v8 = *(v6 + 5);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [*(a3 + 56) destinationsForEvent:a2 fromSender:*(a3 + 48)];
  if (([v10 isEqual:v9] & 1) == 0 && v7)
  {
    if (*(v7 + 2))
    {
      v11 = [v9 mutableCopy];
      [v11 minusSet:v10];
      v12 = sub_100008528();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *a3;
        *buf = 138543618;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: removed destinations: %{public}@", buf, 0x16u);
      }

      v45 = v11;
      v47 = a1;
      if ([v11 count])
      {
        v14 = *(a3 + 56);
        v15 = v11;
        v16 = v14;
        v17 = *a3;
        v18 = *(a3 + 8);
        if (!v18 || (v19 = v18, !*(v18 + 2)))
        {
          v37 = [NSString stringWithFormat:@"bug: shouldn't have a record at idle stage", v45];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v38 = NSStringFromSelector("_postCancelEventToDestinations:locals:dispatcher:");
            v39 = objc_opt_class();
            v40 = NSStringFromClass(v39);
            *buf = 138544642;
            *&buf[4] = v38;
            *&buf[12] = 2114;
            *&buf[14] = v40;
            *&buf[22] = 2048;
            v49 = v47;
            LOWORD(v50) = 2114;
            *(&v50 + 2) = @"BKHIDTouchSensitiveButtonEventProcessor.m";
            WORD5(v50) = 1024;
            HIDWORD(v50) = 305;
            LOWORD(v51) = 2114;
            *(&v51 + 2) = v37;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v37 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x100036484);
        }

        v20 = v18[3];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100036664;
        v49 = &unk_1000FAC90;
        v52 = a3;
        *&v50 = v17;
        *(&v50 + 1) = v47;
        v21 = v15;
        *&v51 = v21;
        v22 = v16;
        *(&v51 + 1) = v22;
        v23 = v17;
        [v20 enumerateIndexesWithOptions:2 usingBlock:buf];

        v11 = v45;
      }

      v24 = [v10 mutableCopy];
      [v24 minusSet:v9];
      v25 = sub_100008528();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *a3;
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: added destinations: %{public}@", buf, 0x16u);
      }

      if ([v24 count])
      {
        v27 = *(a3 + 56);
        v28 = v24;
        v29 = v27;
        v30 = *a3;
        v31 = *(a3 + 8);
        if (!v31 || (v32 = v31, !*(v31 + 2)))
        {
          v41 = [NSString stringWithFormat:@"bug: shouldn't have a record at idle stage"];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v42 = NSStringFromSelector("_postEnterEventToDestinations:locals:dispatcher:");
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            *buf = 138544642;
            *&buf[4] = v42;
            *&buf[12] = 2114;
            *&buf[14] = v44;
            *&buf[22] = 2048;
            v49 = v47;
            LOWORD(v50) = 2114;
            *(&v50 + 2) = @"BKHIDTouchSensitiveButtonEventProcessor.m";
            WORD5(v50) = 1024;
            HIDWORD(v50) = 286;
            LOWORD(v51) = 2114;
            *(&v51 + 2) = v41;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v41 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x100036578);
        }

        v33 = v31[3];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100036588;
        v49 = &unk_1000FAC90;
        v52 = a3;
        *&v50 = v30;
        *(&v50 + 1) = v47;
        v34 = v28;
        *&v51 = v34;
        v35 = v29;
        *(&v51 + 1) = v35;
        v36 = v30;
        [v33 enumerateIndexesUsingBlock:buf];

        v11 = v46;
      }
    }

    objc_storeStrong(v7 + 5, v10);
  }

LABEL_22:
}

void sub_100036588(uint64_t a1)
{
  v2 = **(a1 + 64);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 10);
  }

  mach_absolute_time();
  v7 = sub_100026FBC();
  v8 = *(a1 + 64);
  v9 = *(v8 + 8);
  if (v9 && *(v9 + 32))
  {
    IOHIDEventAppendEvent();
    v8 = *(a1 + 64);
  }

  sub_100035D34(*(a1 + 40), v7, 1, *(v8 + 20), *(a1 + 48), *(a1 + 56));

  CFRelease(v7);
}

void sub_100036664(uint64_t a1)
{
  v2 = **(a1 + 64);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 10);
  }

  mach_absolute_time();
  v7 = sub_100026FBC();
  v8 = *(*(a1 + 64) + 8);
  if (v8 && *(v8 + 32))
  {
    IOHIDEventAppendEvent();
  }

  IOHIDEventSetPhase();
  sub_100035D34(*(a1 + 40), v7, 1, *(*(a1 + 64) + 20), *(a1 + 48), *(a1 + 56));

  CFRelease(v7);
}

void sub_100036B38(uint64_t a1)
{
  v2 = +[BKGSEventSystem sharedInstance];
  [v2 _handleEvent:a1];
}

void sub_100036C30(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100125E38;
  qword_100125E38 = v1;
}

void sub_100036F34(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    if (*(a1 + 56))
    {
      v2 = BKLogUISensor();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Estimated prox shutting off", &v14, 2u);
      }

      v3 = *(a1 + 56);
      v4 = *(a1 + 56);
      *(a1 + 56) = 0;

      if (([*(a1 + 64) estimatedProximityMode] & 1) == 0)
      {
        v10 = [NSString stringWithFormat:@"we shouldn't be here if the current mode isn't estimatedProx"];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v11 = NSStringFromSelector("_locked_cancelEstimatedProximityEventShutoffTimerAndResetMode:");
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = 138544642;
          v15 = v11;
          v16 = 2114;
          v17 = v13;
          v18 = 2048;
          v19 = a1;
          v20 = 2114;
          v21 = @"BKHIDUISensorController.m";
          v22 = 1024;
          v23 = 375;
          v24 = 2114;
          v25 = v10;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v14, 0x3Au);
        }

        [v10 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1000371C8);
      }

      v5 = [*(a1 + 64) versionedPID];
      v6 = sub_1000371D0(a1, v5, 0);
      v7 = v6;
      if (!v6 || (objc_storeStrong((v6 + 8), *(v6 + 16)), v8 = v7[2], v7[2] = 0, v8, !v7[1]))
      {
        sub_100037394(a1, v5);
      }

      sub_100037458(a1, *(a1 + 64));

      if ([a1 estimatedProxPowerAssertionID])
      {
        v9 = BKLogUISensor();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Releasing estimated prox power assertion", &v14, 2u);
        }

        IOPMAssertionRelease(*(a1 + 12));
        [a1 setEstimatedProxPowerAssertionID:0];
      }

      dispatch_source_cancel(v3);
    }
  }
}

id sub_1000371D0(uint64_t a1, void *a2, int a3)
{
  os_unfair_lock_assert_owner((a1 + 8));
  v6 = *(a1 + 24);
  v7 = [NSNumber numberWithLongLong:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3 == 0;
  }

  if (!v9)
  {
    objc_initWeak(&location, a1);
    v10 = [BSProcessDeathWatcher alloc];
    v11 = &_dispatch_main_q;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000377BC;
    v17[3] = &unk_1000FCEA0;
    objc_copyWeak(v18, &location);
    v18[1] = a2;
    v12 = [v10 initWithPID:a2 queue:&_dispatch_main_q deathHandler:v17];

    v13 = objc_alloc_init(BKUISensorClient);
    v8 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_deathWatcher, v12);
    }

    v14 = *(a1 + 24);
    v15 = [NSNumber numberWithLongLong:a2];
    [v14 setObject:v8 forKeyedSubscript:v15];

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  return v8;
}

void sub_10003736C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100037394(uint64_t a1, id a2)
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    v6 = *(a1 + 64);
    if ([v6 versionedPID] == a2 && objc_msgSend(v6, "estimatedProximityMode"))
    {
      os_unfair_lock_assert_owner((a1 + 8));
      sub_100036F34(a1);
    }

    v4 = *(a1 + 24);
    v5 = [NSNumber numberWithLongLong:a2];
    [v4 removeObjectForKey:v5];

    sub_100037458(a1, v6);
  }
}

void sub_100037458(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 24) allValues];
  v5 = [v4 bs_compactMap:&stru_1000FAD50];

  v6 = [BKSHIDUISensorMode _prevailingMode:v5];
  v7 = v6;
  if (v3 && v6 && [v3 isEffectivelyEqualToMode:v6])
  {
    v8 = BKLogUISensor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [BSDescriptionStream descriptionForRootObject:v5];
      *buf = 138543618;
      v27 = v7;
      v28 = 2114;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "UISensor mode changing to: %{public}@ (no-op) -- all modes:%{public}@", buf, 0x16u);
    }

    v10 = v7;
    v11 = *(a1 + 64);
    *(a1 + 64) = v10;
  }

  else
  {
    if (([v3 estimatedProximityMode] & 1) == 0)
    {
      os_unfair_lock_assert_owner((a1 + 8));
      sub_100036F34(a1);
    }

    v12 = [v5 count];
    v13 = BKLogUISensor();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12 == 1)
    {
      if (v14)
      {
        *buf = 138543362;
        v27 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "UISensor mode changing to: %{public}@ (no other requested modes)", buf, 0xCu);
      }
    }

    else if (v14)
    {
      v15 = [BSDescriptionStream descriptionForRootObject:v5];
      *buf = 138543618;
      v27 = v7;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "UISensor mode changing to: %{public}@ (all requested modes: %{public}@)", buf, 0x16u);
    }

    if (v7)
    {
      objc_storeStrong((a1 + 64), v7);
      [*(a1 + 16) applyUIMode:v7];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [*(a1 + 32) context];
      v16 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v21 + 1) + 8 * i) sensorModeDidChange:v7];
          }

          v17 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v17);
      }
    }

    else
    {
      v11 = BKLogUISensor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 64);
        *buf = 138543362;
        v27 = v20;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "got a nil new prevailing mode -- leaving previous prevailing mode: %{public}@", buf, 0xCu);
      }
    }
  }
}

id sub_1000377A8(id a1, BKUISensorClient *a2)
{
  if (a2)
  {
    return a2->_mode;
  }

  else
  {
    return 0;
  }
}

void sub_1000377BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained removeModesForVersionedPID:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void sub_100037ABC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    os_unfair_lock_assert_owner((a1 + 8));
    if (!*(a1 + 24))
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = *(a1 + 24);
      *(a1 + 24) = v4;
    }

    v6 = [v8 versionedPID];
    if ([*(a1 + 64) estimatedProximityMode] && objc_msgSend(*(a1 + 64), "versionedPID") == v6)
    {
      os_unfair_lock_assert_owner((a1 + 8));
      sub_100036F34(a1);
    }

    v7 = sub_1000371D0(a1, v6, 0);
    if (!v7)
    {
      v7 = sub_1000371D0(a1, v6, 1);
    }

    sub_100037BC8(v7, v8);
    sub_100037BD8(v7, 0);
    sub_100037458(a1, *(a1 + 64));

    v3 = v8;
  }
}

void sub_100037BC8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_100037BD8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_100038128(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 setVersionedPID:v3];
  [v5 setProximityDetectionMode:5];
  v4 = [*(a1 + 32) multitouchHostStateKeys];
  [v5 setMultitouchHostStateKeys:v4];

  [v5 setChangeSource:{objc_msgSend(*(a1 + 32), "changeSource")}];
  [v5 setEstimatedProximityMode:1];
}

void sub_1000381C4(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = BKLogUISensor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Estimated prox shutoff timer fired", v4, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    os_unfair_lock_assert_owner(v3 + 2);
    sub_100036F34(v3);
  }

  dispatch_source_cancel(*(a1 + 40));
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_100038274(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 8));
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  os_unfair_lock_assert_owner(v2 + 2);
  sub_100036F34(v2);
  v3 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v3);
}

void sub_1000384B0(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 48) propertyForKey:@"ALSRequiresProx"];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = 4;
  if (v5)
  {
    if ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000385C8;
  v9[3] = &unk_1000FAD10;
  v10 = v6;
  v7 = [BKSHIDUISensorMode buildModeForReason:@"backboardd baseline" builder:v9];
  v8 = qword_100125E60;
  qword_100125E60 = v7;
}

void sub_1000385C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setProximityDetectionMode:v2];
  [v3 setDigitizerEnabled:1];
}

void sub_1000387F4(id a1)
{
  v1 = +[BKHIDUISensorConfiguratorFactory sensorConfiguratorForCurrentPlatform];
  if (v1)
  {
    v2 = [BKHIDUISensorController alloc];
    v3 = +[BKDisplayBrightnessController sharedInstance];
    v4 = [(BKHIDUISensorController *)v2 initWithSensorConfiguration:v1 displayBrightnessController:v3];
    v5 = qword_100125E50;
    qword_100125E50 = v4;
  }

  else
  {
    v6 = BKLogUISensor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No UI sensor configuration for this device", v7, 2u);
    }
  }
}

void sub_1000392EC(id a1)
{
  v1 = objc_alloc_init(BKSecurityManager);
  v2 = qword_100125E68;
  qword_100125E68 = v1;
}

void sub_1000393C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) || *(v2 + 16))
  {
    v3 = *(a1 + 40);
    v4 = NSStringFromBSVersionedPID();
    [v3 appendString:v4 withName:@"pid"];

    v5 = *(*(a1 + 32) + 16);
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 40);
    v7 = @"displayUUID";
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = @"default";
    v7 = 0;
  }

  [v6 appendString:v5 withName:v7];
LABEL_7:
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 24);
  v10 = NSStringFromBKSDisplayServicesCloneMirroringMode();
  [v8 appendString:v10 withName:@"mode"];
}

void sub_1000397E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    os_unfair_lock_lock((v1 + 8));
    v3 = BKLogDisplay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "clone mirror remove all for pid %d", v11, 8u);
    }

    v4 = [NSNumber numberWithInt:v2];
    v5 = [*(v1 + 32) objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = *(v1 + 40);
      v8 = [v5 allValues];
      [v7 removeObjectsInArray:v8];

      [*(v1 + 32) removeObjectForKey:v4];
    }

    v9 = [*(v1 + 48) objectForKey:v4];
    [v9 invalidate];

    [*(v1 + 48) removeObjectForKey:v4];
    [v1 _lock_rebuildModeCache];
    WeakRetained = objc_loadWeakRetained((v1 + 16));
    os_unfair_lock_unlock((v1 + 8));
    [WeakRetained cloneMirroringRequestsDidChange];
  }
}

void sub_100039964(id a1)
{
  v1 = objc_alloc_init(BKDisplayCloneMirrorRequestClient);
  v2 = qword_100125E78;
  qword_100125E78 = v1;

  if (qword_100125E78)
  {
    *(qword_100125E78 + 24) = 0;
  }
}

void sub_10003B10C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setDetectionMask:*(a1 + 40)];
  [v4 setMode:*(a1 + 44)];
}

id sub_10003B618(uint64_t a1)
{
  v4 = @"objectInProximity";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_10003BA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003BABC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003BCFC;
  v4[3] = &unk_1000FCCF8;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 logBlock:v4 domain:@"com.apple.backboard.hid.proximity"];
  objc_destroyWeak(&v5);
}

void sub_10003BB78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003BC34;
  v4[3] = &unk_1000FCCF8;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 logBlock:v4 domain:@"com.apple.backboard.hid.proximity"];
  objc_destroyWeak(&v5);
}

id sub_10003BC34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = @"objectInProximity";
  v2 = [NSNumber numberWithBool:WeakRetained[27]];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

id sub_10003BCFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = @"objectInProximity";
  v2 = [NSNumber numberWithBool:WeakRetained[27]];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_10003BDC4(id a1, BKSMutableProximityEvent *a2)
{
  v2 = a2;
  [(BKSMutableProximityEvent *)v2 setMode:0];
  [(BKSMutableProximityEvent *)v2 setDetectionMask:0];
  [(BKSMutableProximityEvent *)v2 setTimestamp:mach_absolute_time()];
}

void sub_10003BF28(void *a1, uint64_t a2)
{
  v98 = a1;
  v3 = @"FromHID";
  v95 = a2;
  sub_100007B10(v105, a2);
  sub_100007418(v105);
  if (v106)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v96 = +[NSMutableDictionary dictionary];
    cf = IOHIDEventCreateData();
    v5 = [cf base64EncodedStringWithOptions:16];
    [v96 setObject:v5 forKeyedSubscript:@"RawCollectionData"];

    CFRelease(cf);
    [v96 setObject:@"FromHID" forKeyedSubscript:@"description"];
    v6 = [NSNumber numberWithUnsignedInt:IOHIDEventGetType()];
    [v96 setObject:v6 forKeyedSubscript:@"type"];

    v7 = [NSNumber numberWithInteger:v106];
    [v96 setObject:v7 forKeyedSubscript:@"pathCount"];

    v8 = v98;
    if (v98)
    {
      v8 = v98[1];
    }

    v9 = v8;
    v10 = [v9 displayUUID];
    [v96 setObject:v10 forKeyedSubscript:@"displayUUID"];

    v11 = [NSNumber numberWithLong:IntegerValue];
    [v96 setObject:v11 forKeyedSubscript:@"generation"];

    v12 = [NSNumber numberWithUnsignedLongLong:IOHIDEventGetTimeStamp()];
    [v96 setObject:v12 forKeyedSubscript:@"timestamp"];

    v13 = [NSNumber numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
    [v96 setObject:v13 forKeyedSubscript:@"senderID"];

    v14 = [NSNumber numberWithUnsignedInt:IOHIDEventGetEventFlags()];
    [v96 setObject:v14 forKeyedSubscript:@"flags"];

    v15 = IOHIDEventGetIntegerValue();
    v16 = [NSNumber numberWithUnsignedInt:v15];
    [v96 setObject:v16 forKeyedSubscript:@"transducerType"];

    if (v15 > 3)
    {
      v17 = &stru_1001013E0;
    }

    else
    {
      v17 = *(&off_1000FAE80 + (v15 & 3));
    }

    [v96 setObject:v17 forKeyedSubscript:@"transducerTypeName"];
    v18 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
    [v96 setObject:v18 forKeyedSubscript:@"transducerIndex"];

    v19 = IOHIDEventGetIntegerValue();
    LODWORD(v18) = v19;
    v20 = [NSNumber numberWithUnsignedInt:v19];
    [v96 setObject:v20 forKeyedSubscript:@"eventMask"];

    v21 = sub_10003D4D4(v18);
    [v96 setObject:v21 forKeyedSubscript:@"eventMaskName"];

    v22 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
    [v96 setObject:v22 forKeyedSubscript:@"buttonMask"];

    v23 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
    [v96 setObject:v23 forKeyedSubscript:@"touch"];

    v24 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
    [v96 setObject:v24 forKeyedSubscript:@"range"];

    IOHIDEventGetFloatValue();
    v25 = [NSNumber numberWithDouble:?];
    [v96 setObject:v25 forKeyedSubscript:@"pressure"];

    IOHIDEventGetFloatValue();
    v26 = [NSNumber numberWithDouble:?];
    [v96 setObject:v26 forKeyedSubscript:@"auxilliaryPressure"];

    IOHIDEventGetFloatValue();
    v27 = [NSNumber numberWithDouble:?];
    [v96 setObject:v27 forKeyedSubscript:@"twist"];

    v28 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
    [v96 setObject:v28 forKeyedSubscript:@"generationCount"];

    v29 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
    [v96 setObject:v29 forKeyedSubscript:@"willUpdateMask"];

    v30 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
    [v96 setObject:v30 forKeyedSubscript:@"didUpdateMask"];

    v117[0] = @"x";
    IOHIDEventGetFloatValue();
    v31 = [NSNumber numberWithDouble:?];
    v118[0] = v31;
    v117[1] = @"y";
    IOHIDEventGetFloatValue();
    v32 = [NSNumber numberWithDouble:?];
    v118[1] = v32;
    v117[2] = @"z";
    IOHIDEventGetFloatValue();
    v33 = [NSNumber numberWithDouble:?];
    v118[2] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v118 forKeys:v117 count:3];
    [v96 setObject:v34 forKeyedSubscript:@"location"];

    v115[0] = @"x";
    IOHIDEventGetFloatValue();
    v35 = [NSNumber numberWithDouble:?];
    v115[1] = @"y";
    v116[0] = v35;
    IOHIDEventGetFloatValue();
    v36 = [NSNumber numberWithDouble:?];
    v116[1] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:2];
    [v96 setObject:v37 forKeyedSubscript:@"tilt"];

    v97 = +[NSMutableArray array];
    [v96 setObject:? forKeyedSubscript:?];
    sub_100007B10(v103, v95);
    sub_100007418(v103);
    v99 = v103[0];
    v100 = v103[1];
    v101 = v103[2];
    v102 = v104;
    while (*(&v100 + 1))
    {
      v38 = v101;
      *(&v101 + 1) = *(&v100 + 1);
      v102 = v101;
      v39 = +[NSMutableDictionary dictionary];
      [v97 addObject:v39];
      v40 = [NSNumber numberWithInteger:v38];
      [v39 setObject:v40 forKeyedSubscript:@"pathIndex"];

      v41 = [NSNumber numberWithUnsignedInt:IOHIDEventGetType()];
      [v39 setObject:v41 forKeyedSubscript:@"type"];

      v42 = sub_1000689B8(v98[14], v38);
      if (v42)
      {
        v43 = v42[4];
      }

      else
      {
        v43 = 0;
      }

      v44 = [NSNumber numberWithUnsignedInt:v43];
      [v39 setObject:v44 forKeyedSubscript:@"touchID"];

      v45 = [NSNumber numberWithUnsignedInt:IOHIDEventGetEventFlags()];
      [v39 setObject:v45 forKeyedSubscript:@"flags"];

      v46 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v46 forKeyedSubscript:@"identity"];

      v47 = IOHIDEventGetIntegerValue();
      v48 = [NSNumber numberWithUnsignedInt:v47];
      [v39 setObject:v48 forKeyedSubscript:@"transducerType"];

      v49 = &stru_1001013E0;
      if (v47 <= 3)
      {
        v49 = *(&off_1000FAE80 + (v47 & 3));
      }

      [v39 setObject:v49 forKeyedSubscript:@"transducerTypeName"];
      v50 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v50 forKeyedSubscript:@"transducerIndex"];

      v51 = IOHIDEventGetIntegerValue();
      LODWORD(v50) = v51;
      v52 = [NSNumber numberWithUnsignedInt:v51];
      [v39 setObject:v52 forKeyedSubscript:@"eventMask"];

      v53 = sub_10003D4D4(v50);
      [v39 setObject:v53 forKeyedSubscript:@"eventMaskName"];

      v54 = IOHIDEventGetIntegerValue();
      if (v54)
      {
        v55 = [NSNumber numberWithLong:v54];
        [v39 setObject:v55 forKeyedSubscript:@"generation"];

        v56 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
        [v39 setObject:v56 forKeyedSubscript:@"willUpdateMask"];

        v57 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
        [v39 setObject:v57 forKeyedSubscript:@"didUpdateMask"];
      }

      v58 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v58 forKeyedSubscript:@"buttonMask"];

      v59 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v59 forKeyedSubscript:@"touch"];

      v60 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v60 forKeyedSubscript:@"range"];

      IOHIDEventGetFloatValue();
      v61 = [NSNumber numberWithDouble:?];
      [v39 setObject:v61 forKeyedSubscript:@"pressure"];

      IOHIDEventGetFloatValue();
      v62 = [NSNumber numberWithDouble:?];
      [v39 setObject:v62 forKeyedSubscript:@"auxilliaryPressure"];

      IOHIDEventGetFloatValue();
      v63 = [NSNumber numberWithDouble:?];
      [v39 setObject:v63 forKeyedSubscript:@"twist"];

      v64 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v64 forKeyedSubscript:@"generationCount"];

      v65 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v65 forKeyedSubscript:@"willUpdateMask"];

      v66 = [NSNumber numberWithLong:IOHIDEventGetIntegerValue()];
      [v39 setObject:v66 forKeyedSubscript:@"didUpdateMask"];

      v113[0] = @"x";
      IOHIDEventGetFloatValue();
      v67 = [NSNumber numberWithDouble:?];
      v114[0] = v67;
      v113[1] = @"y";
      IOHIDEventGetFloatValue();
      v68 = [NSNumber numberWithDouble:?];
      v114[1] = v68;
      v113[2] = @"z";
      IOHIDEventGetFloatValue();
      v69 = [NSNumber numberWithDouble:?];
      v114[2] = v69;
      v70 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:3];
      [v39 setObject:v70 forKeyedSubscript:@"location"];

      IOHIDEventGetFloatValue();
      v71 = [NSNumber numberWithDouble:?];
      [v39 setObject:v71 forKeyedSubscript:@"quality"];

      IOHIDEventGetFloatValue();
      v72 = [NSNumber numberWithDouble:?];
      [v39 setObject:v72 forKeyedSubscript:@"density"];

      IOHIDEventGetFloatValue();
      v73 = [NSNumber numberWithDouble:?];
      [v39 setObject:v73 forKeyedSubscript:@"irregularity"];

      IOHIDEventGetFloatValue();
      v74 = [NSNumber numberWithDouble:?];
      [v39 setObject:v74 forKeyedSubscript:@"majorRadius"];

      IOHIDEventGetFloatValue();
      v75 = [NSNumber numberWithDouble:?];
      [v39 setObject:v75 forKeyedSubscript:@"minorRadius"];

      IOHIDEventGetFloatValue();
      v76 = [NSNumber numberWithDouble:?];
      [v39 setObject:v76 forKeyedSubscript:@"accuracy"];

      IOHIDEventGetFloatValue();
      v78 = v77;
      IOHIDEventGetFloatValue();
      v80 = v79;
      v111[0] = @"precise";
      v109[0] = @"x";
      v81 = [NSNumber numberWithDouble:v78];
      v109[1] = @"y";
      v110[0] = v81;
      v82 = [NSNumber numberWithDouble:v80];
      v110[1] = v82;
      v83 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:2];
      v112[0] = v83;
      v111[1] = @"rounded";
      v107[0] = @"x";
      v84 = [NSNumber numberWithDouble:v78];
      v107[1] = @"y";
      v108[0] = v84;
      v85 = [NSNumber numberWithDouble:v80];
      v108[1] = v85;
      v86 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:2];
      v112[1] = v86;
      v87 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:2];
      [v39 setObject:v87 forKeyedSubscript:@"digitizerPoints"];

      sub_100007418(&v99);
    }

    v88 = BKSHIDEventGetDigitizerAttributes();
    v89 = [v88 systemGestureStateChange];
    v90 = IOHIDEventGetIntegerValue();
    v91 = [NSNumber numberWithBool:v89];
    [v96 setObject:v91 forKeyedSubscript:@"systemGesturesPossible"];

    v92 = [NSNumber numberWithBool:(v90 >> 7) & 1];
    [v96 setObject:v92 forKeyedSubscript:@"isCancelling"];

    v93 = +[SLGLog sharedInstance];
    [v93 log:v96];
  }
}

id sub_10003D4D4(int a1)
{
  v2 = +[NSMutableArray array];
  v3 = v2;
  if ((a1 & 0x20000) != 0)
  {
    [v2 addObject:@"Tap"];
  }

  if ((a1 & 0x10) != 0)
  {
    [v3 addObject:@"Peak"];
  }

  if ((a1 & 8) != 0)
  {
    [v3 addObject:@"Stop"];
  }

  if (a1)
  {
    [v3 addObject:@"Range"];
  }

  if ((a1 & 0x100) != 0)
  {
    [v3 addObject:@"Start"];
  }

  if ((a1 & 2) != 0)
  {
    [v3 addObject:@"Touch"];
  }

  if ((a1 & 0x80) != 0)
  {
    [v3 addObject:@"Cancel"];
  }

  if ((a1 & 0x200) != 0)
  {
    [v3 addObject:@"Resting"];
  }

  if ((a1 & 0x1000000) != 0)
  {
    [v3 addObject:@"SwipeUp"];
  }

  if ((a1 & 0x2000000) != 0)
  {
    [v3 addObject:@"SwipeDown"];
  }

  if ((a1 & 0x4000000) != 0)
  {
    [v3 addObject:@"SwipeLeft"];
  }

  if ((a1 & 0x8000000) != 0)
  {
    [v3 addObject:@"SwipeRight"];
  }

  if ((a1 & 0x40000) != 0)
  {
    [v3 addObject:@"SwipeLocked"];
  }

  if ((a1 & 0x2000) != 0)
  {
    [v3 addObject:@"SwipePending"];
  }

  if ((a1 & 0x20) != 0)
  {
    [v3 addObject:@"Identity"];
  }

  if ((a1 & 4) != 0)
  {
    [v3 addObject:@"Position"];
  }

  if ((a1 & 0x40) != 0)
  {
    [v3 addObject:@"Attribute"];
  }

  if ((a1 & 0x1000) != 0)
  {
    [v3 addObject:@"FromCorner"];
  }

  if ((a1 & 0x800) != 0)
  {
    [v3 addObject:@"FromEdgeTip"];
  }

  if ((a1 & 0x400) != 0)
  {
    [v3 addObject:@"FromEdgeFlat"];
  }

  if ((a1 & 0x8000) != 0)
  {
    [v3 addObject:@"FromEdgeForceActive"];
  }

  if ((a1 & 0x4000) != 0)
  {
    [v3 addObject:@"FromEdgeForcePending"];
  }

  if ((a1 & 0x20000000) != 0)
  {
    [v3 addObject:@"EstimatedAzimuth"];
  }

  if ((a1 & 0x10000000) != 0)
  {
    [v3 addObject:@"EstimatedAltitude"];
  }

  if ((a1 & 0x40000000) != 0)
  {
    [v3 addObject:@"EstimatedPressure"];
  }

  v4 = [v3 componentsJoinedByString:@" "];

  return v4;
}

void sub_10003E4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t sub_10003E50C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003E524(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  if (a3)
  {
    v4 = *(a3 + 24);
  }

  else
  {
    v4 = 0;
  }

  obj = v4;
  v32 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v32)
  {
    v31 = *v51;
    do
    {
      v5 = 0;
      do
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v5;
        v6 = *(*(&v50 + 1) + 8 * v5);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v35 = v6;
        v34 = [v6 senderDescriptors];
        v37 = [v34 countByEnumeratingWithState:&v46 objects:v56 count:16];
        if (v37)
        {
          v36 = *v47;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v47 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v8 = *(*(&v46 + 1) + 8 * i);
              v9 = [v8 senderID];
              if (v9)
              {
                v10 = [NSNumber numberWithUnsignedLongLong:v9];
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                v11 = [v35 contextIDs];
                v12 = [v11 countByEnumeratingWithState:&v42 objects:v55 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v43;
                  do
                  {
                    for (j = 0; j != v13; j = j + 1)
                    {
                      if (*v43 != v14)
                      {
                        objc_enumerationMutation(v11);
                      }

                      v16 = *(*(&v42 + 1) + 8 * j);
                      v17 = *(*(a1[4] + 8) + 40);
                      if (!v17)
                      {
                        v18 = objc_alloc_init(NSMutableDictionary);
                        v19 = *(a1[4] + 8);
                        v20 = *(v19 + 40);
                        *(v19 + 40) = v18;

                        v17 = *(*(a1[4] + 8) + 40);
                      }

                      [v17 bs_addObject:v16 toCollectionClass:a1[6] forKey:v10];
                    }

                    v13 = [v11 countByEnumeratingWithState:&v42 objects:v55 count:16];
                  }

                  while (v13);
                }

LABEL_24:
                continue;
              }

              if ([v8 primaryPage] == 1 && objc_msgSend(v8, "primaryUsage") == 2)
              {
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v10 = [v35 contextIDs];
                v21 = [v10 countByEnumeratingWithState:&v38 objects:v54 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v39;
                  do
                  {
                    for (k = 0; k != v22; k = k + 1)
                    {
                      if (*v39 != v23)
                      {
                        objc_enumerationMutation(v10);
                      }

                      v25 = *(*(&v38 + 1) + 8 * k);
                      v26 = *(*(a1[5] + 8) + 40);
                      if (!v26)
                      {
                        v27 = objc_alloc_init(NSMutableArray);
                        v28 = *(a1[5] + 8);
                        v29 = *(v28 + 40);
                        *(v28 + 40) = v27;

                        v26 = *(*(a1[5] + 8) + 40);
                      }

                      [v26 addObject:v25];
                    }

                    v22 = [v10 countByEnumeratingWithState:&v38 objects:v54 count:16];
                  }

                  while (v22);
                }

                goto LABEL_24;
              }
            }

            v37 = [v34 countByEnumeratingWithState:&v46 objects:v56 count:16];
          }

          while (v37);
        }

        v5 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v32);
  }
}

void sub_10003EA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003EA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + 16);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003EAE0;
  v5[3] = &unk_1000FAEF0;
  v5[4] = *(a1 + 32);
  return [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_10003EAE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = *(*(*(a1 + 32) + 8) + 40);
        if (!v12)
        {
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = *(*(a1 + 32) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;

          v12 = *(*(*(a1 + 32) + 8) + 40);
        }

        [v12 setObject:v5 forKey:v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

void sub_10003F67C(id a1)
{
  v1 = objc_alloc_init(BKTouchEventServer);
  v2 = qword_100125E90;
  qword_100125E90 = v1;
}

id sub_10003F6B8(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 32);
    v7 = [NSNumber numberWithUnsignedLongLong:a2];
    v8 = [v6 objectForKey:v7];

    if (a3)
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10)
      {
        if (v11)
        {
          v13 = [v10 arrayByAddingObjectsFromArray:v11];
        }

        else
        {
          v13 = v10;
        }
      }

      else
      {
        v13 = v11;
      }

      v8 = v13;
    }

    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_10003FD10()
{
  objc_opt_self();
  if (qword_100125E98 != -1)
  {
    dispatch_once(&qword_100125E98, &stru_1000FAF60);
  }

  v0 = qword_100125EA0;

  return v0;
}

void sub_10003FD68(id a1)
{
  v1 = objc_alloc_init(BKDisplayAnnotationDisplayController);
  v2 = qword_100125EA0;
  qword_100125EA0 = v1;
}

id sub_10003FE84(uint64_t a1, mach_port_t a2, double a3, double a4, double a5)
{
  LODWORD(a3) = *(a1 + 56);
  LODWORD(a4) = *(a1 + 60);
  LODWORD(a5) = *(a1 + 64);
  if ([*(a1 + 32) _passesThresholdForX:a3 y:a4 z:a5])
  {
    sub_10000A674(a2, 1, *(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 64));
  }

  result = [*(a1 + 32) _shouldSendSampleEventWithTimestamp:*(a1 + 40) samplingInterval:*(a1 + 48)];
  if (result)
  {
    sub_10000A674(a2, 0, *(a1 + 40), *(a1 + 56), *(a1 + 60), *(a1 + 64));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    return [v8 _setLastAccelerometerEventTimestamp:v9];
  }

  return result;
}

void sub_100040290(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = sub_10000A9C8(*(a1 + 40));
  v8 = [v2 objectForKey:v3];

  v4 = *(a1 + 48);
  if (v8)
  {
    if (v4)
    {
      **(a1 + 48) = [v8 humanIsPresent];
    }

    if (*(a1 + 56))
    {
      [v8 proximityInCentimeters];
      **(a1 + 56) = v5;
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = [v8 status];
    }
  }

  else
  {
    if (v4)
    {
      *v4 = 0;
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      *v6 = 0;
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      *v7 = 0;
    }
  }
}

void sub_10004041C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 setHumanIsPresent:*(a1 + 48)];
  }

  else
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@: missing sensor record for displayUUID %{public}@", &v9, 0x16u);
    }
  }
}

void sub_1000405C0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    [v2 setProximityInCentimeters:*(a1 + 48)];
  }

  else
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@: missing sensor record for displayUUID %{public}@", &v9, 0x16u);
    }
  }
}

id sub_100040D9C(uint64_t a1)
{
  v2 = sub_100052774();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v13 = 134217984;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checkpoint after interval: %gs", &v13, 0xCu);
  }

  [*(a1 + 32) _queue_clearTimer];
  v4 = *(a1 + 32);
  if (v4[11] == 1)
  {
    v5 = &kBKSHIDServicesUserEventPresenceExpired;
    return [v4 _queue_postNotification:*v5];
  }

  v6 = CACurrentMediaTime();
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v9 = v6 - *(v7 + 16);
  if (v9 >= v8)
  {
    *(v7 + 40) = 1;
    v4 = *(a1 + 32);
    v5 = &kBKSHIDServicesUserEventIdled;
    return [v4 _queue_postNotification:*v5];
  }

  v10 = v8 - v9;
  v11 = sub_100052774();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = v10;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Rescheduling checkpoint with new interval: %gs (last user event was %gs ago)", &v13, 0x16u);
  }

  return [*(a1 + 32) _queue_scheduleTimerWithTimeInterval:v10];
}

_BYTE *sub_1000411C4(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v2[11];
  if ((v3 - 2) >= 2)
  {
    if (v3 == 1)
    {
      [v2 _queue_userEventOccurredInPresenceMode];
    }
  }

  else
  {
    [v2 _queue_userEventOccurredInIdleMode];
  }

  result = *(a1 + 32);
  if (result[56] == 1)
  {
    result = [result _queue_postNotification:kBKSHIDServicesUserEventOccurred];
    *(*(a1 + 32) + 56) = 0;
  }

  return result;
}

id sub_1000412F4(uint64_t a1)
{
  v2 = sub_100052774();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = NSStringFromBKSHIDServicesUserEventTimerMode();
    v5 = v4;
    v6 = *(a1 + 40);
    if (v6 == BKSHIDServicesUserEventTimerIntervalForever)
    {
      v6 = INFINITY;
    }

    v15 = 138543618;
    v16 = v4;
    v17 = 2048;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "reset timer to mode:%{public}@ duration:%gs", &v15, 0x16u);
  }

  v7 = *(a1 + 56);
  *(*(a1 + 32) + 44) = v7;
  *(*(a1 + 32) + 8) = *(a1 + 40);
  if (v7 != 3)
  {
    *(*(a1 + 32) + 24) = *(a1 + 48);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 44);
  if (!v9)
  {
    return [v8 _queue_clearTimer];
  }

  v10 = *(v8 + 8);
  switch(v9)
  {
    case 1:
      *(v8 + 40) = 1;
      break;
    case 3:
      *(v8 + 40) = 0;
      v12 = CACurrentMediaTime();
      v13 = *(a1 + 32);
      v14 = v13[3];
      if (v13[2] >= v14)
      {
        v14 = v13[2];
      }

      v10 = fmax(v13[1] - (v12 - v14), 0.0);
      break;
    case 2:
      *(v8 + 40) = 0;
      break;
  }

  return [*(a1 + 32) _queue_scheduleTimerWithTimeInterval:v10];
}

void sub_1000414F4(uint64_t a1)
{
  *(*(a1 + 32) + 57) = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = kBKSHIDServicesSafeToSetIdleTimerNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v2, 0, 0, 1u);
}

void sub_10004197C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100041998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionBuilderWithMultilinePrefix:&stru_1001013E0];
  v3 = [v2 build];

  return v3;
}

void sub_100041A04(id a1)
{
  v1 = objc_alloc_init(BKUserEventTimer);
  v2 = qword_100125EA8;
  qword_100125EA8 = v1;
}

void *sub_100042144(void *result)
{
  if (*(result + 40) == 1)
  {
    v2 = result;
    v3 = [*(result[4] + 8) addSystemShellObserver:result[4] reason:@"first boot detection"];
    v4 = v2[4];
    v5 = *(v4 + 24);
    *(v4 + 24) = v3;

    v6 = v2[4];

    return [v6 _queue_finishBootingIfNecessaryAndTellObservers:0];
  }

  return result;
}

void sub_100042208(id a1)
{
  v1 = [BKFirstBootDetector alloc];
  v6 = +[BKSystemShellSentinel sharedInstance];
  v2 = +[BKFirstBootKernelSemaphoreToken token];
  v3 = +[BKAlternateSystemAppManager sharedInstance];
  v4 = [(BKFirstBootDetector *)v1 initWithSystemAppSentinel:v6 firstBootToken:v2 alternateSystemAppManager:v3];
  v5 = qword_100125EB8;
  qword_100125EB8 = v4;
}

id sub_100042534(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 8) withName:@"senderID" format:1];
  v3 = [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 16) withName:@"page" format:1];
  return [*(a1 + 32) appendUnsignedInteger:*(*(a1 + 40) + 24) withName:@"usage" format:1];
}

void sub_1000429F8(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_msgSend(v4, "appendString:", @"(");
  v3 = *(*(a1 + 32) + 80);
  BSDescriptionStreamAppendBKSKeyModifierFlags();
  [v4 appendString:@""]);
}

id sub_100042B68(id a1, BKIOHIDService *a2)
{
  v3 = a2;
  if ([(BKIOHIDService *)v3 primaryUsagePage]== 1 && [(BKIOHIDService *)v3 primaryUsage]== 6 || ([(BKIOHIDService *)v3 claimsToConformToUsagePage:65 usage:1]& 1) != 0)
  {
LABEL_7:
    v6 = v3;
    objc_opt_self();
    v7 = [BKKeyboardInfo alloc];
    v8 = v6;
    if (!v7)
    {
LABEL_21:

      goto LABEL_25;
    }

    objc_storeStrong(&v7->_service, a2);
    v9 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"Transport"];
    transport = v7->_transport;
    v7->_transport = v9;

    v11 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"ProductID"];
    productID = v7->_productID;
    v7->_productID = v11;

    v13 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"VendorID"];
    vendorID = v7->_vendorID;
    v7->_vendorID = v13;

    v15 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"HIDVirtualDevice"];
    virtualDeviceID = v7->_virtualDeviceID;
    v7->_virtualDeviceID = v15;

    v7->_keyboardType = 0;
    v17 = [(BKIOHIDService *)v8 propertyForKey:@"StandardType"];
    v49 = v17;
    v50 = v3;
    if (v17)
    {
      v18 = [v17 unsignedIntValue];
      v7->_keyboardType = v18;
      if (v18 != -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7->_keyboardType = -1;
    }

    v7->_wantsStandardTypeOverride = 1;
LABEL_13:
    v48 = +[BKSDefaults localDefaults];
    v19 = [v48 keyboardTypeRemap];
    v20 = sub_100075E20(v7);
    v21 = [v19 objectForKey:v20];

    if (v21 && [v21 unsignedIntValue] != v7->_keyboardType)
    {
      v22 = [v21 unsignedIntValue];
      v7->_keyboardType = v22;
      service = v7->_service;
      v24 = [NSNumber numberWithUnsignedInt:v22];
      [(BKIOHIDService *)service setProperty:v24 forKey:@"StandardType"];

      v7->_wantsStandardTypeOverride = 1;
    }

    v47 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"CountryCode"];
    v7->_countryCode = [v47 unsignedCharValue];
    v25 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"KeyboardLanguage"];
    v26 = [v25 copy];
    keyboardLanguage = v7->_keyboardLanguage;
    v7->_keyboardLanguage = v26;

    v28 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"exclusivityIdentifier"];
    v29 = [v28 copy];
    exclusivityIdentifier = v7->_exclusivityIdentifier;
    v7->_exclusivityIdentifier = v29;

    v31 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"PlatformInputModeConfiguration"];
    v32 = [v31 copy];
    platformInputModeConfiguration = v7->_platformInputModeConfiguration;
    v7->_platformInputModeConfiguration = v32;

    v34 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"HIDSubinterfaceID"];
    v7->_subinterfaceID = [v34 integerValue];
    v35 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"CapsLockLanguageSwitch"];
    v36 = [v35 BOOLValue];

    v7->_capsLockKeyHasLanguageSwitchLabel = v36;
    v37 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"SupportsGlobeKey"];
    v38 = [v37 BOOLValue];

    v7->_globeKeyLabelHasGlobeSymbol = v38;
    v39 = [(BKIOHIDService *)v8 propertyOfClass:objc_opt_class() forKey:@"KeyboardEnabledByEvent"];
    v40 = v39;
    if (v39)
    {
      v7->_shouldActivateByGesture = [v39 BOOLValue];
    }

    v41 = sub_100075E78(v7);
    if (v41)
    {
      [(BKIOHIDService *)v7->_service setProperty:v41 forKey:@"HIDKeyboardModifierMappingPairs"];
    }

    v42 = v7;
    v3 = v50;
    goto LABEL_21;
  }

  v4 = [(BKIOHIDService *)v3 propertyForKey:@"DeviceTypeHint"];
  v5 = v4;
  if (v4 && ([v4 isEqualToString:@"Trackpad"] & 1) != 0)
  {

    goto LABEL_7;
  }

  v43 = BKLogKeyboard();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [(BKIOHIDService *)v3 propertyForKey:@"Manufacturer"];
    v45 = [(BKIOHIDService *)v3 propertyForKey:@"Product"];
    *buf = 138543874;
    v52 = v44;
    v53 = 2114;
    v54 = v45;
    v55 = 2114;
    v56 = v3;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Ignoring service with secondary keyboard usage: %{public}@/%{public}@/%{public}@", buf, 0x20u);
  }

  v7 = 0;
LABEL_25:

  return v7;
}

void sub_1000445F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_100044628(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 smartKeyboardAttachmentStateDidChange:v4];

    WeakRetained = v4;
  }
}

void sub_100045104(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventType:3];
  [v3 setOriginIdentifier:0xC181BADB23D8497BLL];
  [v3 setContext:*(a1 + 32)];
  [v3 setVersionedPID:*(a1 + 40)];
  [v3 setRegistrantEntitled:1];
}

void sub_10004518C(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setEventType:3];
  v3 = [*(*(a1 + 32) + 152) clientConnectionManager];
  v4 = [v3 versionedPIDForPID:{objc_msgSend(*(a1 + 40), "pid")}];

  [v5 setVersionedPID:v4];
}

void sub_10004544C(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v13)
  {
    if (v13[1] != *(a1 + 32))
    {
      goto LABEL_5;
    }

    v6 = *(v13 + 8);
    v7 = *(v13 + 12);
    goto LABEL_4;
  }

  if (!*(a1 + 32))
  {
LABEL_4:
    v8 = *(a1 + 40);
    KeyboardEvent = IOHIDEventCreateKeyboardEvent();
    v10 = *(a1 + 32);
    IOHIDEventSetSenderID();
    v11 = [v5 firstAdditionalContext];
    v12 = [v11 copy];

    [v5 postEvent:KeyboardEvent position:3 additionalContext:v12];
    CFRelease(KeyboardEvent);
  }

LABEL_5:
}

void sub_1000457B8(void *a1)
{
  v2 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
  v3 = [v2 integerValue];

  if (a1[6] == v3)
  {
    v4 = a1[5];
    v5 = *(a1[4] + 128);

    [v5 removeObjectForKey:v4];
  }
}

void sub_100045DD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) _lock_publishUsableKeyboards:*(a1 + 40) toServiceConnection:v5];
  }
}

void sub_100045F78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100045F9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    (*(*(a1 + 40) + 16))();
    if (v3)
    {
      v6 = BKLogKeyboard();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "error in setConnectedKeyboards response:%@", &v8, 0xCu);
      }
    }

    else if (*(a1 + 56) != *&v5[6]._os_unfair_lock_opaque)
    {
      v7 = [*&v5[10]._os_unfair_lock_opaque bs_map:&stru_1000FB128];
      [(os_unfair_lock_s *)v5 _lock_publishUsableKeyboards:v7 toServiceConnection:*(a1 + 32)];
    }

    os_unfair_lock_unlock(v5 + 2);
  }
}

uint64_t sub_100046580(int a1, int a2)
{
  if (qword_100125ED0 != -1)
  {
    dispatch_once(&qword_100125ED0, &stru_1000FB288);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = qword_100125EC8;
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v22 = 0;
    v6 = *v26;
    *&v4 = 138543362;
    v21 = v4;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"productID", v21}];
        v10 = objc_opt_class();
        v11 = v9;
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        v14 = [v8 objectForKey:@"vendorID"];
        v15 = objc_opt_class();
        v16 = v14;
        if (v15)
        {
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (!v13 || !v18)
        {
          v19 = BKLogKeyboard();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v30 = qword_100125EC8;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unfamiliar MG query result format: %{public}@", buf, 0xCu);
          }

          goto LABEL_27;
        }

        if ([v13 unsignedIntValue] == a2 && objc_msgSend(v18, "unsignedIntValue") == a1)
        {
          v19 = BKLogKeyboard();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Keyboard requires HES workaround for open", buf, 2u);
          }

          v22 = 1;
LABEL_27:
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (!v5)
      {
        goto LABEL_32;
      }
    }
  }

  v22 = 0;
LABEL_32:

  return v22 & 1;
}

void sub_10004686C(id a1)
{
  v1 = MGCopyAnswer();
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = qword_100125EC8;
  qword_100125EC8 = v5;

  if (!qword_100125EC8)
  {
    v7 = BKLogKeyboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unfamiliar MG query result format: %{public}@", &v8, 0xCu);
    }
  }
}

void sub_100046A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 senderID];

  v8 = [NSNumber numberWithUnsignedLongLong:v7];
  v9 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v8];

  if (!v9)
  {
    if (v4)
    {
      v10 = v4[3];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 propertyForKey:@"VendorID"];
    v13 = [v12 unsignedIntValue];
    v14 = [v11 propertyForKey:@"ProductID"];
    v15 = sub_100046580(v13, [v14 unsignedIntValue]);

    if (v15)
    {
      ++*(*(a1 + 32) + 96);
      v16 = *(a1 + 32);
      if (*(v16 + 96) == 1)
      {
        v17 = [*(v16 + 168) eventProcessorOfClass:objc_opt_class()];
        [v17 setAttachedCoverRequiresWorkaroundForOpenState:1];
      }
    }

    if (v4)
    {
      v18 = v4[3];
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [v19 addDisappearanceObserver:*(a1 + 32) queue:&_dispatch_main_q];

    [*(*(a1 + 32) + 32) setObject:v4 forKeyedSubscript:v8];
    v20 = BKLogKeyboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Keyboard attached: %{public}@", &v21, 0xCu);
    }

    [*(a1 + 32) _lock_watchForGestures:v4];
    if (sub_100076354(v4))
    {
      [*(a1 + 32) _lock_usableKeyboardAttached:v4];
    }
  }
}

id sub_100046ED0(id a1, NSNumber *a2, BKKeyboardInfo *a3)
{
  v4 = a3;
  v5 = [(NSNumber *)a2 integerValue];
  if (v4)
  {
    activeModifiers = v4->_activeModifiers;
  }

  else
  {
    activeModifiers = 0;
  }

  return [NSNumber numberWithInteger:activeModifiers | v5];
}

void sub_10004889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000488C0(uint64_t a1)
{
  v2 = BKLogKeyboard();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "external defaults did change %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _modifierRemappingsDidChange];
}

__CFString *sub_100048970(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [BSDescriptionStream descriptionForRootObject:WeakRetained];
  }

  else
  {
    v2 = @"<nil>";
  }

  return v2;
}

void sub_1000496B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_digitizerStateForService:*(a1 + 40)];
  if (!v2)
  {
    v3 = BKLogTouchEvents();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = 138543362;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "*** unknown digitizer %{public}@ -- initializing now", &v5, 0xCu);
    }

    v2 = [*(a1 + 32) _queue_addDigitizerStateForService:*(a1 + 40)];
  }

  sub_100086AE4(v2, *(a1 + 48));
}

void sub_100049F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    [v3 _queue_invalidateTouchStreamClient:v4 reason:@"process-exit"];

    WeakRetained = v4;
  }
}

void sub_10004A158(uint64_t a1, id *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2[14];
    if (v4)
    {
      v5 = v4[31];

      if (v5)
      {
        if (v3)
        {
          v6 = *(v3 + 48);
        }

        else
        {
          v6 = 0;
        }

        v8 = v6;
        sub_100081680(a2, v8);
      }
    }

    if (v3 && (v7 = *(v3 + 48)) != 0)
    {
      v9 = v7;
      [v7[3] removeObject:v3];
      sub_100081910(a2, v9);
    }

    else
    {
      v9 = 0;
      sub_100081910(a2, 0);
    }
  }
}

void sub_10004A344(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_10004AE58(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 104) = v1;
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004AED0;
  v4[3] = &unk_1000FB568;
  v4[4] = v1;
  return [v2 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v4];
}

void sub_10004AED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 104) = *(a1 + 32);
    v3 = [*(a2 + 8) displayUUID];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v4 = [*(a2 + 120) allValues];
    obj = v4;
    v23 = [v4 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v23)
    {
      v22 = *v31;
      do
      {
        v5 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v30 + 1) + 8 * v5);
          if (v6)
          {
            v7 = *(v6 + 8);
          }

          else
          {
            v7 = 0;
          }

          v24 = [*(a2 + 128) objectForKey:v7];
          if (v24)
          {
            v8 = v24[31] == 0;

            if (!v8)
            {
              sub_100008070(v29, a2);
              v9 = objc_alloc_init(NSMutableArray);
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              v10 = v24;
              v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
              if (v11)
              {
                v12 = *v26;
                do
                {
                  v13 = 0;
                  do
                  {
                    if (*v26 != v12)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v14 = *(*(&v25 + 1) + 8 * v13);
                    sub_100083608(v14, v29);
                    if (v6)
                    {
                      v15 = *(v6 + 8);
                    }

                    else
                    {
                      v15 = 0;
                    }

                    v16 = sub_100088EFC(a2, v14, v15, v3, 1);
                    [v9 addObject:v16];

                    v13 = v13 + 1;
                  }

                  while (v11 != v13);
                  v17 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
                  v11 = v17;
                }

                while (v17);
              }

              v18 = sub_10000839C(v29);
              v19 = objc_alloc_init(BKHIDEventCollector);
              sub_100084C1C(a2, v18, v6, v19, 0, v9, *(a2 + 96));
              sub_100081F08(a2, v19);

              if (v18)
              {
                CFRelease(v18);
              }

              sub_10000968C(v29);
            }
          }

          v5 = v5 + 1;
        }

        while (v5 != v23);
        v4 = obj;
        v20 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        v23 = v20;
      }

      while (v20);
    }
  }
}

void sub_10004C0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a29, 8);

  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

id sub_10004C158(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10004C1A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004C1B8(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_servicesMatchingSenderDescriptor:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [v5 BOOLValue];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(*(*(a1 + 56) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v8)
    {
      v10 = *v16;
      *&v9 = 67109378;
      v14 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 32) _queue_digitizerStateForService:{*(*(&v15 + 1) + 8 * v11), v14, v15}];
          v13 = BKLogTouchEvents();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v20 = v6;
            v21 = 2114;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "apply hoverDisabled:%{BOOL}u to %{public}@", buf, 0x12u);
          }

          if (v12)
          {
            v12[209] = v6;
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v8);
    }
  }
}

void sub_10004C3FC(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"InputDetectionMode", @"TouchDetectionMode", @"HostStateNotification", 0}];
  v2 = qword_100125EE8;
  qword_100125EE8 = v1;
}

void sub_10004C6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a3 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(*(a1 + 32) + 16))();
}

void sub_10004C7E0(uint64_t a1, uint64_t a2, id *a3)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = sub_100002D14(a3);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10004CC80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 length];
  v4 = BKSDisplayUUIDMainKey;
  if (v3)
  {
    v4 = v2;
  }

  v37 = v4;

  v5 = [*(*(a1 + 40) + 120) objectForKeyedSubscript:v37];
  v6 = sub_100002D14(v5);
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = *(a1 + 56);
    v36 = *(a1 + 48);
    memset(v40, 0, 304);
    v12 = sub_10000ED90(BKDisplayController, 0, 1, 0, v11);
    v13 = *(v7 + 40);
    if (v13)
    {
      v13 = v13[1];
    }

    v14 = v13;
    v15 = [*(v7 + 8) displayUUID];
    v35 = v10;
    v39 = 0;
    v16 = [v14 contextIDAtCAScreenLocation:v15 displayUUID:v12 options:&v39 securityAnalysis:v40 results:{v8, v9}];
    v17 = v39;

    if (v16)
    {
      if (v17)
      {
        [v36 setSecurityAnalysis:v17];
      }

      if (DWORD1(v40[0]))
      {
        v18 = [*(v7 + 16) _queue_slotRecordForSlotID:?];
        v19 = v18;
        if (v18)
        {
          v20 = *(v18 + 16);
          v21 = sub_10000ED90(BKDisplayController, 0, 0, v20, v11);

          v34 = [*(v7 + 8) displayUUID];
          v22 = *(v7 + 40);
          if (v22)
          {
            v22 = v22[1];
          }

          v23 = v22;
          v24 = [v23 contextIDAtCAScreenLocation:v34 displayUUID:v21 options:0 securityAnalysis:v40 results:{v8, v9}];

          if (DWORD1(v40[0]))
          {
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          if (v25 == 1)
          {
            v38 = sub_100096E9C(BKTouchDestination, LODWORD(v40[0]), DWORD2(v40[0]));
            v26 = objc_alloc_init(BKTouchContact);
            v26->_slotID = DWORD1(v40[0]);
            v27 = sub_10000EBFC(v40);
            hitTestInformationAtDown = v26->_hitTestInformationAtDown;
            v26->_hitTestInformationAtDown = v27;

            v29 = [[NSArray alloc] initWithObjects:&v38 count:1];
            hostingChain = v26->_hostingChain;
            v26->_hostingChain = v29;

            sub_100028ED0(v34);
            v26->_denormalizedLocation.hitTestLocation.x = v31;
            v26->_denormalizedLocation.hitTestLocation.y = v32;
            v33 = sub_100085E60(v7, v26, v35, v38);
            [v36 setAuthenticationMessage:v33];
          }
        }
      }
    }
  }
}

void sub_10004D2B0(uint64_t a1)
{
  if (!*(*(a1 + 32) + 144))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = *(a1 + 32);
    v4 = *(v3 + 144);
    *(v3 + 144) = v2;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v8 = *v25;
    *&v7 = 67109120;
    v23 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [v10 slotID];
        v12 = [NSNumber numberWithUnsignedInt:v11];
        v13 = [*(*(a1 + 32) + 144) objectForKeyedSubscript:v12];
        v14 = v13 == 0;

        if (v14)
        {
          v16 = objc_alloc_init(_BKTouchAuthenticationSlotRecord);
          v15 = v16;
          if (v16)
          {
            objc_storeStrong(&v16->_authenticationSpecification, v10);
            v17 = *(a1 + 48);
            *(v15 + 8) = v17;
            *(v15 + 24) = 1;
            if (v17)
            {
LABEL_13:
              if ([v10 initialSampleEvent] == 2)
              {
                v18 = *(*(a1 + 32) + 152);
                if (!v18)
                {
                  v19 = objc_alloc_init(NSMutableOrderedSet);
                  v20 = *(a1 + 32);
                  v21 = *(v20 + 152);
                  *(v20 + 152) = v19;

                  v18 = *(*(a1 + 32) + 152);
                }

                [v18 removeObject:v12];
                [*(*(a1 + 32) + 152) insertObject:v12 atIndex:0];
              }
            }
          }

          else if (*(a1 + 48))
          {
            goto LABEL_13;
          }

          [*(*(a1 + 32) + 144) setObject:v15 forKey:v12];
          [*(a1 + 32) _queue_resetTouchAuthenticationInitialSampleEvent];
          goto LABEL_18;
        }

        v15 = BKLogTouchEvents();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = v23;
          v29 = v11;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "addTouchAuthenticationSpecifications: already registered authentication spec for slotID:%X", buf, 8u);
        }

LABEL_18:

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v22 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      v6 = v22;
    }

    while (v22);
  }
}

void sub_10004D68C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 144);
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v9 = [v2 objectForKey:v3];

  v4 = v9;
  if (v9)
  {
    v5 = v9[2];
    v6 = [v5 copy];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v4 = v9;
    **(a1 + 48) = *(v9 + 8);
  }
}

id sub_10004D8E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 96) = v1;
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004D964;
  v4[3] = &unk_1000FB568;
  v4[4] = v1;
  return [v2 _queue_enumerateDigitizersForDisplay:0 usingBlock:v4];
}

uint64_t sub_10004D964(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 152) = *(result + 32);
  }

  return result;
}

id sub_10004DA68(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004DAE8;
  v3[3] = &unk_1000FB548;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v3];
}

void sub_10004DAE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v18 + 1) + 8 * i);
          v9 = [v8 uniqueIdentifier];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

            v12 = [NSString stringWithFormat:@"from-client.pid-%d.%@", v4, v11];

            v13 = v12;
          }

          else
          {
            v13 = [NSString stringWithFormat:@"from-client.pid-%d", v4];
          }

          v14 = *(a2 + 80);
          v15 = [v8 touchIdentifier];
          v16 = [v8 text];
          [v14 annotateTouch:v15 withString:v16 uniqueIdentifier:v13 fromPID:v4];
        }

        v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v5);
    }
  }
}

id sub_10004DDCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004DE4C;
  v3[3] = &unk_1000FB4A8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  return [v1 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v3];
}

uint64_t sub_10004DE4C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *(result + 32);
    v4 = *(result + 48);
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v10 = v3;
    v11 = 0u;
    v5 = *(a2 + 112);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (*(v9 + 20) == v4)
          {
            *(v9 + 112) = v10;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return sub_100083260(a2, *(a2 + 112));
  }

  return result;
}

id sub_10004E060(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004E0E0;
  v3[3] = &unk_1000FB548;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  v4 = *(a1 + 48);
  return [v1 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v3];
}

void sub_10004E0E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v17 = objc_alloc_init(BKTouchContactSet);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = a2;
    obj = *(a2 + 112);
    v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = *v30;
      v16 = v20;
      do
      {
        v7 = 0;
        do
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v29 + 1) + 8 * v7);
          if (*(v8 + 20) == v4)
          {
            v9 = *(v8 + 208);
            v25 = 0;
            v26 = &v25;
            v27 = 0x2020000000;
            v10 = [v3 shouldAvoidHitTesting];
            v11 = 2;
            if (!v10)
            {
              v11 = 0;
            }

            v28 = v11;
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v20[0] = sub_100086894;
            v20[1] = &unk_1000FC760;
            v21 = v17;
            v22 = v8;
            v23 = v3;
            v24 = &v25;
            [BKSHIDTouchRoutingPolicy inspectChangesWithOldPolicy:v9 newPolicy:v3 usingBlock:v19];
            *(v8 + 48) = v26[3];
            objc_storeStrong((v8 + 208), v3);

            _Block_object_dispose(&v25, 8);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v5);
    }

    v12 = v17;
    v13 = v12;
    if (v12)
    {
      v14 = v12->_count == 0;

      if (!v14)
      {
        sub_100083260(v15, v13);
      }
    }
  }
}

id sub_10004E448(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004E4DC;
  v4[3] = &unk_1000FB4F8;
  v2 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7 = v2;
  v9 = *(a1 + 88);
  v5 = *(a1 + 40);
  v8 = *(a1 + 72);
  return [v1 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v4];
}

void sub_10004E4DC(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v30 = *(a1 + 80);
    v5 = *(a1 + 32);
    v29 = *(a1 + 64);
    v27 = objc_alloc_init(BKTouchContactSet);
    if (v4 >= 1)
    {
      do
      {
        v6 = sub_100068B30(*(a2 + 112), *v3);
        v7 = v6;
        if (v6)
        {
          if (*(v6 + 248))
          {
            v8 = BKLogTouchEvents();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              v9 = *v3;
              *buf = 67109120;
              v41 = v9;
              _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "tried to detach a touch (%d) that was already detached", buf, 8u);
            }
          }

          else
          {
            sub_10006863C(v27, v6);
          }
        }

        ++v3;
        --v4;
      }

      while (v4);
    }

    v10 = v27;
    v26 = v10;
    if (!v10 || (v11 = v10->_count == 0, v10, v11))
    {
      v24 = 0;
    }

    else
    {
      sub_100081370(a2, v26, 1, 1);
      sub_100081370(a2, v26, 6, 1);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v26;
      v12 = [(BKTouchContactSet *)obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v12)
      {
        v13 = *v32;
        do
        {
          v14 = 0;
          do
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v31 + 1) + 8 * v14);
            v16 = BKLogTouchEvents();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v23 = *(v15 + 16);
              *buf = 67109120;
              v41 = v23;
              _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "detaching:%X", buf, 8u);
            }

            *(v15 + 20) = v30;
            *(v15 + 248) = 1;
            objc_storeStrong((v15 + 208), v5);
            v17 = [v5 shouldAvoidHitTesting];
            v18 = 2;
            if (!v17)
            {
              v18 = 0;
            }

            *(v15 + 48) = v18;
            *(v15 + 112) = v29;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v19 = *(a2 + 72);
            v20 = [v19 countByEnumeratingWithState:&v35 objects:buf count:16];
            if (v20)
            {
              v21 = *v36;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v36 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  [*(*(&v35 + 1) + 8 * i) touchDidDetach:*(v15 + 16) destinations:{*(v15 + 232), v25}];
                }

                v20 = [v19 countByEnumeratingWithState:&v35 objects:buf count:16];
              }

              while (v20);
            }

            v14 = v14 + 1;
          }

          while (v14 != v12);
          v12 = [(BKTouchContactSet *)obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v12);
      }

      sub_100083260(a2, obj);
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  *(*(*(v25 + 40) + 8) + 24) |= v24;
}

id sub_10004E95C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004E9DC;
  v4[3] = &unk_1000FB4A8;
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v4[5] = v2;
  v5 = *(a1 + 56);
  return [v1 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v4];
}

void sub_10004E9DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(a1 + 48);
    if (!v3)
    {
      v41 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"contextID != 0"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v42 = NSStringFromSelector("transferTouchIdentifiers:count:toContextID:");
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138544642;
        *v68 = v42;
        *&v68[8] = 2114;
        *&v68[10] = v44;
        v69 = 2048;
        v70 = v2;
        v71 = 2114;
        v72 = @"BKDirectTouchState.mm";
        v73 = 1024;
        v74 = 814;
        v75 = 2114;
        v76 = v41;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v45 = v41;
      [v41 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10004F15CLL);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(a1 + 32);
      v64 = [*(a2 + 120) objectForKey:v3];
      v52 = [*(v2 + 8) displayUUID];
      v49 = v2;
      if (v64)
      {
        v6 = v64[3];
      }

      else
      {
        v7 = *(v2 + 40);
        if (v7)
        {
          v7 = v7[1];
        }

        v8 = v7;
        v9 = [*(v2 + 8) displayUUID];
        v6 = [v8 taskPortForContextID:v3 displayUUID:v9];

        v2 = v49;
      }

      if (v6 - 1 >= 0xFFFFFFFE)
      {
        log = BKLogTouchEvents();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          *v68 = v6;
          *&v68[4] = 1024;
          *&v68[6] = v3;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "transfer: invalid client port %X for contextID %X", buf, 0xEu);
        }
      }

      else
      {
        v48 = v6;
        log = [*(v2 + 128) objectForKey:v3];
        v10 = sub_100068C00(*(v2 + 112), v5, v4);
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_100088F88;
        v61[3] = &unk_1000FC7C8;
        v62 = v64;
        v63 = v3;
        v11 = sub_1000688E0(v10, v61);

        v46 = v11;
        if (!v46 || (v12 = v46[31] == 0, v46, v12))
        {
          v39 = BKLogTouchEvents();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = *(v2 + 8);
            *buf = 138543362;
            *v68 = v40;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "transfer: no eligible contacts for service %{public}@", buf, 0xCu);
          }
        }

        else
        {
          v13 = BKLogTouchEvents();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *v68 = v3;
            *&v68[4] = 2114;
            *&v68[6] = v46;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "transfer: transferring to contextID:%X contacts:%{public}@", buf, 0x12u);
          }

          sub_100081370(v2, v46, 6, 1);
          sub_100081370(v2, v46, 1, 1);
          sub_100008070(buf, v2);
          v51 = objc_alloc_init(NSMutableArray);
          v14 = [v46 copy];
          v15 = v14;
          if (log)
          {
            v16 = 0;
            v17 = (v14 + 8);
            for (i = 1; i != 31; ++i)
            {
              isa = log[i].isa;
              if (isa)
              {
                objc_storeStrong(v17, isa);
                v20 = 1;
              }

              else
              {
                v20 = *v17 != 0;
              }

              v16 += v20;
              ++v17;
            }

            v21 = v46[33];
            if (v21 <= log[33].isa)
            {
              v21 = log[33].isa;
            }

            v15[33] = v21;
            v22 = v46[32];
            if (v22 >= log[32].isa)
            {
              v22 = log[32].isa;
            }

            v15[31] = v16;
            v15[32] = v22;
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          obj = v15;
          v23 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
          if (v23)
          {
            v24 = *v58;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v58 != v24)
                {
                  objc_enumerationMutation(obj);
                }

                v26 = *(*(&v57 + 1) + 8 * j);
                v27 = *(v26 + 8);
                if (v27 <= 29 && v46[v27 + 1])
                {
                  *(v26 + 249) = 1;
                  sub_100083608(v26, buf);
                  v28 = sub_100088EFC(v2, v26, v3, v52, 2);
                  [v51 addObject:v28];
                  v29 = sub_100089118(v2, v3, v48);
                  v30 = v64;
                  v64 = v29;

                  [*(v26 + 232) addObject:v64];
                  *(v26 + 48) = 4;
                  v31 = [[NSArray alloc] initWithObjects:&v64 count:1];
                  v32 = *(v26 + 240);
                  *(v26 + 240) = v31;

                  v55 = 0u;
                  v56 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  v33 = *(v2 + 72);
                  v34 = [v33 countByEnumeratingWithState:&v53 objects:v65 count:16];
                  if (v34)
                  {
                    v35 = *v54;
                    do
                    {
                      for (k = 0; k != v34; k = k + 1)
                      {
                        if (*v54 != v35)
                        {
                          objc_enumerationMutation(v33);
                        }

                        [*(*(&v53 + 1) + 8 * k) touchDidTransfer:*(v26 + 16) destination:v64];
                      }

                      v34 = [v33 countByEnumeratingWithState:&v53 objects:v65 count:16];
                    }

                    while (v34);
                  }

                  v2 = v49;
                }

                else
                {
                  sub_100083608(*(*(&v57 + 1) + 8 * j), buf);
                  v28 = sub_100088EFC(v2, v26, v3, v52, 1);
                  [v51 addObject:v28];
                }
              }

              v23 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
            }

            while (v23);
          }

          v37 = sub_10000839C(buf);
          v38 = objc_alloc_init(BKHIDEventCollector);
          sub_100084C1C(v2, v37, v64, v38, 0, v51, *(v2 + 96));
          sub_100081F08(v2, v38);

          if (v37)
          {
            CFRelease(v37);
          }

          sub_10000968C(buf);
        }
      }
    }
  }
}

void sub_10004F364(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_touchStreamClientForReference:*(a1 + 64)];
  v3 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 32));
  }

  else
  {
    WeakRetained = 0;
  }

  v27 = 0;
  sub_10008C650(WeakRetained, &v27, &v27 + 1);
  v5 = *(*(a1 + 40) + 8);
  if (!*(v5 + 24))
  {
    *(v5 + 24) = v27;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 8);
  v8 = *(v7 + 24);
  if (!v8)
  {
    *(v7 + 24) = HIBYTE(v27);
    v6 = *(a1 + 48);
    v8 = *(*(v6 + 8) + 24);
  }

  if (v3)
  {
    v3[10] = v8;
    v3[11] = *(*(*(a1 + 40) + 8) + 24);
    v6 = *(a1 + 48);
  }

  sub_10008C650(WeakRetained, (*(*(a1 + 40) + 8) + 24), (*(v6 + 8) + 24));
  v9 = HIBYTE(v27);
  v10 = *(*(*(a1 + 48) + 8) + 24) != HIBYTE(v27) || *(*(*(a1 + 40) + 8) + 24) != v27;
  if (WeakRetained)
  {
    v11 = WeakRetained[1];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = *(a1 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004F6B8;
  v22[3] = &unk_1000FB460;
  v14 = v3;
  v23 = v14;
  v24 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v26 = v10;
  v25 = *(a1 + 56);
  [v13 _queue_enumerateDigitizersForDisplay:v12 usingBlock:v22];
  v15 = BKLogTouchEvents();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    if (v9 > 3)
    {
      v16 = @"<unknown>";
    }

    else
    {
      v16 = *(&off_1000FB698 + v9);
    }

    if (v27 > 2uLL)
    {
      v17 = @"<unknown>";
    }

    else
    {
      v17 = *(&off_1000FB6B8 + v27);
    }

    v18 = *(*(*(a1 + 48) + 8) + 24);
    if (v18 > 3)
    {
      v19 = @"<unknown>";
    }

    else
    {
      v19 = *(&off_1000FB698 + v18);
    }

    v20 = *(*(*(a1 + 40) + 8) + 24);
    if (v20 > 2)
    {
      v21 = @"<unknown>";
    }

    else
    {
      v21 = *(&off_1000FB6B8 + v20);
    }

    *buf = 138544642;
    v29 = v16;
    v30 = 2114;
    v31 = v17;
    v32 = 2114;
    v33 = v19;
    v34 = 2114;
    v35 = v21;
    v36 = 1024;
    v37 = v10;
    v38 = 1024;
    v39 = 0;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "sg transition (%{public}@, %{public}@) -> (%{public}@, %{public}@) somethingDidChange:%{BOOL}u didNotify:%{BOOL}u", buf, 0x36u);
  }
}

void sub_10004F6B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 24);
    v5 = *(a1 + 64);
    v6 = *(*(*(a1 + 48) + 8) + 24);
    if (v6 == 2)
    {
      v7 = *(a1 + 56);
      if (*(a2 + 160) >= v7)
      {
        v7 = *(a2 + 160);
      }

      *(a2 + 160) = v7;
    }

    if (v5)
    {
      if (v4 == 3)
      {
        v8 = BKLogTouchEvents();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "cancel clients due to system gesture stealing the touches", buf, 2u);
        }

        sub_1000804F0(v2, 2u, v3);
      }

      else if (v3 && v6 == 2 && (*(v3 + 9) & 1) != 0)
      {
        v9 = *(v3 + 8);
        v10 = BKLogTouchEvents();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v25 = [v2[1] displayUUID];
          *buf = 134218498;
          v43 = v2;
          v44 = 2114;
          v45 = v25;
          v46 = 2114;
          v47 = v3;
          _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "System gestures no longer possible (<%p> - %{public}@) causedByTouchStream: %{public}@", buf, 0x20u);
        }

        v11 = [v2[18] mutableCopy];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = v2[14];
        v12 = [obj countByEnumeratingWithState:&v36 objects:buf count:16];
        if (v12)
        {
          v13 = *v37;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v37 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v36 + 1) + 8 * i);
              if (*(v15 + 32) == 2)
              {
                v16 = v9;
                v17 = v2;
                v34 = 0u;
                v35 = 0u;
                v32 = 0u;
                v33 = 0u;
                v18 = *(v15 + 232);
                v19 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
                if (v19)
                {
                  v20 = *v33;
                  do
                  {
                    for (j = 0; j != v19; j = j + 1)
                    {
                      if (*v33 != v20)
                      {
                        objc_enumerationMutation(v18);
                      }

                      [v11 addObject:*(*(&v32 + 1) + 8 * j)];
                    }

                    v19 = [v18 countByEnumeratingWithState:&v32 objects:v41 count:16];
                  }

                  while (v19);
                }

                v2 = v17;
                v9 = v16;
              }
            }

            v12 = [obj countByEnumeratingWithState:&v36 objects:buf count:16];
          }

          while (v12);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        obja = v11;
        v22 = [obja countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v22)
        {
          v23 = *v29;
          do
          {
            for (k = 0; k != v22; k = k + 1)
            {
              if (*v29 != v23)
              {
                objc_enumerationMutation(obja);
              }

              sub_100088B84(v2, *(*(&v28 + 1) + 8 * k), v9);
            }

            v22 = [obja countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v22);
        }
      }
    }
  }
}

void sub_10004FB10(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_touchStreamClientForReference:*(a1 + 40)];
  [*(a1 + 32) _queue_invalidateTouchStreamClient:? reason:?];
}

void sub_10004FC44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 length];
  v5 = BKSDisplayUUIDMainKey;
  if (v4)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v2 _queue_displayInfoForDisplay:v6 createIfNeeded:1];

  if (v7)
  {
    v8 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 taskPortForContextID:*(a1 + 64) displayUUID:*(a1 + 40)];
  if ((v10 - 1) >= 0xFFFFFFFE)
  {
    v24 = BKLogTouchEvents();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 64);
      v26 = *(a1 + 68);
      v27 = NSStringFromBKSTouchStreamIdentifier();
      *buf = 67109634;
      *v52 = v10;
      *&v52[4] = 1024;
      *&v52[6] = v25;
      *v53 = 2114;
      *&v53[2] = v27;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "BKDigitizerTouchStreamCreate: invalid taskPort (0x%X) for contextID:0x%X (touchstreamIdentifier:%{public}@)", buf, 0x18u);
    }
  }

  else
  {
    v11 = objc_alloc_init(BKDigitizerTouchStreamClient);
    if (v11)
    {
      v12 = *(a1 + 56);
      if (v11->_versionedPID != v12)
      {
        v11->_versionedPID = v12;
        v13 = BSProcessNameForPID();
        processName = v11->_processName;
        v11->_processName = v13;
      }

      v11->_shouldSendAmbiguityRecommendations = *(a1 + 72);
      v11->_touchStreamIdentifier = *(a1 + 68);
    }

    v15 = *(a1 + 64);
    v16 = objc_opt_self();
    v17 = v11;
    if (!v11)
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [NSString stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"touchStream", v29];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector("destinationWithTouchStream:contextID:clientPort:");
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138544642;
        *v52 = v31;
        *&v52[8] = 2114;
        *v53 = v33;
        *&v53[8] = 2048;
        v54 = v16;
        v55 = 2114;
        v56 = @"BKTouchDestination.m";
        v57 = 1024;
        v58 = 43;
        v59 = 2114;
        v60 = v30;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v34 = v30;
      [v30 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100050054);
    }

    v18 = v17;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [(BKDigitizerTouchStreamClient *)v18 classForCoder];
      if (!v35)
      {
        v35 = objc_opt_class();
      }

      v36 = NSStringFromClass(v35);
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"touchStream", v36, v38];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v40 = NSStringFromSelector("destinationWithTouchStream:contextID:clientPort:");
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        *buf = 138544642;
        *v52 = v40;
        *&v52[8] = 2114;
        *v53 = v42;
        *&v53[8] = 2048;
        v54 = v16;
        v55 = 2114;
        v56 = @"BKTouchDestination.m";
        v57 = 1024;
        v58 = 43;
        v59 = 2114;
        v60 = v39;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v43 = v39;
      [v39 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100050194);
    }

    if (!v15)
    {
      v44 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"contextID != 0"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v45 = NSStringFromSelector("destinationWithTouchStream:contextID:clientPort:");
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        *buf = 138544642;
        *v52 = v45;
        *&v52[8] = 2114;
        *v53 = v47;
        *&v53[8] = 2048;
        v54 = v16;
        v55 = 2114;
        v56 = @"BKTouchDestination.m";
        v57 = 1024;
        v58 = 44;
        v59 = 2114;
        v60 = v44;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v48 = v44;
      [v44 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100050290);
    }

    v19 = sub_100096E00([BKTouchDestination alloc], v15, v10);
    v20 = v19;
    if (v19)
    {
      objc_storeWeak(v19 + 5, v18);
      v21 = 2;
      if (v18->_shouldSendAmbiguityRecommendations)
      {
        v21 = 6;
      }

      v20[4] = v21;
    }

    objc_storeStrong(&v18->_touchDestination, v20);
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _queue_addTouchStreamClient:v18 toDisplayUUID:*(a1 + 40) versionedPID:*(a1 + 56)];
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100050314;
    v49[3] = &unk_1000FB410;
    v24 = v18;
    v50 = v24;
    [v23 _queue_enumerateDigitizersForDisplay:v22 usingBlock:v49];
  }
}

uint64_t sub_100050314(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = *(result + 32);
  sub_100008070(v26, a2);
  v4 = objc_alloc_init(NSMutableArray);
  if (v3)
  {
    v5 = *(v3 + 48);
    v6 = v5;
    if (v5)
    {
      [*(v5 + 3) addObject:v3];
      v7 = v6[2];
      goto LABEL_5;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_5:
  [*(a2 + 120) setObject:v6 forKey:v7];
  v8 = *(a2 + 112);
  if (v8)
  {
    v9 = v8[31] == 0;

    if (!v9)
    {
      v10 = [*(a2 + 8) displayUUID];
      if (v6)
      {
        v11 = v6[2];
      }

      else
      {
        v11 = 0;
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = *(a2 + 112);
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            v17 = *(v16 + 8);
            v18 = *(v16 + 64);
            sub_1000081F0(v26);
            IOHIDEventSetIntegerValue();
            v19 = sub_100088EFC(a2, v16, v11, v10, 0);
            [v4 addObject:{v19, v22}];

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v20 = sub_10000839C(v26);
      v21 = objc_alloc_init(BKHIDEventCollector);
      sub_100084C1C(a2, v20, v6, v21, 0, v4, *(a2 + 96));
      sub_100081F08(a2, v21);

      if (v20)
      {
        CFRelease(v20);
      }
    }
  }

  return sub_10000968C(v26);
}

void sub_100050578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v20)
  {
    CFRelease(v20);
  }

  sub_10000968C(&a17);
  _Unwind_Resume(a1);
}

void sub_100050674(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 length];
  v5 = BKSDisplayUUIDMainKey;
  if (v4)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v2 _queue_displayInfoForDisplay:v6 createIfNeeded:1];

  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, *(a1 + 48), 32);
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005078C;
  v11[3] = &unk_1000FB410;
  v11[4] = *(a1 + 48);
  [v9 _queue_enumerateDigitizersForDisplay:v10 usingBlock:v11];
}

void sub_100050994(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050A58;
  v6[3] = &unk_1000FB3C0;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 _queue_enumerateDigitizersForDisplay:v3 usingBlock:v6];
}

void sub_100050A58(uint64_t a1, uint64_t a2)
{
  sub_1000804F0(a2, 2u, 0);
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = *(a1 + 40);
    sub_1000804F0(a2, 1u, 0);
    v6 = *(a2 + 32);
    if (!v6)
    {
      v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SuppressTouches-%llX", [*(a2 + 8) senderID]);
      v7 = [BSCompoundAssertion assertionWithIdentifier:?];
      v8 = *(a2 + 32);
      *(a2 + 32) = v7;

      v9 = *(a2 + 32);
      v12 = BKLogTouchEvents();
      [v9 setLog:?];

      v6 = *(a2 + 32);
    }

    v10 = [v6 acquireForReason:v5];
  }

  else
  {
    v10 = 0;
  }

  v13 = v10;
  [v4 addObject:v10];
}

id sub_100050FD0(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v16[v4++] = [*(*(&v11 + 1) + 8 * v6) unsignedIntegerValue];
        v6 = v6 + 1;
      }

      while (v3 != v6);
      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100051150;
  v10[3] = &unk_1000FB338;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[4] = v16;
  v10[5] = v8;
  return [v7 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v10];
}

void sub_100051150(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_100068C00(*(a2 + 112), *(a1 + 32), *(a1 + 40));
    if (v4)
    {
      v3 = v4[31];

      if (v3)
      {
        sub_100081370(a2, v4, 1, 0);
      }
    }
  }
}

void sub_1000515A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) description];
  v2 = [v1 appendObject:? withName:?];
}

void sub_100051718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BKHIDDirectTouchEventProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100051DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, id location)
{
  objc_destroyWeak((v50 + 40));
  objc_destroyWeak((v46 + 32));

  objc_destroyWeak(&a45);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100051F30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = BKLogTouchEvents();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 0.0 - WeakRetained[10];
      v6 = 134217984;
      v7 = v5;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "*** still waiting for a main screen digitizer -- %gs elapsed ***", &v6, 0xCu);
    }

    v4 = *(WeakRetained + 11);
    WeakRetained[11] = 0.0;
  }

  [*(a1 + 32) invalidate];
}

void sub_100052030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000521EC;
  block[3] = &unk_1000FD150;
  v4 = v1;
  dispatch_sync(v2, block);
}

__CFString *sub_1000520BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [BSDescriptionStream descriptionForRootObject:WeakRetained];
  }

  else
  {
    v2 = @"<nil>";
  }

  return v2;
}

void sub_100052134(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(*(a1 + 32) + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000521DC;
  v7[3] = &unk_1000FCD68;
  v8 = WeakRetained;
  v9 = a2;
  v6 = WeakRetained;
  dispatch_async(v5, v7);
}

id sub_1000521EC(uint64_t a1)
{
  v2 = +[BKSDefaults localDefaults];
  v3 = [v2 digitizerVisualizeTouches];

  v4 = +[BKSDefaults localDefaults];
  v5 = [v4 digitizerVisualizeHitTestRegions];

  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000522C4;
  v8[3] = &unk_1000FB2F0;
  v9 = v3;
  v10 = v5;
  return [v6 _queue_enumerateDigitizersForAllDisplaysUsingBlock:v8];
}

void sub_1000522D8(id a1)
{
  v1 = +[BKSDefaults localDefaults];
  byte_100125ED8 = [v1 isDigitizerSignpostsEnabled];
}

id sub_1000524BC()
{
  if (qword_100125EF8 != -1)
  {
    dispatch_once(&qword_100125EF8, &stru_1000FB6D0);
  }

  v1 = qword_100125EF0;

  return v1;
}

void sub_100052510(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "BootUI");
  v2 = qword_100125EF0;
  qword_100125EF0 = v1;
}

void sub_100052558(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "Button");
  v2 = qword_100125F00;
  qword_100125F00 = v1;
}

id sub_1000525A0()
{
  if (qword_100125F18 != -1)
  {
    dispatch_once(&qword_100125F18, &stru_1000FB710);
  }

  v1 = qword_100125F10;

  return v1;
}

void sub_1000525F4(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "DisplayAnnotations");
  v2 = qword_100125F10;
  qword_100125F10 = v1;
}

id sub_10005263C()
{
  if (qword_100125F28 != -1)
  {
    dispatch_once(&qword_100125F28, &stru_1000FB730);
  }

  v1 = qword_100125F20;

  return v1;
}

void sub_100052690(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "DisplayMonitor");
  v2 = qword_100125F20;
  qword_100125F20 = v1;
}

id sub_1000526D8()
{
  if (qword_100125F38 != -1)
  {
    dispatch_once(&qword_100125F38, &stru_1000FB750);
  }

  v1 = qword_100125F30;

  return v1;
}

void sub_10005272C(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "HID");
  v2 = qword_100125F30;
  qword_100125F30 = v1;
}

id sub_100052774()
{
  if (qword_100125F48 != -1)
  {
    dispatch_once(&qword_100125F48, &stru_1000FB770);
  }

  v1 = qword_100125F40;

  return v1;
}

void sub_1000527C8(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "IdleTimer");
  v2 = qword_100125F40;
  qword_100125F40 = v1;
}

id sub_100052810()
{
  if (qword_100125F58 != -1)
  {
    dispatch_once(&qword_100125F58, &stru_1000FB790);
  }

  v1 = qword_100125F50;

  return v1;
}

void sub_100052864(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "RenderOverlay");
  v2 = qword_100125F50;
  qword_100125F50 = v1;
}

id sub_1000528AC()
{
  if (qword_100125F68 != -1)
  {
    dispatch_once(&qword_100125F68, &stru_1000FB7B0);
  }

  v1 = qword_100125F60;

  return v1;
}

void sub_100052900(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "HapticFeedback");
  v2 = qword_100125F60;
  qword_100125F60 = v1;
}

void sub_100052948(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "Accelerometer");
  v2 = qword_100125F70;
  qword_100125F70 = v1;
}

id sub_100052990()
{
  if (qword_100125F88 != -1)
  {
    dispatch_once(&qword_100125F88, &stru_1000FB7F0);
  }

  v1 = qword_100125F80;

  return v1;
}

void sub_1000529E4(id a1)
{
  v1 = os_log_create(BKLoggingSubsystem, "KeyPresses");
  v2 = qword_100125F80;
  qword_100125F80 = v1;
}

void sub_1000534D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000534F4(void *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v3 = result;
    if (a3)
    {
      v4 = result[4];
      v5 = *(*(v3[5] + 8) + 24);
      if (a3 != 1)
      {
        if (*(*(v3[5] + 8) + 24))
        {
          result = [v4 appendFormat:@", %d", (a3 + 1)];
        }

        else
        {
          result = [v4 appendFormat:@"%d", (a3 + 1)];
        }

        goto LABEL_14;
      }

      if (*(*(v3[5] + 8) + 24))
      {
        v6 = @", secondary";
      }

      else
      {
        v6 = @"secondary";
      }
    }

    else
    {
      v4 = result[4];
      if (*(*(v3[5] + 8) + 24) == 1)
      {
        v6 = @", primary";
      }

      else
      {
        v6 = @"primary";
      }
    }

    result = [v4 appendString:v6];
LABEL_14:
    *(*(v3[5] + 8) + 24) = 1;
  }

  return result;
}

void sub_1000542DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000542F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005430C(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v9 = v6;
  v8 = [v6 sendRight];
  LODWORD(v7) = [v7 matchesPortOfRight:v8];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

id sub_1000547AC(uint64_t a1)
{
  v11 = @"accelerometer";
  v9[0] = @"x";
  v2 = [NSNumber numberWithDouble:*(a1 + 32)];
  v10[0] = v2;
  v9[1] = @"y";
  v3 = [NSNumber numberWithDouble:*(a1 + 40)];
  v10[1] = v3;
  v9[2] = @"z";
  v4 = [NSNumber numberWithDouble:*(a1 + 48)];
  v10[2] = v4;
  v9[3] = @"type";
  v5 = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v10[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v12 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  return v7;
}

void sub_100054BE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setWantsOrientationEvents:v3];
  [v4 setPassiveOrientationEvents:*(a1 + 33)];
}

void sub_100054CB0(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setWantsAccelerometerEvents:1];
  [v6 setAccelerometerUpdateInterval:*(a1 + 32)];
  LODWORD(v3) = *(a1 + 40);
  [v6 setXThreshold:v3];
  LODWORD(v4) = *(a1 + 44);
  [v6 setYThreshold:v4];
  LODWORD(v5) = *(a1 + 48);
  [v6 setZThreshold:v5];
}

void sub_100055044(id a1)
{
  v1 = objc_alloc_init(BKAccelerometerInterface);
  v2 = qword_100125F90;
  qword_100125F90 = v1;
}

uint64_t sub_100055804(uint64_t a1)
{
  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Manager] Terminating alternate system app with bundleID: %{public}@", &v5, 0xCu);
  }

  [*(*(a1 + 40) + 32) terminate];
  [*(a1 + 40) _queue_cleanUpAfterAlternativeSystemApp:*(*(a1 + 40) + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000559E8(uint64_t a1)
{
  v2 = BKLogAlternateSystemApp();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Manager] Open alternate system app with bundleID: %{public}@", buf, 0xCu);
  }

  v4 = [[BKAlternateSystemApp alloc] initWithBundleId:*(a1 + 32) options:*(a1 + 40) queue:*(*(a1 + 48) + 24)];
  if (v4)
  {
    [*(a1 + 48) setOpenBundleId:*(a1 + 32)];
    [*(a1 + 48) setAlternateSystemApp:v4];
    v5 = +[BKSystemShellSentinel sharedInstance];
    [v5 setActiveAlternateSystemAppBundleIdentifier:*(a1 + 32)];

    objc_initWeak(buf, *(a1 + 48));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100055C70;
    v11[3] = &unk_1000FB930;
    objc_copyWeak(&v14, buf);
    v6 = v4;
    v12 = v6;
    v13 = *(a1 + 56);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100055CD8;
    v7[3] = &unk_1000FB958;
    objc_copyWeak(&v10, buf);
    v8 = v6;
    v9 = *(a1 + 64);
    [(BKAlternateSystemApp *)v8 launchWithResultBlock:v11 exitBlock:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_100055C44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_100055C70(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _queue_cleanUpAfterAlternativeSystemApp:*(a1 + 32)];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_100055CD8(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queue_cleanUpAfterAlternativeSystemApp:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100055EF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100055F08(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) bundleID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000560D0(id a1)
{
  v1 = objc_alloc_init(BKAlternateSystemAppManager);
  v2 = qword_100125FA0;
  qword_100125FA0 = v1;
}

void sub_100056DD0(uint64_t a1, void *a2)
{
  v3 = sub_100005110();
  [a2 noteInterfaceOrientationChangedWithInterfaceOrientation:sub_1000916BC(v3)];
}

void sub_1000572BC(id a1)
{
  if (!sub_1000030E8())
  {
    v1 = objc_alloc_init(BKTetherController);
    v2 = qword_100125FB0;
    qword_100125FB0 = v1;
  }
}

BKHIDUISensorConfiguringService *__cdecl sub_1000579A8(id a1, BKIOHIDService *a2)
{
  v2 = a2;
  v3 = [(BKIOHIDService *)v2 propertyForKey:@"Placement"];
  v4 = v3;
  if (v3 && [v3 intValue] == 1)
  {
    v5 = BKLogUISensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = [(BKIOHIDService *)v2 senderID];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "discrete prox service %llX top placement", &v19, 0xCu);
    }

    v6 = os_log_create("com.apple.AppleProxSupport", "hid-driver");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    v8 = BKLogUISensor();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Prox debug mode enabled!", &v19, 2u);
      }

      [(BKIOHIDService *)v2 setProperty:&__kCFBooleanTrue forKey:@"EnableDebugMode"];
    }

    else
    {
      if (v9)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Prox debug mode not enabled!", &v19, 2u);
      }
    }

    v11 = [(BKIOHIDService *)v2 propertyForKey:@"NeedsHostState"];
    v12 = objc_opt_class();
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = [v15 BOOLValue];
    v17 = off_1000F8F98;
    if (!v16)
    {
      v17 = off_1000F8F88;
    }

    v10 = [objc_alloc(*v17) initWithIOHIDService:v2];
  }

  else
  {
    v6 = BKLogUISensor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = [(BKIOHIDService *)v2 senderID];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ignoring discrete prox service %llX not top placement", &v19, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

void sub_100057EA8(uint64_t a1)
{
  v3 = +[CAWindowServer serverIfRunning];
  v2 = [v3 displayWithName:@"TVOut"];
  if (v2)
  {
    [*(*(a1 + 32) + 16) evaluateDisplay:v2 reason:@"updateTVOutDisplaySettings"];
  }
}

void sub_100058020(uint64_t a1, void *a2, void *a3, char a4)
{
  if (a1)
  {
    v28 = +[CAWindowServer serverIfRunning];
    v7 = [v28 displays];
    v8 = [v7 firstObject];

    v27 = v8;
    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = +[CADisplay displays];
      v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v9)
      {
        v10 = v9;
        v25 = a3;
        v11 = 0;
        v12 = 0;
        v13 = *v31;
        do
        {
          v14 = 0;
          do
          {
            v15 = v12;
            if (*v31 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * v14);
            v12 = [v16 name];

            if ([v12 hasPrefix:@"Wireless"])
            {
              if (a4)
              {
                v17 = [v16 immutableCopy];
              }

              else
              {
                v17 = v16;
              }

              v18 = v17;
              if (v17)
              {
                if (!v11)
                {
                  v11 = objc_alloc_init(NSMutableArray);
                }

                [v11 addObject:v18];
              }
            }

            else if ([v12 isEqualToString:@"TVOut"]&& (*(a1 + 40) & 1) == 0)
            {
              if (a4)
              {
                v21 = [v16 immutableCopy];
              }

              else
              {
                v21 = v16;
              }

              v18 = v21;
              if (v25)
              {
                v22 = v21;
                *v25 = v18;
              }
            }

            else
            {
              v18 = [v28 displayWithDisplayId:{objc_msgSend(v16, "displayId")}];
              if (v18 != v27)
              {
                v19 = BKLogDisplay();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v16 name];
                  *buf = 138543362;
                  v35 = v20;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Tagging unknown display %{public}@ with available modes", buf, 0xCu);
                }

                [v18 setTag:0x10000];
              }
            }

            v14 = v14 + 1;
          }

          while (v10 != v14);
          v23 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          v10 = v23;
        }

        while (v23);
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      v24 = v11;
      *a2 = v11;
    }

    else
    {
      v12 = BKLogDisplay();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We seeem to be headless", buf, 2u);
      }
    }
  }
}

void sub_100058360(uint64_t a1)
{
  v2 = +[CAWindowServer serverIfRunning];
  *(*(a1 + 32) + 42) = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        sub_1000584C8(*(a1 + 32), *(*(&v9 + 1) + 8 * v7), 2uLL);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if (*(a1 + 48))
  {
    v8 = [v2 displayWithName:{@"TVOut", v9}];
    sub_1000584C8(*(a1 + 32), *(a1 + 48), 1uLL);
    sub_1000588E0(*(a1 + 32), 0, v8);
  }
}

void sub_1000584C8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_36;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v6 = +[CAWindowServer server];
  v7 = [v6 displayWithDisplayId:{-[__CFString displayId](v5, "displayId")}];
  v8 = [(__CFString *)v5 availableModes];
  v9 = [v8 count];

  if (!v9)
  {
    v17 = BKLogDisplay();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138543362;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AMDC No available modes; removing clone/tags if needed %{public}@", &v28, 0xCu);
    }

    [*(a1 + 16) removeDisplay:v7];
    if (a3 == 1)
    {
      *(a1 + 41) = 0;
    }

    goto LABEL_33;
  }

  v10 = [v6 displays];
  v11 = [v10 firstObject];

  v12 = [v11 clones];
  v13 = [v12 count];
  v14 = BKLogDisplay();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      if (a3 > 2)
      {
        v16 = @"<unknown>";
      }

      else
      {
        v16 = *(&off_1000FBAD0 + a3);
      }

      v28 = 138543874;
      v29 = v16;
      v30 = 2114;
      v31 = v5;
      v32 = 2114;
      v33 = v12;
      v19 = "Available modes changed (%{public}@) on %{public}@; clones:%{public}@";
      v20 = v14;
      v21 = 32;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v28, v21);
    }
  }

  else if (v15)
  {
    if (a3 > 2)
    {
      v18 = @"<unknown>";
    }

    else
    {
      v18 = *(&off_1000FBAD0 + a3);
    }

    v28 = 138543618;
    v29 = v18;
    v30 = 2114;
    v31 = v5;
    v19 = "Available modes changed (%{public}@) on %{public}@; no clones";
    v20 = v14;
    v21 = 22;
    goto LABEL_18;
  }

  v22 = BKLogDisplay();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (a3 == 2)
  {
    if (v23)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AMDC Wireless", &v28, 2u);
    }

    [*(a1 + 16) evaluateDisplay:v7 reason:@"WirelessDisplayModeDidChange"];
  }

  else if (a3 == 1)
  {
    if (v23)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AMDC TVOut", &v28, 2u);
    }

    v24 = *(a1 + 8);
    v25 = v7;
    dispatch_assert_queue_V2(v24);
    v26 = BKLogDisplay();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "availableModesDidChangeForPurpleTVOut", &v28, 2u);
    }

    [*(a1 + 16) evaluateDisplay:v25 reason:@"PurpleTVOutDisplayModeChange"];
    *(a1 + 41) = 1;
  }

  else
  {
    if (v23)
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AMDC Unknown display", &v28, 2u);
    }

    [v7 setTag:0x10000];
  }

LABEL_33:
  v27 = BKLogDisplay();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "AMDC done", &v28, 2u);
  }

LABEL_36:
}

void sub_1000588E0(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a1)
  {
    if (a2)
    {
      v5 = [[_BKDisplayBlankingContext alloc] initForDisplay:v7];
      v6 = *(a1 + 24);
      *(a1 + 24) = v5;

      [*(a1 + 24) blank];
    }

    else
    {
      [*(a1 + 24) clear];
    }
  }
}

void sub_100058C08(uint64_t a1)
{
  v2 = BKLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *v14 = 138543618;
    *&v14[4] = v3;
    *&v14[12] = 2114;
    *&v14[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Current mode changed on %{public}@ -> %{public}@", v14, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5)
  {
    dispatch_assert_queue_V2(*(v5 + 8));
    v7 = [v6 currentMode];
    v8 = [v7 width];
    v9 = [v7 height];
    v10 = [v6 name];
    if ([v10 isEqual:@"TVOut"] && *(v5 + 40) == 1)
    {
      *v14 = _NSConcreteStackBlock;
      *&v14[8] = 3221225472;
      *&v14[16] = sub_100058E74;
      v15 = &unk_1000FCFA0;
      v16 = v7;
      v17 = v8;
      v18 = v9;
      dispatch_async(&_dispatch_main_q, v14);
      v11 = v16;
    }

    else
    {
      v12 = +[CAWindowServer server];
      v11 = [v12 displayWithDisplayId:{objc_msgSend(v6, "displayId")}];

      if (v11)
      {
        [*(v5 + 16) evaluateDisplay:v11 reason:@"currentModeDidChangeForDisplay"];
      }

      else
      {
        v13 = BKLogDisplay();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v14 = 138543362;
          *&v14[4] = v6;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "cannot find window server display for %{public}@", v14, 0xCu);
        }

        v11 = 0;
      }
    }
  }
}

void sub_100058E74(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredScale];
  if (BSFloatLessThanFloat())
  {
    v3 = BKLogDisplay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = [NSNumber numberWithDouble:v2];
      *v10 = 138543362;
      *&v10[4] = v9;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "preferredScale is %{public}@, using 1.0 instead", v10, 0xCu);
    }

    v2 = 1.0;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = BKLogDisplay();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16.width = v4;
    v16.height = v5;
    v7 = NSStringFromSize(v16);
    v8 = [NSNumber numberWithDouble:v2];
    *v10 = 138543618;
    *&v10[4] = v7;
    *&v10[12] = 2114;
    *&v10[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting main screen size to %{public}@ and scale to %{public}@", v10, 0x16u);
  }

  if (qword_100125DF8 != -1)
  {
    dispatch_once(&qword_100125DF8, &stru_1000FA8D0);
  }

  *v10 = _NSConcreteStackBlock;
  *&v10[8] = 3221225472;
  *&v10[16] = sub_10002846C;
  v11 = &unk_1000FA818;
  v12 = v4;
  v13 = v5;
  v15 = *&qword_100125DF0;
  v14 = v2;
  sub_100002E40(v10);
}

void sub_10005974C()
{
  v0 = sub_1000597A4();
  [v0 performSelectorOnMainThread:"_handleIapServerConnectionDied" withObject:0 waitUntilDone:0];
}

id sub_1000597A4()
{
  objc_opt_self();
  if (qword_100125FD8 != -1)
  {
    dispatch_once(&qword_100125FD8, &stru_1000FBA40);
  }

  v0 = qword_100125FD0;

  return v0;
}

void sub_1000597FC(id a1)
{
  if (!sub_1000030E8())
  {
    v1 = objc_alloc_init(BKTVOutController);
    v2 = qword_100125FD0;
    qword_100125FD0 = v1;
  }
}

void sub_10005985C(id a1)
{
  v1 = sub_1000597A4();
  [BKTVOutController _handleIapServerConnectionDied]_0(v1);
}

void sub_100059C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100059C58(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 pid];
  if (*(a1 + 40) == result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100059F5C(id a1)
{
  v1 = [BKTouchDeliveryGenericGestureFocusObserver alloc];
  v4 = +[BKHIDSystemInterface sharedInstance];
  v2 = [(BKTouchDeliveryGenericGestureFocusObserver *)v1 initWithHIDSystem:v4];
  v3 = qword_100125FE8;
  qword_100125FE8 = v2;
}

const os_unfair_lock *sub_10005A750(const os_unfair_lock *result, void *a2)
{
  if (result)
  {
    v3 = result;
    os_unfair_lock_assert_owner(result + 2);
    [*(v3 + 240) frameWillBegin];
    if ([*(v3 + 240) eventTypeMask])
    {
      v4 = 0;
      do
      {
        v8 = 0;
        if ((v4 & 1) != 0 || (sub_10005A858(v3, &v8), v8 != 1))
        {
          v6 = 0;
        }

        else
        {
          v5 = [*(v3 + 240) shouldUseButtonDownRecenteringBehavior];
          v6 = 1;
          [*(v3 + 240) setShouldUseButtonDownRecenteringBehavior:1];
          sub_10005AC3C(v3, a2, 1);
          [*(v3 + 240) setShouldUseButtonDownRecenteringBehavior:v5];
        }

        v4 |= v6;
        sub_10005AC3C(v3, a2, v6);
        [*(v3 + 240) nextEvent];
      }

      while ([*(v3 + 240) eventTypeMask]);
      [*(v3 + 360) didPostEvent];
    }

    v7 = *(v3 + 240);

    return [v7 frameDidEnd];
  }

  return result;
}

void sub_10005A858(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  if ([*(a1 + 240) positionType] != 1 && !objc_msgSend(*(a1 + 240), "previousButtonMask") && objc_msgSend(*(a1 + 240), "buttonMask") && objc_msgSend(*(a1 + 400), "count") && *(a1 + 144))
  {
    v4 = [*(a1 + 400) lastObject];
    v5 = v4;
    if (v4)
    {
      v40 = [v4 displayUUID];
      v6 = sub_10005DD24(a1, v40);
      if (v6)
      {
        v37 = v5;
        v7 = [v5 contextRelativePointerPosition];
        v36 = v6;
        v8 = sub_10005F144(a1, v7, v6);
        v10 = v9;

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        obj = [*(a1 + 136) regions];
        v11 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (!v11)
        {
          goto LABEL_23;
        }

        v12 = v11;
        v39 = *v42;
        v13 = BKSDisplayUUIDMainKey;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            v16 = [v15 displayUUID];
            if ([v16 length])
            {
              v17 = v16;
            }

            else
            {
              v17 = v13;
            }

            v18 = v17;

            v19 = v40;
            if ([v19 length])
            {
              v20 = v19;
            }

            else
            {
              v20 = v13;
            }

            v21 = v20;

            v22 = [v18 isEqualToString:v21];
            if (v22)
            {
              v23 = v15;

              if (!v23)
              {
                goto LABEL_28;
              }

              [*(a1 + 136) convertToGlobalPoint:v23 fromRegion:{v8, v10}];
              v25 = v24;
              v27 = v26;
              v5 = v37;
              v28 = [v37 restrictingToPID];
              if (v28 != -1)
              {
                v29 = v28;
                v30 = sub_10005F268(a1, v25, v27);
                v31 = [NSNumber numberWithInt:v29];
                v32 = [v30 containsObject:v31];

                if (*(a1 + 144))
                {
                  [*(a1 + 136) convertToGlobalPoint:*(a1 + 168) fromRegion:*(a1 + 176)];
                }

                else
                {
                  x = CGPointZero.x;
                  y = CGPointZero.y;
                }

                if (sqrt((v25 - x) * (v25 - x) + (v27 - y) * (v27 - y)) > 160.0)
                {
                  v35 = BKLogMousePointer();
                  v6 = v36;
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 134217984;
                    v46 = 0x4064000000000000;
                    _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Not recentering on click because distance exceeds limit of %f pts.", buf, 0xCu);
                  }

                  goto LABEL_37;
                }

                if (!v32)
                {
                  goto LABEL_36;
                }
              }

              ++*(a1 + 160);
              sub_10005E2D4(a1, 0, @"recenterModelPoint", v25, v27);
              *a2 = 1;
              goto LABEL_36;
            }
          }

          v12 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

LABEL_23:

        v23 = 0;
LABEL_28:
        v5 = v37;
LABEL_36:
        v6 = v36;
LABEL_37:
      }
    }
  }
}

void sub_10005AC3C(uint64_t a1, void *a2, char a3)
{
  os_unfair_lock_assert_owner((a1 + 8));
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  obj = a2;
  v97 = a2;
  *(&v97 + 1) = [*(a1 + 240) lastRemoteEventTimestamp];
  *&v98 = [*(a1 + 240) eventSequenceStartTimestamp];
  [*(a1 + 240) unacceleratedRelativePointerPosition];
  *(&v98 + 1) = v6;
  *&v99 = v7;
  [*(a1 + 240) acceleratedRelativePointerPosition];
  v9 = v8;
  v11 = v10;
  *(&v99 + 1) = v8;
  *&v100 = v10;
  *(&v100 + 1) = [*(a1 + 240) mostRecentSender];
  *&v101 = +[BKTouchDeliveryPolicyServer sharedServer];
  BYTE8(v101) = 0;
  v95 = 0;
  sub_10005A858(a1, &v95);
  if (a3)
  {
    goto LABEL_19;
  }

  v12 = [*(a1 + 240) absolutePositionIsValid];
  v13 = v12;
  if (v12)
  {
    [*(a1 + 240) pointerAbsolutePosition];
    v15 = v14;
    v17 = v16;
    os_unfair_lock_assert_owner((a1 + 8));
    [*(a1 + 136) denormalizedAbsoluteGlobalPosition:{v15, v17}];
    v19 = v18;
    v21 = v20;
    if (*(a1 + 144))
    {
      [*(a1 + 136) convertToGlobalPoint:*(a1 + 168) fromRegion:*(a1 + 176)];
    }

    else
    {
      y = CGPointZero.y;
    }

    if ((BSPointEqualToPoint() & 1) == 0)
    {
      sub_10005E2D4(a1, 0, @"HID abs", v19, v21);
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v23 = *(a1 + 376);
      v24 = [v23 countByEnumeratingWithState:&v120 objects:buf count:16];
      if (v24)
      {
        v25 = *v121;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v121 != v25)
            {
              objc_enumerationMutation(v23);
            }

            [*(*(&v120 + 1) + 8 * i) observeMouseAbsolutePointDidChange:{v19, v21}];
          }

          v24 = [v23 countByEnumeratingWithState:&v120 objects:buf count:16];
        }

        while (v24);
      }
    }

    [*(a1 + 240) invalidateAbsolutePosition];
  }

  if (v9 != 0.0 || v11 != 0.0)
  {
    sub_10005B7F4(a1, @"HID r", v9, v11);
LABEL_19:
    v13 = 0;
  }

  BYTE9(v101) = v13;
  v85 = [*(a1 + 144) displayUUID];
  v94 = 0uLL;
  v93 = 0;
  sub_10005B9D4(a1, &v94, &v93, &v96 + 1);
  v87 = v93;
  if (!v87)
  {
    goto LABEL_95;
  }

  v27 = [*(a1 + 240) hitTestReason];
  *&v96 = v27;
  if (!v27)
  {
    if ([*(a1 + 248) count])
    {
      if (v95 != 1)
      {
        BYTE8(v101) = 0;
        v29 = *&v94.i64[1];
        v28 = *v94.i64;
        v35 = *(a1 + 248);
        v36 = 0;
        v32 = 0;
        goto LABEL_28;
      }

      v27 = 5;
    }

    else
    {
      v27 = 4;
    }

    *&v96 = v27;
  }

  BYTE8(v101) = 1;
  v29 = *&v94.i64[1];
  v28 = *v94.i64;
  v30 = sub_10001AE04(*v94.i64, *&v94.i64[1], BKMouseDestination, (v27 > 6) | (0xCu >> v27) & 1, v87, *(&v100 + 1), *(a1 + 24), *(a1 + 248));
  v31 = [v30 mutableCopy];
  [v31 minusSet:*(a1 + 248)];
  v32 = v31;
  v33 = [v30 mutableCopy];
  [v33 intersectSet:*(a1 + 248)];
  [v33 unionSet:*(a1 + 424)];
  v34 = *(a1 + 248);
  v35 = v33;
  v36 = [v34 mutableCopy];
  [v36 minusSet:v30];
  v37 = *(a1 + 248);
  *(a1 + 248) = v30;

LABEL_28:
  v38 = v32;
  v39 = v35;
  v40 = v36;

  v84 = v32;
  v82 = v35;
  v86 = v36;
  v91 = objc_alloc_init(BKHIDEventCollector);
  v41 = *(a1 + 408);
  v42 = [*(a1 + 144) displayUUID];
  v83 = [v41 objectForKeyedSubscript:v42];

  sub_10005BAF0(a1, v83, &v96, v91, v28, v29);
  v43 = [*(a1 + 144) displayUUID];
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v44 = [*(a1 + 416) copy];
  v45 = [v44 countByEnumeratingWithState:&v120 objects:buf count:16];
  if (v45)
  {
    v46 = *v121;
    do
    {
      v47 = 0;
      do
      {
        if (*v121 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = *(*(&v120 + 1) + 8 * v47);
        if (v48)
        {
          v49 = *(v48 + 40);
        }

        else
        {
          v49 = 0;
        }

        v50 = v49;
        v51 = BSEqualObjects();

        if ((v51 & 1) == 0)
        {
          sub_10001ADEC(v48, *(&v100 + 1));
          sub_10005D948(a1, v48, v119, &v96, v28, v29);
          sub_10005E1A0(a1, 0, v48, &v96, v91);
        }

        v47 = v47 + 1;
      }

      while (v45 != v47);
      v52 = [v44 countByEnumeratingWithState:&v120 objects:buf count:16];
      v45 = v52;
    }

    while (v52);
  }

  if (v96 == 1)
  {
    sub_10005BD2C(a1, 0, v85, 1, obj, v91);
  }

  if ([*(a1 + 376) count])
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obja = v84;
    v53 = [obja countByEnumeratingWithState:&v114 objects:buf count:16];
    if (v53)
    {
      v54 = *v115;
      do
      {
        for (j = 0; j != v53; j = j + 1)
        {
          if (*v115 != v54)
          {
            objc_enumerationMutation(obja);
          }

          v56 = *(*(&v114 + 1) + 8 * j);
          v57 = sub_10001B448(v56, *(a1 + 464));
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v58 = *(a1 + 376);
          v59 = [v58 countByEnumeratingWithState:&v110 objects:&v120 count:16];
          if (v59)
          {
            v60 = *v111;
            do
            {
              v61 = 0;
              do
              {
                if (*v111 != v60)
                {
                  objc_enumerationMutation(v58);
                }

                if (v56)
                {
                  v62 = *(v56 + 8);
                }

                else
                {
                  v62 = 0;
                }

                [*(*(&v110 + 1) + 8 * v61) observeMouseDidEnterContextID:v62 pid:v57];
                v61 = v61 + 1;
              }

              while (v59 != v61);
              v63 = [v58 countByEnumeratingWithState:&v110 objects:&v120 count:16];
              v59 = v63;
            }

            while (v63);
          }
        }

        v53 = [obja countByEnumeratingWithState:&v114 objects:buf count:16];
      }

      while (v53);
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    objb = v86;
    v64 = [objb countByEnumeratingWithState:&v106 objects:v119 count:16];
    if (v64)
    {
      v65 = *v107;
      do
      {
        for (k = 0; k != v64; k = k + 1)
        {
          if (*v107 != v65)
          {
            objc_enumerationMutation(objb);
          }

          v67 = *(*(&v106 + 1) + 8 * k);
          v68 = sub_10001B448(v67, *(a1 + 464));
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v69 = *(a1 + 376);
          v70 = [v69 countByEnumeratingWithState:&v102 objects:v118 count:16];
          if (v70)
          {
            v71 = *v103;
            do
            {
              v72 = 0;
              do
              {
                if (*v103 != v71)
                {
                  objc_enumerationMutation(v69);
                }

                if (v67)
                {
                  v73 = *(v67 + 8);
                }

                else
                {
                  v73 = 0;
                }

                [*(*(&v102 + 1) + 8 * v72) observeMouseDidExitContextID:v73 pid:v68];
                v72 = v72 + 1;
              }

              while (v70 != v72);
              v74 = [v69 countByEnumeratingWithState:&v102 objects:v118 count:16];
              v70 = v74;
            }

            while (v74);
          }
        }

        v64 = [objb countByEnumeratingWithState:&v106 objects:v119 count:16];
      }

      while (v64);
    }
  }

  sub_10005C084(a1, 1, v84, &v96, v91, v28, v29);
  sub_10005C084(a1, 0, v82, &v96, v91, v28, v29);
  if ([v86 count])
  {
    v75 = [*(a1 + 424) count];
    [*(a1 + 424) minusSet:v86];
    if ([*(a1 + 424) count] != v75)
    {
      v76 = BKLogMousePointer();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v125 = v86;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "unpinning hit-test contexts (for context exit) %{public}@", buf, 0xCu);
      }
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v77 = v86;
    v78 = [v77 countByEnumeratingWithState:&v120 objects:buf count:16];
    if (v78)
    {
      v79 = *v121;
      v80 = v97;
      do
      {
        for (m = 0; m != v78; m = m + 1)
        {
          if (*v121 != v79)
          {
            objc_enumerationMutation(v77);
          }

          sub_10005D0A8(a1, *(*(&v120 + 1) + 8 * m), v80, v91);
        }

        v78 = [v77 countByEnumeratingWithState:&v120 objects:buf count:16];
      }

      while (v78);
    }
  }

  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_10005CF70;
  v92[3] = &unk_1000FBD90;
  v92[4] = a1;
  sub_10002D658(v91, v92);

LABEL_95:
}

void sub_10005B7F4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  os_unfair_lock_assert_owner((a1 + 8));
  if (*(a1 + 144))
  {
    [*(a1 + 136) convertToGlobalPoint:*(a1 + 168) fromRegion:*(a1 + 176)];
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  if (a3 != 0.0 || a4 != 0.0)
  {
    v10 = a3 + x;
    v11 = a4 + y;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = *(a1 + 376);
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * v16) observeMouseRelativePointDidChange:{a3, a4, v17}];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }

    sub_10005E2D4(a1, 0, a2, v10, v11);
  }
}

void sub_10005B9D4(uint64_t a1, int8x16_t *a2, void *a3, const os_unfair_lock **a4)
{
  v33 = [*(a1 + 144) displayUUID];
  v8 = sub_10005DD24(a1, v33);
  v9 = [v8 uniqueId];
  v10 = sub_10005DDD4(a1, v33);
  v11 = *(a1 + 168);
  v12 = *(a1 + 176);
  sub_10005DE60(v8, v10, *(a1 + 312));
  [*(a1 + 312) convertReferenceLocation:v9 toCAScreenLocationForDisplayUUID:?];
  v31 = v14;
  v32 = v13;
  [v8 bounds];
  v16.f64[1] = v15;
  __asm { FMOV            V1.2D, #1.0 }

  v23.f64[1] = v22;
  v24 = vaddq_f64(v16, _Q1);
  v25 = vaddq_f64(v16, v23);
  __asm { FMOV            V2.2D, #-2.0 }

  v27 = vaddq_f64(v25, _Q2);
  v28.f64[0] = v32;
  v28.f64[1] = v31;
  v29 = vbslq_s8(vcgtq_f64(v27, v28), v28, v27);
  *a2 = vbslq_s8(vcgtq_f64(v29, v24), v29, v24);
  *a4 = v10;
  v30 = v8;
  *a3 = v8;
}