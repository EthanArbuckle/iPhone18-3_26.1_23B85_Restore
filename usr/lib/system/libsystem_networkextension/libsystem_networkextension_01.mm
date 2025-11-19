int64_t NEHelperSettingsRemove(const char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (!a1 || !*a1)
  {
    int64 = 22;
    goto LABEL_17;
  }

  v3 = v2;
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v4 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = a1;
    _os_log_impl(&dword_1A90C6000, v4, OS_LOG_TYPE_DEFAULT, "Removing %s", &v11, 0xCu);
  }

  xpc_dictionary_set_uint64(v3, "delegate-class-id", 2uLL);
  xpc_dictionary_set_string(v3, "setting-name", a1);
  xpc_dictionary_set_int64(v3, "setting-type", 4);
  v5 = NEHelperCopyResponse(v3);
  v6 = v5;
  if (v5 && MEMORY[0x1AC5803D0](v5) == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(v6, "result-code");
    if (!int64)
    {
      goto LABEL_14;
    }
  }

  else
  {
    int64 = 22;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v8 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109120;
    LODWORD(v12) = int64;
    _os_log_error_impl(&dword_1A90C6000, v8, OS_LOG_TYPE_ERROR, "NEHelperSettingsRemove failed with error: %d", &v11, 8u);
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v6)
  {
LABEL_14:
    xpc_release(v6);
  }

LABEL_15:
  xpc_release(v3);
LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
  return int64;
}

int64_t NEHelperCacheSetRoutes(const char *a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v4, "cache-command", 2uLL);
  xpc_dictionary_set_string(v4, "cache-service", a1);
  xpc_dictionary_set_value(v4, "cache-routes", a2);
  v5 = NEHelperCopyResponse(v4);
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v6, "result-code");
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v6);
  }

  else
  {
    int64 = 22;
  }

  xpc_release(v4);
  return int64;
}

int64_t NEHelperCacheSetMatchDomains(const char *a1, void *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v4, "cache-command", 9uLL);
  xpc_dictionary_set_string(v4, "cache-service", a1);
  xpc_dictionary_set_value(v4, "cache-match-domains", a2);
  v5 = NEHelperCopyResponse(v4);
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v6, "result-code");
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v6);
  }

  else
  {
    int64 = 22;
  }

  xpc_release(v4);
  return int64;
}

int64_t NEHelperCacheSetDomainDictionaries(const char *a1, const char *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v6, "delegate-class-id", 1uLL);
    xpc_dictionary_set_uint64(v6, "cache-command", 4uLL);
    xpc_dictionary_set_string(v6, "cache-service", a1);
    xpc_dictionary_set_value(v6, "cache-domain-dictionaries", a3);
    xpc_dictionary_set_string(v6, "cache-interface-name", a2);
    v7 = NEHelperCopyResponse(v6);
    if (v7)
    {
      v8 = v7;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v8, "result-code");
      }

      else
      {
        int64 = 22;
      }

      xpc_release(v8);
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v6);
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = a1;
      _os_log_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_INFO, "missing interface name, set domain dictionaries failed for %s", &v13, 0xCu);
    }

    int64 = 22;
  }

  v11 = *MEMORY[0x1E69E9840];
  return int64;
}

uint64_t NEHelperCacheAddRedirectedAddress(const char *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
    xpc_dictionary_set_uint64(v4, "cache-command", 5uLL);
    xpc_dictionary_set_data(v4, "cache-redirected-address", a2, *a2);
    xpc_dictionary_set_string(v4, "cache-interface-name", a1);
    v5 = NEHelperCopyResponse(v4);
    if (v5)
    {
      v6 = v5;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v6, "result-code");
      }

      else
      {
        int64 = 22;
      }

      xpc_release(v6);
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v4);
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v8 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A90C6000, v8, OS_LOG_TYPE_INFO, "missing interface name, add redirected address failed", v10, 2u);
    }

    return 22;
  }

  return int64;
}

uint64_t NEHelperCacheClearRedirectedAddresses(const char *a1)
{
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, "delegate-class-id", 1uLL);
    xpc_dictionary_set_uint64(v2, "cache-command", 7uLL);
    xpc_dictionary_set_string(v2, "cache-interface-name", a1);
    v3 = NEHelperCopyResponse(v2);
    if (v3)
    {
      v4 = v3;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v4, "result-code");
      }

      else
      {
        int64 = 22;
      }

      xpc_release(v4);
    }

    else
    {
      int64 = 22;
    }

    xpc_release(v2);
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v6 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A90C6000, v6, OS_LOG_TYPE_INFO, "missing interface name, clear redirected address failed", v8, 2u);
    }

    return 22;
  }

  return int64;
}

void NEHelperCacheClearUUIDs()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v1 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A90C6000, v1, OS_LOG_TYPE_DEFAULT, "sending a message to clear the UUID cache", v3, 2u);
  }

  xpc_dictionary_set_uint64(v0, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v0, "cache-command", 8uLL);
  v2 = NEHelperCopyResponse(v0);
  if (v2)
  {
    xpc_release(v2);
  }

  xpc_release(v0);
}

void NEHelperCacheClearUUIDsForBundleID(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v3 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = a1;
    _os_log_impl(&dword_1A90C6000, v3, OS_LOG_TYPE_DEFAULT, "sending a message to clear the UUIDs for %s from the cache", &v6, 0xCu);
  }

  xpc_dictionary_set_uint64(v2, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v2, "cache-command", 8uLL);
  xpc_dictionary_set_string(v2, "cache-app-bundle-id", a1);
  v4 = NEHelperCopyResponse(v2);
  if (v4)
  {
    xpc_release(v4);
  }

  xpc_release(v2);
  v5 = *MEMORY[0x1E69E9840];
}

void NEHelperCachePopulateUUIDsForConfiguration(const unsigned __int8 *a1, unsigned int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  memset(out, 0, 37);
  uuid_unparse(a1, out);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v5 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = out;
    _os_log_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_DEFAULT, "Sending a message to populate the cache with UUIDs from configuration %s", &v11, 0xCu);
  }

  xpc_dictionary_set_uint64(v4, "delegate-class-id", 1uLL);
  xpc_dictionary_set_uint64(v4, "cache-command", 0xAuLL);
  xpc_dictionary_set_uuid(v4, "config-identifier", a1);
  xpc_dictionary_set_int64(v4, "cache-user-uid", a2);
  v6 = NEHelperCopyResponse(v4);
  if (v6)
  {
    v7 = v6;
    int64 = xpc_dictionary_get_int64(v6, "result-code");
    if (int64)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v9 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v11 = 67109120;
        LODWORD(v12) = int64;
        _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "Populating the cache failed: %d", &v11, 8u);
      }
    }

    xpc_release(v7);
  }

  xpc_release(v4);
  v10 = *MEMORY[0x1E69E9840];
}

xpc_object_t NEHelperCopyAggregatePathRules()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (v0)
  {
    v1 = v0;
    xpc_dictionary_set_uint64(v0, "delegate-class-id", 6uLL);
    xpc_dictionary_set_int64(v1, "config-operation", 6);
    v2 = NEHelperCopyResponse(v1);
    if (!v2)
    {
      v4 = 0;
      goto LABEL_8;
    }

    v3 = v2;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(v3, "result-data");
      v4 = value;
      if (!value)
      {
        goto LABEL_5;
      }

      if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E70])
      {
        v4 = xpc_copy(v4);
        goto LABEL_5;
      }
    }

    v4 = 0;
LABEL_5:
    xpc_release(v3);
LABEL_8:
    xpc_release(v1);
    return v4;
  }

  return 0;
}

xpc_object_t NEHelperCopyPerAppDomains(const char *a1, BOOL a2)
{
  if (a1 && (!strncmp(a1, "com.apple.mobilesafari", 0x17uLL) || !strncmp(a1, "com.apple.webapp", 0x11uLL) || !strncmp(a1, "com.apple.mobilemail", 0x15uLL) || !strncmp(a1, "com.apple.MobileAddressBook", 0x1CuLL) || !strncmp(a1, "com.apple.mobilecal", 0x14uLL) || !strncmp(a1, "com.apple.datausage.dataaccess.activesync", 0x2AuLL) || !strncmp(a1, "com.apple.mobilenotes", 0x16uLL) || !strncmp(a1, "com.apple.reminders", 0x14uLL)))
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "delegate-class-id", 6uLL);
      xpc_dictionary_set_int64(v5, "config-operation", 11);
      xpc_dictionary_set_BOOL(v5, "one-per-configuration", a2);
      xpc_dictionary_set_string(v5, "bundle-id", a1);
      v6 = NEHelperCopyResponse(v5);
      if (!v6)
      {
        v8 = 0;
        goto LABEL_17;
      }

      v7 = v6;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        value = xpc_dictionary_get_value(v7, "result-data");
        v8 = value;
        if (!value)
        {
          goto LABEL_14;
        }

        if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E50])
        {
          v8 = xpc_copy(v8);
          goto LABEL_14;
        }
      }

      v8 = 0;
LABEL_14:
      xpc_release(v7);
LABEL_17:
      xpc_release(v5);
      return v8;
    }
  }

  return 0;
}

xpc_object_t NEHelperHandleConfigurationsChangedBySC(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_uint64(v2, "delegate-class-id", 6uLL);
    xpc_dictionary_set_int64(v3, "config-operation", 13);
    if (a1 && MEMORY[0x1AC5803D0](a1) == MEMORY[0x1E69E9E50] && xpc_array_get_count(a1))
    {
      xpc_dictionary_set_value(v3, "config-ids", a1);
    }

    v4 = NEHelperCopyResponse(v3);
    if (!v4)
    {
      v6 = 0;
      goto LABEL_12;
    }

    v5 = v4;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      value = xpc_dictionary_get_value(v5, "result-data");
      v6 = value;
      if (!value)
      {
        goto LABEL_9;
      }

      if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E50])
      {
        v6 = xpc_copy(v6);
        goto LABEL_9;
      }
    }

    v6 = 0;
LABEL_9:
    xpc_release(v5);
LABEL_12:
    xpc_release(v3);
    return v6;
  }

  return 0;
}

uint64_t NEHelperVPNSetEnabled(const unsigned __int8 *a1, BOOL a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_uint64(v4, "delegate-class-id", 6uLL);
    xpc_dictionary_set_int64(v5, "config-operation", 14);
    xpc_dictionary_set_uuid(v5, "config-identifier", a1);
    xpc_dictionary_set_BOOL(v5, "enabled", a2);
    v6 = NEHelperCopyResponse(v5);
    if (!v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v7 = v6;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      int64 = xpc_dictionary_get_int64(v7, "result-code");
      if (!int64)
      {
        v11 = 1;
        goto LABEL_10;
      }

      v9 = int64;
      memset(out, 0, 37);
      uuid_unparse(a1, out);
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v10 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = out;
        v16 = 2048;
        v17 = v9;
        _os_log_error_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_ERROR, "Failed to enable %s: %lld", &v14, 0x16u);
      }
    }

    v11 = 0;
LABEL_10:
    xpc_release(v7);
LABEL_13:
    xpc_release(v5);
    goto LABEL_14;
  }

  v11 = 0;
LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t NEHelperVPNConfigurationExists(uint64_t a1, BOOL a2)
{
  v2 = a1;
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4)
    {
      v5 = v4;
      xpc_dictionary_set_uint64(v4, "delegate-class-id", 6uLL);
      xpc_dictionary_set_int64(v5, "config-operation", 15);
      xpc_dictionary_set_string(v5, "app-bundle-id", v2);
      xpc_dictionary_set_BOOL(v5, "enable-required", a2);
      v6 = NEHelperCopyResponse(v5);
      if (!v6)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v10 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_error_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_ERROR, "nehelper sent NULL Configuration check response", &v15, 2u);
        }

        v2 = 0;
        goto LABEL_23;
      }

      v7 = v6;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v7, "result-code");
        if (!int64)
        {
          v2 = 1;
          goto LABEL_22;
        }

        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v12 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v15 = 67109120;
          LODWORD(v16) = int64;
          _os_log_error_impl(&dword_1A90C6000, v12, OS_LOG_TYPE_ERROR, "received invalid Configuration check result %d", &v15, 8u);
        }
      }

      else
      {
        v8 = MEMORY[0x1AC5801F0](v7);
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v9 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315138;
          v16 = v8;
          _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "nehelper sent invalid Configuration check response: %s", &v15, 0xCu);
        }

        free(v8);
      }

      v2 = 0;
LABEL_22:
      xpc_release(v7);
LABEL_23:
      xpc_release(v5);
      goto LABEL_24;
    }

    v2 = 0;
  }

LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

void NEHelperInit()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  if (v0)
  {
    v1 = v0;
    xpc_dictionary_set_BOOL(v0, "init-command", 1);
    v2 = NEHelperCopyResponse(v1);
    if (v2)
    {
      xpc_release(v2);
    }

    xpc_release(v1);
  }
}

xpc_object_t NEHelperCopyCurrentNetworkInfo(const char *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    if (v2)
    {
      v3 = v2;
      xpc_dictionary_set_uint64(v2, "delegate-class-id", 0xAuLL);
      xpc_dictionary_set_string(v3, "interface-name", a1);
      xpc_dictionary_set_BOOL(v3, "LegacyAPI", 1);
      v4 = NEHelperCopyResponse(v3);
      if (!v4)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v9 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v16) = 0;
          _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "nehelper sent NULL response for Wi-Fi information request", &v16, 2u);
        }

        v8 = 0;
        goto LABEL_23;
      }

      v5 = v4;
      if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
      {
        int64 = xpc_dictionary_get_int64(v5, "result-code");
        if (int64)
        {
          v11 = int64;
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v12 = ne_log_obj_log_obj;
          if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
          {
            v16 = 134217984;
            v17 = v11;
            _os_log_error_impl(&dword_1A90C6000, v12, OS_LOG_TYPE_ERROR, "nehelper sent invalid result code [%lld] for Wi-Fi information request", &v16, 0xCu);
          }
        }

        else
        {
          value = xpc_dictionary_get_value(v5, "result-data");
          if (value)
          {
            v8 = xpc_copy(value);
            goto LABEL_22;
          }
        }
      }

      else
      {
        v6 = MEMORY[0x1AC5801F0](v5);
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v7 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315138;
          v17 = v6;
          _os_log_error_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_ERROR, "nehelper sent invalid response for Wi-Fi information request: %s", &v16, 0xCu);
        }

        free(v6);
      }

      v8 = 0;
LABEL_22:
      xpc_release(v5);
LABEL_23:
      xpc_release(v3);
      goto LABEL_24;
    }
  }

  v8 = 0;
LABEL_24:
  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

BOOL NEHelperCopyCurrentNetworkAsync(NSObject *a1, void (**a2)(void, void, void, void))
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    xpc_dictionary_set_uint64(v4, "delegate-class-id", 0xAuLL);
    xpc_dictionary_set_BOOL(v5, "security-type-requested", 1);
    NEHelperSendRequest(v5, a1, a2);
    xpc_release(v5);
  }

  return v5 != 0;
}

uint64_t NEHelperGetPid()
{
  v0 = nehelper_copy_connection_for_delegate_class(0xEuLL);
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v1, "delegate-class-id", 0xEuLL);
  xpc_dictionary_set_uint64(v1, "relay-command", 3uLL);
  v2 = NEHelperCopyResponse(v1);
  pid = xpc_connection_get_pid(v0);
  xpc_release(v1);
  xpc_release(v2);
  xpc_release(v0);
  return pid;
}

xpc_object_t NEHelperCopyXPCEndpointForIdentityProxyExtended(const unsigned __int8 *a1, const void *a2, size_t a3, const char *a4, void *a5)
{
  is_null = uuid_is_null(a1);
  value = 0;
  if (a3 && a2 && !is_null)
  {
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v12, "delegate-class-id", 0xEuLL);
    xpc_dictionary_set_uint64(v12, "relay-command", 1uLL);
    xpc_dictionary_set_data(v12, "relay-persistent-reference", a2, a3);
    xpc_dictionary_set_uuid(v12, "relay-config-id", a1);
    if (a4 && *a4)
    {
      xpc_dictionary_set_string(v12, "relay-identity-domain", a4);
    }

    if (a5)
    {
      xpc_dictionary_set_value(v12, "relay-options", a5);
    }

    v13 = NEHelperCopyResponse(v12);
    if (v13)
    {
      v14 = v13;
      v15 = MEMORY[0x1AC5803D0]();
      v16 = MEMORY[0x1E69E9E80];
      if (v15 == MEMORY[0x1E69E9E80] && (v18 = xpc_dictionary_get_value(v14, "result-data")) != 0 && (v19 = v18, MEMORY[0x1AC5803D0]() == v16))
      {
        value = xpc_dictionary_get_value(v19, "relay-identity-xpc-endpoint");
        xpc_release(v12);
        if (value)
        {
          xpc_retain(value);
        }
      }

      else
      {
        xpc_release(v12);
        value = 0;
      }

      xpc_release(v14);
    }

    else
    {
      xpc_release(v12);
      return 0;
    }
  }

  return value;
}

xpc_object_t NEHelperCopyDataForCertificate(const unsigned __int8 *a1, const void *a2, size_t a3)
{
  is_null = uuid_is_null(a1);
  value = 0;
  if (a3 && a2 && !is_null)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v8, "delegate-class-id", 0xEuLL);
    xpc_dictionary_set_uint64(v8, "relay-command", 2uLL);
    xpc_dictionary_set_data(v8, "relay-persistent-reference", a2, a3);
    xpc_dictionary_set_uuid(v8, "relay-config-id", a1);
    v9 = NEHelperCopyResponse(v8);
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x1AC5803D0]();
      v12 = MEMORY[0x1E69E9E80];
      if (v11 == MEMORY[0x1E69E9E80] && (v14 = xpc_dictionary_get_value(v10, "result-data")) != 0 && (v15 = v14, MEMORY[0x1AC5803D0]() == v12))
      {
        value = xpc_dictionary_get_value(v15, "relay-certificate-data");
        xpc_release(v8);
        if (value)
        {
          xpc_retain(value);
        }
      }

      else
      {
        xpc_release(v8);
        value = 0;
      }

      xpc_release(v10);
    }

    else
    {
      xpc_release(v8);
      return 0;
    }
  }

  return value;
}

unsigned __int16 *ne_tracker_context_get_domain(unsigned __int16 *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  result = a1 + 1;
  if (v2 <= 0xF)
  {
    return 0;
  }

  return result;
}

const char *ne_tracker_context_get_domain_owner(const char *result)
{
  if (result)
  {
    v1 = *result;
    if (v1 < 0x10)
    {
      return 0;
    }

    v2 = (result + 2);
    v3 = strlen(result + 2);
    if (v3 + 1 == v1 >> 4)
    {
      return 0;
    }

    else
    {
      return v2 + v3 + 1;
    }
  }

  return result;
}

unsigned __int16 *ne_tracker_context_can_block_request(unsigned __int16 *result)
{
  if (result)
  {
    return ((*result >> 2) & 1);
  }

  return result;
}

_WORD *ne_tracker_context_is_from_web_list(_WORD *result)
{
  if (result)
  {
    return (*result & 1);
  }

  return result;
}

unsigned __int16 *ne_tracker_context_is_from_app_list(unsigned __int16 *result)
{
  if (result)
  {
    return ((*result >> 1) & 1);
  }

  return result;
}

void ne_tracker_build_trie(unsigned __int16 *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, double a7)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_3;
  }

  if (MEMORY[0x1AC5803D0](a2) != MEMORY[0x1E69E9E50])
  {
    goto LABEL_3;
  }

  count = xpc_array_get_count(a2);
  if (!a3 || !a5 || !a4 || !count || MEMORY[0x1AC5803D0](a3) != MEMORY[0x1E69E9E80] || !xpc_dictionary_get_count(a3))
  {
    goto LABEL_3;
  }

  v16 = xpc_array_get_count(a2);
  v17 = xpc_dictionary_get_count(a3);
  if (!ne_trie_init(a1, a4, v16, a5 + 4 * v17, a6, 0, a7))
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v18 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    v29 = "ne_tracker_build_trie";
    v19 = "%s: failed to init trie";
    v20 = v18;
    v21 = 12;
LABEL_25:
    _os_log_error_impl(&dword_1A90C6000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_13;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v27[2] = __ne_tracker_build_trie_block_invoke;
  v27[3] = &__block_descriptor_tmp_121;
  v27[4] = a3;
  v27[5] = a1;
  xpc_array_apply(a2, v27);
  if ((a6 & 0x80000000) == 0 && !ne_trie_save_to_file(a1))
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v22 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315394;
    v29 = "ne_tracker_build_trie";
    v30 = 1024;
    v31 = a6;
    v19 = "%s: failed to save trie to file <fd %d>";
    v20 = v22;
    v21 = 18;
    goto LABEL_25;
  }

LABEL_13:
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

LABEL_22:
  v23 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a1[27];
    v25 = a1[28];
    v26 = a1[29];
    *buf = 136316162;
    v29 = "ne_tracker_build_trie";
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = v24;
    v34 = 1024;
    v35 = v25;
    v36 = 1024;
    v37 = v26;
    _os_log_impl(&dword_1A90C6000, v23, OS_LOG_TYPE_DEFAULT, "%s: Initialized with %d domains (Nodes used = %d, child maps used = %d, bytes used = %d)", buf, 0x24u);
  }

LABEL_3:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __ne_tracker_build_trie_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (MEMORY[0x1AC5803D0](a3) == MEMORY[0x1E69E9F10])
    {
      string_ptr = xpc_string_get_string_ptr(a3);
      if (string_ptr)
      {
        v8 = string_ptr;
        dictionary = xpc_dictionary_get_dictionary(*(a1 + 32), string_ptr);
        if (dictionary)
        {
          v10 = dictionary;
          string = xpc_dictionary_get_string(dictionary, "owner");
          v12 = xpc_dictionary_get_BOOL(v10, "is-web-list");
          v13 = xpc_dictionary_get_BOOL(v10, "is-app-list");
          v14 = xpc_dictionary_get_BOOL(v10, "can-block-request");
          v15 = strlen(v8);
          v16 = strlen(string);
          if (v15 + v16 - 507 >= 0xFFFFFFFFFFFFFDFFLL)
          {
            v18 = v16;
            __memcpy_chk();
            byte_1EB382052[v15] = 0;
            v19 = v15 + 1;
            memcpy(&byte_1EB382052[v19], string, v18);
            byte_1EB382052[v18 + v19] = 0;
            v20 = 16 * (v18 + v19) + 16;
            v21 = v13 ? 2 : 0;
            v22 = v14 ? 4 : 0;
            ne_tracker_build_trie_buffer = v21 | v12 | v22 | ne_tracker_build_trie_buffer & 8 | v20;
            v17 = (v20 >> 4) + 4;
          }

          else
          {
            v17 = 0;
          }

          v23 = strlen(v8);
          if (ne_trie_insert(*(a1 + 40), v8, v23, &ne_tracker_build_trie_buffer, v17, 1) == 0xFFFF)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v24 = ne_log_obj_log_obj;
            if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
            {
              v25 = 136315394;
              v26 = "ne_tracker_build_trie_block_invoke";
              v27 = 2080;
              v28 = v8;
              _os_log_error_impl(&dword_1A90C6000, v24, OS_LOG_TYPE_ERROR, "%s: failed to insert <%s>", &v25, 0x16u);
            }
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

void ne_tracker_set_test_domains(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (a1)
  {
    v3 = v2;
    if (MEMORY[0x1AC5803D0](a1) == MEMORY[0x1E69E9E50])
    {
      xpc_dictionary_set_uint64(v3, "delegate-class-id", 0xCuLL);
      xpc_dictionary_set_value(v3, "test-domains", a1);
      xpc_dictionary_set_uint64(v3, "tracker-command", 1uLL);
      v4 = ne_tracker_copy_response(v3);
      if (v4)
      {
        v5 = v4;
        if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
        {
          int64 = xpc_dictionary_get_int64(v5, "result-code");
          if (ne_log_obj_g_init != -1)
          {
            v9 = int64;
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            int64 = v9;
          }

          v7 = ne_log_obj_log_obj;
          if (int64)
          {
            if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
            {
              v10 = 136315138;
              v11 = "ne_tracker_set_test_domains";
              _os_log_error_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_ERROR, "%s: got bad response", &v10, 0xCu);
            }
          }

          else if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
          {
            v10 = 136315138;
            v11 = "ne_tracker_set_test_domains";
            _os_log_debug_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_DEBUG, "%s: got good response", &v10, 0xCu);
          }
        }

        xpc_release(v5);
      }

      xpc_release(v3);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

xpc_object_t ne_tracker_copy_response(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v12 = 136315138;
    v13 = "ne_tracker_copy_response";
    v4 = "%s: request is NULL";
    goto LABEL_27;
  }

  uint64 = xpc_dictionary_get_uint64(a1, "delegate-class-id");
  if (uint64 - 15 <= 0xFFFFFFF1)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v12 = 136315138;
    v13 = "ne_tracker_copy_response";
    v4 = "%s: request has an invalid delegate class ID";
LABEL_27:
    _os_log_error_impl(&dword_1A90C6000, v3, OS_LOG_TYPE_ERROR, v4, &v12, 0xCu);
LABEL_28:
    v7 = 0;
    goto LABEL_29;
  }

  v5 = nehelper_copy_connection_for_delegate_class(uint64);
  if (!v5)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v12 = 136315138;
    v13 = "ne_tracker_copy_response";
    v4 = "%s: nehelper_copy_connection_for_delegate_class() returned NULL";
    goto LABEL_27;
  }

  v6 = v5;
  v7 = xpc_connection_send_message_with_reply_sync(v5, a1);
  xpc_release(v6);
  if (!v7)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v3 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v12 = 136315138;
    v13 = "ne_tracker_copy_response";
    v4 = "%s: nehelper sent NULL response";
    goto LABEL_27;
  }

  if (MEMORY[0x1AC5803D0](v7) != MEMORY[0x1E69E9E80])
  {
    v8 = MEMORY[0x1AC5801F0](v7);
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v9 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "ne_tracker_copy_response";
      v14 = 2080;
      v15 = v8;
      _os_log_error_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_ERROR, "%s: nehelper sent invalid response: %s", &v12, 0x16u);
    }

    free(v8);
  }

LABEL_29:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void ne_tracker_clear_cache(uint64_t a1)
{
  if (a1)
  {
    ne_trie_free(a1);
  }
}

BOOL ne_tracker_domain_is_known_tracker(uint64_t a1, int a2, uint64_t *a3, int *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = 0;
  os_unfair_lock_lock(&ne_tracker_lock);
  if (!ne_tracker_build_cache(&ne_tracker_trie, 0))
  {
    os_unfair_lock_unlock(&ne_tracker_lock);
    v10 = 0;
    goto LABEL_30;
  }

  if (a2 < 1)
  {
LABEL_28:
    v10 = 0;
    goto LABEL_29;
  }

  v28 = a4;
  v29 = a3;
  v8 = 0;
  v9 = a2;
  v10 = 1;
  while (1)
  {
    v11 = *(a1 + 8 * v8);
    if (v11)
    {
      break;
    }

LABEL_25:
    v10 = ++v8 < v9;
    if (v8 == v9)
    {
      goto LABEL_28;
    }
  }

  v12 = strlen(*(a1 + 8 * v8));
  v13 = v12;
  if (!v12)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v19 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

LABEL_24:
    *buf = 0;
    _os_log_error_impl(&dword_1A90C6000, v19, OS_LOG_TYPE_ERROR, "Failed to set domain of zero-length", buf, 2u);
    goto LABEL_25;
  }

  if (v11[v12 - 1] == 46)
  {
    v13 = v12 - 1;
    if (v12 == 1)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v19 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  if (v13 >= 1)
  {
    v14 = v13;
    v15 = *(a1 + 8 * v8);
    v16 = ne_tracker_domain_is_known_tracker_domain_buf;
    do
    {
      v17 = *v15++;
      *v16++ = __tolower(v17);
      --v14;
    }

    while (v14);
  }

  ne_tracker_domain_is_known_tracker_domain_buf[v13] = 0;
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v18 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315651;
    v33 = "ne_tracker_domain_is_known_tracker";
    v34 = 2081;
    v35 = ne_tracker_domain_is_known_tracker_domain_buf;
    v36 = 1024;
    v37 = v13;
    _os_log_debug_impl(&dword_1A90C6000, v18, OS_LOG_TYPE_DEBUG, "%s: lookup for <%{private}s> length %d", buf, 0x1Cu);
  }

  if (ne_trie_search(&ne_tracker_trie, ne_tracker_domain_is_known_tracker_domain_buf, v13, &v31, &v30, 1, 1, 46, 0, ne_tracker_check_metadata_for_app) == 0xFFFF)
  {
    goto LABEL_25;
  }

  if (v29 && v31 && v30)
  {
    v22 = *v31;
    if (v22 < 0x10 || (v23 = strlen(v31 + 2), v23 + 1 == v22 >> 4))
    {
      v24 = 0;
    }

    else
    {
      v24 = &v31[v23 + 3];
    }

    *v29 = v24;
  }

  if (v28)
  {
    *v28 = v8;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v25 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    if (v28)
    {
      v26 = *v28;
    }

    else
    {
      v26 = -1;
    }

    if (v29)
    {
      v27 = *v29;
    }

    else
    {
      v27 = "n/a";
    }

    *buf = 136315907;
    v33 = "ne_tracker_domain_is_known_tracker";
    v34 = 2081;
    v35 = v11;
    v36 = 1024;
    v37 = v26;
    v38 = 2081;
    v39 = v27;
    _os_log_debug_impl(&dword_1A90C6000, v25, OS_LOG_TYPE_DEBUG, "%s: found match for domain <%{private}s> (index %d) owner <%{private}s>", buf, 0x26u);
  }

LABEL_29:
  os_unfair_lock_unlock(&ne_tracker_lock);
LABEL_30:
  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

unsigned __int16 *ne_tracker_check_metadata_for_app(unsigned __int16 *result)
{
  if (result)
  {
    return ((*result >> 1) & 1);
  }

  return result;
}

xpc_object_t ne_tracker_get_ddg_dictionary()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "delegate-class-id", 0xCuLL);
  xpc_dictionary_set_uint64(v0, "tracker-command", 1uLL);
  v1 = ne_tracker_copy_response(v0);
  if (!v1)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v2 = v1;
  v3 = MEMORY[0x1AC5803D0]();
  v4 = MEMORY[0x1E69E9E80];
  if (v3 == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_int64(v2, "result-code"))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v5 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "ne_tracker_get_ddg_dictionary";
        _os_log_error_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_ERROR, "%s: got bad response", &v10, 0xCu);
      }
    }

    else
    {
      value = xpc_dictionary_get_value(v2, "domain-dictionary");
      v6 = value;
      if (!value)
      {
        goto LABEL_9;
      }

      if (MEMORY[0x1AC5803D0](value) == v4 && xpc_dictionary_get_count(v6))
      {
        v6 = xpc_copy(v6);
        goto LABEL_9;
      }
    }
  }

  v6 = 0;
LABEL_9:
  xpc_release(v2);
LABEL_11:
  xpc_release(v0);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

xpc_object_t ne_tracker_lookup_app_domains(const char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v2, "delegate-class-id", 0xCuLL);
    xpc_dictionary_set_uint64(v2, "tracker-command", 2uLL);
    xpc_dictionary_set_string(v2, "bundle-id", a1);
    v3 = ne_tracker_copy_response(v2);
    if (!v3)
    {
      v6 = 0;
      goto LABEL_17;
    }

    v4 = v3;
    if (MEMORY[0x1AC5803D0]() == MEMORY[0x1E69E9E80])
    {
      if (xpc_dictionary_get_int64(v4, "result-code"))
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v5 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315138;
          v12 = "ne_tracker_lookup_app_domains";
          _os_log_error_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_ERROR, "%s: got bad response", &v11, 0xCu);
        }
      }

      else
      {
        value = xpc_dictionary_get_value(v4, "sorted-domains");
        v6 = value;
        if (!value)
        {
          goto LABEL_10;
        }

        if (MEMORY[0x1AC5803D0](value) == MEMORY[0x1E69E9E50])
        {
          v6 = xpc_copy(v6);
          goto LABEL_10;
        }
      }
    }

    v6 = 0;
LABEL_10:
    xpc_release(v4);
LABEL_17:
    xpc_release(v2);
    goto LABEL_18;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v7 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315138;
    v12 = "ne_tracker_lookup_app_domains";
    _os_log_error_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_ERROR, "%s: bundle_id is NULL", &v11, 0xCu);
  }

  v6 = 0;
LABEL_18:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL ne_tracker_validate_domain(const void *a1, int a2, uint64_t (*a3)(char *, size_t, char *, uint64_t), char *a4, uint64_t a5, _DWORD *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a2 && a2 < 254)
  {
    __memcpy_chk();
    ne_tracker_validate_domain_buffer[a2] = 0;
    __stringp = ne_tracker_validate_domain_buffer;
    if (a3)
    {
      v11 = a4 == 0;
    }

    else
    {
      v11 = 1;
    }

    v13 = !v11 && a5 != 0;
    v40 = v13;
    v14 = MEMORY[0x1E69E9830];
    v38 = a5;
    v15 = a4;
    while (1)
    {
      v16 = strsep(&__stringp, ".");
      if (!v16)
      {
        if (a6)
        {
          *a6 = a5 - v38;
        }

        result = 1;
        goto LABEL_50;
      }

      v17 = v16;
      v18 = strlen(v16);
      v19 = v18;
      if (v18 >= 64)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v29 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 67109376;
          v43 = v19;
          v44 = 1024;
          v45 = 63;
          v31 = "Failed to validate domain - label size %d exceeded max label size %d";
          goto LABEL_46;
        }

        goto LABEL_50;
      }

      if (*v17 == 45 || v17[((v18 << 32) - 0x100000000) >> 32] == 45)
      {
        break;
      }

      if (v18 >= 1)
      {
        v20 = 0;
        v21 = 0;
        v22 = v18 & 0x7FFFFFFF;
        do
        {
          while (1)
          {
            v23 = v17[v20];
            if ((v23 & 0x80) == 0)
            {
              break;
            }

            if ((v40 & 1) == 0)
            {
              if (ne_log_obj_g_init != -1)
              {
                dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
              }

              v34 = ne_log_obj_log_obj;
              result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *buf = 0;
                v31 = "Failed to validate domain - label contains non-printable ASCII character(s)";
                goto LABEL_63;
              }

              goto LABEL_50;
            }

            ++v20;
            v21 = 1;
            if (v20 == v22)
            {
              goto LABEL_34;
            }
          }

          if (v23 != 45 && (*(v14 + 4 * v23 + 60) & 0x500) == 0)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v34 = ne_log_obj_log_obj;
            result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 0;
              v31 = "Failed to validate domain - label must be consisted of alphanumeric or hyphen";
              goto LABEL_63;
            }

            goto LABEL_50;
          }

          ++v20;
        }

        while (v22 != v20);
        if ((v21 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_34:
        if (v15 <= a4)
        {
          v27 = v17 - ne_tracker_validate_domain_buffer;
          if (v38 < v27)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v34 = ne_log_obj_log_obj;
            result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 0;
              v31 = "Failed to validate domain - puny-coding exceeded buffer size";
              goto LABEL_63;
            }

            goto LABEL_50;
          }

          v39 = v38 - v27;
          memcpy(v15, a1, v27);
          v26 = &v15[v17 - ne_tracker_validate_domain_buffer];
        }

        else
        {
          if (v38 <= 0)
          {
            if (ne_log_obj_g_init != -1)
            {
              dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
            }

            v34 = ne_log_obj_log_obj;
            result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *buf = 0;
              v31 = "Failed to validate domain - puny-coding exceeded buffer size";
              goto LABEL_63;
            }

            goto LABEL_50;
          }

          *v15 = 46;
          v26 = v15 + 1;
          v39 = v38 - 1;
        }

        v28 = a3(v17, v19, v26, a5);
        if ((v28 - 64) >= 0xFFFFFFC1 && v39 >= v28)
        {
          v38 = v39 - v28;
          v15 = &v26[v28];
          continue;
        }

        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v34 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v31 = "Failed to validate domain - failed to puny-code label";
          goto LABEL_63;
        }

        goto LABEL_50;
      }

LABEL_30:
      if (v15 > a4)
      {
        if (v38 <= 0)
        {
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v34 = ne_log_obj_log_obj;
          result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 0;
            v31 = "Failed to validate domain - puny-coding exceeded buffer size";
            goto LABEL_63;
          }

          goto LABEL_50;
        }

        *v15 = 46;
        if (v38 <= v18)
        {
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v34 = ne_log_obj_log_obj;
          result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 0;
            v31 = "Failed to validate domain - puny-coding exceeded buffer size";
            goto LABEL_63;
          }

          goto LABEL_50;
        }

        v36 = v18 << 32;
        v25 = v15 + 1;
        memcpy(v25, v17, v18);
        v15 = &v25[v36 >> 32];
        v38 += ~v19;
      }
    }

    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v34 = ne_log_obj_log_obj;
    result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v31 = "Failed to validate domain - leading and trailing hyphen is not allowed in label";
LABEL_63:
      v32 = v34;
      v33 = 2;
      goto LABEL_64;
    }
  }

  else
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v29 = ne_log_obj_log_obj;
    result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 67109376;
      v43 = a2;
      v44 = 1024;
      v45 = 253;
      v31 = "Failed to validate domain - invalid domain length of %d (max length is %d)";
LABEL_46:
      v32 = v29;
      v33 = 14;
LABEL_64:
      _os_log_error_impl(&dword_1A90C6000, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
      result = 0;
    }
  }

LABEL_50:
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

int ne_socket_set_domains(int socket, const char *const *const domain_names, int domain_count)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v30 = -1;
  v31 = 0;
  if (!domain_names || socket < 0 || domain_count < 1 || (v6 = *domain_names) == 0 || !*v6)
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v9 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v23 = "Failed to set domain(s) for socket - invalid socket or no domain provided";
    v24 = v9;
    v25 = 2;
    goto LABEL_45;
  }

  if (ne_tracker_domain_is_known_tracker(domain_names, domain_count, &v32, &v30))
  {
    v7 = 0;
    v31 = 1;
    if (v30 >= 1 && v30 < domain_count)
    {
      v7 = domain_names[v30];
    }

    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v8 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "ne_socket_set_domains";
      _os_log_impl(&dword_1A90C6000, v8, OS_LOG_TYPE_DEFAULT, "%s: marking socket as tracker", buf, 0xCu);
    }
  }

  else
  {
    v13 = strlen(v6);
    v7 = 0;
    if (!ne_tracker_validate_domain(v6, v13, 0, 0, 0, 0))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v22 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136380675;
      v34 = v6;
      v23 = "Failed to set domain(s) for socket - invalid domain syntax in <%{private}s>";
      v24 = v22;
      v25 = 12;
      goto LABEL_45;
    }
  }

  v10 = setsockopt(socket, 0xFFFF, 4389, &v31, 4u);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v14 = ne_log_obj_log_obj;
  if (v10)
  {
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      *buf = 136315394;
      v34 = v16;
      v35 = 2048;
      *v36 = 4;
      _os_log_error_impl(&dword_1A90C6000, v14, OS_LOG_TYPE_ERROR, "Could not set SO_MARK_KNOWN_TRACKER. Received error: %s (%lu)", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v34 = "ne_socket_set_domains";
    v35 = 1024;
    *v36 = v31;
    _os_log_debug_impl(&dword_1A90C6000, v14, OS_LOG_TYPE_DEBUG, "%s set tracker option is %d", buf, 0x12u);
  }

  v17 = ne_session_set_socket_tracker_attributes(socket, v6, v32, v7);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v18 = ne_log_obj_log_obj;
  if ((v17 & 1) == 0)
  {
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v26 = "<n/a>";
    v27 = v32;
    if (!v32)
    {
      v27 = "<n/a>";
    }

    *buf = 136381187;
    if (v7)
    {
      v26 = v7;
    }

    v34 = v6;
    v35 = 2081;
    *v36 = v27;
    *&v36[8] = 2081;
    *&v36[10] = v26;
    v23 = "Could not set tracker domain attributes - domain <%{private}s>, owner <%{private}s>, tracker domain <%{private}s>";
    v24 = v18;
    v25 = 32;
LABEL_45:
    _os_log_error_impl(&dword_1A90C6000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
LABEL_17:
    v10 = 22;
    goto LABEL_18;
  }

  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v19 = "not present";
    if (v32)
    {
      v20 = "present";
    }

    else
    {
      v20 = "not present";
    }

    *buf = 136316162;
    v34 = "ne_socket_set_domains";
    v35 = 1024;
    if (v7)
    {
      v19 = "present";
    }

    *v36 = v31;
    *&v36[4] = 2080;
    *&v36[6] = "present";
    *&v36[14] = 2080;
    *&v36[16] = v20;
    v37 = 2080;
    v38 = v19;
    _os_log_impl(&dword_1A90C6000, v18, OS_LOG_TYPE_DEFAULT, "%s Set domain - is_tracker %d domain %s owner %s, tracker domain %s", buf, 0x30u);
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }
  }

  v21 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
  {
    v28 = v32;
    v29 = "<n/a>";
    if (!v32)
    {
      v28 = "<n/a>";
    }

    if (v7)
    {
      v29 = v7;
    }

    *buf = 136316163;
    v34 = "ne_socket_set_domains";
    v35 = 1024;
    *v36 = v31;
    *&v36[4] = 2081;
    *&v36[6] = v6;
    *&v36[14] = 2081;
    *&v36[16] = v28;
    v37 = 2081;
    v38 = v29;
    _os_log_debug_impl(&dword_1A90C6000, v21, OS_LOG_TYPE_DEBUG, "%s Set domain - is_tracker %d domain <%{private}s> owner <%{private}s>, tracker domain <%{private}s>", buf, 0x30u);
  }

  v10 = 0;
LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

int ne_socket_set_attribution(int socket, ne_socket_attribution_t attribution)
{
  v19 = *MEMORY[0x1E69E9840];
  if (socket < 0)
  {
    goto LABEL_20;
  }

  v14 = attribution == NE_SOCKET_ATTRIBUTION_USER;
  v4 = setsockopt(socket, 0xFFFF, 4390, &v14, 4u);
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v5 = ne_log_obj_log_obj;
  if (!v4)
  {
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "developer";
      v16 = "ne_socket_set_attribution";
      *buf = 136315650;
      if (attribution == NE_SOCKET_ATTRIBUTION_USER)
      {
        v9 = "user";
      }

      v17 = 2080;
      *v18 = v9;
      *&v18[8] = 1024;
      *&v18[10] = v14;
      _os_log_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_DEFAULT, "%s: marking socket attribution as %s <non-app-initiated flag %d>", buf, 0x1Cu);
    }

    if (attribution != NE_SOCKET_ATTRIBUTION_DEVELOPER)
    {
      goto LABEL_17;
    }

    v10 = ne_session_set_socket_context_attribute(socket, 0);
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v11 = ne_log_obj_log_obj;
    if (v10)
    {
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "ne_socket_set_attribution";
        _os_log_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_DEFAULT, "%s: Cleared attribution context for developer attribution", buf, 0xCu);
      }

LABEL_17:
      v4 = 0;
      goto LABEL_21;
    }

    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "ne_socket_set_attribution";
      _os_log_error_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_ERROR, "%s: Could not clear attribution context for developer attribution", buf, 0xCu);
    }

LABEL_20:
    v4 = 22;
    goto LABEL_21;
  }

  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    v6 = v14;
    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136315650;
    v16 = "ne_socket_set_attribution";
    v17 = 1024;
    *v18 = v6;
    *&v18[4] = 2080;
    *&v18[6] = v8;
    _os_log_error_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_ERROR, "%s: Could not set SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED to %d. Received error: %s", buf, 0x1Cu);
  }

LABEL_21:
  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

int ne_socket_set_website_attribution(int socket, const char *hostname)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v2 = 22;
  if ((socket & 0x80000000) == 0 && hostname)
  {
    v5 = setsockopt(socket, 0xFFFF, 4390, &v15, 4u);
    if (v5)
    {
      v2 = v5;
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v6 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v7 = v15;
        v8 = __error();
        v9 = strerror(*v8);
        *buf = 136315650;
        v17 = "ne_socket_set_website_attribution";
        v18 = 1024;
        v19 = v7;
        v20 = 2080;
        v21 = v9;
        _os_log_error_impl(&dword_1A90C6000, v6, OS_LOG_TYPE_ERROR, "%s: Could not set SO_MARK_KNOWN_TRACKER_NON_APP_INITIATED to %d. Received error: %s", buf, 0x1Cu);
      }
    }

    else
    {
      v10 = ne_session_set_socket_context_attribute(socket, hostname);
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v11 = ne_log_obj_log_obj;
      if (v10)
      {
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v17 = "ne_socket_set_website_attribution";
          v18 = 1024;
          v19 = v15;
          _os_log_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_DEFAULT, "%s: marking socket attribution as user <non-app-initiated flag %d> with website context", buf, 0x12u);
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }
        }

        v12 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315651;
          v17 = "ne_socket_set_website_attribution";
          v18 = 1024;
          v19 = v15;
          v20 = 2081;
          v21 = hostname;
          _os_log_debug_impl(&dword_1A90C6000, v12, OS_LOG_TYPE_DEBUG, "%s: marking socket attribution as user <non-app-initiated flag %d> with website context <%{private}s>", buf, 0x1Cu);
        }

        v2 = 0;
      }

      else
      {
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v17 = "ne_socket_set_website_attribution";
          _os_log_error_impl(&dword_1A90C6000, v11, OS_LOG_TYPE_ERROR, "%s: Could not set attribution context", buf, 0xCu);
        }

        v2 = 22;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

int ne_socket_set_is_app_initiated(int socket, BOOL is_app_initiated)
{
  if (is_app_initiated)
  {
    v2 = NE_SOCKET_ATTRIBUTION_DEVELOPER;
  }

  else
  {
    v2 = NE_SOCKET_ATTRIBUTION_USER;
  }

  return ne_socket_set_attribution(socket, v2);
}

void ne_tracker_create_xcode_issue(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_11;
  }

  should_save_stacktrace = ne_tracker_should_save_stacktrace();
  v3 = should_save_stacktrace;
  if (ne_tracker_create_xcode_issue_onceToken == -1)
  {
    if (should_save_stacktrace)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(&ne_tracker_create_xcode_issue_onceToken, &__block_literal_global_256);
    if (v3)
    {
LABEL_4:
      v4 = ne_tracker_create_xcode_issue_poi_handle;
      if (os_log_type_enabled(ne_tracker_create_xcode_issue_poi_handle, OS_LOG_TYPE_FAULT))
      {
        v7 = 136315138;
        v8 = a1;
        _os_log_fault_impl(&dword_1A90C6000, v4, OS_LOG_TYPE_FAULT, "%s is not listed in your app’s NSPrivacyTrackingDomain key in any privacy manifest. It may be following users across multiple apps and websites to create a profile about users of apps that contact this domain.", &v7, 0xCu);
      }

      goto LABEL_11;
    }
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v5 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = a1;
    _os_log_impl(&dword_1A90C6000, v5, OS_LOG_TYPE_DEFAULT, "%s is not listed in your app’s NSPrivacyTrackingDomain key in any privacy manifest. It may be following users across multiple apps and websites to create a profile about users of apps that contact this domain.", &v7, 0xCu);
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
}

os_log_t __ne_tracker_create_xcode_issue_block_invoke()
{
  result = os_log_create("com.apple.neappprivacy", "PointsOfInterest");
  ne_tracker_create_xcode_issue_poi_handle = result;
  return result;
}

void *ne_tracker_copy_current_stacktrace(size_t *a1)
{
  __src[128] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1ED4C39A0 != -1)
    {
      dispatch_once(&qword_1ED4C39A0, &__block_literal_global_10);
    }

    if (state != -1)
    {
      dispatch_once(&state, &__block_literal_global_14);
    }

    bzero(__src, 0x400uLL);
    v2 = 8 * backtrace(__src, 128);
    *a1 = v2;
    v3 = malloc_type_malloc(v2, 0xB1BE5970uLL);
    v4 = v3;
    if (v3)
    {
      memcpy(v3, __src, *a1);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ne_log_large_obj()
{
  if (ne_log_large_obj_g_large_init != -1)
  {
    dispatch_once(&ne_log_large_obj_g_large_init, &__block_literal_global_5);
  }

  return ne_log_large_obj_large_log_obj;
}

os_log_t __ne_log_large_obj_block_invoke()
{
  result = os_log_create("com.apple.networkextension", "Large");
  ne_log_large_obj_large_log_obj = result;
  return result;
}

BOOL nelog_is_info_logging_enabled()
{
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v1 = ne_log_obj_log_obj;

  return os_log_type_enabled(v1, OS_LOG_TYPE_INFO);
}

void ne_print_backtrace()
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  v0 = backtrace(v11, 128);
  v1 = backtrace_symbols(v11, v0);
  v2 = v1;
  if (v0 >= 1)
  {
    v3 = v0;
    v4 = ne_log_obj_g_init;
    v5 = v1;
    do
    {
      if (v4 != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v6 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        v7 = *v5;
        *buf = 136315138;
        v10 = v7;
        _os_log_error_impl(&dword_1A90C6000, v6, OS_LOG_TYPE_ERROR, "    %s", buf, 0xCu);
        v4 = ne_log_obj_g_init;
      }

      else
      {
        v4 = -1;
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  free(v2);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t ne_trie_init(uint64_t result, uint64_t a2, uint64_t a3, size_t a4, int a5, uint64_t a6, double a7)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_22;
  }

  v8 = result;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  if (a2 && a3 && a4)
  {
    v10 = a2 + a3;
    v11 = __CFADD__(a2, a3);
    v12 = v10 + 1;
    v13 = ((v10 == -1) << 63) >> 63 != (v10 == -1);
    if (v11 || v13)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v15 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        v45 = "ne_trie_init";
        v16 = "%s: NETrie - Overflow while computing the number of nodes";
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    v14 = a2 + 1;
    if (((a2 == -1) << 63) >> 63 != (a2 == -1))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v15 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        v45 = "ne_trie_init";
        v16 = "%s: NETrie - Overflow while computing the number of maps";
LABEL_48:
        v19 = v15;
        v20 = 12;
        goto LABEL_49;
      }

      goto LABEL_22;
    }

    if (a4 >> 16 || ((v12 | v14) & 0xFFFFFFFFFFFF0000) != 0)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v18 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_22;
      }

      *buf = 136315906;
      v45 = "ne_trie_init";
      v46 = 2048;
      *v47 = a4;
      *&v47[8] = 2048;
      *v48 = v12;
      *&v48[8] = 2048;
      *v49 = v14;
      v16 = "%s: NETrie - Invalid bytes count (%lu), nodes count (%lu) or maps count (%lu)";
      v19 = v18;
      v20 = 42;
LABEL_49:
      _os_log_error_impl(&dword_1A90C6000, v19, OS_LOG_TYPE_ERROR, v16, buf, v20);
      result = 0;
      goto LABEL_22;
    }

    if (!is_mul_ok(v14, 0xC0uLL) || ((v21 = 10 * v12, v22 = 192 * v14, v23 = 10 * v12 + 192 * v14, !__CFADD__(10 * v12, 192 * v14)) ? (v24 = 0) : (v24 = 1), (v25 = a4 + v23, !__CFADD__(a4, v23)) ? (v26 = 0) : (v26 = 1), (v24 & 1) != 0 || v26))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v15 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315138;
        v45 = "ne_trie_init";
        v16 = "%s: NETrie - Overflow while computing trie memory sizes";
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    if (v25 > 0x100000)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v27 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_22;
      }

      *buf = 136315650;
      v45 = "ne_trie_init";
      v46 = 2048;
      *v47 = v25;
      *&v47[8] = 1024;
      *v48 = 0x100000;
      v16 = "%s: NETrie - Trie memory size (%lu) is too big (maximum is %u)";
      v19 = v27;
      v20 = 28;
      goto LABEL_49;
    }

    if (a6)
    {
      v30 = __CFADD__(v25, a6);
      v25 += a6;
      if (v30)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v15 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315138;
          v45 = "ne_trie_init";
          v16 = "%s: NETrie - Overflow while adding requested extra bytes";
          goto LABEL_48;
        }

        goto LABEL_22;
      }
    }

    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v31 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v45 = "ne_trie_init";
      v46 = 2048;
      *v47 = v12;
      *&v47[8] = 2048;
      *v48 = v14;
      *&v48[8] = 2048;
      *v49 = a4;
      *&v49[8] = 2048;
      v50 = a6;
      v51 = 2048;
      v52 = v25;
      v53 = 1024;
      v54 = a5;
      _os_log_debug_impl(&dword_1A90C6000, v31, OS_LOG_TYPE_DEBUG, "%s: NETrie - initializing (Nodes count = %lu, child maps count = %lu, bytes_count = %lu, extra_bytes = %lu, total memory size %lu fd %d)", buf, 0x44u);
      if ((a5 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    else if ((a5 & 0x80000000) == 0)
    {
LABEL_61:
      if (ftruncate(a5, v25 + 112))
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v32 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315394;
          v45 = "ne_trie_init";
          v46 = 1024;
          *v47 = v25 + 112;
          v16 = "%s: NETrie - failed to ftruncate mmap file to %d";
          v19 = v32;
          v20 = 18;
          goto LABEL_49;
        }

        goto LABEL_22;
      }

      v33 = mmap(0, v25 + 112, 3, 1, a5, 0);
      if (v33 == -1)
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v36 = ne_log_obj_log_obj;
        result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136315650;
          v45 = "ne_trie_init";
          v46 = 1024;
          *v47 = a5;
          *&v47[4] = 1024;
          *&v47[6] = v25 + 112;
          v16 = "%s: NETrie - Failed mmap <fd %d, size %d>";
          v19 = v36;
          v20 = 24;
          goto LABEL_49;
        }

        goto LABEL_22;
      }

      *(v8 + 40) = v33;
      *(v8 + 96) = 1;
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v34 = ne_log_obj_log_obj;
      if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v45 = "ne_trie_init";
        v46 = 1024;
        *v47 = a5;
        *&v47[4] = 1024;
        *&v47[6] = v25 + 112;
        *v48 = 2048;
        v35 = 112;
        *&v48[2] = 112;
        *v49 = 2048;
        *&v49[2] = v25;
        _os_log_debug_impl(&dword_1A90C6000, v34, OS_LOG_TYPE_DEBUG, "%s: NETrie - initialized with mmap <fd %d, file size %d hdr size %zu memory size %zu>", buf, 0x2Cu);
      }

      else
      {
        v35 = 112;
      }

LABEL_82:
      *v8 = xmmword_1A90DD720;
      *(v8 + 104) = a7;
      *(v8 + 64) = v25;
      *(v8 + 72) = v21;
      *(v8 + 80) = v22;
      *(v8 + 88) = a4;
      *(v8 + 52) = a4;
      *(v8 + 48) = v12;
      *(v8 + 50) = v14;
      v39 = (*(v8 + 40) + v35 + a6);
      *(v8 + 16) = v39;
      *(v8 + 54) = 0;
      bzero(v39, 10 * v12);
      v40 = &v39[v21];
      *(v8 + 24) = v40;
      *(v8 + 56) = 0;
      memset(v40, 255, 192 * v14);
      *(v8 + 32) = &v40[v22];
      *(v8 + 58) = 0;
      bzero(&v40[v22], a4);
      v41 = *(v8 + 54);
      v42 = -1;
      if (v41 < *(v8 + 48))
      {
        *(v8 + 54) = v41 + 1;
        *(*(v8 + 16) + 10 * v41 + 4) = -1;
        v42 = v41;
      }

      *(v8 + 60) = v42;
      result = 1;
      goto LABEL_22;
    }

    v37 = malloc_type_malloc(v25, 0xCEA5ABE5uLL);
    if (!v37)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v43 = ne_log_obj_log_obj;
      result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136315394;
        v45 = "ne_trie_init";
        v46 = 2048;
        *v47 = v25;
        v16 = "%s: NETrie - Failed to allocate %lu bytes of memory for the trie";
        v19 = v43;
        v20 = 22;
        goto LABEL_49;
      }

      goto LABEL_22;
    }

    *(v8 + 40) = v37;
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v38 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v45 = "ne_trie_init";
      v46 = 2048;
      *v47 = v25;
      _os_log_debug_impl(&dword_1A90C6000, v38, OS_LOG_TYPE_DEBUG, "%s: NETrie - initialized with malloc %zu", buf, 0x16u);
    }

    v35 = 0;
    goto LABEL_82;
  }

  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v15 = ne_log_obj_log_obj;
  result = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136315138;
    v45 = "ne_trie_init";
    v16 = "%s: NETrie - null trie, no prefix/leaf count or no byte count";
    goto LABEL_48;
  }

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ne_trie_save_to_file(uint64_t result)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (*(result + 96) == 1)
    {
      v1 = *(result + 40);
      v2 = *result;
      v3 = *(result + 32);
      v1[1] = *(result + 16);
      v1[2] = v3;
      *v1 = v2;
      v4 = *(result + 48);
      v5 = *(result + 64);
      v6 = *(result + 96);
      v1[5] = *(result + 80);
      v1[6] = v6;
      v1[3] = v4;
      v1[4] = v5;
      if (msync(*(result + 40), *(result + 64) + 112, 16) == -1)
      {
        v8 = *__error();
        if (strerror_r(v8, buf, 0x80uLL))
        {
          buf[0] = 0;
        }

        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v9 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_FAULT))
        {
          v11 = 136315650;
          v12 = "ne_trie_save_to_file";
          v13 = 1024;
          v14 = v8;
          v15 = 2080;
          v16 = buf;
          _os_log_fault_impl(&dword_1A90C6000, v9, OS_LOG_TYPE_FAULT, "%s: NETrie - Failed msync: [%d] %s", &v11, 0x1Cu);
        }
      }

      else
      {
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v7 = ne_log_obj_log_obj;
        if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v18 = "ne_trie_save_to_file";
          _os_log_debug_impl(&dword_1A90C6000, v7, OS_LOG_TYPE_DEBUG, "%s: NETrie - done msync", buf, 0xCu);
        }
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ne_trie_has_high_ascii(char *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (*a1 < 0)
  {
    return 1;
  }

  v2 = 0;
  while ((a2 & 0x7FFFFFFF) - 1 != v2)
  {
    v3 = a1[++v2];
    if (v3 < 0)
    {
      return v2 < (a2 & 0x7FFFFFFFu);
    }
  }

  v2 = a2 & 0x7FFFFFFF;
  return v2 < (a2 & 0x7FFFFFFFu);
}

uint64_t ne_trie_insert(uint64_t a1, char *a2, size_t __n, const void *a4, size_t a5, int a6)
{
  v67 = *MEMORY[0x1E69E9840];
  LOWORD(v6) = -1;
  if (!__n || !a2 || !*(a1 + 40))
  {
    goto LABEL_10;
  }

  v8 = __n;
  if (__n >> 16 || (v9 = *(a1 + 58), v9 + __n > *(a1 + 52)))
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v66 = "ne_trie_insert";
    v18 = "%s: NETrie - failed insert - out of allocated memory";
    goto LABEL_80;
  }

  if (*a2 < 0)
  {
    goto LABEL_16;
  }

  v15 = 1;
  do
  {
    if (__n == v15)
    {
      goto LABEL_20;
    }

    v16 = v15;
    v17 = a2[v15++];
  }

  while ((v17 & 0x80000000) == 0);
  if (v16 < __n)
  {
LABEL_16:
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v66 = "ne_trie_insert";
    v18 = "%s: NETrie - failed insert - non-printable ASCII not supported";
    goto LABEL_80;
  }

LABEL_20:
  v19 = (*(a1 + 32) + v9);
  if (a6)
  {
    v20 = __n;
    do
    {
      *v19++ = a2[--v20];
    }

    while (v20);
  }

  else
  {
    memcpy(v19, a2, __n);
  }

  v21 = *(a1 + 60);
  LOWORD(v22) = *(a1 + 58);
  v63 = a5;
  if (v21 == 0xFFFF)
  {
    v23 = 0xFFFF;
LABEL_27:
    v6 = *(a1 + 54);
    if (v6 >= *(a1 + 48))
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v10 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315138;
      v66 = "ne_trie_insert";
      v18 = "%s: NETrie - Ran out of trie nodes while inserting a new leaf";
    }

    else
    {
      *(a1 + 54) = v6 + 1;
      v24 = *(a1 + 16);
      *(v24 + 10 * v6 + 4) = -1;
      v25 = *(a1 + 58);
      if (v25 + v8 > *(a1 + 52))
      {
        *(v24 + 10 * v6) = -1;
LABEL_88:
        if (ne_log_obj_g_init != -1)
        {
          dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
        }

        v10 = ne_log_obj_log_obj;
        if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 136315138;
        v66 = "ne_trie_insert";
        v18 = "%s: NETrie - Ran out of bytes while inserting a new leaf";
        goto LABEL_80;
      }

      if (v25 != v22)
      {
        memmove((*(a1 + 32) + v25), (*(a1 + 32) + v22), v8);
        LOWORD(v22) = *(a1 + 58);
        v24 = *(a1 + 16);
      }

      *(a1 + 58) = v22 + v8;
      *(v24 + 10 * v6) = v25;
      if (v25 == 0xFFFF)
      {
        goto LABEL_88;
      }

      *(v24 + 10 * v6 + 2) = *(v24 + 10 * v6 + 2) & 0x8000 | v8 & 0x7FFF;
      *(*(a1 + 16) + 10 * v6 + 2) |= 0x8000u;
      if (a4 && v63)
      {
        memcpy((*(a1 + 32) + *(a1 + 58)), a4, v63);
        v52 = *(a1 + 58);
        if (v52 + v63 <= *(a1 + 52))
        {
          *(a1 + 58) = v52 + v63;
        }

        else
        {
          LOWORD(v52) = -1;
        }

        v53 = *(a1 + 16);
        v54 = v53 + 10 * v6;
        *(v54 + 6) = v52;
        *(v54 + 8) = v63;
      }

      else
      {
        v53 = *(a1 + 16);
      }

      v55 = v53 + 10 * v23;
      v58 = *(v55 + 4);
      v57 = (v55 + 4);
      v56 = v58;
      if (v58 != 0xFFFF)
      {
LABEL_107:
        v59 = *(*(a1 + 32) + *(v53 + 10 * v6));
        if (v59 < 32)
        {
          if (ne_log_obj_g_init != -1)
          {
            dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
          }

          v60 = ne_log_obj_log_obj;
          if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
          {
            v61 = *(*(a1 + 32) + *(*(a1 + 16) + 10 * v6));
            *buf = 67109120;
            LODWORD(v66) = v61;
            _os_log_error_impl(&dword_1A90C6000, v60, OS_LOG_TYPE_ERROR, "NETrie - out of printable acsii range <%X>", buf, 8u);
          }
        }

        else
        {
          *(*(a1 + 24) + 192 * v56 + 2 * (v59 - 32)) = v6;
        }

        goto LABEL_10;
      }

      v56 = *(a1 + 56);
      if (v56 < *(a1 + 50))
      {
        *(a1 + 56) = v56 + 1;
        *v57 = v56;
        goto LABEL_107;
      }

      *v57 = -1;
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v10 = ne_log_obj_log_obj;
      if (!os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136315138;
      v66 = "ne_trie_insert";
      v18 = "%s: NETrie - Ran out of child maps while inserting a new leaf";
    }

LABEL_80:
    _os_log_error_impl(&dword_1A90C6000, v10, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    goto LABEL_9;
  }

  v26 = v22 + v8;
  if (a4)
  {
    v27 = a5 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  v62 = v28;
  v29 = (v22 + v8);
  v30 = *(a1 + 16);
  v31 = *(a1 + 60);
  v64 = v22 + v8;
  while (1)
  {
    v32 = (v30 + 10 * v31);
    v33 = *v32;
    if (v33 >= ((v32[1] & 0x7FFF) + v33) || v22 >= v26)
    {
      LOWORD(v34) = *v32;
    }

    else
    {
      v22 = v22;
      v34 = *v32;
      do
      {
        if (*(*(a1 + 32) + v34) != *(*(a1 + 32) + v22))
        {
          break;
        }

        ++v34;
        ++v22;
        if (v34 >= ((v32[1] & 0x7FFF) + v33))
        {
          break;
        }
      }

      while (v22 < v29);
    }

    v8 = v26 - v22;
    if ((v32[1] & 0x7FFF) + v33 > v34)
    {
      break;
    }

    LODWORD(v6) = v31;
LABEL_70:
    if (!v8)
    {
      goto LABEL_10;
    }

    v30 = *(a1 + 16);
    v23 = v6;
    if (*(v30 + 10 * v6 + 4) != 0xFFFFLL)
    {
      v49 = *(*(a1 + 32) + v22);
      if (v49 >= 32)
      {
        v31 = *(*(a1 + 24) + 192 * *(v30 + 10 * v6 + 4) + 2 * (v49 - 32));
        v21 = v6;
        if (v31 != 0xFFFF)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  LODWORD(v6) = *(a1 + 54);
  if (v6 >= *(a1 + 48))
  {
    if (ne_log_obj_g_init != -1)
    {
      dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
    }

    v10 = ne_log_obj_log_obj;
    if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v66 = "ne_trie_insert";
      v18 = "%s: NETrie - Ran out of trie nodes while splitting an existing node";
      goto LABEL_80;
    }

    goto LABEL_9;
  }

  *(a1 + 54) = v6 + 1;
  v35 = (v30 + 10 * v6);
  v35[2] = -1;
  *v35 = v33;
  v35[1] = v35[1] & 0x8000 | (v34 - *v32) & 0x7FFF;
  if (v26 == v22)
  {
    v36 = *(a1 + 16) + 10 * v6;
    *(v36 + 2) |= 0x8000u;
    if (v62)
    {
      memcpy((*(a1 + 32) + *(a1 + 58)), a4, v63);
      v37 = *(a1 + 58);
      if (v37 + v63 <= *(a1 + 52))
      {
        *(a1 + 58) = v37 + v63;
      }

      else
      {
        LOWORD(v37) = -1;
      }

      v38 = *(a1 + 16) + 10 * v6;
      *(v38 + 6) = v37;
      *(v38 + 8) = v63;
      v26 = v64;
    }
  }

  v39 = *(a1 + 56);
  if (v39 < *(a1 + 50))
  {
    *(a1 + 56) = v39 + 1;
    *(*(a1 + 16) + 10 * v6 + 4) = v39;
    v40 = *(a1 + 32);
    v41 = *(v40 + v34);
    if (v41 < 32)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v42 = ne_log_obj_log_obj;
      v43 = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      v40 = *(a1 + 32);
      if (v43)
      {
        v50 = *(v40 + v34);
        *buf = 67109120;
        LODWORD(v66) = v50;
        _os_log_error_impl(&dword_1A90C6000, v42, OS_LOG_TYPE_ERROR, "NETrie - out of printable acsii range <%X>", buf, 8u);
        v40 = *(a1 + 32);
      }

      v26 = v64;
    }

    else
    {
      *(*(a1 + 24) + 192 * v39 + 2 * (v41 - 32)) = v31;
    }

    v44 = *(a1 + 16);
    v45 = *(v40 + *(v44 + 10 * v6));
    if (v45 < 32)
    {
      if (ne_log_obj_g_init != -1)
      {
        dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
      }

      v46 = ne_log_obj_log_obj;
      v47 = os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR);
      v44 = *(a1 + 16);
      if (v47)
      {
        v51 = *(*(a1 + 32) + *(v44 + 10 * v6));
        *buf = 67109120;
        LODWORD(v66) = v51;
        _os_log_error_impl(&dword_1A90C6000, v46, OS_LOG_TYPE_ERROR, "NETrie - out of printable acsii range <%X>", buf, 8u);
        v44 = *(a1 + 16);
      }

      v26 = v64;
    }

    else
    {
      *(*(a1 + 24) + 192 * *(v44 + 10 * v21 + 4) + 2 * (v45 - 32)) = v6;
    }

    v48 = (v44 + 10 * v31);
    *v48 = v34;
    v48[1] = v48[1] & 0x8000 | (v48[1] - *(v44 + 10 * v6 + 2)) & 0x7FFF;
    goto LABEL_70;
  }

  *(*(a1 + 16) + 10 * v6 + 4) = -1;
  if (ne_log_obj_g_init != -1)
  {
    dispatch_once(&ne_log_obj_g_init, &__block_literal_global_268);
  }

  v10 = ne_log_obj_log_obj;
  if (os_log_type_enabled(ne_log_obj_log_obj, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v66 = "ne_trie_insert";
    v18 = "%s: NETrie - Ran out of child maps while splitting an existing node";
    goto LABEL_80;
  }

LABEL_9:
  LOWORD(v6) = -1;
LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t ne_trie_search(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7, uint64_t a8, _DWORD *a9, uint64_t (*a10)(void, void))
{
  LOWORD(v10) = -1;
  if (!a3)
  {
    return v10;
  }

  if (!a2)
  {
    return v10;
  }

  v12 = a1;
  if (!*(a1 + 40))
  {
    return v10;
  }

  v13 = a9;
  v10 = *(a1 + 60);
  if (a6)
  {
    v14 = (a3 - 1);
  }

  else
  {
    v14 = 0;
  }

  v44 = a3;
  if (v10 == 0xFFFF)
  {
LABEL_58:
    if (v13)
    {
      if (a6)
      {
        if ((v14 & 0x8000) == 0)
        {
          while ((*(a2 + v14) & 0x80000000) == 0)
          {
            v41 = v14;
            LOWORD(v14) = v14 - 1;
            if (v41 < 1)
            {
              goto LABEL_71;
            }
          }

LABEL_68:
          *v13 = 1;
        }
      }

      else if (v44 > v14)
      {
        while ((*(a2 + v14) & 0x80000000) == 0)
        {
          LOWORD(v14) = v14 + 1;
          LOWORD(v10) = -1;
          if (v44 <= v14)
          {
            return v10;
          }
        }

        goto LABEL_68;
      }
    }

LABEL_71:
    LOWORD(v10) = -1;
    return v10;
  }

  v16 = a3;
  v17 = *(a1 + 16);
  v46 = a3;
  v18 = 0xFFFFLL;
  v50 = a7;
  v47 = v16;
  do
  {
    v19 = v10;
    v20 = (v17 + 10 * v10);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v22 & 0x7FFF) + v21;
    if (!a6)
    {
      if (v21 >= ((v20[1] & 0x7FFF) + v21))
      {
LABEL_26:
        v24 = v14;
      }

      else
      {
        v24 = v14 + (v22 & 0x7FFF);
        v26 = v14;
        if (v14 <= v16)
        {
          v27 = v16;
        }

        else
        {
          v27 = v14;
        }

        v28 = v46;
        if (v14 > v46)
        {
          v28 = v14;
        }

        while (1)
        {
          if (v28 == v26)
          {
            v24 = v27;
            goto LABEL_27;
          }

          if (*(a2 + v26) != *(v12[4] + v21))
          {
            break;
          }

          ++v21;
          ++v26;
          if (v23 == v21)
          {
            LOWORD(v21) = v23;
            goto LABEL_27;
          }
        }

        v24 = v26;
      }

LABEL_27:
      v29 = v24;
      v14 = v24;
      if ((v24 & 0x8000) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (v21 >= ((v20[1] & 0x7FFF) + v21) || (v14 & 0x8000) != 0)
    {
      goto LABEL_26;
    }

    while (*(a2 + v14) == *(v12[4] + v21))
    {
      ++v21;
      v24 = (v14 - 1);
      if (v21 < v23)
      {
        v25 = v14;
        v14 = (v14 - 1);
        if (v25 > 0)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    v29 = v14;
LABEL_30:
    if (v16 > v29 && *(a2 + v14) < 0)
    {
      if (a9)
      {
        *a9 = 1;
      }

      goto LABEL_71;
    }

LABEL_32:
    if (v21 != v23)
    {
      break;
    }

    if (a6 && (v14 & 0x8000) != 0)
    {
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v30 = 0;
      v31 = v16 == v29;
      if (a7 && v16 != v29)
      {
        v31 = 0;
        v30 = *(a2 + v14) == a8;
      }
    }

    if (v22 < 0)
    {
      v32 = v12[4];
      v33 = v32 + v20[3];
      v34 = v20[4];
      if (!a10)
      {
        goto LABEL_42;
      }

      v35 = a8;
      v36 = a6;
      v49 = v32 + v20[3];
      v37 = v18;
      v38 = a10;
      v39 = a10(v49, v20[4]);
      a10 = v38;
      v18 = v37;
      v33 = v49;
      v19 = v10;
      a6 = v36;
      a8 = v35;
      v16 = v47;
      v12 = a1;
      if (v39)
      {
LABEL_42:
        if (v31)
        {
          if (a4 && a5)
          {
            *a4 = v33;
            *a5 = v34;
          }

          return v10;
        }

        if (v30)
        {
          v18 = v10;
        }

        else
        {
          v18 = v18;
        }
      }

      a7 = v50;
    }

    v17 = v12[2];
    if (*(v17 + 10 * v19 + 4) == 0xFFFFLL)
    {
      break;
    }

    v40 = *(a2 + v14);
    if (v40 < 32)
    {
      break;
    }

    v10 = *(v12[3] + 192 * *(v17 + 10 * v19 + 4) + 2 * (v40 - 32));
  }

  while (v10 != 0xFFFF);
  v13 = a9;
  if (v18 == 0xFFFF)
  {
    goto LABEL_58;
  }

  if (a4 && a5)
  {
    *a4 = v12[4] + *(v17 + 10 * v18 + 6);
    *a5 = *(v12[2] + 10 * v18 + 8);
  }

  LOWORD(v10) = v18;
  return v10;
}