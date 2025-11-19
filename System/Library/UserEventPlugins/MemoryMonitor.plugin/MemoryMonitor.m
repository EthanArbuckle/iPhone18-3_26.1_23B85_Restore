void sub_9B0(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v10 = [v9 state];
  v11 = [v10 endowmentNamespaces];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_F8C;
  v29[3] = &unk_42F0;
  v30 = a1[4];
  v12 = v8;
  v31 = v12;
  v32 = a1[5];
  v33 = v34;
  [v11 enumerateObjectsUsingBlock:v29];

  v13 = [v9 state];
  v14 = [v13 assertions];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10C0;
  v23[3] = &unk_4318;
  v24 = a1[4];
  v15 = v12;
  v25 = v15;
  v26 = a1[6];
  v28 = v36;
  v27 = a1[7];
  [v14 enumerateObjectsUsingBlock:v23];

  v16 = qword_45C8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C7C;
  block[3] = &unk_4340;
  v21 = v34;
  v19 = a1[4];
  v20 = v15;
  v22 = v36;
  v17 = v15;
  dispatch_async(v16, block);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
}

void sub_C58(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_C7C(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *(a1 + 32);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v4)
    {
      v12 = *(a1 + 40);
      v13 = v3;
      v14 = [v12 name];
      v15 = [v14 UTF8String];
      v16 = [*(a1 + 40) pid];
      v27 = 136315394;
      v28 = v15;
      v29 = 1024;
      v30 = v16;
      _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%s (%d) is visibile", &v27, 0x12u);
    }

    v5 = qword_45D8;
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) pid]);
    [v5 addObject:v6];
  }

  else
  {
    if (v4)
    {
      v17 = *(a1 + 40);
      v18 = v3;
      v19 = [v17 name];
      v20 = [v19 UTF8String];
      v21 = [*(a1 + 40) pid];
      v27 = 136315394;
      v28 = v20;
      v29 = 1024;
      v30 = v21;
      _os_log_debug_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%s (%d) is not visibile", &v27, 0x12u);
    }

    v7 = qword_45D8;
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) pid]);
    [v7 removeObject:v6];
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 40);
      v23 = v8;
      v24 = [v22 name];
      v25 = [v24 UTF8String];
      v26 = [*(a1 + 40) pid];
      v27 = 136315394;
      v28 = v25;
      v29 = 1024;
      v30 = v26;
      _os_log_debug_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%s (%d) took media assertion", &v27, 0x12u);
    }

    v9 = qword_45D0;
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) pid]);
    [v9 addObject:v10];
  }

  else
  {
    v11 = qword_45D0;
    v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) pid]);
    [v11 removeObject:v10];
  }
}

void sub_F8C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    v9 = [v7 name];
    v10 = [v9 UTF8String];
    v11 = [*(a1 + 40) pid];
    v12 = 136315650;
    v13 = v10;
    v14 = 1024;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%s (%d) has endowment: %@", &v12, 0x1Cu);
  }

  if ([*(a1 + 48) containsObject:v5])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_10C0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 type];
  v7 = *(a1 + 32);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6 == 3)
  {
    if (v8)
    {
      v13 = *(a1 + 40);
      v14 = v7;
      v15 = [v13 name];
      v16 = [v15 UTF8String];
      v17 = [*(a1 + 40) pid];
      v18 = [v5 description];
      v25 = 136315906;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      v31 = 2048;
      v32 = [v5 reason];
      _os_log_debug_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%s (%d) took legacy assertion: %@ (%llu)", &v25, 0x26u);
    }

    v9 = *(a1 + 48);
    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 reason]);
    LOBYTE(v9) = [v9 containsObject:v10];

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a3 = 1;
    goto LABEL_10;
  }

  if (v8)
  {
    v19 = *(a1 + 40);
    v20 = v7;
    v21 = [v19 name];
    v22 = [v21 UTF8String];
    v23 = [*(a1 + 40) pid];
    v24 = [v5 description];
    v25 = 136316162;
    v26 = v22;
    v27 = 1024;
    v28 = v23;
    v29 = 2112;
    v30 = v24;
    v31 = 2048;
    v32 = [v5 reason];
    v33 = 1024;
    v34 = [v5 type];
    _os_log_debug_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%s (%d) took other assertion: %@ (%llu) (%u)", &v25, 0x2Cu);
  }

  v11 = *(a1 + 56);
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 reason]);
  LODWORD(v11) = [v11 containsObject:v12];

  if (v11)
  {
    goto LABEL_9;
  }

LABEL_10:
}

void sub_1380(__CFSocket *a1)
{
  Native = CFSocketGetNative(a1);
  v3 = recv(Native, v12, 0x20uLL, 0);
  if (v3 != -1)
  {
    if (v3 < v12[0])
    {
      v4 = log_handle;
      if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "missed SYSPROTO_EVENT event, buffer not big enough", &v10, 2u);
      }

      return;
    }

    if (v12[1] == 1)
    {
      if (v12[2] == 3)
      {
        if (v12[3] == 3)
        {
          if (v12[5] == 2)
          {
            v6 = log_handle;
            if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v10) = 0;
              _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "kernel jetsam snapshot note received", &v10, 2u);
            }

            HandleJetsamEvent();
            return;
          }

          v7 = @"Unknown event code";
        }

        else
        {
          v7 = @"New Apple System subclass";
        }
      }

      else
      {
        v7 = @"New (Apple) class";
      }
    }

    else
    {
      v7 = @"New vendor";
    }

    sub_2154(v7, v12);
    return;
  }

  v5 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
  {
    v8 = __error();
    v9 = strerror(*v8);
    v10 = 136315138;
    v11 = v9;
    _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "recv() failed: %s", &v10, 0xCu);
    v5 = log_handle;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "memory monitor disabled", &v10, 2u);
  }

  CFSocketInvalidate(a1);
}

void HandleJetsamEvent()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1948;
  v13 = sub_1958;
  v14 = 0;
  v3 = 0;
  v4 = &v3;
  v5 = 0x3032000000;
  v6 = sub_1948;
  v7 = sub_1958;
  v8 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1700;
  v2[3] = &unk_4288;
  v2[4] = &v9;
  v2[5] = &v3;
  dispatch_sync(qword_45C8, v2);
  v0 = v4[5];
  v1 = v10[5];
  WriteJetsamMemoryReport();
  CleanPidSet(qword_45D0);
  CleanPidSet(qword_45D8);
  _Block_object_dispose(&v3, 8);

  _Block_object_dispose(&v9, 8);
}

void sub_16DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1700(uint64_t a1)
{
  v2 = [qword_45D0 copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [qword_45D8 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return _objc_release_x1();
}

void CleanPidSet(void *a1)
{
  v1 = a1;
  v2 = qword_45C8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1804;
  block[3] = &unk_4260;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void sub_1804(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_18A0;
  v3[3] = &unk_4238;
  v4 = *(a1 + 32);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_18A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (kill([v3 intValue], 0) && *__error() == 3)
  {
    [*(a1 + 32) removeObject:v3];
  }
}

void CleanupPidSets()
{
  CleanPidSet(qword_45D0);
  v0 = qword_45D8;

  CleanPidSet(v0);
}

uint64_t sub_1948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void MonitorAssertions()
{
  if (qword_45E0 != -1)
  {
    dispatch_once(&qword_45E0, &stru_42C8);
  }
}

void sub_1988(id a1)
{
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v2 = dispatch_queue_create("com.apple.MemoryMonitor.RBMonitor", v1);
  v3 = qword_45C8;
  qword_45C8 = v2;

  v4 = objc_alloc_init(NSMutableSet);
  v5 = qword_45D0;
  qword_45D0 = v4;

  v6 = objc_alloc_init(NSMutableSet);
  v7 = qword_45D8;
  qword_45D8 = v6;

  v8 = os_log_create("com.apple.MemoryMonitor", "RBMonitor");
  v9 = [[NSSet alloc] initWithObjects:{&off_4598, &off_45B0, 0}];
  v10 = objc_alloc_init(NSSet);
  v11 = [[NSSet alloc] initWithObjects:{@"com.apple.frontboard.visibility", 0}];
  if (objc_opt_class())
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1B5C;
    v14[3] = &unk_4390;
    v15 = v11;
    v16 = v8;
    v17 = v9;
    v18 = v10;
    v12 = [RBSProcessMonitor monitorWithConfiguration:v14];
    v13 = qword_45E8;
    qword_45E8 = v12;
  }
}

void sub_1B5C(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSClassFromString(&cfstr_Rbsprocessever.isa));
  v5 = [RBSProcessPredicate predicateMatching:v4];

  v6 = objc_alloc_init(RBSProcessStateDescriptor);
  [v6 setValues:24];
  v7 = [a1[4] allObjects];
  [v6 setEndowmentNamespaces:v7];

  v18 = v5;
  v8 = [NSArray arrayWithObjects:&v18 count:1];
  [v3 setPredicates:v8];

  [v3 setStateDescriptor:v6];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_9B0;
  v15[3] = &unk_4368;
  v9 = a1[5];
  v10 = a1[4];
  v11 = a1[6];
  v12 = a1[7];
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v16 = v14;
  v17 = v13;
  [v3 setUpdateHandler:v15];
}

uint64_t init_memory_monitor()
{
  v4 = 0;
  memset(&v5, 0, sizeof(v5));
  v0 = os_log_create("com.apple.MemoryMonitor", "plugin");
  log_handle = v0;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_0, v0, OS_LOG_TYPE_DEBUG, "memory monitor plugin initialized", v3, 2u);
  }

  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 2);
  if (pthread_create(&v4, &v5, sub_1E6C, 0))
  {
    v1 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      *v3 = 0;
      _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "error creating memory monitor thread", v3, 2u);
    }
  }

  return pthread_attr_destroy(&v5);
}

uint64_t sub_1E6C(uint64_t a1)
{
  v22 = 0;
  v21 = 0;
  context = off_43B0;
  v2 = socket(32, 3, 1);
  if (v2 == -1)
  {
    v8 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      *buf = 136315138;
      v24 = v10;
      _os_log_error_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "could not open event socket, socket() failed: %s", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v3 = v2;
  v21 = 0x300000001;
  v22 = 3;
  if (ioctl(v2, 0x800C6502uLL, &v21))
  {
    v4 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      *buf = 136315138;
      v24 = v6;
      v7 = "could not establish event filter, ioctl() failed: %s";
LABEL_19:
      _os_log_error_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v19 = 1;
  if (ioctl(v3, 0x8004667EuLL, &v19))
  {
    v4 = log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v17 = __error();
      v18 = strerror(*v17);
      *buf = 136315138;
      v24 = v18;
      v7 = "could not set non-blocking io, ioctl() failed: %s";
      goto LABEL_19;
    }

LABEL_9:
    close(v3);
LABEL_10:
    v11 = log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      return a1;
    }

    *buf = 0;
    v16 = "memory monitor disabled";
LABEL_17:
    _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    return a1;
  }

  v13 = CFSocketCreateWithNative(0, v3, 1uLL, sub_1380, &context);
  RunLoopSource = CFSocketCreateRunLoopSource(0, v13, 0);
  Current = CFRunLoopGetCurrent();
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  if (qword_45E0 != -1)
  {
    dispatch_once(&qword_45E0, &stru_42C8);
  }

  CFRelease(RunLoopSource);
  CFRelease(v13);
  CFRunLoopRun();
  v11 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "memory monitor thread returning";
    goto LABEL_17;
  }

  return a1;
}

void sub_2154(uint64_t a1, unsigned int *a2)
{
  v4 = log_handle;
  if (os_log_type_enabled(log_handle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v17 = a1;
    _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%@ event:", buf, 0xCu);
    v4 = log_handle;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    v15 = a2[5];
    *buf = 67110400;
    *v17 = v10;
    *&v17[4] = 1024;
    *&v17[6] = v14;
    v18 = 1024;
    v19 = v11;
    v20 = 1024;
    v21 = v12;
    v22 = 1024;
    v23 = v13;
    v24 = 1024;
    v25 = v15;
    _os_log_debug_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Event size=%d, id=%d, vendor=%d, class=%d, subclass=%d, code=%d", buf, 0x26u);
  }

  v5 = *a2;
  if (*a2 >= 0x19)
  {
    v6 = 0;
    v7 = log_handle;
    v8 = 6;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = a2[v8];
        *buf = 67109376;
        *v17 = v6;
        *&v17[4] = 1024;
        *&v17[6] = v9;
        _os_log_debug_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "Event data[%2d] = %08x", buf, 0xEu);
        v7 = log_handle;
        v5 = *a2;
      }

      ++v6;
      ++v8;
    }

    while ((v8 * 4) < v5);
  }
}