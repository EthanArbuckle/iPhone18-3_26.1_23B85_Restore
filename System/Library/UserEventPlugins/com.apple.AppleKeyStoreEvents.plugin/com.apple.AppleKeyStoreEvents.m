void sub_528(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > -469774320)
  {
    if (a3 == -469774319)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "KeyStoreNotifier posting memento effacement", v5, 2u);
      }

      v3 = "com.apple.keystore.memento.effaced";
    }

    else
    {
      if (a3 != -469774317)
      {
        return;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "KeyStoreNotifier posting cache flow enabled", v4, 2u);
      }

      v3 = "com.apple.keystore.cache.enabled";
    }
  }

  else if (a3 == -469774323)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "KeyStoreNotifier posting lockstate change", v7, 2u);
    }

    v3 = "com.apple.keystore.lockstatus";
  }

  else
  {
    if (a3 != -469774321)
    {
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "KeyStoreNotifier posting first unlock", buf, 2u);
    }

    v3 = "com.apple.keystore.firstunlock";
  }

  notify_post(v3);
}

uint64_t sub_798(int a1, IONotificationPort *a2, unsigned int *a3)
{
  syslog(3, "KeyStoreNotifier - Can't register for notification: %08x", a1);
  IONotificationPortDestroy(a2);
  result = *a3;
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}