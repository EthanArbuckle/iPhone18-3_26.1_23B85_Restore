void sub_E10(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v1 = *(a1 + 36);
  if ((v1 - 1) >= 2)
  {
    if (v1 == 4)
    {
      v4 = *(a1 + 16);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1044;
      v7[3] = &unk_8768;
      v7[4] = &v9;
      xpc_dictionary_apply(v4, v7);
    }

    else if (v1 == 3)
    {
      v3 = *(a1 + 16);
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = sub_10E4;
      applier[3] = &unk_8740;
      applier[4] = &v9;
      xpc_array_apply(v3, applier);
    }

    v5 = *(a1 + 8);
    v6 = *(v10 + 24);
    xpc_event_provider_token_set_state();
  }

  _Block_object_dispose(&v9, 8);
}

void sub_F70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 36);
  if (v2 > 2)
  {
    if (v2 == 3 || v2 == 4)
    {
      v4 = *(a1 + 32);

      sub_E10(v4);
    }
  }

  else
  {
    if (v2 == 1)
    {
      v5 = *(v1 + 8);

      xpc_event_provider_token_fire();
    }

    if (v2 == 2)
    {
      v3 = *(v1 + 8);
      xpc_event_provider_token_set_state();
    }
  }
}

BOOL sub_1044(uint64_t a1, const char *a2, void *a3)
{
  memset(&v8, 0, sizeof(v8));
  v5 = a3;
  LODWORD(a2) = stat(a2, &v8);
  value = xpc_BOOL_get_value(v5);

  *(*(*(a1 + 32) + 8) + 24) = (a2 != 0) ^ value;
  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

BOOL sub_10E4(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr && (v5 = opendir(string_ptr)) != 0)
  {
    v6 = v5;
    memset(&v10, 0, 512);
    v9 = 0;
    while (1)
    {
      v7 = 0;
      if (readdir_r(v6, &v10, &v9) || !v9)
      {
        break;
      }

      if (v9->d_name[0] != 46 || v9->d_name[1] && (v9->d_name[1] != 46 || v9->d_name[2]))
      {
        v7 = 1;
        break;
      }
    }

    closedir(v6);
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v7;
  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

void init_fsevents_matching(uint64_t a1)
{
  v2 = os_log_create("com.apple.fsevents.matching", "All");
  v3 = qword_9018;
  qword_9018 = v2;

  v4 = [FSEventStreamMultiplexer alloc];
  v5 = [(FSEventStreamMultiplexer *)v4 initWithLogHandle:qword_9018];
  v6 = qword_8FF8;
  qword_8FF8 = v5;

  [qword_8FF8 setEventStreamCreateFlags:0];
  v7 = [FSEventStreamMultiplexer alloc];
  v8 = [(FSEventStreamMultiplexer *)v7 initWithLogHandle:qword_9018];
  v9 = qword_9000;
  qword_9000 = v8;

  [qword_9000 setEventStreamCreateFlags:16];
  v10 = [FSEventStreamMultiplexer alloc];
  v11 = [(FSEventStreamMultiplexer *)v10 initWithLogHandle:qword_9018];
  v12 = qword_9008;
  qword_9008 = v11;

  [qword_9008 setEventStreamCreateFlags:4];
  v13 = [FSEventStreamMultiplexer alloc];
  v14 = [(FSEventStreamMultiplexer *)v13 initWithLogHandle:qword_9018];
  v15 = qword_9010;
  qword_9010 = v14;

  [qword_9010 setEventStreamCreateFlags:20];
  qword_9020 = a1;
  xpc_event_provider_create();
}

void sub_13A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1 == 1)
  {
    if (xpc_get_type(v5) != &_xpc_type_dictionary)
    {
      _os_assumes_log();
    }

    v10 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A004000311DD6uLL);
    v10[1] = a2;
    v11 = qword_9018;
    if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a2;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Client token: %llu", &buf, 0xCu);
    }

    v12 = &dword_83B8;
    v13 = 4;
    while (1)
    {
      v14 = xpc_dictionary_get_value(v6, *(v12 - 1));
      v15 = v14;
      if (v14)
      {
        break;
      }

      v12 += 4;
      if (!--v13)
      {
        goto LABEL_37;
      }
    }

    *(v10 + 9) = *v12;
    v16 = v14;
    *(v10 + 40) = 0;
    type = xpc_get_type(v16);
    if (type == &_xpc_type_string)
    {
      v23 = sub_1CF4(v16);
      objects[0] = v23;
      if (v23)
      {
        string_ptr = xpc_string_get_string_ptr(v23);
        if (sub_1D80(string_ptr))
        {
          v25 = qword_9018;
          if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = string_ptr;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "use_watchroot(%s)", &buf, 0xCu);
          }

          *(v10 + 40) = 1;
        }

        v19 = xpc_array_create(objects, 1uLL);

        goto LABEL_36;
      }
    }

    else
    {
      if (type == &_xpc_type_array)
      {
        v26 = xpc_array_create(0, 0);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v51 = sub_1E10;
        v52 = &unk_83F8;
        v54 = v10 + 5;
        v19 = v26;
        v53 = v19;
        xpc_array_apply(v16, &buf);
        if (!xpc_array_get_count(v19))
        {

          v19 = 0;
        }

        goto LABEL_35;
      }

      if (type == &_xpc_type_dictionary)
      {
        v18 = xpc_dictionary_create(0, 0, 0);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v51 = sub_1F0C;
        v52 = &unk_8420;
        v54 = v10 + 5;
        v19 = v18;
        v53 = v19;
        xpc_dictionary_apply(v16, &buf);
        if (!xpc_dictionary_get_count(v19))
        {

          v19 = 0;
        }

LABEL_35:

        goto LABEL_36;
      }
    }

    v19 = 0;
LABEL_36:

    v27 = v10[2];
    v10[2] = v19;

LABEL_37:
    if (!v10[2])
    {
      free(v10);
LABEL_61:

      goto LABEL_62;
    }

    sub_E10(v10);
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v28 = xpc_get_type(v10[2]);
    if (v28 == &_xpc_type_string)
    {
      v31 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
      v32 = xpc_string_get_string_ptr(v10[2]);
      *v31 = CFStringCreateWithCString(kCFAllocatorDefault, v32, 0x8000100u);
      count = 1;
    }

    else if (v28 == &_xpc_type_array)
    {
      count = xpc_array_get_count(v10[2]);
      v31 = malloc_type_malloc(8 * count, 0x6004044C4A2DFuLL);
      v34 = v10[2];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v51 = sub_231C;
      v52 = &unk_8788;
      v53 = v31;
      xpc_array_apply(v34, &buf);
    }

    else
    {
      if (v28 != &_xpc_type_dictionary)
      {
        v29 = 0;
        v30 = 0;
LABEL_60:

        _Block_object_dispose(&v46, 8);
        *v10 = qword_9030;
        qword_9030 = v10;
        goto LABEL_61;
      }

      count = xpc_dictionary_get_count(v10[2]);
      v31 = malloc_type_malloc(8 * count, 0x6004044C4A2DFuLL);
      v47[3] = 0;
      v35 = v10[2];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v51 = sub_237C;
      v52 = &unk_87B0;
      v53 = &v46;
      v54 = v31;
      xpc_dictionary_apply(v35, &buf);
    }

    v29 = [[NSString alloc] initWithFormat:@"token=%llu", v10[1]];
    v36 = CFArrayCreate(kCFAllocatorDefault, v31, count, &kCFTypeArrayCallBacks);
    v47[3] = 0;
    if (count)
    {
      for (i = 0; i < count; v47[3] = i)
      {
        CFRelease(v31[i]);
        i = v47[3] + 1;
      }
    }

    free(v31);
    v38 = *(v10 + 9);
    v39 = v38 == 3;
    if (v38 == 3)
    {
      v40 = &qword_9008;
    }

    else
    {
      v40 = &qword_9010;
    }

    v41 = &qword_8FF8;
    if (!v39)
    {
      v41 = &qword_9000;
    }

    if (*(v10 + 40))
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    v43 = *v42;
    v30 = *v42;
    objects[0] = _NSConcreteStackBlock;
    objects[1] = 3221225472;
    objects[2] = sub_F70;
    objects[3] = &unk_87D0;
    objects[4] = v10;
    v44 = [v30 registerClient:v29 ofPaths:v36 withCallback:objects];
    *(v10 + 8) = v44;
    if ((v44 & 0x80000000) == 0)
    {
      objc_storeStrong(v10 + 3, v43);
    }

    CFRelease(v36);
    goto LABEL_60;
  }

  if (a1 == 2)
  {
    v7 = &qword_9030;
    v8 = &qword_9030;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (v8[1] == a2)
      {
        for (j = qword_9030; j != v8; j = *j)
        {
          v7 = j;
        }

        *v7 = *j;
        v20 = v8[3];
        if (v20)
        {
          [v20 unregisterClient:*(v8 + 8)];
          v21 = v8[3];
          v8[3] = 0;

          *(v8 + 8) = -1;
        }

        v22 = v8[2];
        v8[2] = 0;

        free(v8);
        break;
      }
    }
  }

LABEL_62:
}

void sub_1A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

os_state_data_s *__cdecl sub_1AB0(id a1, os_state_hints_s *a2)
{
  v3 = objc_alloc_init(NSMutableArray);
  if (a2->var2 != 3)
  {
    v8 = 0;
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v4 = [qword_8FF8 summary];
  [v3 addObject:v4];

  v5 = [qword_9000 summary];
  [v3 addObject:v5];

  v6 = [qword_9008 summary];
  [v3 addObject:v6];

  v7 = [qword_9010 summary];
  [v3 addObject:v7];

  v8 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
  v9 = malloc_type_calloc(1uLL, [v8 length] + 200, 0x1000040BEF03554uLL);
  __strlcpy_chk();
  v9->var0 = 1;
  v9->var1.var1 = [v8 length];
  [v8 getBytes:v9->var4 length:{objc_msgSend(v8, "length")}];
  v10 = qword_9018;
  if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v14 = 134217984;
    v15 = [v8 length];
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "fsevents.matching state size: %lu bytes", &v14, 0xCu);
  }

  if ([v8 length] > 0x8000)
  {
    v12 = qword_9018;
    if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_ERROR))
    {
      sub_3780(v12, v8);
    }

    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

xpc_object_t sub_1CF4(void *a1)
{
  v1 = a1;
  string_ptr = xpc_string_get_string_ptr(v1);
  if (!string_ptr)
  {
    goto LABEL_5;
  }

  v7 = 0;
  v3 = sub_20A4(string_ptr, &v7);
  if (v7 != 1)
  {
    v5 = v1;
    goto LABEL_7;
  }

  v4 = v3;
  if (v3)
  {
    v5 = xpc_string_create(v3);
    free(v4);
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

BOOL sub_1D80(const char *a1)
{
  v2 = 0;
  for (i = 0; i != 83; ++i)
  {
    v4 = strlen(off_84A0[i]);
    if (!strncmp(a1, off_84A0[i], v4) && !strchr(&a1[v4], 47))
    {
      break;
    }

    v2 = i > 0x51;
  }

  return v2;
}

uint64_t sub_1E10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CF4(a3);
  v5 = v4;
  if (v4)
  {
    if ((**(a1 + 40) & 1) == 0)
    {
      string_ptr = xpc_string_get_string_ptr(v4);
      if (sub_1D80(string_ptr))
      {
        v7 = qword_9018;
        if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          v10 = string_ptr;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "use_watchroot[%s]", &v9, 0xCu);
        }

        **(a1 + 40) = 1;
      }
    }

    xpc_array_set_value(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, v5);
  }

  return 1;
}

uint64_t sub_1F0C(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (xpc_get_type(v5) == &_xpc_type_BOOL)
  {
    if (a2)
    {
      LOBYTE(v11) = 0;
      v7 = sub_20A4(a2, &v11);
      if (v11 == 1)
      {
        v8 = v7;
        a2 = v7;
        if (!v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v8 = 0;
      }

      if ((**(a1 + 40) & 1) == 0 && sub_1D80(a2))
      {
        v9 = qword_9018;
        if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = a2;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "use_watchroot{%s}", &v11, 0xCu);
        }

        **(a1 + 40) = 1;
      }

      xpc_dictionary_set_value(*(a1 + 32), a2, v5);
      free(v8);
    }
  }

  else
  {
    v6 = qword_9018;
    if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = a2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Ignoring path: %s", &v11, 0xCu);
    }
  }

LABEL_15:

  return 1;
}

char *sub_20A4(const char *a1, _BYTE *a2)
{
  v9 = 0;
  *a2 = 0;
  if (qword_9038 != -1)
  {
    sub_381C();
  }

  v4 = *a1;
  if (v4 != 126)
  {
    if (v4 != 47)
    {
      *a2 = 1;
      goto LABEL_17;
    }

    if (!strncmp(a1 + 1, "var/", 4uLL))
    {
      *a2 = 1;
      v5 = qword_9040;
    }

    else
    {
      if (strncmp(a1 + 1, "etc/", 4uLL))
      {
        goto LABEL_17;
      }

      *a2 = 1;
      v5 = qword_9048;
    }

    v6 = a1 + 5;
    goto LABEL_16;
  }

  *a2 = 1;
  if (qword_9050 != -1)
  {
    sub_3830();
  }

  v5 = qword_9058;
  if (qword_9058 && a1[1] == 47)
  {
    v6 = a1 + 2;
LABEL_16:
    asprintf(&v9, "%s/%s", v5, v6);
  }

LABEL_17:
  result = v9;
  if (!v9)
  {
    if (*a2 == 1)
    {
      v8 = qword_9018;
      if (os_log_type_enabled(qword_9018, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = a1;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Ignoring path: %s", buf, 0xCu);
      }

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_231C(uint64_t a1, uint64_t a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  *(*(a1 + 32) + 8 * a2) = CFStringCreateWithCString(kCFAllocatorDefault, string_ptr, 0x8000100u);
  return 1;
}

uint64_t sub_237C(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24);
  *(v5 + 24) = v6 + 1;
  *(v4 + 8 * v6) = v3;
  return 1;
}

void sub_2714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272C(uint64_t a1)
{
  v2 = -[FSEventStreamMultiplexerClient initWithID:name:callback:]([FSEventStreamMultiplexerClient alloc], "initWithID:name:callback:", [*(a1 + 32) nextAvailableID], *(a1 + 40), *(a1 + 56));
  if (v2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = *(a1 + 48);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v4)
    {
      v5 = v4;
      v22 = 0;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [*(a1 + 32) pathToClientsMap];
          v11 = [v10 objectForKeyedSubscript:v8];

          if (!v11)
          {
            v12 = objc_alloc_init(NSMutableSet);
            v13 = [*(a1 + 32) pathToClientsMap];
            [v13 setObject:v12 forKeyedSubscript:v8];

            v22 = 1;
          }

          v14 = [*(a1 + 32) pathToClientsMap];
          v15 = [v14 objectForKeyedSubscript:v8];
          [v15 addObject:v2];

          objc_autoreleasePoolPop(v9);
        }

        v5 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v5);
    }

    else
    {
      v22 = 0;
    }

    v17 = [*(a1 + 32) clients];
    v18 = [(FSEventStreamMultiplexerClient *)v2 clientID];
    [v17 setObject:v2 forKeyedSubscript:v18];

    v19 = [(FSEventStreamMultiplexerClient *)v2 clientID];
    *(*(*(a1 + 64) + 8) + 24) = [v19 intValue];

    [*(a1 + 32) setNextAvailableID:{objc_msgSend(*(a1 + 32), "nextAvailableID") + 1}];
    if (v22)
    {
      [*(a1 + 32) _refreshStream];
    }

    v16 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = [(FSEventStreamMultiplexerClient *)v2 name];
      v21 = *(a1 + 48);
      *buf = 138543618;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "Client '%{public}@' registered for paths %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v16 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_3844();
    }
  }
}

void sub_2B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2B18(uint64_t a1)
{
  v2 = [*(a1 + 32) pathToClientsMap];
  v3 = [v2 mutableCopy];

  v4 = [*(a1 + 32) clients];
  v5 = [NSNumber numberWithInt:*(a1 + 48)];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = a1;
    v7 = [*(a1 + 32) pathToClientsMap];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v3 objectForKeyedSubscript:v13];
          [v14 removeObject:v6];

          v15 = [v3 objectForKeyedSubscript:v13];
          v16 = [v15 count];

          if (!v16)
          {
            [v3 removeObjectForKey:v13];
            v10 = 1;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v17 = [*(v21 + 32) logHandle];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v6 name];
      *buf = 138543362;
      v27 = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Client '%{public}@' unregistered", buf, 0xCu);
    }

    objc_storeStrong((*(v21 + 32) + 40), v3);
    v19 = [*(v21 + 32) clients];
    v20 = [NSNumber numberWithInt:*(v21 + 48)];
    [v19 removeObjectForKey:v20];

    if (v10)
    {
      [*(v21 + 32) _refreshStream];
    }

    *(*(*(v21 + 40) + 8) + 24) = 1;
  }
}

void sub_3718(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_3740(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void sub_3780(void *a1, void *a2)
{
  v3 = a1;
  v4 = 134217984;
  v5 = [a2 length];
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "fsevents.matching state is too large to report (%lu bytes)", &v4, 0xCu);
}

void sub_3914(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Received invalid path from FSEvents.", buf, 2u);
}

void xpc_event_module_get_queue()
{
    ;
  }
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}

void xpc_event_provider_token_set_state()
{
    ;
  }
}