uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (qword_2A145DD30 == -1)
  {
    if (qword_2A145DD38)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x29EDCA608];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_2A145DD38)
    {
      goto LABEL_3;
    }
  }

  if (qword_2A145DD28 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_2A145DD1C > a3)
      {
        goto LABEL_11;
      }

      if (dword_2A145DD1C >= a3)
      {
        result = dword_2A145DD20 >= a4;
        v12 = *MEMORY[0x29EDCA608];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x29EDCA608];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x29EDCA608];
  v1 = qword_2A145DD38;
  if (qword_2A145DD38)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x2A1C7C4E8])
    {
      v1 = MEMORY[0x2A1C7C4E8];
      qword_2A145DD38 = MEMORY[0x2A1C7C4E8];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x29C298DB0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_2A145DD1C, &dword_2A145DD20);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL _mdns_address_equal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 25);
  if (v2 != *(a2 + 25))
  {
    return 0;
  }

  if (v2 == 30)
  {
    return *(a1 + 26) == *(a2 + 26) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  }

  return v2 == 2 && *(a1 + 26) == *(a2 + 26) && *(a1 + 28) == *(a2 + 28);
}

void *_mdns_address_copy_description(void *a1, int a2, char a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || mdns_string_builder_append_sockaddr_description(v7, (a1 + 3), a3))
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

uint64_t mdns_address_create_ipv4(unsigned int a1, unsigned int a2)
{
  result = _mdns_address_new();
  if (result)
  {
    *(result + 24) = 528;
    *(result + 26) = __rev16(a2);
    *(result + 28) = bswap32(a1);
  }

  return result;
}

uint64_t _mdns_address_new()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_address_kind;
    *(v0 + 16) = &_mdns_address_kind;
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
  }

  return v1;
}

__n128 mdns_address_create_ipv6(__n128 *a1, unsigned int a2, int a3)
{
  v6 = _mdns_address_new();
  if (v6)
  {
    *(v6 + 24) = 7708;
    *(v6 + 26) = __rev16(a2);
    result = *a1;
    *(v6 + 32) = *a1;
    *(v6 + 48) = a3;
  }

  return result;
}

uint64_t mdns_address_create_from_ip_address_string_and_port(char *a1, unsigned int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v4 = *a1;
  if (v4 == 91)
  {
    result = strchr(a1 + 1, 93);
    if (!result)
    {
      goto LABEL_28;
    }

    v6 = result;
    if (!_mdns_address_parse_ipv6(a1 + 1, result, &v23, &v21))
    {
      if (*(v6 + 1) == 58)
      {
        v7 = (v6 + 2);
        if (v6 == -2)
        {
LABEL_22:
          v15 = v21;
          result = _mdns_address_new();
          if (result)
          {
            *(result + 24) = 7708;
            *(result + 26) = bswap32(a2) >> 16;
            *(result + 32) = v23;
            *(result + 48) = v15;
          }

          goto LABEL_28;
        }

        goto LABEL_12;
      }

      if (!*(v6 + 1))
      {
        goto LABEL_22;
      }
    }

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

  if (!_mdns_address_parse_ipv6(a1, 0, &v23, &v21))
  {
    goto LABEL_22;
  }

  v8 = strchr(a1, 58);
  if (v8)
  {
    v9 = v8;
    v10 = v8 - a1;
    if ((v8 - a1) > 0x7F)
    {
      goto LABEL_27;
    }

    __memcpy_chk();
    v22[v10] = 0;
    if (inet_pton(2, v22, &v23) != 1)
    {
      goto LABEL_27;
    }

    v7 = (v9 + 1);
    if (v9 != -1)
    {
LABEL_12:
      v11 = *v7;
      if ((v11 - 48) <= 9)
      {
        v12 = 0;
        v13 = v7 + 1;
        while (1)
        {
          v12 = 10 * v12 + v11 - 48;
          if (HIWORD(v12))
          {
            break;
          }

          v14 = *v13++;
          v11 = v14;
          if ((v14 - 48) >= 0xA)
          {
            if (v11)
            {
              goto LABEL_27;
            }

            if (!a2)
            {
              a2 = v12;
            }

            if (v4 == 91)
            {
              goto LABEL_22;
            }

            goto LABEL_25;
          }
        }
      }

      goto LABEL_27;
    }
  }

  else if (inet_pton(2, a1, &v23) != 1)
  {
    goto LABEL_27;
  }

LABEL_25:
  v16 = v23;
  v17 = BYTE1(v23);
  v18 = BYTE2(v23);
  v19 = BYTE3(v23);
  result = _mdns_address_new();
  if (result)
  {
    *(result + 24) = 528;
    *(result + 26) = bswap32(a2) >> 16;
    *(result + 28) = bswap32((v16 << 24) | (v17 << 16) | (v18 << 8) | v19);
  }

LABEL_28:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _mdns_address_parse_ipv6(unsigned __int8 *a1, unsigned __int8 *a2, _OWORD *a3, _DWORD *a4)
{
  v6 = a2;
  v22 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v6 = a1 - 1;
      ;
    }
  }

  if (v6 <= a1)
  {
LABEL_8:
    v8 = 0;
  }

  else
  {
    v8 = a1;
    while (*v8 != 37)
    {
      if (++v8 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 - a1;
  if (v9 - a1 > 0x7F)
  {
    goto LABEL_34;
  }

  __memcpy_chk();
  v21[v10] = 0;
  if (inet_pton(30, v21, &v20) != 1)
  {
    goto LABEL_34;
  }

  if (v8)
  {
    v11 = (v8 + 1);
    v12 = &v6[-v8 - 1];
    if (v12 >= 0x11)
    {
      if (v12 == -1 || (v13 = malloc_type_malloc(&v6[-v8], 0x7D69791BuLL), (p_dst = v13) == 0))
      {
        __break(1u);
      }
    }

    else
    {
      v13 = 0;
      p_dst = &__dst;
    }

    memcpy(p_dst, (v8 + 1), &v6[-v8 - 1]);
    p_dst[v12] = 0;
    LODWORD(v12) = if_nametoindex(p_dst);
    if (v13)
    {
      free(v13);
    }

    if (!v12)
    {
      if (v11 >= v6)
      {
        goto LABEL_34;
      }

      v12 = 0;
      v16 = &v6[~v8];
      while (1)
      {
        v17 = *v11;
        if ((v17 - 48) > 9)
        {
          break;
        }

        v12 = (v17 - 48) + 10 * v12;
        if (HIDWORD(v12))
        {
          goto LABEL_34;
        }

        ++v11;
        if (!--v16)
        {
          v11 = v6;
          break;
        }
      }

      if (v11 != v6)
      {
LABEL_34:
        result = 4294960554;
        goto LABEL_35;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (a3)
  {
    *a3 = v20;
  }

  result = 0;
  if (a4)
  {
    *a4 = v12;
  }

LABEL_35:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_address_get_port(uint64_t a1)
{
  v1 = *(a1 + 25);
  if (v1 == 30 || v1 == 2)
  {
    return bswap32(*(a1 + 26)) >> 16;
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_bpf_open(int a1, int *a2)
{
  v4 = 0;
  v15 = *MEMORY[0x29EDCA608];
  while (1)
  {
    snprintf(__str, 0x20uLL, "/dev/bpf%d", v4);
    v5 = open(__str, a1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = 0;
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (!*__error())
    {
      v6 = -6700;
      goto LABEL_13;
    }

    v6 = *__error();
    if (v6 != 16)
    {
      break;
    }

    if (++v4 == 100)
    {
      v6 = 16;
      if (!a2)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (_mdns_bpf_log_s_once != -1)
  {
    dispatch_once(&_mdns_bpf_log_s_once, &__block_literal_global);
  }

  v7 = _mdns_bpf_log_s_log;
  if (!os_log_type_enabled(_mdns_bpf_log_s_log, OS_LOG_TYPE_ERROR))
  {
LABEL_16:
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *buf = 136446466;
  v11 = __str;
  v12 = 2048;
  v13 = v6;
  _os_log_error_impl(&dword_2990ED000, v7, OS_LOG_TYPE_ERROR, "Failed to open %{public}s: %{mdns:err}ld", buf, 0x16u);
  if (a2)
  {
LABEL_17:
    *a2 = v6;
  }

LABEL_18:
  v8 = *MEMORY[0x29EDCA608];
  return v5;
}

os_log_t ___mdns_bpf_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "bpf");
  _mdns_bpf_log_s_log = result;
  return result;
}

uint64_t mdns_cf_callback_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && (v4 = *(v2 + 32)) != 0)
  {
    return v4(a1, a2);
  }

  else
  {
    return 0;
  }
}

BOOL mdns_cfarray_enumerate(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    for (i = 0; i != v5; v6 = i >= v5)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (((*(a2 + 16))(a2, ValueAtIndex) & 1) == 0)
      {
        break;
      }

      ++i;
    }
  }

  return v6;
}

uint64_t mdns_cfset_enumerate(const __CFSet *a1, uint64_t a2)
{
  v44 = *MEMORY[0x29EDCA608];
  Count = CFSetGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *values = 0u;
    v13 = 0u;
    if (Count <= 0x40)
    {
      v6 = values;
      CFSetGetValues(a1, values);
      while (((*(a2 + 16))(a2, *v6) & 1) != 0)
      {
        ++v6;
        if (!--v5)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_9;
    }

    v9 = a2;
    v10 = 1;
    memset(v11, 0, sizeof(v11));
    CFSetApplyFunction(a1, _mdns_cf_applier_function, &v9);
    if (v10 != 1)
    {
LABEL_9:
      result = 0;
      goto LABEL_10;
    }
  }

LABEL_8:
  result = 1;
LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void _mdns_cf_applier_function(uint64_t a1, _BYTE *a2)
{
  if (a2[8] == 1)
  {
    a2[8] = (*(*a2 + 16))();
  }
}

os_log_t ___mhc_log_block_invoke()
{
  result = os_log_create("com.apple.mDNSResponder", "helper_client");
  _mhc_log_s_log = result;
  return result;
}

dispatch_queue_t ___mhc_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mhc", 0);
  _mhc_queue_s_queue = result;
  return result;
}

void ___mhc_create_connection_block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C299FD0](a2) == MEMORY[0x29EDCAA18])
  {
    if (_mhc_log_s_once != -1)
    {
      dispatch_once(&_mhc_log_s_once, &__block_literal_global_5);
    }

    v4 = _mhc_log_s_log;
    if (os_log_type_enabled(_mhc_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      string = xpc_dictionary_get_string(a2, *MEMORY[0x29EDCA9C8]);
      v10 = 138543618;
      v11 = v8;
      v12 = 2082;
      v13 = string;
      v6 = "Connection received error event -- connnection: %{public}@, error: %{public}s";
      goto LABEL_11;
    }
  }

  else
  {
    if (_mhc_log_s_once != -1)
    {
      dispatch_once(&_mhc_log_s_once, &__block_literal_global_5);
    }

    v4 = _mhc_log_s_log;
    if (os_log_type_enabled(_mhc_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v10 = 138543618;
      v11 = v5;
      v12 = 2112;
      v13 = a2;
      v6 = "Connection received unexpected event -- connection: %{public}@, event: %@";
LABEL_11:
      _os_log_debug_impl(&dword_2990ED000, v4, OS_LOG_TYPE_DEBUG, v6, &v10, 0x16u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t _mhc_set_ip_forwarding(BOOL a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (a2)
  {
    v6 = "set_ipv6_forwarding";
  }

  else
  {
    v6 = "set_ipv4_forwarding";
  }

  xpc_dictionary_set_string(v4, "command", v6);
  xpc_dictionary_set_BOOL(v5, "enable", a1);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v12 = ___mhc_set_ip_forwarding_block_invoke;
  v13 = &unk_29EF07960;
  v14 = &v16;
  v15 = a2;
  if (_mhc_queue_s_once != -1)
  {
    dispatch_once(&_mhc_queue_s_once, &__block_literal_global_14);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder_Helper", _mhc_queue_s_queue, 2uLL);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___mhc_create_connection_block_invoke;
  handler[3] = &__block_descriptor_tmp_11;
  handler[4] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_activate(mach_service);
  v8 = xpc_connection_send_message_with_reply_sync(mach_service, v5);
  v12(v11, v8);
  if (mach_service)
  {
    xpc_connection_cancel(mach_service);
    xpc_release(mach_service);
  }

  if (v8)
  {
    xpc_release(v8);
  }

  if (v5)
  {
    xpc_release(v5);
  }

  v9 = *(v17 + 6);
  _Block_object_dispose(&v16, 8);
  return v9;
}

void ___mhc_set_ip_forwarding_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v17 = *MEMORY[0x29EDCA608];
  value = xpc_dictionary_get_value(xdict, "error");
  if (value && (v4 = value, MEMORY[0x29C299FD0]() == MEMORY[0x29EDCAA30]))
  {
    v7 = xpc_int64_get_value(v4);
    v6 = v7;
    v5 = v7 == v7;
    if (v7 != v7)
    {
      v6 = 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  v8 = *(*(a1 + 32) + 8);
  if (!*(v8 + 24) && !v5)
  {
    *(v8 + 24) = -6712;
  }

  if (_mhc_log_s_once != -1)
  {
    dispatch_once(&_mhc_log_s_once, &__block_literal_global_5);
  }

  v9 = _mhc_log_s_log;
  v10 = *(*(*(a1 + 32) + 8) + 24);
  if (v10)
  {
    v11 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v11 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(_mhc_log_s_log, v11))
  {
    if (*(a1 + 40))
    {
      v12 = 6;
    }

    else
    {
      v12 = 4;
    }

    v14[0] = 67109376;
    v14[1] = v12;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_2990ED000, v9, v11, "Set IPv%d forwarding -- error: %{mdns:err}ld", v14, 0x12u);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void _mdns_client_finalize(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = a1[3];
      if (v5)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___mdns_client_finalize_block_invoke;
        v7[3] = &__block_descriptor_tmp_6;
        v7[4] = v4;
        v7[5] = v2;
        dispatch_async(v5, v7);
      }
    }
  }

  *v3 = 0;
  v3[1] = 0;
  v6 = a1[3];
  if (v6)
  {
    dispatch_release(v6);
    a1[3] = 0;
  }
}

void mdns_client_set_queue(uint64_t a1, dispatch_object_t object)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    if (object)
    {
      dispatch_retain(object);
    }

    v4 = *(a1 + 24);
    if (v4)
    {
      dispatch_release(v4);
    }

    *(a1 + 24) = object;
  }
}

void mdns_client_activate(uint64_t a1)
{
  *(a1 + 61) = 1;
  v2 = os_retain(a1);
  v3 = (*(*(a1 + 16) + 48))(v2);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_client_activate_block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = a1;
  dispatch_async(v3, block);
}

void __mdns_client_activate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 60))
  {
    v2 = *(*(v1 + 16) + 64);
    v3 = *(a1 + 32);
    if (v2)
    {
      v2(*(a1 + 32));
      v3 = *(a1 + 32);
    }

    *(v1 + 60) = 1;
    v1 = v3;
  }

  os_release(v1);
}

void mdns_client_invalidate(uint64_t a1)
{
  *(a1 + 61) = 1;
  v2 = os_retain(a1);
  v3 = (*(*(a1 + 16) + 48))(v2);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_client_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_2;
  block[4] = a1;
  dispatch_async(v3, block);
}

void __mdns_client_invalidate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 60) != 2)
  {
    v3 = *(*(v1 + 16) + 80);
    if (v3)
    {
      v3(*(a1 + 32));
    }

    v4 = *(v1 + 48);
    if (v4)
    {
      dispatch_source_cancel(*(v1 + 48));
      dispatch_release(v4);
      *(v1 + 48) = 0;
    }

    *(v1 + 60) = 2;
    v1 = *(a1 + 32);
  }

  os_release(v1);
}

void __mdns_client_set_time_limit_ms_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 60) != 2)
  {
    *(v2 + 56) = *(a1 + 40);
    (*(*(v2 + 16) + 112))();
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

uint64_t mdns_client_activate_time_limit_timer(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 48));
    dispatch_release(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = (*(*(a1 + 16) + 48))();
  oneshot_monotonic_timer = mdns_dispatch_create_oneshot_monotonic_timer(v3, 5u, v4);
  *(a1 + 48) = oneshot_monotonic_timer;
  if (oneshot_monotonic_timer)
  {
    os_retain(a1);
    v6 = *(a1 + 48);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = __mdns_client_activate_time_limit_timer_block_invoke;
    handler[3] = &__block_descriptor_tmp_4;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = __mdns_client_activate_time_limit_timer_block_invoke_2;
    v9[3] = &__block_descriptor_tmp_5;
    v9[4] = a1;
    dispatch_source_set_cancel_handler(v7, v9);
    dispatch_activate(*(a1 + 48));
    return 0;
  }

  return 4294960567;
}

uint64_t __mdns_client_activate_time_limit_timer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 48));
    dispatch_release(v3);
    *(*(a1 + 32) + 48) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(*(v2 + 16) + 120);

  return v4();
}

BOOL mdns_odoh_config_is_valid_inner(unsigned __int16 *a1, unint64_t a2)
{
  *&v19[5] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a2 <= 0xB)
    {
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
      }

      v3 = _mdns_crypto_log_s_log;
      result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v18 = 134217984;
        *v19 = a2;
        v5 = "Config length is too short: %zu";
        v6 = v3;
        v7 = 12;
LABEL_31:
        _os_log_error_impl(&dword_2990ED000, v6, OS_LOG_TYPE_ERROR, v5, &v18, v7);
LABEL_37:
        result = 0;
        goto LABEL_38;
      }

      goto LABEL_38;
    }

    v10 = *a1;
    if (v10 != 256 && v10 != 1791)
    {
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
      }

      v13 = _mdns_crypto_log_s_log;
      result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_INFO);
      if (!result)
      {
        goto LABEL_38;
      }

      LOWORD(v18) = 0;
      v14 = "Config version is not supported";
LABEL_36:
      _os_log_impl(&dword_2990ED000, v13, OS_LOG_TYPE_INFO, v14, &v18, 2u);
      goto LABEL_37;
    }

    v11 = bswap32(a1[1]) >> 16;
    if (v11 + 4 > a2)
    {
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
      }

      v12 = _mdns_crypto_log_s_log;
      result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v18 = 67109120;
        v19[0] = v11;
        v5 = "Config length field is too large: %hu";
        v6 = v12;
        v7 = 8;
        goto LABEL_31;
      }

      goto LABEL_38;
    }

    if ((bswap32(a1[5]) >> 16) + 8 != v11)
    {
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
      }

      v15 = _mdns_crypto_log_s_log;
      result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v16 = (bswap32(a1[5]) >> 16) + 8;
        v18 = 67109376;
        v19[0] = v11;
        LOWORD(v19[1]) = 2048;
        *(&v19[1] + 2) = v16;
        v5 = "Config length does not match: %hu != %zu";
        v6 = v15;
        v7 = 18;
        goto LABEL_31;
      }

      goto LABEL_38;
    }

    if (a1[2] == 0x2000 && a1[3] == 256 && a1[4] == 256)
    {
      result = 1;
      goto LABEL_38;
    }

    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v13 = _mdns_crypto_log_s_log;
    result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_INFO);
    if (result)
    {
      LOWORD(v18) = 0;
      v14 = "Config details are not supported";
      goto LABEL_36;
    }
  }

  else
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v8 = _mdns_crypto_log_s_log;
    result = os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v18) = 0;
      v5 = "Config is NULL";
      v6 = v8;
      v7 = 2;
      goto LABEL_31;
    }
  }

LABEL_38:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

os_log_t ___mdns_crypto_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "crypto");
  _mdns_crypto_log_s_log = result;
  return result;
}

dispatch_data_t mdns_decrypt_oblivious_response(NSObject *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  v68 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3 || !a4)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v21 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v22 = "Parameters are invalid";
LABEL_22:
    _os_log_error_impl(&dword_2990ED000, v21, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_28;
  }

  cchpke_params_x25519_AESGCM128_HKDF_SHA256();
  v9 = cchpke_params_sizeof_kdf_hash();
  v10 = cchpke_params_sizeof_aead_tag();
  v11 = cchpke_params_sizeof_aead_key();
  v12 = dispatch_data_get_size(a1);
  if (v12 <= v10 + 5)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v21 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v22 = "Invalid encrypted response length";
    goto LABEL_22;
  }

  v13 = v12;
  v14 = malloc_type_calloc(1uLL, v12, 0x4833B2AuLL);
  if (!v14)
  {
    goto LABEL_91;
  }

  v5 = v14;
  applier[0] = MEMORY[0x29EDCA5F8];
  applier[1] = 0x40000000;
  applier[2] = __mdns_decrypt_oblivious_response_block_invoke;
  applier[3] = &__block_descriptor_tmp_3_37;
  applier[4] = v14;
  dispatch_data_apply(a1, applier);
  if (*v5 == 2)
  {
    size = v11;
    v11 = *(v5 + 1);
    v15 = __rev16(v11);
    if (v13 <= v15 + 5 + v10)
    {
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
      }

      v27 = _mdns_crypto_log_s_log;
      if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 67109120;
      LODWORD(v63) = v15;
      v18 = "Invalid response nonce length %hu";
      v19 = v27;
      v20 = 8;
LABEL_34:
      _os_log_error_impl(&dword_2990ED000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
LABEL_66:
      v24 = 0;
LABEL_67:
      free(v5);
      goto LABEL_29;
    }

    v59 = v5;
    v5 = (bswap32(*&v5[v15 + 3]) >> 16);
    if (v13 != &v5[v15 + 5])
    {
      v11 = v15 + 3;
      if (_mdns_crypto_log_s_once == -1)
      {
LABEL_36:
        v28 = _mdns_crypto_log_s_log;
        if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218752;
          v63 = v13;
          v64 = 2048;
          v65 = v11;
          v66 = 2048;
          *v67 = 2;
          *&v67[8] = 2048;
          *&v67[10] = v5;
          _os_log_error_impl(&dword_2990ED000, v28, OS_LOG_TYPE_ERROR, "Invalid ciphertext length: %zu != %zu + %zu + %zu", buf, 0x2Au);
        }

        v24 = 0;
        v5 = v59;
        goto LABEL_67;
      }

LABEL_92:
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
      goto LABEL_36;
    }

    if (&v5[-v10] <= 3)
    {
      v16 = &v5[-v10];
      if (_mdns_crypto_log_s_once != -1)
      {
        dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
      }

      v5 = v59;
      v17 = _mdns_crypto_log_s_log;
      if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 134217984;
      v63 = v16;
      v18 = "Invalid plaintext length: %zu";
      v19 = v17;
      v20 = 12;
      goto LABEL_34;
    }

    v58 = &v5[-v10];
    ccsha256_di();
    if (a5 + v15 != -2)
    {
      v29 = malloc_type_calloc(1uLL, a5 + v15 + 2, 0xAE295AE8uLL);
      v5 = v59;
      if (v29)
      {
        v13 = v29;
        memcpy(v29, a4, a5);
        *&v13[a5] = v11;
        memcpy(&v13[a5 + 2], v59 + 3, v15);
        v11 = size;
        if (size)
        {
          v30 = malloc_type_calloc(1uLL, size, 0xC3AF052EuLL);
          if (v30)
          {
            v31 = v30;
            if (cchpke_initiator_export())
            {
              if (_mdns_crypto_log_s_once != -1)
              {
                dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
              }

              v32 = _mdns_crypto_log_s_log;
              if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_2990ED000, v32, OS_LOG_TYPE_ERROR, "cchpke_initiator_export failed", buf, 2u);
              }

              v33 = v31;
LABEL_49:
              free(v33);
              v34 = v13;
LABEL_65:
              free(v34);
              goto LABEL_66;
            }

            if (v9)
            {
              v36 = malloc_type_calloc(1uLL, v9, 0xA9010126uLL);
              if (v36)
              {
                v37 = v36;
                v38 = cchkdf_extract();
                free(v31);
                free(v13);
                if (v38)
                {
                  if (_mdns_crypto_log_s_once != -1)
                  {
                    dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
                  }

                  v39 = _mdns_crypto_log_s_log;
                  if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(v63) = v38;
                    _os_log_error_impl(&dword_2990ED000, v39, OS_LOG_TYPE_ERROR, "Secret extract error: %d", buf, 8u);
                  }

                  v34 = v37;
                  goto LABEL_65;
                }

                v40 = malloc_type_calloc(1uLL, size, 0x16697948uLL);
                if (v40)
                {
                  v41 = v40;
                  v42 = cchkdf_expand();
                  if (v42)
                  {
                    v43 = v42;
                    if (_mdns_crypto_log_s_once != -1)
                    {
                      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
                    }

                    v44 = _mdns_crypto_log_s_log;
                    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109120;
                      LODWORD(v63) = v43;
                      _os_log_error_impl(&dword_2990ED000, v44, OS_LOG_TYPE_ERROR, "Secret key expand error: %d", buf, 8u);
                    }

                    free(v37);
                    v34 = v41;
                    goto LABEL_65;
                  }

                  v45 = cchpke_params_sizeof_aead_nonce();
                  if (v45)
                  {
                    v46 = malloc_type_calloc(1uLL, v45, 0xBD56E2B4uLL);
                    if (v46)
                    {
                      v13 = v46;
                      v47 = cchkdf_expand();
                      free(v37);
                      if (v47)
                      {
                        if (_mdns_crypto_log_s_once != -1)
                        {
                          dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
                        }

                        v48 = _mdns_crypto_log_s_log;
                        if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109120;
                          LODWORD(v63) = v47;
                          _os_log_error_impl(&dword_2990ED000, v48, OS_LOG_TYPE_ERROR, "Secret nonce expand error: %d", buf, 8u);
                        }

                        v33 = v41;
                        goto LABEL_49;
                      }

                      v11 = v58;
                      v49 = malloc_type_calloc(1uLL, v58, 0x89E03E3CuLL);
                      if (v49)
                      {
                        v50 = v49;
                        ccaes_gcm_decrypt_mode();
                        v51 = ccgcm_one_shot();
                        free(v41);
                        free(v13);
                        free(v59);
                        if (v51)
                        {
                          if (_mdns_crypto_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
                          }

                          v52 = _mdns_crypto_log_s_log;
                          if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_88;
                          }

                          *buf = 0;
                          v53 = "Decrypt error: decrypt_error";
                          v54 = v52;
                          v55 = 2;
                        }

                        else
                        {
                          v56 = bswap32(*v50) >> 16;
                          if (v58 >= v56 + 4)
                          {
                            v24 = dispatch_data_create(v50 + 1, v56, 0, 0);
                            goto LABEL_89;
                          }

                          if (_mdns_crypto_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
                          }

                          v57 = _mdns_crypto_log_s_log;
                          if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
                          {
LABEL_88:
                            v24 = 0;
LABEL_89:
                            v5 = v50;
                            goto LABEL_67;
                          }

                          *buf = 134218752;
                          v63 = v58;
                          v64 = 2048;
                          v65 = 2;
                          v66 = 1024;
                          *v67 = v56;
                          *&v67[4] = 2048;
                          *&v67[6] = 2;
                          v53 = "Invalid plaintext length: %zu < %zu + %hu + %zu";
                          v54 = v57;
                          v55 = 38;
                        }

                        _os_log_error_impl(&dword_2990ED000, v54, OS_LOG_TYPE_ERROR, v53, buf, v55);
                        goto LABEL_88;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (_mdns_crypto_log_s_once != -1)
  {
    dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
  }

  v23 = _mdns_crypto_log_s_log;
  if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v35 = *v5;
    *buf = 67109120;
    LODWORD(v63) = v35;
    _os_log_error_impl(&dword_2990ED000, v23, OS_LOG_TYPE_ERROR, "Invalid message type %u", buf, 8u);
  }

  free(v5);
LABEL_28:
  v24 = 0;
LABEL_29:
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

NSObject *mdns_dispatch_create_oneshot_monotonic_timer(unsigned int a1, unsigned int a2, dispatch_queue_t queue)
{
  v5 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, queue);
  if (v5)
  {
    if (a2 >= 0x64)
    {
      v6 = 100;
    }

    else
    {
      v6 = a2;
    }

    v7 = (10000 * v6) * a1;
    v8 = dispatch_time(0x8000000000000000, 1000000 * a1);
    dispatch_source_set_timer(v5, v8, 0xFFFFFFFFFFFFFFFFLL, v7);
  }

  return v5;
}

void _mdns_dns_configurator_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

__CFString *_mdns_dns_configurator_copy_description(uint64_t a1, int a2, char a3)
{
  if (a3)
  {
    v27 = 0;
    asprintf(&v27, "<%s: %p>", *(*(a1 + 16) + 8), a1);
    return v27;
  }

  else
  {
    result = CFStringCreateMutable(0, 0);
    if (result)
    {
      v6 = result;
      if (a2)
      {
        CFStringAppendFormat(result, 0, @"<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      }

      CFStringAppendFormat(v6, 0, @"id: %@", *(a1 + 32));
      Value = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCC78]);
      if (Value)
      {
        CFStringAppendFormat(v6, 0, @", interface: %@", Value);
      }

      v8 = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCC88]);
      if (v8)
      {
        v9 = v8;
        CFStringAppend(v6, @", server addresses: {");
        Count = CFArrayGetCount(v9);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          v13 = &stru_2A1F31250;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
            CFStringAppendFormat(v6, 0, @"%@%@", v13, ValueAtIndex);
            ++v12;
            v13 = @", ";
          }

          while (v11 != v12);
        }

        CFStringAppend(v6, @"}");
      }

      v15 = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCC90]);
      if (v15)
      {
        CFStringAppendFormat(v6, 0, @", port: %@", v15);
      }

      v16 = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCC98]);
      if (v16)
      {
        v17 = v16;
        CFStringAppend(v6, @", domains: {");
        v18 = CFArrayGetCount(v17);
        v19 = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCCA0]);
        theArray = v19;
        if (v19)
        {
          v20 = CFArrayGetCount(v19);
        }

        else
        {
          v20 = 0;
        }

        if (v18 >= 1)
        {
          v21 = 0;
          v22 = &stru_2A1F31250;
          do
          {
            v23 = CFArrayGetValueAtIndex(v17, v21);
            v24 = @"<MISSING ORDER>";
            if (v21 < v20)
            {
              v24 = CFArrayGetValueAtIndex(theArray, v21);
            }

            CFStringAppendFormat(v6, 0, @"%@%@ (%@)", v22, v23, v24);
            ++v21;
            v22 = @", ";
          }

          while (v18 != v21);
        }

        CFStringAppend(v6, @"}");
      }

      v25 = mdns_cfstring_to_utf8_cstring(v6);
      CFRelease(v6);
      return v25;
    }
  }

  return result;
}

void *mdns_dns_configurator_create(char *cStr, _DWORD *a2)
{
  v7 = 0;
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v3)
  {
    v5 = 0;
    v7 = -6700;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_3;
  }

  v4 = v3;
  v5 = mdns_dns_configurator_create_with_cfstring_id(v3, &v7);
  CFRelease(v4);
  if (a2)
  {
LABEL_3:
    *a2 = v7;
  }

  return v5;
}

void *mdns_dns_configurator_create_with_cfstring_id(const void *a1, int *a2)
{
  v4 = _os_object_alloc();
  v5 = v4;
  if (v4)
  {
    v6 = &_mdns_dns_configurator_kind;
    *(v4 + 16) = &_mdns_dns_configurator_kind;
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
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v5[3] = Mutable;
    if (Mutable)
    {
      v5[4] = a1;
      CFRetain(a1);
      v9 = 0;
      v10 = v5;
      v5 = 0;
    }

    else
    {
      v10 = 0;
      v9 = -6729;
    }
  }

  else
  {
    v10 = 0;
    v9 = -6728;
  }

  if (a2)
  {
    *a2 = v9;
  }

  if (v5)
  {
    os_release(v5);
  }

  return v10;
}

uint64_t mdns_dns_configurator_set_interface(uint64_t a1, const char *a2)
{
  v3 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v3)
  {
    return 4294960596;
  }

  v4 = v3;
  CFDictionarySetValue(*(a1 + 24), *MEMORY[0x29EDBCC78], v3);
  CFRelease(v4);
  CFDictionarySetValue(*(a1 + 24), *MEMORY[0x29EDBCC80], *(a1 + 32));
  return 0;
}

uint64_t mdns_dns_configurator_add_ipv4_server_address(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = bswap32(a2);
  v3 = inet_ntop(2, &v8, v9, 0x10u);
  if (v3)
  {
    v4 = v3;
    v5 = a1;
LABEL_6:
    result = mdns_dns_configurator_add_server_address_string(v5, v4);
    goto LABEL_7;
  }

  if (!*__error())
  {
    result = 4294960596;
    goto LABEL_7;
  }

  result = *__error();
  if (!result)
  {
    v5 = a1;
    v4 = 0;
    goto LABEL_6;
  }

LABEL_7:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_configurator_add_server_address_string(uint64_t a1, const char *a2)
{
  v4 = *MEMORY[0x29EDBCC88];
  Value = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCC88]);
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      return 4294960567;
    }

    Value = Mutable;
    CFDictionarySetValue(*(a1 + 24), v4, Mutable);
    CFRelease(Value);
  }

  v7 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v7)
  {
    return 4294960596;
  }

  v8 = v7;
  CFArrayAppendValue(Value, v7);
  CFRelease(v8);
  return 0;
}

uint64_t mdns_dns_configurator_add_ipv6_server_address(uint64_t a1, const void *a2, unsigned int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = inet_ntop(30, a2, __s, 0x40u);
  if (v5)
  {
    goto LABEL_4;
  }

  if (!*__error())
  {
    result = 4294960596;
    goto LABEL_9;
  }

  result = *__error();
  if (!result)
  {
LABEL_4:
    if (a3)
    {
      v7 = strlen(__s);
      v8 = 64 - v7;
      if (if_indextoname(a3, v10))
      {
        snprintf(&__s[v7], v8, "%%%s");
      }

      else
      {
        snprintf(&__s[v7], v8, "%%%u");
      }
    }

    result = mdns_dns_configurator_add_server_address_string(a1, v5);
  }

LABEL_9:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_configurator_add_domain(uint64_t a1, const char *a2, unsigned int a3)
{
  v6 = *MEMORY[0x29EDBCC98];
  Value = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCC98]);
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (!Mutable)
    {
      return 4294960567;
    }

    Value = Mutable;
    CFDictionarySetValue(*(a1 + 24), v6, Mutable);
    CFRelease(Value);
  }

  v9 = *MEMORY[0x29EDBCCA0];
  v10 = CFDictionaryGetValue(*(a1 + 24), *MEMORY[0x29EDBCCA0]);
  if (v10)
  {
    goto LABEL_7;
  }

  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (!v11)
  {
    return 4294960567;
  }

  v10 = v11;
  CFDictionarySetValue(*(a1 + 24), v9, v11);
  CFRelease(v10);
LABEL_7:
  v12 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v12)
  {
    return 4294960596;
  }

  v13 = v12;
  valuePtr = a3;
  v14 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v14)
  {
    v15 = v14;
    CFArrayAppendValue(Value, v13);
    CFArrayAppendValue(v10, v15);
    CFRelease(v13);
    v16 = 0;
    v13 = v15;
  }

  else
  {
    v16 = 4294960567;
  }

  CFRelease(v13);
  return v16;
}

uint64_t mdns_dns_configurator_set_port(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v3)
  {
    return 4294960567;
  }

  v4 = v3;
  CFDictionarySetValue(*(a1 + 24), *MEMORY[0x29EDBCC90], v3);
  CFRelease(v4);
  return 0;
}

uint64_t mdns_dns_configurator_register(uint64_t a1, const __CFString *a2)
{
  v3 = SCDynamicStoreCreate(0, a2, 0, 0);
  if (!v3)
  {
    if (!SCError())
    {
      return 4294960596;
    }

    v4 = SCError();
    if (v4)
    {
      return v4;
    }
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, *MEMORY[0x29EDBCC60], *(a1 + 32), *MEMORY[0x29EDBCC68]);
  if (!NetworkServiceEntity)
  {
    if (!SCError())
    {
      goto LABEL_14;
    }

    v6 = SCError();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  if (SCDynamicStoreSetValue(v3, NetworkServiceEntity, *(a1 + 24)))
  {
    v7 = 0;
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_15:
    CFRelease(v3);
    goto LABEL_16;
  }

  if (!SCError())
  {
LABEL_14:
    v7 = 4294960596;
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = SCError();
LABEL_12:
  v7 = v6;
  if (v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  return v7;
}

uint64_t mdns_dns_configurator_deregister_configuration(const __CFString *a1, const __CFString *a2)
{
  v3 = SCDynamicStoreCreate(0, a2, 0, 0);
  if (!v3)
  {
    if (!SCError())
    {
      return 4294960596;
    }

    v4 = SCError();
    if (v4)
    {
      return v4;
    }
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, *MEMORY[0x29EDBCC60], a1, *MEMORY[0x29EDBCC68]);
  if (!NetworkServiceEntity)
  {
    if (!SCError())
    {
      goto LABEL_14;
    }

    v6 = SCError();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  if (SCDynamicStoreRemoveValue(v3, NetworkServiceEntity))
  {
    v7 = 0;
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_15:
    CFRelease(v3);
    goto LABEL_16;
  }

  if (!SCError())
  {
LABEL_14:
    v7 = 4294960596;
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v6 = SCError();
LABEL_12:
  v7 = v6;
  if (v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  return v7;
}

void _mdns_push_server_finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    os_release(v2);
    a1[6] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
    a1[8] = 0;
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
    a1[9] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    free(v5);
    a1[7] = 0;
  }
}

void *_mdns_push_server_copy_description(uint64_t a1, int a2, char a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v22 + 6) = appended;
      if (appended)
      {
        goto LABEL_13;
      }
    }

    if (CFArrayGetCount(*(a1 + 64)) >= 1)
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2000000000;
      v20[3] = "addresses: {";
      v9 = *(a1 + 64);
      v18[0] = MEMORY[0x29EDCA5F8];
      v18[1] = 0x40000000;
      v18[2] = ___mdns_push_server_copy_description_block_invoke;
      v18[3] = &unk_29EF07AF0;
      v18[5] = v20;
      v18[6] = v7;
      v18[4] = &v21;
      v19 = a3;
      mdns_cfarray_enumerate(v9, v18);
      v10 = mdns_string_builder_append_formatted(v7, "}");
      *(v22 + 6) = v10;
      _Block_object_dispose(v20, 8);
      if (v10)
      {
        goto LABEL_13;
      }
    }

    if (*(a1 + 48))
    {
      v11 = mdns_string_builder_append_formatted(v7, "srv name: ");
      *(v22 + 6) = v11;
      if (v11)
      {
        goto LABEL_13;
      }

      v12 = mdns_string_builder_append_description(v7, *(a1 + 48), a3);
      *(v22 + 6) = v12;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v13 = mdns_string_builder_append_formatted(v7, ", ");
    *(v22 + 6) = v13;
    if (v13)
    {
      goto LABEL_13;
    }

    v14 = *(a1 + 56);
    if (!v14)
    {
      v14 = "";
    }

    v15 = mdns_string_builder_append_formatted(v7, "interface: %s/%u", v14, *(a1 + 96));
    *(v22 + 6) = v15;
    if (v15)
    {
LABEL_13:
      v16 = 0;
    }

    else
    {
      v16 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v16;
}

BOOL ___mdns_push_server_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

dispatch_queue_t ___mdns_push_notifications_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mdns.push-notifications-queue", 0);
  _mdns_push_notifications_queue_s_queue = result;
  return result;
}

void __mdns_push_server_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    os_retain(*(v2 + 40));
    if (_mdns_dso_session_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __mdns_dso_session_invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_7_681;
    block[4] = v3;
    dispatch_async(_mdns_dso_session_queue_s_queue, block);
    os_release(*(*(a1 + 32) + 40));
    *(*(a1 + 32) + 40) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 88);
  if (v4)
  {
    v5 = *(v2 + 80);
    if (v5)
    {
      v6[0] = MEMORY[0x29EDCA5F8];
      v6[1] = 0x40000000;
      v6[2] = __mdns_push_server_invalidate_block_invoke_2;
      v6[3] = &unk_29EF07AA8;
      v6[4] = v4;
      dispatch_async(v5, v6);
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 80))
  {
    dispatch_release(*(v2 + 80));
    *(*(a1 + 32) + 80) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 88))
  {
    _Block_release(*(v2 + 88));
    v2 = *(a1 + 32);
    *(v2 + 88) = 0;
  }

  os_release(v2);
}

void _mdns_dns_push_service_definition_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    os_release(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    os_release(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    free(v7);
    a1[8] = 0;
  }
}

void *_mdns_dns_push_service_definition_copy_description(uint64_t a1, int a2, int a3)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    v12 = 0;
    goto LABEL_37;
  }

  v7 = v6;
  if (a2)
  {
    appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
    *(v40 + 6) = appended;
    if (appended)
    {
      goto LABEL_9;
    }
  }

  v9 = *(a1 + 64);
  if (!v9)
  {
    v9 = "";
  }

  v10 = mdns_string_builder_append_formatted(v7, "interface: %s/%u", v9, *(a1 + 72));
  *(v40 + 6) = v10;
  if (v10)
  {
    goto LABEL_9;
  }

  if (CFArrayGetCount(*(a1 + 40)) < 1)
  {
    v13 = mdns_string_builder_append_formatted(v7, ", hostname: ");
    *(v40 + 6) = v13;
    if (!v13)
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        if (a3)
        {
          v15 = (v14 + 16);
          while (1)
          {
            v15 = *v15;
            if (!v15)
            {
              break;
            }

            v16 = v15[3];
            if (v16)
            {
              v17 = v16();
              goto LABEL_24;
            }
          }

          v17 = 0;
LABEL_24:
          v20 = "«REDACTED»";
          if (v17)
          {
            v20 = v17;
          }
        }

        else
        {
          v17 = 0;
          v20 = *(v14 + 40);
        }
      }

      else
      {
        v17 = 0;
        v20 = "«NO HOSTNAME»";
      }

      v21 = mdns_string_builder_append_formatted(v7, "%s", v20);
      *(v40 + 6) = v21;
      if (v21)
      {
        goto LABEL_34;
      }

      v22 = mdns_string_builder_append_formatted(v7, ", port: %u", *(a1 + 76));
      *(v40 + 6) = v22;
      if (v22)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_36;
  }

  v11 = mdns_string_builder_append_formatted(v7, ", servers: {");
  *(v40 + 6) = v11;
  if (v11)
  {
    goto LABEL_9;
  }

  v36[3] = 0;
  v18 = *(a1 + 40);
  if (v18)
  {
    v33[0] = MEMORY[0x29EDCA5F8];
    v33[1] = 0x40000000;
    v33[2] = ___mdns_dns_push_service_definition_copy_description_block_invoke;
    v33[3] = &unk_29EF07B38;
    v33[4] = &v39;
    v33[5] = &v35;
    v33[6] = v7;
    v34 = a3;
    mdns_cfarray_enumerate(v18, v33);
    if (*(v40 + 6))
    {
      goto LABEL_9;
    }
  }

  v19 = mdns_string_builder_append_formatted(v7, "}");
  v17 = 0;
  v12 = 0;
  *(v40 + 6) = v19;
  if (v19)
  {
    goto LABEL_36;
  }

LABEL_28:
  v23 = mdns_string_builder_append_formatted(v7, ", domains: {");
  *(v40 + 6) = v23;
  if (!v23)
  {
    v36[3] = "";
    v24 = *(a1 + 48);
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 0x40000000;
    v31[2] = ___mdns_dns_push_service_definition_copy_description_block_invoke_2;
    v31[3] = &unk_29EF07B60;
    v32 = a3;
    v31[4] = &v35;
    v31[5] = v7;
    if (mdns_cfset_enumerate(v24, v31))
    {
      v25 = mdns_string_builder_append_formatted(v7, "}");
      *(v40 + 6) = v25;
      if (!v25)
      {
        v36[3] = "";
        if ((*(a1 + 79) & 1) == 0 && *(a1 + 80) != 1)
        {
LABEL_45:
          v12 = mdns_string_builder_copy_string(v7);
          if (!v17)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v26 = mdns_string_builder_append_formatted(v7, ", attributes: {");
        *(v40 + 6) = v26;
        if (v26)
        {
          goto LABEL_34;
        }

        if (*(a1 + 79) == 1)
        {
          v28 = mdns_string_builder_append_formatted(v7, "%slocal-purview", v36[3]);
          *(v40 + 6) = v28;
          if (v28)
          {
            goto LABEL_34;
          }

          v36[3] = ", ";
        }

        if (*(a1 + 80) == 1)
        {
          v29 = mdns_string_builder_append_formatted(v7, "%smdns-alternative", v36[3]);
          *(v40 + 6) = v29;
          if (v29)
          {
            goto LABEL_34;
          }

          v36[3] = ", ";
        }

        v30 = mdns_string_builder_append_formatted(v7, "}");
        *(v40 + 6) = v30;
        if (!v30)
        {
          goto LABEL_45;
        }
      }
    }
  }

LABEL_34:
  v12 = 0;
  if (v17)
  {
LABEL_35:
    free(v17);
  }

LABEL_36:
  os_release(v7);
LABEL_37:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v12;
}

BOOL ___mdns_dns_push_service_definition_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_push_service_definition_copy_description_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a2 + 16);
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      v4 = v3[3];
      if (v4)
      {
        v5 = v4(a2, 0, 1);
        goto LABEL_8;
      }
    }

    v5 = 0;
LABEL_8:
    v6 = "«REDACTED»";
    if (v5)
    {
      v6 = v5;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(a2 + 40);
  }

  appended = mdns_string_builder_append_formatted(*(a1 + 40), "%s%s", *(*(*(a1 + 32) + 8) + 24), v6);
  if (v5)
  {
    free(v5);
  }

  result = appended == 0;
  *(*(*(a1 + 32) + 8) + 24) = ", ";
  return result;
}

void *mdns_dns_push_service_definition_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_dns_push_service_definition_kind;
    *(v0 + 16) = &_mdns_dns_push_service_definition_kind;
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
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
    v1[5] = Mutable;
    if (!Mutable || (v6 = CFSetCreateMutable(v4, 0, &mdns_domain_name_cf_set_callbacks), (v1[6] = v6) == 0) || (v7 = CFArrayCreateMutable(v4, 0, MEMORY[0x29EDB9000]), (v1[7] = v7) == 0))
    {
      os_release(v1);
      return 0;
    }
  }

  return v1;
}

void mdns_dns_push_service_definition_set_interface_index(uint64_t a1, unsigned int a2, char a3)
{
  *(a1 + 78) = a3;
  if (*(a1 + 72) != a2)
  {
    *(a1 + 72) = a2;
    v4 = *(a1 + 64);
    if (v4)
    {
      free(v4);
      *(a1 + 64) = 0;
      a2 = *(a1 + 72);
    }
  }

  if (a2)
  {
    if (!*(a1 + 64))
    {
      *(a1 + 64) = mdns_system_interface_index_to_name(a2);
    }
  }

  else
  {
    *(a1 + 78) = 0;
  }
}

void _mdns_dns_relay_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    nw_connection_cancel(v2);
    nw_release(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

char *_mdns_dns_relay_copy_description(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = __s1;
  __s1[0] = 0;
  if (a2 && (mdns_snprintf_add(&v10, &v12, "<%s: %p>: ", a4, a5, a6, a7, a8, *(*(a1 + 16) + 8)) & 0x80000000) != 0)
  {
    result = 0;
  }

  else
  {
    result = strdup(__s1);
    if (!result)
    {
      __break(1u);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void mdns_dns_relay_set_client_connection(uint64_t a1, void *obj)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    nw_retain(obj);
    v4 = *(a1 + 24);
    if (v4)
    {
      nw_release(v4);
    }

    *(a1 + 24) = obj;
  }
}

__n128 mdns_dns_relay_set_server_address(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    result = *a2;
    *(a1 + 52) = *(a2 + 12);
    *(a1 + 40) = result;
  }

  return result;
}

void mdns_dns_relay_activate(_BYTE *a1)
{
  if ((a1[72] & 1) == 0)
  {
    a1[72] = 1;
    os_retain(a1);
    if (_mdns_dns_relay_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_relay_queue_s_once, &__block_literal_global_32);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __mdns_dns_relay_activate_block_invoke;
    block[3] = &__block_descriptor_tmp_113;
    block[4] = a1;
    dispatch_async(_mdns_dns_relay_queue_s_queue, block);
  }
}

void __mdns_dns_relay_activate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  if (v3)
  {
    if (_mdns_dns_relay_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_relay_queue_s_once, &__block_literal_global_32);
    }

    nw_connection_set_queue(v3, _mdns_dns_relay_queue_s_queue);
    os_retain(v2);
    v4 = v2[3];
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___mdns_dns_relay_activate_internal_block_invoke;
    handler[3] = &__block_descriptor_tmp_25_115;
    handler[4] = v2;
    nw_connection_set_state_changed_handler(v4, handler);
    nw_connection_start(v2[3]);
  }

  else
  {
    _mdns_dns_relay_terminate(*(a1 + 32));
  }

  os_release(*(a1 + 32));
}

void ___mdns_dns_relay_activate_internal_block_invoke(uint64_t a1, int a2, nw_error_t error)
{
  v3 = *(a1 + 32);
  if (*(v3 + 24))
  {
    if (a2 != 5)
    {
      if (a2 == 4)
      {
        if (error)
        {
          nw_error_get_error_code(error);
        }
      }

      else
      {
        if (a2 != 3)
        {
          return;
        }

        secure_tcp = nw_parameters_create_secure_tcp(*MEMORY[0x29EDBB848], *MEMORY[0x29EDBB840]);
        if (secure_tcp)
        {
          v5 = secure_tcp;
          v6 = nw_parameters_copy_default_protocol_stack(secure_tcp);
          if (v6)
          {
            v7 = v6;
            if (_mdns_get_dns_over_bytestream_protocol_definition_s_once != -1)
            {
              dispatch_once(&_mdns_get_dns_over_bytestream_protocol_definition_s_once, &__block_literal_global_999);
            }

            if (_mdns_get_dns_over_bytestream_protocol_definition_s_framer_def)
            {
              options = nw_framer_create_options(_mdns_get_dns_over_bytestream_protocol_definition_s_framer_def);
              if (options)
              {
                nw_protocol_stack_prepend_application_protocol(v7, options);
                address = nw_endpoint_create_address((v3 + 40));
                v10 = address;
                if (address)
                {
                  v11 = nw_connection_create(address, v5);
                  v12 = v11 != 0;
                }

                else
                {
                  v12 = 0;
                  v11 = 0;
                }

LABEL_13:
                nw_release(v5);
                nw_release(v7);
                if (options)
                {
                  nw_release(options);
                }

                if (v10)
                {
                  nw_release(v10);
                }

                *(v3 + 32) = v11;
                if (v12)
                {
                  if (_mdns_dns_relay_queue_s_once != -1)
                  {
                    dispatch_once(&_mdns_dns_relay_queue_s_once, &__block_literal_global_32);
                  }

                  nw_connection_set_queue(v11, _mdns_dns_relay_queue_s_queue);
                  os_retain(v3);
                  v13 = *(v3 + 32);
                  handler[0] = MEMORY[0x29EDCA5F8];
                  handler[1] = 0x40000000;
                  handler[2] = ___mdns_dns_relay_set_up_server_connection_block_invoke;
                  handler[3] = &__block_descriptor_tmp_26;
                  handler[4] = v3;
                  nw_connection_set_state_changed_handler(v13, handler);
                  nw_connection_start(*(v3 + 32));
                  return;
                }

                goto LABEL_24;
              }

              v12 = 0;
            }

            else
            {
              v12 = 0;
              options = 0;
            }

            v11 = 0;
            v10 = 0;
            goto LABEL_13;
          }

          nw_release(v5);
        }

        *(v3 + 32) = 0;
      }

LABEL_24:

      _mdns_dns_relay_terminate(v3);
      return;
    }
  }

  else if (a2 != 5)
  {
    return;
  }

  v14 = *(a1 + 32);

  os_release(v14);
}

void _mdns_dns_relay_terminate(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if (*(a1 + 68))
    {
      *(a1 + 73) = 1;
    }

    else
    {
      nw_connection_cancel(v2);
      nw_release(*(a1 + 24));
      *(a1 + 24) = 0;
    }
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    nw_connection_cancel(v3);
    nw_release(*(a1 + 32));
    *(a1 + 32) = 0;
  }
}

void ___mdns_dns_relay_set_up_server_connection_block_invoke(uint64_t a1, int a2, nw_error_t error)
{
  v3 = *(a1 + 32);
  if (v3[4])
  {
    if (a2 != 5)
    {
      if (a2 == 4)
      {
        if (error)
        {
          nw_error_get_error_code(error);
        }

        _mdns_dns_relay_terminate(v3);
      }

      else if (a2 == 3)
      {
        (*(v3[2] + 48))(*(a1 + 32), v3[3], error);
        v4 = v3[4];
        completion[0] = MEMORY[0x29EDCA5F8];
        completion[1] = 0x40000000;
        completion[2] = ___mdns_dns_relay_schedule_server_receive_block_invoke;
        completion[3] = &__block_descriptor_tmp_27_117;
        completion[4] = v3;
        nw_connection_receive_message(v4, completion);
      }

      return;
    }
  }

  else if (a2 != 5)
  {
    return;
  }

  v5 = *(a1 + 32);

  os_release(v5);
}

void ___mdns_dns_relay_schedule_server_receive_block_invoke(uint64_t a1, uint64_t a2, nw_content_context_t context, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (!*(v6 + 32))
  {
    return;
  }

  if (a2)
  {
    _mdns_dns_relay_send_dns_message_to_client(v6, a2);
  }

  if (a5)
  {
    v9 = *(a1 + 32);

    _mdns_dns_relay_terminate(v9);
    return;
  }

  if (!context)
  {
    v11 = *(a1 + 32);
    goto LABEL_14;
  }

  is_final = nw_content_context_get_is_final(context);
  v11 = *(a1 + 32);
  if (!is_final)
  {
LABEL_14:
    v12 = *(v11 + 32);
    completion[0] = MEMORY[0x29EDCA5F8];
    completion[1] = 0x40000000;
    completion[2] = ___mdns_dns_relay_schedule_server_receive_block_invoke;
    completion[3] = &__block_descriptor_tmp_27_117;
    completion[4] = v11;
    nw_connection_receive_message(v12, completion);
    return;
  }

  _mdns_dns_relay_send_dns_message_to_client(v11, 0);
}

void _mdns_dns_relay_send_dns_message_to_client(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24) || *(a1 + 73) == 1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v9 = 0;
  if (!a2)
  {
    v4 = *MEMORY[0x29EDBB838];
    obj = v4;
    nw_retain(v4);
    v3 = 0;
    goto LABEL_9;
  }

  obj = 0;
  v3 = (*(*(a1 + 16) + 56))(a1, a2, &obj, &v9);
  if (!v9)
  {
    v4 = obj;
LABEL_9:
    v5 = *(a1 + 24);
    completion[0] = MEMORY[0x29EDCA5F8];
    completion[1] = 0x40000000;
    completion[2] = ___mdns_dns_relay_send_dns_message_to_client_block_invoke;
    completion[3] = &__block_descriptor_tmp_28_119;
    completion[4] = a1;
    nw_connection_send(v5, v3, v4, 1, completion);
    v6 = *(a1 + 68) + 1;
    *(a1 + 68) = v6;
    if (v6 == v6 << 31 >> 31)
    {
      v9 = 0;
      if (!v3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_16:
    _os_assert_log();
    _os_crash();
    __break(1u);
    return;
  }

  _mdns_dns_relay_terminate(a1);
  if (v3)
  {
LABEL_11:
    dispatch_release(v3);
  }

LABEL_12:
  if (obj)
  {
    nw_release(obj);
  }
}

void ___mdns_dns_relay_send_dns_message_to_client_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 68);
  *(v2 + 68) = v3 - 1;
  if (!v3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    return;
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  if (v6)
  {
    if (*(v5 + 73) == 1 && !*(v5 + 68))
    {
      nw_connection_cancel(v6);
      nw_release(*(*(a1 + 32) + 24));
      *(*(a1 + 32) + 24) = 0;
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    v8 = *(a1 + 32);

    _mdns_dns_relay_terminate(v8);
  }
}

dispatch_queue_t ___mdns_dns_relay_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mdns.dns-relay-queue", 0);
  _mdns_dns_relay_queue_s_queue = result;
  return result;
}

uint64_t mdns_dot_relay_create(int *a1)
{
  v2 = _os_object_alloc();
  v3 = v2;
  if (v2)
  {
    v4 = &_mdns_dot_relay_kind;
    *(v2 + 16) = &_mdns_dot_relay_kind;
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
  }

  if (a1)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = -6728;
    }

    *a1 = v6;
  }

  return v3;
}

dispatch_data_t _mdns_dot_relay_handle_dns_message_to_client(int a1, dispatch_data_t data, NSObject **a3, int *a4)
{
  buffer = bswap32(dispatch_data_get_size(data)) >> 16;
  v7 = dispatch_data_create(&buffer, 2uLL, 0, 0);
  v8 = v7;
  if (v7)
  {
    concat = dispatch_data_create_concat(v7, data);
    dispatch_release(v8);
    if (concat)
    {
      v8 = *MEMORY[0x29EDBB830];
      nw_retain(*MEMORY[0x29EDBB830]);
      v10 = 0;
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v8 = 0;
  }

  else
  {
    concat = 0;
  }

  v10 = -6729;
  if (a3)
  {
LABEL_4:
    *a3 = v8;
    v8 = 0;
  }

LABEL_5:
  if (a4)
  {
    *a4 = v10;
  }

  if (v8)
  {
    nw_release(v8);
  }

  return concat;
}

void _mdns_dot_relay_schedule_client_receive(uint64_t a1, nw_connection_t connection)
{
  v2 = *(a1 + 80);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dot_relay_schedule_client_receive_block_invoke;
  v4[3] = &__block_descriptor_tmp_5_123;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 2;
  }

  v4[4] = a1;
  v5 = v3;
  nw_connection_receive(connection, v3, v3, v4);
}

void ___mdns_dot_relay_schedule_client_receive_block_invoke(uint64_t a1, dispatch_data_t data, NSObject *a3, int a4, uint64_t a5)
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  if (!*(v5 + 24) || !*(v5 + 32))
  {
    goto LABEL_33;
  }

  if (!a5)
  {
    goto LABEL_7;
  }

  if (_mdns_dns_relay_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_relay_log_s_once, &__block_literal_global_124);
  }

  v11 = _mdns_dns_relay_log_s_log;
  if (!os_log_type_enabled(_mdns_dns_relay_log_s_log, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    if (data)
    {
      goto LABEL_8;
    }

LABEL_17:
    size = 0;
    goto LABEL_18;
  }

  *applier = 138543362;
  *&applier[4] = a5;
  _os_log_error_impl(&dword_2990ED000, v11, OS_LOG_TYPE_ERROR, "DoT receive error: %{public}@", applier, 0xCu);
  if (!data)
  {
    goto LABEL_17;
  }

LABEL_8:
  size = dispatch_data_get_size(data);
  if (size != *(a1 + 40))
  {
LABEL_18:
    if (_mdns_dns_relay_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_relay_log_s_once, &__block_literal_global_124);
    }

    v16 = _mdns_dns_relay_log_s_log;
    if (os_log_type_enabled(_mdns_dns_relay_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *applier = 67109376;
      *&applier[4] = v18;
      *&applier[8] = 2048;
      *&applier[10] = size;
      _os_log_error_impl(&dword_2990ED000, v16, OS_LOG_TYPE_ERROR, "Expected to receive %u bytes from client, but received %zu bytes instead", applier, 0x12u);
    }

    v15 = 0;
    goto LABEL_23;
  }

  v13 = *(a1 + 32);
  if (*(v13 + 80))
  {
    *(v13 + 80) = 0;
    _mdns_dns_relay_send_dns_message_to_server(v13, data);
  }

  else
  {
    v20 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2000000000;
    v21[3] = 0;
    *applier = MEMORY[0x29EDCA5F8];
    *&applier[8] = 0x40000000;
    *&applier[16] = ___mdns_dispatch_data_memcpy_block_invoke;
    v23 = &unk_29EF07BE8;
    v25 = 2;
    v26 = &v20;
    v24 = v21;
    dispatch_data_apply(data, applier);
    _Block_object_dispose(v21, 8);
    *(*(a1 + 32) + 80) = bswap32(v20) >> 16;
    if (_mdns_dns_relay_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_relay_log_s_once, &__block_literal_global_124);
    }

    v14 = _mdns_dns_relay_log_s_log;
    if (os_log_type_enabled(_mdns_dns_relay_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(*(a1 + 32) + 80);
      *applier = 67109120;
      *&applier[4] = v19;
      _os_log_debug_impl(&dword_2990ED000, v14, OS_LOG_TYPE_DEBUG, "Received message length %u from client", applier, 8u);
    }
  }

  v15 = 1;
LABEL_23:
  if (!data)
  {
    v15 = 1;
  }

  if (a5 || (v15 & 1) == 0)
  {
    _mdns_dns_relay_terminate(*(a1 + 32));
  }

  else if (a3 && a4 && nw_content_context_get_is_final(a3))
  {
    _mdns_dns_relay_send_dns_message_to_server(*(a1 + 32), 0);
  }

  else
  {
    (*(*(*(a1 + 32) + 16) + 48))(*(a1 + 32), *(*(a1 + 32) + 24));
  }

LABEL_33:
  v17 = *MEMORY[0x29EDCA608];
}

BOOL ___mdns_dispatch_data_memcpy_block_invoke(void *a1, int a2, unint64_t a3, void *__src, size_t a5)
{
  v5 = a1[5];
  v6 = v5 > a3;
  v7 = v5 - a3;
  if (!v6)
  {
    return 0;
  }

  if (v7 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v7;
  }

  memcpy((a1[6] + a3), __src, v10);
  *(*(a1[4] + 8) + 24) = v10 + a3;
  return *(*(a1[4] + 8) + 24) < a1[5];
}

void _mdns_dns_relay_send_dns_message_to_server(uint64_t a1, NSObject *a2)
{
  v2 = MEMORY[0x29EDBB830];
  if (!a2)
  {
    v2 = MEMORY[0x29EDBB838];
  }

  v3 = *v2;
  v4 = *(a1 + 32);
  completion[0] = MEMORY[0x29EDCA5F8];
  completion[1] = 0x40000000;
  completion[2] = ___mdns_dns_relay_send_dns_message_to_server_block_invoke;
  completion[3] = &__block_descriptor_tmp_12_129;
  completion[4] = a1;
  nw_connection_send(v4, a2, v3, 1, completion);
}

void ___mdns_dns_relay_send_dns_message_to_server_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    if (*(v2 + 32))
    {
      _mdns_dns_relay_terminate(v2);
    }
  }
}

os_log_t ___mdns_dns_relay_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "dns_relay");
  _mdns_dns_relay_log_s_log = result;
  return result;
}

uint64_t mdns_doh_relay_create(int *a1)
{
  v2 = _os_object_alloc();
  v3 = v2;
  if (v2)
  {
    v4 = &_mdns_doh_relay_kind;
    *(v2 + 16) = &_mdns_doh_relay_kind;
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
  }

  if (a1)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = -6728;
    }

    *a1 = v6;
  }

  return v3;
}

NSObject *_mdns_doh_relay_handle_dns_message_to_client(uint64_t a1, NSObject *a2, NSObject **a3, _DWORD *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v7 = MEMORY[0x29C299270]();
  if (!v7)
  {
    v11 = 0;
    a2 = 0;
    v14 = -6729;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  size = dispatch_data_get_size(a2);
  snprintf(__str, 0x80uLL, "%zu", size);
  v9 = *MEMORY[0x29EDBB858];
  nw_http_fields_set_value_by_name();
  v10 = *MEMORY[0x29EDBB860];
  nw_http_fields_set_value_by_name();
  v11 = _mdns_create_http_response_context(200, v7, &v14);
  if (v14)
  {
    a2 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    *a3 = v11;
    v11 = 0;
    goto LABEL_7;
  }

  dispatch_retain(a2);
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (a4)
  {
    *a4 = v14;
  }

  if (v7)
  {
    nw_release(v7);
  }

  if (v11)
  {
    nw_release(v11);
  }

  v12 = *MEMORY[0x29EDCA608];
  return a2;
}

NSObject *_mdns_create_http_response_context(uint64_t a1, uint64_t a2, int *a3)
{
  well_known = nw_http_response_create_well_known();
  if (!well_known)
  {
    v8 = 0;
    metadata_for_response = 0;
    goto LABEL_10;
  }

  if (a2)
  {
    nw_http_response_set_header_fields();
  }

  metadata_for_response = nw_http_create_metadata_for_response();
  if (!metadata_for_response)
  {
    v8 = 0;
LABEL_10:
    v9 = -6729;
    if (!a3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v7 = nw_content_context_create("https");
  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  nw_content_context_set_metadata_for_protocol(v7, metadata_for_response);
  v9 = 0;
  if (a3)
  {
LABEL_11:
    *a3 = v9;
  }

LABEL_12:
  if (well_known)
  {
    nw_release(well_known);
  }

  if (metadata_for_response)
  {
    nw_release(metadata_for_response);
  }

  return v8;
}

void _mdns_doh_relay_schedule_client_receive(uint64_t a1, nw_connection_t connection)
{
  completion[0] = MEMORY[0x29EDCA5F8];
  completion[1] = 0x40000000;
  completion[2] = ___mdns_doh_relay_schedule_client_receive_block_invoke;
  completion[3] = &__block_descriptor_tmp_14;
  completion[4] = a1;
  nw_connection_receive_message(connection, completion);
}

void ___mdns_doh_relay_schedule_client_receive_block_invoke(uint64_t a1, int a2, NSObject *a3, int a4, nw_error_t error)
{
  v56 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  if (!v5[3] || !v5[4])
  {
    goto LABEL_49;
  }

  if (error)
  {
    nw_error_get_error_code(error);
    if (_mdns_dns_relay_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_relay_log_s_once, &__block_literal_global_124);
    }

    v28 = _mdns_dns_relay_log_s_log;
    if (os_log_type_enabled(_mdns_dns_relay_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = error;
      _os_log_error_impl(&dword_2990ED000, v28, OS_LOG_TYPE_ERROR, "DoH receive error: %{public}@", &buf, 0xCu);
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_39;
  }

  v9 = nw_protocol_copy_http_definition();
  v10 = nw_content_context_copy_protocol_metadata(a3, v9);
  if (v10)
  {
    v43 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    v38 = 0;
    if (nw_http_metadata_get_version() != 4)
    {
      v11 = 0;
      v19 = 0;
      v20 = 505;
      goto LABEL_27;
    }

    v11 = nw_http_metadata_copy_request();
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = *MEMORY[0x29EDBB868];
    if ((nw_http_request_has_method() & 1) == 0)
    {
      v19 = 0;
      v20 = 501;
      goto LABEL_27;
    }

    if (v5[11])
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2000000000;
      LOBYTE(v32) = 0;
      completion = 0;
      p_completion = &completion;
      v47 = 0x2000000000;
      LOBYTE(v48) = 0;
      *&buf = MEMORY[0x29EDCA5F8];
      *(&buf + 1) = 0x40000000;
      v51 = ___mdns_doh_relay_handle_request_block_invoke;
      v52 = &unk_29EF07C50;
      v53 = &v29;
      v54 = &completion;
      v55 = v5;
      nw_http_request_access_authority();
      if (*(v30 + 24) == 1)
      {
        if (*(p_completion + 24) == 1)
        {
          _Block_object_dispose(&completion, 8);
          _Block_object_dispose(&v29, 8);
          goto LABEL_12;
        }

        v21 = 404;
      }

      else
      {
        v21 = 400;
      }

      v43 = v21;
      _Block_object_dispose(&completion, 8);
      _Block_object_dispose(&v29, 8);
      v19 = 0;
      goto LABEL_52;
    }

LABEL_12:
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 0x40000000;
    v31 = ___mdns_doh_relay_handle_request_block_invoke_2;
    v32 = &unk_29EF07C78;
    v33 = &v39;
    v34 = &v35;
    nw_http_request_access_path();
    if ((v40[3] & 1) == 0)
    {
      v19 = 0;
      v20 = 404;
      goto LABEL_27;
    }

    v13 = v36[3];
    if (v13)
    {
      if (v5[10])
      {
        v14 = v5[10];
      }

      else
      {
        v14 = "";
      }

      v15 = CFURLCopyFileSystemPath(v13, kCFURLPOSIXPathStyle);
      if (!v15 || (v16 = v15, v17 = mdns_cfstring_to_utf8_cstring(v15), CFRelease(v16), !v17) || (v18 = strcmp(v17, v14), free(v17), v18))
      {
        v19 = 0;
LABEL_21:
        v20 = 400;
LABEL_27:
        v43 = v20;
        goto LABEL_28;
      }

      dns_message_from_request_uri = _mdns_extract_dns_message_from_request_uri(v36[3], &v43);
      v19 = dns_message_from_request_uri;
      if (dns_message_from_request_uri)
      {
        if (dispatch_data_get_size(dns_message_from_request_uri) <= 0xB)
        {
          goto LABEL_21;
        }

        _mdns_dns_relay_send_dns_message_to_server(v5, v19);
      }

LABEL_52:
      v20 = v43;
      if (v43 == 200)
      {
        v24 = 0;
        goto LABEL_33;
      }

LABEL_28:
      v44 = 0;
      v22 = _mdns_create_http_response_context(v20, 0, &v44);
      if (!v44)
      {
        v23 = v5[3];
        completion = MEMORY[0x29EDCA5F8];
        p_completion = 0x40000000;
        v47 = ___mdns_dns_relay_send_data_to_client_block_invoke;
        v48 = &__block_descriptor_tmp_22;
        v49 = v5;
        nw_connection_send(v23, 0, v22, 1, &completion);
      }

      if (v22)
      {
        nw_release(v22);
      }

      v24 = v44;
      if (!v11)
      {
LABEL_34:
        v25 = v36[3];
        if (v25)
        {
          CFRelease(v25);
          v36[3] = 0;
        }

        if (v19)
        {
          dispatch_release(v19);
        }

        _Block_object_dispose(&v35, 8);
        _Block_object_dispose(&v39, 8);
        if (!v24)
        {
          if (a3 && a4 && nw_content_context_get_is_final(a3))
          {
            _mdns_dns_relay_send_dns_message_to_server(v5, 0);
          }

          else
          {
            (*(v5[2] + 48))(v5, v5[3]);
          }

          goto LABEL_45;
        }

        goto LABEL_39;
      }

LABEL_33:
      nw_release(v11);
      goto LABEL_34;
    }

LABEL_23:
    v19 = 0;
    v20 = 500;
    goto LABEL_27;
  }

LABEL_39:
  _mdns_dns_relay_terminate(v5);
LABEL_45:
  if (v9)
  {
    nw_release(v9);
  }

  if (v10)
  {
    nw_release(v10);
  }

LABEL_49:
  v26 = *MEMORY[0x29EDCA608];
}

unint64_t ___mdns_doh_relay_handle_request_block_invoke(unint64_t result, char *__s)
{
  v14 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v3 = result;
    *(*(*(result + 32) + 8) + 24) = 1;
    v4 = strlen(__s);
    v5 = *(v3 + 48);
    v6 = *(v5 + 88);
    v7 = *(v5 + 96);
    result = strlen(v6);
    v8 = v4 - result;
    v11 = 0;
    if (v4 >= result)
    {
      v9 = result;
      result = strncasecmp(__s, v6, result);
      if (!result)
      {
        v10 = v7 == 443 && v4 == v9;
        if (v10 || (snprintf(__str, 0x20uLL, ":%u", v7), result = strlen(__str), v8 == result) && (result = strncasecmp(&__s[v9], __str, v8), !result))
        {
          v11 = 1;
        }
      }
    }

    *(*(*(v3 + 40) + 8) + 24) = v11;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

CFURLRef ___mdns_doh_relay_handle_request_block_invoke_2(CFURLRef result, char *__s)
{
  if (__s)
  {
    v3 = result;
    *(*(*(result + 4) + 8) + 24) = 1;
    v4 = strlen(__s);
    result = CFURLCreateWithBytes(*MEMORY[0x29EDB8ED8], __s, v4, 0x8000100u, 0);
    *(*(*(v3 + 5) + 8) + 24) = result;
  }

  return result;
}

char *_mdns_extract_dns_message_from_request_uri(const __CFURL *a1, int *a2)
{
  String = CFURLCopyQueryString(a1, &stru_2A1F31250);
  v4 = String;
  if (!String)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v5 = mdns_cfstring_to_utf8_cstring(String);
  CFRelease(v4);
  if (!v5)
  {
    v4 = 0;
LABEL_7:
    v8 = 0;
    v9 = 400;
    v7 = 1;
    goto LABEL_8;
  }

  if (strncmp(v5, "dns=", 4uLL) || (v6 = strlen(v5 + 4), (v6 & 3) == 1))
  {
LABEL_5:
    v7 = 0;
    v4 = 0;
    v8 = 0;
    v9 = 400;
    goto LABEL_8;
  }

  v11 = v6;
  if (v6)
  {
    v12 = 0;
    while (1)
    {
      v13 = v5[v12 + 4];
      if ((v13 - 48) >= 0xA && (v13 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        v15 = v5[v12 + 4];
        if (v15 != 95 && v15 != 45)
        {
          goto LABEL_5;
        }
      }

      if (v6 == ++v12)
      {
        v16 = (v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        if (v16 < v6)
        {
          goto LABEL_5;
        }

        result = malloc_type_calloc((v6 + 3) & 0xFFFFFFFFFFFFFFFCLL, 1uLL, 0x2160C0F5uLL);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        v18 = 0;
        do
        {
          v19 = v5[v18 + 4];
          if (v19 == 45)
          {
            v20 = 43;
          }

          else
          {
            v20 = v5[v18 + 4];
          }

          if (v19 == 95)
          {
            v21 = 47;
          }

          else
          {
            v21 = v20;
          }

          result[v18++] = v21;
        }

        while (v11 != v18);
        if (v16 > v11)
        {
          memset(&result[v11], 61, v16 - v11);
        }

        v4 = dispatch_data_create(v17, (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL, 0, *MEMORY[0x29EDCA558]);
        if (!v4)
        {
          v7 = 0;
          v8 = 0;
          v9 = 500;
          goto LABEL_8;
        }

        goto LABEL_40;
      }
    }
  }

  v4 = MEMORY[0x29EDCA560];
LABEL_40:
  v8 = dispatch_data_create_with_transform();
  v7 = 0;
  if (v8)
  {
    v9 = 200;
  }

  else
  {
    v9 = 500;
  }

LABEL_8:
  if (a2)
  {
    *a2 = v9;
  }

  if ((v7 & 1) == 0)
  {
    free(v5);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  return v8;
}

void ___mdns_dns_relay_send_data_to_client_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) && a2)
  {
    if (*(v2 + 32))
    {
      _mdns_dns_relay_terminate(v2);
    }
  }
}

void _mdns_doh_relay_finalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    free(v3);
    *(a1 + 80) = 0;
  }
}

uint64_t mdns_doh_relay_set_request_uri_path(uint64_t a1, char *a2)
{
  if (*(a1 + 72))
  {
    return 4294960577;
  }

  mdns_replace_string((a1 + 80), a2);
  return 0;
}

uint64_t mdns_doh_relay_set_host_and_port(uint64_t a1, char *a2, __int16 a3)
{
  v11[2] = *MEMORY[0x29EDCA608];
  if (*(a1 + 72))
  {
    result = 4294960577;
    goto LABEL_12;
  }

  v6 = inet_pton(30, a2, v11);
  if (v6 <= 1)
  {
    if (v6 == 1)
    {
      v11[0] = 0;
      asprintf(v11, "[%s]", a2);
      v7 = v11[0];
      if (!v11[0])
      {
        result = 4294960568;
        goto LABEL_12;
      }

      v8 = *(a1 + 88);
      if (v8)
      {
        free(v8);
        v7 = v11[0];
      }

      *(a1 + 88) = v7;
      goto LABEL_11;
    }

LABEL_10:
    mdns_replace_string((a1 + 88), a2);
LABEL_11:
    result = 0;
    *(a1 + 96) = a3;
    goto LABEL_12;
  }

  if (!*__error())
  {
    result = 4294960596;
    goto LABEL_12;
  }

  result = *__error();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_12:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void _mdns_dns_service_manager_finalize(void *a1)
{
  _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, &__block_literal_global_110);
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    dispatch_release(v3);
    a1[11] = 0;
  }

  v4 = a1[13];
  if (v4)
  {
    _Block_release(v4);
    a1[13] = 0;
  }
}

uint64_t _mdns_dns_service_manager_enumerate_all_service_array_pointers(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[0] = a1 + 32;
  v8[1] = a1 + 40;
  v8[2] = a1 + 48;
  v8[3] = a1 + 56;
  v8[4] = a1 + 64;
  v8[5] = a1 + 72;
  result = (*(a2 + 16))(a2);
  if (result)
  {
    v4 = v8;
    v5 = -1;
    while (v5 != 5)
    {
      v6 = *v4++;
      ++v5;
      if (((*(a2 + 16))(a2, v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v5 = 6;
LABEL_7:
    result = v5 > 5;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___mdns_dns_service_manager_finalize_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return 1;
}

void *_mdns_dns_service_manager_copy_description(void *a1, int a2, char a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1);
      *(v20 + 6) = appended;
      if (appended)
      {
        goto LABEL_7;
      }
    }

    v9 = mdns_string_builder_append_formatted(v7, "{");
    *(v20 + 6) = v9;
    if (v9)
    {
      goto LABEL_7;
    }

    v16[3] = "\n\t";
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = ___mdns_dns_service_manager_copy_description_block_invoke;
    v13[3] = &unk_29EF084F8;
    v13[4] = &v19;
    v13[5] = &v15;
    v13[6] = v7;
    v14 = a3;
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 0x40000000;
    v23[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v23[3] = &unk_29EF08B18;
    v23[4] = v13;
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 0x40000000;
    v24[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v24[3] = &unk_29EF08AF0;
    v24[4] = v23;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v24);
    if (*(v20 + 6) || (v10 = mdns_string_builder_append_formatted(v7, "\n}"), (*(v20 + 6) = v10) != 0))
    {
LABEL_7:
      v11 = 0;
    }

    else
    {
      v11 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v11;
}

BOOL ___mdns_dns_service_manager_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ",\n\t";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_service_manager_enumerate_all_services_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_enumerate_array_including_variants_and_discovered_alts_block_invoke;
  v4[3] = &unk_29EF08B40;
  v4[4] = v2;
  return mdns_cfarray_enumerate(a2, v4);
}

uint64_t ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return 1;
  }
}

uint64_t ___mdns_dns_service_enumerate_array_including_variants_and_discovered_alts_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v5 = *(a2 + 128);
    if (!v5 || (result = mdns_cfarray_enumerate(v5, *(a1 + 32)), result))
    {
      v6 = *(a2 + 144);
      if (v6)
      {
        v7 = *(a1 + 32);

        return mdns_cfarray_enumerate(v6, v7);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

void _mdns_dns_service_finalize(void *a1)
{
  if (a1[14])
  {
    v2 = a1[15];
    if (v2)
    {
      v2();
    }

    a1[14] = 0;
  }

  v3 = a1[10];
  if (v3)
  {
    CFRelease(v3);
    a1[10] = 0;
  }

  while (1)
  {
    v4 = a1[11];
    if (!v4)
    {
      break;
    }

    a1[11] = *v4;
    _domain_item_free(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    nw_release(v5);
    a1[6] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    nw_release(v6);
    a1[12] = 0;
  }

  v7 = a1[13];
  if (v7)
  {
    free(v7);
    a1[13] = 0;
  }

  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
    a1[16] = 0;
  }

  v9 = a1[17];
  if (v9)
  {
    os_release(v9);
    a1[17] = 0;
  }

  v10 = a1[18];
  if (v10)
  {
    CFRelease(v10);
    a1[18] = 0;
  }

  v11 = a1[19];
  if (v11)
  {
    CFRelease(v11);
    a1[19] = 0;
  }

  v12 = a1[20];
  if (v12)
  {
    xpc_release(v12);
    a1[20] = 0;
  }

  v13 = a1[21];
  if (v13)
  {
    free(v13);
    a1[21] = 0;
  }

  v14 = a1[22];
  if (v14)
  {
    free(v14);
    a1[22] = 0;
  }

  v15 = a1[24];
  if (v15)
  {
    CFRelease(v15);
    a1[24] = 0;
  }

  v16 = a1[26];
  if (v16)
  {
    nw_release(v16);
    a1[26] = 0;
  }

  v17 = a1[27];
  if (v17)
  {
    os_release(v17);
    a1[27] = 0;
  }

  v18 = a1[29];
  if (v18)
  {
    CFRelease(v18);
    a1[29] = 0;
  }
}

void _domain_item_free(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    os_release(v2);
  }

  free(a1);
}

uint64_t _mdns_dns_service_equal_ex(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = *(a1 + 280);
  if (v5 != *(a2 + 280) || *(a1 + 256) != *(a2 + 256) || v5 == 3 && *(a1 + 260) != *(a2 + 260))
  {
    return 0;
  }

  v7 = *(a1 + 80);
  v8 = *(a2 + 80);
  if (v7 == v8 || (result = 0, v7) && v8 && (result = CFEqual(*(a1 + 80), v8), result))
  {
    if (a3)
    {
      return 1;
    }

    v10 = a1 + 88;
    v11 = a2 + 88;
    while (1)
    {
      v11 = *v11;
      v10 = *v10;
      if (!v10 || v11 == 0)
      {
        break;
      }

      v13 = _domain_item_compare(v10, v11, 0);
      result = 0;
      if (v13)
      {
        return result;
      }
    }

    return !(v10 | v11);
  }

  return result;
}

uint64_t _domain_item_compare(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 48);
  v5 = *(a2 + 8);
  v6 = v4 - *(v5 + 48);
  if (v6)
  {
    if (v6 < 1)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (v3 != v5 && v4 >= 1)
    {
      v11 = *(v3 + 24);
      v12 = *(v5 + 24);
      v13 = v4 - 1;
      while (1)
      {
        v14 = v4;
        v15 = __OFSUB__(v4--, 1);
        if (v4 < 0 != v15)
        {
          return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
        }

        v16 = v11;
        v17 = v12;
        if (v4)
        {
          v18 = v13;
          v16 = v11;
          do
          {
            if (!*v16)
            {
              break;
            }

            v16 += *v16 + 1;
            --v18;
          }

          while (v18);
          v19 = v13;
          v17 = v12;
          do
          {
            if (!*v17)
            {
              break;
            }

            v17 += *v17 + 1;
            --v19;
          }

          while (v19);
        }

        v22 = *v16;
        v20 = v16 + 1;
        v21 = v22;
        v25 = *v17;
        v23 = v17 + 1;
        v24 = v25;
        if (v21 >= v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = v21;
        }

        v27 = mdns_memcmp_us_ascii_case_insensitive(v20, v23, v26);
        if (v27)
        {
          goto LABEL_26;
        }

        if (v21 < v24)
        {
          break;
        }

        --v13;
        if (v21 > v24)
        {
          LOBYTE(v27) = 1;
LABEL_26:
          if (v14 < 1)
          {
            return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
          }

          return v27;
        }
      }

      LOBYTE(v27) = -1;
      goto LABEL_26;
    }

    return (a3 & 1) == 0 && *(a1 + 16) < *(a2 + 16);
  }
}

void *_mdns_dns_service_copy_description(uint64_t a1, int a2, int a3)
{
  v87 = *MEMORY[0x29EDCA608];
  v80 = 0;
  v81 = &v80;
  v82 = 0x2000000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2000000000;
  v79 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v81 + 6) = appended;
      if (appended)
      {
        goto LABEL_36;
      }
    }

    v9 = mdns_string_builder_append_formatted(v7, "id: %llu", *(a1 + 24));
    *(v81 + 6) = v9;
    if (v9)
    {
      goto LABEL_36;
    }

    v10 = mdns_string_builder_append_formatted(v7, ", type: ");
    *(v81 + 6) = v10;
    if (v10)
    {
      goto LABEL_36;
    }

    v11 = *(a1 + 281);
    if (v11 > 5)
    {
      v68 = *(a1 + 281);
      v12 = mdns_string_builder_append_formatted(v7, "«INVALID %u»");
    }

    else
    {
      v67 = off_29EF08C18[v11];
      v12 = mdns_string_builder_append_formatted(v7, "%s");
    }

    *(v81 + 6) = v12;
    if (v12)
    {
      goto LABEL_36;
    }

    v14 = mdns_string_builder_append_formatted(v7, ", source: ");
    *(v81 + 6) = v14;
    if (v14)
    {
      goto LABEL_36;
    }

    if ((*(a1 + 282) - 1) > 4)
    {
      v71 = *(a1 + 282);
      v15 = mdns_string_builder_append_formatted(v7, "«INVALID %u»");
    }

    else
    {
      v69 = off_29EF08BA0[(*(a1 + 282) - 1)];
      v15 = mdns_string_builder_append_formatted(v7, "%s");
    }

    *(v81 + 6) = v15;
    if (v15)
    {
      goto LABEL_36;
    }

    v16 = mdns_string_builder_append_formatted(v7, ", scope: ");
    *(v81 + 6) = v16;
    if (v16)
    {
      goto LABEL_36;
    }

    v17 = *(a1 + 280);
    if (v17 <= 2)
    {
      if (v17 == 1)
      {
        v18 = mdns_string_builder_append_formatted(v7, "none");
        goto LABEL_31;
      }

      if (v17 == 2)
      {
        v18 = mdns_string_builder_append_formatted(v7, "interface", v70);
        goto LABEL_31;
      }
    }

    else
    {
      switch(v17)
      {
        case 3u:
          v19 = *(a1 + 260);
          v18 = mdns_string_builder_append_formatted(v7, "service (%u)");
          goto LABEL_31;
        case 4u:
          v20 = mdns_string_builder_append_formatted(v7, "uuid");
          *(v81 + 6) = v20;
          if (v20)
          {
            goto LABEL_36;
          }

          if (a3)
          {
LABEL_32:
            v22 = "";
            if (*(a1 + 104))
            {
              v22 = *(a1 + 104);
            }

            v23 = mdns_string_builder_append_formatted(v7, ", interface: %s/%u", v22, *(a1 + 256));
            *(v81 + 6) = v23;
            if (!v23)
            {
              v24 = mdns_string_builder_append_formatted(v7, ", servers: {");
              *(v81 + 6) = v24;
              if (!v24)
              {
                v77[3] = 0;
                v27 = *(a1 + 80);
                if (!v27)
                {
                  goto LABEL_109;
                }

                v74[0] = MEMORY[0x29EDCA5F8];
                v74[1] = 0x40000000;
                v74[2] = ___mdns_dns_service_copy_description_block_invoke;
                v74[3] = &unk_29EF087B0;
                v74[4] = &v80;
                v74[5] = &v76;
                v74[6] = v7;
                v75 = a3;
                mdns_cfarray_enumerate(v27, v74);
                if (!*(v81 + 6))
                {
LABEL_109:
                  v28 = mdns_string_builder_append_formatted(v7, "}");
                  *(v81 + 6) = v28;
                  if (!v28)
                  {
                    v29 = mdns_string_builder_append_formatted(v7, ", domains: {");
                    *(v81 + 6) = v29;
                    if (!v29)
                    {
                      v77[3] = 0;
                      v30 = *(a1 + 136);
                      if (!v30)
                      {
                        v30 = a1;
                      }

                      v31 = *(v30 + 88);
                      if (v31)
                      {
                        v32 = 0;
                        do
                        {
                          v33 = mdns_string_builder_append_description_with_prefix(v7, v32, v31[1], a3);
                          *(v81 + 6) = v33;
                          if (v33)
                          {
                            goto LABEL_36;
                          }

                          if (*(v31 + 4))
                          {
                            v34 = mdns_string_builder_append_formatted(v7, " (%u)", *(v31 + 4));
                            *(v81 + 6) = v34;
                            if (v34)
                            {
                              goto LABEL_36;
                            }
                          }

                          v77[3] = ", ";
                          v31 = *v31;
                          v32 = ", ";
                        }

                        while (v31);
                      }

                      v35 = mdns_string_builder_append_formatted(v7, "}");
                      *(v81 + 6) = v35;
                      if (!v35)
                      {
                        v36 = mdns_string_builder_append_formatted(v7, ", attributes: {");
                        *(v81 + 6) = v36;
                        if (!v36)
                        {
                          v37 = v77;
                          v38 = &word_29EF087D8;
                          v77[3] = "";
                          v39 = 7;
                          do
                          {
                            if ((*v38 & *(a1 + 276)) != 0)
                            {
                              v40 = mdns_string_builder_append_formatted(v7, "%s%s", v37[3], *(v38 - 1));
                              *(v81 + 6) = v40;
                              if (v40)
                              {
                                goto LABEL_36;
                              }

                              v37 = v77;
                              v77[3] = ", ";
                            }

                            v38 += 8;
                            --v39;
                          }

                          while (v39);
                          if (*(a1 + 96) && nw_resolver_config_get_allow_failover())
                          {
                            v41 = mdns_string_builder_append_formatted(v7, "%sallows-failover", v77[3]);
                            *(v81 + 6) = v41;
                            if (v41)
                            {
                              goto LABEL_36;
                            }

                            v77[3] = ", ";
                          }

                          if (!*(a1 + 240) || !*(a1 + 248) || (v42 = mdns_string_builder_append_formatted(v7, "%sreports-push-connection-error", v77[3]), (*(v81 + 6) = v42) == 0))
                          {
                            v43 = mdns_string_builder_append_formatted(v7, "}");
                            *(v81 + 6) = v43;
                            if (!v43)
                            {
                              v44 = mdns_string_builder_append_formatted(v7, ", interface properties: {");
                              *(v81 + 6) = v44;
                              if (!v44)
                              {
                                v45 = v77;
                                v77[3] = "";
                                v46 = &word_29EF08848;
                                v47 = 8;
                                do
                                {
                                  if ((*v46 & *(a1 + 276)) != 0)
                                  {
                                    v48 = mdns_string_builder_append_formatted(v7, "%s%s", v45[3], *(v46 - 1));
                                    *(v81 + 6) = v48;
                                    if (v48)
                                    {
                                      goto LABEL_36;
                                    }

                                    v45 = v77;
                                    v77[3] = ", ";
                                  }

                                  v46 += 8;
                                  --v47;
                                }

                                while (v47);
                                v49 = mdns_string_builder_append_formatted(v7, "}");
                                *(v81 + 6) = v49;
                                if (!v49)
                                {
                                  if (!*(a1 + 96))
                                  {
                                    goto LABEL_106;
                                  }

                                  v50 = mdns_string_builder_append_formatted(v7, ", resolver config: {");
                                  *(v81 + 6) = v50;
                                  if (!v50)
                                  {
                                    v51 = mdns_string_builder_append_formatted(v7, "provider name: ");
                                    *(v81 + 6) = v51;
                                    if (!v51)
                                    {
                                      provider_name_cstr = _mdns_dns_service_get_provider_name_cstr(a1);
                                      if (!provider_name_cstr)
                                      {
                                        goto LABEL_108;
                                      }

                                      v53 = provider_name_cstr;
                                      if (a3)
                                      {
                                        if (DNSMessagePrintObfuscatedString(out, 64, provider_name_cstr) < 0)
                                        {
                                          v53 = "«REDACTED»";
                                        }

                                        else
                                        {
                                          v53 = out;
                                        }
                                      }

                                      v54 = mdns_string_builder_append_formatted(v7, "%s", v53);
                                      *(v81 + 6) = v54;
                                      if (!v54)
                                      {
LABEL_108:
                                        v55 = mdns_string_builder_append_formatted(v7, ", provider path: ");
                                        *(v81 + 6) = v55;
                                        if (!v55)
                                        {
                                          v56 = *(a1 + 136);
                                          if (!v56 || !*(v56 + 96))
                                          {
                                            v56 = a1;
                                          }

                                          v57 = *(v56 + 168);
                                          if (!v57)
                                          {
                                            goto LABEL_107;
                                          }

                                          if (a3)
                                          {
                                            if (DNSMessagePrintObfuscatedString(out, 64, v57) < 0)
                                            {
                                              v57 = "«REDACTED»";
                                            }

                                            else
                                            {
                                              v57 = out;
                                            }
                                          }

                                          v58 = mdns_string_builder_append_formatted(v7, "%s", v57);
                                          *(v81 + 6) = v58;
                                          if (!v58)
                                          {
LABEL_107:
                                            v59 = mdns_string_builder_append_formatted(v7, "}");
                                            *(v81 + 6) = v59;
                                            if (!v59)
                                            {
LABEL_106:
                                              if (!*(a1 + 176) || (v60 = mdns_string_builder_append_formatted(v7, ", connection hostname: %s", *(a1 + 176)), (*(v81 + 6) = v60) == 0))
                                              {
                                                if (!*(a1 + 278) || (v61 = mdns_string_builder_append_formatted(v7, ", port: %d", *(a1 + 278)), (*(v81 + 6) = v61) == 0))
                                                {
                                                  v62 = *(a1 + 216);
                                                  if (!v62 || (v63 = mdns_string_builder_append_formatted(v7, ", SRV name: %s", *(v62 + 40)), (*(v81 + 6) = v63) == 0))
                                                  {
                                                    v64 = *(a1 + 136);
                                                    if (v64)
                                                    {
                                                      v73 = *(v64 + 24);
                                                      v65 = mdns_string_builder_append_formatted(v7, ", parent: %llu");
                                                    }

                                                    else
                                                    {
                                                      v66 = *(a1 + 264);
                                                      v65 = mdns_string_builder_append_formatted(v7, ", use count: %d");
                                                    }

                                                    *(v81 + 6) = v65;
                                                    if (!v65)
                                                    {
                                                      v13 = mdns_string_builder_copy_string(v7);
                                                      goto LABEL_37;
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_36:
            v13 = 0;
LABEL_37:
            os_release(v7);
            goto LABEL_38;
          }

          *uu = 0;
          v86 = 0;
          v21 = *(a1 + 96);
          nw_resolver_config_get_identifier();
          memset(out, 0, 37);
          uuid_unparse(uu, out);
          v18 = mdns_string_builder_append_formatted(v7, " (%s)");
LABEL_31:
          *(v81 + 6) = v18;
          if (v18)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        case 5u:
          v18 = mdns_string_builder_append_formatted(v7, "none+interface", v70);
          goto LABEL_31;
      }
    }

    v72 = *(a1 + 280);
    v18 = mdns_string_builder_append_formatted(v7, "«INVALID %d»");
    goto LABEL_31;
  }

  v13 = 0;
LABEL_38:
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
  v25 = *MEMORY[0x29EDCA608];
  return v13;
}

BOOL ___mdns_dns_service_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

char *_mdns_dns_service_get_provider_name_cstr(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (!v1 || !*(v1 + 96))
  {
    v1 = a1;
  }

  result = *(v1 + 160);
  if (result)
  {
    return xpc_string_get_string_ptr(result);
  }

  return result;
}

uint64_t mdns_dns_service_manager_create(NSObject *a1, int *a2)
{
  v4 = _os_object_alloc();
  v5 = v4;
  if (v4)
  {
    v6 = &_mdns_dns_service_manager_kind;
    v4[2] = &_mdns_dns_service_manager_kind;
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
    if (_mdns_dns_service_manager_enumerate_all_service_array_pointers(v5, &__block_literal_global_152) && (Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks), (*(v5 + 80) = Mutable) != 0))
    {
      *(v5 + 88) = a1;
      dispatch_retain(a1);
      v4 = 0;
      v9 = 0;
    }

    else
    {
      v9 = -6729;
      v4 = v5;
      v5 = 0;
    }
  }

  else
  {
    v9 = -6728;
  }

  if (a2)
  {
    *a2 = v9;
  }

  if (v4)
  {
    os_release(v4);
  }

  return v5;
}

BOOL __mdns_dns_service_manager_create_block_invoke(uint64_t a1, CFMutableArrayRef *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
  *a2 = Mutable;
  return Mutable != 0;
}

uint64_t mdns_dns_service_manager_set_report_symptoms(uint64_t result, char a2)
{
  if ((*(result + 132) & 1) == 0)
  {
    *(result + 128) = a2;
  }

  return result;
}

uint64_t ___mdns_os_variant_has_internal_diagnostics_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  _mdns_os_variant_has_internal_diagnostics_s_result = result;
  return result;
}

uint64_t mdns_dns_service_manager_enable_problematic_qtype_workaround(uint64_t result, int a2)
{
  if ((*(result + 132) & 1) == 0)
  {
    *(result + 120) = a2;
  }

  return result;
}

void mdns_dns_service_manager_set_event_handler(uint64_t a1, void *aBlock)
{
  if ((*(a1 + 132) & 1) == 0)
  {
    if (aBlock)
    {
      v3 = _Block_copy(aBlock);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 104);
    if (v4)
    {
      _Block_release(v4);
    }

    *(a1 + 104) = v3;
  }
}

void mdns_dns_service_manager_activate(uint64_t a1)
{
  if ((*(a1 + 132) & 1) == 0)
  {
    *(a1 + 132) = 1;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __mdns_dns_service_manager_activate_block_invoke;
    block[3] = &__block_descriptor_tmp_4_156;
    block[4] = a1;
    dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  }
}

void __mdns_dns_service_manager_activate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0 && !*(v1 + 96))
  {
    v2 = dispatch_source_create(MEMORY[0x29EDCA590], 0, 0, *(v1 + 88));
    *(v1 + 96) = v2;
    if (v2)
    {
      os_retain(v1);
      v3 = *(v1 + 96);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = ___mdns_dns_service_manager_activate_internal_block_invoke;
      handler[3] = &__block_descriptor_tmp_5_157;
      handler[4] = v1;
      dispatch_source_set_event_handler(v3, handler);
      v4 = *(v1 + 96);
      v5[0] = MEMORY[0x29EDCA5F8];
      v5[1] = 0x40000000;
      v5[2] = ___mdns_dns_service_manager_activate_internal_block_invoke_2;
      v5[3] = &__block_descriptor_tmp_6_158;
      v5[4] = v1;
      dispatch_source_set_cancel_handler(v4, v5);
      dispatch_activate(*(v1 + 96));
    }

    else
    {
      _mdns_dns_service_manager_terminate(v1, -6729);
    }
  }
}

uint64_t ___mdns_dns_service_manager_activate_internal_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  if (result)
  {
    return (*(result + 16))(result, 3, 0);
  }

  return result;
}

void _mdns_dns_service_manager_terminate(uint64_t a1, int a2)
{
  if ((*(a1 + 130) & 1) == 0)
  {
    *(a1 + 131) = 1;
    v4 = *(a1 + 96);
    if (v4)
    {
      dispatch_source_cancel(*(a1 + 96));
      dispatch_release(v4);
      *(a1 + 96) = 0;
    }

    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        mdns_interface_monitor_invalidate(ValueAtIndex);
      }
    }

    CFArrayRemoveAllValues(*(a1 + 80));
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 0x40000000;
    v13[2] = ___mdns_dns_service_manager_terminate_block_invoke;
    v13[3] = &__block_descriptor_tmp_117;
    v13[4] = a1;
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 0x40000000;
    v14[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v14[3] = &unk_29EF08AF0;
    v14[4] = v13;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v14);
    v9 = *(a1 + 112);
    if (v9)
    {
      mdns_system_remove_network_policy(v9);
      *(a1 + 112) = 0;
    }

    os_retain(a1);
    v10 = *(a1 + 88);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 0x40000000;
    v11[2] = ___mdns_dns_service_manager_terminate_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_118;
    v11[4] = a1;
    v12 = a2;
    dispatch_async(v10, v11);
  }
}

uint64_t ___mdns_dns_service_manager_terminate_block_invoke(uint64_t a1, const __CFArray *a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___mdns_dns_service_manager_terminate_services_block_invoke;
  v5[3] = &__block_descriptor_tmp_119;
  v5[4] = v3;
  mdns_cfarray_enumerate(a2, v5);
  CFArrayRemoveAllValues(a2);
  return 1;
}

void ___mdns_dns_service_manager_terminate_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[13];
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    (*(v3 + 16))(v2[13], v4);
    v2 = *(a1 + 32);
  }

  os_release(v2);
}

void _mdns_dns_service_manager_terminate_service(uint64_t a1, uint64_t a2)
{
  _mdns_dns_service_clear_use_count(a2);
  _mdns_dns_service_make_defunct(a2);
  if (*(a2 + 96) && *(a2 + 284) == 1)
  {
    *(a2 + 284) = 0;
    _mdns_dns_service_manager_cancel_resolver_config_updates();
  }

  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___mdns_dns_service_manager_terminate_service_block_invoke;
  v10[3] = &__block_descriptor_tmp_127;
  v10[4] = a1;
  v4 = *(a2 + 128);
  if (v4)
  {
    mdns_cfarray_enumerate(v4, v10);
    v5 = *(a2 + 128);
    if (v5)
    {
      CFRelease(v5);
      *(a2 + 128) = 0;
    }
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    mdns_cfarray_enumerate(v6, v10);
    v7 = *(a2 + 144);
    if (v7)
    {
      CFRelease(v7);
      *(a2 + 144) = 0;
    }
  }

  v8 = *(a2 + 152);
  if (v8)
  {
    mdns_cfarray_enumerate(v8, v10);
    v9 = *(a2 + 152);
    if (v9)
    {
      CFRelease(v9);
      *(a2 + 152) = 0;
    }
  }
}

void _mdns_dns_service_clear_use_count(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 224));
    dispatch_release(v2);
    *(a1 + 224) = 0;
  }

  *(a1 + 264) = 0;
}

void _mdns_dns_service_make_defunct(uint64_t a1)
{
  *(a1 + 276) |= 1u;
  v2 = *(a1 + 200);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 200));
    dispatch_release(v2);
    *(a1 + 200) = 0;
  }

  _mdns_dns_service_forget_all_ddr_queriers(a1);
  if (*(a1 + 208))
  {
    nw_array_apply();
    v3 = *(a1 + 208);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 208) = 0;
    }
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    mdns_resolver_invalidate(v4);
    os_release(*(a1 + 64));
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    v5[103] = 1;
    os_retain(v5);
    if (_mdns_push_notifications_queue_s_once != -1)
    {
      dispatch_once(&_mdns_push_notifications_queue_s_once, &__block_literal_global_37);
    }

    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = __mdns_push_server_invalidate_block_invoke;
    block[3] = &__block_descriptor_tmp_2_81;
    block[4] = v5;
    dispatch_async(_mdns_push_notifications_queue_s_queue, block);
    os_release(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    v7 = *(a1 + 248);
    if (!v7 || (v9[0] = MEMORY[0x29EDCA5F8], v9[1] = 0x40000000, v9[2] = ___mdns_dns_service_make_defunct_block_invoke, v9[3] = &unk_29EF086A8, v9[4] = v7, dispatch_async(v6, v9), (v6 = *(a1 + 240)) != 0))
    {
      dispatch_release(v6);
      *(a1 + 240) = 0;
    }
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    _Block_release(v8);
    *(a1 + 248) = 0;
  }
}

uint64_t _mdns_dns_service_manager_cancel_resolver_config_updates()
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  return nw_resolver_config_cancel_updates();
}

void ___mdns_dns_service_manager_cancel_resolver_config_updates_block_invoke(uint64_t a1)
{
  os_release(*(a1 + 32));
  v2 = *(a1 + 40);

  nw_release(v2);
}

void _mdns_dns_service_forget_all_ddr_queriers(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    mdns_client_invalidate(v2);
    os_release(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    mdns_cfarray_enumerate(v3, &__block_literal_global_132);
    v4 = *(a1 + 192);

    CFArrayRemoveAllValues(v4);
  }
}

dispatch_queue_t ___mdns_dns_service_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.mdns.dns-service-queue", 0);
  _mdns_dns_service_queue_s_queue = result;
  return result;
}

uint64_t mdns_dns_service_manager_register_native_service(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_register_native_service_block_invoke;
  v8[3] = &unk_29EF07DE0;
  v8[4] = &v9;
  v8[5] = &v13;
  v8[6] = a1;
  v8[7] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  if (a3)
  {
    *a3 = *(v14 + 6);
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void __mdns_dns_service_manager_register_native_service_block_invoke(void *a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (*(v2 + 131) == 1)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *(*(a1[5] + 8) + 24) = -6752;
    goto LABEL_33;
  }

  v3 = *(v2 + 24);
  v4 = a1[7];
  v5 = *(a1[5] + 8);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v6 = *(v4 + 48);
  v7 = *(v4 + 52);
  if (*(v4 + 52))
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8 || v7 > 2)
  {
    v10 = 0;
    v11 = -6705;
  }

  else
  {
    v12 = _mdns_dns_service_create(1, 1, (0x50201u >> (8 * (v7 & 0x1F))) & 7, &v24);
    v10 = v12;
    if (!v12)
    {
      v11 = *(v22 + 6);
      goto LABEL_21;
    }

    *&buf = MEMORY[0x29EDCA5F8];
    *(&buf + 1) = 0x40000000;
    v26 = ___mdns_dns_service_create_native_source_service_from_definition_block_invoke;
    v27 = &unk_29EF08130;
    v28 = &v21;
    v29 = v12;
    mdns_cfarray_enumerate(*(v4 + 24), &buf);
    v13 = *(v22 + 6);
    if (v13)
    {
      goto LABEL_35;
    }

    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 0x40000000;
    v20[2] = ___mdns_dns_service_create_native_source_service_from_definition_block_invoke_2;
    v20[3] = &unk_29EF08158;
    v20[4] = &v21;
    v20[5] = v10;
    mdns_cfset_enumerate(*(v4 + 32), v20);
    v13 = *(v22 + 6);
    if (v13)
    {
LABEL_35:
      os_release(v10);
      _Block_object_dispose(&v21, 8);
      v16 = 0;
      *(v5 + 24) = v13;
      goto LABEL_30;
    }

    *(v10 + 256) = v6;
    if (v6)
    {
      *(v10 + 104) = mdns_system_interface_index_to_name(v6);
    }

    v11 = 0;
    *(v10 + 276) = 6;
    if (*(v4 + 53))
    {
      v14 = 8198;
    }

    else
    {
      v14 = 6;
    }

    *(v10 + 276) = v14;
  }

  *(v22 + 6) = v11;
LABEL_21:
  _Block_object_dispose(&v21, 8);
  if (v11)
  {
    v15 = 0;
    v16 = 0;
    *(v5 + 24) = v11;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    _mdns_dns_service_increment_use_count(v10);
    CFArrayAppendValue(v3, v10);
    _mdns_dns_service_manager_update_interface_properties_for_service(v2, v10);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v17 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_2990ED000, v17, OS_LOG_TYPE_DEFAULT, "Registered native service -- %@", &buf, 0xCu);
    }

    v15 = *(v10 + 24);
    *(v5 + 24) = 0;
  }

  os_release(v10);
  v16 = v15;
LABEL_30:
  *(*(a1[4] + 8) + 24) = v16;
  if (*(*(a1[4] + 8) + 24))
  {
    v18 = *(a1[6] + 96);
    if (v18)
    {
      dispatch_source_merge_data(v18, 1uLL);
    }
  }

LABEL_33:
  v19 = *MEMORY[0x29EDCA608];
}

uint64_t _mdns_dns_service_create(char a1, char a2, char a3, int *a4)
{
  v8 = _os_object_alloc();
  v9 = v8;
  if (!v8)
  {
    v12 = -6728;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_7;
  }

  v10 = &_mdns_dns_service_kind;
  *(v8 + 16) = &_mdns_dns_service_kind;
  do
  {
    v11 = v10[2];
    if (v11)
    {
      v11(v9);
    }

    v10 = *v10;
  }

  while (v10);
  v12 = 0;
  *(v9 + 24) = atomic_fetch_add_explicit(&_mdns_get_next_dns_service_id_s_next_id, 1uLL, memory_order_relaxed);
  *(v9 + 281) = a1;
  *(v9 + 282) = a2;
  *(v9 + 280) = a3;
  if (a4)
  {
LABEL_7:
    *a4 = v12;
  }

  return v9;
}

BOOL ___mdns_dns_service_create_native_source_service_from_definition_block_invoke_2(uint64_t a1, void *a2)
{
  _mdns_dns_service_add_domain(*(a1 + 40), a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _mdns_dns_service_increment_use_count(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 224);
  if (v2 == 1)
  {
    if (!v3)
    {
      v2 = 1;
      goto LABEL_7;
    }

    *(a1 + 264) = 0;
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    dispatch_source_cancel(v3);
    dispatch_release(v3);
    *(a1 + 224) = 0;
    v2 = *(a1 + 264);
  }

LABEL_7:
  result = (v2 + 1);
  *(a1 + 264) = result;
  return result;
}

void _mdns_dns_service_manager_update_interface_properties_for_service(CFArrayRef *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 256);
  Count = CFArrayGetCount(a1[10]);
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[10], v7);
      if (ValueAtIndex[34] == v4)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v10 = ValueAtIndex;
    goto LABEL_14;
  }

LABEL_5:
  v9 = mdns_interface_monitor_create(v4);
  if (v9)
  {
    v10 = v9;
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    mdns_interface_monitor_set_queue(v10, _mdns_dns_service_queue_s_queue);
    os_retain(a1);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___mdns_dns_service_manager_get_interface_monitor_block_invoke;
    v20 = &__block_descriptor_tmp_58;
    v21 = a1;
    v22 = v10;
    mdns_interface_monitor_set_update_handler(v10, buf);
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 0x40000000;
    v18[2] = ___mdns_dns_service_manager_get_interface_monitor_block_invoke_2;
    v18[3] = &__block_descriptor_tmp_60;
    v18[4] = v10;
    v18[5] = a1;
    mdns_interface_monitor_set_event_handler(v10, v18);
    if ((*(v10 + 154) & 1) == 0)
    {
      if (*(v10 + 32))
      {
        _mdns_interface_monitor_activate_async(v10);
      }

      *(v10 + 154) = 1;
    }

    CFArrayAppendValue(a1[10], v10);
LABEL_14:
    v11 = *(a2 + 276) & 0xF80F;
    *(a2 + 276) = v11;
    v12 = *(v10 + 144);
    v13 = v11 & 0xFF0F | (16 * (v12 & 0xF));
    if ((v12 & 0xF) != 0)
    {
      *(a2 + 276) = v13;
    }

    if (*(a2 + 282) == 2 && *(a2 + 256) && (v12 & 0x10) != 0)
    {
      v13 |= 0x100u;
      *(a2 + 276) = v13;
    }

    if ((v12 & 0x60) != 0)
    {
      *(a2 + 276) = v13 | (16 * v12) & 0x600;
    }

    goto LABEL_22;
  }

  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v15 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a2 + 104);
    if (!v16)
    {
      v16 = "";
    }

    v17 = *(a2 + 256);
    *buf = 136446466;
    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = v17;
    _os_log_error_impl(&dword_2990ED000, v15, OS_LOG_TYPE_ERROR, "Failed to get interface monitor for interface %{public}s/%u", buf, 0x12u);
  }

LABEL_22:
  v14 = *MEMORY[0x29EDCA608];
}

os_log_t ___mdns_dns_service_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "dns_service");
  _mdns_dns_service_log_s_log = result;
  return result;
}

void ___mdns_dns_service_manager_get_interface_monitor_block_invoke(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v20.length = CFArrayGetCount(*(v4 + 80));
    v20.location = 0;
    if (CFArrayContainsValue(*(v4 + 80), v20, v3))
    {
      if (a2 < 0)
      {
        v5 = v3[34];
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v6 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_INFO, "Network change event for interface index %u", buf, 8u);
        }

        v12[0] = MEMORY[0x29EDCA5F8];
        v12[1] = 0x40000000;
        v12[2] = ___mdns_dns_service_manager_handle_network_change_event_block_invoke;
        v12[3] = &__block_descriptor_tmp_61;
        v13 = v5;
        v7 = *(v4 + 40);
        *buf = MEMORY[0x29EDCA5F8];
        v15 = 0x40000000;
        v16 = ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke;
        v17 = &unk_29EF08200;
        v18 = v12;
        mdns_cfarray_enumerate(v7, buf);
        v8 = *(v4 + 56);
        *buf = MEMORY[0x29EDCA5F8];
        v15 = 0x40000000;
        v16 = ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke;
        v17 = &unk_29EF08200;
        v18 = v12;
        mdns_cfarray_enumerate(v8, buf);
        v9 = *(v4 + 48);
        *buf = MEMORY[0x29EDCA5F8];
        v15 = 0x40000000;
        v16 = ___mdns_dns_service_manager_handle_network_change_event_block_invoke_2;
        v17 = &__block_descriptor_tmp_62;
        LODWORD(v18) = v5;
        mdns_cfarray_enumerate(v9, buf);
      }

      v10 = *(v4 + 96);
      if (v10)
      {
        dispatch_source_merge_data(v10, 1uLL);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void ___mdns_dns_service_manager_get_interface_monitor_block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v7.length = CFArrayGetCount(*(*(a1 + 40) + 80));
    v7.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(*(a1 + 40) + 80), v7, *(a1 + 32));
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(*(a1 + 40) + 80), FirstIndexOfValue);
    }

    v5 = *(a1 + 32);

    mdns_interface_monitor_invalidate(v5);
  }

  else if (a2 == 2)
  {
    os_release(*(a1 + 32));
    v3 = *(a1 + 40);

    os_release(v3);
  }
}

uint64_t ___mdns_dns_service_manager_handle_network_change_event_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 32))
  {
    *(a2 + 286) = 1;
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_enumerate_service_array_including_variants_block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v5 = *(a2 + 128);
    if (v5)
    {
      v6 = *(a1 + 32);

      return mdns_cfarray_enumerate(v5, v6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ___mdns_dns_service_manager_handle_network_change_event_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 32))
  {
    *(a2 + 264) = 0;
  }

  return 1;
}

void _mdns_dns_service_add_domain(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1E572DDFuLL);
  if (v6)
  {
    v7 = v6;
    v6[1] = a2;
    os_retain(a2);
    *(v7 + 16) = a3;
    v8 = a1 + 88;
    do
    {
      v9 = v8;
      v8 = *v8;
      if (!v8)
      {
        goto LABEL_6;
      }

      v10 = _domain_item_compare(v7, v8, 1);
    }

    while (v10 > 0);
    if (v10)
    {
LABEL_6:
      *v7 = v8;
      *v9 = v7;
      return;
    }

    if (*(v8 + 16) > a3)
    {
      *(v8 + 16) = a3;
    }

    _domain_item_free(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _mdns_dns_service_append_address(uint64_t a1, void *value)
{
  Mutable = *(a1 + 80);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
    *(a1 + 80) = Mutable;
    if (!Mutable)
    {
      return 4294960567;
    }
  }

  CFArrayAppendValue(Mutable, value);
  return 0;
}

void mdns_dns_service_manager_deregister_native_service(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_deregister_native_service_block_invoke;
    v4[3] = &__block_descriptor_tmp_8_164;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

void __mdns_dns_service_manager_deregister_native_service_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v1 + 24), *(a1 + 40));
    if (service_by_id)
    {

      _mdns_dns_service_manager_deregister_service(v1, service_by_id);
    }
  }
}

uint64_t _mdns_dns_service_manager_get_service_by_id(const __CFArray *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_manager_get_service_by_id_block_invoke;
  v4[3] = &unk_29EF085D0;
  v4[4] = &v5;
  v4[5] = a2;
  mdns_cfarray_enumerate(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _mdns_dns_service_manager_deregister_service(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 264) - 1;
  *(a2 + 264) = v2;
  if (!v2)
  {
    v6 = *(a2 + 272);
    if (!v6)
    {
      goto LABEL_13;
    }

    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    oneshot_monotonic_timer = mdns_dispatch_create_oneshot_monotonic_timer(v6, 5u, _mdns_dns_service_queue_s_queue);
    *(a2 + 224) = oneshot_monotonic_timer;
    v8 = *(a2 + 264);
    if (oneshot_monotonic_timer)
    {
      *(a2 + 264) = v8 + 1;
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 0x40000000;
      v15[2] = ___mdns_dns_service_decrement_use_count_block_invoke;
      v15[3] = &__block_descriptor_tmp_76;
      v15[4] = a2;
      v15[5] = a1;
      dispatch_source_set_event_handler(oneshot_monotonic_timer, v15);
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v9 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v10 = *(a2 + 24);
        v11 = *(a2 + 272);
        *buf = 134218240;
        v17 = v10;
        v18 = 1024;
        v19 = v11;
        _os_log_impl(&dword_2990ED000, v9, OS_LOG_TYPE_INFO, "Keeping orphaned DNS service %llu for up to %u milliseconds", buf, 0x12u);
      }

      dispatch_activate(*(a2 + 224));
      v8 = *(a2 + 264);
    }

    if (!v8)
    {
LABEL_13:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v12 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v13 = *(a2 + 24);
        *buf = 134217984;
        v17 = v13;
        _os_log_impl(&dword_2990ED000, v12, OS_LOG_TYPE_INFO, "Deregistered DNS service -- service id: %llu", buf, 0xCu);
      }

      v14 = *(a1 + 96);
      if (v14)
      {
        dispatch_source_merge_data(v14, 1uLL);
      }
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

void ___mdns_dns_service_decrement_use_count_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(v2 + 224))
  {
    _mdns_dns_service_clear_use_count(v2);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v3 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 24);
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_2990ED000, v3, OS_LOG_TYPE_INFO, "Deregistered orphaned DNS service due to timeout -- service id: %llu", &v7, 0xCu);
    }

    v5 = *(*(a1 + 40) + 96);
    if (v5)
    {
      dispatch_source_merge_data(v5, 1uLL);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

BOOL ___mdns_dns_service_manager_get_service_by_id_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void mdns_dns_service_manager_apply_dns_config(uint64_t a1, uint64_t a2)
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __mdns_dns_service_manager_apply_dns_config_block_invoke;
  v4[3] = &__block_descriptor_tmp_12_167;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
}

void __mdns_dns_service_manager_apply_dns_config_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if (*(v1 + 131))
  {
    goto LABEL_33;
  }

  v2 = *(a1 + 40);
  Count = CFArrayGetCount(*(v1 + 48));
  if (Count > 3)
  {
    v5 = Count;
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v6 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEFAULT, "Purging %u discovered services down to 4", buf, 8u);
    }

    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
    MutableCopy = CFArrayCreateMutableCopy(v4, 0, *(v1 + 48));
    v34.location = 0;
    v34.length = v5;
    CFArraySortValues(MutableCopy, v34, _mdns_dns_service_compare_time, 0);
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, i);
      if (i < 4)
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      else
      {
        _mdns_dns_service_manager_terminate_service(v1, ValueAtIndex);
      }
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    v11 = *(v1 + 48);
    if (v11)
    {
      CFRelease(v11);
    }

    *(v1 + 48) = Mutable;
  }

  else
  {
    v4 = *MEMORY[0x29EDB8ED8];
  }

  v12 = CFArrayCreateMutable(v4, 0, &mdns_cfarray_callbacks);
  if (!v12)
  {
    v25 = -6729;
    goto LABEL_36;
  }

  v13 = v12;
  appended = _mdns_append_dns_service_from_config_by_scope(v12, v2, 1);
  if (appended || (appended = _mdns_append_dns_service_from_config_by_scope(v13, v2, 2)) != 0 || (appended = _mdns_append_dns_service_from_config_by_scope(v13, v2, 3)) != 0)
  {
    v25 = appended;
    CFRelease(v13);
LABEL_36:
    _mdns_dns_service_manager_terminate(v1, v25);
    goto LABEL_33;
  }

  v15 = CFArrayGetCount(v13);
  v16 = CFArrayGetCount(*(v1 + 32));
  if (v16 - 1 >= 0)
  {
    v17 = v16;
    do
    {
      v18 = CFArrayGetValueAtIndex(*(v1 + 32), --v17);
      v35.location = 0;
      v35.length = v15;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13, v35, v18);
      if (FirstIndexOfValue < 0)
      {
        _mdns_dns_service_manager_terminate_service(v1, v18);
      }

      else
      {
        v20 = FirstIndexOfValue;
        v21 = *(CFArrayGetValueAtIndex(v13, FirstIndexOfValue) + 138) & 0xE;
        *(v18 + 138) = *(v18 + 138) & 0xFFF1 | v21;
        v26[0] = MEMORY[0x29EDCA5F8];
        v26[1] = 0x40000000;
        v26[2] = ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke;
        v26[3] = &__block_descriptor_tmp_69;
        v27 = v21;
        v22 = v18[18];
        if (v22)
        {
          mdns_cfarray_enumerate(v22, v26);
        }

        CFArraySetValueAtIndex(v13, v20, v18);
      }
    }

    while (v17 > 0);
  }

  v23 = *(v1 + 32);
  if (v23)
  {
    CFRelease(v23);
  }

  *(v1 + 32) = v13;
  *buf = MEMORY[0x29EDCA5F8];
  v29 = 0x40000000;
  v30 = ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke_2;
  v31 = &__block_descriptor_tmp_70;
  v32 = v1;
  mdns_cfarray_enumerate(v13, buf);
  _mdns_dns_service_manager_remove_unneeded_interface_monitors(v1);
LABEL_33:
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t _mdns_append_dns_service_from_config_by_scope(const __CFArray *a1, unsigned int *a2, int a3)
{
  v3 = a3;
  v52 = *MEMORY[0x29EDCA608];
  if (a3 == 3)
  {
    v5 = (a2 + 9);
    a2 += 8;
  }

  else if (a3 == 2)
  {
    v5 = (a2 + 4);
    a2 += 3;
  }

  else
  {
    v5 = (a2 + 1);
  }

  v6 = *a2;
  if (v6 < 1)
  {
LABEL_65:
    result = 0;
    goto LABEL_66;
  }

  v7 = 0;
  v8 = *v5;
  appended = 0;
  v39 = v8;
  while (1)
  {
    v9 = *(v8 + 8 * v7);
    if (*(v9 + 20) == 5353 || !*(v9 + 8))
    {
      goto LABEL_64;
    }

    v10 = *v9;
    if (*v9)
    {
      buf[0] = 0;
      if (DomainNameAppendString(buf, v10, 0))
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v11 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v36 = *v9;
          *v41 = 136315138;
          *&v41[4] = v36;
          _os_log_error_impl(&dword_2990ED000, v11, OS_LOG_TYPE_ERROR, "Encountered invalid dns_config_t resolver domain name: %s", v41, 0xCu);
        }

        v8 = v39;
        goto LABEL_64;
      }
    }

    v12 = _mdns_dns_service_create(1, 2, v3, &appended);
    result = appended;
    if (appended)
    {
      goto LABEL_68;
    }

    v14 = *(v9 + 8);
    if (v14 >= 1)
    {
      break;
    }

LABEL_40:
    *(v12 + 256) = *(v9 + 64);
    v3 = a3;
    if (a3 == 3)
    {
      v28 = *(v9 + 76);
    }

    else
    {
      v28 = 0;
    }

    v8 = v39;
    *(v12 + 260) = v28;
    *(v12 + 276) = 0;
    if (*v9)
    {
      v29 = *v9;
    }

    else
    {
      v29 = ".";
    }

    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
LABEL_51:
      v34 = *(v9 + 68);
      if ((v34 & 2) != 0)
      {
        *(v12 + 276) |= 2u;
      }

      if ((v34 & 4) != 0)
      {
        *(v12 + 276) |= 4u;
      }

      if ((*(v9 + 74) & 4) != 0)
      {
        *(v12 + 276) |= 8u;
      }

      v35 = *(v12 + 256);
      if (v35)
      {
        *(v12 + 104) = mdns_system_interface_index_to_name(v35);
      }

      appended = _mdns_dns_service_add_domain_by_string(v12, v29, *(v9 + 60));
      if (appended)
      {
        goto LABEL_69;
      }

      CFArrayAppendValue(a1, v12);
    }

    else
    {
      v31 = Count;
      v32 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v32);
        if (_mdns_dns_service_equal_ex(ValueAtIndex, v12, 1))
        {
          break;
        }

        if (v31 == ++v32)
        {
          v3 = a3;
          v8 = v39;
          if (!v12)
          {
            goto LABEL_64;
          }

          goto LABEL_51;
        }
      }

      result = _mdns_dns_service_add_domain_by_string(ValueAtIndex, v29, *(v9 + 60));
      appended = result;
      if (result)
      {
        goto LABEL_68;
      }

      v3 = a3;
      v8 = v39;
      if (!v12)
      {
        goto LABEL_64;
      }
    }

    os_release(v12);
LABEL_64:
    if (++v7 == v6)
    {
      goto LABEL_65;
    }
  }

  v15 = 0;
  v16 = *(v9 + 20);
  if (!*(v9 + 20))
  {
    v16 = 53;
  }

  v17 = __rev16(v16);
  while (1)
  {
    v18 = *(*(v9 + 12) + 8 * v15);
    v19 = v18[1];
    if (v19 == 30)
    {
      break;
    }

    if (v19 == 2)
    {
      v20 = *(v18 + 1);
      v21 = _mdns_address_new();
      if (!v21)
      {
        goto LABEL_67;
      }

      v22 = v21;
      *(v21 + 24) = 528;
      *(v21 + 26) = v17;
      *(v21 + 28) = v20;
      goto LABEL_37;
    }

LABEL_39:
    if (++v15 >= v14)
    {
      goto LABEL_40;
    }
  }

  memset(v41, 0, sizeof(v41));
  v43 = 0;
  v42 = 0;
  if (v18[8] == 254 && (v18[9] & 0xC0) == 0x80)
  {
    v23 = *(v9 + 64);
    if (v23)
    {
      if (*(v18 + 6) != v23)
      {
        *v41 = *v18;
        v42 = *(v18 + 2);
        v43 = v23;
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v24 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(v18 + 6);
          *buf = 68158466;
          v45 = 28;
          v46 = 2096;
          v47 = v18;
          v48 = 1024;
          v49 = v25;
          v50 = 1024;
          v51 = v23;
          _os_log_impl(&dword_2990ED000, v24, OS_LOG_TYPE_DEFAULT, "Corrected scope ID of link-local server address %{network:sockaddr}.*P from %u to %u", buf, 0x1Eu);
        }

        v18 = v41;
      }
    }
  }

  v26 = *(v18 + 6);
  v27 = _mdns_address_new();
  if (v27)
  {
    v22 = v27;
    *(v27 + 24) = 7708;
    *(v27 + 26) = v17;
    *(v27 + 32) = *(v18 + 8);
    *(v27 + 48) = v26;
LABEL_37:
    appended = _mdns_dns_service_append_address(v12, v22);
    os_release(v22);
    result = appended;
    if (appended)
    {
      goto LABEL_68;
    }

    v14 = *(v9 + 8);
    goto LABEL_39;
  }

LABEL_67:
  result = 4294960568;
  appended = -6728;
LABEL_68:
  if (v12)
  {
LABEL_69:
    os_release(v12);
    result = appended;
  }

LABEL_66:
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 276) & 0xFFF1;
  *(a2 + 276) = v2;
  *(a2 + 276) = *(a1 + 32) | v2;
  return 1;
}

uint64_t ___mdns_dns_service_manager_apply_dns_config_internal_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 264))
  {
    _mdns_dns_service_increment_use_count(a2);
    _mdns_dns_service_manager_update_interface_properties_for_service(*(a1 + 32), a2);
  }

  return 1;
}

void _mdns_dns_service_manager_remove_unneeded_interface_monitors(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 80));
  if (Count - 1 >= 0)
  {
    v3 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), --v3);
      v5 = ValueAtIndex[34];
      v6[0] = MEMORY[0x29EDCA5F8];
      v6[1] = 0x40000000;
      v6[2] = ___mdns_dns_service_manager_uses_interface_block_invoke;
      v6[3] = &__block_descriptor_tmp_125;
      v7 = v5;
      v8[0] = MEMORY[0x29EDCA5F8];
      v8[1] = 0x40000000;
      v8[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
      v8[3] = &unk_29EF08B18;
      v8[4] = v6;
      v9[0] = MEMORY[0x29EDCA5F8];
      v9[1] = 0x40000000;
      v9[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
      v9[3] = &unk_29EF08AF0;
      v9[4] = v8;
      if (_mdns_dns_service_manager_enumerate_all_service_array_pointers(a1, v9))
      {
        mdns_interface_monitor_invalidate(ValueAtIndex);
        CFArrayRemoveValueAtIndex(*(a1 + 80), v3);
      }
    }

    while (v3 > 0);
  }
}

uint64_t _mdns_dns_service_add_domain_by_string(uint64_t a1, char *a2, unsigned int a3)
{
  v8 = 0;
  v5 = mdns_domain_name_create(a2, a2, &v8);
  if (v5)
  {
    v6 = v5;
    _mdns_dns_service_add_domain(a1, v5, a3);
    v8 = 0;
    os_release(v6);
  }

  return v8;
}

uint64_t _mdns_dns_service_compare_time(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v2 > v3;
  v5 = v2 < v3;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void mdns_dns_service_manager_register_path_resolver(uint64_t a1, uint64_t a2)
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __mdns_dns_service_manager_register_path_resolver_block_invoke;
  v4[3] = &__block_descriptor_tmp_13;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
}

void __mdns_dns_service_manager_register_path_resolver_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    v2 = *(a1 + 40);
    service_by_uuid = _mdns_dns_service_manager_get_service_by_uuid(*(v1 + 40), v2);
    if (service_by_uuid)
    {
      v11 = service_by_uuid;
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v12 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(v11 + 24);
        *v21 = 134218498;
        *&v21[4] = v13;
        *&v21[12] = 1040;
        *&v21[14] = 16;
        *&v21[18] = 2096;
        *&v21[20] = v2;
        _os_log_debug_impl(&dword_2990ED000, v12, OS_LOG_TYPE_DEBUG, "Already registered service -- service id: %llu, uuid: %{uuid_t}.16P", v21, 0x1Cu);
      }
    }

    else
    {
      v4 = nw_resolver_config_create();
      nw_resolver_config_set_identifier();
      os_retain(v1);
      nw_retain(v4);
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      *v21 = MEMORY[0x29EDCA5F8];
      *&v21[8] = 0x40000000;
      *&v21[16] = ___mdns_dns_service_manager_register_path_resolver_internal_block_invoke;
      *&v21[24] = &__block_descriptor_tmp_73;
      v22 = v1;
      v23 = v4;
      nw_resolver_config_watch_updates();
      v14 = 0;
      v5 = _mdns_dns_service_create_from_resolver_config(v4, 3, 4, &v14);
      if (v5)
      {
        v6 = v5;
        *(v5 + 284) = 1;
        v7 = *(v1 + 40);
        _mdns_dns_service_increment_use_count(v5);
        CFArrayAppendValue(v7, v6);
        _mdns_dns_service_manager_update_interface_properties_for_service(v1, v6);
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v8 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v16 = v6;
          _os_log_impl(&dword_2990ED000, v8, OS_LOG_TYPE_DEFAULT, "Registered service -- %@", buf, 0xCu);
        }

        os_release(v6);
      }

      else
      {
        _mdns_dns_service_manager_cancel_resolver_config_updates();
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v9 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158466;
          *v16 = 16;
          *&v16[4] = 2096;
          *&v16[6] = v2;
          v17 = 2112;
          v18 = v4;
          v19 = 2048;
          v20 = v14;
          _os_log_error_impl(&dword_2990ED000, v9, OS_LOG_TYPE_ERROR, "Failed to register service -- uuid: %{uuid_t}.16P, config: %@, error: %{mdns:err}ld", buf, 0x26u);
        }
      }

      nw_release(v4);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t _mdns_dns_service_manager_get_service_by_uuid(const __CFArray *a1, const unsigned __int8 *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v14 = 3;
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, a2);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___mdns_dns_service_manager_get_service_by_uuid_block_invoke;
  v10[3] = &unk_29EF082A8;
  v11 = *dst;
  v12 = v14;
  v10[4] = &v6;
  mdns_cfarray_enumerate(a1, v10);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

void ___mdns_dns_service_manager_register_path_resolver_internal_block_invoke(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!a2)
  {
    if (v3)
    {
      v5 = *(a1 + 40);
      if (nw_resolver_config_get_protocol() == 3)
      {
        path_service_by_config = _mdns_dns_service_manager_get_path_service_by_config(*(v2 + 40), v3);
        if (path_service_by_config)
        {
          v7 = path_service_by_config;
          v8 = *(path_service_by_config + 160);
          if (v8)
          {
            string_ptr = xpc_string_get_string_ptr(v8);
          }

          else
          {
            string_ptr = 0;
          }

          v10 = v7[12];
          provider_name = nw_resolver_config_get_provider_name();
          if (string_ptr)
          {
            if (!provider_name || strcmp(string_ptr, provider_name))
            {
              goto LABEL_2;
            }
          }

          else if (provider_name)
          {
            goto LABEL_2;
          }

          v12 = v7[21];
          v13 = v7[12];
          provider_path = nw_resolver_config_get_provider_path();
          if (v12)
          {
            if (!provider_path || strcmp(v12, provider_path))
            {
              goto LABEL_2;
            }
          }

          else if (provider_path)
          {
            goto LABEL_2;
          }

          v15 = v7[12];
          odoh_config = nw_resolver_config_get_odoh_config();
          v17 = v7[12];
          v18 = nw_resolver_config_copy_proxy_config();
          if (v18)
          {
            nw_proxy_config_set_prohibit_direct();
          }

          v19 = v7[8];
          if (v19)
          {
            v20 = *(*(v19 + 16) + 96);
            if (v20)
            {
              v20();
            }

            if (_mdns_dns_service_log_s_once != -1)
            {
              dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
            }

            v21 = _mdns_dns_service_log_s_log;
            if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v7;
              _os_log_impl(&dword_2990ED000, v21, OS_LOG_TYPE_DEFAULT, "Updated ODoH config -- %@", &buf, 0xCu);
            }
          }

          *&buf = MEMORY[0x29EDCA5F8];
          *(&buf + 1) = 0x40000000;
          v25 = ___mdns_dns_service_manager_handle_resolver_config_update_block_invoke;
          v26 = &__block_descriptor_tmp_77;
          v27 = odoh_config;
          v28 = 0;
          v29 = v18;
          v22 = v7[16];
          if (v22)
          {
            mdns_cfarray_enumerate(v22, &buf);
          }

          if (v18)
          {
            nw_release(v18);
          }
        }
      }
    }

    v23 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_2:
  v4 = *MEMORY[0x29EDCA608];

  _mdns_dns_service_manager_deregister_service_by_config(v2, v3);
}

uint64_t _mdns_dns_service_create_from_resolver_config(void *a1, char a2, char a3, int *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v8 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = a1;
    _os_log_impl(&dword_2990ED000, v8, OS_LOG_TYPE_INFO, "Creating DNS service from resolver config -- %@", buf, 0xCu);
  }

  protocol = nw_resolver_config_get_protocol();
  if (protocol < 4)
  {
    v10 = protocol + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = _mdns_dns_service_create(v10, a2, a3, v19 + 6);
  v12 = v19[6];
  if (!v12)
  {
    if (__isPlatformVersionAtLeast(2, 19, 0, 0))
    {
      nw_resolver_config_get_port();
    }

    nw_resolver_config_enumerate_name_servers();
    v12 = v19[6];
    if (!v12)
    {
      nw_resolver_config_enumerate_match_domains();
      *(v11 + 96) = a1;
      nw_retain(a1);
      interface_name = nw_resolver_config_get_interface_name();
      if (interface_name)
      {
        v14 = interface_name;
        v15 = strdup(interface_name);
        if (!v15)
        {
          __break(1u);
        }

        *(v11 + 104) = v15;
        *(v11 + 256) = if_nametoindex(v14);
      }

      *(v11 + 276) = 6;
      _mdns_dns_service_update_nw_config_data(v11);
      v12 = 0;
      v19[6] = 0;
    }
  }

  if (a4)
  {
    *a4 = v12;
  }

  _Block_object_dispose(&v18, 8);
  v16 = *MEMORY[0x29EDCA608];
  return v11;
}

BOOL ___mdns_dns_service_create_from_resolver_config_block_invoke(uint64_t a1, char *a2)
{
  v3 = mdns_address_create_from_ip_address_string_and_port(a2, *(a1 + 48));
  result = 1;
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = _mdns_dns_service_append_address(*(a1 + 40), v3);
    os_release(v4);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      return 0;
    }
  }

  return result;
}

uint64_t _mdns_dns_service_update_nw_config_data(uint64_t a1)
{
  result = *(a1 + 96);
  if (result && !*(a1 + 136))
  {
    provider_name = nw_resolver_config_get_provider_name();
    v4 = *(a1 + 160);
    if (v4)
    {
      string_ptr = xpc_string_get_string_ptr(v4);
      if (string_ptr)
      {
        if (!provider_name)
        {
          v11 = *(a1 + 160);
          if (!v11)
          {
            goto LABEL_15;
          }

          xpc_release(v11);
          v7 = 0;
LABEL_14:
          *(a1 + 160) = v7;
          goto LABEL_15;
        }

        if (!strcmp(string_ptr, provider_name))
        {
          goto LABEL_15;
        }
      }

      else if (!provider_name)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 160);
      if (v6)
      {
        xpc_release(v6);
        *(a1 + 160) = 0;
      }
    }

    else if (!provider_name)
    {
LABEL_15:
      v8 = *(a1 + 96);
      result = nw_resolver_config_get_provider_path();
      v9 = result;
      v10 = *(a1 + 168);
      if (v10)
      {
        if (!result)
        {
          goto LABEL_22;
        }

        result = strcmp(*(a1 + 168), result);
        if (!result)
        {
          return result;
        }

        free(v10);
        *(a1 + 168) = 0;
      }

      else if (!result)
      {
        return result;
      }

      result = strdup(v9);
      if (result)
      {
LABEL_23:
        *(a1 + 168) = result;
        return result;
      }

      __break(1u);
LABEL_22:
      free(v10);
      result = 0;
      goto LABEL_23;
    }

    v7 = xpc_string_create(provider_name);
    goto LABEL_14;
  }

  return result;
}

void _mdns_dns_service_manager_deregister_service_by_config(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  path_service_by_config = _mdns_dns_service_manager_get_path_service_by_config(*(a1 + 40), a2);
  if (path_service_by_config)
  {
    v4 = path_service_by_config;
    _mdns_dns_service_manager_deregister_service(a1, path_service_by_config);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v5 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_2990ED000, v5, OS_LOG_TYPE_DEFAULT, "Deregistered service -- %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t _mdns_dns_service_manager_get_path_service_by_config(const __CFArray *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___mdns_dns_service_manager_get_path_service_by_config_block_invoke;
  v4[3] = &unk_29EF082D0;
  v4[4] = &v5;
  v4[5] = a2;
  mdns_cfarray_enumerate(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___mdns_dns_service_manager_handle_resolver_config_update_block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    v4 = *(*(v3 + 16) + 96);
    if (v4)
    {
      v5 = a1[5];
      v6 = a1[6];
      v7 = a1[4];
      v4();
    }
  }

  return 1;
}

BOOL ___mdns_dns_service_manager_get_path_service_by_config_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_service_manager_get_service_by_uuid_block_invoke(uint64_t a1, uint64_t a2)
{
  if (_mdns_dns_service_scope_id_match(a2, a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _mdns_dns_service_scope_id_match(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 280);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      if (!*(a2 + 16))
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    if (v3 != 2)
    {
      goto LABEL_21;
    }

    v4 = *(a2 + 16);
LABEL_10:
    if (v4 == 1)
    {
      v5 = *(a1 + 256);
      goto LABEL_14;
    }

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      if (*(a2 + 16) == 3)
      {
        if (*(a1 + 96))
        {
          *uu1 = 0;
          v9 = 0;
          nw_resolver_config_get_identifier();
          if (!uuid_compare(uu1, a2))
          {
            goto LABEL_19;
          }
        }
      }

      goto LABEL_21;
    }

    if (v3 != 5)
    {
      goto LABEL_21;
    }

    v4 = *(a2 + 16);
    if (!*(a2 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  if (*(a2 + 16) != 2)
  {
    goto LABEL_21;
  }

  v5 = *(a1 + 260);
LABEL_14:
  if (v5 != *a2)
  {
    goto LABEL_21;
  }

LABEL_19:
  result = 1;
LABEL_22:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_service_manager_register_custom_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_register_custom_service_block_invoke;
  block[3] = &unk_29EF07E68;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __mdns_dns_service_manager_register_custom_service_block_invoke(void *a1)
{
  v27[2] = *MEMORY[0x29EDCA608];
  v2 = a1[5];
  if (*(v2 + 131))
  {
    goto LABEL_21;
  }

  v3 = a1[6];
  v4 = nw_resolver_config_create_with_dictionary();
  if (!v4)
  {
    v17 = MEMORY[0x29C299EE0](v3);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v18 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v19 = "<NO DESC.>";
      if (v17)
      {
        v19 = v17;
      }

      *buf = 136315138;
      *v22 = v19;
      _os_log_error_impl(&dword_2990ED000, v18, OS_LOG_TYPE_ERROR, "Failed to create nw_resolver_config for dictionary: %s", buf, 0xCu);
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    else if (!v17)
    {
      goto LABEL_21;
    }

    free(v17);
    goto LABEL_21;
  }

  v5 = v4;
  v27[0] = 0;
  v27[1] = 0;
  nw_resolver_config_get_identifier();
  service_by_uuid = _mdns_dns_service_manager_get_service_by_uuid(*(v2 + 56), v27);
  if (!service_by_uuid)
  {
    v20 = 0;
    v11 = _mdns_dns_service_create_from_resolver_config(v5, 5, 4, &v20);
    if (v11)
    {
      v7 = v11;
      v12 = *(v2 + 56);
      _mdns_dns_service_increment_use_count(v11);
      CFArrayAppendValue(v12, v7);
      _mdns_dns_service_manager_update_interface_properties_for_service(v2, v7);
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v13 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v22 = v7;
        _os_log_impl(&dword_2990ED000, v13, OS_LOG_TYPE_DEFAULT, "Registered custom service -- %@", buf, 0xCu);
      }

      os_release(v7);
      goto LABEL_14;
    }

    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v16 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158466;
      *v22 = 16;
      *&v22[4] = 2096;
      *&v22[6] = v27;
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      v26 = v20;
      _os_log_error_impl(&dword_2990ED000, v16, OS_LOG_TYPE_ERROR, "Failed to register custom service -- uuid: %{uuid_t}.16P, config: %@, error: %{mdns:err}ld", buf, 0x26u);
    }

    nw_release(v5);
LABEL_21:
    v14 = 0;
    goto LABEL_15;
  }

  v7 = service_by_uuid;
  v8 = _mdns_dns_service_increment_use_count(service_by_uuid);
  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v9 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
  {
    v10 = v7[3];
    *buf = 134218240;
    *v22 = v10;
    *&v22[8] = 1024;
    *&v22[10] = v8;
    _os_log_impl(&dword_2990ED000, v9, OS_LOG_TYPE_INFO, "Registered existing custom service -- service id: %llu, use count: %d", buf, 0x12u);
  }

LABEL_14:
  nw_release(v5);
  v14 = v7[3];
LABEL_15:
  *(*(a1[4] + 8) + 24) = v14;
  v15 = *MEMORY[0x29EDCA608];
}

void mdns_dns_service_manager_deregister_custom_service(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (_mdns_dns_service_queue_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
    }

    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = __mdns_dns_service_manager_deregister_custom_service_block_invoke;
    v4[3] = &__block_descriptor_tmp_15;
    v4[4] = a1;
    v4[5] = a2;
    dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  }
}

void __mdns_dns_service_manager_deregister_custom_service_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 131) & 1) == 0)
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v1 + 56), *(a1 + 40));
    if (service_by_id)
    {

      _mdns_dns_service_manager_deregister_service(v1, service_by_id);
    }
  }
}

void mdns_dns_service_manager_register_doh_uri(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_register_doh_uri_block_invoke;
  block[3] = &__block_descriptor_tmp_16_179;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
}

void __mdns_dns_service_manager_register_doh_uri_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (*(v3 + 131))
  {
    goto LABEL_31;
  }

  if (!*(a1 + 40) || (v4 = *(a1 + 48), (v5 = strdup(*(a1 + 40))) == 0))
  {
    __break(1u);
    goto LABEL_36;
  }

  v1 = v5;
  v6 = strchr(v5, 123);
  if (v6)
  {
    *v6 = 0;
  }

  url = nw_endpoint_create_url(v1);
  if (url)
  {
    v2 = url;
    url_scheme = nw_endpoint_get_url_scheme();
    if (!url_scheme || strcasecmp("https", url_scheme))
    {
LABEL_30:
      free(v1);
      nw_release(v2);
LABEL_31:
      v24 = *MEMORY[0x29EDCA608];
      return;
    }

    v26 = v4;
    hostname = nw_endpoint_get_hostname(v2);
    url_path = nw_endpoint_get_url_path();
    if (hostname)
    {
      v11 = url_path;
      if (url_path)
      {
        Count = CFArrayGetCount(*(v3 + 48));
        if (Count >= 1)
        {
          v13 = Count;
          v14 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 48), v14);
            if (*(ValueAtIndex + 96))
            {
              if (nw_resolver_config_get_protocol() == 2)
              {
                v16 = *(ValueAtIndex + 96);
                provider_name = nw_resolver_config_get_provider_name();
                v18 = *(ValueAtIndex + 96);
                provider_path = nw_resolver_config_get_provider_path();
                if (!strcasecmp(hostname, provider_name) && !strcasecmp(v11, provider_path))
                {
                  break;
                }
              }
            }

            if (v13 == ++v14)
            {
              goto LABEL_18;
            }
          }

LABEL_24:
          if (v26)
          {
            if (_mdns_dns_service_log_s_once != -1)
            {
              dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
            }

            v23 = _mdns_dns_service_log_s_log;
            if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = v26;
              *&buf[12] = 2080;
              *&buf[14] = v1;
              _os_log_impl(&dword_2990ED000, v23, OS_LOG_TYPE_DEFAULT, "Adding domain %s to DoH resolver at %s", buf, 0x16u);
            }

            _mdns_dns_service_add_domain_by_string(ValueAtIndex, v26, 0);
          }

          goto LABEL_30;
        }
      }
    }

LABEL_18:
    if (_mdns_dns_service_log_s_once == -1)
    {
LABEL_19:
      v20 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v1;
        _os_log_impl(&dword_2990ED000, v20, OS_LOG_TYPE_DEFAULT, "Registering discovered DoH resolver at %s", buf, 0xCu);
      }

      v21 = nw_resolver_config_create();
      nw_resolver_config_set_class();
      nw_resolver_config_set_protocol();
      nw_endpoint_get_hostname(v2);
      nw_resolver_config_set_provider_name();
      nw_endpoint_get_url_path();
      nw_resolver_config_set_provider_path();
      *buf = 0;
      *&buf[8] = 0;
      MEMORY[0x29C299E10](buf);
      nw_resolver_config_set_identifier();
      v27 = 0;
      ValueAtIndex = _mdns_dns_service_create(3, 4, 4, &v27);
      if (v27)
      {
        if (v21)
        {
          nw_release(v21);
        }

        if (!ValueAtIndex)
        {
          goto LABEL_30;
        }
      }

      else
      {
        *(ValueAtIndex + 48) = nw_retain(v2);
        *(ValueAtIndex + 56) = 1;
        *(ValueAtIndex + 96) = v21;
        *(ValueAtIndex + 276) = 6;
        _mdns_dns_service_update_nw_config_data(ValueAtIndex);
      }

      v22 = *(v3 + 48);
      _mdns_dns_service_increment_use_count(ValueAtIndex);
      CFArrayAppendValue(v22, ValueAtIndex);
      _mdns_dns_service_manager_update_interface_properties_for_service(v3, ValueAtIndex);
      os_release(ValueAtIndex);
      _mdns_dns_service_manager_fetch_doh_pvd(ValueAtIndex);
      goto LABEL_24;
    }

LABEL_36:
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    goto LABEL_19;
  }

  v25 = *MEMORY[0x29EDCA608];

  free(v1);
}

void _mdns_dns_service_manager_fetch_doh_pvd(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  os_retain(a1);
  v2 = a1[6];
  nw_retain(v2);
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v3 = _mdns_dns_service_queue_s_queue;
  hostname = nw_endpoint_get_hostname(v2);
  url_path = nw_endpoint_get_url_path();
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke;
  v8[3] = &unk_29EF083C0;
  v8[5] = v2;
  v8[6] = a1;
  v8[4] = &v9;
  pvd_query = http_task_create_pvd_query(v3, hostname, url_path, v8);
  v10[3] = pvd_query;
  v7 = objc_autoreleasePoolPush();
  [pvd_query resume];
  objc_autoreleasePoolPop(v7);
  _Block_object_dispose(&v9, 8);
}

void ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v36 = *MEMORY[0x29EDCA608];
  if (xdict)
  {
    string = xpc_dictionary_get_string(xdict, "dohTemplate");
    if (string)
    {
      v5 = string;
      v6 = strlen(string);
      v7 = strchr(v5, 123);
      if (v7)
      {
        v6 = v7 - v5;
      }

      url = nw_endpoint_get_url(*(a1 + 40));
      if (url && (v9 = url, strlen(url) == v6) && !strncasecmp(v5, v9, v6))
      {
        uint64 = xpc_dictionary_get_uint64(xdict, "secondsRemaining");
        if (uint64 || (uint64 = xpc_dictionary_get_uint64(xdict, "seconds-remaining")) != 0)
        {
          v18 = uint64;
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v19 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
          {
            v20 = *(a1 + 40);
            *buf = 138412546;
            v33 = v20;
            v34 = 2048;
            v35 = v18;
            _os_log_impl(&dword_2990ED000, v19, OS_LOG_TYPE_INFO, "DoH resolver for %@ will expire in %llu seconds", buf, 0x16u);
          }

          if (_mdns_get_future_continuous_time_onceToken != -1)
          {
            dispatch_once(&_mdns_get_future_continuous_time_onceToken, &__block_literal_global_96);
          }

          v21 = 1000000000 * v18 * *algn_2A145DDCC / _mdns_get_future_continuous_time_time_base;
          v22 = mach_continuous_time() + v21;
        }

        else
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v27 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
          {
            v28 = *(a1 + 40);
            *buf = 138412290;
            v33 = v28;
            _os_log_impl(&dword_2990ED000, v27, OS_LOG_TYPE_INFO, "DoH resolver for %@ does not specify an expiration", buf, 0xCu);
          }

          v22 = 0;
        }

        *(*(a1 + 48) + 40) = v22;
        value = xpc_dictionary_get_value(xdict, "dnsZones");
        v24 = xpc_dictionary_get_value(xdict, "trustedNames");
        if (v24)
        {
          v25 = v24;
          if (MEMORY[0x29C299FD0]() == MEMORY[0x29EDCA9E0])
          {
            applier[0] = MEMORY[0x29EDCA5F8];
            applier[1] = 0x40000000;
            applier[2] = ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke_89;
            applier[3] = &__block_descriptor_tmp_91;
            v30 = *(a1 + 40);
            v31 = value;
            xpc_array_apply(v25, applier);
          }
        }
      }

      else
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v10 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 40);
          *buf = 138412546;
          v33 = v11;
          v34 = 2080;
          v35 = v5;
          v12 = "DoH resolver for %@ does not match DoH template %s";
          v13 = v10;
          v14 = 22;
LABEL_29:
          _os_log_error_impl(&dword_2990ED000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        }
      }
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v15 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 40);
        *buf = 138412290;
        v33 = v26;
        v12 = "DoH resolver for %@ missing DoH template";
        v13 = v15;
        v14 = 12;
        goto LABEL_29;
      }
    }
  }

  http_task_cancel(*(*(*(a1 + 32) + 8) + 24));
  os_release(*(a1 + 48));
  nw_release(*(a1 + 40));
  v16 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_dns_service_manager_fetch_doh_pvd_block_invoke_89(void *a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C299FD0](a3) == MEMORY[0x29EDCAA50])
  {
    string_ptr = xpc_string_get_string_ptr(a3);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v8 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      *buf = 136315394;
      *&buf[4] = string_ptr;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_2990ED000, v8, OS_LOG_TYPE_DEFAULT, "Query trusted name %s for DoH resolver for %@", buf, 0x16u);
    }

    v10 = a1[6];
    if (v10)
    {
      if (string_ptr)
      {
        v11 = a1[4];
        if (v11)
        {
          v12 = a1[5];
          if (MEMORY[0x29C299FD0](v10) == MEMORY[0x29EDCA9E0])
          {
            v22 = 0;
            asprintf(&v22, ".%s", string_ptr);
            v13 = xpc_array_create(0, 0);
            applier[0] = MEMORY[0x29EDCA5F8];
            applier[1] = 0x40000000;
            applier[2] = ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke;
            applier[3] = &__block_descriptor_tmp_98;
            applier[4] = string_ptr;
            applier[5] = v13;
            applier[6] = v22;
            xpc_array_apply(v10, applier);
            if (v22)
            {
              free(v22);
              v22 = 0;
            }

            if (xpc_array_get_count(v13))
            {
              v17 = 0;
              v18 = &v17;
              v19 = 0x2000000000;
              v20 = 0;
              nw_retain(v11);
              os_retain(v12);
              host = nw_endpoint_create_host(string_ptr, "443");
              if (_mdns_dns_service_queue_s_once != -1)
              {
                dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
              }

              *buf = MEMORY[0x29EDCA5F8];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_2;
              v24 = &unk_29EF08448;
              v27 = v11;
              v28 = v13;
              v29 = v12;
              v25 = &v17;
              v26 = host;
              pvd_query = http_task_create_pvd_query(_mdns_dns_service_queue_s_queue, string_ptr, "", buf);
              v18[3] = pvd_query;
              v16 = objc_autoreleasePoolPush();
              [pvd_query resume];
              objc_autoreleasePoolPop(v16);
              _Block_object_dispose(&v17, 8);
            }

            else if (v13)
            {
              xpc_release(v13);
            }
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (MEMORY[0x29C299FD0](a3) == MEMORY[0x29EDCAA50])
  {
    string_ptr = xpc_string_get_string_ptr(a3);
    if (!strcasecmp(*(a1 + 32), string_ptr) || (v6 = strlen(*(a1 + 48)), v7 = strlen(string_ptr), v7 >= v6) && !strcasecmp(*(a1 + 48), &string_ptr[v7 - v6]))
    {
      xpc_array_append_value(*(a1 + 40), a3);
    }
  }

  return 1;
}

void ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  v31 = *MEMORY[0x29EDCA608];
  if (xdict)
  {
    string = xpc_dictionary_get_string(xdict, "dohTemplate");
    if (string)
    {
      v4 = string;
      url = nw_endpoint_get_url(*(a1 + 48));
      if (url && !strcasecmp(v4, url))
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v17 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          v18 = *(a1 + 48);
          *buf = 138412546;
          v26 = v18;
          v27 = 2112;
          v28 = v19;
          _os_log_impl(&dword_2990ED000, v17, OS_LOG_TYPE_DEFAULT, "DoH resolver at %@ is trusted for %@", buf, 0x16u);
        }

        v24[0] = MEMORY[0x29EDCA5F8];
        v24[1] = 0x40000000;
        v24[2] = ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_100;
        v24[3] = &__block_descriptor_tmp_101;
        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        v24[4] = *(a1 + 48);
        v24[5] = v21;
        xpc_array_apply(v20, v24);
      }

      else
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v6 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 40);
          v7 = *(a1 + 48);
          *buf = 138412802;
          v26 = v7;
          v27 = 2080;
          v28 = v4;
          v29 = 2112;
          v30 = v8;
          v9 = "DoH resolver for %@ does not match trusted DoH template %s for %@";
          v10 = v6;
          v11 = 32;
LABEL_17:
          _os_log_error_impl(&dword_2990ED000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
        }
      }
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v15 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 40);
        *buf = 138412290;
        v26 = v16;
        v9 = "Trusted name %@ missing DoH template";
        v10 = v15;
        v11 = 12;
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v12 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      *buf = 138412546;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v9 = "No PvD file found at %@ for DoH server %@";
      v10 = v12;
      v11 = 22;
      goto LABEL_17;
    }
  }

  http_task_cancel(*(*(*(a1 + 32) + 8) + 24));
  nw_release(*(a1 + 40));
  nw_release(*(a1 + 48));
  v22 = *(a1 + 56);
  if (v22)
  {
    xpc_release(v22);
  }

  os_release(*(a1 + 64));
  v23 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_dns_service_manager_fetch_trusted_name_pvd_block_invoke_100(uint64_t a1, int a2, xpc_object_t xstring)
{
  v13 = *MEMORY[0x29EDCA608];
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (_mdns_dns_service_log_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
  }

  v5 = _mdns_dns_service_log_s_log;
  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = string_ptr;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2990ED000, v5, OS_LOG_TYPE_DEFAULT, "Adding domain %s to discovered DoH resolver for %@", &v9, 0x16u);
  }

  _mdns_dns_service_add_domain_by_string(*(a1 + 40), string_ptr, 0);
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

void mdns_dns_service_manager_invalidate(uint64_t a1)
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_19_195;
  block[4] = a1;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
}

void __mdns_dns_service_manager_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 130) & 1) == 0)
  {
    _mdns_dns_service_manager_terminate(v2, 0);
    *(*(a1 + 32) + 130) = 1;
  }
}

uint64_t _mdns_dns_service_manager_get_service(const __CFArray *a1, uint64_t a2, uint64_t a3, char a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2000000000;
  v14 = -1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 0;
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___mdns_dns_service_manager_get_service_block_invoke;
  v10[3] = &unk_29EF08580;
  v10[8] = a3;
  v10[9] = a2;
  v10[4] = 0;
  v10[5] = v13;
  v10[6] = v11;
  v10[7] = &v15;
  mdns_cfarray_enumerate(a1, v10);
  v5 = v16;
  if (a4)
  {
    v6 = v16[3];
    if (v6)
    {
      preferred_encrypted_alt = _mdns_dns_service_get_preferred_encrypted_alt(v6, (a4 & 2) != 0);
      v5 = v16;
      if (preferred_encrypted_alt)
      {
        v16[3] = preferred_encrypted_alt;
      }
    }
  }

  v8 = v5[3];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

uint64_t _mdns_dns_service_manager_prepare_service(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v101 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_156;
  }

  v4 = *(a2 + 281);
  if (v4 != 5)
  {
    if (*(a2 + 64))
    {
      goto LABEL_156;
    }

    if ((v4 - 3) < 2)
    {
      v4 = 4;
    }

    else
    {
      if (v4 == 1)
      {
        v22 = 0;
LABEL_41:
        v90 = 0;
        v26 = mdns_resolver_create(v4, *(a2 + 256), &v90);
        if (!v26)
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v83 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            v84 = *(v2 + 24);
            *buf = 134217984;
            *&buf[4] = v84;
            v85 = "Failed to create resolver for service -- service id: %llu";
            v86 = v83;
            v87 = 12;
LABEL_163:
            _os_log_error_impl(&dword_2990ED000, v86, OS_LOG_TYPE_ERROR, v85, buf, v87);
          }

LABEL_145:
          if (*(v2 + 64))
          {
            goto LABEL_156;
          }

LABEL_146:
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v23 = _mdns_dns_service_log_s_log;
          if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_149;
          }

          v82 = *(v2 + 24);
          LODWORD(aBlock) = 134217984;
          *(&aBlock + 4) = v82;
          v25 = "Failed to prepare resolver -- service id: %llu";
          goto LABEL_158;
        }

        v27 = v26;
        if (!*(v2 + 96))
        {
LABEL_72:
          if (*(v2 + 176))
          {
            if ((*(v27 + 137) & 1) == 0)
            {
              v45 = *(*(v27 + 16) + 64);
              if (v45)
              {
                v45(v27);
              }
            }
          }

          if (*(v2 + 278))
          {
            if ((*(v27 + 137) & 1) == 0)
            {
              v46 = *(*(v27 + 16) + 72);
              if (v46)
              {
                v46(v27);
              }
            }
          }

          v47 = *(v27 + 137);
          if (*(v2 + 56) == 1)
          {
            if (v47)
            {
              goto LABEL_95;
            }

            v47 = 0;
            *(v27 + 133) = 1;
          }

          else if (v47)
          {
            goto LABEL_95;
          }

          if ((*(v2 + 276) & 8) != 0)
          {
            v48 = 2000;
          }

          else
          {
            v48 = 1000;
          }

          *(v27 + 124) = v48;
          *(v27 + 132) = *(a1 + 128);
          if (((v22 | v47) & 1) == 0)
          {
            *(v27 + 138) = 1;
            v49 = *(a1 + 120);
            if (v49 >= 0x64)
            {
              v50 = 100;
            }

            else
            {
              v50 = *(a1 + 120);
            }

            if (v49 <= 0)
            {
              v51 = 0;
            }

            else
            {
              v51 = v50;
            }

            *(v27 + 128) = v51;
          }

LABEL_95:
          v52 = *(v2 + 80);
          if (v52)
          {
            Count = CFArrayGetCount(v52);
            v54 = Count;
            if (Count >= 1)
            {
              v55 = 0;
              v56 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 80), v56);
                v58 = mdns_resolver_add_server_address(v27, ValueAtIndex);
                if (v58)
                {
                  v59 = v58;
                  if (_mdns_dns_service_log_s_once != -1)
                  {
                    dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                  }

                  log = _mdns_dns_service_log_s_log;
                  if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                  {
                    v60 = *(v2 + 24);
                    *buf = 134218498;
                    *&buf[4] = v60;
                    *&buf[12] = 2112;
                    *&buf[14] = ValueAtIndex;
                    *&buf[22] = 2048;
                    v98 = v59;
                    _os_log_error_impl(&dword_2990ED000, log, OS_LOG_TYPE_ERROR, "Failed to add address to resolver -- service id: %llu, address: %@, error: %{mdns:err}ld", buf, 0x20u);
                  }
                }

                else
                {
                  ++v55;
                }

                ++v56;
              }

              while (v54 != v56);
              v61 = v55 < 1;
              if (!v54)
              {
                goto LABEL_110;
              }

LABEL_109:
              if (v61)
              {
                os_release(v27);
                goto LABEL_145;
              }

              goto LABEL_110;
            }

            v61 = 1;
            if (Count)
            {
              goto LABEL_109;
            }
          }

LABEL_110:
          if (_mdns_dns_service_queue_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
          }

          mdns_resolver_set_queue(v27, _mdns_dns_service_queue_s_queue);
          os_retain(a1);
          os_retain(v27);
          os_retain(v2);
          *&aBlock = MEMORY[0x29EDCA5F8];
          *(&aBlock + 1) = 0x40000000;
          v92 = ___mdns_dns_service_manager_prepare_resolver_block_invoke;
          v93 = &__block_descriptor_tmp_204;
          v94 = a1;
          v95 = v2;
          v96 = v27;
          mdns_resolver_set_event_handler(v27, &aBlock);
          *(v2 + 64) = v27;
          if (*(v2 + 283) == 1)
          {
            *(v2 + 283) = 0;
            v62 = *(a1 + 96);
            if (v62)
            {
              dispatch_source_merge_data(v62, 1uLL);
              v27 = *(v2 + 64);
            }
          }

          mdns_resolver_activate(v27);
          if (*(v2 + 281) - 2 >= 4 && nw_settings_get_ddr_enabled() && !*(v2 + 200))
          {
            if (_mdns_dns_service_queue_s_once != -1)
            {
              dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
            }

            v63 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, _mdns_dns_service_queue_s_queue);
            *(v2 + 200) = v63;
            if (v63)
            {
              if (_mdns_os_variant_has_internal_diagnostics_s_once != -1)
              {
                dispatch_once(&_mdns_os_variant_has_internal_diagnostics_s_once, &__block_literal_global_253);
              }

              if (_mdns_os_variant_has_internal_diagnostics_s_result == 1)
              {
                v64 = *(a1 + 124);
                if (v64 <= 0xA)
                {
                  v65 = 10;
                }

                else
                {
                  v65 = *(a1 + 124);
                }

                if (v64)
                {
                  v66 = v65;
                }

                else
                {
                  v66 = 1800;
                }
              }

              else
              {
                v66 = 1800;
              }

              v76 = *(v2 + 200);
              v77 = dispatch_time(0x8000000000000000, 1000000000 * v66);
              dispatch_source_set_timer(v76, v77, 1000000000 * v66, 50000000 * v66);
              v78 = *(v2 + 200);
              *buf = MEMORY[0x29EDCA5F8];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___mdns_dns_service_manager_schedule_ddr_probe_block_invoke;
              v98 = &__block_descriptor_tmp_213;
              v99 = a1;
              v100 = v2;
              dispatch_source_set_event_handler(v78, buf);
              dispatch_activate(*(v2 + 200));
              _mdns_dns_service_forget_all_ddr_queriers(v2);
              _mdns_dns_service_manager_start_ddr_querier_ex(a1, v2, 0);
              goto LABEL_145;
            }

            if (_mdns_dns_service_log_s_once != -1)
            {
              dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
            }

            v88 = _mdns_dns_service_log_s_log;
            if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v85 = "Failed to create DDR timer";
              v86 = v88;
              v87 = 2;
              goto LABEL_163;
            }
          }

          goto LABEL_145;
        }

        provider_name = nw_resolver_config_get_provider_name();
        v29 = *(v2 + 96);
        provider_path = nw_resolver_config_get_provider_path();
        if ((*(v27 + 137) & 1) == 0)
        {
          v31 = *(*(v27 + 16) + 56);
          if (!v31 || (v31(v27, provider_name), (*(v27 + 137) & 1) == 0))
          {
            v32 = *(*(v27 + 16) + 80);
            if (v32)
            {
              v32(v27, provider_path);
            }
          }
        }

        v33 = *(v2 + 96);
        identity_reference = nw_resolver_config_get_identity_reference();
        if (identity_reference)
        {
          if (*(v27 + 137) == 1)
          {
            v90 = -6719;
            goto LABEL_52;
          }

          v35 = *(*(v27 + 16) + 88);
          if (v35)
          {
            v90 = v35(v27, identity_reference, 0);
            if (v90)
            {
LABEL_52:
              if (_mdns_dns_service_log_s_once != -1)
              {
                dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
              }

              v36 = _mdns_dns_service_log_s_log;
              if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
              {
                v37 = *(v2 + 24);
                *buf = 134217984;
                *&buf[4] = v37;
                _os_log_error_impl(&dword_2990ED000, v36, OS_LOG_TYPE_ERROR, "Failed to set identity reference for service -- service id: %llu", buf, 0xCu);
              }
            }
          }

          else
          {
            v90 = 0;
          }
        }

        v38 = *(v2 + 96);
        if (nw_resolver_config_get_protocol() == 3)
        {
          v39 = *(v2 + 96);
          odoh_config = nw_resolver_config_get_odoh_config();
          v41 = *(v2 + 96);
          v42 = nw_resolver_config_copy_proxy_config();
          if (v42)
          {
            nw_proxy_config_set_prohibit_direct();
          }

          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v43 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v42;
            _os_log_impl(&dword_2990ED000, v43, OS_LOG_TYPE_DEFAULT, "Resolver proxy config: %@", buf, 0xCu);
          }

          v44 = *(*(v27 + 16) + 96);
          if (v44)
          {
            v44(v27, provider_name, provider_path, odoh_config, 0, v42);
          }

          if (v42)
          {
            nw_release(v42);
          }

          if (*(a1 + 129) == 1 && *(v2 + 282) != 4)
          {
            *(v2 + 276) |= 0x1000u;
            if ((*(v27 + 137) & 1) == 0)
            {
              *(v27 + 140) = 1;
            }
          }
        }

        goto LABEL_72;
      }

      if (v4 != 2)
      {
        goto LABEL_146;
      }

      v4 = 3;
    }

    v22 = 1;
    goto LABEL_41;
  }

  if (!*(a2 + 72))
  {
    v5 = _os_object_alloc();
    if (v5)
    {
      v6 = v5;
      v7 = &_mdns_push_server_kind;
      *(v5 + 16) = &_mdns_push_server_kind;
      do
      {
        v8 = v7[2];
        if (v8)
        {
          v8(v6);
        }

        v7 = *v7;
      }

      while (v7);
      v9 = *MEMORY[0x29EDB8ED8];
      Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
      v6[8] = Mutable;
      if (Mutable)
      {
        v11 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
        v6[9] = v11;
        if (v11)
        {
          *(v2 + 72) = v6;
          v12 = *(v2 + 232);
          if (v12)
          {
            v13 = CFArrayGetCount(v12);
            if (v13 >= 1)
            {
              v14 = v13;
              for (i = 0; i != v14; ++i)
              {
                v16 = CFArrayGetValueAtIndex(*(v2 + 232), i);
                v17 = *(v2 + 72);
                if ((*(v17 + 103) & 1) == 0)
                {
                  CFArrayAppendValue(*(v17 + 72), v16);
                }
              }
            }
          }

          v18 = *(v2 + 72);
          if ((*(v18 + 103) & 1) == 0)
          {
            v19 = *(v2 + 256);
            if (*(v18 + 96) != v19)
            {
              *(v18 + 96) = v19;
              if (*(v18 + 56))
              {
                free(*(v18 + 56));
                *(v18 + 56) = 0;
                v19 = *(v18 + 96);
              }
            }

            if (v19 && !*(v18 + 56))
            {
              *(v18 + 56) = mdns_system_interface_index_to_name(v19);
            }
          }

          v20 = *(v2 + 80);
          if (v20 && CFArrayGetCount(v20) >= 1)
          {
            v21 = *(v2 + 80);
            *&aBlock = MEMORY[0x29EDCA5F8];
            *(&aBlock + 1) = 0x40000000;
            v92 = ___mdns_dns_service_manager_prepare_push_service_block_invoke;
            v93 = &__block_descriptor_tmp_243;
            v94 = v2;
            mdns_cfarray_enumerate(v21, &aBlock);
          }

          else
          {
            v67 = *(v2 + 216);
            if (!v67)
            {
              goto LABEL_155;
            }

            v68 = *(v2 + 72);
            if ((*(v68 + 103) & 1) == 0)
            {
              os_retain(*(v2 + 216));
              v69 = *(v68 + 48);
              if (v69)
              {
                os_release(v69);
              }

              *(v68 + 48) = v67;
            }
          }

          v70 = *(v2 + 240);
          if (v70)
          {
            v71 = *(v2 + 248);
            v72 = *(v2 + 72);
            if (v71)
            {
              dispatch_retain(*(v2 + 240));
              v73 = _Block_copy(v71);
              v74 = *(v72 + 80);
              if (v74)
              {
                dispatch_release(v74);
              }

              *(v72 + 80) = v70;
              v75 = *(v72 + 88);
              if (v75)
              {
                _Block_release(v75);
              }

              *(v72 + 88) = v73;
              v70 = *(v2 + 240);
              *(*(v2 + 72) + 103) = 1;
              if (!v70)
              {
                goto LABEL_153;
              }
            }

            else
            {
              *(v72 + 103) = 1;
            }

            dispatch_release(v70);
            *(v2 + 240) = 0;
          }

          else
          {
            *(*(v2 + 72) + 103) = 1;
          }

LABEL_153:
          v79 = *(v2 + 248);
          if (v79)
          {
            _Block_release(v79);
            *(v2 + 248) = 0;
          }

LABEL_155:
          if (*(v2 + 72))
          {
            goto LABEL_156;
          }

          goto LABEL_36;
        }
      }

      os_release(v6);
    }

    *(v2 + 72) = 0;
LABEL_36:
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v23 = _mdns_dns_service_log_s_log;
    if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_149;
    }

    v24 = *(v2 + 24);
    LODWORD(aBlock) = 134217984;
    *(&aBlock + 4) = v24;
    v25 = "Failed to prepare push server -- service id: %llu";
LABEL_158:
    _os_log_error_impl(&dword_2990ED000, v23, OS_LOG_TYPE_ERROR, v25, &aBlock, 0xCu);
LABEL_149:
    v2 = 0;
  }

LABEL_156:
  v80 = *MEMORY[0x29EDCA608];
  return v2;
}

void ___mdns_dns_service_manager_prepare_resolver_block_invoke(void *a1, int a2, xpc_object_t xdict)
{
  v39 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  switch(a2)
  {
    case 1:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v16 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
      {
        v17 = *(v3 + 24);
        v33 = 134218242;
        v34 = v17;
        v35 = 2112;
        v36 = v5;
        _os_log_impl(&dword_2990ED000, v16, OS_LOG_TYPE_INFO, "Resolver has been invalidated -- service id: %llu, resolver: %@", &v33, 0x16u);
      }

      os_release(v5);
      os_release(v3);
      os_release(v4);
      break;
    case 3:
      if (!xdict || *(v3 + 64) != v5)
      {
        break;
      }

      int64 = xpc_dictionary_get_int64(xdict, "error_code");
      if (*(v3 + 282) == 4)
      {
        if (int64 == -6736)
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v13 = _mdns_dns_service_log_s_log;
          if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            break;
          }

          v23 = *(v3 + 24);
          v33 = 134217984;
          v34 = v23;
          v15 = "Received unexpected error for discovered service id: %llu";
        }

        else
        {
          if (int64 != -6776)
          {
            break;
          }

          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v13 = _mdns_dns_service_log_s_log;
          if (!os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
          {
            break;
          }

          v14 = *(v3 + 24);
          v33 = 134217984;
          v34 = v14;
          v15 = "Received authentication error for discovered service id: %llu";
        }

        _os_log_error_impl(&dword_2990ED000, v13, OS_LOG_TYPE_ERROR, v15, &v33, 0xCu);
        break;
      }

      if (*(v3 + 96))
      {
        if (int64)
        {
          if (int64 == -6736)
          {
            if (_mdns_dns_service_log_s_once != -1)
            {
              dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
            }

            v24 = _mdns_dns_service_log_s_log;
            if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
            {
              v31 = *(v3 + 24);
              v33 = 134217984;
              v34 = v31;
              _os_log_error_impl(&dword_2990ED000, v24, OS_LOG_TYPE_ERROR, "Reporting EBADMSG error for service id: %llu", &v33, 0xCu);
            }

            v25 = *(v3 + 96);
          }

          else
          {
            if (int64 != -6776)
            {
              break;
            }

            if (_mdns_dns_service_log_s_once != -1)
            {
              dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
            }

            v19 = _mdns_dns_service_log_s_log;
            if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
            {
              v32 = *(v3 + 24);
              v33 = 134217984;
              v34 = v32;
              _os_log_error_impl(&dword_2990ED000, v19, OS_LOG_TYPE_ERROR, "Reporting EAUTH error for service id: %llu", &v33, 0xCu);
            }

            v20 = *(v3 + 96);
          }
        }

        else
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }

          v26 = _mdns_dns_service_log_s_log;
          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
          {
            v27 = *(v3 + 24);
            v33 = 134217984;
            v34 = v27;
            _os_log_impl(&dword_2990ED000, v26, OS_LOG_TYPE_INFO, "Reporting success for service id: %llu", &v33, 0xCu);
          }

          v28 = *(v3 + 96);
        }

        nw_resolver_config_report_error();
      }

      break;
    case 2:
      if (xdict && *(v3 + 64) == v5)
      {
        v8 = xpc_dictionary_get_BOOL(xdict, "cannot_connect");
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v9 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "";
          v11 = *(v3 + 24);
          v33 = 136446722;
          if (v8)
          {
            v10 = "not";
          }

          v34 = v10;
          v35 = 2048;
          v36 = v11;
          v37 = 2112;
          v38 = v5;
          _os_log_impl(&dword_2990ED000, v9, OS_LOG_TYPE_DEFAULT, "Resolver can%{public}s connect -- service id: %llu, resolver: %@", &v33, 0x20u);
        }

        if (v8)
        {
          if (*(v3 + 283))
          {
            break;
          }

          *(v3 + 283) = 1;
        }

        else
        {
          if (!*(v3 + 283))
          {
            break;
          }

          *(v3 + 283) = 0;
        }

        v21 = v4[12];
        if (v21)
        {
          dispatch_source_merge_data(v21, 1uLL);
        }
      }

      break;
    default:
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        if (xdict)
        {
          v18 = MEMORY[0x29C299EE0](xdict);
          if (_mdns_dns_service_log_s_once != -1)
          {
            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
          }
        }

        else
        {
          v18 = 0;
        }

        v22 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_DEBUG))
        {
          v30 = "<invalid event value>";
          v33 = 138412802;
          v34 = v3;
          if (!a2)
          {
            v30 = "null";
          }

          v35 = 2080;
          v36 = v30;
          v37 = 2082;
          v38 = v18;
          _os_log_debug_impl(&dword_2990ED000, v22, OS_LOG_TYPE_DEBUG, "DNS service (%@) got unhandled event: %s info: %{public}s", &v33, 0x20u);
          if (!v18)
          {
            break;
          }
        }

        else if (!v18)
        {
          break;
        }

        free(v18);
      }

      break;
  }

  v29 = *MEMORY[0x29EDCA608];
}

void ___mdns_dns_service_manager_schedule_ddr_probe_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  _mdns_dns_service_forget_all_ddr_queriers(v2);

  _mdns_dns_service_manager_start_ddr_querier_ex(v1, v2, 0);
}

void _mdns_dns_service_manager_start_ddr_querier_ex(void *a1, uint64_t a2, char *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 64);
  if (v4)
  {
    if (a3 && !*(a2 + 192))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
      *(a2 + 192) = Mutable;
      if (!Mutable)
      {
        goto LABEL_20;
      }

      v4 = *(a2 + 64);
    }

    querier = mdns_resolver_create_querier(v4, 0);
    if (querier)
    {
      v15 = querier;
      ++*(a2 + 268);
      mdns_querier_set_log_label(querier, "S%llu.DDR%u", v9, v10, v11, v12, v13, v14, *(a2 + 24));
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      mdns_client_set_queue(v15, _mdns_dns_service_queue_s_queue);
      if (a3)
      {
        v16 = a3;
      }

      else
      {
        v16 = "\x04_dns\bresolver\x04arpa";
      }

      mdns_querier_set_query(v15, v16, 64, 1);
      if ((*(v15 + 61) & 1) == 0)
      {
        *(v15 + 236) = -1;
      }

      if (a3)
      {
        CFArrayAppendValue(*(a2 + 192), v15);
      }

      else
      {
        v17 = *(a2 + 184);
        if (v17)
        {
          mdns_client_invalidate(v17);
          os_release(*(a2 + 184));
        }

        *(a2 + 184) = v15;
        os_retain(v15);
      }

      os_retain(a1);
      os_retain(a2);
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___mdns_dns_service_manager_start_ddr_querier_ex_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_217;
      aBlock[4] = a2;
      aBlock[5] = v15;
      aBlock[6] = a1;
      aBlock[7] = a3;
      mdns_querier_set_result_handler(v15, aBlock);
      v18 = os_retain(v15);
      v19 = (*(*(v15 + 16) + 48))(v18);
      *&block = MEMORY[0x29EDCA5F8];
      *(&block + 1) = 0x40000000;
      v25 = __mdns_client_set_time_limit_ms_block_invoke;
      v26 = &__block_descriptor_tmp_3_21;
      v27 = v15;
      v28 = 15000;
      dispatch_async(v19, &block);
      mdns_client_activate(v15);
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v21 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v22 = "alias ";
        if (!a3)
        {
          v22 = "";
        }

        LODWORD(block) = 136446210;
        *(&block + 4) = v22;
        _os_log_error_impl(&dword_2990ED000, v21, OS_LOG_TYPE_ERROR, "Failed to create DDR %{public}squerier", &block, 0xCu);
      }
    }
  }

LABEL_20:
  v20 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_dns_service_manager_prepare_push_service_block_invoke(uint64_t a1, const void *a2)
{
  v2 = *(*(a1 + 32) + 72);
  if ((*(v2 + 103) & 1) == 0)
  {
    CFArrayAppendValue(*(v2 + 64), a2);
  }

  return 1;
}

void ___mdns_dns_service_manager_start_ddr_querier_ex_block_invoke(uint64_t a1)
{
  v145 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 184);
  if (v4 == v2)
  {
    if (v2)
    {
      os_release(v4);
      *(v3 + 184) = 0;
    }
  }

  else
  {
    v5 = *(v3 + 192);
    if (!v5)
    {
      goto LABEL_164;
    }

    v146.length = CFArrayGetCount(v5);
    v146.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v3 + 192), v146, v2);
    if (FirstIndexOfValue < 0)
    {
      goto LABEL_164;
    }

    CFArrayRemoveValueAtIndex(*(v3 + 192), FirstIndexOfValue);
  }

  v7 = *(a1 + 40);
  if (*(v7 + 248) == 1)
  {
    v8 = *(v7 + 136);
    if (v8)
    {
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    if (*(a1 + 56))
    {
      v81 = *(*(*(v7 + 96) + 56) + 24);
    }

    else
    {
      v81 = 0;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    AnswerSection = 0;
    *v92 = 0;
    v13 = DNSMessageCollapse(v9, v10, v92, &AnswerSection);
    if (!AnswerSection)
    {
      v14 = *(v11 + 152);
      if (v14)
      {
        CFRelease(v14);
        *(v11 + 152) = 0;
      }

      *(v11 + 287) = 0;
      if (*v92 >= 0xCuLL)
      {
        v15 = __rev16(v13[3]);
        if (v15)
        {
          v91 = 0;
          AnswerSection = DNSMessageGetAnswerSection(v13, *v92, &v91);
          if (!AnswerSection)
          {
            v16 = dispatch_group_create();
            v17 = 0;
            *v90 = v91;
            group = v16;
            v79 = *MEMORY[0x29EDBB840];
            while (1)
            {
              v88 = 0;
              v89 = 0;
              AnswerSection = _DNSMessageExtractRecordEx(v13, *v92, *v90, 0, 0, 0, 0, &v89, &v88, 0, 0, 0, 0, v90);
              if (AnswerSection)
              {
                goto LABEL_162;
              }

              v18 = v89;
              if (v89)
              {
                v19 = v88;
                if (v88 >= 2)
                {
                  if (*v89)
                  {
                    *buf = 0;
                    *&buf[8] = buf;
                    *&buf[16] = 0x2000000000;
                    LOBYTE(v119) = 0;
                    block = MEMORY[0x29EDCA5F8];
                    v110 = 0x40000000;
                    v111 = __dnssd_svcb_is_valid_block_invoke;
                    v112 = &unk_29EF09670;
                    v113 = buf;
                    _dnssd_svcb_extract_values(v89, v88, 0, &block);
                    v20 = *(*&buf[8] + 24);
                    _Block_object_dispose(buf, 8);
                    if ((v20 & 1) == 0)
                    {
                      v19 = v88;
                      v18 = v89;
                      if (v88 >= 2)
                      {
LABEL_29:
                        if (!*v18)
                        {
                          if (!v81)
                          {
                            v21 = v18 + 1;
                            if (v18 != -2 && (v18 + v19) > v21)
                            {
                              v22 = v18 + 1;
                              while (*v22)
                              {
                                v22 += *v22 + 1;
                                if (v22)
                                {
                                  v23 = v22 >= v18 + v19;
                                }

                                else
                                {
                                  v23 = 1;
                                }

                                if (v23)
                                {
                                  goto LABEL_33;
                                }
                              }

                              if ((v22 - v21 + 1) <= 0x100uLL)
                              {
                                _mdns_dns_service_manager_start_ddr_querier_ex(v12, v11);
                              }
                            }
                          }

                          goto LABEL_33;
                        }
                      }

                      v84 = 0;
                      v85 = &v84;
                      v86 = 0x2000000000;
                      v87 = 0;
                      v83[0] = MEMORY[0x29EDCA5F8];
                      v83[1] = 0x40000000;
                      v83[2] = ___mdns_dns_service_manager_process_ddr_response_block_invoke;
                      v83[3] = &unk_29EF08928;
                      v83[4] = &v84;
                      block = MEMORY[0x29EDCA5F8];
                      v110 = 0x40000000;
                      v111 = __dnssd_svcb_access_alpn_values_block_invoke;
                      v112 = &unk_29EF09710;
                      v113 = v83;
                      _dnssd_svcb_extract_values(v18, v19, 1, &block);
                      if (!*(v85 + 24))
                      {
                        goto LABEL_32;
                      }

                      if (v88 < 2)
                      {
                        goto LABEL_32;
                      }

                      v24 = v89;
                      v25 = v89 + 1;
                      if (v89 == -2 || (v89 + v88) <= v25)
                      {
                        goto LABEL_32;
                      }

                      v26 = v89 + 1;
                      while (*v26)
                      {
                        v26 = (v26 + *v26 + 1);
                        if (v26)
                        {
                          v27 = v26 >= (v89 + v88);
                        }

                        else
                        {
                          v27 = 1;
                        }

                        if (v27)
                        {
                          goto LABEL_32;
                        }
                      }

                      if ((v26 - v25 + 1) > 0x100uLL)
                      {
                        goto LABEL_32;
                      }

                      v28 = malloc_type_calloc(1uLL, 0x3F1uLL, 0x33987EBBuLL);
                      if (!v28)
                      {
                        __break(1u);
                        return;
                      }

                      LODWORD(v29) = *(v24 + 2);
                      v30 = v28;
                      if (*(v24 + 2) || (*v28 = 46, v30 = v28 + 1, LODWORD(v29) = *v25, *v25))
                      {
                        while (v29 <= 0x3F)
                        {
                          v31 = v25 + 1;
                          v32 = v25 + v29 + 1;
                          if (v32 >= (v24 + 129))
                          {
                            break;
                          }

                          if (v31 < v32)
                          {
                            v29 = v29;
                            do
                            {
                              v34 = *v31++;
                              v33 = v34;
                              if (v34 == 92 || v33 == 46)
                              {
                                *v30++ = 92;
                              }

                              else if (v33 <= 0x20)
                              {
                                *v30 = 12380;
                                v35 = (205 * v33) >> 11;
                                v30[2] = v35 | 0x30;
                                v30 += 3;
                                LOBYTE(v33) = (v33 - 10 * v35) | 0x30;
                              }

                              *v30++ = v33;
                              --v29;
                            }

                            while (v29);
                          }

                          *v30 = 0;
                          v36 = v25 + *v25;
                          *v30++ = 46;
                          v37 = v36[1];
                          v25 = (v36 + 1);
                          LODWORD(v29) = v37;
                          if (!v37)
                          {
                            goto LABEL_72;
                          }
                        }

LABEL_148:
                        free(v28);
LABEL_32:
                        _Block_object_dispose(&v84, 8);
                        goto LABEL_33;
                      }

LABEL_72:
                      *v30 = 0;
                      if (v30 == -1)
                      {
                        goto LABEL_148;
                      }

                      __s = v28;
                      is_empty = dnssd_svcb_service_name_is_empty(v89, v88);
                      v39 = __s;
                      p_block = __s;
                      if (is_empty)
                      {
                        if (!v81)
                        {
                          goto LABEL_147;
                        }

                        p_block = &block;
                        v41 = DomainNameToString(v81, 0, &block, 0);
                        v39 = __s;
                        if (v41)
                        {
                          goto LABEL_147;
                        }
                      }

                      v42 = strlen(p_block);
                      if (v42 && p_block[v42 - 1] == 46)
                      {
                        p_block[v42 - 1] = 0;
                      }

                      log = p_block;
                      configure_tls = 0;
                      p_configure_tls = &configure_tls;
                      v138 = 0x2000000000;
                      LOWORD(v139) = 0;
                      *buf = MEMORY[0x29EDCA5F8];
                      *&buf[8] = 0x40000000;
                      *&buf[16] = __dnssd_svcb_get_port_block_invoke;
                      *&v119 = &unk_29EF09698;
                      *(&v119 + 1) = &configure_tls;
                      _dnssd_svcb_extract_values(v89, v88, 3, buf);
                      v71 = *(p_configure_tls + 24);
                      _Block_object_dispose(&configure_tls, 8);
                      configure_tls = 0;
                      p_configure_tls = &configure_tls;
                      v138 = 0x2000000000;
                      v139 = 0;
                      *buf = MEMORY[0x29EDCA5F8];
                      *&buf[8] = 0x40000000;
                      *&buf[16] = __dnssd_svcb_copy_doh_path_block_invoke;
                      *&v119 = &unk_29EF096C0;
                      *(&v119 + 1) = &configure_tls;
                      _dnssd_svcb_extract_values(v89, v88, 7, buf);
                      v43 = *(p_configure_tls + 24);
                      _Block_object_dispose(&configure_tls, 8);
                      if (v43)
                      {
                        v44 = strchr(v43, 123);
                        if (v44)
                        {
                          *v44 = 0;
                        }
                      }

                      v82 = 0;
                      configure_tls = 0;
                      p_configure_tls = &configure_tls;
                      v138 = 0x2000000000;
                      v139 = 0;
                      *buf = MEMORY[0x29EDCA5F8];
                      *&buf[8] = 0x40000000;
                      *&buf[16] = __dnssd_svcb_copy_odoh_config_block_invoke;
                      *&v119 = &unk_29EF096E8;
                      *(&v119 + 1) = &configure_tls;
                      p_isa = &v82;
                      _dnssd_svcb_extract_values(v89, v88, 32769, buf);
                      v45 = *(p_configure_tls + 24);
                      _Block_object_dispose(&configure_tls, 8);
                      v46 = *(v85 + 24);
                      endpoint = v82;
                      if (v46 == 3 && v45 && v82)
                      {
                        v46 = 4;
                        *(v85 + 24) = 4;
                      }

                      v75 = v45;
                      configure_tls = 0;
                      p_configure_tls = &configure_tls;
                      v138 = 0x2000000000;
                      v139 = 0;
                      *buf = MEMORY[0x29EDCA5F8];
                      *&buf[8] = 0x40000000;
                      *&buf[16] = ___mdns_dns_service_get_discovered_alt_block_invoke;
                      *&v119 = &unk_29EF08990;
                      v74 = v46;
                      LOBYTE(v121) = v46;
                      p_isa = &log->isa;
                      *(&v119 + 1) = &configure_tls;
                      v47 = *(v11 + 144);
                      if (v47)
                      {
                        mdns_cfarray_enumerate(v47, buf);
                        v48 = *(p_configure_tls + 24);
                        _Block_object_dispose(&configure_tls, 8);
                        if (v48)
                        {
                          _mdns_dns_service_manager_add_pending_alt(v12, v11, v48);
                          if (!v43)
                          {
                            goto LABEL_144;
                          }

LABEL_143:
                          free(v43);
                          goto LABEL_144;
                        }
                      }

                      else
                      {
                        _Block_object_dispose(&configure_tls, 8);
                      }

                      if ((v74 - 2) > 2)
                      {
                        goto LABEL_107;
                      }

                      v69 = v43;
                      v49 = nw_resolver_config_create();
                      nw_resolver_config_set_class();
                      nw_resolver_config_set_protocol();
                      nw_resolver_config_set_provider_name();
                      if (v43)
                      {
                        nw_resolver_config_set_provider_path();
                      }

                      obj = v49;
                      if (v75 != 0 && endpoint != 0)
                      {
                        nw_resolver_config_set_odoh_config();
                      }

                      if (*(v11 + 104) || (v59 = *(v11 + 256)) != 0 && if_indextoname(v59, buf))
                      {
                        nw_resolver_config_set_interface_name();
                      }

                      configure_tls = 0;
                      p_configure_tls = 0;
                      MEMORY[0x29C299E10](&configure_tls);
                      nw_resolver_config_set_identifier();
                      if (v49)
                      {
                        if (nw_resolver_config_get_class() == 4)
                        {
                          LODWORD(configure_tls) = 0;
                          v50 = _mdns_dns_service_create_discovered_alt(v11, v49, v71, 0, 0, &configure_tls);
                          if (v50)
                          {
                            v51 = v50;
                            LODWORD(configure_tls) = _mdns_dns_service_manager_add_pending_alt(v12, v11, v50);
                            nw_release(obj);
                            os_release(v51);
                          }

                          else
                          {
                            if (_mdns_dns_service_log_s_once != -1)
                            {
                              dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                            }

                            v65 = _mdns_dns_service_log_s_log;
                            if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134217984;
                              *&buf[4] = configure_tls;
                              _os_log_error_impl(&dword_2990ED000, v65, OS_LOG_TYPE_ERROR, "Failed to create discovered oblivious DNS service -- error: %{mdns:err}ld", buf, 0xCu);
                            }

                            nw_release(obj);
                          }

                          if (v43)
                          {
                            goto LABEL_143;
                          }

LABEL_144:
                          if (v75)
                          {
                            free(v75);
                          }

                          v39 = __s;
LABEL_147:
                          v28 = v39;
                          goto LABEL_148;
                        }

                        if (_mdns_dns_service_log_s_once != -1)
                        {
                          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                        }

                        v54 = _mdns_dns_service_log_s_log;
                        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
                        {
                          *buf = 67109891;
                          v55 = "";
                          if (v43)
                          {
                            v55 = v43;
                          }

                          *&buf[4] = v74;
                          *&buf[8] = 2081;
                          *&buf[10] = log;
                          *&buf[18] = 1024;
                          *&buf[20] = v71;
                          LOWORD(v119) = 2081;
                          *(&v119 + 2) = v55;
                          _os_log_impl(&dword_2990ED000, v54, OS_LOG_TYPE_INFO, "Verifying discovered service -- type: %{mdns:dns_service_type}d, provider name: %{private}s, port: %d, path: %{private}s", buf, 0x22u);
                        }

                        aBlock[0] = MEMORY[0x29EDCA5F8];
                        aBlock[1] = 0x40000000;
                        aBlock[2] = ___mdns_dns_service_manager_register_discovered_service_block_invoke;
                        aBlock[3] = &__block_descriptor_tmp_223;
                        aBlock[4] = v11;
                        aBlock[5] = obj;
                        v95 = v71;
                        aBlock[6] = v12;
                        v108[0] = 0;
                        v108[1] = v108;
                        v108[2] = 0x2000000000;
                        v108[3] = 0;
                        v107[0] = 0;
                        v107[1] = v107;
                        v107[2] = 0x2000000000;
                        v107[3] = 0;
                        v105[0] = 0;
                        v105[1] = v105;
                        v105[2] = 0x2000000000;
                        v106 = 0;
                        endpointa = nw_endpoint_create_host_with_numeric_port();
                        configure_tls = MEMORY[0x29EDCA5F8];
                        p_configure_tls = 0x40000000;
                        v138 = ___mdns_dns_service_manager_probe_discovered_service_block_invoke;
                        v139 = &unk_29EF08A08;
                        v144 = v74;
                        v140 = v105;
                        v141 = v108;
                        v142 = v107;
                        v143 = log;
                        v56 = nw_parameters_create_secure_tcp(&configure_tls, v79);
                        v57 = *(v11 + 104);
                        if (v57 || (v60 = *(v11 + 256)) != 0 && (v57 = if_indextoname(v60, v135)) != 0)
                        {
                          if (_mdns_dns_service_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                          }

                          loga = _mdns_dns_service_log_s_log;
                          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(v130) = 136446210;
                            *(&v130 + 4) = v57;
                            _os_log_impl(&dword_2990ED000, loga, OS_LOG_TYPE_INFO, "Scoping discovered service to %{public}s", &v130, 0xCu);
                          }

                          v58 = nw_interface_create_with_name();
                          nw_parameters_require_interface(v56, v58);
                          if (v58)
                          {
                            nw_release(v58);
                          }
                        }

                        v101 = 0;
                        v102 = &v101;
                        v103 = 0x2000000000;
                        v104 = nw_connection_create(endpointa, v56);
                        if (endpointa)
                        {
                          nw_release(endpointa);
                        }

                        if (v56)
                        {
                          nw_release(v56);
                        }

                        v61 = v102[3];
                        if (_mdns_dns_service_queue_s_once != -1)
                        {
                          dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
                        }

                        nw_connection_set_queue(v61, _mdns_dns_service_queue_s_queue);
                        os_retain(v11);
                        dispatch_group_enter(group);
                        v99[0] = 0;
                        v99[1] = v99;
                        v99[2] = 0x2000000000;
                        v100 = 0;
                        v97[0] = 0;
                        v97[1] = v97;
                        v97[2] = 0x2000000000;
                        v98 = 0;
                        v96[0] = 0;
                        v96[1] = v96;
                        v96[2] = 0x2000000000;
                        v96[3] = 0;
                        *&v130 = 0;
                        *(&v130 + 1) = &v130;
                        v131 = 0x3002000000;
                        v132 = __Block_byref_object_copy_;
                        v133 = __Block_byref_object_dispose_;
                        v134 = _Block_copy(aBlock);
                        v62 = v102[3];
                        *buf = MEMORY[0x29EDCA5F8];
                        *&buf[8] = 0x40000000;
                        *&buf[16] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_231;
                        *&v119 = &unk_29EF08A58;
                        *(&v119 + 1) = &v101;
                        p_isa = v99;
                        v129 = v74;
                        v121 = v108;
                        v122 = v107;
                        v123 = v97;
                        v124 = v96;
                        v127 = v11;
                        v128 = group;
                        v125 = &v130;
                        v126 = v105;
                        nw_connection_set_state_changed_handler(v62, buf);
                        nw_connection_start(v102[3]);
                        v63 = v102[3];
                        if (*(v11 + 208) || (v64 = MEMORY[0x29C298F60](), (*(v11 + 208) = v64) != 0))
                        {
                          nw_array_append();
                        }

                        else
                        {
                          if (_mdns_dns_service_log_s_once != -1)
                          {
                            dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                          }

                          v66 = _mdns_dns_service_log_s_log;
                          if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                          {
                            v67 = *(v11 + 24);
                            *v116 = 134217984;
                            v117 = v67;
                            _os_log_error_impl(&dword_2990ED000, v66, OS_LOG_TYPE_ERROR, "Cancelling service's DDR verification connection because of lack of resources -- service id: %llu", v116, 0xCu);
                          }

                          nw_connection_cancel(v102[3]);
                        }

                        v43 = v69;
                        _Block_object_dispose(&v130, 8);
                        _Block_object_dispose(v96, 8);
                        _Block_object_dispose(v97, 8);
                        _Block_object_dispose(v99, 8);
                        _Block_object_dispose(&v101, 8);
                        _Block_object_dispose(v105, 8);
                        _Block_object_dispose(v107, 8);
                        _Block_object_dispose(v108, 8);
                      }

                      else
                      {
LABEL_107:
                        if (_mdns_dns_service_log_s_once != -1)
                        {
                          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                        }

                        v52 = _mdns_dns_service_log_s_log;
                        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109891;
                          v53 = "";
                          if (v43)
                          {
                            v53 = v43;
                          }

                          *&buf[4] = v74;
                          *&buf[8] = 2081;
                          *&buf[10] = log;
                          *&buf[18] = 1024;
                          *&buf[20] = v71;
                          LOWORD(v119) = 2081;
                          *(&v119 + 2) = v53;
                          _os_log_error_impl(&dword_2990ED000, v52, OS_LOG_TYPE_ERROR, "Failed to create discovered DNS config -- type: %{mdns:dns_service_type}d, provider name: %{private}s, port: %d, path: %{private}s", buf, 0x22u);
                          if (v43)
                          {
                            goto LABEL_143;
                          }

                          goto LABEL_144;
                        }
                      }

                      if (!v43)
                      {
                        goto LABEL_144;
                      }

                      goto LABEL_143;
                    }
                  }

                  else if ((dnssd_svcb_service_name_is_empty(v89, v88) & 1) == 0)
                  {
                    goto LABEL_29;
                  }
                }
              }

LABEL_33:
              if (++v17 == v15)
              {
                os_retain(v12);
                os_retain(v11);
                if (_mdns_dns_service_queue_s_once != -1)
                {
                  dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
                }

                block = MEMORY[0x29EDCA5F8];
                v110 = 0x40000000;
                v111 = ___mdns_dns_service_manager_process_ddr_response_block_invoke_2;
                v112 = &__block_descriptor_tmp_221;
                v113 = v11;
                v114 = v12;
                v115 = group;
                dispatch_group_notify(group, _mdns_dns_service_queue_s_queue, &block);
                goto LABEL_162;
              }
            }
          }
        }

        goto LABEL_163;
      }
    }

LABEL_162:
    if (v13)
    {
LABEL_163:
      free(v13);
    }
  }

LABEL_164:
  os_release(*(a1 + 48));
  os_release(*(a1 + 32));
  os_release(*(a1 + 40));
  v68 = *MEMORY[0x29EDCA608];
}