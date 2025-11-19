uint64_t __dnssd_svcb_copy_doh_path_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    asprintf((*(*(a1 + 32) + 8) + 24), "%.*s", a3, a2);
  }

  return 0;
}

void *__dnssd_svcb_copy_odoh_config_block_invoke(uint64_t a1, const void *a2, size_t size)
{
  if (!a2 || !size)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, size, 0x9A3689B8uLL);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = result;
    **(a1 + 40) = size;
    memcpy(*(*(*(a1 + 32) + 8) + 24), a2, size);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t __dnssd_svcb_access_alpn_values_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    v6 = 0;
    do
    {
      v6 += 1 + *(a2 + v6);
      memset(v15, 0, 255);
      if (v6 > a3)
      {
        break;
      }

      __memcpy_chk();
      if (((*(*(a1 + 32) + 16))(*(a1 + 32), v15, v7, v8, v9, v10, v11, v12) & 1) == 0)
      {
        break;
      }
    }

    while (v6 < a3);
  }

  v13 = *MEMORY[0x29EDCA608];
  return 0;
}

void _mdns_domain_name_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    free(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t _mdns_domain_name_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 61) == 1 && *(a2 + 61) == 1)
  {
    return memcmp(*(a1 + 24), *(a2 + 24), v2) == 0;
  }

  return DomainNameEqual(*(a1 + 24), *(a2 + 24));
}

void *_mdns_domain_name_copy_description(void *a1, int a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
    {
      goto LABEL_9;
    }

    v8 = a1[5];
    if (a3)
    {
      if (DNSMessagePrintObfuscatedString(v12, 64, v8) < 0)
      {
        v8 = "«REDACTED»";
      }

      else
      {
        v8 = v12;
      }
    }

    if (mdns_string_builder_append_formatted(v7, "%s", v8))
    {
LABEL_9:
      v9 = 0;
    }

    else
    {
      v9 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t _mdns_domain_name_cf_callback_hash(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 52));
  if ((*(a1 + 60) & 1) == 0)
  {
    v2 = -2128831035;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 24);
      do
      {
        v6 = *v4++;
        v5 = v6;
        v7 = v6 + 32;
        if ((v6 - 65) < 0x1A)
        {
          v5 = v7;
        }

        v2 = 16777619 * (v5 ^ v2);
        --v3;
      }

      while (v3);
    }

    *(a1 + 56) = v2;
    *(a1 + 60) = 1;
  }

  os_unfair_lock_unlock((a1 + 52));
  return *(a1 + 56);
}

void *mdns_domain_name_create(char *a1, uint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v7[0] = 0;
  appended = DomainNameAppendString(v7, a1, 0);
  if (appended)
  {
    result = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = mdns_domain_name_create_with_labels(v7, &appended);
  if (a3)
  {
LABEL_3:
    *a3 = appended;
  }

LABEL_4:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *mdns_domain_name_create_with_labels(_BYTE *a1, int *a2)
{
  v8 = 0;
  if (!*a1)
  {
    if (_mdns_domain_name_get_root_s_once != -1)
    {
      dispatch_once(&_mdns_domain_name_get_root_s_once, &__block_literal_global_10);
    }

    v4 = _mdns_domain_name_get_root_s_root;
    if (_mdns_domain_name_get_root_s_root)
    {
      goto LABEL_7;
    }
  }

  v4 = _mdns_domain_name_create(a1, &v8);
  v5 = v8;
  if (v8)
  {
    v6 = 0;
  }

  else
  {
LABEL_7:
    v5 = 0;
    v6 = v4;
    v8 = 0;
    v4 = 0;
  }

  if (a2)
  {
    *a2 = v5;
  }

  if (v4)
  {
    os_release(v4);
  }

  return v6;
}

void *_mdns_domain_name_create(_BYTE *a1, int *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = _os_object_alloc();
  v5 = v4;
  if (v4)
  {
    v6 = &_mdns_domain_name_kind;
    v4[2] = &_mdns_domain_name_kind;
    do
    {
      v7 = v6[2];
      if (v7)
      {
        v7(v5);
      }

      v6 = *v6;
    }

    while (v6);
    DomainNameDupEx(a1, 0, v5 + 3, v5 + 4);
    v8 = DomainNameToString(v5[3], 0, __s1, 0);
    if (v8)
    {
      v19 = v8;
      v4 = v5;
      v5 = 0;
    }

    else
    {
      v9 = strdup(__s1);
      if (!v9)
      {
        __break(1u);
      }

      v5[5] = v9;
      *(v5 + 13) = 0;
      v10 = v5[3];
      v11 = *v10;
      if (*v10)
      {
        v12 = 0;
        v13 = v5[3];
        while (v11 <= 0x3F)
        {
          v13 += v11 + 1;
          if (v13 - v10 > 255)
          {
            break;
          }

          ++v12;
          v11 = *v13;
          if (!*v13)
          {
            goto LABEL_15;
          }
        }

        v12 = -1;
      }

      else
      {
        v12 = 0;
      }

LABEL_15:
      *(v5 + 12) = v12;
      v14 = v5[4];
      if (v14)
      {
        if (*v10 - 65 >= 0x1A)
        {
          v16 = 0;
          v17 = v10 + 1;
          while (v14 - 1 != v16)
          {
            v18 = v17[v16++] - 65;
            if (v18 <= 0x19)
            {
              goto LABEL_24;
            }
          }

          v16 = v5[4];
LABEL_24:
          v15 = v16 >= v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 1;
      }

      v4 = 0;
      v19 = 0;
      *(v5 + 61) = v15;
    }
  }

  else
  {
    v19 = -6728;
  }

  if (a2)
  {
    *a2 = v19;
  }

  if (v4)
  {
    os_release(v4);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v5;
}

void *___mdns_domain_name_get_root_block_invoke()
{
  v1 = 0;
  result = _mdns_domain_name_create(&v1, 0);
  *(result + 2) = 0x7FFFFFFF;
  *(result + 3) = 0x7FFFFFFF;
  _mdns_domain_name_get_root_s_root = result;
  return result;
}

dispatch_queue_t ___mdns_dso_session_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mdns.dso-session-queue", 0);
  _mdns_dso_session_queue_s_queue = result;
  return result;
}

os_log_t ___mdns_dso_session_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "dso_session");
  _mdns_dso_session_log_s_log = result;
  return result;
}

void __mdns_dso_session_invalidate_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((*(*(*(a1 + 32) + 16) + 184))())
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 72);
    if (v3)
    {
      dispatch_source_cancel(*(v2 + 72));
      dispatch_release(v3);
      *(v2 + 72) = 0;
    }

    *(v2 + 32) = 0;
    *(v2 + 104) = 0;
    v4 = *(v2 + 80);
    if (v4)
    {
      nw_connection_cancel(v4);
      v5 = *(v2 + 80);
      if (v5)
      {
        nw_release(v5);
        *(v2 + 80) = 0;
      }

      v6 = *(v2 + 88);
      if (v6)
      {
        free(v6);
        *(v2 + 88) = 0;
      }

      v7 = *(v2 + 96);
      if (v7)
      {
        free(v7);
        *(v2 + 96) = 0;
      }

      *(v2 + 112) = 0;
    }

    (*(*(v2 + 16) + 176))(v2, 0, 0, 1, 0, 0);
    v8 = *(a1 + 32);
    v9 = v8[7];
    if (v9)
    {
      _Block_release(v9);
      v8[7] = 0;
    }

    v10 = v8[8];
    if (v10)
    {
      _Block_release(v10);
      v8[8] = 0;
    }

    (*(v8[2] + 192))(v8);
  }

  v11 = *(*(a1 + 32) + 24);
  v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (!v12 && (!*__error() || *__error()))
  {
    v12 = 1;
  }

  v13 = (v12 - v11) / 0xF4240;
  if (__ROR8__(0x790FB65668C26139 * v13, 6) <= 0x10C6F7A0B5EDuLL)
  {
    v14 = (v12 - v11) / 0xF4240;
  }

  else
  {
    v14 = v13 + 1;
  }

  if (_mdns_dso_session_log_s_once != -1)
  {
    dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_584);
  }

  v15 = _mdns_dso_session_log_s_log;
  if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(a1 + 32) + 40);
    v18 = 134218496;
    v19 = v16;
    v20 = 2048;
    v21 = v14 / 1000;
    v22 = 2048;
    v23 = v14 % 1000;
    _os_log_impl(&dword_2990ED000, v15, OS_LOG_TYPE_DEFAULT, "[DSO%llu] DSO session invalidated -- duration: %{mdns:time_duration}lld %lldms", &v18, 0x20u);
  }

  os_release(*(a1 + 32));
  v17 = *MEMORY[0x29EDCA608];
}

void _mdns_extended_dns_error_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    xpc_release(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_extended_dns_error_copy_description(uint64_t a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1) || mdns_string_builder_append_formatted(v7, "code: %u", *(a1 + 32)) || (v9 = *(a1 + 32), v9 <= 0x18) && mdns_string_builder_append_formatted(v7, " (%s)", off_29EF095A0[v9]) || mdns_string_builder_append_formatted(v7, ", extra-text: ") || (!a3 ? ((v11 = *(a1 + 24)) == 0 || !xpc_string_get_string_ptr(v11) ? (appended = mdns_string_builder_append_formatted(v7, "«EXTRA TEXT»")) : (appended = mdns_string_builder_append_formatted(v7, "'%s'"))) : (appended = mdns_string_builder_append_formatted(v7, "«REDACTED»", v13)), appended))
  {
    v8 = 0;
  }

  else
  {
    v8 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v8;
}

xpc_object_t ___mdns_copy_empty_string_block_invoke()
{
  result = xpc_string_create("");
  _mdns_copy_empty_string_s_empty_string = result;
  return result;
}

uint64_t mdns_fnv1a_32_hash(unsigned __int8 *a1, uint64_t a2)
{
  for (result = 2166136261; a2; --a2)
  {
    v4 = *a1++;
    result = 16777619 * (result ^ v4);
  }

  return result;
}

size_t mdns_snprintf_add(char **a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    v10 = *a1;
  }

  else
  {
    v10 = 0;
  }

  if (a1)
  {
    v11 = a2 - v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = vsnprintf(v10, v11, a3, &a9);
  v13 = v12;
  if ((v12 & 0x80000000) == 0 && v11)
  {
    if (v11 <= v12)
    {
      v12 = strlen(v10);
    }

    else
    {
      v12 = v12;
    }

    *a1 = &v10[v12];
  }

  return v13;
}

void mdns_replace_string(void **a1, char *__s1)
{
  if (__s1)
  {
    v3 = strdup(__s1);
    if (v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = 0;
LABEL_5:
  if (*a1)
  {
    free(*a1);
  }

  *a1 = v3;
}

char *mdns_cfstring_to_utf8_cstring(const __CFString *a1)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v1 = strdup(CStringPtr);
    if (!v1)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding == -1)
    {
      goto LABEL_9;
    }

    v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x1E250E3AuLL);
    if (!v6)
    {
      goto LABEL_9;
    }

    v1 = v6;
    usedBufLen = 0;
    v9.location = 0;
    v9.length = Length;
    if (CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, v6, MaximumSizeForEncoding, &usedBufLen) != Length)
    {
LABEL_10:
      free(v1);
      return 0;
    }

    v1[usedBufLen] = 0;
  }

  return v1;
}

uint64_t __Block_byref_object_copy__731(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __http_task_create_dns_query_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a2;
  v7 = a3;
  v8 = a4;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    v12 = getHeuristicsQueue();
    dispatch_async(v12, &__block_literal_global_276);
    goto LABEL_17;
  }

  if (!v8)
  {
    nw_activity_complete_with_reason();
    goto LABEL_10;
  }

  nw_activity_complete_with_reason();
LABEL_5:
  v9 = [v8 domain];
  v10 = *MEMORY[0x29EDB9F08];
  if ([v9 isEqualToString:*MEMORY[0x29EDB9F08]])
  {
    v11 = [v8 code] == -999 || objc_msgSend(v8, "code") == -1009;
  }

  else
  {
    v11 = 0;
  }

  v13 = [v8 domain];
  if ([v13 isEqualToString:v10])
  {
    v14 = [v8 code] == -1001;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    goto LABEL_18;
  }

  v15 = [*(a1 + 32) URL];
  v16 = getHeuristicsQueue();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __dns_heuristics_report_resolution_failure_block_invoke;
  block[3] = &unk_29EF08C50;
  v20 = v15;
  v21 = v14;
  v12 = v15;
  dispatch_async(v16, block);

LABEL_17:
LABEL_18:
  [v7 statusCode];
  v17 = [v18 _createDispatchData];
  (*(*(a1 + 40) + 16))();
}

id _http_task_create_data_task(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__731;
  v12 = __Block_byref_object_dispose__732;
  v13 = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = ___http_task_create_data_task_block_invoke;
  v7[3] = &unk_29EF09B30;
  v7[5] = v4;
  v7[6] = &v8;
  v7[4] = v3;
  _http_task_shared_session_critical_region(v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void sub_299109E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___http_task_create_data_task_block_invoke(void *a1)
{
  v2 = g_shared_session;
  if (!g_shared_session)
  {
    if (_http_task_create_shared_session_s_once != -1)
    {
      dispatch_once(&_http_task_create_shared_session_s_once, &__block_literal_global_146);
    }

    v3 = [MEMORY[0x29EDB8518] ephemeralSessionConfiguration];
    [v3 setHTTPCookieStorage:0];
    [v3 setURLCache:0];
    [v3 setURLCredentialStorage:0];
    v4 = [MEMORY[0x29EDB8E50] setWithObjects:{@"User-Agent", @"Accept-Language", 0}];
    [v3 set_suppressedAutoAddedHTTPHeaders:v4];

    [v3 set_allowsTLSSessionTickets:1];
    [v3 set_allowsTCPFastOpen:1];
    [v3 set_disableAPWakeOnIdleConnections:1];
    v5 = objc_alloc_init(MEMORY[0x29EDBA088]);
    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    v6 = _mdns_resolver_queue_s_queue;
    [v5 setUnderlyingQueue:v6];

    v7 = [MEMORY[0x29EDB8510] sessionWithConfiguration:v3 delegate:_http_task_create_shared_session_delegate delegateQueue:v5];

    v8 = g_shared_session;
    g_shared_session = v7;

    v2 = g_shared_session;
  }

  v9 = [v2 dataTaskWithRequest:a1[4] completionHandler:a1[5]];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  return MEMORY[0x2A1C71028]();
}

void _http_task_shared_session_critical_region(void *a1)
{
  v1 = a1;
  os_unfair_lock_lock(&_http_task_shared_session_critical_region_s_lock);
  v1[2](v1);

  os_unfair_lock_unlock(&_http_task_shared_session_critical_region_s_lock);
}

uint64_t ___http_task_create_shared_session_block_invoke()
{
  [MEMORY[0x29EDB8510] _disableAppSSO];
  [MEMORY[0x29EDB8510] _disableATS];
  _http_task_create_shared_session_delegate = objc_alloc_init(MDNSHTTPSessionDelegate);

  return MEMORY[0x2A1C71028]();
}

void *http_task_create_pvd_query(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"https://%s/.well-known/pvd%s", a2, a3];
  v11 = objc_alloc(MEMORY[0x29EDB84F8]);
  v12 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:v10];
  v13 = [v11 initWithURL:v12];

  [v13 setHTTPMethod:@"GET"];
  [v13 setValue:@"application/pvd+json" forHTTPHeaderField:@"accept"];
  [v13 setValue:@"application/pvd+json" forHTTPHeaderField:@"content-type"];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__731;
  v27 = __Block_byref_object_dispose__732;
  v28 = nw_activity_create();
  if (v24[5])
  {
    nw_activity_activate();
  }

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __http_task_create_pvd_query_block_invoke;
  v19[3] = &unk_29EF097D8;
  v14 = v7;
  v20 = v14;
  v22 = &v23;
  v15 = v8;
  v21 = v15;
  v16 = _http_task_create_data_task(v13, v19);
  if (v16 && v24[5])
  {
    v17 = nw_activity_create();
    [v16 set_nw_activity:v17];
  }

  _Block_object_dispose(&v23, 8);
  objc_autoreleasePoolPop(v9);

  return v16;
}

void sub_29910A338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __http_task_create_pvd_query_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __http_task_create_pvd_query_block_invoke_2;
  block[3] = &unk_29EF09B30;
  block[4] = a2;
  v6 = *(a1 + 40);
  v4 = v6;
  v8 = v6;
  v5 = a2;
  dispatch_async(v3, block);
}

void __http_task_create_pvd_query_block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v15 = [MEMORY[0x29EDB9FF0] JSONObjectWithData:v2 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = _CFXPCCreateXPCObjectFromCFObject();
      v4 = [v15 objectForKeyedSubscript:@"expires"];
      v5 = [v15 objectForKeyedSubscript:@"seconds-remaining"];
      if (v3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || v5)
        {
          if (v5)
          {
            xpc_dictionary_set_uint64(v3, "seconds-remaining", [v5 unsignedLongLongValue]);
          }
        }

        else
        {
          v6 = objc_alloc_init(MEMORY[0x29EDB9F78]);
          v7 = [MEMORY[0x29EDB8E60] timeZoneForSecondsFromGMT:0];
          [v6 setTimeZone:v7];

          v8 = [MEMORY[0x29EDB8DE0] localeWithLocaleIdentifier:@"en_US_POSIX"];
          [v6 setLocale:v8];

          [v6 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
          [v6 setFormatterBehavior:0];
          v9 = [v6 dateFromString:v4];
          [v9 timeIntervalSinceNow];
          xpc_dictionary_set_uint64(v3, "seconds-remaining", v10);
        }
      }

      v14 = *(*(a1[6] + 8) + 40);
      nw_activity_complete_with_reason();
      (*(a1[5] + 16))();
    }

    else
    {
      v13 = *(*(a1[6] + 8) + 40);
      nw_activity_complete_with_reason();
      (*(a1[5] + 16))();
    }
  }

  else
  {
    v11 = *(*(a1[6] + 8) + 40);
    nw_activity_complete_with_reason();
    v12 = *(a1[5] + 16);

    v12();
  }
}

void http_task_cancel(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  [a1 cancel];

  objc_autoreleasePoolPop(v2);
}

void __http_task_prepare_for_system_sleep_block_invoke()
{
  if (g_shared_session)
  {
    [g_shared_session invalidateAndCancel];
    v0 = g_shared_session;
    g_shared_session = 0;
  }
}

void _mdns_interface_monitor_finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    nw_release(v3);
    a1[5] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    _Block_release(v4);
    a1[8] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    _Block_release(v5);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    free(v6);
    a1[10] = 0;
  }

  v7 = a1[15];
  if (v7)
  {
    nw_release(v7);
    a1[15] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    nw_release(v8);
    a1[16] = 0;
  }

  _mdns_interface_monitor_forget_signatures(a1);
}

void _mdns_interface_monitor_forget_signatures(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }

  *(a1 + 96) = 0;
  v3 = *(a1 + 104);
  if (v3)
  {
    free(v3);
    *(a1 + 104) = 0;
  }

  *(a1 + 112) = 0;
  *(a1 + 152) = 0;
}

char *_mdns_interface_monitor_copy_description(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = __s1;
  __s1[0] = 0;
  if (!a2 || (mdns_snprintf_add(&v24, &v26, "<%s: %p>: ", a4, a5, a6, a7, a8, *(*(a1 + 16) + 8)) & 0x80000000) == 0)
  {
    if (*(a1 + 136))
    {
      name = *(a1 + 80);
    }

    else
    {
      name = *(a1 + 128);
      if (name)
      {
        name = nw_interface_get_name(name);
        v10 = *(a1 + 136);
      }
    }

    v11 = "";
    if (name)
    {
      LOBYTE(v11) = name;
    }

    if ((mdns_snprintf_add(&v24, &v26, "interface %s/%u: ", a4, a5, a6, a7, a8, v11) & 0x80000000) == 0)
    {
      v17 = "";
      v18 = &dword_29EF09880;
      v19 = 7;
      while (1)
      {
        if ((*v18 & *(a1 + 144)) != 0)
        {
          v23 = *(v18 - 1);
          v20 = mdns_snprintf_add(&v24, &v26, "%s%s", v12, v13, v14, v15, v16, v17);
          v17 = ", ";
          if (v20 < 0)
          {
            break;
          }
        }

        v18 += 4;
        if (!--v19)
        {
          result = strdup(__s1);
          if (!result)
          {
            __break(1u);
          }

          goto LABEL_15;
        }
      }
    }
  }

  result = 0;
LABEL_15:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_interface_monitor_create(unsigned int a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = _os_object_alloc();
  v3 = v2;
  if (!v2)
  {
    goto LABEL_20;
  }

  v4 = &_mdns_interface_monitor_kind;
  *(v2 + 16) = &_mdns_interface_monitor_kind;
  do
  {
    v5 = v4[2];
    if (v5)
    {
      v5(v3);
    }

    v4 = *v4;
  }

  while (v4);
  *(v3 + 148) = 0;
  *(v3 + 136) = a1;
  if (a1)
  {
    v6 = mdns_system_interface_index_to_name(a1);
    *(v3 + 80) = v6;
    if (v6)
    {
      v7 = *(v3 + 136);
      v8 = nw_interface_create_with_index();
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0x29C299400]();
        if (v10)
        {
          v11 = v10;
          nw_parameters_require_interface(v10, v9);
          evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
          *(v3 + 40) = evaluator_for_endpoint;
          if (evaluator_for_endpoint)
          {
            v13 = nw_path_evaluator_copy_path();
            if (v13)
            {
              v14 = v13;
LABEL_13:
              *(v3 + 140) = _mdns_get_interface_flags_from_nw_path(v14, 0);
              goto LABEL_14;
            }

            if (_mdns_ifmon_log_s_once != -1)
            {
              dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
            }

            v21 = _mdns_ifmon_log_s_log;
            if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
            {
LABEL_45:
              os_release(v3);
              v3 = 0;
              v14 = 0;
              if (!v9)
              {
                goto LABEL_16;
              }

              goto LABEL_15;
            }

            *buf = 0;
            v22 = "Failed to copy path from path evaluator";
          }

          else
          {
            if (_mdns_ifmon_log_s_once != -1)
            {
              dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
            }

            v21 = _mdns_ifmon_log_s_log;
            if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_45;
            }

            *buf = 0;
            v22 = "Failed to create path evaluator";
          }

          _os_log_error_impl(&dword_2990ED000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
          goto LABEL_45;
        }

        if (_mdns_ifmon_log_s_once != -1)
        {
          dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
        }

        v20 = _mdns_ifmon_log_s_log;
        if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2990ED000, v20, OS_LOG_TYPE_ERROR, "Failed to create params", buf, 2u);
        }

        v11 = 0;
        goto LABEL_45;
      }

      if (_mdns_ifmon_log_s_once != -1)
      {
        dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
      }

      v19 = _mdns_ifmon_log_s_log;
      if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v23 = *(v3 + 136);
        *buf = 67109120;
        v26 = v23;
        _os_log_error_impl(&dword_2990ED000, v19, OS_LOG_TYPE_ERROR, "Failed to create interface for index %u", buf, 8u);
      }
    }

    v11 = 0;
    v9 = 0;
    goto LABEL_45;
  }

  v9 = nw_path_create_evaluator_for_endpoint();
  if (v9)
  {
    v14 = nw_path_evaluator_copy_path();
    nw_release(v9);
    if (v14)
    {
      v17 = nw_path_copy_interface();
      v9 = v17;
      if (v17)
      {
        *(v3 + 120) = v17;
        nw_retain(v17);
        v18 = *(v3 + 120);
        *(v3 + 128) = v18;
        nw_retain(v18);
        nw_release(v9);
        v11 = 0;
        v9 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_13;
    }

    v9 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v14 = 0;
  }

LABEL_14:
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 0x40000000;
  v24[2] = __mdns_interface_monitor_create_block_invoke;
  v24[3] = &__block_descriptor_tmp_781;
  v24[4] = v3;
  os_unfair_lock_lock(&_mdns_nwi_locked_s_lock);
  __mdns_interface_monitor_create_block_invoke(v24);
  os_unfair_lock_unlock(&_mdns_nwi_locked_s_lock);
  *(v3 + 144) = *(v3 + 140);
  if (v9)
  {
LABEL_15:
    nw_release(v9);
  }

LABEL_16:
  if (v11)
  {
    nw_release(v11);
  }

  if (v14)
  {
    nw_release(v14);
  }

LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t _mdns_get_interface_flags_from_nw_path(NSObject *a1, int a2)
{
  v3 = a2 & 0xFFFFFFF0 | nw_path_has_ipv4(a1);
  if (nw_path_has_ipv6(a1))
  {
    v3 |= 2u;
  }

  if (MEMORY[0x29C2995E0](a1))
  {
    v3 |= 4u;
  }

  if (MEMORY[0x29C2995D0](a1))
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

uint64_t __mdns_interface_monitor_create_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 136))
  {
    name = *(v2 + 80);
  }

  else
  {
    v4 = *(v2 + 120);
    if (!v4)
    {
LABEL_10:
      ifstate = 0;
      goto LABEL_11;
    }

    name = nw_interface_get_name(v4);
  }

  if (name)
  {
    v5 = g_nwi_state == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  ifstate = nwi_state_get_ifstate();
LABEL_11:
  _mdns_interface_monitor_update_signatures_from_nwi_state(*(a1 + 32), ifstate);
  result = _mdns_get_interface_flags_from_nwi_state(ifstate, *(*(a1 + 32) + 140));
  *(*(a1 + 32) + 140) = result;
  return result;
}

uint64_t _mdns_interface_monitor_update_signatures_from_nwi_state(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v20 = 0;
  if (a2)
  {
    signature = nwi_ifstate_get_signature();
    v5 = v20;
  }

  else
  {
    v5 = 0;
    signature = 0;
  }

  updated = _mdns_interface_monitor_update_signature((a1 + 88), (a1 + 96), (a1 + 152), signature, v5 & ~(v5 >> 31));
  v20 = 0;
  if (a2)
  {
    v7 = nwi_ifstate_get_signature();
    v8 = v20;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = _mdns_interface_monitor_update_signature((a1 + 104), (a1 + 112), (a1 + 153), v7, v8 & ~(v8 >> 31));
  if (updated & v9)
  {
    v10 = 1;
  }

  else if (updated)
  {
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 153) ^ 1;
    }
  }

  else
  {
    v10 = v9 & (*(a1 + 152) ^ 1);
  }

  if (_mdns_ifmon_log_s_once != -1)
  {
    dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
  }

  v11 = _mdns_ifmon_log_s_log;
  if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 80);
    if (!v14)
    {
      v14 = "";
    }

    if (*(a1 + 152) == 1)
    {
      v15 = *(a1 + 96);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 136);
    v17 = *(a1 + 88);
    if (*(a1 + 153) == 1)
    {
      v18 = *(a1 + 112);
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a1 + 104);
    v20 = 136447746;
    v21 = v14;
    v22 = 1024;
    v23 = v16;
    v24 = 1040;
    v25 = v15;
    v26 = 2096;
    v27 = v17;
    v28 = 1040;
    v29 = v18;
    v30 = 2096;
    v31 = v19;
    v32 = 1024;
    v33 = v10 & 1;
    _os_log_debug_impl(&dword_2990ED000, v11, OS_LOG_TYPE_DEBUG, "Signature update -- interface: %{public}s/%u, IPv4: %{mdns:base64}.*P, IPv6: %{mdns:base64}.*P, network changed: %{mdns:yesno}d", &v20, 0x38u);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v10 & 1;
}

uint64_t _mdns_get_interface_flags_from_nwi_state(uint64_t a1, int a2)
{
  v2 = a2 & 0xFFFFFFCF;
  if (a1)
  {
    LODWORD(v2) = (nwi_ifstate_get_flags() >> 2) & 0x10 | v2;
    if (nwi_ifstate_get_vpn_server())
    {
      return v2 | 0x20;
    }

    else
    {
      return v2;
    }
  }

  return v2;
}

uint64_t _mdns_interface_monitor_update_signature(const void **a1, void *a2, char *a3, void *__s2, size_t __n)
{
  if (!__n)
  {
    v13 = 0;
    if (*a3 == 1)
    {
      goto LABEL_10;
    }

    return 0;
  }

  v10 = *a1;
  if (*a2 == __n && !memcmp(*a1, __s2, __n))
  {
    if ((*a3 & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v10)
  {
    free(v10);
    *a1 = 0;
  }

  *a2 = 0;
  result = malloc_type_malloc(__n, 0xFE29915uLL);
  if (result)
  {
    v12 = result;
    memcpy(result, __s2, __n);
    *a1 = v12;
    *a2 = __n;
LABEL_8:
    v13 = 1;
LABEL_10:
    *a3 = v13;
    return 1;
  }

  __break(1u);
  return result;
}

os_log_t ___mdns_ifmon_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "interface_monitor");
  _mdns_ifmon_log_s_log = result;
  return result;
}

void mdns_interface_monitor_activate(uint64_t a1)
{
  if ((*(a1 + 154) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      _mdns_interface_monitor_activate_async(a1);
    }

    *(a1 + 154) = 1;
  }
}

void _mdns_interface_monitor_activate_async(void *a1)
{
  os_retain(a1);
  if (_mdns_internal_queue_s_once != -1)
  {
    dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___mdns_interface_monitor_activate_async_block_invoke;
  block[3] = &__block_descriptor_tmp_22_790;
  block[4] = a1;
  dispatch_async(_mdns_internal_queue_s_queue, block);
}

void ___mdns_interface_monitor_activate_async_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(v2 + 155) & 1) != 0 || (*(v2 + 156))
  {
    goto LABEL_68;
  }

  *(v2 + 155) = 1;
  if (!_mdns_start_interface_availability_monitoring_s_store)
  {
    v3 = SCDynamicStoreCreate(0, @"com.apple.mdns.interface-monitor", _mdns_store_changed, 0);
    if (v3)
    {
      goto LABEL_7;
    }

    if (SCError())
    {
      v4 = SCError();
      if (!v4)
      {
LABEL_7:
        NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, *MEMORY[0x29EDBCC60]);
        if (NetworkInterface)
        {
          goto LABEL_10;
        }

        if (SCError())
        {
          v6 = SCError();
          if (!v6)
          {
LABEL_10:
            values[0] = NetworkInterface;
            v7 = CFArrayCreate(0, values, 1, MEMORY[0x29EDB9000]);
            if (v7)
            {
              v8 = v7;
              if (!SCDynamicStoreSetNotificationKeys(v3, v7, 0))
              {
                if (SCError())
                {
                  v9 = SCError();
                  if (!v9)
                  {
                    goto LABEL_14;
                  }

                  v15 = v9;
                }

                else
                {
                  v15 = -6700;
                }

                if (_mdns_ifmon_log_s_once != -1)
                {
                  dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
                }

                v16 = _mdns_ifmon_log_s_log;
                if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
                {
LABEL_40:
                  if (!v3)
                  {
                    goto LABEL_42;
                  }

LABEL_41:
                  CFRelease(v3);
                  goto LABEL_42;
                }

                LODWORD(buf) = 134217984;
                *(&buf + 4) = v15;
                v17 = "Failed to set notification keys for interface availability monitoring: %{mdns:err}ld";
LABEL_72:
                _os_log_error_impl(&dword_2990ED000, v16, OS_LOG_TYPE_ERROR, v17, &buf, 0xCu);
                if (!v3)
                {
                  goto LABEL_42;
                }

                goto LABEL_41;
              }

LABEL_14:
              if (_mdns_internal_queue_s_once != -1)
              {
                dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8);
              }

              if (SCDynamicStoreSetDispatchQueue(v3, _mdns_internal_queue_s_queue))
              {
                goto LABEL_19;
              }

              if (SCError())
              {
                v10 = SCError();
                if (!v10)
                {
LABEL_19:
                  _mdns_start_interface_availability_monitoring_s_store = v3;
LABEL_42:
                  if (NetworkInterface)
                  {
                    CFRelease(NetworkInterface);
                  }

                  if (v8)
                  {
                    CFRelease(v8);
                  }

                  goto LABEL_46;
                }

                v18 = v10;
              }

              else
              {
                v18 = -6700;
              }

              if (_mdns_ifmon_log_s_once != -1)
              {
                dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
              }

              v16 = _mdns_ifmon_log_s_log;
              if (!os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_40;
              }

              LODWORD(buf) = 134217984;
              *(&buf + 4) = v18;
              v17 = "Failed to set dispatch queue for interface availability monitoring: %{mdns:err}ld";
              goto LABEL_72;
            }

            if (_mdns_ifmon_log_s_once != -1)
            {
              dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
            }

            v40 = _mdns_ifmon_log_s_log;
            if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              v37 = "Failed to create notification keys array for interface availability monitoring";
              v38 = v40;
              v39 = 2;
              goto LABEL_70;
            }

            goto LABEL_29;
          }

          v13 = v6;
        }

        else
        {
          v13 = -6700;
        }

        if (_mdns_ifmon_log_s_once != -1)
        {
          dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
        }

        v14 = _mdns_ifmon_log_s_log;
        if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v13;
          v37 = "Failed to create interfaces state key for interface availability monitoring: %{mdns:err}ld";
          v38 = v14;
          v39 = 12;
LABEL_70:
          _os_log_error_impl(&dword_2990ED000, v38, OS_LOG_TYPE_ERROR, v37, &buf, v39);
        }

LABEL_29:
        v8 = 0;
        if (!v3)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v11 = v4;
    }

    else
    {
      v11 = -6700;
    }

    if (_mdns_ifmon_log_s_once != -1)
    {
      dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
    }

    v12 = _mdns_ifmon_log_s_log;
    if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_2990ED000, v12, OS_LOG_TYPE_ERROR, "Failed to create store for interface availability monitoring: %{mdns:err}ld", &buf, 0xCu);
    }
  }

LABEL_46:
  v19 = dispatch_source_create(MEMORY[0x29EDCA590], 0, 0, *(v2 + 32));
  *(v2 + 56) = v19;
  if (!v19)
  {
LABEL_82:
    _mdns_interface_monitor_terminate(v2, -6729);
    goto LABEL_68;
  }

  os_retain(v2);
  v20 = *(v2 + 56);
  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 0x40000000;
  v46 = ___mdns_interface_monitor_activate_internal_block_invoke;
  v47 = &__block_descriptor_tmp_23_797;
  v48 = v2;
  dispatch_source_set_event_handler(v20, &buf);
  v21 = *(v2 + 56);
  values[0] = MEMORY[0x29EDCA5F8];
  values[1] = 0x40000000;
  values[2] = ___mdns_interface_monitor_activate_internal_block_invoke_2;
  values[3] = &__block_descriptor_tmp_24_798;
  values[4] = v2;
  dispatch_source_set_cancel_handler(v21, values);
  dispatch_activate(*(v2 + 56));
  if (*(v2 + 40))
  {
    os_retain(v2);
    v22 = *(v2 + 40);
    if (_mdns_internal_queue_s_once != -1)
    {
      dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8);
    }

    update_handler[10] = MEMORY[0x29EDCA5F8];
    update_handler[11] = 0x40000000;
    update_handler[12] = ___mdns_interface_monitor_activate_internal_block_invoke_3;
    update_handler[13] = &__block_descriptor_tmp_26_799;
    update_handler[14] = v2;
    nw_path_evaluator_set_update_handler();
    v23 = *(v2 + 40);
    update_handler[5] = MEMORY[0x29EDCA5F8];
    update_handler[6] = 0x40000000;
    update_handler[7] = ___mdns_interface_monitor_activate_internal_block_invoke_4;
    update_handler[8] = &__block_descriptor_tmp_27_800;
    update_handler[9] = v2;
    nw_path_evaluator_set_cancel_handler();
    v24 = *(v2 + 40);
    nw_path_evaluator_start();
    *(v2 + 157) = 1;
  }

  if (*(v2 + 136))
  {
    goto LABEL_56;
  }

  v25 = nw_path_monitor_create();
  *(v2 + 48) = v25;
  if (!v25)
  {
    if (_mdns_ifmon_log_s_once != -1)
    {
      dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
    }

    v41 = _mdns_ifmon_log_s_log;
    if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(update_handler[0]) = 0;
      _os_log_error_impl(&dword_2990ED000, v41, OS_LOG_TYPE_ERROR, "Failed to create path monitor", update_handler, 2u);
    }

    goto LABEL_82;
  }

  v26 = v25;
  if (_mdns_internal_queue_s_once != -1)
  {
    dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8);
  }

  nw_path_monitor_set_queue(v26, _mdns_internal_queue_s_queue);
  os_retain(v2);
  v27 = *(v2 + 48);
  update_handler[0] = MEMORY[0x29EDCA5F8];
  update_handler[1] = 0x40000000;
  update_handler[2] = ___mdns_interface_monitor_activate_internal_block_invoke_28;
  update_handler[3] = &__block_descriptor_tmp_29_802;
  update_handler[4] = v2;
  nw_path_monitor_set_update_handler(v27, update_handler);
  v28 = *(v2 + 48);
  cancel_handler[0] = MEMORY[0x29EDCA5F8];
  cancel_handler[1] = 0x40000000;
  cancel_handler[2] = ___mdns_interface_monitor_activate_internal_block_invoke_2_30;
  cancel_handler[3] = &__block_descriptor_tmp_31;
  cancel_handler[4] = v2;
  nw_path_monitor_set_cancel_handler(v28, cancel_handler);
  nw_path_monitor_start(*(v2 + 48));
  *(v2 + 157) = 1;
LABEL_56:
  v29 = &g_monitor_list;
  do
  {
    v30 = v29;
    v31 = *v29;
    v29 = (*v29 + 24);
  }

  while (v31);
  os_retain(v2);
  *v30 = v2;
  if (_mdns_start_nwi_state_monitoring_s_nwi_notify_token == -1)
  {
    notify_key = nwi_state_get_notify_key();
    if (_mdns_internal_queue_s_once != -1)
    {
      dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8);
    }

    v33 = notify_register_dispatch(notify_key, &_mdns_start_nwi_state_monitoring_s_nwi_notify_token, _mdns_internal_queue_s_queue, &__block_literal_global_39);
    if (_mdns_start_nwi_state_monitoring_s_nwi_notify_token == -1)
    {
      v34 = v33;
      if (_mdns_nwi_log_s_once != -1)
      {
        dispatch_once(&_mdns_nwi_log_s_once, &__block_literal_global_43_803);
      }

      v35 = _mdns_nwi_log_s_log;
      if (os_log_type_enabled(_mdns_nwi_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *v49 = 67109120;
        v50 = v34;
        _os_log_error_impl(&dword_2990ED000, v35, OS_LOG_TYPE_ERROR, "Failed to register for NWI state notifications (status %u)", v49, 8u);
      }
    }

    else
    {
      _mdns_nwi_state_update();
    }
  }

  _mdns_interface_monitor_check_nwi_state_for_updates(v2);
LABEL_68:
  os_release(*(a1 + 32));
  v36 = *MEMORY[0x29EDCA608];
}

void ___mdns_interface_monitor_activate_internal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___mdns_interface_monitor_update_block_invoke;
  v11[3] = &unk_29EF099F0;
  v11[4] = &v20;
  v11[5] = &v16;
  v11[6] = &v12;
  v11[7] = v2;
  os_unfair_lock_lock((v2 + 148));
  ___mdns_interface_monitor_update_block_invoke(v11);
  os_unfair_lock_unlock((v2 + 148));
  v3 = *(v2 + 144);
  v4 = *(v21 + 6);
  *(v2 + 144) = v4;
  v5 = *(v17 + 24);
  if (*(v2 + 136))
  {
    v6 = v13[3];
    if (!v6)
    {
      goto LABEL_8;
    }

    nw_release(v6);
    v7 = v13 + 3;
  }

  else
  {
    v8 = *(v2 + 128);
    if (v8)
    {
      nw_release(v8);
      *(v2 + 128) = 0;
    }

    v7 = v13 + 3;
    *(v2 + 128) = v13[3];
  }

  *v7 = 0;
LABEL_8:
  if (v5)
  {
    v9 = v4 ^ v3 | 0x80;
  }

  else
  {
    v9 = v4 ^ v3;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }
  }
}

void _mdns_nwi_state_update()
{
  v0 = nwi_state_copy();
  if (!v0)
  {
    if (_mdns_nwi_log_s_once != -1)
    {
      dispatch_once(&_mdns_nwi_log_s_once, &__block_literal_global_43_803);
    }

    v1 = _mdns_nwi_log_s_log;
    if (os_log_type_enabled(_mdns_nwi_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v1, OS_LOG_TYPE_ERROR, "Failed to copy NWI state", buf, 2u);
    }
  }

  *buf = 0;
  v5 = buf;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___mdns_nwi_state_update_block_invoke;
  v3[3] = &unk_29EF09A60;
  v3[4] = buf;
  v3[5] = v0;
  os_unfair_lock_lock(&_mdns_nwi_locked_s_lock);
  ___mdns_nwi_state_update_block_invoke(v3);
  os_unfair_lock_unlock(&_mdns_nwi_locked_s_lock);
  if (*(v5 + 3))
  {
    nwi_state_release();
  }

  for (i = g_monitor_list; i; i = *(i + 24))
  {
    _mdns_interface_monitor_check_nwi_state_for_updates(i);
  }

  _Block_object_dispose(buf, 8);
}

void _mdns_interface_monitor_check_nwi_state_for_updates(uint64_t a1)
{
  if (*(a1 + 136))
  {
    name = *(a1 + 80);
  }

  else
  {
    v3 = *(a1 + 120);
    if (!v3)
    {
      goto LABEL_10;
    }

    name = nw_interface_get_name(v3);
  }

  if (name)
  {
    v4 = g_nwi_state == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    ifstate = nwi_state_get_ifstate();
    goto LABEL_11;
  }

LABEL_10:
  ifstate = 0;
LABEL_11:
  interface_flags_from_nwi_state = _mdns_get_interface_flags_from_nwi_state(ifstate, *(a1 + 140));
  updated = _mdns_interface_monitor_update_signatures_from_nwi_state(a1, ifstate);

  _mdns_interface_monitor_trigger_update(a1, interface_flags_from_nwi_state, updated);
}

void _mdns_interface_monitor_terminate(void *object, int a2)
{
  v4 = object[7];
  if (v4)
  {
    dispatch_source_cancel(object[7]);
    dispatch_release(v4);
    object[7] = 0;
  }

  v5 = object[5];
  if (v5)
  {
    if (*(object + 157) != 1 || (nw_path_evaluator_cancel(), (v5 = object[5]) != 0))
    {
      nw_release(v5);
      object[5] = 0;
    }
  }

  v6 = object[6];
  if (v6)
  {
    nw_path_monitor_cancel(v6);
    v7 = object[6];
    if (v7)
    {
      nw_release(v7);
      object[6] = 0;
    }
  }

  v8 = g_monitor_list;
  if (g_monitor_list)
  {
    if (g_monitor_list == object)
    {
      v10 = &g_monitor_list;
LABEL_16:
      *v10 = object[3];
      object[3] = 0;
      os_release(object);
    }

    else
    {
      while (1)
      {
        v9 = v8;
        v8 = v8[3];
        if (!v8)
        {
          break;
        }

        if (v8 == object)
        {
          v10 = v9 + 3;
          goto LABEL_16;
        }
      }
    }
  }

  os_retain(object);
  v11 = object[4];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___mdns_interface_monitor_terminate_block_invoke;
  v12[3] = &__block_descriptor_tmp_45;
  v13 = a2;
  v12[4] = object;
  dispatch_async(v11, v12);
}

void ___mdns_interface_monitor_terminate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v3[9];
  if (v4)
  {
    if (v2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v4[2](v3[9], v5, v2);
    v3 = *(a1 + 32);
  }

  if (!v2 && v3[9])
  {
    _Block_release(v3[9]);
    v3 = *(a1 + 32);
    v3[9] = 0;
  }

  os_release(v3);
}

void _mdns_interface_monitor_trigger_update(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 140) != a2 || a3 != 0)
  {
    v11 = v3;
    v12 = v4;
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 0x40000000;
    v8[2] = ___mdns_interface_monitor_trigger_update_block_invoke;
    v8[3] = &__block_descriptor_tmp_33_805;
    v8[4] = a1;
    v9 = a2;
    v10 = a3;
    os_unfair_lock_lock((a1 + 148));
    ___mdns_interface_monitor_trigger_update_block_invoke(v8);
    os_unfair_lock_unlock((a1 + 148));
    v7 = *(a1 + 56);
    if (v7)
    {
      dispatch_source_merge_data(v7, 1uLL);
    }
  }
}

uint64_t ___mdns_interface_monitor_trigger_update_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  *(v1 + 140) = *(result + 40);
  if (*(result + 44) == 1)
  {
    *(v1 + 158) = 1;
  }

  return result;
}

uint64_t ___mdns_nwi_state_update_block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = g_nwi_state;
  g_nwi_state = *(result + 40);
  return result;
}

os_log_t ___mdns_nwi_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "NWI");
  _mdns_nwi_log_s_log = result;
  return result;
}

void _mdns_interface_monitor_trigger_update_with_path(uint64_t a1, NSObject *a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (*(a1 + 136))
  {
    goto LABEL_2;
  }

  v7 = nw_path_copy_interface();
  v19[3] = v7;
  v8 = *(a1 + 120);
  if (!v7)
  {
    v4 = (a1 + 140);
    interface_flags_from_nw_path = _mdns_get_interface_flags_from_nw_path(a2, *(a1 + 140));
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    _mdns_interface_monitor_forget_signatures(a1);
    v10 = v19[3];
    if (!v10 || (nw_interface_get_name(v10) ? (v11 = g_nwi_state == 0) : (v11 = 1), v11))
    {
      ifstate = 0;
    }

    else
    {
      ifstate = nwi_state_get_ifstate();
    }

    _mdns_interface_monitor_update_signatures_from_nwi_state(a1, ifstate);
    interface_flags_from_nw_path = _mdns_get_interface_flags_from_nwi_state(ifstate, interface_flags_from_nw_path);
    v6 = 1;
    goto LABEL_18;
  }

  if (!v8 || (index = nw_interface_get_index(*(a1 + 120)), index != nw_interface_get_index(v19[3])))
  {
    interface_flags_from_nw_path = _mdns_get_interface_flags_from_nw_path(a2, *(a1 + 140));
    goto LABEL_10;
  }

LABEL_2:
  v4 = (a1 + 140);
  interface_flags_from_nw_path = _mdns_get_interface_flags_from_nw_path(a2, *(a1 + 140));
LABEL_3:
  if (*v4 == interface_flags_from_nw_path)
  {
    goto LABEL_20;
  }

  v6 = 0;
LABEL_18:
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 0x40000000;
  v15[2] = ___mdns_interface_monitor_trigger_update_with_path_block_invoke;
  v15[3] = &unk_29EF09A18;
  v16 = interface_flags_from_nw_path;
  v17 = v6;
  v15[4] = &v18;
  v15[5] = a1;
  os_unfair_lock_lock((a1 + 148));
  ___mdns_interface_monitor_trigger_update_with_path_block_invoke(v15);
  os_unfair_lock_unlock((a1 + 148));
  v13 = *(a1 + 56);
  if (v13)
  {
    dispatch_source_merge_data(v13, 1uLL);
  }

LABEL_20:
  v14 = v19[3];
  if (v14)
  {
    nw_release(v14);
    v19[3] = 0;
  }

  _Block_object_dispose(&v18, 8);
}

void ___mdns_interface_monitor_trigger_update_with_path_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(v1 + 140) = *(a1 + 48);
  v2 = *(a1 + 52);
  if (v2 == 1)
  {
    *(v1 + 158) = v2;
    v4 = *(v1 + 120);
    if (v4)
    {
      nw_release(v4);
      *(*(a1 + 40) + 120) = 0;
      v1 = *(a1 + 40);
    }

    *(v1 + 120) = *(*(*(a1 + 32) + 8) + 24);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void *___mdns_interface_monitor_update_block_invoke(void *a1)
{
  v1 = a1[7];
  *(*(a1[4] + 8) + 24) = *(v1 + 140);
  *(*(a1[5] + 8) + 24) = *(v1 + 158);
  *(v1 + 158) = 0;
  *(*(a1[6] + 8) + 24) = *(v1 + 120);
  result = *(*(a1[6] + 8) + 24);
  if (result)
  {
    return nw_retain(result);
  }

  return result;
}

ifaddrs *_mdns_store_changed()
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = 0;
  if (getifaddrs(&v11))
  {
    if (*__error())
    {
      v0 = *__error();
      if (!v0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = -6700;
    }

    if (_mdns_ifmon_log_s_once != -1)
    {
      dispatch_once(&_mdns_ifmon_log_s_once, &__block_literal_global_776);
    }

    v8 = _mdns_ifmon_log_s_log;
    if (os_log_type_enabled(_mdns_ifmon_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = v0;
      _os_log_error_impl(&dword_2990ED000, v8, OS_LOG_TYPE_ERROR, "getifaddrs() failed: %{mdns:err}ld", buf, 0xCu);
    }

    goto LABEL_22;
  }

LABEL_4:
  for (i = g_monitor_list; i; i = *(i + 24))
  {
    v4 = *(i + 136);
    if (v4)
    {
      v5 = *(i + 140);
      v6 = v11;
      if (v11)
      {
        while (1)
        {
          ifa_addr = v6->ifa_addr;
          if (ifa_addr)
          {
            if (ifa_addr->sa_family == 18 && v4 == *ifa_addr->sa_data)
            {
              break;
            }
          }

          v6 = v6->ifa_next;
          if (!v6)
          {
            goto LABEL_13;
          }
        }

        v2 = v5 & 0xFFFFFFBF;
        v3 = (v5 >> 6) & 1;
      }

      else
      {
LABEL_13:
        v3 = (*(i + 140) & 0x40) == 0;
        v2 = v5 | 0x40;
      }

      _mdns_interface_monitor_trigger_update(i, v2, v3);
    }
  }

LABEL_22:
  result = v11;
  if (v11)
  {
    result = MEMORY[0x29C298D90]();
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

dispatch_queue_t ___mdns_internal_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mdns.interface-monitor", 0);
  _mdns_internal_queue_s_queue = result;
  return result;
}

void mdns_interface_monitor_invalidate(void *a1)
{
  os_retain(a1);
  if (_mdns_internal_queue_s_once != -1)
  {
    dispatch_once(&_mdns_internal_queue_s_once, &__block_literal_global_8);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_interface_monitor_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_2_823;
  block[4] = a1;
  dispatch_async(_mdns_internal_queue_s_queue, block);
}

void __mdns_interface_monitor_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 156) & 1) == 0)
  {
    _mdns_interface_monitor_terminate(v2, 0);
    v2 = *(a1 + 32);
    *(v2 + 156) = 1;
  }

  os_release(v2);
}

void mdns_interface_monitor_set_queue(uint64_t a1, dispatch_object_t object)
{
  if (*(a1 + 154))
  {
    if (!*(a1 + 32))
    {
      *(a1 + 32) = object;
      dispatch_retain(object);

      _mdns_interface_monitor_activate_async(a1);
    }
  }

  else
  {
    dispatch_retain(object);
    v4 = *(a1 + 32);
    if (v4)
    {
      dispatch_release(v4);
    }

    *(a1 + 32) = object;
  }
}

void mdns_interface_monitor_set_event_handler(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 72) = v3;
}

void mdns_interface_monitor_set_update_handler(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 64) = v3;
}

const void *mdns_managed_defaults_create(const char *a1, int *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  *cStr = 0;
  asprintf(cStr, "/Library/Managed Preferences/mobile/%s.plist", a1);
  if (!*cStr)
  {
    Code = -6728;
    goto LABEL_20;
  }

  v4 = CFStringCreateWithCStringNoCopy(0, *cStr, 0x8000100u, *MEMORY[0x29EDB8EE0]);
  if (!v4)
  {
    if (*cStr)
    {
      free(*cStr);
    }

    goto LABEL_19;
  }

  v5 = v4;
  *cStr = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], v4, kCFURLPOSIXPathStyle, 0);
  CFRelease(v5);
  if (!v7)
  {
LABEL_19:
    Code = -6729;
LABEL_20:
    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_847);
    }

    v16 = _mdns_managed_defaults_log_s_log;
    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *cStr = 136446466;
      *&cStr[4] = a1;
      v23 = 2048;
      v24 = Code;
      _os_log_error_impl(&dword_2990ED000, v16, OS_LOG_TYPE_ERROR, "Failed to create URL -- domain: %{public}s, error: %{mdns:err}ld", cStr, 0x16u);
    }

    v11 = 0;
    if (a2)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = CFReadStreamCreateWithFile(v6, v7);
  v9 = v8;
  if (!v8)
  {
    Code = -6729;
LABEL_28:
    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_847);
    }

    v17 = _mdns_managed_defaults_log_s_log;
    if (v9)
    {
      v18 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v18 = OS_LOG_TYPE_ERROR;
    }

    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, v18))
    {
      *cStr = 138543618;
      *&cStr[4] = v7;
      v23 = 2048;
      v24 = Code;
      _os_log_impl(&dword_2990ED000, v17, v18, "Failed to create read stream -- url: %{public}@, error: %{mdns:err}ld", cStr, 0x16u);
    }

    goto LABEL_41;
  }

  if (!CFReadStreamOpen(v8))
  {
    CFRelease(v9);
    Code = -6755;
    goto LABEL_28;
  }

  error = 0;
  v10 = CFPropertyListCreateWithStream(0, v9, 0, 0, 0, &error);
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFDictionaryGetTypeID())
    {
      Code = 0;
    }

    else
    {
      CFRelease(v11);
      v11 = 0;
      Code = -6756;
    }
  }

  else
  {
    if (error)
    {
      Code = CFErrorGetCode(error);
    }

    else
    {
      Code = -6700;
    }

    if (_mdns_managed_defaults_log_s_once != -1)
    {
      dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_847);
    }

    v20 = _mdns_managed_defaults_log_s_log;
    if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *cStr = 138543362;
      *&cStr[4] = error;
      _os_log_error_impl(&dword_2990ED000, v20, OS_LOG_TYPE_ERROR, "CFPropertyListCreateWithStream failed: %{public}@", cStr, 0xCu);
    }

    v11 = 0;
  }

  if (error)
  {
    CFRelease(error);
  }

  CFRelease(v9);
  if (v11)
  {
    Code = 0;
    goto LABEL_13;
  }

  if (_mdns_managed_defaults_log_s_once != -1)
  {
    dispatch_once(&_mdns_managed_defaults_log_s_once, &__block_literal_global_847);
  }

  v19 = _mdns_managed_defaults_log_s_log;
  if (os_log_type_enabled(_mdns_managed_defaults_log_s_log, OS_LOG_TYPE_ERROR))
  {
    *cStr = 138543618;
    *&cStr[4] = v7;
    v23 = 2048;
    v24 = Code;
    _os_log_error_impl(&dword_2990ED000, v19, OS_LOG_TYPE_ERROR, "Failed to create dictionary -- url: %{public}@, error: %{mdns:err}ld", cStr, 0x16u);
  }

LABEL_41:
  v11 = 0;
LABEL_13:
  CFRelease(v7);
  if (a2)
  {
LABEL_14:
    *a2 = Code;
  }

LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

os_log_t ___mdns_managed_defaults_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "managed_defaults");
  _mdns_managed_defaults_log_s_log = result;
  return result;
}

unint64_t mdns_managed_defaults_get_int_clamped(const __CFDictionary *a1, const void *a2, unint64_t a3, int *a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 != CFNumberGetTypeID() || CFNumberIsFloatType(v7))
    {
      v9 = -6756;
    }

    else
    {
      valuePtr = 0;
      if (CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
      {
        v9 = 0;
        v10 = valuePtr;
        if (valuePtr >= 0x7FFFFFFF)
        {
          v10 = 0x7FFFFFFFLL;
        }

        if (v10 <= 0xFFFFFFFF80000000)
        {
          a3 = 0xFFFFFFFF80000000;
        }

        else
        {
          a3 = v10;
        }
      }

      else
      {
        v9 = -6700;
      }
    }
  }

  else
  {
    v9 = -6727;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return a3;
}

BOOL mdns_managed_defaults_get_BOOL_easy(const char *a1, const void *a2, _BOOL8 a3, int *a4)
{
  v14 = 0;
  v7 = mdns_managed_defaults_create(a1, &v14);
  v8 = v7;
  v9 = v14;
  if (!v14)
  {
    Value = CFDictionaryGetValue(v7, a2);
    if (Value)
    {
      v11 = Value;
      v12 = CFGetTypeID(Value);
      if (v12 == CFBooleanGetTypeID())
      {
        v9 = 0;
        a3 = v11 == *MEMORY[0x29EDB8F00];
      }

      else
      {
        v9 = -6756;
      }
    }

    else
    {
      v9 = -6727;
    }

    v14 = v9;
  }

  if (a4)
  {
    *a4 = v9;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return a3;
}

char *_mdns_obj_copy_description(void *a1)
{
  v2 = 0;
  asprintf(&v2, "<%s: %p>", *(a1[2] + 8), a1);
  return v2;
}

const char *_mdns_obj_copy_description_as_cfstring(uint64_t a1)
{
  v1 = (a1 + 16);
  do
  {
    v1 = *v1;
    if (!v1)
    {
      return 0;
    }

    v2 = v1[3];
  }

  while (!v2);
  result = v2();
  if (result)
  {
    v4 = result;
    result = CFStringCreateWithCStringNoCopy(0, result, 0x8000100u, *MEMORY[0x29EDB8EE0]);
    if (!result)
    {
      free(v4);
      return 0;
    }
  }

  return result;
}

uint64_t mdns_memcmp_us_ascii_case_insensitive(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    while (1)
    {
      v4 = *a1++;
      v3 = v4;
      v5 = v4 + 32;
      v6 = v4 - 65 >= 0x1A;
      v8 = *a2++;
      v7 = v8;
      if (!v6)
      {
        v3 = v5;
      }

      if (v7 - 65 < 0x1A)
      {
        v7 += 32;
      }

      if (v3 < v7)
      {
        return -1;
      }

      if (v3 > v7)
      {
        break;
      }

      if (!--a3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void _mdns_message_finalize(uint64_t a1)
{
  *(a1 + 32) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 24) = 0;
  }
}

unsigned __int16 *_mdns_message_copy_description(uint64_t a1, uint64_t a2, int a3)
{
  v16 = 0;
  result = *(a1 + 32);
  if (result)
  {
    v5 = a3;
    v6 = *(a1 + 48) ? 36 : 4;
    v7 = a3 ? v6 | 8 : v6;
    DNSMessageToString(result, *(a1 + 40), v7, &v16);
    result = v16;
    if (!v16 && (v5 & 1) == 0)
    {
      if (*(a1 + 48))
      {
        v8 = 12;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(a1 + 40);
      if (v9 < v8)
      {
        return 0;
      }

      v10 = v9 - v8;
      if ((v9 - v8) < 0)
      {
        return 0;
      }

      else
      {
        v11 = *(a1 + 32);
        result = malloc_type_malloc((2 * v10) | 1, 0x1CF66A92uLL);
        if (result)
        {
          v12 = result;
          if (v9 != v8)
          {
            v13 = (v11 + v8);
            v14 = result;
            do
            {
              v15 = *v13++;
              *v14 = a0123456789abcd[v15 >> 4];
              v12 = v14 + 1;
              *(v14++ + 1) = a0123456789abcd[v15 & 0xF];
              --v10;
            }

            while (v10);
          }

          *v12 = 0;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

_BYTE *mdns_message_create_with_dispatch_data(NSObject *a1)
{
  v40 = 0;
  buffer_ptr = 0;
  v1 = dispatch_data_create_map(a1, &buffer_ptr, &v40);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v4 = v40;
  v3 = buffer_ptr;
  if (buffer_ptr)
  {
    v5 = v40 >= 0xC;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && (*(buffer_ptr + 2) & 0x78) == 0x30 && !__rev16(*(buffer_ptr + 2)) && !__rev16(*(buffer_ptr + 3)) && !__rev16(*(buffer_ptr + 4)) && !__rev16(*(buffer_ptr + 5)) && ((*(buffer_ptr + 2) & 0x80) == 0 || __rev16(*buffer_ptr)))
  {
    v6 = 0;
    v7 = buffer_ptr + 12;
    v8 = buffer_ptr + v40;
    while (v7 < v8)
    {
      if ((v8 - v7) >= 4)
      {
        v9 = __rev16(*(v7 + 1));
        v10 = v8 - (v7 + 4);
        v7 += v9 + 4;
        ++v6;
        if (v10 >= v9)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    if ((*(buffer_ptr + 2) & 0x80) != 0 || v6)
    {
      v16 = &off_2A1F30E90;
      v17 = 6;
      while (!(*v16)(v3, v4))
      {
        v16 += 2;
        if (!--v17)
        {
          goto LABEL_33;
        }
      }

      v12 = 0;
      v21 = *(v16 + 4);
      if (v21 <= 2)
      {
        if (!*(v16 + 4))
        {
LABEL_33:
          v18 = _os_object_alloc();
          v12 = v18;
          if (!v18)
          {
            goto LABEL_28;
          }

          v19 = &_mdns_dso_unspecified_message_kind;
          *(v18 + 16) = &_mdns_dso_unspecified_message_kind;
          do
          {
            v20 = v19[2];
            if (v20)
            {
              v20(v12);
            }

            v19 = *v19;
          }

          while (v19);
          goto LABEL_26;
        }

        if (v21 == 1)
        {
          v37 = _os_object_alloc();
          v12 = v37;
          if (!v37)
          {
            goto LABEL_28;
          }

          v38 = &_mdns_dso_keepalive_message_kind;
          *(v37 + 16) = &_mdns_dso_keepalive_message_kind;
          do
          {
            v39 = v38[2];
            if (v39)
            {
              v39(v12);
            }

            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          if (v21 != 2)
          {
            goto LABEL_28;
          }

          v25 = _os_object_alloc();
          v12 = v25;
          if (!v25)
          {
            goto LABEL_28;
          }

          v26 = &_mdns_dso_retry_delay_message_kind;
          *(v25 + 16) = &_mdns_dso_retry_delay_message_kind;
          do
          {
            v27 = v26[2];
            if (v27)
            {
              v27(v12);
            }

            v26 = *v26;
          }

          while (v26);
        }
      }

      else if (*(v16 + 4) > 4u)
      {
        if (v21 == 5)
        {
          v34 = _os_object_alloc();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_28;
          }

          v35 = &_mdns_dso_unsubscribe_message_kind;
          *(v34 + 16) = &_mdns_dso_unsubscribe_message_kind;
          do
          {
            v36 = v35[2];
            if (v36)
            {
              v36(v12);
            }

            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          if (v21 != 6)
          {
            goto LABEL_28;
          }

          v28 = _os_object_alloc();
          v12 = v28;
          if (!v28)
          {
            goto LABEL_28;
          }

          v29 = &_mdns_dso_reconfirm_message_kind;
          *(v28 + 16) = &_mdns_dso_reconfirm_message_kind;
          do
          {
            v30 = v29[2];
            if (v30)
            {
              v30(v12);
            }

            v29 = *v29;
          }

          while (v29);
        }
      }

      else if (v21 == 3)
      {
        v31 = _os_object_alloc();
        v12 = v31;
        if (!v31)
        {
          goto LABEL_28;
        }

        v32 = &_mdns_dso_push_message_kind;
        *(v31 + 16) = &_mdns_dso_push_message_kind;
        do
        {
          v33 = v32[2];
          if (v33)
          {
            v33(v12);
          }

          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        if (v21 != 4)
        {
          goto LABEL_28;
        }

        v22 = _os_object_alloc();
        v12 = v22;
        if (!v22)
        {
          goto LABEL_28;
        }

        v23 = &_mdns_dso_subscribe_message_kind;
        *(v22 + 16) = &_mdns_dso_subscribe_message_kind;
        do
        {
          v24 = v23[2];
          if (v24)
          {
            v24(v12);
          }

          v23 = *v23;
        }

        while (v23);
      }

      goto LABEL_26;
    }
  }

LABEL_21:
  v11 = _os_object_alloc();
  v12 = v11;
  if (v11)
  {
    v13 = &_mdns_message_kind;
    *(v11 + 16) = &_mdns_message_kind;
    do
    {
      v14 = v13[2];
      if (v14)
      {
        v14(v12);
      }

      v13 = *v13;
    }

    while (v13);
LABEL_26:
    v12[48] = 1;
    if (_mdns_message_set_msg_data(v12, v2))
    {
      os_release(v12);
      v12 = 0;
    }
  }

LABEL_28:
  dispatch_release(v2);
  return v12;
}

uint64_t _mdns_message_set_msg_data(void *a1, dispatch_data_t data)
{
  v8 = 0;
  buffer_ptr = 0;
  if (data)
  {
    v3 = dispatch_data_create_map(data, &buffer_ptr, &v8);
    if (!v3)
    {
      return 4294960568;
    }
  }

  else
  {
    v8 = 0;
    buffer_ptr = 0;
    v3 = MEMORY[0x29EDCA560];
  }

  v5 = a1[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  result = 0;
  v6 = v8;
  v7 = buffer_ptr;
  a1[3] = v3;
  a1[4] = v7;
  a1[5] = v6;
  return result;
}

BOOL _mdns_dso_reconfirm_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
        {
          return 0;
        }

        result = 0;
        v4 = a1 + 8;
        if (a1 != -16)
        {
          v5 = __rev16(a1[7]);
          if ((a2 - 16) >= v5)
          {
            if (__rev16(a1[6]) == 67 && (v4 + v5) > v4)
            {
              v6 = a1 + 8;
              while (1)
              {
                v7 = *v6;
                if (!*v6)
                {
                  break;
                }

                if (v7 > 0x3F)
                {
                  return 0;
                }

                result = 0;
                v8 = v7 + 1;
                v9 = &v6[v7 + 1];
                if (v4 + v5 - v6 >= v8)
                {
                  v6 = v9;
                  if (v9 - v4 < 256)
                  {
                    continue;
                  }
                }

                return result;
              }

              v10 = v6 - v4 + 1;
              if (v6 - v4 != 0xFFFF)
              {
                return v5 > v10 && v5 - v10 > 3;
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL _mdns_dso_unsubscribe_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
        {
          return 0;
        }

        else
        {
          result = 0;
          if (a1 != -16)
          {
            v4 = __rev16(a1[7]);
            if ((a2 - 16) >= v4)
            {
              return __rev16(a1[6]) == 66 && v4 == 2;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL _mdns_dso_subscribe_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0)
      {
        if (__rev16(*a1))
        {
          if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
          {
            return 0;
          }

          result = 0;
          v4 = a1 + 8;
          if (a1 == -16)
          {
            return result;
          }

          v5 = __rev16(a1[7]);
          if ((a2 - 16) < v5)
          {
            return result;
          }

          if (__rev16(a1[6]) != 64 || (v4 + v5) <= v4)
          {
            return 0;
          }

          v6 = a1 + 8;
          while (1)
          {
            v7 = *v6;
            if (!*v6)
            {
              break;
            }

            if (v7 > 0x3F)
            {
              return 0;
            }

            result = 0;
            v8 = v7 + 1;
            v9 = &v6[v7 + 1];
            if (v4 + v5 - v6 >= v8)
            {
              v6 = v9;
              if (v9 - v4 < 256)
              {
                continue;
              }
            }

            return result;
          }

          v10 = (v6 - v4) + 1;
          v11 = v5 - (v6 - v4 + 1);
          v13 = v5 > v10 && v11 == 4;
          return (v10 & 0x10000) == 0 && v13;
        }
      }
    }
  }

  return result;
}

BOOL _mdns_dso_push_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  if (a2 > 0x3FFE)
  {
    return 0;
  }

  v14[7] = v2;
  v14[8] = v3;
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0x3FFC) == 0xC)
        {
          return 0;
        }

        v7 = __rev16(a1[7]);
        if (a2 - 16 < v7)
        {
          return 0;
        }

        result = 0;
        v8 = (a1 + 8);
        if (a1 != -16 && __rev16(a1[6]) == 65)
        {
          v9 = &v8[v7];
          v14[0] = a1 + 8;
          if (v8 < &v8[v7])
          {
            v10 = 0;
            while (1)
            {
              v13 = 0;
              v12 = 0;
              v11 = 0;
              if (_DNSMessageExtractRecordEx(a1, a2, v8, 0, &v13 + 1, &v13, &v12, 0, &v11, 0, 0, 0, 0, v14))
              {
                return 0;
              }

              v8 = v14[0];
              if (v14[0] > v9)
              {
                return 0;
              }

              if ((v12 & 0x80000000) == 0)
              {
                break;
              }

              if (v12 == -2)
              {
                if (v11)
                {
                  return 0;
                }
              }

              else if (v12 == -1)
              {
                break;
              }

LABEL_17:
              ++v10;
              if (v14[0] >= v9)
              {
                return v10 != 0;
              }
            }

            if (HIWORD(v13) == 255 || v13 == 255)
            {
              return 0;
            }

            goto LABEL_17;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _mdns_dso_retry_delay_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2 >= 0x14)
    {
      v2 = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC || (v3 = __rev16(a1[7]), (a2 - 16) < v3))
        {
          v7 = 0;
          v6 = 0;
        }

        else
        {
          v4 = __rev16(a1[6]);
          v6 = a1 != -16 && v4 == 2;
          v7 = v3 == 4;
        }

        return v7 & v6;
      }
    }
  }

  return v2;
}

BOOL _mdns_dso_keepalive_message_validator(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x18 && (a2 & 0xFFFFFFFFFFFFFFFCLL) != 0xC && (v2 = __rev16(*(a1 + 14)), (a2 - 16) >= v2) && ((v3 = __rev16(*(a1 + 12)), v2 == 8) ? (v4 = a1 == -16) : (v4 = 1), !v4 ? (v5 = v3 == 1) : (v5 = 0), v5))
  {
    return bswap32(*(a1 + 20)) >> 4 > 0x270;
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_query_message_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_query_message_kind;
    *(v0 + 16) = &_mdns_query_message_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    *(v1 + 48) = 1;
    if (_mdns_message_set_msg_data(v1, 0))
    {
      goto LABEL_11;
    }

    if (_mdns_domain_name_get_root_s_once != -1)
    {
      dispatch_once(&_mdns_domain_name_get_root_s_once, &__block_literal_global_10);
    }

    v4 = _mdns_domain_name_get_root_s_root;
    *(v1 + 56) = _mdns_domain_name_get_root_s_root;
    if (!v4)
    {
LABEL_11:
      os_release(v1);
      return 0;
    }
  }

  return v1;
}

void _mdns_query_message_finalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    os_release(v2);
    *(a1 + 56) = 0;
  }
}

void mdns_query_message_set_qname(uint64_t a1, void *object)
{
  if ((*(a1 + 70) & 0x20) == 0)
  {
    if (object)
    {
      os_retain(object);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      os_release(v4);
    }

    *(a1 + 56) = object;
  }
}

uint64_t mdns_query_message_construct(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 70);
  if (v2)
  {
    v3 = 288;
  }

  else
  {
    v3 = 256;
  }

  size = 0;
  v4 = DNSMessageWriteQuery(*(a1 + 68), v3 & 0xFFEF | (16 * ((v2 >> 1) & 1)), *(*(a1 + 56) + 24), *(a1 + 64), *(a1 + 66), buffer, &size);
  if (v4)
  {
    v12 = v4;
    goto LABEL_33;
  }

  v5 = *(a1 + 70);
  if ((v5 & 0x1C) != 0 || *(a1 + 71))
  {
    v6 = size;
    if (size <= 0x200)
    {
      v7 = size + 11;
      v8 = &buffer[size];
      *v8 = 0;
      *(v8 + 7) = 0;
      *(v8 + 1) = 141568;
      if ((v5 & 4) != 0)
      {
        v8[7] = 0x80;
      }

      v26 = 256;
      size = v6 + 11;
      v9 = *(a1 + 71);
      if (v9)
      {
        v10 = *(a1 + 72);
        v11 = v6 + ((v10 + 7) >> 3) + 19;
        v12 = 4294960553;
        if (v11 <= v7 || v11 > 0x200)
        {
          goto LABEL_33;
        }

        v13 = &buffer[v7];
        bzero(&buffer[v7], v11 - v7);
        *(v8 + 9) = bswap32(&buffer[v11] - v8 - 11) >> 16;
        *v13 = 2048;
        v13[4] = 0;
        v14 = &buffer[v11] - (v13 + 4);
        v13[2] = HIBYTE(v14);
        v13[3] = v14;
        v13[5] = v9;
        v13[6] = v10;
        v13[7] = 0;
        v15 = v13 + 8;
        if (v10 >= 8)
        {
          memcpy(v15, (a1 + 73), v10 >> 3);
        }

        if ((v10 & 7) != 0)
        {
          *(v15 + (v10 >> 3)) = *(v15 + (v10 >> 3)) & ~(-1 << (8 - (v10 & 7))) | *(a1 + 73 + (v10 >> 3)) & (-1 << (8 - (v10 & 7)));
        }

        size = v6 + ((v10 + 7) >> 3) + 19;
        v7 = size;
      }

      if ((v5 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      if (v7 <= 0x1FA)
      {
        v12 = 4294960554;
        if (v7 <= v6 || v7 - v6 < 0xB)
        {
          goto LABEL_33;
        }

        v16 = &buffer[v7];
        v7 += 6;
        *(v8 + 9) = bswap32(buffer + v7 - v8 - 11) >> 16;
        *v16 = 33558272;
        *(v16 + 2) = 0;
        size = v7;
LABEL_23:
        if ((v5 & 8) != 0)
        {
          v17 = (v7 + 131) & 0xFFFFFFFFFFFFFF80;
          v12 = 4294960553;
          if (v17 <= v7)
          {
            goto LABEL_33;
          }

          if (v17 > 0x200)
          {
            goto LABEL_33;
          }

          v12 = 4294960554;
          if (v7 <= v6 || v7 - v6 < 0xB)
          {
            goto LABEL_33;
          }

          v18 = &buffer[v7];
          bzero(&buffer[v7], v17 - v7);
          *(v8 + 9) = bswap32(&buffer[v17] - v8 - 11) >> 16;
          *v18 = 3072;
          v19 = &buffer[v17] - v18 - 4;
          v18[2] = HIBYTE(v19);
          v18[3] = v19;
          size = v17;
          v7 = v17;
        }

        goto LABEL_30;
      }
    }

    v12 = 4294960553;
    goto LABEL_33;
  }

  v7 = size;
LABEL_30:
  v20 = dispatch_data_create(buffer, v7, 0, 0);
  if (v20)
  {
    v21 = v20;
    v12 = _mdns_message_set_msg_data(a1, v20);
    dispatch_release(v21);
    if (!v12)
    {
      *(a1 + 70) |= 0x20u;
    }
  }

  else
  {
    v12 = 4294960568;
  }

LABEL_33:
  v22 = *MEMORY[0x29EDCA608];
  return v12;
}

id _mdns_ne_dns_proxy_state_watch_log()
{
  if (_mdns_ne_dns_proxy_state_watch_log_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_log_s_once, &__block_literal_global_15);
  }

  v1 = _mdns_ne_dns_proxy_state_watch_log_s_log;

  return v1;
}

id _mdns_ne_dns_proxy_state_watch_queue()
{
  if (_mdns_ne_dns_proxy_state_watch_queue_s_once != -1)
  {
    dispatch_once(&_mdns_ne_dns_proxy_state_watch_queue_s_once, &__block_literal_global_8_974);
  }

  v1 = _mdns_ne_dns_proxy_state_watch_queue_s_queue;

  return v1;
}

void _mdns_ne_dns_proxy_state_watch_fetch_manager_status(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v2 = [g_managers indexOfObjectIdenticalTo:v1];
  v3 = [g_managers count];
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v2 >= v3)
  {
    if (v5)
    {
      *buf = 134217984;
      v9 = v1;
      _os_log_impl(&dword_2990ED000, v4, OS_LOG_TYPE_INFO, "Not fetching status for stale manager -- address: %p", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      v9 = v1;
      _os_log_impl(&dword_2990ED000, v4, OS_LOG_TYPE_INFO, "Fetching status for manager -- address: %p", buf, 0xCu);
    }

    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke;
    v7[3] = &unk_29EF09BC0;
    v7[4] = v1;
    [v1 fetchStatusWithCompletionHandler:v7];
  }

  v6 = *MEMORY[0x29EDCA608];
}

void ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (a2 > 4)
    {
      v6 = "«UNKNOWN STATUS»";
    }

    else
    {
      v6 = off_29EF09BF8[a2];
    }

    *buf = 134218498;
    v11 = v5;
    v12 = 2082;
    v13 = v6;
    v14 = 2048;
    v15 = a2;
    _os_log_impl(&dword_2990ED000, v4, OS_LOG_TYPE_DEFAULT, "Fetched status for manager -- address: %p, status: %{public}s (%lld)", buf, 0x20u);
  }

  v7 = _mdns_ne_dns_proxy_state_watch_queue();
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke_29;
  v9[3] = &unk_29EF09B98;
  v9[4] = *(a1 + 32);
  v9[5] = a2;
  dispatch_async(v7, v9);

  v8 = *MEMORY[0x29EDCA608];
}

void ___mdns_ne_dns_proxy_state_watch_fetch_manager_status_block_invoke_29(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = [g_managers indexOfObjectIdenticalTo:v2];
  if (v3 >= [g_managers count])
  {
    v7 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v2;
      _os_log_impl(&dword_2990ED000, v7, OS_LOG_TYPE_DEFAULT, "Not handling status update for stale manager -- address: %p", &v8, 0xCu);
    }
  }

  else
  {
    if (v1 == 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v4];
    [g_states setObject:v5 atIndexedSubscript:v3];

    _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change();
  }

  v6 = *MEMORY[0x29EDCA608];
}

void _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change()
{
  v21 = *MEMORY[0x29EDCA608];
  v0 = g_current_state;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = g_states;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:buf count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v13 + 1) + 8 * i) unsignedIntValue];
        if (v7)
        {
          v8 = v7;
          if (v7 == 2)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v4 = 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:buf count:16];
    }

    while (v3);
    v8 = (v4 & 1) == 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  if (v8 != v0)
  {
    g_current_state = v8;
    v9 = off_29EF09BE0[v0];
    v10 = off_29EF09BE0[v8];
    v11 = _mdns_ne_dns_proxy_state_watch_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v18 = v9;
      v19 = 2082;
      v20 = v10;
      _os_log_impl(&dword_2990ED000, v11, OS_LOG_TYPE_DEFAULT, "State change: %{public}s -> %{public}s", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_ne_dns_proxy_state_watch_queue_block_invoke()
{
  _mdns_ne_dns_proxy_state_watch_queue_s_queue = dispatch_queue_create("com.apple.mdns.ne-dns-proxy-state-watch", 0);

  return MEMORY[0x2A1C71028]();
}

uint64_t ___mdns_ne_dns_proxy_state_watch_log_block_invoke()
{
  _mdns_ne_dns_proxy_state_watch_log_s_log = os_log_create("com.apple.mdns", "ne_dns_proxy_state_watch");

  return MEMORY[0x2A1C71028]();
}

void ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _mdns_ne_dns_proxy_state_watch_queue();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke_2;
  block[3] = &unk_29EF09B08;
  block[4] = v2;
  dispatch_async(v3, block);
}

void ___mdns_ne_dns_proxy_state_watch_load_managers_block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v3 = g_managers;
  g_managers = v2;

  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v5 = g_states;
  g_states = v4;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v1;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([g_managers indexOfObjectIdenticalTo:{v11, v15}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [g_managers addObject:v11];
          [g_states addObject:&unk_2A1F34CA0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v8);
  }

  _mdns_ne_dns_proxy_state_watch_check_for_collective_state_change();
  v12 = [g_managers count];
  v13 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_2990ED000, v13, OS_LOG_TYPE_DEFAULT, "Updated DNS proxy managers -- count: %llu", &buf, 0xCu);
  }

  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 3221225472;
  v20 = ___mdns_ne_dns_proxy_state_watch_handle_new_managers_block_invoke;
  v21 = &__block_descriptor_40_e34_v32__0__NEDNSProxyManager_8Q16_B24l;
  v22 = v12;
  [g_managers enumerateObjectsUsingBlock:&buf];

  v14 = *MEMORY[0x29EDCA608];
}

void ___mdns_ne_dns_proxy_state_watch_handle_new_managers_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = a2;
  v6 = _mdns_ne_dns_proxy_state_watch_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 134218754;
    v10 = a3 + 1;
    v11 = 2048;
    v12 = v7;
    v13 = 2048;
    v14 = v5;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEFAULT, "DNS proxy manager (%llu/%llu) -- address: %p, description: %@", &v9, 0x2Au);
  }

  [v5 setDelegate:0];
  _mdns_ne_dns_proxy_state_watch_fetch_manager_status(v5);

  v8 = *MEMORY[0x29EDCA608];
}

nw_protocol_definition_t ___mdns_get_dns_over_bytestream_protocol_definition_block_invoke()
{
  result = nw_framer_create_definition("DNS over bytestream", 0, &__block_literal_global_18);
  _mdns_get_dns_over_bytestream_protocol_definition_s_framer_def = result;
  return result;
}

void ___mdns_create_dns_over_bytestream_framer_block_invoke_3(int a1, nw_framer_t framer, uint64_t a3, size_t a4)
{
  if (a4 < 0x10000)
  {
    *output_buffer = bswap32(a4) >> 16;
    nw_framer_write_output(framer, output_buffer, 2uLL);
    nw_framer_write_output_no_copy(framer, a4);
  }

  else
  {

    nw_framer_mark_failed_with_error(framer, 40);
  }
}

uint64_t ___mdns_create_dns_over_bytestream_framer_block_invoke(int a1, nw_framer_t framer)
{
  do
  {
    if (!nw_framer_parse_input(framer, 2uLL, 2uLL, temp_buffer, &__block_literal_global_9))
    {
      break;
    }

    v3 = __rev16(*temp_buffer);
    v4 = nw_framer_message_create(framer);
    LODWORD(v3) = nw_framer_deliver_input_no_copy(framer, v3, v4, 1);
    nw_release(v4);
  }

  while (v3);
  return 2;
}

uint64_t ___mdns_create_dns_over_bytestream_framer_block_invoke_4(int a1, nw_framer_t framer)
{
  nw_framer_set_input_handler(framer, &__block_literal_global_5_1004);
  nw_framer_set_output_handler(framer, &__block_literal_global_13_1005);
  return 1;
}

uint64_t mdns_copy_description(uint64_t a1)
{
  v1 = (a1 + 16);
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    v2 = v1[3];
    if (v2)
    {
      return v2();
    }
  }

  return 0;
}

uint64_t mdns_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && (v4 = *(v2 + 32)) != 0)
  {
    return v4();
  }

  else
  {
    return 0;
  }
}

void mdns_free_context_finalizer(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t mdns_pf_set_thread_nat64_rules(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v31 = 0;
  thread_nat64_rule_user = _mdns_pf_create_thread_nat64_rule_user(&v31);
  if (v31)
  {
    v19 = 0;
    v17 = 0;
    v12 = 0;
    goto LABEL_19;
  }

  if (a2 >= 0x81)
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v25 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158210;
      *v36 = 16;
      *&v36[4] = 2096;
      *&v36[6] = a1;
      v37 = 1024;
      v38 = a2;
      _os_log_error_impl(&dword_2990ED000, v25, OS_LOG_TYPE_ERROR, "Invalid IPv6 prefix length: %{network:in6_addr}.16P/%d", buf, 0x18u);
    }

    v10 = -6743;
    goto LABEL_33;
  }

  if (a2 != 128)
  {
    v7 = a2 >> 3;
    v8 = a2 & 7;
    while (!(a1[v7] << v8))
    {
      v8 = 0;
      if (++v7 == 16)
      {
        goto LABEL_7;
      }
    }

    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v24 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158210;
      *v36 = 16;
      *&v36[4] = 2096;
      *&v36[6] = a1;
      v37 = 1024;
      v38 = a2;
      _os_log_error_impl(&dword_2990ED000, v24, OS_LOG_TYPE_ERROR, "Invalid IPv6 prefix: %{network:in6_addr}.16P/%d", buf, 0x18u);
    }

    v10 = -6761;
    goto LABEL_33;
  }

LABEL_7:
  v9 = inet_ntop(30, a1, v33, 0x2Eu);
  if (!v9)
  {
    if (*__error())
    {
      v10 = *__error();
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = -6700;
    }

    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v22 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v36 = v10;
      _os_log_error_impl(&dword_2990ED000, v22, OS_LOG_TYPE_ERROR, "inet_ntop() for IPv6 prefix failed: %{mdns:err}ld", buf, 0xCu);
    }

    goto LABEL_33;
  }

LABEL_10:
  snprintf(__str, 0x6EuLL, "%s/%d", v9, a2);
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v26 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v26, OS_LOG_TYPE_ERROR, "Failed to create destination XPC dictionary", buf, 2u);
    }

    v10 = -6729;
LABEL_33:
    v19 = 0;
    v17 = 0;
    v12 = 0;
    v31 = v10;
    goto LABEL_19;
  }

  v12 = v11;
  v13 = MEMORY[0x29EDC6078];
  xpc_dictionary_set_string(v11, *MEMORY[0x29EDC6078], __str);
  v31 = 0;
  *buf = a3;
  v14 = inet_ntop(2, buf, __str, 0x10u);
  if (v14)
  {
    goto LABEL_14;
  }

  if (!*__error())
  {
    v15 = -6700;
    goto LABEL_35;
  }

  v15 = *__error();
  if (v15)
  {
LABEL_35:
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v23 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *v33 = 134217984;
      v34 = v15;
      _os_log_error_impl(&dword_2990ED000, v23, OS_LOG_TYPE_ERROR, "inet_ntop() for IPv4 address failed: %{mdns:err}ld", v33, 0xCu);
    }

    goto LABEL_39;
  }

LABEL_14:
  v16 = xpc_dictionary_create(0, 0, 0);
  if (!v16)
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v27 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_error_impl(&dword_2990ED000, v27, OS_LOG_TYPE_ERROR, "Failed to create NAT64 XPC dictionary", v33, 2u);
    }

    v15 = -6729;
LABEL_39:
    v19 = 0;
    v17 = 0;
    v31 = v15;
    goto LABEL_19;
  }

  v17 = v16;
  xpc_dictionary_set_string(v16, *v13, v14);
  xpc_dictionary_set_uint64(v17, *MEMORY[0x29EDC6088], 0x8000uLL);
  xpc_dictionary_set_uint64(v17, *MEMORY[0x29EDC6080], 0xBFFFuLL);
  xpc_dictionary_set_uint64(v17, *MEMORY[0x29EDC6090], 0);
  v31 = 0;
  v18 = xpc_dictionary_create(0, 0, 0);
  if (!v18)
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v28 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_2990ED000, v28, OS_LOG_TYPE_ERROR, "Failed to create NAT64 rule XPC dictionary", __str, 2u);
    }

    v19 = 0;
    v31 = -6729;
    goto LABEL_19;
  }

  v19 = v18;
  xpc_dictionary_set_uint64(v18, *MEMORY[0x29EDC6028], 0xDuLL);
  xpc_dictionary_set_uint64(v19, *MEMORY[0x29EDC6048], 0x1EuLL);
  xpc_dictionary_set_value(v19, *MEMORY[0x29EDC60A8], v12);
  xpc_dictionary_set_value(v19, *MEMORY[0x29EDC6060], v17);
  v31 = 0;
  if (PFUserBeginRules() == -1)
  {
    v31 = -6729;
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v29 = _mdns_pf_log_s_log;
    if (!os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *__str = 0;
    v30 = "PFUserBeginRules() failed to create a valid transaction ID";
LABEL_78:
    _os_log_error_impl(&dword_2990ED000, v29, OS_LOG_TYPE_ERROR, v30, __str, 2u);
    goto LABEL_19;
  }

  if ((PFUserAddRule() & 1) == 0)
  {
    v31 = -6700;
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v29 = _mdns_pf_log_s_log;
    if (!os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *__str = 0;
    v30 = "PFUserAddRule() failed";
    goto LABEL_78;
  }

  if ((PFUserCommitRules() & 1) == 0)
  {
    v31 = -6700;
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v29 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      v30 = "PFUserCommitRules() failed";
      goto LABEL_78;
    }
  }

LABEL_19:
  if (thread_nat64_rule_user)
  {
    PFUserRelease();
  }

  if (v12)
  {
    xpc_release(v12);
  }

  if (v17)
  {
    xpc_release(v17);
  }

  if (v19)
  {
    xpc_release(v19);
  }

  result = v31;
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _mdns_pf_create_thread_nat64_rule_user(int *a1)
{
  v2 = *MEMORY[0x29EDC6098];
  v3 = *MEMORY[0x29EDC60A0];
  if (_mdns_pf_queue_s_once != -1)
  {
    dispatch_once(&_mdns_pf_queue_s_once, &__block_literal_global_5_1140);
  }

  v4 = PFUserCreate();
  if (v4)
  {
    v5 = 0;
    if (a1)
    {
LABEL_5:
      *a1 = v5;
    }
  }

  else
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v7 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2990ED000, v7, OS_LOG_TYPE_ERROR, "PFUserCreate() failed to create nat64 rule user", v8, 2u);
    }

    v5 = -6700;
    if (a1)
    {
      goto LABEL_5;
    }
  }

  return v4;
}

os_log_t ___mdns_pf_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "pf");
  _mdns_pf_log_s_log = result;
  return result;
}

dispatch_queue_t ___mdns_pf_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mdns.pf-queue", 0);
  _mdns_pf_queue_s_queue = result;
  return result;
}

uint64_t mdns_pf_set_thread_pass_all_rule_for_conn_tracking(const char *a1)
{
  v14 = 0;
  thread_filter_rule_user = _mdns_pf_create_thread_filter_rule_user(&v14);
  if (v14)
  {
    v8 = 0;
    v4 = 0;
    goto LABEL_8;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v10 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v10, OS_LOG_TYPE_ERROR, "Failed to create conn tracking rule XPC dictionary", buf, 2u);
    }

    v8 = 0;
    v4 = 0;
    goto LABEL_26;
  }

  v4 = v3;
  v5 = MEMORY[0x29EDC6028];
  xpc_dictionary_set_uint64(v3, *MEMORY[0x29EDC6028], 0);
  xpc_dictionary_set_uint64(v4, *MEMORY[0x29EDC6040], 2uLL);
  v6 = MEMORY[0x29EDC6058];
  xpc_dictionary_set_uint64(v4, *MEMORY[0x29EDC6058], 1uLL);
  xpc_dictionary_set_string(v4, *MEMORY[0x29EDC6050], a1);
  v14 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  if (!v7)
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v11 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v11, OS_LOG_TYPE_ERROR, "Failed to create pass IGMP rule XPC dictionary", buf, 2u);
    }

    v8 = 0;
LABEL_26:
    v14 = -6729;
    goto LABEL_8;
  }

  v8 = v7;
  xpc_dictionary_set_uint64(v7, *v5, 0);
  xpc_dictionary_set_uint64(v8, *MEMORY[0x29EDC6068], 2uLL);
  xpc_dictionary_set_uint64(v8, *v6, 1uLL);
  xpc_dictionary_set_BOOL(v8, *MEMORY[0x29EDC6030], 1);
  v14 = 0;
  if (PFUserBeginRules() == -1)
  {
    v14 = -6729;
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v12 = _mdns_pf_log_s_log;
    if (!os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v13 = "PFUserBeginRules() failed to create a valid transaction ID";
LABEL_43:
    _os_log_error_impl(&dword_2990ED000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_8;
  }

  if ((PFUserAddRule() & 1) == 0)
  {
    v14 = -6700;
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v12 = _mdns_pf_log_s_log;
    if (!os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v13 = "PFUserAddRule() for connection tracking failed";
    goto LABEL_43;
  }

  if ((PFUserAddRule() & 1) == 0)
  {
    v14 = -6700;
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v12 = _mdns_pf_log_s_log;
    if (!os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v13 = "PFUserAddRule() for pass IGMP failed";
    goto LABEL_43;
  }

  if ((PFUserCommitRules() & 1) == 0)
  {
    v14 = -6700;
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v12 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "PFUserCommitRules() failed";
      goto LABEL_43;
    }
  }

LABEL_8:
  if (thread_filter_rule_user)
  {
    PFUserRelease();
  }

  if (v4)
  {
    xpc_release(v4);
  }

  if (v8)
  {
    xpc_release(v8);
  }

  return v14;
}

uint64_t _mdns_pf_create_thread_filter_rule_user(int *a1)
{
  v2 = *MEMORY[0x29EDC6070];
  v3 = *MEMORY[0x29EDC6038];
  if (_mdns_pf_queue_s_once != -1)
  {
    dispatch_once(&_mdns_pf_queue_s_once, &__block_literal_global_5_1140);
  }

  v4 = PFUserCreate();
  if (v4)
  {
    v5 = 0;
    if (a1)
    {
LABEL_5:
      *a1 = v5;
    }
  }

  else
  {
    if (_mdns_pf_log_s_once != -1)
    {
      dispatch_once(&_mdns_pf_log_s_once, &__block_literal_global_1123);
    }

    v7 = _mdns_pf_log_s_log;
    if (os_log_type_enabled(_mdns_pf_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2990ED000, v7, OS_LOG_TYPE_ERROR, "PFUserCreate() failed to create filter rule user", v8, 2u);
    }

    v5 = -6700;
    if (a1)
    {
      goto LABEL_5;
    }
  }

  return v4;
}

uint64_t mdns_pf_delete_thread_rules()
{
  v1 = 0;
  if (!_mdns_pf_create_thread_nat64_rule_user(&v1))
  {
    return v1;
  }

  PFUserDeleteRules();
  PFUserRelease();
  return 0;
}

uint64_t mdns_pf_delete_thread_pass_all_rule_for_conn_tracking()
{
  v1 = 0;
  if (!_mdns_pf_create_thread_filter_rule_user(&v1))
  {
    return v1;
  }

  PFUserDeleteRules();
  PFUserRelease();
  return 0;
}

void mdns_power_cancel_all_events(const void *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = IOPMCopyScheduledPowerEvents();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
        if (Value)
        {
          v9 = Value;
          if (CFEqual(Value, a1))
          {
            v10 = CFDictionaryGetValue(ValueAtIndex, @"time");
            v11 = CFDictionaryGetValue(ValueAtIndex, @"eventtype");
            v12 = IOPMCancelScheduledPowerEvent(v10, v9, v11);
            if (_mdns_power_log_s_once != -1)
            {
              dispatch_once(&_mdns_power_log_s_once, &__block_literal_global_1155);
            }

            v13 = _mdns_power_log_s_log;
            if (v12)
            {
              v14 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v14 = OS_LOG_TYPE_INFO;
            }

            if (os_log_type_enabled(_mdns_power_log_s_log, v14))
            {
              *buf = 134218754;
              v17 = v12;
              v18 = 2112;
              v19 = v9;
              v20 = 2112;
              v21 = v11;
              v22 = 2112;
              v23 = v10;
              _os_log_impl(&dword_2990ED000, v13, v14, "IOPMCancelScheduledPowerEvent -- error: %{mdns:err}ld, id: %@, type: %@, time: %@", buf, 0x2Au);
            }
          }
        }
      }
    }

    CFRelease(v3);
  }

  v15 = *MEMORY[0x29EDCA608];
}

os_log_t ___mdns_power_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "power");
  _mdns_power_log_s_log = result;
  return result;
}

uint64_t mdns_power_schedule_wake(void *a1, int a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  valuePtr = a3;
  v5 = *MEMORY[0x29EDB8ED8];
  Current = CFAbsoluteTimeGetCurrent();
  v7 = CFDateCreate(v5, Current + a2);
  if (v7)
  {
    v8 = v7;
    v9 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
    if (v9)
    {
      v10 = v9;
      *keys = xmmword_29EF09D00;
      v25 = @"leeway";
      values[0] = a1;
      values[1] = v8;
      values[2] = v9;
      v11 = CFDictionaryCreate(v5, keys, values, 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v11)
      {
        v12 = v11;
        v13 = IOPMRequestSysWake();
        if (_mdns_power_log_s_once != -1)
        {
          dispatch_once(&_mdns_power_log_s_once, &__block_literal_global_1155);
        }

        v14 = _mdns_power_log_s_log;
        if (v13)
        {
          v15 = OS_LOG_TYPE_ERROR;
        }

        else
        {
          v15 = OS_LOG_TYPE_INFO;
        }

        if (os_log_type_enabled(_mdns_power_log_s_log, v15))
        {
          *buf = 134218242;
          v20 = v13;
          v21 = 2112;
          v22 = v12;
          _os_log_impl(&dword_2990ED000, v14, v15, "IOPMRequestSysWake -- error: %{mdns:err}ld, request: %@", buf, 0x16u);
        }

        CFRelease(v12);
      }

      else
      {
        v13 = 4294960567;
      }

      CFRelease(v8);
    }

    else
    {
      v13 = 4294960567;
      v10 = v8;
    }

    CFRelease(v10);
  }

  else
  {
    v13 = 4294960567;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v13;
}

void _mdns_resolver_finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    nw_release(v2);
    a1[6] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    free(v3);
    a1[8] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    dispatch_release(v5);
    a1[9] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    _Block_release(v6);
    a1[10] = 0;
  }
}

void *_mdns_resolver_copy_description(uint64_t a1, int a2, char a3)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v22[3] = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v24 + 6) = appended;
      if (appended)
      {
        goto LABEL_5;
      }
    }

    v9 = mdns_string_builder_append_formatted(v7, "%s", *(*(a1 + 16) + 48));
    *(v24 + 6) = v9;
    if (v9)
    {
      goto LABEL_5;
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      name = nw_interface_get_name(v12);
      v14 = name ? name : "???";
      index = nw_interface_get_index(*(a1 + 48));
      v16 = mdns_string_builder_append_formatted(v7, " using interface %s (%u)", v14, index);
      *(v24 + 6) = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v17 = mdns_string_builder_append_formatted(v7, " with servers [");
    *(v24 + 6) = v17;
    if (v17)
    {
      goto LABEL_5;
    }

    v18 = *(a1 + 56);
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 0x40000000;
    v20[2] = ___mdns_resolver_copy_description_block_invoke;
    v20[3] = &unk_29EF09F80;
    v20[4] = &v23;
    v20[5] = v22;
    v20[6] = v7;
    v21 = a3;
    mdns_cfarray_enumerate(v18, v20);
    if (*(v24 + 6) || (v19 = mdns_string_builder_append_formatted(v7, "]"), (*(v24 + 6) = v19) != 0))
    {
LABEL_5:
      v10 = 0;
    }

    else
    {
      v10 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v23, 8);
  return v10;
}

BOOL ___mdns_resolver_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void _mdns_server_finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    nw_release(v2);
    a1[6] = 0;
  }

  v3 = a1[7];
  if (v3)
  {
    nw_release(v3);
    a1[7] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      do
      {
        v6 = *v5;
        _pqw_qname_item_free(v5);
        v5 = v6;
      }

      while (v6);
    }

    free(v4);
    a1[8] = 0;
  }
}

void _pqw_qname_item_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void *_mdns_server_copy_description(uint64_t a1, int a2, int a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (!a2 || !mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1))
    {
      if (nw_endpoint_get_type(*(a1 + 48)) == nw_endpoint_type_address)
      {
        address = nw_endpoint_get_address(*(a1 + 48));
        if (*(a1 + 111))
        {
          v9 = a3 | 2;
        }

        else
        {
          v9 = a3;
        }

        if (!mdns_string_builder_append_sockaddr_description(v7, address, v9))
        {
LABEL_19:
          v10 = mdns_string_builder_copy_string(v7);
          goto LABEL_20;
        }
      }

      else
      {
        hostname = nw_endpoint_get_hostname(*(a1 + 48));
        v12 = "«MISSING HOSTNAME»";
        if (hostname)
        {
          v12 = hostname;
          if (a3)
          {
            v13 = DNSMessagePrintObfuscatedString(v17, 64, hostname);
            v12 = "«REDACTED HOSTNAME»";
            if (v13 >= 0)
            {
              v12 = v17;
            }
          }
        }

        if (!mdns_string_builder_append_formatted(v7, "%s", v12))
        {
          if (*(a1 + 111))
          {
            goto LABEL_19;
          }

          port = nw_endpoint_get_port(*(a1 + 48));
          if (!mdns_string_builder_append_formatted(v7, ":%u", port))
          {
            goto LABEL_19;
          }
        }
      }
    }

    v10 = 0;
LABEL_20:
    os_release(v7);
    goto LABEL_21;
  }

  v10 = 0;
LABEL_21:
  v15 = *MEMORY[0x29EDCA608];
  return v10;
}

void _mdns_session_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    os_release(v2);
    *(a1 + 32) = 0;
  }

  *(a1 + 48) = 0;
}

void *_mdns_session_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v6 = 0;
  }

  else
  {
    v6 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v6;
}

void *mdns_resolver_create(int a1, int a2, int *a3)
{
  v6 = 0;
  v7 = -6756;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v6 = _os_object_alloc();
      v8 = v6;
      if (v6)
      {
        v15 = &_mdns_tls_resolver_kind;
        v6[2] = &_mdns_tls_resolver_kind;
        do
        {
          v16 = v15[2];
          if (v16)
          {
            v16(v8);
          }

          v15 = *v15;
        }

        while (v15);
        goto LABEL_29;
      }
    }

    else
    {
      v8 = 0;
      if (a1 != 4)
      {
        goto LABEL_33;
      }

      v6 = _os_object_alloc();
      v8 = v6;
      if (v6)
      {
        v11 = &_mdns_https_resolver_kind;
        v6[2] = &_mdns_https_resolver_kind;
        do
        {
          v12 = v11[2];
          if (v12)
          {
            v12(v8);
          }

          v11 = *v11;
        }

        while (v11);
        goto LABEL_29;
      }
    }

    goto LABEL_38;
  }

  if (a1 == 1)
  {
    v6 = _os_object_alloc();
    v8 = v6;
    if (v6)
    {
      v13 = &_mdns_normal_resolver_kind;
      v6[2] = &_mdns_normal_resolver_kind;
      do
      {
        v14 = v13[2];
        if (v14)
        {
          v14(v8);
        }

        v13 = *v13;
      }

      while (v13);
      goto LABEL_29;
    }

LABEL_38:
    v7 = -6728;
    goto LABEL_33;
  }

  v8 = 0;
  if (a1 != 2)
  {
    goto LABEL_33;
  }

  v6 = _os_object_alloc();
  v8 = v6;
  if (!v6)
  {
    goto LABEL_38;
  }

  v9 = &_mdns_tcp_resolver_kind;
  v6[2] = &_mdns_tcp_resolver_kind;
  do
  {
    v10 = v9[2];
    if (v10)
    {
      v10(v8);
    }

    v9 = *v9;
  }

  while (v9);
LABEL_29:
  Mutable = CFArrayCreateMutable(0, 0, &mdns_cfarray_callbacks);
  v8[7] = Mutable;
  if (Mutable)
  {
    if (!a2 || (v18 = nw_interface_create_with_index(), (v8[6] = v18) != 0))
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_33;
    }

    v7 = -6700;
  }

  else
  {
    v7 = -6729;
  }

  v6 = v8;
  v8 = 0;
LABEL_33:
  if (a3)
  {
    *a3 = v7;
  }

  if (v6)
  {
    os_release(v6);
  }

  return v8;
}

uint64_t _mdns_https_resolver_get_effective_connection_hostname(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    return *(a1 + 144);
  }

  return result;
}

nw_parameters_t _mdns_https_resolver_get_stream_params(void *a1, int *a2)
{
  v3 = a1[23];
  if (!v3)
  {
    if (a1[18])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2000000000;
      v17 = 0;
      v13[0] = MEMORY[0x29EDCA5F8];
      v13[1] = 0x40000000;
      v13[2] = ___mdns_https_resolver_create_stream_params_block_invoke;
      v13[3] = &unk_29EF09ED0;
      v13[4] = &v14;
      v13[5] = a1;
      tcp = _mdns_nw_parameters_create_tcp(v13);
      if (!tcp)
      {
        _Block_object_dispose(&v14, 8);
        v4 = -6729;
        goto LABEL_22;
      }

      v3 = tcp;
      v8 = *(v15 + 24);
      _Block_object_dispose(&v14, 8);
      if ((v8 & 1) == 0)
      {
        nw_release(v3);
        v4 = -6700;
LABEL_22:
        v3 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v3 = _mdns_nw_parameters_create_tcp(*MEMORY[0x29EDBB840]);
      if (!v3)
      {
        v4 = -6729;
        goto LABEL_19;
      }
    }

    v12 = 0;
    v9 = a1[18];
    v10 = a1[20];
    if (!v10)
    {
      v10 = "";
    }

    asprintf(&v12, "https://%s%s", a1[18], v10);
    nw_parameters_set_url();
    if (v12)
    {
      free(v12);
    }

    v11 = a1[6];
    if (v11)
    {
      nw_parameters_require_interface(v3, v11);
    }

    if (__isPlatformVersionAtLeast(2, 19, 0, 0))
    {
      nw_parameters_set_is_encrypted_dns_resolver_connection();
    }

    v4 = 0;
LABEL_19:
    a1[23] = v3;
    if (!a2)
    {
      return v3;
    }

    goto LABEL_3;
  }

  v4 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v4;
  }

  return v3;
}

void ___mdns_https_resolver_create_stream_params_block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    sec_protocol_options_set_tls_server_name(v3, *(*(a1 + 40) + 144));
    sec_protocol_options_set_peer_authentication_required(v4, 1);
    sec_protocol_options_add_tls_application_protocol(v4, "h2");
    sec_release(v4);
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

nw_parameters_t _mdns_nw_parameters_create_tcp(void *a1)
{
  secure_tcp = nw_parameters_create_secure_tcp(a1, *MEMORY[0x29EDBB840]);
  if (secure_tcp)
  {
    nw_parameters_set_indefinite();
    nw_parameters_set_no_wake_from_sleep();
  }

  return secure_tcp;
}

uint64_t _mdns_https_resolver_update_odoh_config_async(void *a1, char *__s1, char *a3, const void *a4, size_t a5, void *a6)
{
  v10 = a3;
  if (__s1)
  {
    v12 = strdup(__s1);
    if (!v12)
    {
      goto LABEL_14;
    }

    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    v10 = strdup(v10);
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
LABEL_13:
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___mdns_https_resolver_update_odoh_config_async_block_invoke;
    block[3] = &__block_descriptor_tmp_43_1259;
    block[4] = v12;
    block[5] = a1;
    block[6] = v10;
    block[7] = v6;
    block[8] = a6;
    dispatch_async(_mdns_resolver_queue_s_queue, block);
    return 0;
  }

  v12 = 0;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = 0;
  if (!a4 || !a5 || (v6 = xpc_data_create(a4, a5)) != 0)
  {
    if (a6)
    {
      nw_retain(a6);
    }

    os_retain(a1);
    if (_mdns_resolver_queue_s_once == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v12)
  {
    free(v12);
  }

  if (v10)
  {
    free(v10);
  }

  return 4294960567;
}

void ___mdns_https_resolver_update_odoh_config_async_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = *(v3 + 144);
    if (v4)
    {
      free(v4);
      *(a1[5] + 144) = 0;
      v2 = a1[4];
      v3 = a1[5];
    }

    *(v3 + 144) = v2;
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = a1[5];
    v7 = *(v6 + 160);
    if (v7)
    {
      free(v7);
      *(a1[5] + 160) = 0;
      v6 = a1[5];
      v5 = a1[6];
    }

    *(v6 + 160) = v5;
  }

  v8 = a1[5];
  v10 = a1[7];
  v9 = a1[8];
  v11 = v8[23];
  if (v11)
  {
    nw_release(v11);
    v8[23] = 0;
  }

  v12 = v8[21];
  if (v12 != v10)
  {
    if (v12)
    {
      xpc_release(v12);
    }

    v8[21] = v10;
    if (v10)
    {
      xpc_retain(v10);
    }
  }

  v13 = v8[22];
  if (v13 != v9)
  {
    if (v13)
    {
      nw_release(v13);
    }

    v8[22] = v9;
    if (v9)
    {
      nw_retain(v9);
    }
  }

  v14 = a1[7];
  if (v14)
  {
    xpc_release(v14);
  }

  v15 = a1[8];
  if (v15)
  {
    nw_release(v15);
  }

  v16 = a1[5];

  os_release(v16);
}

dispatch_queue_t ___mdns_resolver_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mdns.resolver-queue", 0);
  _mdns_resolver_queue_s_queue = result;
  return result;
}

uint64_t _mdns_https_resolver_set_identity(uint64_t a1, UInt8 *bytes, CFIndex length)
{
  v7 = 0;
  if (bytes)
  {
    v4 = _mdns_copy_sec_identity(bytes, length, &v7);
    result = v7;
    if (v7)
    {
      return result;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a1 + 192);
  if (v6)
  {
    CFRelease(v6);
  }

  result = 0;
  *(a1 + 192) = v4;
  return result;
}

CFTypeRef _mdns_copy_sec_identity(UInt8 *bytes, CFIndex length, int *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  result = 0;
  v4 = CFDataCreate(0, bytes, length);
  if (!v4)
  {
LABEL_21:
    v11 = 0;
    v13 = -6729;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v5 = v4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    CFRelease(v5);
    goto LABEL_21;
  }

  v7 = Mutable;
  v8 = *MEMORY[0x29EDB8F00];
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDBBCC0], *MEMORY[0x29EDB8F00]);
  CFDictionarySetValue(v7, *MEMORY[0x29EDBBCD8], v5);
  CFDictionarySetValue(v7, *MEMORY[0x29EDBBC30], *MEMORY[0x29EDBBC48]);
  CFDictionarySetValue(v7, *MEMORY[0x29EDBBCC8], v8);
  v9 = SecItemCopyMatching(v7, &result);
  if (v9)
  {
    v13 = v9;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v17 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = v5;
      v23 = 2048;
      v24 = v13;
      _os_log_error_impl(&dword_2990ED000, v17, OS_LOG_TYPE_ERROR, "Failed to find identity item -- reference: %@, error: %{mdns:err}ld", buf, 0x16u);
    }

    v11 = 0;
  }

  else if (result && (v10 = CFGetTypeID(result), v10 == SecIdentityGetTypeID()))
  {
    v11 = result;
    result = 0;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v12 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_debug_impl(&dword_2990ED000, v12, OS_LOG_TYPE_DEBUG, "Found identity with reference %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_FAULT))
    {
      if (result)
      {
        v19 = CFGetTypeID(result);
        v18 = CFCopyTypeIDDescription(v19);
      }

      else
      {
        v18 = @"none";
      }

      *buf = 138412546;
      v22 = v5;
      v23 = 2114;
      v24 = v18;
      _os_log_fault_impl(&dword_2990ED000, v16, OS_LOG_TYPE_FAULT, "Unexpected identity item type -- reference: %@, type: %{public}@", buf, 0x16u);
    }

    v11 = 0;
    v13 = -6756;
  }

  CFRelease(v5);
  CFRelease(v7);
  if (result)
  {
    CFRelease(result);
  }

  if (a3)
  {
LABEL_14:
    *a3 = v13;
  }

LABEL_15:
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

os_log_t ___mdns_resolver_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "resolver");
  _mdns_resolver_log_s_log = result;
  return result;
}

void _mdns_https_resolver_finalize(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    free(v2);
    a1[18] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    free(v3);
    a1[19] = 0;
  }

  v4 = a1[20];
  if (v4)
  {
    free(v4);
    a1[20] = 0;
  }

  v5 = a1[21];
  if (v5)
  {
    xpc_release(v5);
    a1[21] = 0;
  }

  v6 = a1[22];
  if (v6)
  {
    nw_release(v6);
    a1[22] = 0;
  }

  v7 = a1[23];
  if (v7)
  {
    nw_release(v7);
    a1[23] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    CFRelease(v8);
    a1[24] = 0;
  }
}

uint64_t _mdns_tls_resolver_get_effective_connection_hostname(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    return *(a1 + 144);
  }

  return result;
}

nw_parameters_t _mdns_tls_resolver_get_stream_params(void *a1, int *a2)
{
  v3 = a1[20];
  if (!v3)
  {
    if (a1[18] || a1[21])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2000000000;
      v15 = 0;
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 0x40000000;
      v11[2] = ___mdns_tls_resolver_create_stream_params_block_invoke;
      v11[3] = &unk_29EF09E88;
      v11[4] = &v12;
      v11[5] = a1;
      tcp = _mdns_nw_parameters_create_tcp(v11);
      if (!tcp)
      {
        _Block_object_dispose(&v12, 8);
        v4 = -6729;
LABEL_23:
        v3 = 0;
        goto LABEL_15;
      }

      v3 = tcp;
      v8 = *(v13 + 24);
      _Block_object_dispose(&v12, 8);
      if ((v8 & 1) == 0)
      {
        v4 = -6777;
LABEL_22:
        nw_release(v3);
        goto LABEL_23;
      }
    }

    else
    {
      v3 = _mdns_nw_parameters_create_tcp(*MEMORY[0x29EDBB840]);
      if (!v3)
      {
        v4 = -6729;
        goto LABEL_15;
      }
    }

    v9 = a1[6];
    if (v9)
    {
      nw_parameters_require_interface(v3, v9);
    }

    v10 = _mdns_add_dns_over_bytestream_framer(v3);
    if (!v10)
    {
      if (__isPlatformVersionAtLeast(2, 19, 0, 0))
      {
        nw_parameters_set_is_encrypted_dns_resolver_connection();
      }

      v4 = 0;
LABEL_15:
      a1[20] = v3;
      if (!a2)
      {
        return v3;
      }

      goto LABEL_3;
    }

    v4 = v10;
    goto LABEL_22;
  }

  v4 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v4;
  }

  return v3;
}

void ___mdns_tls_resolver_create_stream_params_block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 40);
    v6 = *(v5 + 144);
    if (v6)
    {
      sec_protocol_options_set_tls_server_name(v3, v6);
      sec_protocol_options_set_peer_authentication_required(v4, 1);
      v5 = *(a1 + 40);
    }

    v7 = *(v5 + 168);
    if (v7)
    {
      sec_protocol_options_set_local_identity(v4, v7);
      v5 = *(a1 + 40);
    }

    verify_block[0] = MEMORY[0x29EDCA5F8];
    verify_block[1] = 0x40000000;
    verify_block[2] = ___mdns_tls_resolver_create_stream_params_block_invoke_2;
    verify_block[3] = &__block_descriptor_tmp_38_1287;
    verify_block[4] = v5;
    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    sec_protocol_options_set_verify_block(v4, verify_block, _mdns_resolver_queue_s_queue);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    sec_release(v4);
  }
}

uint64_t _mdns_add_dns_over_bytestream_framer(NSObject *a1)
{
  v1 = nw_parameters_copy_default_protocol_stack(a1);
  if (!v1)
  {
    return 4294960567;
  }

  v2 = v1;
  if (_mdns_copy_dns_over_bytestream_framer_s_once != -1)
  {
    dispatch_once(&_mdns_copy_dns_over_bytestream_framer_s_once, &__block_literal_global_11_1271);
  }

  if (!_mdns_copy_dns_over_bytestream_framer_s_framer_def || (nw_retain(_mdns_copy_dns_over_bytestream_framer_s_framer_def), (v3 = _mdns_copy_dns_over_bytestream_framer_s_framer_def) == 0))
  {
    v5 = 4294960567;
    options = v2;
LABEL_9:
    nw_release(options);
    return v5;
  }

  options = nw_framer_create_options(_mdns_copy_dns_over_bytestream_framer_s_framer_def);
  if (options)
  {
    nw_protocol_stack_prepend_application_protocol(v2, options);
    v5 = 0;
  }

  else
  {
    v5 = 4294960567;
  }

  nw_release(v2);
  nw_release(v3);
  if (options)
  {
    goto LABEL_9;
  }

  return v5;
}

nw_protocol_definition_t ___mdns_copy_dns_over_bytestream_framer_block_invoke()
{
  result = nw_framer_create_definition("DNS over byte-stream", 0, &__block_literal_global_28);
  _mdns_copy_dns_over_bytestream_framer_s_framer_def = result;
  return result;
}

uint64_t ___mdns_create_dns_over_bytestream_framer_block_invoke_1278(int a1, nw_framer_t framer)
{
  nw_framer_set_input_handler(framer, &__block_literal_global_15_1279);
  nw_framer_set_output_handler(framer, &__block_literal_global_23);
  return 1;
}

void _mdns_normal_resolver_kind_block_invoke_3(int a1, nw_framer_t framer, uint64_t a3, size_t a4)
{
  if (a4 < 0x10000)
  {
    *output_buffer = bswap32(a4) >> 16;
    nw_framer_write_output(framer, output_buffer, 2uLL);
    nw_framer_write_output_no_copy(framer, a4);
  }

  else
  {

    nw_framer_mark_failed_with_error(framer, 40);
  }
}

uint64_t _mdns_normal_resolver_kind_block_invoke(int a1, nw_framer_t framer)
{
  do
  {
    if (!nw_framer_parse_input(framer, 2uLL, 2uLL, temp_buffer, &__block_literal_global_19))
    {
      break;
    }

    v3 = __rev16(*temp_buffer);
    v4 = nw_framer_message_create(framer);
    LODWORD(v3) = nw_framer_deliver_input_no_copy(framer, v3, v4, 1);
    nw_release(v4);
  }

  while (v3);
  return 2;
}

void ___mdns_tls_resolver_create_stream_params_block_invoke_2(uint64_t a1, int a2, sec_trust_t trust, uint64_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = sec_trust_copy_ref(trust);
  Allowed = SecTrustSetNetworkFetchAllowed(v6, 0);
  if (Allowed)
  {
    v10 = Allowed;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v11 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      (*(a4 + 16))(a4, 0);
      if (!v6)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v12 = *(*(a1 + 32) + 144);
    *buf = 136315394;
    v18 = v12;
    v19 = 2048;
    v20 = v10;
    v13 = "Failed to disable network fetch for trust evaluation -- provider name: %s, error: %{mdns:err}ld";
LABEL_18:
    _os_log_error_impl(&dword_2990ED000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
    goto LABEL_15;
  }

  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  result[0] = MEMORY[0x29EDCA5F8];
  result[1] = 0x40000000;
  result[2] = ___mdns_tls_resolver_create_stream_params_block_invoke_34;
  result[3] = &unk_29EF09E40;
  result[4] = a4;
  v8 = SecTrustEvaluateAsyncWithError(v6, _mdns_resolver_queue_s_queue, result);
  if (v8)
  {
    v14 = v8;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v11 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v15 = *(*(a1 + 32) + 144);
    *buf = 136315394;
    v18 = v15;
    v19 = 2048;
    v20 = v14;
    v13 = "Failed to start aynchronous trust evaluation -- provider name: %s, error: %{mdns:err}ld";
    goto LABEL_18;
  }

  if (v6)
  {
LABEL_6:
    CFRelease(v6);
  }

LABEL_7:
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_tls_resolver_create_stream_params_block_invoke_34(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if ((a3 & 1) == 0)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v6 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = a4;
      _os_log_error_impl(&dword_2990ED000, v6, OS_LOG_TYPE_ERROR, "Aynchronous trust evaluation failed: %@", &v9, 0xCu);
    }
  }

  result = (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _mdns_tls_resolver_set_identity(uint64_t a1, UInt8 *bytes, CFIndex length)
{
  v8 = 0;
  if (bytes)
  {
    v4 = _mdns_copy_sec_identity(bytes, length, &v8);
    result = v8;
    if (v8)
    {
      return result;
    }

    v6 = sec_identity_create(v4);
    if (v4)
    {
      CFRelease(v4);
    }

    if (!v6)
    {
      return 4294960567;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 168);
  if (v7)
  {
    sec_release(v7);
  }

  result = 0;
  *(a1 + 168) = v6;
  return result;
}

void _mdns_tls_resolver_finalize(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    free(v2);
    a1[18] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    free(v3);
    a1[19] = 0;
  }

  v4 = a1[20];
  if (v4)
  {
    nw_release(v4);
    a1[20] = 0;
  }

  v5 = a1[21];
  if (v5)
  {
    sec_release(v5);
    a1[21] = 0;
  }
}

NSObject *_mdns_tcp_resolver_get_stream_params(uint64_t a1, int *a2)
{
  result = *(a1 + 144);
  if (!result && (v6 = 0, result = _mdns_create_tcp_parameters(&v6), *(a1 + 144) = result, (v5 = v6) != 0))
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v5;
  return result;
}

NSObject *_mdns_create_tcp_parameters(int *a1)
{
  tcp = _mdns_nw_parameters_create_tcp(*MEMORY[0x29EDBB848]);
  v3 = tcp;
  if (tcp)
  {
    v4 = _mdns_add_dns_over_bytestream_framer(tcp);
    if (v4)
    {
      nw_release(v3);
      v3 = 0;
    }

    else
    {
      nw_parameters_set_prefer_no_proxy(v3, 1);
    }
  }

  else
  {
    v4 = -6729;
  }

  if (a1)
  {
    *a1 = v4;
  }

  return v3;
}

void _mdns_tcp_resolver_finalize(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    nw_release(v2);
    *(a1 + 144) = 0;
  }
}

NSObject *_mdns_normal_resolver_get_stream_params(uint64_t a1, int *a2)
{
  result = *(a1 + 152);
  if (!result && (v6 = 0, result = _mdns_create_tcp_parameters(&v6), *(a1 + 152) = result, (v5 = v6) != 0))
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v5;
  return result;
}

nw_parameters_t _mdns_normal_resolver_get_datagram_params(uint64_t a1, int *a2)
{
  secure_udp = *(a1 + 144);
  if (secure_udp)
  {
    v4 = 0;
    if (a2)
    {
LABEL_3:
      *a2 = v4;
    }
  }

  else
  {
    secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x29EDBB848], *MEMORY[0x29EDBB840]);
    if (secure_udp)
    {
      nw_parameters_set_no_wake_from_sleep();
      v4 = 0;
    }

    else
    {
      v4 = -6729;
    }

    *(a1 + 144) = secure_udp;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  return secure_udp;
}

void _mdns_normal_resolver_finalize(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    nw_release(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    nw_release(v3);
    *(a1 + 152) = 0;
  }
}

void mdns_resolver_set_queue(uint64_t a1, dispatch_object_t object)
{
  if ((*(a1 + 137) & 1) == 0)
  {
    dispatch_retain(object);
    v4 = *(a1 + 72);
    if (v4)
    {
      dispatch_release(v4);
    }

    *(a1 + 72) = object;
  }
}

void mdns_resolver_set_event_handler(uint64_t a1, void *aBlock)
{
  if ((*(a1 + 137) & 1) == 0)
  {
    if (aBlock)
    {
      v3 = _Block_copy(aBlock);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      _Block_release(v4);
    }

    *(a1 + 80) = v3;
  }
}

uint64_t mdns_resolver_set_provider_name(uint64_t a1)
{
  if (*(a1 + 137))
  {
    return 4294960577;
  }

  v1 = *(*(a1 + 16) + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_resolver_set_connection_hostname(uint64_t a1)
{
  if (*(a1 + 137))
  {
    return 4294960577;
  }

  v1 = *(*(a1 + 16) + 64);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_resolver_set_port(uint64_t result)
{
  if ((*(result + 137) & 1) == 0)
  {
    v1 = *(*(result + 16) + 72);
    if (v1)
    {
      return v1();
    }
  }

  return result;
}

uint64_t mdns_resolver_set_url_path(uint64_t a1)
{
  if (*(a1 + 137))
  {
    return 4294960577;
  }

  v1 = *(*(a1 + 16) + 80);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_resolver_set_identity_reference(uint64_t a1)
{
  if (*(a1 + 137))
  {
    return 4294960577;
  }

  v1 = *(*(a1 + 16) + 88);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_resolver_update_odoh_config(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 96);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_resolver_set_squash_cnames(uint64_t result, char a2)
{
  if ((*(result + 137) & 1) == 0)
  {
    *(result + 133) = a2;
  }

  return result;
}

uint64_t mdns_resolver_enable_symptom_reporting(uint64_t result, char a2)
{
  if ((*(result + 137) & 1) == 0)
  {
    *(result + 132) = a2;
  }

  return result;
}

uint64_t mdns_resolver_add_server_address(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 137))
  {
    return 4294960577;
  }

  *&v8[24] = 0;
  *&v8[16] = 0;
  v3 = *(a2 + 25);
  if (v3 == 30)
  {
    *v8 = *(a2 + 24);
    *&v8[12] = *(a2 + 36);
  }

  else
  {
    if (v3 != 2)
    {
      return 4294960540;
    }

    *v8 = *(a2 + 24);
  }

  if (!*&v8[2])
  {
    *&v8[2] = bswap32(*(*(a1 + 16) + 156)) >> 16;
  }

  address = nw_endpoint_create_address(v8);
  if (!address)
  {
    return 4294960596;
  }

  v5 = address;
  if (*(a1 + 48))
  {
    nw_endpoint_set_interface();
  }

  v6 = _mdns_resolver_add_server_by_endpoint(a1, v5);
  nw_release(v5);
  return v6;
}

uint64_t _mdns_resolver_add_server_by_endpoint(uint64_t a1, void *a2)
{
  Count = CFArrayGetCount(*(a1 + 56));
  if (Count > 31)
  {
    return 4294960532;
  }

  v5 = Count;
  v6 = _os_object_alloc();
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  v8 = &_mdns_server_kind;
  *(v6 + 16) = &_mdns_server_kind;
  do
  {
    v9 = v8[2];
    if (v9)
    {
      v9(v7);
    }

    v8 = *v8;
  }

  while (v8);
  *(v7 + 48) = a2;
  nw_retain(a2);
  v10 = *(a1 + 16);
  if (*(v10 + 156))
  {
    v11 = *(v10 + 156);
    if (nw_endpoint_get_port(*(v7 + 48)) == v11)
    {
      *(v7 + 111) = 1;
    }
  }

  *(v7 + 100) = v5 + 1;
  v12 = mach_continuous_time();
  if (mdns_mach_ticks_per_second_s_once != -1)
  {
    dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
  }

  v13 = v12 - 3600 * mdns_mach_ticks_per_second_s_ticks_per_second;
  *(v7 + 80) = v13;
  *(v7 + 88) = v13;
  CFArrayAppendValue(*(a1 + 56), v7);
  os_release(v7);
  return 0;
}

uint64_t mdns_resolver_set_initial_datagram_retransmission_interval(uint64_t result, unsigned int a2)
{
  if ((*(result + 137) & 1) == 0)
  {
    v2 = 1000 * a2;
    if (a2 >= 0x418938)
    {
      v2 = -1;
    }

    *(result + 124) = v2;
  }

  return result;
}

uint64_t mdns_resolver_disable_connection_reuse(uint64_t result, char a2)
{
  if ((*(result + 137) & 1) == 0)
  {
    *(result + 138) = a2;
  }

  return result;
}

uint64_t mdns_resolver_enable_problematic_qtype_workaround(uint64_t result, int a2)
{
  if ((*(result + 137) & 1) == 0)
  {
    if (a2 >= 0x64)
    {
      v2 = 100;
    }

    else
    {
      v2 = a2;
    }

    if (a2 <= 0)
    {
      v2 = 0;
    }

    *(result + 128) = v2;
  }

  return result;
}

void mdns_resolver_activate(_BYTE *a1)
{
  if ((a1[137] & 1) == 0)
  {
    a1[137] = 1;
    os_retain(a1);
    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __mdns_resolver_activate_block_invoke;
    block[3] = &__block_descriptor_tmp_1330;
    block[4] = a1;
    dispatch_async(_mdns_resolver_queue_s_queue, block);
  }
}

void __mdns_resolver_activate_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (*(v1 + 136) & 1) != 0 || (*(v1 + 135))
  {
    goto LABEL_31;
  }

  *(v1 + 135) = 1;
  if (*(v1 + 80) && !*(v1 + 72))
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v25 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v25, OS_LOG_TYPE_ERROR, "API misuse: an event handler without a queue is useless!", buf, 2u);
    }

    v26 = *(v1 + 80);
    if (v26)
    {
      _Block_release(v26);
      *(v1 + 80) = 0;
    }
  }

  if (!*(v1 + 124))
  {
    *(v1 + 124) = 1000;
  }

  if (CFArrayGetCount(*(v1 + 56)) <= 0)
  {
    v19 = *(*(v1 + 16) + 120);
    if (v19)
    {
      if (v19(v1))
      {
        v20 = *(v1 + 16);
        v21 = *(v20 + 128);
        if (v21)
        {
          if (v21(v1))
          {
            goto LABEL_38;
          }

          v20 = *(v1 + 16);
        }

        v22 = *(v20 + 156);
LABEL_38:
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v24 = host_with_numeric_port;
          if (*(v1 + 48))
          {
            nw_endpoint_set_interface();
          }

          _mdns_resolver_add_server_by_endpoint(v1, v24);
          nw_release(v24);
        }
      }
    }
  }

  Count = CFArrayGetCount(*(v1 + 56));
  if (Count >= 1)
  {
    v3 = Count;
    v4 = 0;
    v5 = (v1 + 24);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 56), v4);
      *(ValueAtIndex + 3) = 0;
      *v5 = ValueAtIndex;
      if (nw_endpoint_get_type(*(ValueAtIndex + 6)) == nw_endpoint_type_address)
      {
        v7 = *(ValueAtIndex + 6);
        evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
        *(ValueAtIndex + 7) = evaluator_for_endpoint;
        if (evaluator_for_endpoint)
        {
          if (_mdns_resolver_queue_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
          }

          nw_path_evaluator_set_queue();
          os_retain(v1);
          os_retain(ValueAtIndex);
          v9 = *(ValueAtIndex + 7);
          if (_mdns_resolver_queue_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
          }

          *buf = MEMORY[0x29EDCA5F8];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___mdns_resolver_set_up_server_path_evaluator_block_invoke;
          v29 = &__block_descriptor_tmp_66;
          v30 = v1;
          v31 = ValueAtIndex;
          nw_path_evaluator_set_update_handler();
          v10 = *(ValueAtIndex + 7);
          nw_path_evaluator_set_cancel_handler();
          v11 = *(ValueAtIndex + 7);
          nw_path_evaluator_start();
          v12 = *(ValueAtIndex + 7);
          v13 = nw_path_evaluator_copy_path();
          if (v13)
          {
            v14 = v13;
            ValueAtIndex[106] = _mdns_get_server_usability_from_path(v13, (*(*(v1 + 16) + 144) - 3) < 2);
            nw_release(v14);
          }

          goto LABEL_23;
        }

        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v15 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *v32 = 138412290;
          v33 = ValueAtIndex;
          _os_log_error_impl(&dword_2990ED000, v15, OS_LOG_TYPE_ERROR, "Failed to create path evaluator for %@", v32, 0xCu);
        }
      }

      ValueAtIndex[106] = 2;
LABEL_23:
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v16 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v17 = "<INVALID USABILITY>";
        if ((ValueAtIndex[106] + 1) <= 5u)
        {
          v17 = off_29EF0A2C8[(ValueAtIndex[106] + 1)];
        }

        *buf = 138412546;
        *&buf[4] = ValueAtIndex;
        *&buf[12] = 2082;
        *&buf[14] = v17;
        _os_log_impl(&dword_2990ED000, v16, OS_LOG_TYPE_DEFAULT, "Server %@ usability is %{public}s", buf, 0x16u);
      }

      ++v4;
      v5 = ValueAtIndex + 24;
    }

    while (v3 != v4);
  }

  _mdns_resolver_check_for_problematic_servers(v1);
  v1 = *(a1 + 32);
LABEL_31:
  os_release(v1);
  v18 = *MEMORY[0x29EDCA608];
}

void ___mdns_resolver_set_up_server_path_evaluator_block_invoke(uint64_t a1, NSObject *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  server_usability_from_path = _mdns_get_server_usability_from_path(a2, (*(*(*(a1 + 32) + 16) + 144) - 3) < 2);
  v4 = *(a1 + 40);
  v5 = *(v4 + 106);
  if (v5 != server_usability_from_path)
  {
    *(v4 + 106) = server_usability_from_path;
    if ((server_usability_from_path - 1) > 3u)
    {
      if ((v5 - 1) <= 3u)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v9 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 40);
          v12 = 138412290;
          v13 = v10;
          _os_log_impl(&dword_2990ED000, v9, OS_LOG_TYPE_DEFAULT, "Server %@ usability is now unusable", &v12, 0xCu);
        }
      }
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        if ((*(v7 + 106) + 1) > 5u)
        {
          v8 = "<INVALID USABILITY>";
        }

        else
        {
          v8 = off_29EF0A2C8[(*(v7 + 106) + 1)];
        }

        v12 = 138412546;
        v13 = v7;
        v14 = 2082;
        v15 = v8;
        _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEFAULT, "Server %@ usability is now %{public}s", &v12, 0x16u);
      }

      if ((v5 - 1) >= 3)
      {
        _mdns_resolver_unpenalize_server(*(a1 + 32), *(a1 + 40), 0);
        _mdns_resolver_handle_revived_server(*(a1 + 32), *(a1 + 40), 1, 0);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void ___mdns_resolver_set_up_server_path_evaluator_block_invoke_67(uint64_t a1)
{
  os_release(*(a1 + 32));
  v2 = *(a1 + 40);

  os_release(v2);
}

uint64_t _mdns_get_server_usability_from_path(NSObject *a1, int a2)
{
  status = nw_path_get_status(a1);
  v5 = 1;
  if (status != nw_path_status_satisfied && status != nw_path_status_satisfiable)
  {
    if (status != nw_path_status_unsatisfied)
    {
      return -1;
    }

    if (nw_path_is_per_app_vpn())
    {
      return 3;
    }

    if (nw_path_get_reason() == 2)
    {
      return 4;
    }

    if ((nw_path_has_nat64_prefixes() & 1) == 0 && (!a2 || !nw_path_has_dns(a1)) || (v6 = nw_path_copy_endpoint()) == 0)
    {
      return -1;
    }

    v7 = v6;
    if (nw_endpoint_get_type(v6) == nw_endpoint_type_address && (address = nw_endpoint_get_address(v7)) != 0)
    {
      if (address->sa_family == 2)
      {
        v5 = 2;
      }

      else
      {
        v5 = -1;
      }
    }

    else
    {
      v5 = -1;
    }

    nw_release(v7);
  }

  return v5;
}

void _mdns_resolver_check_for_problematic_servers(uint64_t a1)
{
  if (*(*(a1 + 16) + 158) != 1 || *(a1 + 104))
  {
    return;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_8:
    if ((*(a1 + 140) & 1) == 0)
    {
      if (_mdns_resolver_queue_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
      }

      v3 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, _mdns_resolver_queue_s_queue);
      *(a1 + 104) = v3;
      if (!v3)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v7 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2990ED000, v7, OS_LOG_TYPE_ERROR, "Failed to create probe timer", buf, 2u);
        }

        return;
      }

      v4 = v3;
      v5 = dispatch_time(0x8000000000000000, 7200000000000);
      dispatch_source_set_timer(v4, v5, 0x68C61714000uLL, 0x53D1AC1000uLL);
      v6 = *(a1 + 104);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = ___mdns_resolver_check_for_problematic_servers_block_invoke;
      handler[3] = &__block_descriptor_tmp_130_1335;
      handler[4] = a1;
      dispatch_source_set_event_handler(v6, handler);
      dispatch_activate(*(a1 + 104));
      _mdns_resolver_start_probe_querier(a1);
    }

    if ((*(a1 + 139) & 1) == 0)
    {
      *(a1 + 139) = 1;
      _mdns_resolver_generate_connection_event(a1);
    }

    return;
  }

  while (*(v2 + 106) - 1 > 3 || (*(v2 + 110) & 1) != 0 || *(v2 + 96) >= 3u)
  {
    v2 = *(v2 + 24);
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void _mdns_resolver_start_probe_querier(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    mdns_client_invalidate(v2);
    os_release(*(a1 + 112));
    *(a1 + 112) = 0;
  }

  querier = mdns_resolver_create_querier(a1, 0);
  *(a1 + 112) = querier;
  if (querier)
  {
    v10 = *(a1 + 120) + 1;
    *(a1 + 120) = v10;
    mdns_querier_set_log_label(querier, "PQ%u", v4, v5, v6, v7, v8, v9, v10);
    v11 = *(a1 + 112);
    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    mdns_client_set_queue(v11, _mdns_resolver_queue_s_queue);
    mdns_querier_set_query(*(a1 + 112), "\x05apple\x03com", 2, 1);
    v12 = *(a1 + 112);

    mdns_client_activate(v12);
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v13 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v13, OS_LOG_TYPE_ERROR, "Failed to create probe querier", buf, 2u);
    }
  }
}

void _mdns_resolver_generate_connection_event(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "cannot_connect", *(a1 + 139));
  _mdns_resolver_generate_event(a1, 2, v2);
  if (v2)
  {

    xpc_release(v2);
  }
}

void _mdns_resolver_generate_event(NSObject **object, int a2, void *a3)
{
  if ((object[17] & 1) == 0)
  {
    if (object[10])
    {
      os_retain(object);
      xpc_retain(a3);
      v6 = object[9];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___mdns_resolver_generate_event_block_invoke;
      block[3] = &__block_descriptor_tmp_114;
      v8 = a2;
      block[4] = object;
      block[5] = a3;
      dispatch_async(v6, block);
    }
  }
}

void ___mdns_resolver_generate_event_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(*(a1 + 32) + 80) + 16))();
  os_release(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {

    xpc_release(v4);
  }
}

void *mdns_resolver_create_querier(void *a1, int *a2)
{
  v4 = _os_object_alloc();
  v5 = v4;
  if (v4)
  {
    v6 = &_mdns_querier_kind;
    v4[2] = &_mdns_querier_kind;
    do
    {
      v7 = v6[2];
      if (v7)
      {
        v7(v5);
      }

      v6 = *v6;
    }

    while (v6);
    *(v5 + 52) = 0;
    v5[9] = a1;
    os_retain(a1);
    v8 = mdns_query_message_create();
    v5[12] = v8;
    v9 = v8 == 0;
    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }

    if (v9)
    {
      v5 = 0;
      v10 = -6729;
    }

    else
    {
      v10 = 0;
    }

    if (a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = -6728;
    if (a2)
    {
LABEL_13:
      *a2 = v10;
    }
  }

  if (v4)
  {
    os_release(v4);
  }

  return v5;
}

uint64_t mdns_querier_set_log_label(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 61))
  {
    return 4294960577;
  }

  v15[0] = 0;
  v15[1] = &a9;
  vasprintf(v15, a2, &a9);
  if (!v15[0])
  {
    return 4294960568;
  }

  v14 = 0;
  asprintf(&v14, "[%s] ", v15[0]);
  v10 = v14;
  if (v14)
  {
    v11 = *(a1 + 128);
    if (v11)
    {
      free(v11);
      v10 = v14;
    }

    v12 = 0;
    *(a1 + 128) = v10;
    v14 = 0;
  }

  else
  {
    v12 = 4294960568;
  }

  if (v15[0])
  {
    free(v15[0]);
  }

  return v12;
}

uint64_t mdns_querier_set_query(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v7 = mdns_domain_name_create_with_labels(a2, &v9);
  if (!v9 && (*(a1 + 61) & 1) == 0)
  {
    (*(*(a1 + 16) + 56))(a1, v7, a3, a4);
  }

  if (v7)
  {
    os_release(v7);
  }

  return v9;
}

void _mdns_querier_conclude_ex(uint64_t a1, int a2, int a3, void *a4)
{
  v83 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 104);
  if (v8)
  {
    dispatch_source_cancel(*(a1 + 104));
    dispatch_release(v8);
    *(a1 + 104) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 48));
    dispatch_release(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 152);
  if (v10)
  {
    dispatch_source_cancel(*(a1 + 152));
    dispatch_release(v10);
    *(a1 + 152) = 0;
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    os_release(v11);
    *(a1 + 144) = 0;
  }

  _mdns_resolver_deregister_querier(*(a1 + 72), a1);
  if (*(a1 + 249) != 3)
  {
    *(a1 + 249) = 3;
    if (a2 > 3)
    {
      switch(a2)
      {
        case 4:
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v12 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_117;
          }

          v34 = *(a1 + 128);
          if (!v34)
          {
            v34 = "";
          }

          *buf = 136446210;
          *&buf[4] = v34;
          v14 = "%{public}sQuerier concluded -- reason: resolver invalidation";
          break;
        case 5:
          *(a1 + 240) = a3;
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v36 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
          {
            v37 = *(a1 + 128);
            if (!v37)
            {
              v37 = "";
            }

            v38 = *(a1 + 240);
            *buf = 136446466;
            *&buf[4] = v37;
            v79 = 2048;
            *v80 = v38;
            _os_log_error_impl(&dword_2990ED000, v36, OS_LOG_TYPE_ERROR, "%{public}sQuerier concluded -- error: %{mdns:err}ld", buf, 0x16u);
          }

          goto LABEL_117;
        case 6:
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v12 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
LABEL_117:
            v66 = *(a1 + 24);
            if (v66)
            {
              v67 = *(a1 + 88);
              *(a1 + 88) = 0;
              os_retain(a1);
              block[0] = MEMORY[0x29EDCA5F8];
              block[1] = 0x40000000;
              block[2] = ___mdns_querier_conclude_ex_block_invoke;
              block[3] = &unk_29EF09F38;
              v75 = a2;
              block[4] = v67;
              block[5] = a1;
              dispatch_async(v66, block);
            }

            if (*(a1 + 254) == 1)
            {
              *(a1 + 254) = 0;
              os_release(a1);
            }

            goto LABEL_121;
          }

          v15 = *(a1 + 128);
          if (!v15)
          {
            v15 = "";
          }

          *buf = 136446210;
          *&buf[4] = v15;
          v14 = "%{public}sQuerier concluded -- reason: connection problem";
          break;
        default:
          goto LABEL_117;
      }

LABEL_116:
      _os_log_impl(&dword_2990ED000, v12, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
      goto LABEL_117;
    }

    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v12 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_117;
        }

        v35 = *(a1 + 128);
        if (!v35)
        {
          v35 = "";
        }

        *buf = 136446210;
        *&buf[4] = v35;
        v14 = "%{public}sQuerier concluded -- reason: timeout";
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_117;
        }

        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v12 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_117;
        }

        v13 = *(a1 + 128);
        if (!v13)
        {
          v13 = "";
        }

        *buf = 136446210;
        *&buf[4] = v13;
        v14 = "%{public}sQuerier concluded -- reason: invalidation";
      }

      goto LABEL_116;
    }

    if (a4)
    {
      os_retain(a4);
    }

    v16 = *(a1 + 136);
    if (v16)
    {
      os_release(v16);
    }

    *(a1 + 136) = a4;
    v17 = *(a1 + 160);
    if (v17)
    {
      os_release(v17);
      *(a1 + 160) = 0;
      a4 = *(a1 + 136);
    }

    v18 = a4[4];
    v19 = a4[5];
    size = 0;
    *buf = 0;
    if (!DNSMessageGetOptRecord(v18, v19, buf, &size) && *buf && size >= 0xB)
    {
      v20 = *buf + size;
      v21 = *buf + 11;
      do
      {
        if (v20 <= v21)
        {
          goto LABEL_93;
        }

        if (v20 - v21 < 4)
        {
          goto LABEL_93;
        }

        v22 = v21;
        v23 = v21 + 4;
        v24 = __rev16(v22[1]);
        if ((v20 - v23) < v24)
        {
          goto LABEL_93;
        }

        v21 = v23 + v24;
      }

      while (__rev16(*v22) != 15);
      if (v24 <= 1)
      {
        goto LABEL_93;
      }

      v25 = v21 - (v22 + 6);
      v26 = (v21 - (v22 + 6));
      if (v21 == v22 + 6)
      {
        v27 = 0;
      }

      else
      {
        v27 = (v22 + 3);
      }

      v28 = v22[2];
      v29 = _os_object_alloc();
      v30 = v29;
      if (!v29)
      {
        goto LABEL_82;
      }

      v31 = bswap32(v28) >> 16;
      v32 = &_mdns_extended_dns_error_kind;
      *(v29 + 16) = &_mdns_extended_dns_error_kind;
      do
      {
        v33 = v32[2];
        if (v33)
        {
          v33(v30);
        }

        v32 = *v32;
      }

      while (v32);
      if (v26)
      {
        if (*(v30 + 24))
        {
LABEL_81:
          *(v30 + 32) = v31;
          goto LABEL_82;
        }
      }

      else
      {
        if (_mdns_copy_empty_string_s_once != -1)
        {
          dispatch_once(&_mdns_copy_empty_string_s_once, &__block_literal_global_691);
        }

        if (_mdns_copy_empty_string_s_empty_string)
        {
          xpc_retain(_mdns_copy_empty_string_s_empty_string);
          v39 = _mdns_copy_empty_string_s_empty_string;
        }

        else
        {
          v39 = 0;
        }

        *(v30 + 24) = v39;
        if (v39)
        {
          goto LABEL_81;
        }
      }

      v40 = strnlen(v27, v26);
      v41 = CFStringCreateWithBytes(*MEMORY[0x29EDB8ED8], v27, v40, 0x8000100u, 0);
      if (v41)
      {
        CFRelease(v41);
        v50 = mdns_xpc_string_create_with_format(v42, v43, v44, v45, v46, v47, v48, v49, v25);
        *(v30 + 24) = v50;
        if (v50)
        {
          goto LABEL_81;
        }
      }

      os_release(v30);
    }

LABEL_93:
    v30 = 0;
LABEL_82:
    *(a1 + 160) = v30;
    if (*(*(a1 + 72) + 133) == 1)
    {
      v51 = *(a1 + 136);
      if (!v51)
      {
        goto LABEL_100;
      }

      v52 = *(v51 + 32);
      if (v52)
      {
        v76 = 0;
        size = 0;
        v53 = DNSMessageCollapse(v52, *(v51 + 40), &size, &v76);
        if (v53)
        {
          v54 = v53;
          v55 = dispatch_data_create(v53, size, 0, *MEMORY[0x29EDCA558]);
          if (v55)
          {
            v56 = v55;
            v57 = mdns_message_create_with_dispatch_data(v55);
            dispatch_release(v56);
            if (v57)
            {
              os_retain(v57);
              v58 = *(a1 + 136);
              if (v58)
              {
                os_release(v58);
              }

              *(a1 + 136) = v57;
              os_release(v57);
              v59 = *(a1 + 136);
              if (v59)
              {
                v60 = *(v59 + 32);
                v61 = *(v59 + 40);
              }

              else
              {
                v60 = 0;
                v61 = 0;
              }

              if (_mdns_resolver_log_s_once != -1)
              {
                dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
              }

              v69 = _mdns_resolver_log_s_log;
              if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
              {
                v70 = "";
                v71 = *(a1 + 136);
                if (*(a1 + 128))
                {
                  v70 = *(a1 + 128);
                }

                v72 = 12;
                *buf = 136446978;
                if (v61 < 0xC)
                {
                  v72 = v61;
                }

                *&buf[4] = v70;
                v79 = 1040;
                *v80 = v72;
                *&v80[4] = 2098;
                *&v80[6] = v60;
                v81 = 2112;
                v82 = v71;
                _os_log_impl(&dword_2990ED000, v69, OS_LOG_TYPE_DEFAULT, "%{public}sUsing squashed response -- %{public,mdns:dnshdr}.*P, %@", buf, 0x26u);
              }

              LODWORD(v51) = 1;
LABEL_100:
              if (a3 == 1)
              {
                v63 = 1;
              }

              else
              {
                v63 = v51;
              }

              *(a1 + 253) = v63;
              if (v63 == 1)
              {
                if (_mdns_resolver_log_s_once != -1)
                {
                  dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
                }

                v12 = _mdns_resolver_log_s_log;
                if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_117;
                }

                v64 = *(a1 + 128);
                if (!v64)
                {
                  v64 = "";
                }

                *buf = 136446210;
                *&buf[4] = v64;
                v14 = "%{public}sQuerier concluded -- reason: response (fabricated)";
              }

              else
              {
                if (_mdns_resolver_log_s_once != -1)
                {
                  dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
                }

                v12 = _mdns_resolver_log_s_log;
                if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_117;
                }

                v65 = *(a1 + 128);
                if (!v65)
                {
                  v65 = "";
                }

                *buf = 136446210;
                *&buf[4] = v65;
                v14 = "%{public}sQuerier concluded -- reason: response";
              }

              goto LABEL_116;
            }
          }

          else
          {
            free(v54);
          }

          v76 = -6729;
        }

        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v62 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v73 = *(a1 + 128);
          if (!v73)
          {
            v73 = "";
          }

          *buf = 136446466;
          *&buf[4] = v73;
          v79 = 2048;
          *v80 = v76;
          _os_log_error_impl(&dword_2990ED000, v62, OS_LOG_TYPE_ERROR, "%{public}sFailed to squash response -- error:%{mdns:err}ld", buf, 0x16u);
        }
      }
    }

    LODWORD(v51) = 0;
    goto LABEL_100;
  }

LABEL_121:
  v68 = *MEMORY[0x29EDCA608];
}

void _mdns_resolver_deregister_querier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  if (v4)
  {
    dispatch_source_cancel(*(a2 + 104));
    dispatch_release(v4);
    *(a2 + 104) = 0;
  }

  _mdns_forget_session_list((a2 + 112));
  _mdns_forget_session_list((a2 + 120));
  v5 = (a1 + 32);
  do
  {
    v6 = v5;
    v7 = *v5;
    v5 = (*v5 + 64);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  if (v7)
  {
    goto LABEL_17;
  }

  v9 = (a1 + 40);
  do
  {
    v6 = v9;
    v10 = *v9;
    v9 = (*v9 + 64);
    if (v10)
    {
      v11 = v10 == a2;
    }

    else
    {
      v11 = 1;
    }
  }

  while (!v11);
  if (v10)
  {
LABEL_17:
    *v6 = *(a2 + 64);
    *(a2 + 64) = 0;

    os_release(a2);
  }
}

void ___mdns_querier_conclude_ex_block_invoke(uint64_t a1)
{
  *(*(a1 + 40) + 248) = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    if (v3)
    {
      _Block_release(v3);
    }
  }

  v4 = *(a1 + 40);

  os_release(v4);
}

void _mdns_forget_session_list(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    do
    {
      v2 = *(v1 + 24);
      *(v1 + 24) = 0;
      _mdns_session_invalidate(v1);
      os_release(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void _mdns_session_invalidate(_BYTE *a1)
{
  a1[88] = 3;
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___mdns_session_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_49;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void ___mdns_session_invalidate_block_invoke(uint64_t a1)
{
  _mdns_session_invalidate_internal(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(*(v2 + 72) + 16);
  if (v3)
  {
    v3(*(v2 + 48));
    v2 = *(a1 + 32);
  }

  *(v2 + 48) = 0;
  v4 = *(a1 + 32);

  os_release(v4);
}

void _mdns_session_invalidate_internal(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 40));
    dispatch_release(v2);
    *(a1 + 40) = 0;
  }

  v3 = *(*(a1 + 16) + 72);
  if (v3)
  {

    v3(a1);
  }
}

void _mdns_querier_handle_new_time_limit_ms(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a1 + 249) == 2)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v4 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 128);
      if (!v5)
      {
        v5 = "";
      }

      v8 = 136446466;
      v9 = v5;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&dword_2990ED000, v4, OS_LOG_TYPE_INFO, "%{public}sResetting time limit to %u ms", &v8, 0x12u);
    }

    v6 = mdns_client_activate_time_limit_timer(a1);
    if (v6)
    {
      _mdns_querier_conclude_with_error_async(a1, v6);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void _mdns_querier_conclude_with_error_async(void *a1, int a2)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___mdns_querier_conclude_with_error_async_block_invoke;
  v4[3] = &__block_descriptor_tmp_71;
  v4[4] = a1;
  v5 = a2;
  dispatch_async(_mdns_resolver_queue_s_queue, v4);
}

void ___mdns_querier_conclude_with_error_async_block_invoke(uint64_t a1)
{
  _mdns_querier_conclude_ex(*(a1 + 32), 5, *(a1 + 40), 0);
  v2 = *(a1 + 32);

  os_release(v2);
}

BOOL _mdns_querier_match(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  v4 = *(a1 + 96);
  result = 0;
  if (*(v4 + 64) == a3 && *(v4 + 66) == a4)
  {
    v5 = *(*(v4 + 56) + 24);
    if (v5)
    {
      if (DomainNameEqual(v5, a2))
      {
        return 1;
      }
    }
  }

  return result;
}

void _mdns_querier_activate(_BYTE *object)
{
  v38 = *MEMORY[0x29EDCA608];
  if (object[249])
  {
    goto LABEL_48;
  }

  object[249] = 1;
  if ((object[254] & 1) == 0)
  {
    os_retain(object);
    object[254] = 1;
  }

  if (*(*(*(object + 9) + 16) + 160))
  {
    LOWORD(v2) = 0;
  }

  else
  {
    v3 = arc4random();
    v2 = v3 + v3 / 0xFFFF + 1;
  }

  v4 = *(object + 12);
  v5 = *(v4 + 70);
  if ((v5 & 0x20) == 0)
  {
    *(v4 + 68) = v2;
    if (*(*(*(object + 9) + 16) + 159))
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *(v4 + 70) = v5 & 0xD7 | v6;
    v4 = *(object + 12);
    v5 = *(v4 + 70);
  }

  v7 = *(object + 9);
  if ((v5 & 0x20) == 0)
  {
    *(v4 + 70) = v5 & 0xCF | (16 * ((*(*(v7 + 16) + 144) - 3) < 2));
    v7 = *(object + 9);
  }

  v8 = *(*(v7 + 16) + 136);
  if (v8)
  {
    v9 = v8();
    if (v9)
    {
      v10 = *(v9 + 1);
      if (v10 == 30)
      {
        v13 = *(object + 12);
        if ((*(v13 + 70) & 0x20) == 0)
        {
          *(v13 + 71) = 14338;
          *(v13 + 81) = 0;
          *(v13 + 73) = 0;
          v14 = *(v9 + 8);
          *(v13 + 76) = *(v9 + 11);
          *(v13 + 73) = v14;
        }
      }

      else if (v10 == 2)
      {
        v11 = *(object + 12);
        if ((*(v11 + 70) & 0x20) == 0)
        {
          v12 = bswap32(*(v9 + 4));
          *(v11 + 71) = 6145;
          *(v11 + 76) = 0;
          *(v11 + 81) = 0;
          *(v11 + 73) = HIBYTE(v12);
          *(v11 + 74) = BYTE2(v12);
          *(v11 + 75) = BYTE1(v12);
        }
      }
    }
  }

  message_construct = mdns_query_message_construct(*(object + 12));
  if (!message_construct)
  {
    if (object[249] == 1)
    {
      v16 = *(object + 9);
      if (*(v16 + 136) == 1)
      {
        _mdns_querier_conclude_async(object);
      }

      else
      {
        if (*(object + 16))
        {
          v17 = *(object + 16);
        }

        else
        {
          v17 = "";
        }

        v18 = *(object + 59);
        if (v18)
        {
          if (v18 < 1)
          {
            if (_mdns_resolver_log_s_once != -1)
            {
              dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
            }

            v22 = _mdns_resolver_log_s_log;
            if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
            {
              LODWORD(handler) = 136446210;
              *(&handler + 4) = v17;
              _os_log_impl(&dword_2990ED000, v22, OS_LOG_TYPE_INFO, "%{public}sPending querier will start when DNS traffic is observed", &handler, 0xCu);
            }

            goto LABEL_40;
          }

          oneshot_timer = _mdns_resolver_create_oneshot_timer(v18, 0);
          *(object + 19) = oneshot_timer;
          if (oneshot_timer)
          {
            *&handler = MEMORY[0x29EDCA5F8];
            *(&handler + 1) = 0x40000000;
            v34 = ___mdns_resolver_handle_new_querier_block_invoke;
            v35 = &__block_descriptor_tmp_140_1348;
            v36 = object;
            v37 = v16;
            dispatch_source_set_event_handler(oneshot_timer, &handler);
            if (_mdns_resolver_log_s_once != -1)
            {
              dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
            }

            v20 = _mdns_resolver_log_s_log;
            if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
            {
              v21 = *(object + 59);
              v29 = 136446466;
              v30 = v17;
              v31 = 1024;
              v32 = v21;
              _os_log_impl(&dword_2990ED000, v20, OS_LOG_TYPE_INFO, "%{public}sPending querier will start after at most %d ms or when DNS traffic is observed", &v29, 0x12u);
            }

            dispatch_activate(*(object + 19));
LABEL_40:
            v23 = (v16 + 40);
            do
            {
              v24 = v23;
              v25 = *v23;
              v23 = (*v23 + 64);
            }

            while (v25);
            *v24 = object;
            os_retain(object);
            goto LABEL_48;
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v26 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
          {
            LODWORD(handler) = 136446210;
            *(&handler + 4) = v17;
            _os_log_error_impl(&dword_2990ED000, v26, OS_LOG_TYPE_ERROR, "%{public}sFailed to create flexible start timer for querier, will start immediately", &handler, 0xCu);
          }
        }

        _mdns_resolver_start_querier(v16, object);
      }
    }

LABEL_48:
    v27 = *MEMORY[0x29EDCA608];
    return;
  }

  v28 = *MEMORY[0x29EDCA608];

  _mdns_querier_conclude_with_error_async(object, message_construct);
}

void _mdns_querier_conclude_async(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___mdns_querier_conclude_async_block_invoke;
  v2[3] = &__block_descriptor_tmp_141;
  v2[4] = a1;
  v3 = 4;
  dispatch_async(_mdns_resolver_queue_s_queue, v2);
}

NSObject *_mdns_resolver_create_oneshot_timer(unsigned int a1, unsigned int a2)
{
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v4 = _mdns_resolver_queue_s_queue;

  return mdns_dispatch_create_oneshot_monotonic_timer(a1, a2, v4);
}

void ___mdns_resolver_handle_new_querier_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 152));
    dispatch_release(v3);
    *(*(a1 + 32) + 152) = 0;
    v2 = *(a1 + 32);
  }

  v4 = (*(a1 + 40) + 40);
  do
  {
    v5 = v4;
    v6 = *v4;
    v4 = (*v4 + 64);
    if (v6)
    {
      v7 = v6 == v2;
    }

    else
    {
      v7 = 1;
    }
  }

  while (!v7);
  if (v6)
  {
    *v5 = *(v2 + 64);
    *(v2 + 64) = 0;
    os_release(v2);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v8 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 32) + 128);
      if (!v9)
      {
        v9 = "";
      }

      v11 = 136446210;
      v12 = v9;
      _os_log_impl(&dword_2990ED000, v8, OS_LOG_TYPE_INFO, "%{public}sStarting pending querier because leeway elapsed", &v11, 0xCu);
    }

    _mdns_resolver_start_querier(*(a1 + 40), *(a1 + 32));
  }

  v10 = *MEMORY[0x29EDCA608];
}

void _mdns_resolver_start_querier(uint64_t a1, _BYTE *a2)
{
  if (a2[249] == 1)
  {
    a2[249] = 2;
    v4 = mdns_client_activate_time_limit_timer(a2);
    if (v4)
    {

      _mdns_querier_conclude_with_error_async(a2, v4);
    }

    else
    {

      _mdns_resolver_register_querier_ex(a1, a2, 0);
    }
  }
}

uint64_t _mdns_resolver_register_querier_ex(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  if ((*(v5 + 158) & 1) == 0 && !a3)
  {
    if (*(v5 + 161) == 1 && *(a1 + 134) == 1)
    {
      v6 = *(a1 + 88) - mach_continuous_time();
      if ((v6 & 0x8000000000000000) == 0)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v7 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          if (mdns_mach_ticks_per_second_s_once != -1)
          {
            dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
          }

          v15 = 134218240;
          v16 = v6 / mdns_mach_ticks_per_second_s_ticks_per_second;
          v17 = 2048;
          v18 = 1000 * (v6 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second;
          _os_log_impl(&dword_2990ED000, v7, OS_LOG_TYPE_INFO, "Suspicious mode (%lld.%03lld seconds left): forcing query over bytestream", &v15, 0x16u);
        }

        *(a2 + 250) = 259;
        goto LABEL_14;
      }

      *(a1 + 134) = 0;
    }

    v8 = 0;
    *(a2 + 251) = 0;
    *(a2 + 216) = 0;
    *(a2 + 212) = 0;
    goto LABEL_18;
  }

  *(a2 + 251) = 1;
LABEL_14:
  v8 = 0;
  *(a2 + 216) = 0;
  *(a2 + 212) = 0;
  if ((*(a1 + 138) & 1) == 0)
  {
    v8 = (*(*(a1 + 16) + 162) & 1) == 0;
  }

LABEL_18:
  *(a2 + 252) = v8;
  v9 = (a1 + 32);
  do
  {
    v10 = v9;
    v11 = *v9;
    v9 = (*v9 + 64);
  }

  while (v11);
  *v10 = a2;
  os_retain(a2);
  *(a2 + 80) = 0;
  *(a2 + 247) = 0;
  if (*(a2 + 251))
  {
    v12 = 2000;
  }

  else
  {
    v12 = *(*(a2 + 72) + 124);
  }

  *(a2 + 204) = v12;
  result = _mdns_querier_initiate_send(a2);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void _mdns_querier_initiate_send(uint64_t a1)
{
  v52 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 104);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 104));
    dispatch_release(v2);
    *(a1 + 104) = 0;
  }

  v3 = *MEMORY[0x29EDCA558];
  v4 = *(a1 + 80);
  v5 = &_mdns_resolver_log_s_log;
  while (1)
  {
    if (v4)
    {
      goto LABEL_8;
    }

    if (*(a1 + 144) && !_mdns_resolver_get_server(*(a1 + 72), *(a1 + 224)))
    {
      break;
    }

    eligible_server = _mdns_querier_get_eligible_server(a1);
    _mdns_querier_set_current_server(a1, eligible_server);
    v4 = *(a1 + 80);
    if (!v4)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v34 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a1 + 128);
        if (!v35)
        {
          v35 = "";
        }

        *buf = 136446210;
        *&buf[4] = v35;
        _os_log_debug_impl(&dword_2990ED000, v34, OS_LOG_TYPE_DEBUG, "%{public}sNo more eligible servers", buf, 0xCu);
      }

      goto LABEL_79;
    }

LABEL_8:
    v7 = *(a1 + 72);
    if (*(*(v7 + 16) + 144) != 1 && !*(v7 + 128))
    {
      goto LABEL_32;
    }

    v8 = (*(*(a1 + 16) + 96))(a1);
    if ((v8 & 0xFFFE) != 0x40)
    {
      goto LABEL_32;
    }

    v9 = v8;
    if (*(v4 + 112))
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v10 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 128);
        if (!v11)
        {
          v11 = "";
        }

        *buf = 136446722;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 1024;
        LODWORD(v48) = v9;
        v12 = v10;
        v13 = "%{public}sNot sending query to server %@, which mixes up responses of type %{mdns:rrtype}d";
LABEL_18:
        _os_log_impl(&dword_2990ED000, v12, OS_LOG_TYPE_INFO, v13, buf, 0x1Cu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if ((*(v4 + 107) & 1) == 0 && (v22 = *(v4 + 64)) != 0 && *(v22 + 8) >= *(v22 + 12))
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v23 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 128);
        if (!v24)
        {
          v24 = "";
        }

        *buf = 136446722;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v4;
        *&buf[22] = 1024;
        LODWORD(v48) = v9;
        v12 = v23;
        v13 = "%{public}sNot sending query to server %@, which ignores queries of type %{mdns:rrtype}d";
        goto LABEL_18;
      }

LABEL_19:
      if (!*(a1 + 144))
      {
        v14 = *(a1 + 96);
        v15 = *(v14 + 40);
        if (v15 < 0xD)
        {
          v41 = -6762;
          goto LABEL_88;
        }

        v16 = malloc_type_malloc(*(v14 + 40), 0xD8A30F1CuLL);
        if (!v16)
        {
          __break(1u);
        }

        v17 = v16;
        memcpy(v16, *(v14 + 32), v15);
        v17[1] = -31615;
        v18 = dispatch_data_create(v17, v15, 0, v3);
        if (!v18)
        {
          free(v17);
          v41 = -6729;
LABEL_88:
          *(a1 + 144) = 0;
LABEL_89:
          v42 = a1;
LABEL_90:
          _mdns_querier_conclude_with_error_async(v42, v41);
          goto LABEL_79;
        }

        v19 = v18;
        v20 = mdns_message_create_with_dispatch_data(v18);
        dispatch_release(v19);
        *(a1 + 144) = v20;
        if (!v20)
        {
          v41 = -6729;
          goto LABEL_89;
        }

        *(a1 + 244) = -4;
        v5 = &_mdns_resolver_log_s_log;
      }

      if ((*(v4 + 100) - 1) >= 0x20)
      {
        v21 = 0;
      }

      else
      {
        v21 = 1 << (*(v4 + 100) - 1);
      }

      *(a1 + 224) |= v21;
      *(a1 + 80) = 0;
      *(a1 + 247) = 0;
      v4 = 0;
    }

    else
    {
LABEL_32:
      v4 = 0;
      if (*(a1 + 80))
      {
        oneshot_timer = _mdns_resolver_create_oneshot_timer(*(a1 + 204), 5u);
        *(a1 + 104) = oneshot_timer;
        if (!oneshot_timer)
        {
          v42 = a1;
          v41 = -6729;
          goto LABEL_90;
        }

        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 0x40000000;
        handler[2] = ___mdns_querier_initiate_send_block_invoke;
        handler[3] = &__block_descriptor_tmp_69_1354;
        handler[4] = a1;
        dispatch_source_set_event_handler(oneshot_timer, handler);
        dispatch_activate(*(a1 + 104));
        v26 = *(a1 + 80);
        if (*(a1 + 252) == 1)
        {
          if (!v26)
          {
            goto LABEL_79;
          }

          v27 = v26[4];
          if (v27)
          {
            goto LABEL_66;
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v28 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(a1 + 128);
            if (!v40)
            {
              v40 = "";
            }

            *buf = 136446466;
            *&buf[4] = v40;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            _os_log_debug_impl(&dword_2990ED000, v28, OS_LOG_TYPE_DEBUG, "%{public}sCreating shared session to %@", buf, 0x16u);
          }

          v46 = 0;
          v27 = _mdns_resolver_create_session(*(a1 + 72), v26, 1, 0, 0, &v46);
          if (v27)
          {
            os_retain(*(a1 + 72));
            if (!*(v27 + 88))
            {
              v27[6] = *(a1 + 72);
              v27[9] = _mdns_querier_get_shared_session_s_resolver_callbacks;
              *(v27 + 20) = 10000;
            }

            _mdns_session_activate(v27);
            v26[4] = v27;
LABEL_66:
            if ((*(v27[4] + 100) - 1) >= 0x20)
            {
              v33 = 0;
            }

            else
            {
              v33 = 1 << (*(v27[4] + 100) - 1);
            }

            *(a1 + 212) |= v33;
            _mdns_querier_send_query(a1, v27);
            goto LABEL_79;
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v43 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_99;
          }

          *buf = 138412546;
          *&buf[4] = v26;
          *&buf[12] = 2048;
          *&buf[14] = v46;
          v44 = "Failed to create session to %@ for resolver: %{mdns:err}ld";
        }

        else
        {
          if (!v26)
          {
            goto LABEL_79;
          }

          v29 = 112;
          if (*(a1 + 251))
          {
            v29 = 120;
          }

          v30 = (a1 + v29);
          v31 = *(a1 + v29);
          if (v31)
          {
            while (1)
            {
              v27 = v31;
              if (*(v31 + 32) == v26)
              {
                goto LABEL_66;
              }

              v31 = *(v31 + 24);
              if (!v31)
              {
                v30 = v27 + 3;
                break;
              }
            }
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v32 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            v39 = *(a1 + 128);
            if (!v39)
            {
              v39 = "";
            }

            *buf = 136446466;
            *&buf[4] = v39;
            *&buf[12] = 2112;
            *&buf[14] = v26;
            _os_log_debug_impl(&dword_2990ED000, v32, OS_LOG_TYPE_DEBUG, "%{public}sCreating session to %@", buf, 0x16u);
          }

          v46 = 0;
          v27 = _mdns_resolver_create_session(*(a1 + 72), v26, *(a1 + 251), a1 + 168, *(*(*(a1 + 96) + 56) + 24), &v46);
          if (v27)
          {
            os_retain(a1);
            if (!*(v27 + 88))
            {
              v27[6] = a1;
              v27[9] = _mdns_querier_get_unshared_session_s_querier_callbacks;
              if (*(a1 + 251) == 1)
              {
                *(v27 + 20) = 10000;
              }
            }

            _mdns_session_activate(v27);
            *v30 = v27;
            goto LABEL_66;
          }

          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v43 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
          {
LABEL_99:
            _mdns_resolver_penalize_server_ex(*(a1 + 72), v26, 0, 0, 0);
            *(a1 + 80) = 0;
            *(a1 + 247) = 0;
            goto LABEL_79;
          }

          *buf = 138412546;
          *&buf[4] = v26;
          *&buf[12] = 2048;
          *&buf[14] = v46;
          v44 = "Failed to create session to %@ for querier: %{mdns:err}ld";
        }

        _os_log_error_impl(&dword_2990ED000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x16u);
        goto LABEL_99;
      }
    }
  }

  v36 = *(a1 + 244);
  v37 = *(a1 + 144);
  os_retain(a1);
  os_retain(v37);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___mdns_querier_conclude_with_response_async_block_invoke;
  v48 = &__block_descriptor_tmp_70_1353;
  v51 = v36 >> 15;
  v49 = a1;
  v50 = v37;
  dispatch_async(_mdns_resolver_queue_s_queue, buf);
LABEL_79:
  v38 = *MEMORY[0x29EDCA608];
}

uint64_t _mdns_resolver_get_server(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 24);
  result = *(a1 + 24);
  if (result && (*(result + 100) != 1 || (*(result + 108) & 1) != 0 || (a2 & 1) != 0 || *(result + 106) - 1 >= 4))
  {
    v6 = mach_continuous_time();
    v7 = *v4;
    if (*v4)
    {
      v8 = v6;
      v9 = v4;
      do
      {
        if (*(v7 + 108) == 1 && (v10 = v8 - *(v7 + 72), v10 >= 0))
        {
          *v9 = *(v7 + 24);
          *(v7 + 24) = 0;
          *(v7 + 108) = 0;
          v11 = a1;
          do
          {
            v12 = v11;
            v11 = *(v11 + 24);
          }

          while (v11 && (*(v11 + 108) & 1) == 0 && *(v11 + 100) <= *(v7 + 100));
          *(v7 + 24) = v11;
          *(v12 + 24) = v7;
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v13 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
          {
            if (mdns_mach_ticks_per_second_s_once != -1)
            {
              dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
            }

            *buf = 138412802;
            v17 = v7;
            v18 = 2048;
            v19 = v10 / mdns_mach_ticks_per_second_s_ticks_per_second;
            v20 = 2048;
            v21 = 1000 * (v10 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second;
            _os_log_impl(&dword_2990ED000, v13, OS_LOG_TYPE_INFO, "Unpenalizing server %@ (penalty expired %lld.%03lld seconds ago)", buf, 0x20u);
          }
        }

        else
        {
          v9 = (v7 + 24);
        }

        v7 = *v9;
      }

      while (*v9);
      for (result = *v4; result; result = *(result + 24))
      {
        if (*(result + 106) - 1 <= 3)
        {
          v14 = (*(result + 100) - 1) >= 0x20 ? 0 : 1 << (*(result + 100) - 1);
          if ((v14 & a2) == 0)
          {
            break;
          }
        }
      }
    }

    else
    {
      result = 0;
    }
  }

  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void ___mdns_querier_conclude_with_response_async_block_invoke(uint64_t a1)
{
  _mdns_querier_conclude_ex(*(a1 + 32), 1, *(a1 + 48), *(a1 + 40));
  os_release(*(a1 + 32));
  v2 = *(a1 + 40);

  os_release(v2);
}

uint64_t _mdns_querier_get_eligible_server(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 224);
  if (*(a1 + 251) == 1)
  {
    v2 |= *(a1 + 216) | *(a1 + 220);
  }

  result = _mdns_resolver_get_server(*(a1 + 72), v2);
  if (result)
  {
    v4 = *(*(a1 + 72) + 112);
    if (v4 && v4 != a1)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 128);
        if (!v7)
        {
          v7 = "";
        }

        v9 = 136446210;
        v10 = v7;
        _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEFAULT, "%{public}sBacking off while probe querier is active", &v9, 0xCu);
      }

      result = 0;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _mdns_querier_set_current_server(uint64_t result, uint64_t a2)
{
  *(result + 80) = a2;
  *(result + 247) = 0;
  if (a2)
  {
    v2 = (*(a2 + 100) - 1) >= 0x20 ? 0 : 1 << (*(a2 + 100) - 1);
    if ((v2 & *(result + 212)) == 0)
    {
      if (*(result + 251))
      {
        v3 = 2000;
      }

      else
      {
        v3 = *(*(result + 72) + 124);
      }

      *(result + 204) = v3;
    }
  }

  return result;
}

uint64_t ___mdns_querier_initiate_send_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  if (v2)
  {
    dispatch_source_cancel(*(v1 + 104));
    dispatch_release(v2);
    *(*(a1 + 32) + 104) = 0;
    v1 = *(a1 + 32);
  }

  v4 = *(v1 + 251);
  if (*(v1 + 251))
  {
    v5 = 900000;
  }

  else
  {
    v5 = 30000;
  }

  v6 = *(v1 + 204);
  if (v6 <= v5 >> 1)
  {
    v5 = 2 * v6;
  }

  *(v1 + 204) = v5;
  v7 = *(v1 + 80);
  if (v7)
  {
    if (v4)
    {
      _mdns_resolver_penalize_server_ex(*(v1 + 72), *(v1 + 80), 0, 0, 0);
      *(v1 + 80) = 0;
      v8 = (v1 + 247);
LABEL_22:
      *v8 = 0;
      goto LABEL_23;
    }

    v8 = (v1 + 247);
    v9 = *(v1 + 247);
    if (v9 == 255 || (*v8 = v9 + 1, v9))
    {
      v10 = *(v1 + 112);
      if (v10)
      {
        while (v10[4] != v7)
        {
          v10 = v10[3];
          if (!v10)
          {
            goto LABEL_21;
          }
        }

        _mdns_resolver_penalize_server_ex(*(v1 + 72), v7, 1, v1, v10[8]);
        v11 = *(v7 + 100) - 1;
        if (v11 < 0x20)
        {
          v12 = ~(1 << v11);
        }

        else
        {
          v12 = -1;
        }

        *(v1 + 200) &= v12;
      }

LABEL_21:
      *(v1 + 80) = 0;
      goto LABEL_22;
    }
  }

LABEL_23:

  return _mdns_querier_initiate_send(v1);
}

void *_mdns_resolver_create_session(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *(*(a1 + 16) + 144);
  if ((v12 - 2) < 2)
  {
    goto LABEL_5;
  }

  if (v12 == 4)
  {
    v13 = _os_object_alloc();
    v14 = v13;
    if (!v13)
    {
      goto LABEL_38;
    }

    v17 = &_mdns_url_session_kind;
    v13[2] = &_mdns_url_session_kind;
    do
    {
      v18 = v17[2];
      if (v18)
      {
        v18(v14);
      }

      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    if (v12 != 1)
    {
      v13 = 0;
      v14 = 0;
      v19 = -6756;
      goto LABEL_33;
    }

    if (a3)
    {
LABEL_5:
      v13 = _os_object_alloc();
      v14 = v13;
      if (v13)
      {
        v15 = &_mdns_connection_session_kind;
        v13[2] = &_mdns_connection_session_kind;
        do
        {
          v16 = v15[2];
          if (v16)
          {
            v16(v14);
          }

          v15 = *v15;
        }

        while (v15);
        goto LABEL_23;
      }

LABEL_38:
      v19 = -6728;
      goto LABEL_33;
    }

    v13 = _os_object_alloc();
    v14 = v13;
    if (!v13)
    {
      goto LABEL_38;
    }

    v20 = &_mdns_udp_socket_session_kind;
    v13[2] = &_mdns_udp_socket_session_kind;
    do
    {
      v21 = v20[2];
      if (v21)
      {
        v21(v14);
      }

      v20 = *v20;
    }

    while (v20);
  }

LABEL_23:
  v14[4] = a2;
  os_retain(a2);
  v22 = v14[2];
  v23 = *(v22 + 56);
  if (v23)
  {
    v24 = v23(v14, a1, a3, a4, a5);
    if (v24)
    {
      v19 = v24;
      v13 = v14;
      v14 = 0;
      goto LABEL_33;
    }

    v22 = v14[2];
  }

  v25 = *(v22 + 88);
  if (v25)
  {
    v26 = v25(v14);
  }

  else
  {
    v26 = *(v22 + 104);
  }

  *(v14 + 89) = v26;
  v27 = *(v22 + 96);
  if (v27)
  {
    v28 = v27(v14);
  }

  else
  {
    v28 = *(v22 + 105);
  }

  v13 = 0;
  v19 = 0;
  *(v14 + 90) = v28;
LABEL_33:
  if (a6)
  {
    *a6 = v19;
  }

  if (v13)
  {
    os_release(v13);
  }

  return v14;
}

void _mdns_session_activate(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      oneshot_timer = _mdns_resolver_create_oneshot_timer(v2, 5u);
      *(a1 + 40) = oneshot_timer;
      if (!oneshot_timer)
      {
        v7 = -6729;
        goto LABEL_13;
      }

      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = ___mdns_session_activate_block_invoke;
      handler[3] = &__block_descriptor_tmp_122_1379;
      handler[4] = a1;
      dispatch_source_set_event_handler(oneshot_timer, handler);
      dispatch_activate(*(a1 + 40));
    }

    v4 = mach_continuous_time();
    *(a1 + 56) = v4;
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
    }

    *(a1 + 64) = v4 - 3600 * mdns_mach_ticks_per_second_s_ticks_per_second;
    v5 = *(*(a1 + 16) + 64);
    if (!v5 || (v6 = v5(a1)) == 0)
    {
      *(a1 + 88) = 1;
      return;
    }

    v7 = v6;
LABEL_13:
    *(a1 + 88) = 2;
    _mdns_common_session_terminate_async(a1, v7);
  }
}

void _mdns_resolver_penalize_server_ex(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    goto LABEL_27;
  }

  if (!a4 || !*(a1 + 128) || (*(a2 + 107) & 1) != 0 || (v10 = (*(*(a4 + 16) + 96))(a4), (v10 & 0xFFFE) != 0x40) || ((*(a2 + 100) - 1) >= 0x20 ? (v11 = 0) : (v11 = 1 << (*(a2 + 100) - 1)), (v11 & *(a4 + 200)) == 0))
  {
LABEL_26:
    if (a5 - *(a2 + 80) < 0)
    {
      goto LABEL_61;
    }

LABEL_27:
    v26 = a1;
    do
    {
      v27 = v26;
      v26 = *(v26 + 24);
      if (v26)
      {
        v28 = v26 == a2;
      }

      else
      {
        v28 = 1;
      }
    }

    while (!v28);
    if (v26)
    {
      v29 = (v27 + 24);
      *(v27 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      v30 = mach_continuous_time();
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
      }

      *(a2 + 72) = v30 + 60 * mdns_mach_ticks_per_second_s_ticks_per_second;
      *(a2 + 108) = 1;
      do
      {
        v31 = v29;
        v32 = *v29;
        v29 = (*v29 + 24);
      }

      while (v32);
      *v31 = a2;
    }

    v33 = "";
    if (a4 && *(a4 + 128))
    {
      v33 = *(a4 + 128);
    }

    if (!a3)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v40 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
      {
        goto LABEL_61;
      }

      v46 = 136446466;
      v47 = v33;
      v48 = 2112;
      *v49 = a2;
      v37 = "%{public}sPenalizing server %@ for 60 seconds";
      v38 = v40;
      v39 = 22;
      goto LABEL_60;
    }

    if ((*(a2 + 109) & 1) == 0)
    {
      *(a2 + 109) = 1;
    }

    v34 = 5;
    if (a4 && (*(a1 + 132) & 1) != 0)
    {
      if ((*(a2 + 100) - 1) >= 0x20)
      {
        v35 = 0;
      }

      else
      {
        v35 = 1 << (*(a2 + 100) - 1);
      }

      if ((v35 & *(a4 + 228)) != 0)
      {
        v34 = 2;
      }

      else
      {
        address = nw_endpoint_get_address(*(a2 + 48));
        if (address)
        {
          v43 = address;
          if (_mdns_querier_match(a4, "\x05local", 6, 1))
          {
            v34 = 3;
          }

          else
          {
            _mdns_symptoms_report_dns_server_symptom(413697, v43);
            *(a4 + 228) |= v35;
            v34 = 1;
          }
        }

        else
        {
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v44 = _mdns_resolver_log_s_log;
          if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_FAULT))
          {
            v34 = 4;
            goto LABEL_54;
          }

          v45 = *(a2 + 48);
          v46 = 138412290;
          v47 = v45;
          _os_log_fault_impl(&dword_2990ED000, v44, OS_LOG_TYPE_FAULT, "Trying to report unresponsive symptom for server without IP address: %@", &v46, 0xCu);
          v34 = 4;
        }
      }
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

LABEL_54:
    v36 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
    {
      v46 = 136446722;
      v47 = v33;
      v48 = 2112;
      *v49 = a2;
      *&v49[8] = 1024;
      *v50 = v34;
      v37 = "%{public}sPenalizing unresponsive server %@ for 60 seconds -- symptom report: %{mdns:symptom_result}u";
      v38 = v36;
      v39 = 28;
LABEL_60:
      _os_log_impl(&dword_2990ED000, v38, OS_LOG_TYPE_INFO, v37, &v46, v39);
    }

LABEL_61:
    v41 = *MEMORY[0x29EDCA608];
    return;
  }

  v12 = v10;
  v13 = *(a2 + 64);
  if (!v13)
  {
    v14 = *(*(a4 + 72) + 128);
    v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x5A6D011CuLL);
    if (!v15)
    {
      goto LABEL_71;
    }

    v13 = v15;
    *(v15 + 3) = v14;
    *(a2 + 64) = v15;
  }

  v16 = *(*(*(a4 + 96) + 56) + 24);
  if (!_pqw_info_can_accept_qname(v13, v16))
  {
    goto LABEL_26;
  }

  v17 = *(v13 + 3);
  if (*(v13 + 2) >= (v17 - 1))
  {
    v20 = *v13;
    if (*v13)
    {
      do
      {
        v21 = *v20;
        _pqw_qname_item_free(v20);
        v20 = v21;
      }

      while (v21);
      *v13 = 0;
      v17 = *(v13 + 3);
    }

    goto LABEL_20;
  }

  v18 = malloc_type_calloc(1uLL, 0x10uLL, 0xFE62E5EuLL);
  if (v18)
  {
    v19 = v18;
    DomainNameDupEx(v16, 0, v18 + 1, 0);
    *v19 = *v13;
    *v13 = v19;
    v17 = *(v13 + 2) + 1;
LABEL_20:
    *(v13 + 2) = v17;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v22 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a4 + 128);
      if (!v23)
      {
        v23 = "";
      }

      v24 = *(v13 + 2);
      v25 = *(v13 + 3);
      v46 = 136447234;
      v47 = v23;
      v48 = 1024;
      *v49 = v24;
      *&v49[4] = 1024;
      *&v49[6] = v25;
      *v50 = 2112;
      *&v50[2] = a2;
      v51 = 1024;
      v52 = v12;
      _os_log_impl(&dword_2990ED000, v22, OS_LOG_TYPE_DEFAULT, "%{public}sNo response (%u/%u) from server %@ for qtype %{mdns:rrtype}d", &v46, 0x28u);
    }

    goto LABEL_26;
  }

LABEL_71:
  __break(1u);
}