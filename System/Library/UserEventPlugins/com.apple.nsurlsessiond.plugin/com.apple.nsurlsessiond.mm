void init_nsurlsessiond_events()
{
  qword_41D8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_41E0 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  xpc_event_provider_create();
}

void sub_66C(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  valuePtr = a2;
  if (qword_41F0 != -1)
  {
    dispatch_once(&qword_41F0, &stru_4138);
  }

  if (a1 == 2)
  {
    syslog(5, "nsurlsessiond_events plugin: removing token %llu", a2);
    v10 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (!v10)
    {
      goto LABEL_17;
    }

    v8 = v10;
    Value = CFDictionaryGetValue(qword_41E0, v10);
    if (Value)
    {
      CFDictionaryRemoveValue(qword_41D8, Value);
    }

    CFDictionaryRemoveValue(qword_41E0, v8);
LABEL_16:
    CFRelease(v8);
    goto LABEL_17;
  }

  if (a1 == 1)
  {
    if (object)
    {
      if (xpc_get_type(object) == &_xpc_type_dictionary)
      {
        string = xpc_dictionary_get_string(object, kNSURLSessionLaunchOnDemandClientIdentifierKey);
        if (string)
        {
          v7 = string;
          syslog(5, "nsurlsessiond_events plugin: adding token %llu for client %s", a2, string);
          v8 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
          v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
          CFDictionarySetValue(qword_41D8, v8, v9);
          CFDictionarySetValue(qword_41E0, v9, v8);
          if (v9)
          {
            CFRelease(v9);
          }

          if (v8)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

LABEL_17:
  sub_810();
}

void sub_810()
{
  if (qword_41F8)
  {
    v0 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v0, "com.apple.nsurlsessiond-events.message-type", 2);
    v1 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v0, "com.apple.nsurlsessiond-events.registered-clients", v1);
    xpc_connection_send_message(qword_41F8, v0);
    xpc_release(v1);

    xpc_release(v0);
  }
}

void sub_914()
{
  if (qword_41F8)
  {
    xpc_connection_cancel(qword_41F8);
    xpc_release(qword_41F8);
    qword_41F8 = 0;
  }

  xpc_event_provider_get_queue();
}

void sub_988(id a1, void *a2)
{
  if (xpc_get_type(a2) == &_xpc_type_dictionary && xpc_dictionary_get_int64(a2, "com.apple.nsurlsessiond-events.message-type") == 1)
  {
    string = xpc_dictionary_get_string(a2, kNSURLSessionLaunchOnDemandClientIdentifierKey);
    v4 = xpc_dictionary_get_string(a2, kNSURLSessionLaunchOnDemandSessionIdentifierKey);
    if (string)
    {
      v5 = v4;
      v6 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
      Value = CFDictionaryGetValue(qword_41D8, v6);
      if (Value)
      {
        valuePtr = 0;
        CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
        v8 = xpc_dictionary_create(0, 0, 0);
        if (v5)
        {
          xpc_dictionary_set_string(v8, kNSURLSessionLaunchOnDemandSessionIdentifierKey, v5);
        }

        syslog(5, "calling xpc_event_provider_token_fire for client %s session %s", string, v5);
        xpc_event_provider_token_fire();
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }
}

void sub_ACC(id a1, int a2)
{
  if (!qword_41F8)
  {
    syslog(3, "nsurlsessiond launched and we didn't have an xpc connection-- creating a new one");
    sub_914();
  }

  sub_810();
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