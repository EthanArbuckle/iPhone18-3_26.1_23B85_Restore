@interface BYDaemonLockAssertionManager
- (id)acquireLockAssertionWithOptions:(id)options purpose:(id)purpose;
@end

@implementation BYDaemonLockAssertionManager

- (id)acquireLockAssertionWithOptions:(id)options purpose:(id)purpose
{
  optionsCopy = options;
  purposeCopy = purpose;
  cf = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v7 = off_100028CB8;
  v20 = off_100028CB8;
  if (!off_100028CB8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000A8C8;
    v22 = &unk_100020568;
    v23 = &v17;
    sub_10000A8C8(buf);
    v7 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v7)
  {
    sub_100010C40();
    __break(1u);
  }

  domain = v7(optionsCopy, &cf);
  v9 = _BYLoggingFacility();
  v10 = v9;
  if (domain)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = purposeCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Acquired device lock assertion for purpose '%{public}@'", buf, 0xCu);
    }

    v11 = [[BYDaemonLockAssertionWrapper alloc] initWithAssertionRef:domain purpose:purposeCopy];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = _BYIsInternalInstall();
      v14 = cf;
      if ((v13 & 1) == 0 && cf)
      {
        domain = [cf domain];
        v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [cf code]);
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      *buf = 138543618;
      *&buf[4] = purposeCopy;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to acquire device lock assertion for purpose '%{public}@' - %{public}@", buf, 0x16u);
      if (v15)
      {
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v11 = 0;
  }

  return v11;
}

@end