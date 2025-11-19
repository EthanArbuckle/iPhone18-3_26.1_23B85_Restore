void sub_6D8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 == 1)
  {
    v8 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040E7BEABC5uLL);
    v8[1] = a2;
    string = xpc_dictionary_get_string(a3, "Executable");
    if (string)
    {
      if (*string == 47)
      {
        v8[2] = strdup(string);
        v10 = os_signpost_id_generate(qword_4148);
        v8[3] = v10;
        v11 = sub_A70(v8[2]);
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = v11;
          v13 = qword_4148;
          if (os_signpost_enabled(qword_4148))
          {
            LODWORD(buf.version) = 136446210;
            *(&buf.version + 4) = v12;
            _os_signpost_emit_with_name_impl(&dword_0, v13, OS_SIGNPOST_EVENT, v10, "EventsChangedForExecutable", "executable_missing=%{public, signpost.telemetry:string1}s enableTelemetry=YES ", &buf, 0xCu);
          }
        }
      }
    }

    value = xpc_dictionary_get_value(a3, "UID");
    if (value)
    {
      v15 = value;
      if (xpc_get_type(value) == &_xpc_type_uint64)
      {
        v8[5] = xpc_retain(v15);
        *(v8 + 64) = 1;
      }
    }

    v16 = xpc_dictionary_get_string(a3, "UserName");
    if (v16)
    {
      v8[6] = strdup(v16);
      *(v8 + 64) = 1;
    }

    v17 = xpc_dictionary_get_string(a3, "GroupName");
    if (v17)
    {
      v8[7] = strdup(v17);
      *(v8 + 64) = 1;
    }

    v18 = xpc_dictionary_get_BOOL(a3, "SkipImmediatePoll");
    *v8 = launchd_helper_events;
    launchd_helper_events = v8;
    if (!v18)
    {
      sub_AB8();
    }

    v19 = v8[2];
    if (v19)
    {
      values = CFStringCreateWithCString(kCFAllocatorDefault, v19, 0x8000100u);
      v20 = CFArrayCreate(kCFAllocatorDefault, &values, 1, &kCFTypeArrayCallBacks);
      buf.version = 0;
      memset(&buf.retain, 0, 24);
      buf.info = v8;
      v21 = FSEventStreamCreate(kCFAllocatorDefault, sub_CD8, &buf, v20, 0xFFFFFFFFFFFFFFFFLL, 0.05, 4u);
      v8[4] = v21;
      if (!v21)
      {
        _os_assumes_log();
        v24 = v8[4];
      }

      xpc_event_provider_get_queue();
    }
  }

  else if (a1 == 2)
  {
    v4 = &launchd_helper_events;
    v5 = &launchd_helper_events;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v5[1] == a2)
      {
        for (i = launchd_helper_events; i != v5; i = *i)
        {
          v4 = i;
        }

        *v4 = *i;
        free(v5[2]);
        v22 = v5[5];
        if (v22)
        {
          xpc_release(v22);
        }

        free(v5[6]);
        free(v5[7]);
        v23 = v5[4];
        if (v23)
        {
          FSEventStreamStop(v23);
          FSEventStreamInvalidate(v5[4]);
          FSEventStreamRelease(v5[4]);
          v5[4] = 0;
        }

        free(v5);
        return;
      }
    }
  }
}

char *sub_A70(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/var/", 5uLL))
  {
    return strrchr(v1, 47) + 1;
  }

  return v1;
}

const char *sub_AB8()
{
  v0 = off_4130();
  v18 = 0;
  memset(&v17, 0, sizeof(v17));
  v16 = 0;
  memset(&v15, 0, sizeof(v15));
  v1 = *(v0 + 16);
  if (v1)
  {
    memset(&v21, 0, sizeof(v21));
    result = stat(v1, &v21);
    if (result || (v21.st_mode & 0xF000) != 0x8000 || (v21.st_mode & 0x49) == 0)
    {
      return result;
    }

    v3 = sub_A70(*(v0 + 16));
    v4 = *(v0 + 24);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v3;
      v6 = qword_4148;
      if (os_signpost_enabled(qword_4148))
      {
        *buf = 136446210;
        v20 = v5;
        _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_EVENT, v4, "PollStateForExecutable", "executable_found=%{public, signpost.telemetry:string1}s enableTelemetry=YES ", buf, 0xCu);
      }
    }

    *(v0 + 24) = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 40);
  if (v8)
  {
    value = xpc_uint64_get_value(v8);
    result = getpwuid_r(value, &v17, &v21, 0x1000uLL, &v18);
    if (result)
    {
      v10 = 1;
    }

    else
    {
      v10 = v18 == 0;
    }

    if (v10)
    {
      v11 = v7;
    }

    else
    {
      v11 = v7 + 1;
    }

    if (v10)
    {
      return result;
    }

    ++v7;
  }

  else
  {
    v11 = v7;
  }

  result = *(v0 + 48);
  if (result)
  {
    ++v7;
    result = getpwnam_r(result, &v17, &v21, 0x1000uLL, &v18);
    if (!result && v18 != 0)
    {
      ++v11;
    }
  }

  if (v11 >= v7)
  {
    result = *(v0 + 56);
    if (result)
    {
      ++v7;
      result = getgrnam_r(result, &v15, &v21, 0x1000uLL, &v16);
      if (result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v16 == 0;
      }

      if (!v13)
      {
        ++v11;
      }
    }

    if (v11 >= v7)
    {
      v14 = *(v0 + 8);
      xpc_event_provider_token_set_state();
    }
  }

  return result;
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

void xpc_event_provider_token_set_state()
{
    ;
  }
}