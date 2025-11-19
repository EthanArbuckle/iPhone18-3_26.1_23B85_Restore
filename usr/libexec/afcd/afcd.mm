uint64_t start(int a1, char *const *a2)
{
  bzero(v27, 0x400uLL);
  memset(&v25, 0, sizeof(v25));
  AFCPlatformInitialize();
  AFCLog();
  signal(13, 1);
  while (1)
  {
    v4 = getopt_long(a1, a2, "r", &off_100008000, 0);
    if (v4 != 114)
    {
      break;
    }

    qword_100008040 = "com.apple.crashreportcopymobile";
  }

  if (v4 != -1)
  {
    fwrite("usage: afcd [-r]\n", 0x11uLL, 1uLL, __stderrp);
    fwrite("  -r | --crash-reporter      : run afcd for crash reporter\n", 0x3BuLL, 1uLL, __stderrp);
    goto LABEL_42;
  }

  v5 = qword_100008040;
  if (!qword_100008040)
  {
    v5 = "com.apple.afcd";
    qword_100008040 = "com.apple.afcd";
  }

  if (strcmp(v5, "com.apple.crashreportcopymobile"))
  {
    v6 = "/private/var/mobile/Media";
    goto LABEL_17;
  }

  v7 = MKBUserTypeDeviceMode();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  Value = CFDictionaryGetValue(v7, kMKBDeviceModeKey);
  if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFStringGetTypeID()))
  {
    CFRelease(v8);
    goto LABEL_16;
  }

  v12 = CFStringCompare(v10, kMKBDeviceModeMultiUser, 0);
  CFRelease(v8);
  if (v12)
  {
LABEL_16:
    v6 = "/private/var/mobile/Library/Logs/CrashReporter";
    goto LABEL_17;
  }

  v13 = container_system_group_path_for_identifier();
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = v13;
  v6 = v27;
  __strcpy_chk();
  __strcat_chk();
  free(v14);
LABEL_17:
  if (kqueue() == -1)
  {
LABEL_43:
    AFCLog();
LABEL_42:
    exit(1);
  }

  if (lstat(v6, &v25) < 0)
  {
    if (*__error() != 2)
    {
      goto LABEL_36;
    }
  }

  else if ((v25.st_mode & 0xF000) == 0xA000)
  {
    goto LABEL_40;
  }

  qword_100008048 = realpath_DARWIN_EXTSN(v6, 0);
  if (qword_100008048)
  {
    goto LABEL_26;
  }

  if (*__error() != 2)
  {
    v20 = __error();
    strerror(*v20);
    goto LABEL_43;
  }

  if (mkdir(v6, 0x1EDu) < 0)
  {
LABEL_36:
    v24 = *__error();
    goto LABEL_40;
  }

  qword_100008048 = strdup(v6);
LABEL_26:
  AFCLog();
  if (lstat(qword_100008048, &v25) < 0)
  {
    goto LABEL_36;
  }

  AFCLog();
  if ((v25.st_mode & 0xF000) == 0x4000)
  {
    errorbuf = 0;
    v15 = sandbox_extension_issue_file();
    if (v15)
    {
      v16 = v15;
      if (sandbox_init("afcd", 2uLL, &errorbuf) < 0)
      {
        AFCLog();
        sandbox_free_error(errorbuf);
      }

      else
      {
        if ((sandbox_extension_consume() & 0x8000000000000000) == 0)
        {
          free(v16);
          qword_100008050 = dispatch_group_create();
          v21 = dispatch_queue_create("afcd xpc listener", 0);
          qword_100008058 = v21;
          global_queue = dispatch_get_global_queue(2, 0);
          dispatch_set_target_queue(v21, global_queue);
          AFCLog();
          sub_100000D70(qword_100008040, qword_100008058);
          dispatch_main();
        }

        v17 = *__error();
        if (!errorbuf)
        {
          v18 = __error();
          strerror(*v18);
        }

        AFCLog();
      }

      free(v16);
    }

    else
    {
      v23 = *__error();
      AFCLog();
    }
  }

LABEL_40:
  AFCLog();
  return 1;
}

void sub_100000D70(const char *a1, NSObject *a2)
{
  if (!qword_100008060)
  {
    AFCLog();
    mach_service = xpc_connection_create_mach_service(a1, a2, 1uLL);
    qword_100008060 = mach_service;
    if (!mach_service)
    {
      AFCLog();
      exit(1);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100000E4C;
    handler[3] = &unk_1000042C0;
    v6 = 0;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_resume(qword_100008060);
  }
}

uint64_t sub_100000E4C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    v6 = *(a1 + 32);
    AFCLog();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100000FC4;
    handler[3] = &unk_1000042E0;
    v8 = v6;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    AFCLog();
    xpc_connection_resume(object);
    return AFCLog();
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      if (object == &_xpc_error_termination_imminent)
      {
        AFCLog();
        exit(0);
      }

      xpc_dictionary_get_string(object, _xpc_error_key_description);
      AFCLog();
      xpc_connection_cancel(qword_100008060);
      exit(1);
    }

    return AFCLog();
  }
}

void sub_100000FC4(uint64_t a1, void *a2)
{
  AFCLog();
  type = xpc_get_type(a2);
  if (type == &_xpc_type_dictionary)
  {
    AFCLog();
    if (!lockdown_copy_checkin_info())
    {
      v5 = *(a1 + 40);
      bzero(buffer, 0x400uLL);
      AFCLog();
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, kLockdownCheckinConnectionInfoKey, 0);
      v7 = secure_lockdown_checkin();
      CFRelease(Mutable);
      if (v7)
      {
        goto LABEL_18;
      }

      lockdown_get_socket();
      lockdown_get_securecontext();
      AFCLog();
      socket = lockdown_get_socket();
      lockdown_get_securecontext();
      v9 = qword_100008048;
      AFCLog();
      xpc_transaction_begin();
      v17 = 1;
      if (setsockopt(socket, 0xFFFF, 4130, &v17, 4u) < 0)
      {
        v10 = __error();
        strerror(*v10);
        AFCLog();
      }

      if (!AFCCreateServerContext() || (v11 = CFStringCreateWithCString(kCFAllocatorDefault, v9, 0x8000100u), AFCServerContextSetRootPath(), CFRelease(v11), AFCServerContextSetLockdownConnection(), (v12 = AFCConnectionCreate()) == 0))
      {
LABEL_18:
        AFCLog();
        exit(1);
      }

      v13 = v12;
      AFCConnectionSetSecureContext();
      AFCConnectionSetDisposeSecureContextOnInvalidate();
      AFCInitServerConnection();
      if (v5)
      {
        AFCServerConnectionSetFileCoordinationEnabled();
      }

      AFCLog();
      global_queue = dispatch_get_global_queue(21, 0);
      dispatch_group_async_f(qword_100008050, global_queue, v13, sub_10000143C);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_1000014E8;
      block[3] = &unk_100004300;
      v16 = 1;
      dispatch_group_notify(qword_100008050, qword_100008058, block);
      AFCLog();
      CFRelease(0);
    }
  }

  else if (type == &_xpc_type_error && a2 != &_xpc_error_termination_imminent && a2 != &_xpc_error_connection_invalid)
  {
    xpc_dictionary_get_string(a2, _xpc_error_key_description);
  }

  AFCLog();
  xpc_connection_cancel(*(a1 + 32));
}

uint64_t sub_10000143C(const void *a1)
{
  AFCLog();
  AFCConnectionSetIOTimeout();
  AFCConnectionGetContext();
  AFCServerContextGetRootPath();
  AFCServeWithRoot();
  if (AFCServerContextGetLockdownConnection())
  {
    AFCServerContextGetLockdownConnection();
    lockdown_disconnect();
  }

  AFCFreeServerContext();
  AFCConnectionSetContext();
  AFCConnectionInvalidate();
  CFRelease(a1);
  AFCLog();
  xpc_transaction_end();
  return 0;
}

uint64_t sub_1000014E8(uint64_t a1)
{
  result = AFCLog();
  if ((*(a1 + 32) & 1) == 0)
  {
    AFCLog();
    exit(0);
  }

  return result;
}