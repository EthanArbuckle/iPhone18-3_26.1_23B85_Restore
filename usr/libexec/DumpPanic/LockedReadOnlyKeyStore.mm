@interface LockedReadOnlyKeyStore
- (BOOL)unlock;
@end

@implementation LockedReadOnlyKeyStore

- (BOOL)unlock
{
  if (!&_MKBDeviceUnlockedSinceBoot)
  {
LABEL_11:
    v10.receiver = self;
    v10.super_class = LockedReadOnlyKeyStore;
    LOBYTE(v8) = [(ReadOnlyKeyStore *)&v10 unlock];
    return v8;
  }

  v3 = MKBDeviceUnlockedSinceBoot();
  if (v3 < 0)
  {
    v7 = qword_100042B28;
    v8 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      return v8;
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to get device lock state", buf, 2u);
  }

  else
  {
    v4 = v3;
    v5 = qword_100042B28;
    v6 = os_log_type_enabled(qword_100042B28, OS_LOG_TYPE_DEFAULT);
    if (v4 == 1)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device already after first unlock", buf, 2u);
      }

      goto LABEL_11;
    }

    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for first unlock ...", buf, 2u);
    }

    dispatch_semaphore_wait(qword_100042A18, 0xFFFFFFFFFFFFFFFFLL);
    if (MKBDeviceUnlockedSinceBoot() == 1)
    {
      goto LABEL_11;
    }
  }

  LOBYTE(v8) = 0;
  return v8;
}

@end