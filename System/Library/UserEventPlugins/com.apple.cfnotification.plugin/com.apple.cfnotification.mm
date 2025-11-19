void init_notification_matching(uint64_t a1)
{
  if (qword_41C8 != -1)
  {
    sub_C64();
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = &(&off_4148)[4 * v2];
    if (v5[2])
    {
      *malloc_type_calloc(1uLL, 0x20uLL, 0xE0040EC2F7C6DuLL) = a1;
      v6 = *v5;
      xpc_event_provider_create();
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
}

void sub_730(id a1)
{
  v1 = off_4138;
  qword_41D0 = CFSetCreate(0, &v1, 2, &kCFTypeSetCallBacks);
  if (!qword_41D0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_C78();
  }
}

void sub_7C8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1 == 2)
  {
    v14 = a4 + 3;
    v15 = a4 + 3;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (v15[2] == a2)
      {
        v16 = a4[2];
        v17 = *(v16 + 24);
        v18 = (*(v16 + 8))();
        v17(v18, v15);
        for (i = a4[3]; i != v15; i = *i)
        {
          v14 = i;
        }

        *v14 = *i;

        free(v15);
        return;
      }
    }
  }

  else
  {
    if (a1 != 1)
    {
      return;
    }

    v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A00404E934A1DuLL);
    v8 = a4[1];
    v7[2] = a2;
    *v7 = a4[3];
    v7[1] = v8;
    a4[3] = v7;
    v9 = sub_9E0(a3, "Name");
    v10 = sub_9E0(a3, "Object");
    if (!v9)
    {
      _os_assumes_log();
      if (!v10)
      {
        return;
      }

      goto LABEL_8;
    }

    if (CFSetContainsValue(qword_41D0, v9))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Subscribed for disnoted notification: %@", &v20, 0xCu);
      }
    }

    v11 = *(a4[2] + 8);
    v12 = *(a4[2] + 16);
    v13 = v11();
    v12(v13, v7, sub_A60, v9, v10, 4);
    CFRelease(v9);
    if (v10)
    {
LABEL_8:
      CFRelease(v10);
    }
  }
}

CFStringRef sub_9E0(void *a1, const char *a2)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != &_xpc_type_string)
  {
    return 0;
  }

  string_ptr = xpc_string_get_string_ptr(v3);

  return CFStringCreateWithCString(kCFAllocatorDefault, string_ptr, 0x8000100u);
}

void sub_A60(uint64_t a1, uint64_t a2, const __CFString *a3, uint64_t a4, uint64_t a5)
{
  v9 = xpc_dictionary_create(0, 0, 0);
  Length = CFStringGetLength(a3);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x32828DDCuLL);
  if (v12)
  {
    v13 = v12;
    if (CFStringGetCString(a3, v12, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      xpc_dictionary_set_string(v9, "Name", v13);
    }

    free(v13);
  }

  sub_BF0(v9, "Object", a4);
  sub_BF0(v9, "UserInfo", a5);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  xpc_event_provider_token_fire();
}

void sub_BF0(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(a1, a2, v5);

      xpc_release(v6);
    }
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