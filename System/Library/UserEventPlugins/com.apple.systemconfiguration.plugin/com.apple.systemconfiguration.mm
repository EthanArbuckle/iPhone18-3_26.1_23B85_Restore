void sub_640(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == 1)
  {
    memset(&v19, 0, sizeof(v19));
    v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E0040A9AA122CuLL);
    *(v8 + 1) = a2;
    *(v8 + 10) = 2;
    string = xpc_dictionary_get_string(a3, "KeyPath");
    if (string)
    {
      v10 = CFStringCreateWithCString(0, string, 0x8000100u);
      if (v10)
      {
        v11 = v10;
        *(v8 + 3) = CFStringCreateArrayBySeparatingStrings(0, v10, @"/");
        CFRelease(v11);
      }

      else
      {
        _os_assumes_log();
      }
    }

    if (xpc_dictionary_get_value(a3, "Value"))
    {
      *(v8 + 4) = _CFXPCCreateCFObjectFromXPCObject();
    }

    v12 = xpc_dictionary_get_string(a3, "Identifier");
    if (v12)
    {
      v13 = CFStringCreateWithCString(0, v12, 0x8000100u);
    }

    else
    {
      v13 = 0;
    }

    v16 = xpc_dictionary_get_string(a3, "NotificationType");
    if (v16 && !strcmp(v16, "Commit"))
    {
      *(v8 + 10) = 1;
    }

    v17 = SCPreferencesCreate(0, @"SCUserEvents", v13);
    *(v8 + 2) = v17;
    if (!v17)
    {
      _os_assumes_log();
      v17 = *(v8 + 2);
    }

    v19.version = 0;
    memset(&v19.retain, 0, 24);
    v19.info = v8;
    if (!SCPreferencesSetCallback(v17, sub_924, &v19))
    {
      _os_assumes_log();
    }

    v18 = *(v8 + 2);
    xpc_event_provider_get_queue();
  }

  if (a1 == 2)
  {
    v4 = &qword_4130;
    v5 = &qword_4130;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5[1] == a2)
      {
        for (i = qword_4130; i != v5; i = *i)
        {
          v4 = i;
        }

        *v4 = *i;
        SCPreferencesSetDispatchQueue(v5[2], 0);
        CFRelease(v5[2]);
        v14 = v5[3];
        if (v14)
        {
          CFRelease(v14);
        }

        v15 = v5[4];
        if (v15)
        {
          CFRelease(v15);
        }

        free(v5);
        return;
      }
    }
  }
}

void sub_8E0()
{
  if (qword_4130)
  {
    v0 = *(qword_4130 + 8);
    xpc_event_provider_token_fire();
  }
}

void sub_924(const __SCPreferences *a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 != a1)
  {
    sub_A94();
  }

  if ((*(a3 + 40) & a2) != 0)
  {
    v5 = *(a3 + 24);
    if (!v5)
    {
      goto LABEL_15;
    }

    Count = CFArrayGetCount(*(a3 + 24));
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if (i)
        {
          v12 = CFGetTypeID(v9);
          if (v12 != CFDictionaryGetTypeID())
          {
            _os_assumes_log();
            goto LABEL_20;
          }

          Value = CFDictionaryGetValue(v9, ValueAtIndex);
        }

        else
        {
          Value = SCPreferencesGetValue(v3, ValueAtIndex);
        }

        v9 = Value;
        if (!Value)
        {
          goto LABEL_20;
        }
      }

      v14 = *(a3 + 32);
      if (!v14 || CFEqual(Value, v14))
      {
        SCPreferencesSynchronize(a1);
LABEL_15:
        v15 = *(a3 + 8);

        xpc_event_provider_token_fire();
      }
    }

LABEL_20:

    SCPreferencesSynchronize(a1);
  }
}

void sub_A94()
{
  _os_assert_log();
  v0 = _os_crash();
  __break(1u);
  CFArrayGetCount(v0);
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