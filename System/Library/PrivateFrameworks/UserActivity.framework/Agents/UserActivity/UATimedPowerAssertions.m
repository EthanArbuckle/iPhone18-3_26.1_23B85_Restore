@interface UATimedPowerAssertions
+ (id)statusString;
- (BOOL)active;
- (UATimedPowerAssertions)initWithName:(id)a3 delta:(double)a4 activityUUID:(id)a5 queue:(id)a6 runAtCompletion:(id)a7;
- (void)_releaseAssertion:(BOOL)a3;
- (void)dealloc;
- (void)releaseAssertion;
- (void)releaseAssertion:(BOOL)a3;
- (void)updateTimeUntilAssertionRelease:(double)a3;
@end

@implementation UATimedPowerAssertions

- (UATimedPowerAssertions)initWithName:(id)a3 delta:(double)a4 activityUUID:(id)a5 queue:(id)a6 runAtCompletion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v31.receiver = self;
  v31.super_class = UATimedPowerAssertions;
  v16 = [(UATimedPowerAssertions *)&v31 init];
  if (v16)
  {
    v17 = +[NSUUID UUID];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v19 = @"-";
    if (v12)
    {
      v20 = v12;
    }

    else
    {
      v20 = @"-";
    }

    if (v13)
    {
      v19 = [v13 description];
    }

    v21 = [NSString stringWithFormat:@"%@.%@", v20, v19];
    name = v16->_name;
    v16->_name = v21;

    if (v13)
    {
    }

    objc_storeStrong(&v16->_mainDispatchQ, a6);
    [(UATimedPowerAssertions *)v16 setNeedToCallBlock:1];
    [(UATimedPowerAssertions *)v16 setBlock:v15];
    timerExpiration = v16->_timerExpiration;
    v16->_timerExpiration = 0;

    objc_initWeak(&location, v16);
    v24 = sub_10003502C();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100035070;
    block[3] = &unk_1000C5698;
    objc_copyWeak(&v29, &location);
    v25 = v16;
    v28 = v25;
    dispatch_sync(v24, block);

    [(UATimedPowerAssertions *)v25 updateTimeUntilAssertionRelease:a4];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (void)dealloc
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UATimedPowerAssertions *)self name];
    v5 = [(UATimedPowerAssertions *)self uuid];
    v6 = [v5 UUIDString];
    *buf = 138543618;
    v24 = v4;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "-dealloc for power assertion %{public}@/%{public}@", buf, 0x16u);
  }

  v7 = sub_10003502C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000354A8;
  block[3] = &unk_1000C4CC0;
  block[4] = self;
  dispatch_sync(v7, block);

  v8 = [(UATimedPowerAssertions *)self timerSource];

  if (v8)
  {
    v9 = [(UATimedPowerAssertions *)self timerSource];
    dispatch_source_cancel(v9);
  }

  if ([(UATimedPowerAssertions *)self needToCallBlock])
  {
    v10 = [(UATimedPowerAssertions *)self block];

    if (v10)
    {
      v11 = sub_100001A30(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [(UATimedPowerAssertions *)self name];
        *buf = 138543362;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Calling block with NO, in -dealloc", buf, 0xCu);
      }

      v13 = [(UATimedPowerAssertions *)self block];
      [(UATimedPowerAssertions *)self setBlock:0];
      v14 = [(UATimedPowerAssertions *)self mainDispatchQ];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100035510;
      v20[3] = &unk_1000C4E48;
      v21 = v13;
      v15 = v13;
      dispatch_async(v14, v20);
    }
  }

  if ([(UATimedPowerAssertions *)self assertion])
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(UATimedPowerAssertions *)self name];
      v18 = [(UATimedPowerAssertions *)self assertion];
      *buf = 138543618;
      v24 = v17;
      v25 = 2048;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Releasing assertion %ld, in -dealloc", buf, 0x16u);
    }

    IOPMAssertionRelease([(UATimedPowerAssertions *)self assertion]);
    self->_assertion = 0;
  }

  v19.receiver = self;
  v19.super_class = UATimedPowerAssertions;
  [(UATimedPowerAssertions *)&v19 dealloc];
}

- (BOOL)active
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UATimedPowerAssertions *)v2 assertion]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)updateTimeUntilAssertionRelease:(double)a3
{
  if (a3 <= 0.0)
  {
    v11 = [(UATimedPowerAssertions *)self timerSource];

    if (!v11)
    {
      if ([(UATimedPowerAssertions *)self needToCallBlock])
      {
        v12 = [(UATimedPowerAssertions *)self block];

        if (v12)
        {
          [(UATimedPowerAssertions *)self setNeedToCallBlock:0];
          v13 = [(UATimedPowerAssertions *)self mainDispatchQ];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100035D1C;
          block[3] = &unk_1000C4CC0;
          block[4] = self;
          dispatch_async(v13, block);
        }
      }
    }
  }

  else
  {
    v5 = dispatch_time(0, (a3 * 1000000000.0));
    v6 = self;
    objc_sync_enter(v6);
    if (v6->_timerSource)
    {
      if ([(UATimedPowerAssertions *)v6 nextTimer]&& [(UATimedPowerAssertions *)v6 nextTimer]>= v5)
      {
        v10 = sub_100001A30(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v28 = [(UATimedPowerAssertions *)v6 name];
          *buf = 138543874;
          v38 = v28;
          v39 = 2048;
          v40 = a3;
          v41 = 2048;
          v42 = (v5 - [(UATimedPowerAssertions *)v6 nextTimer]) / 1000000000.0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ No need to update assertion; request for %g seconds is less than current expiration, in %.2g seconds.", buf, 0x20u);
        }
      }

      else
      {
        v7 = sub_100001A30(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = [(UATimedPowerAssertions *)v6 name];
          *buf = 138543874;
          v38 = v8;
          v39 = 2048;
          v40 = a3;
          v41 = 2048;
          v42 = (v5 - [(UATimedPowerAssertions *)v6 nextTimer]) / 1000000000.0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Rescheduling assertion for %g seconds (was %.2g seconds from now).", buf, 0x20u);
        }

        [(UATimedPowerAssertions *)v6 setNextTimer:v5];
        v9 = [NSDate dateWithTimeIntervalSinceNow:a3];
        [(UATimedPowerAssertions *)v6 setTimerExpiration:v9];

        v10 = [(UATimedPowerAssertions *)v6 timerSource];
        dispatch_source_set_timer(v10, v5, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
      }

      [(UATimedPowerAssertions *)v6 setNeedToCallBlock:1];
    }

    else
    {
      v14 = sub_100001A30(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [(UATimedPowerAssertions *)v6 name];
        *buf = 138543618;
        v38 = v15;
        v39 = 2048;
        v40 = a3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Scheduling assertion for %g seconds.", buf, 0x16u);
      }

      v16 = sub_100035C58();
      v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
      timerSource = v6->_timerSource;
      v6->_timerSource = v17;

      objc_initWeak(buf, v6);
      v19 = [(UATimedPowerAssertions *)v6 timerSource];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100035C9C;
      handler[3] = &unk_1000C4EB8;
      objc_copyWeak(&v34, buf);
      dispatch_source_set_event_handler(v19, handler);

      v20 = [NSDate dateWithTimeIntervalSinceNow:a3];
      [(UATimedPowerAssertions *)v6 setTimerExpiration:v20];

      v21 = [(UATimedPowerAssertions *)v6 timerSource];
      dispatch_source_set_timer(v21, v5, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);

      v22 = [(UATimedPowerAssertions *)v6 timerSource];
      dispatch_resume(v22);

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }

    if (!v6->_assertion)
    {
      AssertionID = 0;
      v35[0] = @"FrameworkBundleID";
      v35[1] = @"AssertType";
      v36[0] = @"com.apple.useractivityd";
      v36[1] = @"PreventUserIdleSystemSleep";
      v35[2] = @"AssertName";
      v23 = [(UATimedPowerAssertions *)v6 name];
      v36[2] = v23;
      v35[3] = @"TimeoutSeconds";
      v24 = [NSNumber numberWithDouble:60.0];
      v35[4] = @"TimeoutAction";
      v36[3] = v24;
      v36[4] = @"TimeoutActionTurnOff";
      v25 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];

      v26 = IOPMAssertionCreateWithProperties(v25, &AssertionID);
      if (v26)
      {
        v27 = sub_100001A30(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v38 = "[UATimedPowerAssertions updateTimeUntilAssertionRelease:]";
          v39 = 1024;
          LODWORD(v40) = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s, IOPMAssertionCreateWithProperties returned %x", buf, 0x12u);
        }
      }

      else
      {
        v6->_assertion = AssertionID;
        v27 = sub_100001A30(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v29 = [(UATimedPowerAssertions *)v6 name];
          v30 = [(UATimedPowerAssertions *)v6 assertion];
          *buf = 138543618;
          v38 = v29;
          v39 = 2048;
          *&v40 = v30;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Power assertion /%ld created.", buf, 0x16u);
        }
      }
    }

    objc_sync_exit(v6);
  }
}

- (void)_releaseAssertion:(BOOL)a3
{
  v4 = sub_100035C58();
  dispatch_assert_queue_V2(v4);

  v5 = self;
  objc_sync_enter(v5);
  if ([(UATimedPowerAssertions *)v5 assertion])
  {
    v6 = sub_100001A30(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(UATimedPowerAssertions *)v5 name];
      *buf = 138543618;
      v15 = v7;
      v16 = 2048;
      v17 = [(UATimedPowerAssertions *)v5 assertion];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Power assertion %ld released.", buf, 0x16u);
    }

    IOPMAssertionRelease(v5->_assertion);
    v5->_assertion = 0;
  }

  if ([(UATimedPowerAssertions *)v5 needToCallBlock])
  {
    v8 = [(UATimedPowerAssertions *)v5 block];
    v9 = v8 == 0;

    if (!v9)
    {
      v10 = sub_100001A30(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(UATimedPowerAssertions *)v5 name];
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Updating needToCallBlock => NO", buf, 0xCu);
      }

      [(UATimedPowerAssertions *)v5 setNeedToCallBlock:0];
      [(UATimedPowerAssertions *)v5 setNextTimer:0];
      v12 = [(UATimedPowerAssertions *)v5 mainDispatchQ];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100035FC4;
      block[3] = &unk_1000C4CC0;
      block[4] = v5;
      dispatch_async(v12, block);
    }
  }

  objc_sync_exit(v5);
}

- (void)releaseAssertion:(BOOL)a3
{
  v5 = sub_100035C58();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036144;
  v6[3] = &unk_1000C5778;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (void)releaseAssertion
{
  v3 = sub_100035C58();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000361DC;
  block[3] = &unk_1000C4CC0;
  block[4] = self;
  dispatch_sync(v3, block);
}

+ (id)statusString
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100001F24;
  v10 = sub_1000362E0;
  v11 = 0;
  v2 = sub_10003502C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000362E8;
  block[3] = &unk_1000C57A0;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end