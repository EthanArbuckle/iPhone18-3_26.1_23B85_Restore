void init_dispatch_vfs(uint64_t a1)
{
  qword_4168 = os_log_create("com.apple.dispatch.vfs", &unk_E57);
  *malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL) = a1;
  xpc_event_provider_create();
}

void sub_630(uint64_t a1, uint64_t a2, void *a3, char *context)
{
  if (qword_4170 != -1)
  {
    dispatch_once_f(&qword_4170, context, sub_794);
  }

  if (a1 == 2)
  {
    v9 = (context + 16);
    v10 = context + 16;
    while (1)
    {
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      if (v10[1] == a2)
      {
        for (i = *v9; i != v10; i = *i)
        {
          v9 = i;
        }

        *v9 = *i;

        free(v10);
        return;
      }
    }
  }

  else if (a1 == 1)
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004065753CD5uLL);
    v8[1] = a2;
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 0x40000000;
    applier[2] = sub_8D4;
    applier[3] = &unk_40F8;
    applier[4] = v8;
    xpc_dictionary_apply(a3, applier);
    *v8 = *(context + 2);
    *(context + 2) = v8;
  }
}

void sub_794(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_A84;
  block[3] = &unk_4120;
  block[4] = v4;
  if (qword_4178 != -1)
  {
    dispatch_once(&qword_4178, block);
  }

  v2 = *(a1 + 8);
  xpc_event_provider_get_queue();
}

uint64_t sub_8D4(uint64_t a1, char *__s1, void *a3)
{
  if (a3 != &_xpc_BOOL_false)
  {
    if (!strcmp(__s1, "LowDisk"))
    {
      if (a3 == &_xpc_BOOL_true || xpc_get_type(a3) == &_xpc_type_int64)
      {
        *(*(a1 + 32) + 32) |= 0x1204uLL;
        if (xpc_get_type(a3) == &_xpc_type_int64)
        {
          *(*(a1 + 32) + 16) = xpc_int64_get_value(a3);
        }
      }
    }

    else if (!strcmp(__s1, "VeryLowDisk"))
    {
      if (a3 == &_xpc_BOOL_true || xpc_get_type(a3) == &_xpc_type_int64)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 32) | 0x1200;
        goto LABEL_20;
      }
    }

    else if (!strcmp(__s1, "NearLowDisk"))
    {
      if (a3 == &_xpc_BOOL_true)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 32) | 0x2000;
        goto LABEL_20;
      }
    }

    else if (!strcmp(__s1, "DesiredDisk"))
    {
      if (a3 == &_xpc_BOOL_true)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 32) | 0x4000;
        goto LABEL_20;
      }
    }

    else
    {
      v6 = strcmp(__s1, "IdlePurgeDisk");
      if (a3 == &_xpc_BOOL_true && !v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 32) | 0x20000;
LABEL_20:
        *(v7 + 32) = v8;
      }
    }
  }

  return 1;
}

uint64_t sub_A84(uint64_t a1)
{
  info = 0;
  result = mach_timebase_info(&info);
  v3 = 1.0;
  if (!result)
  {
    v3 = (info.numer / info.denom);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

void sub_AD8(uint64_t a1)
{
  data = dispatch_source_get_data(qword_4180);
  v3 = qword_4168;
  if (os_log_type_enabled(qword_4168, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = data;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Got VFS event: %lu", &v12, 0xCu);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "_Flags", data);
  v5 = mach_absolute_time();
  v6 = *(*(a1 + 40) + 16);
  if (v6)
  {
    v7 = (*(*(*(a1 + 32) + 8) + 24) * v5);
    do
    {
      if ((v6[4] & data) != 0 && ((v6[4] & data) != 4 || (v8 = v6[2]) == 0 || v8 >= 1 && ((v9 = v6[3]) == 0 || v9 + 1000000000 * v8 <= v7)))
      {
        v6[3] = v7;
        v10 = *(*(a1 + 40) + 8);
        v11 = v6[1];
        xpc_event_provider_token_fire();
      }

      v6 = *v6;
    }

    while (v6);
  }

  xpc_release(v4);
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}