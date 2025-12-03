@interface UATimedPowerAssertions
+ (id)statusString;
- (BOOL)active;
- (UATimedPowerAssertions)initWithName:(id)name delta:(double)delta activityUUID:(id)d queue:(id)queue runAtCompletion:(id)completion;
- (void)_releaseAssertion:(BOOL)assertion;
- (void)dealloc;
- (void)releaseAssertion;
- (void)releaseAssertion:(BOOL)assertion;
- (void)updateTimeUntilAssertionRelease:(double)release;
@end

@implementation UATimedPowerAssertions

- (UATimedPowerAssertions)initWithName:(id)name delta:(double)delta activityUUID:(id)d queue:(id)queue runAtCompletion:(id)completion
{
  nameCopy = name;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  v31.receiver = self;
  v31.super_class = UATimedPowerAssertions;
  v16 = [(UATimedPowerAssertions *)&v31 init];
  if (v16)
  {
    v17 = +[NSUUID UUID];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v19 = @"-";
    if (nameCopy)
    {
      v20 = nameCopy;
    }

    else
    {
      v20 = @"-";
    }

    if (dCopy)
    {
      v19 = [dCopy description];
    }

    v21 = [NSString stringWithFormat:@"%@.%@", v20, v19];
    name = v16->_name;
    v16->_name = v21;

    if (dCopy)
    {
    }

    objc_storeStrong(&v16->_mainDispatchQ, queue);
    [(UATimedPowerAssertions *)v16 setNeedToCallBlock:1];
    [(UATimedPowerAssertions *)v16 setBlock:completionCopy];
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

    [(UATimedPowerAssertions *)v25 updateTimeUntilAssertionRelease:delta];
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
    name = [(UATimedPowerAssertions *)self name];
    uuid = [(UATimedPowerAssertions *)self uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138543618;
    v24 = name;
    v25 = 2114;
    v26 = uUIDString;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "-dealloc for power assertion %{public}@/%{public}@", buf, 0x16u);
  }

  v7 = sub_10003502C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000354A8;
  block[3] = &unk_1000C4CC0;
  block[4] = self;
  dispatch_sync(v7, block);

  timerSource = [(UATimedPowerAssertions *)self timerSource];

  if (timerSource)
  {
    timerSource2 = [(UATimedPowerAssertions *)self timerSource];
    dispatch_source_cancel(timerSource2);
  }

  if ([(UATimedPowerAssertions *)self needToCallBlock])
  {
    block = [(UATimedPowerAssertions *)self block];

    if (block)
    {
      v11 = sub_100001A30(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        name2 = [(UATimedPowerAssertions *)self name];
        *buf = 138543362;
        v24 = name2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Calling block with NO, in -dealloc", buf, 0xCu);
      }

      block2 = [(UATimedPowerAssertions *)self block];
      [(UATimedPowerAssertions *)self setBlock:0];
      mainDispatchQ = [(UATimedPowerAssertions *)self mainDispatchQ];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100035510;
      v20[3] = &unk_1000C4E48;
      v21 = block2;
      v15 = block2;
      dispatch_async(mainDispatchQ, v20);
    }
  }

  if ([(UATimedPowerAssertions *)self assertion])
  {
    v16 = sub_100001A30(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      name3 = [(UATimedPowerAssertions *)self name];
      assertion = [(UATimedPowerAssertions *)self assertion];
      *buf = 138543618;
      v24 = name3;
      v25 = 2048;
      v26 = assertion;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(UATimedPowerAssertions *)selfCopy assertion]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)updateTimeUntilAssertionRelease:(double)release
{
  if (release <= 0.0)
  {
    timerSource = [(UATimedPowerAssertions *)self timerSource];

    if (!timerSource)
    {
      if ([(UATimedPowerAssertions *)self needToCallBlock])
      {
        block = [(UATimedPowerAssertions *)self block];

        if (block)
        {
          [(UATimedPowerAssertions *)self setNeedToCallBlock:0];
          mainDispatchQ = [(UATimedPowerAssertions *)self mainDispatchQ];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100035D1C;
          block[3] = &unk_1000C4CC0;
          block[4] = self;
          dispatch_async(mainDispatchQ, block);
        }
      }
    }
  }

  else
  {
    v5 = dispatch_time(0, (release * 1000000000.0));
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_timerSource)
    {
      if ([(UATimedPowerAssertions *)selfCopy nextTimer]&& [(UATimedPowerAssertions *)selfCopy nextTimer]>= v5)
      {
        timerSource2 = sub_100001A30(0);
        if (os_log_type_enabled(timerSource2, OS_LOG_TYPE_DEBUG))
        {
          name = [(UATimedPowerAssertions *)selfCopy name];
          *buf = 138543874;
          v38 = name;
          v39 = 2048;
          releaseCopy3 = release;
          v41 = 2048;
          v42 = (v5 - [(UATimedPowerAssertions *)selfCopy nextTimer]) / 1000000000.0;
          _os_log_impl(&_mh_execute_header, timerSource2, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ No need to update assertion; request for %g seconds is less than current expiration, in %.2g seconds.", buf, 0x20u);
        }
      }

      else
      {
        v7 = sub_100001A30(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          name2 = [(UATimedPowerAssertions *)selfCopy name];
          *buf = 138543874;
          v38 = name2;
          v39 = 2048;
          releaseCopy3 = release;
          v41 = 2048;
          v42 = (v5 - [(UATimedPowerAssertions *)selfCopy nextTimer]) / 1000000000.0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Rescheduling assertion for %g seconds (was %.2g seconds from now).", buf, 0x20u);
        }

        [(UATimedPowerAssertions *)selfCopy setNextTimer:v5];
        v9 = [NSDate dateWithTimeIntervalSinceNow:release];
        [(UATimedPowerAssertions *)selfCopy setTimerExpiration:v9];

        timerSource2 = [(UATimedPowerAssertions *)selfCopy timerSource];
        dispatch_source_set_timer(timerSource2, v5, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
      }

      [(UATimedPowerAssertions *)selfCopy setNeedToCallBlock:1];
    }

    else
    {
      v14 = sub_100001A30(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        name3 = [(UATimedPowerAssertions *)selfCopy name];
        *buf = 138543618;
        v38 = name3;
        v39 = 2048;
        releaseCopy3 = release;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Scheduling assertion for %g seconds.", buf, 0x16u);
      }

      v16 = sub_100035C58();
      v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
      timerSource = selfCopy->_timerSource;
      selfCopy->_timerSource = v17;

      objc_initWeak(buf, selfCopy);
      timerSource3 = [(UATimedPowerAssertions *)selfCopy timerSource];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100035C9C;
      handler[3] = &unk_1000C4EB8;
      objc_copyWeak(&v34, buf);
      dispatch_source_set_event_handler(timerSource3, handler);

      v20 = [NSDate dateWithTimeIntervalSinceNow:release];
      [(UATimedPowerAssertions *)selfCopy setTimerExpiration:v20];

      timerSource4 = [(UATimedPowerAssertions *)selfCopy timerSource];
      dispatch_source_set_timer(timerSource4, v5, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);

      timerSource5 = [(UATimedPowerAssertions *)selfCopy timerSource];
      dispatch_resume(timerSource5);

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }

    if (!selfCopy->_assertion)
    {
      AssertionID = 0;
      v35[0] = @"FrameworkBundleID";
      v35[1] = @"AssertType";
      v36[0] = @"com.apple.useractivityd";
      v36[1] = @"PreventUserIdleSystemSleep";
      v35[2] = @"AssertName";
      name4 = [(UATimedPowerAssertions *)selfCopy name];
      v36[2] = name4;
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
          LODWORD(releaseCopy3) = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s, IOPMAssertionCreateWithProperties returned %x", buf, 0x12u);
        }
      }

      else
      {
        selfCopy->_assertion = AssertionID;
        v27 = sub_100001A30(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          name5 = [(UATimedPowerAssertions *)selfCopy name];
          assertion = [(UATimedPowerAssertions *)selfCopy assertion];
          *buf = 138543618;
          v38 = name5;
          v39 = 2048;
          *&releaseCopy3 = assertion;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Power assertion /%ld created.", buf, 0x16u);
        }
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_releaseAssertion:(BOOL)assertion
{
  v4 = sub_100035C58();
  dispatch_assert_queue_V2(v4);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(UATimedPowerAssertions *)selfCopy assertion])
  {
    v6 = sub_100001A30(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      name = [(UATimedPowerAssertions *)selfCopy name];
      *buf = 138543618;
      v15 = name;
      v16 = 2048;
      assertion = [(UATimedPowerAssertions *)selfCopy assertion];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Power assertion %ld released.", buf, 0x16u);
    }

    IOPMAssertionRelease(selfCopy->_assertion);
    selfCopy->_assertion = 0;
  }

  if ([(UATimedPowerAssertions *)selfCopy needToCallBlock])
  {
    block = [(UATimedPowerAssertions *)selfCopy block];
    v9 = block == 0;

    if (!v9)
    {
      v10 = sub_100001A30(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        name2 = [(UATimedPowerAssertions *)selfCopy name];
        *buf = 138543362;
        v15 = name2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "ASSERTION: %{public}@ Updating needToCallBlock => NO", buf, 0xCu);
      }

      [(UATimedPowerAssertions *)selfCopy setNeedToCallBlock:0];
      [(UATimedPowerAssertions *)selfCopy setNextTimer:0];
      mainDispatchQ = [(UATimedPowerAssertions *)selfCopy mainDispatchQ];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100035FC4;
      block[3] = &unk_1000C4CC0;
      block[4] = selfCopy;
      dispatch_async(mainDispatchQ, block);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)releaseAssertion:(BOOL)assertion
{
  v5 = sub_100035C58();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036144;
  v6[3] = &unk_1000C5778;
  v6[4] = self;
  assertionCopy = assertion;
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