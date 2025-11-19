void sub_830(id a1, OS_xpc_object *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_error)
  {
    if (a2 == &_xpc_error_connection_invalid)
    {
      if (qword_4410 != -1)
      {
        sub_1890();
      }

      v12 = qword_4408;
      if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "#Warning event was XPC_ERROR_CONNECTION_INVALID", buf, 2u);
      }

      if (qword_4420)
      {
        xpc_connection_cancel(qword_4420);
        xpc_release(qword_4420);
        qword_4420 = 0;
      }
    }

    else if (a2 == &_xpc_error_connection_interrupted)
    {
      if (qword_4410 != -1)
      {
        sub_1890();
      }

      v11 = qword_4408;
      if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "event was XPC_ERROR_CONNECTION_INTERRUPTED", buf, 2u);
      }

      sub_1590();
    }

    return;
  }

  if (type != &_xpc_type_dictionary)
  {
    return;
  }

  string = xpc_dictionary_get_string(a2, "kCLConnectionMessageNameKey");
  if (!string)
  {
    if (qword_4410 != -1)
    {
      sub_1890();
    }

    v13 = qword_4408;
    if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Received a XPC_TYPE_DICTIONARY with out a 'kCLConnectionMessageNameKey' key", buf, 2u);
    }

    return;
  }

  v5 = string;
  if (qword_4410 != -1)
  {
    sub_1890();
  }

  v6 = qword_4408;
  if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v25 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "xpc_object_t event was XPC_TYPE_DICTIONARY with kCLConnectionMessageNameKey: %{public}s", buf, 0xCu);
  }

  if (!strcmp(v5, "kCLConnectionMessageWakeClient"))
  {
    v14 = xpc_dictionary_get_value(a2, "kCLConnectionMessageInfoKey");
    if (!v14 || (v15 = v14, xpc_get_type(v14) != &_xpc_type_data))
    {
      if (qword_4410 != -1)
      {
        sub_18A4();
      }

      if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_ERROR))
      {
        sub_1B14();
      }

      return;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(v15);
    length = xpc_data_get_length(v15);
    v18 = sub_DDC(bytes_ptr, length);
    v8 = v18;
    value = 0;
    if (v18 && CFDictionaryGetValueIfPresent(v18, @"kCLConnectionMessageClientNameKey", &value) == 1)
    {
      if (value && (v19 = CFGetTypeID(value), v19 == CFStringGetTypeID()))
      {
        cf = 0;
        if (CFDictionaryGetValueIfPresent(qword_4428, value, &cf) == 1)
        {
          v20 = CFGetTypeID(cf);
          if (v20 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            CFNumberGetValue(cf, kCFNumberLongType, &valuePtr);
            xpc_event_provider_token_fire();
          }

          if (qword_4410 != -1)
          {
            sub_18A4();
          }

          if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_ERROR))
          {
            sub_19B8();
          }
        }

        else
        {
          if (qword_4410 != -1)
          {
            sub_18A4();
          }

          if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_ERROR))
          {
            sub_FAC();
          }
        }
      }

      else
      {
        if (qword_4410 != -1)
        {
          sub_18A4();
        }

        if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_ERROR))
        {
          sub_1A60();
        }
      }
    }

    else
    {
      if (qword_4410 != -1)
      {
        sub_18A4();
      }

      if (!os_log_type_enabled(qword_4408, OS_LOG_TYPE_FAULT))
      {
        if (!v8)
        {
          return;
        }

        goto LABEL_58;
      }

      sub_1A94();
      if (!v8)
      {
        return;
      }
    }

LABEL_58:
    CFRelease(v8);
    return;
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
  if (v7)
  {
    v8 = v7;
    if (CFArrayGetCount(qword_4438) >= 1)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_4438, v9);
        if (CFStringCompare(ValueAtIndex, v8, 0))
        {
          goto LABEL_58;
        }
      }

      while (++v9 < CFArrayGetCount(qword_4438));
    }

    CFRelease(v8);
  }

  if (qword_4410 != -1)
  {
    sub_18A4();
  }

  if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_FAULT))
  {
    sub_1944();
  }
}

id sub_DDC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [[NSData alloc] initWithBytes:a1 length:a2];
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  if (!v2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_4410 != -1)
    {
      sub_1890();
    }

    if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_FAULT))
    {
      sub_1B48();
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

void sub_F2C(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    if (qword_4410 != -1)
    {
      sub_18A4();
    }

    if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_FAULT))
    {
      sub_1B84();
    }

    objc_end_catch();
    JUMPOUT(0xEC8);
  }

  JUMPOUT(0xED0);
}

void sub_F90(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1590()
{
  if (qword_4420)
  {
    v0 = xpc_dictionary_create(0, 0, 0);
    v1 = xpc_string_create("LaunchdManagedClients/kCLConnectionMessageRegister");
    xpc_dictionary_set_value(v0, "kCLConnectionMessageNameKey", v1);
    v2 = [+[NSUUID UUID](NSUUID UUIDString];
    v8 = @"UUID";
    v9 = v2;
    v3 = [NSKeyedArchiver archivedDataWithRootObject:[NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1] requiringSecureCoding:1 error:0];
    if (qword_4410 != -1)
    {
      sub_18A4();
    }

    v4 = qword_4408;
    if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_INFO))
    {
      v6 = 136446210;
      v7 = [(NSString *)v2 UTF8String];
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Sending registration message to locationd with UUID %{public}s", &v6, 0xCu);
    }

    v5 = xpc_data_create([(NSData *)v3 bytes], [(NSData *)v3 length]);
    xpc_dictionary_set_value(v0, "kCLConnectionMessageInfoKey", v5);
    xpc_connection_send_message(qword_4420, v0);
    if (v5)
    {
      xpc_release(v5);
    }

    if (v1)
    {
      xpc_release(v1);
    }

    if (v0)
    {
      xpc_release(v0);
    }
  }
}

void sub_175C(id a1, int a2)
{
  if (qword_4410 != -1)
  {
    sub_1890();
  }

  v2 = qword_4408;
  if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "locationd started", buf, 2u);
  }

  if (!qword_4420)
  {
    if (qword_4410 != -1)
    {
      sub_18A4();
    }

    v3 = qword_4408;
    if (os_log_type_enabled(qword_4408, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "establish connection", v4, 2u);
    }

    sub_1538();
  }
}

void sub_18CC()
{
  sub_FE0();
  sub_1884();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1908()
{
  sub_FE0();
  sub_1884();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B48()
{
  sub_FE0();
  sub_1884();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B84()
{
  sub_FE0();
  sub_1884();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
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