void start()
{
  v0 = os_log_create("com.apple.BiometricKit", "Daemon");
  v1 = qword_100008090;
  qword_100008090 = v0;

  v2 = qword_100008090;
  if (!qword_100008090)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000013BC();
    }

    v2 = qword_100008090;
  }

  objc_storeStrong(&qword_100008098, v2);
  if (qword_100008090)
  {
    v3 = qword_100008090;
  }

  else
  {
    v3 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "--- /usr/libexec/biometrickitd ---\n", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100004158);
  xpc_set_event_stream_handler("com.apple.iokit.matching", &_dispatch_main_q, &stru_100004178);

  v4 = +[NSMutableArray array];
  v5 = +[NSProcessInfo processInfo];
  v6 = [v5 arguments];

  if ([v6 count])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v7];
      v10 = [v9 isEqualToString:@"-module"];

      if (v10)
      {
        if ([v6 count] - 1 <= v7)
        {
          if (qword_100008090)
          {
            v13 = qword_100008090;
          }

          else
          {
            v13 = &_os_log_default;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "invalid program arguments, using default modules\n", buf, 2u);
          }

          [v4 removeAllObjects];
          break;
        }

        v11 = [v6 objectAtIndexedSubscript:++v8];
        v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 integerValue]);

        if ([&off_100004270 indexOfObject:v12] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (qword_100008090)
          {
            v14 = qword_100008090;
          }

          else
          {
            v14 = &_os_log_default;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "invalid module index, using default modules\n", buf, 2u);
          }

          [v4 removeAllObjects];

          break;
        }

        [v4 addObject:v12];
      }

      v7 = ++v8;
    }

    while ([v6 count] > v8);
  }

  if ([v4 count])
  {
    v15 = [v4 copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 count];
  if (!v16)
  {

    v15 = &off_100004258;
  }

  if (![v15 count])
  {
    sub_100001404();
  }

  if (qword_100008090)
  {
    v17 = qword_100008090;
  }

  else
  {
    v17 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = [v15 count];
    *buf = 134217984;
    v56 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "number of modules: %lu\n", buf, 0xCu);
  }

  v20 = +[NSMutableArray array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v52;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v52 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"/usr/lib/libBKDM%lu.dylib", [*(*(&v51 + 1) + 8 * i) unsignedLongValue]);
        [v20 addObject:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v23);
  }

  v50 = malloc_type_calloc([v20 count], 0x18uLL, 0x80040D6874129uLL);
  context = objc_autoreleasePoolPush();
  if ([v20 count])
  {
    v27 = 0;
    v28 = v50;
    do
    {
      v29 = [v20 objectAtIndexedSubscript:v27];
      *v28 = dlopen([v29 UTF8String], 1);

      if (*v28)
      {
        v30 = dlsym(*v28, "BKDMInitialize");
        v28[1] = v30;
        if (!v30)
        {
          v36 = qword_100008090 ? qword_100008090 : &_os_log_default;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v56 = "modules[i].BKDMInitialize";
            v57 = 2048;
            v58 = 0;
            v59 = 2080;
            v60 = &unk_100001BC6;
            v61 = 2080;
            v62 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/biometrickitd/biometrickitd.m";
            v63 = 1024;
            v64 = 97;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }
        }

        v31 = dlsym(*v28, "BKDMTerminate");
        v28[2] = v31;
        if (!v31)
        {
          v37 = qword_100008090 ? qword_100008090 : &_os_log_default;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v56 = "modules[i].BKDMTerminate";
            v57 = 2048;
            v58 = 0;
            v59 = 2080;
            v60 = &unk_100001BC6;
            v61 = 2080;
            v62 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/biometrickitd/biometrickitd.m";
            v63 = 1024;
            v64 = 99;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }
        }
      }

      else if (v16)
      {
        v32 = qword_100008090 ? qword_100008090 : &_os_log_default;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = v32;
          v34 = [v20 objectAtIndexedSubscript:v27];
          v35 = dlerror();
          *buf = 138412546;
          v56 = v34;
          v57 = 2080;
          v58 = v35;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Error loading BKDM plugin from %@: %s\n", buf, 0x16u);
        }
      }

      ++v27;
      v28 += 3;
    }

    while ([v20 count] > v27);
  }

  if (![v20 count])
  {
    goto LABEL_97;
  }

  v38 = 0;
  v39 = 0;
  v40 = (v50 + 1);
  while (!*v40)
  {
LABEL_95:
    ++v38;
    v40 += 3;
    if ([v20 count] <= v38)
    {
      if (v39)
      {
        objc_autoreleasePoolPop(context);
        goto LABEL_101;
      }

LABEL_97:
      sub_1000014D4(context);
      goto LABEL_102;
    }
  }

  v41 = (*v40)();
  v42 = v41;
  if (v41)
  {
    if (v41 != 19)
    {
      if (qword_100008090)
      {
        v44 = qword_100008090;
      }

      else
      {
        v44 = &_os_log_default;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = v44;
        v46 = [v20 objectAtIndexedSubscript:v38];
        *buf = 138412546;
        v56 = v46;
        v57 = 1024;
        LODWORD(v58) = v42;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Error initializing BKDM plugin from %@: err=0x%x\n", buf, 0x12u);
      }

      if (qword_100008090)
      {
        v47 = qword_100008090;
      }

      else
      {
        v47 = &_os_log_default;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v56 = "0";
        v57 = 2048;
        v58 = 0;
        v59 = 2080;
        v60 = &unk_100001BC6;
        v61 = 2080;
        v62 = "/Library/Caches/com.apple.xbs/Sources/BiometricSupport/biometrickitd/biometrickitd.m";
        v63 = 1024;
        v64 = 112;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v43 = 20;
LABEL_90:
      if (v42 != 19 && v42 != 0)
      {
        objc_autoreleasePoolPop(context);
        if (v43)
        {
LABEL_102:
          sub_100001678(v20, v50);
        }

LABEL_101:
        sub_1000015DC();
        goto LABEL_102;
      }

      goto LABEL_95;
    }

    dlclose(*(v40 - 1));
  }

  v43 = 0;
  ++v39;
  goto LABEL_90;
}

BOOL sub_10000139C@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void sub_100001404()
{
  if (qword_100008090)
  {
    v0 = qword_100008090;
  }

  else
  {
    v0 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100001368();
    v2 = &unk_100001BC6;
    sub_100001388();
    v3 = 81;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v1, 0x30u);
  }
}

void sub_1000014D4(void *a1)
{
  if (sub_10000139C(qword_100008090))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "No BKDM plugin initialized\n", v3, 2u);
  }

  if (sub_10000139C(qword_100008090))
  {
    sub_100001368();
    v4 = &unk_100001BC6;
    sub_100001388();
    v5 = 122;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, 0x30u);
  }

  objc_autoreleasePoolPop(a1);
}

void sub_1000015DC()
{
  notify_post("com.apple.BiometricKit.serverStarted");
  if (qword_100008090)
  {
    v0 = qword_100008090;
  }

  else
  {
    v0 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "currentRunLoop run\n", v2, 2u);
  }

  v1 = +[NSRunLoop currentRunLoop];
  [v1 run];
}

void sub_100001678(void *a1, void (**a2)(void))
{
  if ([a1 count])
  {
    v4 = 0;
    v5 = a2 + 2;
    do
    {
      if (*v5)
      {
        (*v5)();
      }

      v6 = *(v5 - 2);
      if (v6)
      {
        dlclose(v6);
      }

      ++v4;
      v5 += 3;
    }

    while ([a1 count] > v4);
  }

  free(a2);
  v7 = _os_crash();
  __break(1u);
  __stack_chk_fail(v7);
}