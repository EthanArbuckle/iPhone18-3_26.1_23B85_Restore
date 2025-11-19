void repeatingEventFinalizer(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      _Block_release(v3);
    }

    free(a1);
  }
}

uint64_t NERepeatingEventGetTimesFired(NSObject *a1)
{
  if (a1)
  {
    return *(dispatch_get_context(a1) + 3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

NSObject *NERepeatingEventGetIntervalInMilliseconds(NSObject *result)
{
  if (result)
  {
    return *dispatch_get_context(result);
  }

  return result;
}

void NERepeatingEventRelease(NSObject *a1)
{
  if (a1 && !dispatch_source_testcancel(a1))
  {

    dispatch_source_cancel(a1);
  }
}

NSObject *NECreateTimerSource(dispatch_queue_t queue, uint64_t a2, void *a3)
{
  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
  if (v5)
  {
    v6 = dispatch_time(0, 1000000000 * a2);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v5, a3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __NECreateTimerSource_block_invoke;
    handler[3] = &__block_descriptor_tmp_19;
    handler[4] = v5;
    dispatch_source_set_cancel_handler(v5, handler);
    dispatch_resume(v5);
  }

  return v5;
}

void __NECreateTimerSource_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

CFDataRef NECreateDataWithEncodedCString(_BYTE *a1, int a2)
{
  LOBYTE(v2) = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1;
  v7 = MEMORY[0x1E69E9830];
  do
  {
    if ((v2 & 0x80) != 0)
    {
      if (!__maskrune(v2, 0x4000uLL))
      {
        return 0;
      }
    }

    else
    {
      v8 = *(v7 + 4 * v2 + 60);
      if ((v8 & 0x10000) != 0)
      {
        ++v5;
      }

      else if ((v8 & 0x4000) == 0)
      {
        return 0;
      }
    }

    v2 = a1[v6++];
  }

  while (v2);
  if (!v5)
  {
    return 0;
  }

  if (v5)
  {
    return 0;
  }

  v9 = malloc_type_malloc(v5 >> 1, 0x6E45737BuLL);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *a1;
  if (*a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = a1 + 1;
    v15 = v9;
    do
    {
      if ((v11 & 0x80) == 0 && (*(v7 + 4 * v11 + 60) & 0x10000) != 0)
      {
        if (v13)
        {
          __str[1] = v11;
          __str[2] = 0;
          v16 = strtol(__str, 0, a2);
          v13 = 0;
          *v15++ = v16;
          ++v12;
        }

        else
        {
          __str[0] = v11;
          v13 = 1;
        }
      }

      v17 = *v14++;
      v11 = v17;
    }

    while (v17);
  }

  else
  {
    v12 = 0;
  }

  v19 = CFDataCreate(*MEMORY[0x1E695E480], v10, v12);
  free(v10);
  return v19;
}

const char *NECertificateStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E812B848[a1 - 1];
  }
}

uint64_t NECertificateDateIsValid(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = 4;
    goto LABEL_24;
  }

  SecCertificateNotValidBefore();
  v2 = v1;
  if (v1 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = CFDateCreate(*MEMORY[0x1E695E480], v1);
  }

  SecCertificateNotValidAfter();
  v6 = v5;
  if (v5 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = CFDateCreate(*MEMORY[0x1E695E480], v5);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current == 0.0)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = CFDateCreate(0, Current);
  v10 = v9;
  if (!v3 || !v9)
  {
LABEL_19:
    v4 = 1;
    if (!v3)
    {
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_35;
  }

  if (CFDateCompare(v9, v3, 0) == kCFCompareLessThan)
  {
    v14 = ne_log_obj();
    v4 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_DEBUG, "Current time before valid time", buf, 2u);
    }
  }

  else
  {
    if (!v7 || CFDateCompare(v10, v7, 0) != kCFCompareGreaterThan)
    {
      v4 = 1;
      goto LABEL_35;
    }

    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_DEBUG, "Current time after valid time", buf, 2u);
    }

    v4 = 3;
  }

  if (nelog_is_info_logging_enabled())
  {
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v15 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
    if (v15)
    {
      v16 = v15;
      CFCalendarDecomposeAbsoluteTime(v15, v2, "yMdHm", &v21 + 4, &v21, &v20 + 4, &v20, &v19);
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        v23 = HIDWORD(v21);
        v24 = 1024;
        v25 = v21;
        v26 = 1024;
        v27 = HIDWORD(v20);
        v28 = 1024;
        v29 = v20;
        v30 = 1024;
        v31 = v19;
        _os_log_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_INFO, "Certificate not valid before yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
      }

      CFCalendarDecomposeAbsoluteTime(v16, v6, "yMdHm", &v21 + 4, &v21, &v20 + 4, &v20, &v19);
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        v23 = HIDWORD(v21);
        v24 = 1024;
        v25 = v21;
        v26 = 1024;
        v27 = HIDWORD(v20);
        v28 = 1024;
        v29 = v20;
        v30 = 1024;
        v31 = v19;
        _os_log_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_INFO, "Certificate not valid after yr %d, mon %d, days %d, hours %d, min %d\n", buf, 0x20u);
      }

      CFRelease(v16);
    }
  }

LABEL_35:
  CFRelease(v3);
  if (v7)
  {
LABEL_21:
    CFRelease(v7);
  }

LABEL_22:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL NEIsInterfaceWIFI()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = socket(2, 2, 0);
  if (v0 < 0)
  {
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      close(v0);
      result = 0;
      goto LABEL_8;
    }

    LODWORD(v8[0]) = 136315138;
    *(v8 + 4) = "NEIsInterfaceWIFI";
    v3 = "%s: Failed to open socket";
    v4 = v8;
LABEL_10:
    _os_log_error_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
    goto LABEL_7;
  }

  memset(v8, 0, 44);
  __strlcpy_chk();
  if (ioctl(v0, 0xC02C6938uLL, v8) == -1)
  {
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 136315138;
    v7 = "NEIsInterfaceWIFI";
    v3 = "%s: Failed to get media";
    v4 = buf;
    goto LABEL_10;
  }

  close(v0);
  result = (v8[1] & 0xE0) == 128;
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

ifaddrs *NEGetInterfaceType(const char *a1, _BYTE *a2, BOOL *a3)
{
  v10 = 0;
  *a2 = 0;
  *a3 = 0;
  v6 = 0;
  if (!getifaddrs(&v10))
  {
    v7 = v10;
    if (v10)
    {
      v6 = v10;
      while (1)
      {
        ifa_name = v6->ifa_name;
        if (ifa_name)
        {
          if (!strcmp(ifa_name, a1))
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

      v6 = v6->ifa_addr->sa_data[2];
      if (v6 == 255)
      {
        *a2 = 0;
      }

      else if (v6 == 6)
      {
        *a2 = 1;
        *a3 = NEIsInterfaceWIFI();
        v7 = v10;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_13:
    MEMORY[0x1C68E5D60](v7);
  }

  return v6;
}

void *NECopyInterfaceAddress(const char *a1, int a2)
{
  v11 = 0;
  p_ifa_next = 0;
  if (getifaddrs(&v11))
  {
    return p_ifa_next;
  }

  v5 = v11;
  if (!v11)
  {
    p_ifa_next = 0;
    goto LABEL_15;
  }

  p_ifa_next = &v11->ifa_next;
  while (1)
  {
    v6 = p_ifa_next[1];
    if (!v6)
    {
      goto LABEL_9;
    }

    if (strcmp(v6, a1))
    {
      goto LABEL_9;
    }

    v7 = p_ifa_next[3];
    if (v7[1] != a2)
    {
      goto LABEL_9;
    }

    if (a2 == 2)
    {
      break;
    }

    if (a2 == 30)
    {
      v8 = 30;
      v9 = 8;
      goto LABEL_14;
    }

LABEL_9:
    p_ifa_next = *p_ifa_next;
    if (!p_ifa_next)
    {
      goto LABEL_15;
    }
  }

  v8 = 2;
  v9 = 4;
LABEL_14:
  p_ifa_next = NECreateAddressStringFromBuffer(&v7[v9], *v7, v8);
  v5 = v11;
LABEL_15:
  MEMORY[0x1C68E5D60](v5);
  return p_ifa_next;
}

uint64_t NEGetInterfaceForAddress(unsigned __int8 *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (v2 == 30)
  {
    if (*a1 <= 0x1Bu)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 2 && *a1 < 0x10u)
  {
LABEL_4:
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_ERROR, "Address passed to NEGetInterfaceForAddress is too short", buf, 2u);
    }

    goto LABEL_27;
  }

  v18 = 0;
  if (getifaddrs(&v18) < 0)
  {
    v11 = *__error();
    if (strerror_r(v11, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *v19 = 67109378;
      *v20 = v11;
      *&v20[4] = 2080;
      *&v20[6] = buf;
      _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, "getifaddrs failed: [%d] %s", v19, 0x12u);
    }

    goto LABEL_27;
  }

  v4 = v18;
  if (!v18)
  {
LABEL_27:
    v10 = 0;
    goto LABEL_28;
  }

  v5 = a1[1];
  while (1)
  {
    ifa_addr = v4->ifa_addr;
    if (v5 != ifa_addr->sa_family)
    {
      goto LABEL_19;
    }

    if (v5 == 30)
    {
      break;
    }

    if (v5 == 2 && *(a1 + 1) == *&ifa_addr->sa_data[2])
    {
      goto LABEL_29;
    }

LABEL_19:
    v4 = v4->ifa_next;
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  v8 = *&ifa_addr->sa_data[6];
  v7 = *&ifa_addr[1].sa_len;
  if (*(a1 + 1) != v8 || *(a1 + 2) != v7)
  {
    goto LABEL_19;
  }

LABEL_29:
  v10 = if_nametoindex(v4->ifa_name);
  if (!v10)
  {
    v15 = *__error();
    if (strerror_r(v15, buf, 0x80uLL))
    {
      buf[0] = 0;
    }

    v16 = ne_log_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      ifa_name = v4->ifa_name;
      *v19 = 136315650;
      *v20 = ifa_name;
      *&v20[8] = 1024;
      *&v20[10] = v15;
      v21 = 2080;
      v22 = buf;
      _os_log_fault_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_FAULT, "Failed to get an interface index for interface %s: [%d] %s", v19, 0x1Cu);
    }

LABEL_20:
    v10 = 0;
  }

  if (v18)
  {
    MEMORY[0x1C68E5D60]();
  }

LABEL_28:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t NEIsValidInterface(const char *a1)
{
  v7 = 0;
  if (getifaddrs(&v7))
  {
    return 0;
  }

  v3 = v7;
  if (v7)
  {
    v4 = v7;
    while (1)
    {
      ifa_name = v4->ifa_name;
      if (ifa_name)
      {
        if (!strcmp(ifa_name, a1))
        {
          break;
        }
      }

      v4 = v4->ifa_next;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v2 = 1;
  }

  else
  {
LABEL_8:
    v2 = 0;
  }

  MEMORY[0x1C68E5D60](v3);
  return v2;
}

BOOL NEIsWildcardAddress(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 == 30)
  {
    if (*a1 >= 0x1Cu && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 4))
    {
      v2 = 20;
      return *&a1[v2] == 0;
    }
  }

  else if (v1 == 2 && *a1 > 0xFu)
  {
    v2 = 4;
    return *&a1[v2] == 0;
  }

  return 0;
}

BOOL NEIsLoopbackAddress(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (v1 == 30)
  {
    if (*a1 >= 0x1Cu && !*(a1 + 2) && !*(a1 + 3) && !*(a1 + 4))
    {
      v2 = 0x1000000;
      v3 = 20;
      return *&a1[v3] == v2;
    }
  }

  else if (v1 == 2 && *a1 > 0xFu)
  {
    v2 = 16777343;
    v3 = 4;
    return *&a1[v3] == v2;
  }

  return 0;
}

uint64_t NEGetEntitlement(void *a1)
{
  if (a1)
  {
    if (MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9E50])
    {
      count = xpc_array_get_count(a1);
      if (count)
      {
        v5 = count;
        v2 = 0;
        v6 = 0;
        while (1)
        {
          string = xpc_array_get_string(a1, v6);
          if (string)
          {
            v8 = string;
            v9 = strlen(string);
            if (strncmp(v8, "packet-tunnel-provider", v9))
            {
              if (!strncmp(v8, "app-proxy-provider", v9))
              {
                goto LABEL_24;
              }

              if (!strncmp(v8, "content-filter-provider", v9))
              {
                goto LABEL_25;
              }

              if (!strncmp(v8, "dns-proxy", v9))
              {
                goto LABEL_26;
              }

              if (!strncmp(v8, "dns-settings", v9))
              {
                v2 = v2 | 0x40;
                goto LABEL_29;
              }

              if (!strncmp(v8, "relay", v9))
              {
                v2 = v2 | 0x80;
                goto LABEL_29;
              }

              if (strncmp(v8, "packet-tunnel-provider-systemextension", v9))
              {
                if (strncmp(v8, "app-proxy-provider-systemextension", v9))
                {
                  if (strncmp(v8, "content-filter-provider-systemextension", v9))
                  {
                    if (strncmp(v8, "dns-proxy-systemextension", v9))
                    {
                      if (!strncmp(v8, "app-push-provider", v9))
                      {
                        v2 = v2 | 0x20;
                      }

                      else if (!strncmp(v8, "hotspot-provider", v9))
                      {
                        v2 = v2 | 0x100;
                      }

                      else if (!strncmp(v8, "url-filter-provider", v9))
                      {
                        v2 = v2 | 0x200;
                      }

                      else
                      {
                        v2 = v2;
                      }

                      goto LABEL_29;
                    }

LABEL_26:
                    v2 = v2 | 0x10;
                    goto LABEL_29;
                  }

LABEL_25:
                  v2 = v2 | 4;
                  goto LABEL_29;
                }

LABEL_24:
                v2 = v2 | 2;
                goto LABEL_29;
              }
            }

            v2 = v2 | 1;
          }

LABEL_29:
          if (v5 == ++v6)
          {
            return v2;
          }
        }
      }
    }
  }

  return 0;
}

CFStringRef NECopySynthesizedIPv6Address(const __CFString *a1, int a2)
{
  v13 = 0;
  v4 = 0;
  if (NEGetAddressFamilyFromString(a1) != 30)
  {
    v12 = a2;
    v5 = nw_nat64_copy_prefixes();
    if (v5 < 1)
    {
      v4 = 0;
      v7 = 0;
    }

    else
    {
      v6 = v5;
      v7 = NECreateAddressStructFromString(a1, 0, 0);
      if (v7)
      {
        v8 = 0;
        v9 = 16 * v6;
        while (1)
        {
          *&v11.isa = xmmword_1C0DDAA50;
          *(&v11.info + 4) = *(&xmmword_1C0DDAA50 + 12);
          if (nw_nat64_synthesize_v6())
          {
            break;
          }

          v8 += 16;
          if (v9 == v8)
          {
            goto LABEL_7;
          }
        }

        v4 = NECreateAddressString(&v11);
      }

      else
      {
LABEL_7:
        v4 = 0;
      }
    }

    if (v13)
    {
      free(v13);
      v13 = 0;
    }

    if (v7)
    {
      free(v7);
    }
  }

  return v4;
}

const char *inputNotification2String(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "network changed";
  }

  else
  {
    return off_1E812B870[a1 - 1];
  }
}

void ne_filter_request_connection(os_unfair_lock_s *a1, unsigned int a2, int a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "ne_filter_request_connection";
      _os_log_fault_impl(&dword_1C0DA5000, v19, OS_LOG_TYPE_FAULT, "%s called with null completionHandler", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (a2 < 8)
  {
    os_unfair_lock_lock(a1 + 1);
    v10 = _Block_copy(a4);
    v11 = &a1[8 * a2];
    v12 = v11 + 2;
    v13 = *&v11[6]._os_unfair_lock_opaque;
    if (v13)
    {
      atomic_fetch_add(a1, 1u);
      dispatch_retain(v13);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = __ne_filter_request_connection_block_invoke;
      v24[3] = &unk_1E812B8A8;
      v24[4] = v10;
      v24[5] = a1;
      v24[6] = v12;
      v24[7] = v13;
      v14 = v24;
      v15 = v13;
    }

    else
    {
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create("Filter provider connection waiter queue", v16);
      *&v12[4]._os_unfair_lock_opaque = v17;
      dispatch_suspend(v17);
      atomic_fetch_add(a1, 1u);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = __ne_filter_request_connection_block_invoke_2;
      v23[3] = &unk_1E812B8D0;
      v23[5] = a1;
      v23[6] = v12;
      v23[4] = v10;
      if (ne_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
      }

      v15 = ne_filter_connection_queue_filter_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __ne_filter_request_connection_block_invoke_3;
      block[3] = &unk_1E812B8F8;
      v21 = a2;
      v22 = a3;
      block[4] = v23;
      block[5] = a1;
      v14 = block;
    }

    dispatch_async(v15, v14);
    os_unfair_lock_unlock(a1 + 1);
LABEL_12:
    v18 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = a4[2];
  v7 = *MEMORY[0x1E69E9840];

  v6(a4, 0);
}

void __ne_filter_request_connection_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  v2 = *(a1 + 48);
  if (!*v2)
  {
    v3 = v2[1] != 0;
  }

  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 56));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v4 = *(a1 + 40);

    free(v4);
  }
}

void __ne_filter_request_connection_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  dispatch_resume(*(*(a1 + 48) + 16));
  dispatch_release(*(*(a1 + 48) + 16));
  *(*(a1 + 48) + 16) = 0;
  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 40);

    free(v2);
  }
}

void __ne_filter_request_connection_block_invoke_3(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v1 < 8)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 52);
    os_unfair_lock_lock((v6 + 4));
    if (!*(v6 + 264))
    {
      if (!get_current_notify_pid())
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1C0DA5000, v16, OS_LOG_TYPE_ERROR, "Session manager not running, cannot filter", &buf, 2u);
        }

        os_unfair_lock_unlock((v6 + 4));
        v2[2](v2, 0);
        goto LABEL_18;
      }

      getpid();
      v8 = "com.apple.nesessionmanager.content-filter";
      if (sandbox_check())
      {
        v9 = ne_log_obj();
        v8 = "com.apple.nesessionmanager";
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "com.apple.nesessionmanager";
          _os_log_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_INFO, "Filter falling back to Mach service %s", &buf, 0xCu);
        }
      }

      atomic_fetch_add(v6, 1u);
      if (ne_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
      }

      mach_service = xpc_connection_create_mach_service(v8, ne_filter_connection_queue_filter_queue, 2uLL);
      xpc_connection_set_context(mach_service, v6);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __ne_filter_request_xpc_connection_block_invoke;
      handler[3] = &__block_descriptor_tmp_20;
      handler[4] = mach_service;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_activate(mach_service);
      *(v6 + 264) = mach_service;
    }

    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v11, "SessionClientType", 2);
    xpc_dictionary_set_int64(v11, "SessionConfigType", 4);
    xpc_dictionary_set_int64(v11, "command", 1);
    xpc_dictionary_set_uint64(v11, "control-unit", v7);
    v12 = _Block_copy(v2);
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v7;
      _os_log_debug_impl(&dword_1C0DA5000, v13, OS_LOG_TYPE_DEBUG, "Filter requesting xpc connection to control unit %u", &buf, 8u);
    }

    v14 = *(v6 + 264);
    if (ne_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
    }

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v19 = __ne_filter_request_xpc_connection_block_invoke_24;
    v20 = &unk_1E812B9C0;
    v23 = v7;
    v24 = v1;
    v21 = v12;
    v22 = v6;
    xpc_connection_send_message_with_reply(v14, v11, ne_filter_connection_queue_filter_queue, &buf);
    xpc_release(v11);
    os_unfair_lock_unlock((v6 + 4));
LABEL_18:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = v2[2];
  v4 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);

  v3(v5, 0);
}

void __ne_filter_request_xpc_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  context = xpc_connection_get_context(*(a1 + 32));
  if (a2)
  {
    v5 = context;
    if (context)
    {
      if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
      {
        xpc_connection_set_context(*(a1 + 32), 0);
        os_unfair_lock_lock(v5 + 1);
        v6 = *(v5 + 33);
        if (v6)
        {
          xpc_connection_cancel(v6);
          xpc_release(*(v5 + 33));
          *(v5 + 33) = 0;
        }

        os_unfair_lock_unlock(v5 + 1);
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {

          free(v5);
        }
      }
    }
  }
}

void __ne_filter_request_xpc_connection_block_invoke_24(uint64_t a1, xpc_object_t xdict)
{
  v30 = *MEMORY[0x1E69E9840];
  length = 0;
  if (xdict && MEMORY[0x1C68E6D80](xdict) == MEMORY[0x1E69E9E98])
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = *(a1 + 48);
    string = xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
    *buf = 67109378;
    v27 = v12;
    v28 = 2080;
    v29 = string;
    v14 = "Filter got an error on the XPC connection when requesting endpoint to control unit %u: %s";
    goto LABEL_32;
  }

  value = xpc_dictionary_get_value(xdict, "new-connection");
  if (!value)
  {
    int64 = xpc_dictionary_get_int64(xdict, "error");
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 48);
    if ((int64 - 1) > 4)
    {
      v11 = "None";
    }

    else
    {
      v11 = off_1E812B9E0[int64 - 1];
    }

    *buf = 67109378;
    v27 = v10;
    v28 = 2080;
    v29 = v11;
    v14 = "Filter failed to get endpoint to control unit %u: %s";
LABEL_32:
    _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
    goto LABEL_12;
  }

  v5 = xpc_connection_create_from_endpoint(value);
  if (v5)
  {
    v6 = v5;
    data = xpc_dictionary_get_data(xdict, "crypto-key", &length);
    goto LABEL_13;
  }

  v15 = xpc_dictionary_get_int64(xdict, "error");
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 48);
    if ((v15 - 1) > 4)
    {
      v23 = "None";
    }

    else
    {
      v23 = off_1E812B9E0[v15 - 1];
    }

    *buf = 67109378;
    v27 = v22;
    v28 = 2080;
    v29 = v23;
    v14 = "Filter failed to create connection to unit %u: %s";
    goto LABEL_32;
  }

LABEL_12:
  data = 0;
  v6 = 0;
LABEL_13:
  os_unfair_lock_lock((*(a1 + 40) + 4));
  v16 = *(a1 + 40) + 32 * *(a1 + 52);
  *(v16 + 8) = v6;
  v17 = v16 + 8;
  if (v6)
  {
    atomic_fetch_add(*(a1 + 40), 1u);
    if (ne_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
    }

    xpc_connection_set_target_queue(v6, ne_filter_connection_queue_filter_queue);
    xpc_connection_set_context(v6, *(a1 + 40));
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_filter_request_xpc_connection_block_invoke_28;
    handler[3] = &__block_descriptor_tmp_29_412;
    handler[4] = v6;
    handler[5] = *(a1 + 48);
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(v6);
  }

  if (data && length == 32)
  {
    inited = ne_filter_crypto_init_client(data);
    *(v17 + 24) = inited;
    if (!inited)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = "Filter failed to init client crypto";
LABEL_25:
        _os_log_error_impl(&dword_1C0DA5000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
      }
    }
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Filter failed to retrieve client crypto key";
      goto LABEL_25;
    }
  }

  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v21 = *MEMORY[0x1E69E9840];
}

void __ne_filter_request_xpc_connection_block_invoke_28(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  context = xpc_connection_get_context(*(a1 + 32));
  if (!context)
  {
    goto LABEL_19;
  }

  v5 = context;
  if (a2 && MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 40);
      v20[0] = 67109120;
      v20[1] = v19;
      _os_log_error_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_ERROR, "Got an error on the Filter XPC connection to unit %u", v20, 8u);
    }

    xpc_connection_set_context(*(a1 + 32), 0);
    os_unfair_lock_lock(v5 + 1);
    v11 = &v5[32 * *(a1 + 44)];
    v14 = *(v11 + 1);
    v13 = v11 + 8;
    v12 = v14;
    if (v14)
    {
      xpc_connection_cancel(v12);
      xpc_release(*v13);
      *v13 = 0;
    }

    v15 = *(v13 + 3);
    if (v15)
    {
      free(v15);
      *(v13 + 3) = 0;
    }

    os_unfair_lock_unlock(v5 + 1);
    if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      free(v5);
    }

    goto LABEL_19;
  }

  uuid = xpc_dictionary_get_uuid(a2, "flow-uuid");
  if (!uuid)
  {
LABEL_19:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = uuid;
  os_unfair_lock_lock(v5 + 1);
  v8 = *(v5 + 34);
  if (v8)
  {
    while (uuid_compare(v7, v8))
    {
      v8 = *(v8 + 184);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    ne_filter_protocol_retain(v8);
    os_unfair_lock_unlock(v5 + 1);
    v17 = *(a1 + 40);
    ne_filter_protocol_handle_message(v8, a2);
    v18 = *MEMORY[0x1E69E9840];

    ne_filter_protocol_release(v8);
  }

  else
  {
LABEL_8:
    v9 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(v5 + 1);
  }
}

dispatch_queue_t __ne_filter_connection_queue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("ne.filter", v0);
  ne_filter_connection_queue_filter_queue = result;
  return result;
}

uint64_t ne_filter_copy_connection(os_unfair_lock_s *a1, unsigned int a2)
{
  if (a2 > 7)
  {
    return 0;
  }

  os_unfair_lock_lock(a1 + 1);
  v5 = &a1[8 * a2];
  v2 = *&v5[2]._os_unfair_lock_opaque;
  if (v2)
  {
    xpc_retain(*&v5[2]._os_unfair_lock_opaque);
  }

  os_unfair_lock_unlock(a1 + 1);
  return v2;
}

BOOL ne_filter_sign_data(os_unfair_lock_s *a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, _DWORD *a11)
{
  v11 = 0;
  if (a1 && a2 <= 7)
  {
    os_unfair_lock_lock(a1 + 1);
    v20 = *&a1[8 * a2 + 8]._os_unfair_lock_opaque;
    if (v20)
    {
      v11 = ne_filter_crypto_sign_data(v20, a3, a4, a5, a6, a7, a8, a9, a10, a11) == 0;
    }

    else
    {
      v11 = 1;
    }

    os_unfair_lock_unlock(a1 + 1);
  }

  return v11;
}

void ne_filter_send_message(os_unfair_lock_s *a1, unsigned int a2, void *a3, void *a4)
{
  v6 = ne_filter_copy_connection(a1, a2);
  if (v6)
  {
    v7 = v6;
    if (a4)
    {
      if (ne_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_filter_connection_queue_onceToken, &__block_literal_global_392);
      }

      xpc_connection_send_message_with_reply(v7, a3, ne_filter_connection_queue_filter_queue, a4);
    }

    else
    {
      xpc_connection_send_message(v6, a3);
    }

    xpc_release(v7);
  }
}

uint64_t ne_filter_stats_init(uint64_t a1)
{
  *(a1 + 288) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("Filter stats reporting queue", v2);
  *(a1 + 312) = 0;
  *(a1 + 320) = v3;
  *(a1 + 296) = 0;
  *(a1 + 304) = a1 + 296;
  info = 0;
  result = mach_timebase_info(&info);
  v5 = 1000000;
  if (!result && info.numer && info.denom)
  {
    v5 = ((1000000000 * info.denom / info.numer * 0x20C49BA5E353F7CFuLL) >> 64) >> 7;
  }

  *(a1 + 328) = v5;
  return result;
}

_OWORD *ne_filter_allocate_globals()
{
  v0 = malloc_type_malloc(0x150uLL, 0x10A00403A9E6ACAuLL);
  v1 = v0;
  if (v0)
  {
    v0[19] = 0u;
    v0[20] = 0u;
    v0[17] = 0u;
    v0[18] = 0u;
    v0[15] = 0u;
    v0[16] = 0u;
    v0[13] = 0u;
    v0[14] = 0u;
    v0[11] = 0u;
    v0[12] = 0u;
    v0[9] = 0u;
    v0[10] = 0u;
    v0[7] = 0u;
    v0[8] = 0u;
    v0[5] = 0u;
    v0[6] = 0u;
    v0[3] = 0u;
    v0[4] = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
    atomic_fetch_add(v0, 1u);
    *(v0 + 34) = 0;
    *(v0 + 35) = v0 + 17;
    ne_filter_stats_init(v0);
  }

  return v1;
}

void ne_filter_deallocate_globals(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 288));
  dispatch_release(*(a2 + 320));
  v3 = *(a2 + 312);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(a2 + 312));
    *(a2 + 312) = 0;
  }

  os_unfair_lock_unlock((a2 + 288));
  if (atomic_fetch_add(a2, 0xFFFFFFFF) == 1)
  {

    free(a2);
  }
}

void *ne_filter_set_test_provider_factory(void *result)
{
  if (result)
  {
    result = _Block_copy(result);
    g_testProviderFactory = result;
  }

  return result;
}

void ne_filter_register_flow(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  os_unfair_lock_lock((a1 + 4));
  v4 = *(a1 + 272);
  *(v3 + 184) = v4;
  if (v4)
  {
    v5 = (v4 + 192);
  }

  else
  {
    v5 = (a1 + 280);
  }

  *v5 = v3 + 184;
  *(a1 + 272) = v3;
  *(v3 + 192) = a1 + 272;
  *(v3 + 120) |= 0x10000u;

  os_unfair_lock_unlock((a1 + 4));
}

void ne_filter_unregister_flow(os_unfair_lock_s *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (*(v2 + 122))
  {
    os_unfair_lock_lock(a1 + 1);
    v4 = *(v2 + 184);
    v5 = *(v2 + 192);
    v6 = a1 + 70;
    if (v4)
    {
      v6 = v4 + 48;
    }

    *&v6->_os_unfair_lock_opaque = v5;
    *v5 = v4;
    *(v2 + 120) &= ~0x10000u;

    os_unfair_lock_unlock(a1 + 1);
  }
}

void ne_filter_stats_report(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(v37, 0, sizeof(v37));
  v2 = mach_absolute_time();
  os_unfair_lock_lock((a1 + 288));
  v3 = *(a1 + 296);
  if (!v3)
  {
    goto LABEL_29;
  }

  do
  {
    v4 = *(v3 + 144);
    if (!v4)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v5 = atomic_load((v3 + 104));
      v6 = atomic_load((v3 + 112));
      v7 = *(v4 + 4);
      if (v7 > 7)
      {
        goto LABEL_20;
      }

      if (!*(v4 + 80))
      {
        goto LABEL_20;
      }

      v8 = (v2 - *(v4 + 136)) / *(a1 + 328);
      if (v8 <= (*(v4 + 80) * 0.95) || *(v4 + 120) >= v5 && *(v4 + 128) >= v6)
      {
        goto LABEL_20;
      }

      if (!*(v37 + v7))
      {
        break;
      }

LABEL_11:
      v10 = xpc_dictionary_create(0, 0, 0);
      if (!v10)
      {
        v17 = ne_log_obj();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v18 = v17;
        v19 = "Stats Report - failed to create xpc dictionary for stats message";
        goto LABEL_28;
      }

      v11 = v10;
      xpc_dictionary_set_uuid(v10, "flow-uuid", v3);
      xpc_dictionary_set_uint64(v11, "byte-count-inbound", v5);
      xpc_dictionary_set_uint64(v11, "byte-count-outbound", v6);
      if ((*(v4 + 144) & 0x100) == 0)
      {
        v12 = *(v3 + 64);
        if (v12)
        {
          if (nw_endpoint_get_type(v12) == nw_endpoint_type_address)
          {
            address = nw_endpoint_get_address(*(v3 + 64));
            if (address)
            {
              xpc_dictionary_set_data(v11, "local-addr", address, address->sa_len);
              *(v4 + 144) |= 0x100u;
            }
          }
        }
      }

      xpc_array_append_value(*(v37 + *(v4 + 4)), v11);
      xpc_release(v11);
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(v4 + 4);
        v16 = *(v4 + 136);
        *buf = 67110144;
        v28 = v15;
        v29 = 2048;
        v30 = v5;
        v31 = 2048;
        v32 = v6;
        v33 = 2048;
        v34 = v16;
        v35 = 2048;
        v36 = v8;
        _os_log_debug_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_DEBUG, "Stats Report collected (client %d) - in %llu out %llu (client ts %llu - elapsed msecs %llu)", buf, 0x30u);
      }

      *(v4 + 120) = v5;
      *(v4 + 128) = v6;
      *(v4 + 136) = mach_absolute_time();
LABEL_20:
      v4 = *(v4 + 152);
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    v9 = xpc_array_create(0, 0);
    if (v9)
    {
      *(v37 + *(v4 + 4)) = v9;
      goto LABEL_11;
    }

    v20 = ne_log_obj();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v18 = v20;
    v19 = "Stats Report - failed to create xpc array for stats message";
LABEL_28:
    _os_log_error_impl(&dword_1C0DA5000, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
LABEL_25:
    v3 = *(v3 + 200);
  }

  while (v3);
LABEL_29:
  for (i = 0; i != 8; ++i)
  {
    v22 = *(v37 + i);
    if (v22)
    {
      v23 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v23, "command", 12);
      xpc_dictionary_set_value(v23, "stats-report-statistics", v22);
      ne_filter_send_message(a1, i, v23, 0);
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        count = xpc_array_get_count(v22);
        *buf = 67109376;
        v28 = i;
        v29 = 2048;
        v30 = count;
        _os_log_debug_impl(&dword_1C0DA5000, v24, OS_LOG_TYPE_DEBUG, "Stats Report (client %d) - reported %zu stats", buf, 0x12u);
      }

      xpc_release(v23);
      xpc_release(v22);
    }
  }

  os_unfair_lock_unlock((a1 + 288));
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t ne_filter_stats_report_register(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  os_unfair_lock_lock((a1 + 288));
  v4 = *(a1 + 296);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = 0;
  do
  {
    v5 |= v4 == v3;
    v4 = *(v4 + 200);
  }

  while (v4);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
LABEL_6:
    *(v3 + 200) = 0;
    v7 = *(a1 + 304);
    *(v3 + 208) = v7;
    *v7 = v3;
    *(a1 + 304) = v3 + 200;
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_DEBUG, "Stats toggle - INSERTED flow", buf, 2u);
    }

    v6 = 1;
  }

  if (*(a1 + 296) && !*(a1 + 312))
  {
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 320));
    *(a1 + 312) = v9;
    if (v9)
    {
      atomic_fetch_add(a1, 1u);
      v10 = *(a1 + 312);
      v11 = dispatch_time(0, 200000000);
      dispatch_source_set_timer(v10, v11, 0xBEBC200uLL, 0);
      v12 = *(a1 + 312);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __ne_filter_stats_report_register_block_invoke;
      handler[3] = &__block_descriptor_tmp_12_436;
      handler[4] = a1;
      dispatch_source_set_event_handler(v12, handler);
      v13 = *(a1 + 312);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = __ne_filter_stats_report_register_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_13_437;
      v16[4] = a1;
      dispatch_source_set_cancel_handler(v13, v16);
      dispatch_activate(*(a1 + 312));
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_ERROR, "ne_filter_stats_report_register - dispatch_source_create failed", buf, 2u);
      }
    }
  }

  os_unfair_lock_unlock((a1 + 288));
  return v6;
}

void __ne_filter_stats_report_register_block_invoke_2(uint64_t a1)
{
  if (atomic_fetch_add(*(a1 + 32), 0xFFFFFFFF) == 1)
  {
    free(*(a1 + 32));
  }
}

uint64_t ne_filter_stats_report_unregister(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  os_unfair_lock_lock((a1 + 288));
  v4 = *(a1 + 296);
  if (v4)
  {
    v5 = 0;
    do
    {
      v5 |= v4 == v3;
      v4 = *(v4 + 200);
    }

    while (v4);
    if (v5)
    {
      v6 = *(v3 + 200);
      v7 = *(v3 + 208);
      v8 = (a1 + 304);
      if (v6)
      {
        v8 = (v6 + 208);
      }

      *v8 = v7;
      *v7 = v6;
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 0;
        _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "Stats toggle - REMOVED flow", v12, 2u);
      }
    }

    if (!*(a1 + 296))
    {
      v10 = *(a1 + 312);
      if (v10)
      {
        dispatch_source_cancel(v10);
        dispatch_release(*(a1 + 312));
        *(a1 + 312) = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((a1 + 288));
  return v5 & 1;
}

void ne_url_filter_request_connection(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = a3[2];

    v4(a3, 0);
  }

  else
  {
    os_unfair_lock_lock((a1 + 4));
    v6 = _Block_copy(a3);
    v7 = *(a1 + 16);
    if (v7)
    {
      atomic_fetch_add(a1, 1u);
      dispatch_retain(v7);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = __ne_url_filter_request_connection_block_invoke;
      v15[3] = &unk_1E812BA10;
      v15[4] = v6;
      v15[5] = a1;
      v15[6] = a1 + 8;
      v15[7] = v7;
      v8 = v15;
      v9 = v7;
    }

    else
    {
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("URL Filter provider connection waiter queue", v10);
      *(a1 + 16) = v11;
      dispatch_suspend(v11);
      atomic_fetch_add(a1, 1u);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __ne_url_filter_request_connection_block_invoke_2;
      v14[3] = &unk_1E812BA38;
      v14[5] = a1;
      v14[6] = a1 + 8;
      v14[4] = v6;
      if (ne_url_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
      }

      v9 = ne_url_filter_connection_queue_url_filter_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __ne_url_filter_request_connection_block_invoke_3;
      block[3] = &unk_1E812BA60;
      v13 = 0;
      block[4] = v14;
      block[5] = a1;
      v8 = block;
    }

    dispatch_async(v9, v8);
    os_unfair_lock_unlock((a1 + 4));
  }
}

void __ne_url_filter_request_connection_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  v2 = **(a1 + 48) != 0;
  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_release(*(a1 + 56));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v3 = *(a1 + 40);

    free(v3);
  }
}

void __ne_url_filter_request_connection_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 40) + 4));
  dispatch_resume(*(*(a1 + 48) + 8));
  dispatch_release(*(*(a1 + 48) + 8));
  *(*(a1 + 48) + 8) = 0;
  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  if (atomic_fetch_add(*(a1 + 40), 0xFFFFFFFF) == 1)
  {
    v2 = *(a1 + 40);

    free(v2);
  }
}

void __ne_url_filter_request_connection_block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  os_unfair_lock_lock((v2 + 4));
  if (v1)
  {
    goto LABEL_15;
  }

  if (*(v2 + 24))
  {
    goto LABEL_10;
  }

  if (get_current_notify_pid())
  {
    getpid();
    v4 = "com.apple.nesessionmanager.content-filter";
    if (sandbox_check())
    {
      v5 = ne_log_obj();
      v4 = "com.apple.nesessionmanager";
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "ne_url_filter_request_xpc_connection";
        *&buf[12] = 2080;
        *&buf[14] = "com.apple.nesessionmanager";
        _os_log_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_INFO, "%s: URL Filter falling back to Mach service %s", buf, 0x16u);
      }
    }

    atomic_fetch_add(v2, 1u);
    if (ne_url_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
    }

    mach_service = xpc_connection_create_mach_service(v4, ne_url_filter_connection_queue_url_filter_queue, 2uLL);
    xpc_connection_set_context(mach_service, v2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_url_filter_request_xpc_connection_block_invoke;
    handler[3] = &__block_descriptor_tmp_42_451;
    handler[4] = mach_service;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(mach_service);
    *(v2 + 24) = mach_service;
LABEL_10:
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "SessionClientType", 2);
    xpc_dictionary_set_int64(v7, "SessionConfigType", 10);
    xpc_dictionary_set_int64(v7, "command", 1);
    v8 = _Block_copy(v3);
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "ne_url_filter_request_xpc_connection";
      _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "%s: URL Filter requesting xpc connection", buf, 0xCu);
    }

    v10 = *(v2 + 24);
    if (ne_url_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __ne_url_filter_request_xpc_connection_block_invoke_45;
    v15 = &unk_1E812BC28;
    v16 = v8;
    v17 = v2;
    xpc_connection_send_message_with_reply(v10, v7, ne_url_filter_connection_queue_url_filter_queue, buf);
    xpc_release(v7);
    os_unfair_lock_unlock((v2 + 4));
    goto LABEL_15;
  }

  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "ne_url_filter_request_xpc_connection";
    _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, "%s: Session manager not running, cannot filter", buf, 0xCu);
  }

  os_unfair_lock_unlock((v2 + 4));
  v3[2](v3, 0);
LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
}

void __ne_url_filter_request_xpc_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  context = xpc_connection_get_context(*(a1 + 32));
  if (a2)
  {
    v5 = context;
    if (context)
    {
      if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
      {
        xpc_connection_set_context(*(a1 + 32), 0);
        os_unfair_lock_lock(v5 + 1);
        v6 = *(v5 + 3);
        if (v6)
        {
          xpc_connection_cancel(v6);
          xpc_release(*(v5 + 3));
          *(v5 + 3) = 0;
        }

        os_unfair_lock_unlock(v5 + 1);
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {

          free(v5);
        }
      }
    }
  }
}

void __ne_url_filter_request_xpc_connection_block_invoke_45(uint64_t a1, xpc_object_t xdict)
{
  v19 = *MEMORY[0x1E69E9840];
  if (xdict && MEMORY[0x1C68E6D80](xdict) == MEMORY[0x1E69E9E98])
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      string = xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
      *buf = 136315394;
      v16 = "ne_url_filter_request_xpc_connection_block_invoke";
      v17 = 2080;
      v18 = string;
      v13 = "%s: URL Filter got an error on the XPC connection when requesting endpoint: %s";
LABEL_23:
      _os_log_error_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
    }
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "new-connection");
    if (value)
    {
      v5 = xpc_connection_create_from_endpoint(value);
      if (v5)
      {
        goto LABEL_13;
      }

      int64 = xpc_dictionary_get_int64(xdict, "error");
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if ((int64 - 1) > 3)
        {
          v8 = "None";
        }

        else
        {
          v8 = off_1E812BCB8[int64 - 1];
        }

        *buf = 136315394;
        v16 = "ne_url_filter_request_xpc_connection_block_invoke";
        v17 = 2080;
        v18 = v8;
        v13 = "%s: URL Filter failed to create connection: %s";
        goto LABEL_23;
      }
    }

    else
    {
      v9 = xpc_dictionary_get_int64(xdict, "error");
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if ((v9 - 1) > 3)
        {
          v10 = "None";
        }

        else
        {
          v10 = off_1E812BCB8[v9 - 1];
        }

        *buf = 136315394;
        v16 = "ne_url_filter_request_xpc_connection_block_invoke";
        v17 = 2080;
        v18 = v10;
        v13 = "%s: URL Filter failed to get endpoint: %s";
        goto LABEL_23;
      }
    }
  }

  v5 = 0;
LABEL_13:
  os_unfair_lock_lock((*(a1 + 40) + 4));
  *(*(a1 + 40) + 8) = v5;
  if (v5)
  {
    atomic_fetch_add(*(a1 + 40), 1u);
    if (ne_url_filter_connection_queue_onceToken != -1)
    {
      dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
    }

    xpc_connection_set_target_queue(v5, ne_url_filter_connection_queue_url_filter_queue);
    xpc_connection_set_context(v5, *(a1 + 40));
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __ne_url_filter_request_xpc_connection_block_invoke_47;
    handler[3] = &__block_descriptor_tmp_48_463;
    handler[4] = v5;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_activate(v5);
  }

  os_unfair_lock_unlock((*(a1 + 40) + 4));
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
}

void __ne_url_filter_request_xpc_connection_block_invoke_47(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  context = xpc_connection_get_context(*(a1 + 32));
  if (a2)
  {
    v5 = context;
    if (context)
    {
      if (MEMORY[0x1C68E6D80](a2) == MEMORY[0x1E69E9E98])
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315138;
          v10 = "ne_url_filter_request_xpc_connection_block_invoke";
          _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "%s: Got an error on the URL Filter XPC connection", &v9, 0xCu);
        }

        xpc_connection_set_context(*(a1 + 32), 0);
        os_unfair_lock_lock(v5 + 1);
        v7 = *(v5 + 1);
        if (v7)
        {
          xpc_connection_cancel(v7);
          xpc_release(*(v5 + 1));
          *(v5 + 1) = 0;
        }

        os_unfair_lock_unlock(v5 + 1);
        if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          free(v5);
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t __ne_url_filter_connection_queue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("ne.urlfilter", v0);
  ne_url_filter_connection_queue_url_filter_queue = result;
  return result;
}

void ne_url_filter_send_message(uint64_t a1, int a2, void *a3, void *a4)
{
  v6 = ne_url_filter_copy_connection(a1, a2);
  if (v6)
  {
    v7 = v6;
    if (a4)
    {
      if (ne_url_filter_connection_queue_onceToken != -1)
      {
        dispatch_once(&ne_url_filter_connection_queue_onceToken, &__block_literal_global_443);
      }

      xpc_connection_send_message_with_reply(v7, a3, ne_url_filter_connection_queue_url_filter_queue, a4);
    }

    else
    {
      xpc_connection_send_message(v6, a3);
    }

    xpc_release(v7);
  }
}

uint64_t ne_url_filter_copy_connection(uint64_t a1, int a2)
{
  if (a2)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 4));
  v2 = *(a1 + 8);
  if (v2)
  {
    xpc_retain(*(a1 + 8));
  }

  os_unfair_lock_unlock((a1 + 4));
  return v2;
}

BOOL ne_url_filter_should_fail_closed()
{
  v13 = *MEMORY[0x1E69E9840];
  check = 0;
  v0 = ne_url_filter_should_fail_closed_current_info_token;
  if (ne_url_filter_should_fail_closed_current_info_token < 0)
  {
    if (notify_register_check("com.apple.private.restrict-post.nesessionmanager.url-filter-fail-closed", &ne_url_filter_should_fail_closed_current_info_token))
    {
      goto LABEL_6;
    }

    v0 = ne_url_filter_should_fail_closed_current_info_token;
    v5 = 0;
    if (ne_url_filter_should_fail_closed_current_info_token < 0)
    {
      v1 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  if (notify_check(v0, &check))
  {
LABEL_4:
    notify_cancel(ne_url_filter_should_fail_closed_current_info_token);
LABEL_6:
    v1 = 0;
    ne_url_filter_should_fail_closed_current_info_token = -1;
    v5 = 0;
    goto LABEL_7;
  }

  if (check)
  {
    if (notify_get_state(ne_url_filter_should_fail_closed_current_info_token, &v5))
    {
      goto LABEL_4;
    }

    v1 = v5;
  }

  else
  {
    v1 = ne_url_filter_should_fail_closed_current_shouldFailClosed;
    v5 = ne_url_filter_should_fail_closed_current_shouldFailClosed;
  }

LABEL_7:
  if (v1 != ne_url_filter_should_fail_closed_current_shouldFailClosed)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "ne_url_filter_should_fail_closed";
      v9 = 2048;
      v10 = ne_url_filter_should_fail_closed_current_shouldFailClosed;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEFAULT, "%s: URL Filter shouldfailClosed changed from %llu to %llu", buf, 0x20u);
    }

    v1 = v5;
    ne_url_filter_should_fail_closed_current_shouldFailClosed = v5;
  }

  result = v1 != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL ne_url_prefilter_check_info_changed()
{
  v14 = *MEMORY[0x1E69E9840];
  check = 0;
  v0 = ne_url_prefilter_check_info_changed_current_info_token;
  if (ne_url_prefilter_check_info_changed_current_info_token < 0)
  {
    if (notify_register_check("com.apple.private.restrict-post.nesessionmanager.url-prefilter-ready", &ne_url_prefilter_check_info_changed_current_info_token))
    {
      goto LABEL_6;
    }

    v0 = ne_url_prefilter_check_info_changed_current_info_token;
    v6 = 0;
    if (ne_url_prefilter_check_info_changed_current_info_token < 0)
    {
      v1 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  if (notify_check(v0, &check))
  {
LABEL_4:
    notify_cancel(ne_url_prefilter_check_info_changed_current_info_token);
LABEL_6:
    v1 = 0;
    ne_url_prefilter_check_info_changed_current_info_token = -1;
    v6 = 0;
    goto LABEL_7;
  }

  if (check)
  {
    if (notify_get_state(ne_url_prefilter_check_info_changed_current_info_token, &v6))
    {
      goto LABEL_4;
    }

    v1 = v6;
  }

  else
  {
    v1 = ne_url_prefilter_check_info_changed_current_timestamp;
    v6 = ne_url_prefilter_check_info_changed_current_timestamp;
  }

LABEL_7:
  v2 = ne_url_prefilter_check_info_changed_current_timestamp;
  if (v1 != ne_url_prefilter_check_info_changed_current_timestamp)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v9 = "ne_url_prefilter_check_info_changed";
      v10 = 2048;
      v11 = ne_url_prefilter_check_info_changed_current_timestamp;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_DEFAULT, "%s: Prefilter info timestamp changed from %llu to %llu", buf, 0x20u);
    }

    ne_url_prefilter_check_info_changed_current_timestamp = v6;
  }

  result = v1 != v2;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL ne_url_prefilter_contains(_BOOL8 result, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "ne_url_prefilter_contains";
      v11 = 2080;
      v12 = v3;
      _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "%s: checking prefilter for url <%s>", &v9, 0x16u);
    }

    os_unfair_lock_lock(&ne_url_prefilter_lock);
    if (g_bloom_filter_ready != 1 || ne_url_prefilter_check_info_changed())
    {
      g_bloom_filter_ready = 0;
      if (!ne_bloom_filter_from_mmap("/private/var/db/urlPrefilter", "com.apple.networkextension.url-prefilter-data.", "com.apple.networkextension.url-prefilter-data.temp.", &g_bloom_filters, 1))
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315394;
          v10 = "ne_url_prefilter_contains";
          v11 = 2080;
          v12 = "/private/var/db/urlPrefilter";
          _os_log_error_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_ERROR, "%s: Failed to init bloom filter from directory %s", &v9, 0x16u);
        }

        os_unfair_lock_unlock(&ne_url_prefilter_lock);
        goto LABEL_13;
      }

      g_bloom_filter_ready = 1;
    }

    v5 = ne_parse_url_and_check(v3, &g_bloom_filters, 1);
    os_unfair_lock_unlock(&ne_url_prefilter_lock);
    if (v5)
    {
      *a2 = v5;
      result = 1;
      goto LABEL_15;
    }

    v7 = ne_log_obj();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      goto LABEL_15;
    }

    v9 = 136315394;
    v10 = "ne_url_prefilter_contains";
    v11 = 2080;
    v12 = v3;
    _os_log_debug_impl(&dword_1C0DA5000, v7, OS_LOG_TYPE_DEBUG, "%s: FINAL RESULT for <%s> - PREFILTER ALLOWED", &v9, 0x16u);
LABEL_13:
    result = 0;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void ne_url_filter_handle_request(uint64_t a1, void *a2, void *a3, int a4, void *a5, uint64_t a6, _BOOL4 a7, uint64_t a8)
{
  v44 = *MEMORY[0x1E69E9840];
  v16 = ne_log_obj();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (!a7)
  {
    if (!v17)
    {
      goto LABEL_6;
    }

    if (a2)
    {
      if (xpc_string_get_string_ptr(a2))
      {
        string_ptr = xpc_string_get_string_ptr(a2);
        v30 = strlen(string_ptr);
      }

      else
      {
        v30 = 0;
      }

      if (xpc_string_get_string_ptr(a2))
      {
        v23 = xpc_string_get_string_ptr(a2);
        if (!a3)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v30 = 0;
    }

    v23 = "<nil url>";
    if (!a3)
    {
      goto LABEL_32;
    }

LABEL_31:
    if (xpc_string_get_string_ptr(a3))
    {
      v25 = xpc_string_get_string_ptr(a3);
      goto LABEL_36;
    }

LABEL_32:
    v25 = "<nil>";
LABEL_36:
    *buf = 136316163;
    v35 = "ne_url_filter_handle_request";
    v36 = 1024;
    *v37 = v30;
    *&v37[4] = 2081;
    *&v37[6] = v23;
    v38 = 2080;
    v39 = v25;
    v40 = 1024;
    LODWORD(v41) = a4;
    v26 = "%s: URLCHECK: SENDING URL CHECK REQ - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    v27 = v16;
    v28 = 44;
    goto LABEL_37;
  }

  if (!v17)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    if (xpc_string_get_string_ptr(a2))
    {
      v20 = xpc_string_get_string_ptr(a2);
      v29 = strlen(v20);
    }

    else
    {
      v29 = 0;
    }

    if (xpc_string_get_string_ptr(a2))
    {
      v21 = xpc_string_get_string_ptr(a2);
      if (!a3)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v29 = 0;
  }

  v21 = "<nil url>";
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_28:
  if (xpc_string_get_string_ptr(a3))
  {
    v24 = xpc_string_get_string_ptr(a3);
    goto LABEL_34;
  }

LABEL_29:
  v24 = "<nil>";
LABEL_34:
  *buf = 136316419;
  v35 = "ne_url_filter_handle_request";
  v36 = 2160;
  *v37 = 1752392040;
  *&v37[8] = 1040;
  *&v37[10] = v29;
  v38 = 2101;
  v39 = v21;
  v40 = 2080;
  v41 = v24;
  v42 = 1024;
  v43 = a4;
  v26 = "%s: URLCHECK: SENDING URL CHECK REQ - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
  v27 = v16;
  v28 = 54;
LABEL_37:
  _os_log_debug_impl(&dword_1C0DA5000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
LABEL_6:
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "command", 2);
  xpc_dictionary_set_value(v18, "URL", a2);
  if (a5)
  {
    xpc_dictionary_set_value(v18, "URLPrefiltered", a5);
  }

  if (a3)
  {
    xpc_dictionary_set_value(v18, "bundleIdentifier", a3);
  }

  if (a4)
  {
    xpc_dictionary_set_int64(v18, "PID", a4);
  }

  xpc_dictionary_set_BOOL(v18, "redactSensitiveLogs", a7);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = __ne_url_filter_handle_request_block_invoke;
  v31[3] = &unk_1E812BB28;
  v31[4] = a8;
  v31[5] = a6;
  v33 = a7;
  v31[6] = a2;
  v31[7] = a3;
  v32 = a4;
  ne_url_filter_send_message(a1, 0, v18, v31);
  xpc_release(v18);
  v19 = *MEMORY[0x1E69E9840];
}

void __ne_url_filter_handle_request_block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v63 = "ne_url_filter_handle_request_block_invoke";
    _os_log_debug_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_DEBUG, "%s: received url filter xpc reply", buf, 0xCu);
  }

  xpc_retain(a2);
  if (!a2)
  {
    goto LABEL_6;
  }

  if (MEMORY[0x1C68E6D80](a2) != MEMORY[0x1E69E9E98])
  {
    if (MEMORY[0x1C68E6D80](a2) != MEMORY[0x1E69E9E80])
    {
LABEL_6:
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v63 = "ne_url_filter_handle_request_block_invoke_2";
        _os_log_error_impl(&dword_1C0DA5000, v5, OS_LOG_TYPE_ERROR, "%s: Got an invalid url filter reply", buf, 0xCu);
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 0x40000000;
      v60[2] = __ne_url_filter_handle_request_block_invoke_21;
      v60[3] = &unk_1E812BAB0;
      v6 = *(a1 + 40);
      v60[4] = *(a1 + 32);
      v7 = v60;
      goto LABEL_30;
    }

    int64 = xpc_dictionary_get_int64(a2, "error");
    if (int64)
    {
      v10 = int64;
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v63 = "ne_url_filter_handle_request_block_invoke_2";
        v64 = 2048;
        *v65 = v10;
        _os_log_error_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_ERROR, "%s: Got an error in reply <%lld>", buf, 0x16u);
      }

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 0x40000000;
      v59[2] = __ne_url_filter_handle_request_block_invoke_24;
      v59[3] = &unk_1E812BAD8;
      v6 = *(a1 + 40);
      v59[4] = *(a1 + 32);
      v7 = v59;
      goto LABEL_30;
    }

    v12 = xpc_dictionary_get_int64(a2, "verdict");
    v13 = *(a1 + 68);
    v14 = ne_log_obj();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v12 == 1)
    {
      if (v13)
      {
        if (v15)
        {
          v16 = *(a1 + 48);
          if (v16)
          {
            if (xpc_string_get_string_ptr(v16))
            {
              string_ptr = xpc_string_get_string_ptr(*(a1 + 48));
              v17 = strlen(string_ptr);
            }

            else
            {
              v17 = 0;
            }

            v27 = *(a1 + 48);
            if (v27 && xpc_string_get_string_ptr(v27))
            {
              v53 = *(a1 + 48);
              if (v53)
              {
                v28 = xpc_string_get_string_ptr(v53);
              }

              else
              {
                v28 = 0;
              }

              goto LABEL_45;
            }
          }

          else
          {
            v17 = 0;
          }

          v28 = "<nil url>";
LABEL_45:
          v29 = *(a1 + 56);
          if (v29 && xpc_string_get_string_ptr(v29))
          {
            v30 = *(a1 + 56);
            if (v30)
            {
              v30 = xpc_string_get_string_ptr(v30);
            }
          }

          else
          {
            v30 = "<nil>";
          }

          v31 = *(a1 + 64);
          *buf = 136316419;
          v63 = "ne_url_filter_handle_request_block_invoke_2";
          v64 = 2160;
          *v65 = 1752392040;
          *&v65[8] = 1040;
          *&v65[10] = v17;
          v66 = 2101;
          v67 = v28;
          v68 = 2080;
          v69 = v30;
          v70 = 1024;
          v71 = v31;
          v32 = "%s: URLCHECK: FINAL RESULT: FILTER ALLOWED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
LABEL_57:
          v39 = v14;
          v40 = 54;
LABEL_75:
          _os_log_debug_impl(&dword_1C0DA5000, v39, OS_LOG_TYPE_DEBUG, v32, buf, v40);
        }

LABEL_29:
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __ne_url_filter_handle_request_block_invoke_27;
        block[3] = &unk_1E812BB00;
        v6 = *(a1 + 40);
        block[4] = *(a1 + 32);
        v58 = v12;
        v7 = block;
        goto LABEL_30;
      }

      if (!v15)
      {
        goto LABEL_29;
      }

      v21 = *(a1 + 48);
      if (v21)
      {
        if (xpc_string_get_string_ptr(v21))
        {
          v41 = xpc_string_get_string_ptr(*(a1 + 48));
          v22 = strlen(v41);
        }

        else
        {
          v22 = 0;
        }

        v42 = *(a1 + 48);
        if (v42 && xpc_string_get_string_ptr(v42))
        {
          v55 = *(a1 + 48);
          if (v55)
          {
            v43 = xpc_string_get_string_ptr(v55);
          }

          else
          {
            v43 = 0;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v22 = 0;
      }

      v43 = "<nil url>";
LABEL_62:
      v44 = *(a1 + 56);
      if (v44 && xpc_string_get_string_ptr(v44))
      {
        v45 = *(a1 + 56);
        if (v45)
        {
          v45 = xpc_string_get_string_ptr(v45);
        }
      }

      else
      {
        v45 = "<nil>";
      }

      v46 = *(a1 + 64);
      *buf = 136316163;
      v63 = "ne_url_filter_handle_request_block_invoke";
      v64 = 1024;
      *v65 = v22;
      *&v65[4] = 2081;
      *&v65[6] = v43;
      v66 = 2080;
      v67 = v45;
      v68 = 1024;
      LODWORD(v69) = v46;
      v32 = "%s: URLCHECK: FINAL RESULT: FILTER ALLOWED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
LABEL_74:
      v39 = v14;
      v40 = 44;
      goto LABEL_75;
    }

    if (v13)
    {
      if (!v15)
      {
        goto LABEL_29;
      }

      v18 = *(a1 + 48);
      if (v18)
      {
        if (xpc_string_get_string_ptr(v18))
        {
          v33 = xpc_string_get_string_ptr(*(a1 + 48));
          v19 = strlen(v33);
        }

        else
        {
          v19 = 0;
        }

        v34 = *(a1 + 48);
        if (v34 && xpc_string_get_string_ptr(v34))
        {
          v54 = *(a1 + 48);
          if (v54)
          {
            v35 = xpc_string_get_string_ptr(v54);
          }

          else
          {
            v35 = 0;
          }

          goto LABEL_53;
        }
      }

      else
      {
        v19 = 0;
      }

      v35 = "<nil url>";
LABEL_53:
      v36 = *(a1 + 56);
      if (v36 && xpc_string_get_string_ptr(v36))
      {
        v37 = *(a1 + 56);
        if (v37)
        {
          v37 = xpc_string_get_string_ptr(v37);
        }
      }

      else
      {
        v37 = "<nil>";
      }

      v38 = *(a1 + 64);
      *buf = 136316419;
      v63 = "ne_url_filter_handle_request_block_invoke";
      v64 = 2160;
      *v65 = 1752392040;
      *&v65[8] = 1040;
      *&v65[10] = v19;
      v66 = 2101;
      v67 = v35;
      v68 = 2080;
      v69 = v37;
      v70 = 1024;
      v71 = v38;
      v32 = "%s: URLCHECK: FINAL RESULT: FILTER DENIED - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
      goto LABEL_57;
    }

    if (!v15)
    {
      goto LABEL_29;
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      if (xpc_string_get_string_ptr(v24))
      {
        v47 = xpc_string_get_string_ptr(*(a1 + 48));
        v25 = strlen(v47);
      }

      else
      {
        v25 = 0;
      }

      v48 = *(a1 + 48);
      if (v48 && xpc_string_get_string_ptr(v48))
      {
        v56 = *(a1 + 48);
        if (v56)
        {
          v49 = xpc_string_get_string_ptr(v56);
        }

        else
        {
          v49 = 0;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v25 = 0;
    }

    v49 = "<nil url>";
LABEL_70:
    v50 = *(a1 + 56);
    if (v50 && xpc_string_get_string_ptr(v50))
    {
      v51 = *(a1 + 56);
      if (v51)
      {
        v51 = xpc_string_get_string_ptr(v51);
      }
    }

    else
    {
      v51 = "<nil>";
    }

    v52 = *(a1 + 64);
    *buf = 136316163;
    v63 = "ne_url_filter_handle_request_block_invoke";
    v64 = 1024;
    *v65 = v25;
    *&v65[4] = 2081;
    *&v65[6] = v49;
    v66 = 2080;
    v67 = v51;
    v68 = 1024;
    LODWORD(v69) = v52;
    v32 = "%s: URLCHECK: FINAL RESULT: FILTER DENIED - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    goto LABEL_74;
  }

  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
    *buf = 136315394;
    v63 = "ne_url_filter_handle_request_block_invoke";
    v64 = 2080;
    *v65 = string;
    _os_log_error_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_ERROR, "%s: Got an error on the XPC connection when sending a url filter request: %s", buf, 0x16u);
  }

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 0x40000000;
  v61[2] = __ne_url_filter_handle_request_block_invoke_18;
  v61[3] = &unk_1E812BA88;
  v6 = *(a1 + 40);
  v61[4] = *(a1 + 32);
  v7 = v61;
LABEL_30:
  dispatch_async(v6, v7);
  xpc_release(a2);
  v23 = *MEMORY[0x1E69E9840];
}

void __ne_url_filter_check_block_invoke(uint64_t a1, int a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(*(v3 + 8) + 24);
    v6 = *(*(v4 + 8) + 24);
    v7 = *(a1 + 96);
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 100);
    v50[0] = MEMORY[0x1E69E9820];
    v11 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v50[1] = 0x40000000;
    v50[2] = __ne_url_filter_check_block_invoke_2;
    v50[3] = &unk_1E812BB50;
    v51 = v11;
    v52 = v3;
    v53 = v4;
    ne_url_filter_handle_request(v8, v5, v6, v7, v9, v12, v10, v50);
    goto LABEL_17;
  }

  should_fail_closed = ne_url_filter_should_fail_closed();
  v14 = *(a1 + 100);
  v15 = ne_log_obj();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (!should_fail_closed)
  {
    if (v14)
    {
      if (v16)
      {
        v19 = *(a1 + 80);
        if (v19)
        {
          v20 = strlen(*(a1 + 80));
        }

        else
        {
          v20 = 0;
          v19 = "<nil url>";
        }

        v37 = *(a1 + 88);
        v38 = *(a1 + 96);
        if (!v37)
        {
          v37 = "<nil>";
        }

        *buf = 136316419;
        v55 = "ne_url_filter_check_block_invoke";
        v56 = 2160;
        *v57 = 1752392040;
        *&v57[8] = 1040;
        *&v57[10] = v20;
        v58 = 2101;
        v59 = v19;
        v60 = 2080;
        v61 = v37;
        v62 = 1024;
        v63 = v38;
        v39 = "%s: URLCHECK: Allow (FailOpened): Failed url request - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
        v40 = v15;
        v41 = 54;
LABEL_41:
        _os_log_debug_impl(&dword_1C0DA5000, v40, OS_LOG_TYPE_DEBUG, v39, buf, v41);
      }
    }

    else if (v16)
    {
      v30 = *(a1 + 80);
      if (v30)
      {
        v31 = strlen(*(a1 + 80));
      }

      else
      {
        v31 = 0;
        v30 = "<nil url>";
      }

      v44 = *(a1 + 88);
      if (!v44)
      {
        v44 = "<nil>";
      }

      v45 = *(a1 + 96);
      *buf = 136316163;
      v55 = "ne_url_filter_check_block_invoke";
      v56 = 1024;
      *v57 = v31;
      *&v57[4] = 2081;
      *&v57[6] = v30;
      v58 = 2080;
      v59 = v44;
      v60 = 1024;
      LODWORD(v61) = v45;
      v39 = "%s: URLCHECK: Allow (FailOpened): Failed url request - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
      v40 = v15;
      v41 = 44;
      goto LABEL_41;
    }

    v21 = 1;
    goto LABEL_16;
  }

  if (v14)
  {
    if (v16)
    {
      v17 = *(a1 + 80);
      if (v17)
      {
        v18 = strlen(*(a1 + 80));
      }

      else
      {
        v18 = 0;
        v17 = "<nil url>";
      }

      v32 = *(a1 + 88);
      v33 = *(a1 + 96);
      if (!v32)
      {
        v32 = "<nil>";
      }

      *buf = 136316419;
      v55 = "ne_url_filter_check_block_invoke";
      v56 = 2160;
      *v57 = 1752392040;
      *&v57[8] = 1040;
      *&v57[10] = v18;
      v58 = 2101;
      v59 = v17;
      v60 = 2080;
      v61 = v32;
      v62 = 1024;
      v63 = v33;
      v34 = "%s: URLCHECK: Deny (FailClosed): Failed url request - %{sensitive, mask.hash, networkextension:string}.*P (app bundleid <%s> pid <%d>)";
      v21 = 2;
      v35 = v15;
      v36 = 54;
LABEL_36:
      _os_log_debug_impl(&dword_1C0DA5000, v35, OS_LOG_TYPE_DEBUG, v34, buf, v36);
      goto LABEL_16;
    }
  }

  else if (v16)
  {
    v28 = *(a1 + 80);
    if (v28)
    {
      v29 = strlen(*(a1 + 80));
    }

    else
    {
      v29 = 0;
      v28 = "<nil url>";
    }

    v42 = *(a1 + 88);
    if (!v42)
    {
      v42 = "<nil>";
    }

    v43 = *(a1 + 96);
    *buf = 136316163;
    v55 = "ne_url_filter_check_block_invoke";
    v56 = 1024;
    *v57 = v29;
    *&v57[4] = 2081;
    *&v57[6] = v28;
    v58 = 2080;
    v59 = v42;
    v60 = 1024;
    LODWORD(v61) = v43;
    v34 = "%s: URLCHECK: Deny (FailClosed): Failed url request - <%d : %{private}s> (app bundleid <%s> pid <%d>)";
    v21 = 2;
    v35 = v15;
    v36 = 44;
    goto LABEL_36;
  }

  v21 = 2;
LABEL_16:
  block[0] = MEMORY[0x1E69E9820];
  v22 = *(a1 + 32);
  v23 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
  v24 = *(*(a1 + 48) + 8);
  block[1] = 0x40000000;
  v25 = *(v24 + 24);
  block[2] = __ne_url_filter_check_block_invoke_34;
  block[3] = &unk_1E812BB78;
  v49 = v21;
  v47 = v23;
  v48 = v22;
  dispatch_async(v25, block);
LABEL_17:
  v26 = *(a1 + 72);
  if (v26)
  {
    xpc_release(v26);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __ne_url_filter_request_connections_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

void __ne_url_filter_request_connections_block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v6 = 136315394;
    v7 = "ne_url_filter_request_connections_block_invoke_2";
    v8 = 1024;
    v9 = v5;
    _os_log_debug_impl(&dword_1C0DA5000, v2, OS_LOG_TYPE_DEBUG, "%s: all url filter provider connection requests complete with success: %d", &v6, 0x12u);
  }

  g_waitingForXPCConnections = 0;
  v3 = *(*(*(a1 + 40) + 8) + 24);
  (*(*(a1 + 32) + 16))();
  dispatch_release(*(a1 + 48));
  dispatch_release(*(a1 + 56));
  v4 = *MEMORY[0x1E69E9840];
}

void __ne_url_filter_check_block_invoke_2(void *a1)
{
  (*(*(*(a1[4] + 8) + 40) + 16))();
  _Block_release(*(*(a1[4] + 8) + 40));
  dispatch_release(*(*(a1[5] + 8) + 24));
  xpc_release(*(*(a1[6] + 8) + 24));
  v2 = *(*(a1[7] + 8) + 24);

  xpc_release(v2);
}

void __ne_url_filter_check_block_invoke_34(uint64_t a1)
{
  v2 = *(a1 + 64);
  (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
  _Block_release(*(*(*(a1 + 32) + 8) + 40));
  dispatch_release(*(*(*(a1 + 40) + 8) + 24));
  xpc_release(*(*(*(a1 + 48) + 8) + 24));
  v3 = *(*(*(a1 + 56) + 8) + 24);

  xpc_release(v3);
}

void __ne_url_filter_globals_block_invoke()
{
  ne_url_filter_globals_globals = 0u;
  unk_1EBE73C58 = 0u;
  atomic_fetch_add(&ne_url_filter_globals_globals, 1u);
}

uint64_t ne_filter_get_definition()
{
  if (ne_filter_get_definition_onceToken != -1)
  {
    dispatch_once(&ne_filter_get_definition_onceToken, &__block_literal_global_518);
  }

  return ne_filter_get_definition_filter_definition;
}

uint64_t __ne_filter_get_definition_block_invoke()
{
  if (ne_filter_protocol_identifier_onceToken != -1)
  {
    dispatch_once(&ne_filter_protocol_identifier_onceToken, &__block_literal_global_3);
  }

  ne_filter_get_definition_filter_definition = nw_protocol_definition_create_with_identifier();

  return MEMORY[0x1EEDD4290]();
}

uint64_t __ne_filter_protocol_identifier_block_invoke()
{
  ne_filter_protocol_identifier_g_hasNESMAccess = 1;
  g_filter_protocol_identifier = 0u;
  unk_1EBE73844 = 0u;
  qword_1EBE73854 = 0;
  g_filter_protocol_callbacks = 0u;
  *algn_1EBE73628 = 0u;
  xmmword_1EBE73638 = 0u;
  *&qword_1EBE73648 = 0u;
  xmmword_1EBE73658 = 0u;
  *&qword_1EBE73668 = 0u;
  xmmword_1EBE73678 = 0u;
  unk_1EBE73688 = 0u;
  xmmword_1EBE73698 = 0u;
  unk_1EBE736A8 = 0u;
  xmmword_1EBE736B8 = 0u;
  unk_1EBE736C8 = 0u;
  xmmword_1EBE736D8 = 0u;
  unk_1EBE736E8 = 0u;
  xmmword_1EBE736F8 = 0u;
  unk_1EBE73708 = 0u;
  xmmword_1EBE73718 = 0u;
  __strlcpy_chk();
  qword_1EBE73854 = 0x100000002;
  nw_protocol_set_default_one_to_one_callbacks();
  *&g_filter_protocol_callbacks = ne_filter_protocol_add_input_handler;
  *(&g_filter_protocol_callbacks + 1) = ne_filter_protocol_remove_input_handler;
  qword_1EBE73668 = ne_filter_protocol_get_input_frames;
  qword_1EBE73670 = ne_filter_protocol_get_output_frames;
  *&xmmword_1EBE73678 = ne_filter_protocol_finalize_output_frames;
  *&xmmword_1EBE73658 = ne_filter_protocol_input_available;
  *(&xmmword_1EBE73658 + 1) = ne_filter_protocol_output_available;
  qword_1EBE736D0 = ne_filter_protocol_input_finished;
  *&xmmword_1EBE736D8 = ne_filter_protocol_output_finished;
  qword_1EBE73630 = ne_filter_protocol_connect;
  *(&xmmword_1EBE73638 + 1) = ne_filter_protocol_connected;
  *&xmmword_1EBE73638 = ne_filter_protocol_disconnect;
  qword_1EBE73648 = ne_filter_protocol_disconnected;
  *&xmmword_1EBE73718 = nw_filter_protocol_reset;

  return MEMORY[0x1EEDD4750](&g_filter_protocol_identifier, ne_filter_protocol_create);
}

unint64_t *ne_filter_protocol_create()
{
  v8 = *MEMORY[0x1E69E9840];
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 8uLL, 0xD8uLL, 0x10A0040BDFCEB50uLL))
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v7 = 216;
      _os_log_fault_impl(&dword_1C0DA5000, v0, OS_LOG_TYPE_FAULT, "posix_memalign(%zu) failed", buf, 0xCu);
    }

    result = 0;
  }

  else
  {
    v2 = memptr;
    *memptr = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[6] = 0u;
    v2[7] = 0u;
    v2[9] = 0u;
    v2[10] = 0u;
    v2[11] = 0u;
    v2[12] = 0u;
    v2[8] = 0u;
    *(v2 + 26) = 0;
    *(v2 + 2) = &g_filter_protocol_identifier;
    *(v2 + 3) = &g_filter_protocol_callbacks;
    *(v2 + 5) = v2;
    nw_frame_array_init();
    v3 = memptr;
    *(memptr + 18) = 0;
    v3 += 144;
    *(v3 + 1) = v3;
    atomic_fetch_add(v3 + 9, 1u);
    result = memptr;
    atomic_store(0, memptr + 13);
    atomic_store(0, result + 14);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_filter_protocol_reset(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *v64 = 136315138;
    *&v64[4] = "nw_filter_protocol_reset";
    v15 = "%s called with null protocol";
LABEL_37:
    _os_log_fault_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_FAULT, v15, v64, 0xCu);
    goto LABEL_13;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    *v64 = 136315138;
    *&v64[4] = "nw_filter_protocol_reset";
    v15 = "%s called with null filter";
    goto LABEL_37;
  }

  if (!atomic_fetch_or((v3 + 180), 0))
  {
LABEL_13:
    v16 = 0;
    goto LABEL_35;
  }

  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v5 = *(v3 + 176);
  v6 = ne_log_obj();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5 == 3)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(v3 + 80);
    if (v8)
    {
      LODWORD(v8) = nw_parameters_get_ip_protocol();
    }

    v9 = *(v3 + 160);
    if (v9)
    {
      v11 = v9[6];
      v12 = v9[7];
      v10 = v9[8];
      v13 = v9[9];
    }

    else
    {
      v10 = -1;
      v11 = -1;
      v12 = -1;
      v13 = -1;
    }

    v45 = *(v3 + 168);
    if (v45)
    {
      v47 = v45[6];
      v48 = v45[7];
      v46 = v45[8];
      v49 = v45[9];
    }

    else
    {
      v46 = -1;
      v47 = -1;
      v48 = -1;
      v49 = -1;
    }

    *v64 = 136317442;
    *&v64[4] = out;
    *&v64[12] = 1024;
    *&v64[14] = v8;
    *&v64[18] = 2048;
    *&v64[20] = v11;
    *&v64[28] = 2048;
    *&v64[30] = v12;
    *&v64[38] = 2048;
    v65 = v10;
    v66 = 2048;
    v67 = v13;
    v68 = 2048;
    v69 = v47;
    v70 = 2048;
    v71 = v48;
    v72 = 2048;
    v73 = v46;
    v74 = 2048;
    v75 = v49;
    v50 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]connection reset";
    v51 = v6;
    v52 = 98;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v42 = *(v3 + 80);
    if (v42)
    {
      LODWORD(v42) = nw_parameters_get_ip_protocol();
    }

    v43 = *(v3 + 176);
    if (v43 > 3)
    {
      v44 = "unknown";
    }

    else
    {
      v44 = off_1E812BFE0[v43];
    }

    *v64 = 136315650;
    *&v64[4] = out;
    *&v64[12] = 1024;
    *&v64[14] = v42;
    *&v64[18] = 2080;
    *&v64[20] = v44;
    v50 = "[filter %s %d %s] connection reset";
    v51 = v6;
    v52 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v51, OS_LOG_TYPE_DEBUG, v50, v64, v52);
LABEL_15:
  ne_filter_protocol_retain(a1);
  v17 = *(v3 + 144);
  if (v17)
  {
    do
    {
      ne_filter_data_protocol_send_finished(a1, v17, 0xBu);
      ne_filter_destroy_frames(*(a1 + 40));
      *(v17 + 40) = 0;
      *(v17 + 88) = 0u;
      *(v17 + 104) = 0u;
      *(v17 + 120) = 0u;
      *(v17 + 136) = 0;
      *(v17 + 144) &= 0xFE00u;
      v17 = *(v17 + 152);
    }

    while (v17);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  *(v3 + 176) = v18;
  if (!(*(*(a2 + 24) + 112))(a2) || nw_parameters_get_data_mode() != 1)
  {
    goto LABEL_29;
  }

  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v19 = *(v3 + 176);
  v20 = ne_log_obj();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19 == 3)
  {
    if (v21)
    {
      v22 = *(v3 + 80);
      if (v22)
      {
        LODWORD(v22) = nw_parameters_get_ip_protocol();
      }

      v23 = *(v3 + 160);
      if (v23)
      {
        v25 = v23[6];
        v26 = v23[7];
        v24 = v23[8];
        v27 = v23[9];
      }

      else
      {
        v24 = -1;
        v25 = -1;
        v26 = -1;
        v27 = -1;
      }

      v56 = *(v3 + 168);
      if (v56)
      {
        v58 = v56[6];
        v59 = v56[7];
        v57 = v56[8];
        v60 = v56[9];
      }

      else
      {
        v57 = -1;
        v58 = -1;
        v59 = -1;
        v60 = -1;
      }

      *v64 = 136317442;
      *&v64[4] = out;
      *&v64[12] = 1024;
      *&v64[14] = v22;
      *&v64[18] = 2048;
      *&v64[20] = v25;
      *&v64[28] = 2048;
      *&v64[30] = v26;
      *&v64[38] = 2048;
      v65 = v24;
      v66 = 2048;
      v67 = v27;
      v68 = 2048;
      v69 = v58;
      v70 = 2048;
      v71 = v59;
      v72 = 2048;
      v73 = v57;
      v74 = 2048;
      v75 = v60;
      v61 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]detected datagram connection, frame fragmentation disabled";
      v62 = v20;
      v63 = 98;
LABEL_61:
      _os_log_debug_impl(&dword_1C0DA5000, v62, OS_LOG_TYPE_DEBUG, v61, v64, v63);
    }
  }

  else if (v21)
  {
    v53 = *(v3 + 80);
    if (v53)
    {
      LODWORD(v53) = nw_parameters_get_ip_protocol();
    }

    v54 = *(v3 + 176);
    if (v54 > 3)
    {
      v55 = "unknown";
    }

    else
    {
      v55 = off_1E812BFE0[v54];
    }

    *v64 = 136315650;
    *&v64[4] = out;
    *&v64[12] = 1024;
    *&v64[14] = v53;
    *&v64[18] = 2080;
    *&v64[20] = v55;
    v61 = "[filter %s %d %s] detected datagram connection, frame fragmentation disabled";
    v62 = v20;
    v63 = 28;
    goto LABEL_61;
  }

  *(v3 + 120) |= 0x8000u;
LABEL_29:
  nw_release(*(v3 + 64));
  v28 = (*(*(a2 + 24) + 128))(a2);
  *(v3 + 64) = nw_retain(v28);
  nw_release(*(v3 + 72));
  v29 = (*(*(a2 + 24) + 136))(a2);
  *(v3 + 72) = nw_retain(v29);
  nw_release(*(v3 + 80));
  v30 = (*(*(a2 + 24) + 112))(a2);
  *(v3 + 80) = nw_retain(v30);
  atomic_store(0, (v3 + 104));
  atomic_store(0, (v3 + 112));
  *(v3 + 120) &= 0xFFFFC003;
  ne_filter_unregister_flow(*(v3 + 96), a1);
  MEMORY[0x1C68E6A10](v3);
  ne_filter_register_flow(*(v3 + 96), a1);
  v37 = *(a1 + 32);
  if (v37 && (v38 = *(v37 + 24)) != 0 && (v39 = *(v38 + 256)) != 0)
  {
    v16 = v39(v37, a1, v31, v32, v33, v34, v35, v36, *v64, *&v64[8], *&v64[16], *&v64[24], *&v64[32]);
  }

  else
  {
    v16 = 1;
  }

  ne_filter_protocol_release(a1);
LABEL_35:
  v40 = *MEMORY[0x1E69E9840];
  return v16;
}

void ne_filter_protocol_retain(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v6 = 136315138;
    v7 = "ne_filter_protocol_retain";
    v4 = "%s called with null protocol";
LABEL_10:
    _os_log_fault_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_FAULT, v4, &v6, 0xCu);
    goto LABEL_8;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v6 = 136315138;
    v7 = "ne_filter_protocol_retain";
    v4 = "%s called with null filter";
    goto LABEL_10;
  }

  v2 = (v1 + 180);
  if (atomic_fetch_or(v2, 0))
  {
    atomic_fetch_add(v2, 1u);
  }

LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
}

void ne_filter_data_protocol_send_finished(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *&length[11] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (v3 && atomic_fetch_or((v3 + 180), 0))
  {
    if (a3 == 9)
    {
      v8 = *(a2 + 144);
      *(a2 + 144) = v8 | 0x10;
      if ((v8 & 0x10) != 0)
      {
        goto LABEL_18;
      }
    }

    else if (a3 == 10)
    {
      v7 = *(a2 + 144);
      *(a2 + 144) = v7 | 0x20;
      if ((v7 & 0x20) != 0)
      {
        goto LABEL_18;
      }
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "command", a3);
    xpc_dictionary_set_uuid(v9, "flow-uuid", v3);
    if (a3 == 11)
    {
      v10 = atomic_load((v3 + 104));
      xpc_dictionary_set_uint64(v9, "byte-count-inbound", v10);
      v11 = atomic_load((v3 + 112));
      xpc_dictionary_set_uint64(v9, "byte-count-outbound", v11);
    }

    memset(length, 0, 36);
    if (ne_filter_generate_crypto_signature(*(a2 + 4), v3, &length[1], length, a3 == 11))
    {
      xpc_dictionary_set_data(v9, "crypto-signature", &length[1], length[0]);
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_ERROR, "Failed to generate signature for finished message", buf, 2u);
      }
    }

    if (a3 == 11)
    {
      v13 = *(v3 + 96);
      v14 = *(a2 + 4);
      v15 = v9;
      v16 = 0;
    }

    else
    {
      atomic_fetch_add((v3 + 180), 1u);
      v13 = *(v3 + 96);
      v14 = *(a2 + 4);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __ne_filter_data_protocol_send_finished_block_invoke;
      v18[3] = &__block_descriptor_tmp_42_542;
      v18[4] = v3;
      v18[5] = a1;
      v19 = a3;
      v18[6] = a2;
      v16 = v18;
      v15 = v9;
    }

    ne_filter_send_message(v13, v14, v15, v16);
    xpc_release(v9);
  }

LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t ne_filter_destroy_frames(uint64_t a1)
{
  for (i = *(a1 + 144); i; i = *(i + 152))
  {
    nw_frame_array_foreach();
    nw_frame_array_foreach();
  }

  return nw_frame_array_foreach();
}

void ne_filter_protocol_release(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1)
    {
      v2 = (v1 + 180);
      if (atomic_fetch_or(v2, 0))
      {
        if (atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
        {

          ne_filter_protocol_destroy(a1);
        }
      }
    }
  }

  else
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C0DA5000, v3, OS_LOG_TYPE_INFO, "protocol is null", v4, 2u);
    }
  }
}

void ne_filter_protocol_destroy(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  memset(out, 0, 37);
  uuid_unparse(v2, out);
  v3 = *(v2 + 176);
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 3)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 80);
    if (v6)
    {
      LODWORD(v6) = nw_parameters_get_ip_protocol();
    }

    v7 = *(v2 + 160);
    if (v7)
    {
      v9 = v7[6];
      v10 = v7[7];
      v8 = v7[8];
      v11 = v7[9];
    }

    else
    {
      v8 = -1;
      v9 = -1;
      v10 = -1;
      v11 = -1;
    }

    v20 = *(v2 + 168);
    if (v20)
    {
      v22 = v20[6];
      v23 = v20[7];
      v21 = v20[8];
      v24 = v20[9];
    }

    else
    {
      v21 = -1;
      v22 = -1;
      v23 = -1;
      v24 = -1;
    }

    v28 = 136317442;
    v29 = out;
    v30 = 1024;
    v31 = v6;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = v10;
    v36 = 2048;
    v37 = v8;
    v38 = 2048;
    v39 = v11;
    v40 = 2048;
    v41 = v22;
    v42 = 2048;
    v43 = v23;
    v44 = 2048;
    v45 = v21;
    v46 = 2048;
    v47 = v24;
    v25 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]destroying filter";
    v26 = v4;
    v27 = 98;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    v17 = *(v2 + 80);
    if (v17)
    {
      LODWORD(v17) = nw_parameters_get_ip_protocol();
    }

    v18 = *(v2 + 176);
    if (v18 > 3)
    {
      v19 = "unknown";
    }

    else
    {
      v19 = off_1E812BFE0[v18];
    }

    v28 = 136315650;
    v29 = out;
    v30 = 1024;
    v31 = v17;
    v32 = 2080;
    v33 = v19;
    v25 = "[filter %s %d %s] destroying filter";
    v26 = v4;
    v27 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v26, OS_LOG_TYPE_DEBUG, v25, &v28, v27);
LABEL_8:
  *(a1 + 40) = 0;
  nw_release(*(v2 + 64));
  nw_release(*(v2 + 72));
  nw_release(*(v2 + 80));
  nw_release(*(v2 + 88));
  *(v2 + 96) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  for (i = *(v2 + 144); i; i = *(v2 + 144))
  {
    v13 = i[19];
    v14 = i[20];
    v15 = (v13 + 160);
    if (!v13)
    {
      v15 = (v2 + 152);
    }

    *v15 = v14;
    *v14 = v13;
    free(i);
  }

  ne_filter_stats_toggle(a1, 0, 0);
  memset_s(v2, 0xD8uLL, 0, 0xD8uLL);
  free(v2);
  v16 = *MEMORY[0x1E69E9840];
}

void ne_filter_stats_toggle(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *(a2 + 80);
    if (a3)
    {
      if (v6 == a3)
      {
        goto LABEL_20;
      }
    }

    else if (!v6)
    {
      goto LABEL_20;
    }
  }

  if (a1)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      goto LABEL_20;
    }

    if (!atomic_fetch_or((v7 + 180), 0))
    {
      goto LABEL_20;
    }

    v8 = *(v7 + 96);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134218240;
      v18 = a2;
      v19 = 2048;
      v20 = a3;
      _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "Stats toggle - client %lX frequency %llu", &v17, 0x16u);
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else if (a3)
    {
LABEL_12:
      if (a2 && *(a2 + 80) != a3)
      {
        v10 = 200;
        if (a3 > 0xC8)
        {
          v10 = a3;
        }

        *(a2 + 80) = v10;
        *(a2 + 136) = mach_absolute_time();
        if (ne_filter_stats_report_register(v8, a1))
        {
          atomic_fetch_add((v7 + 180), 1u);
        }
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      goto LABEL_30;
    }

    *(a2 + 80) = 0;
    v13 = *(v7 + 144);
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = 0;
    do
    {
      v14 |= *(v13 + 80) != 0;
      v13 = *(v13 + 152);
    }

    while (v13);
    if ((v14 & 1) == 0)
    {
LABEL_30:
      if (ne_filter_stats_report_unregister(v8, a1))
      {
        v15 = *(a1 + 40);
        if (v15)
        {
          v16 = (v15 + 180);
          if (atomic_fetch_or(v16, 0))
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              ne_filter_protocol_destroy(a1);
            }
          }
        }
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_INFO, "protocol is null", &v17, 2u);
    }
  }

LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __ne_filter_destroy_frames_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

uint64_t __ne_filter_destroy_frames_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

uint64_t __ne_filter_destroy_frames_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  nw_frame_array_remove();
  nw_frame_finalize();
  return 1;
}

BOOL ne_filter_generate_crypto_signature(unsigned int a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v46 = 0u;
  *dst = 0u;
  memset(v45, 0, sizeof(v45));
  if (!a4)
  {
    goto LABEL_37;
  }

  uuid_copy(dst, a2);
  v10 = *(a2 + 80);
  DWORD2(v45[0]) = nw_parameters_get_server_mode() ^ 1;
  v11 = *(a2 + 64);
  if (!v11)
  {
    goto LABEL_10;
  }

  if (nw_endpoint_get_type(v11) != nw_endpoint_type_address)
  {
    goto LABEL_10;
  }

  address = nw_endpoint_get_address(*(a2 + 64));
  if (!address)
  {
    goto LABEL_10;
  }

  sa_family = address->sa_family;
  if (sa_family == 30)
  {
    v14 = *address;
    *(&v45[3] + 4) = *&address->sa_data[10];
    goto LABEL_9;
  }

  if (sa_family == 2)
  {
    v14 = *address;
LABEL_9:
    *(&v45[2] + 8) = v14;
  }

LABEL_10:
  v15 = *(a2 + 72);
  if (!v15)
  {
    goto LABEL_18;
  }

  type = nw_endpoint_get_type(v15);
  v17 = *(a2 + 72);
  if (type == nw_endpoint_type_address)
  {
    v18 = nw_endpoint_get_address(v17);
    if (v18)
    {
      v19 = v18->sa_family;
      if (v19 == 30)
      {
        v20 = *v18;
        *(&v45[1] + 8) = *&v18->sa_data[10];
        goto LABEL_20;
      }

      if (v19 == 2)
      {
        v20 = *v18;
LABEL_20:
        *(v45 + 12) = v20;
      }
    }

    v23 = *(a2 + 72);
    parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain();
    goto LABEL_22;
  }

  if (nw_endpoint_get_type(v17) != nw_endpoint_type_host)
  {
LABEL_18:
    v22 = 0;
    goto LABEL_23;
  }

  ne_filter_create_wildcard_remote_sockaddr(buf, a2);
  *(v45 + 12) = *buf;
  *(&v45[1] + 8) = *&buf[12];
  parent_endpoint_domain = nw_endpoint_get_hostname(*(a2 + 72));
LABEL_22:
  v22 = parent_endpoint_domain;
LABEL_23:
  v24 = *(a2 + 80);
  DWORD1(v45[4]) = nw_parameters_get_ip_protocol();
  DWORD2(v45[4]) = getpid();
  v25 = *(a2 + 80);
  HIDWORD(v45[4]) = nw_parameters_get_pid();
  v26 = *(a2 + 80);
  nw_parameters_get_proc_uuid();
  v27 = *(a2 + 80);
  nw_parameters_get_e_proc_uuid();
  if (a5)
  {
    v28 = atomic_load((a2 + 104));
    v29 = atomic_load((a2 + 112));
    *(&v46 + 1) = v28;
    v47 = v29;
  }

  v30 = *(a2 + 80);
  effective_bundle_id = nw_parameters_get_effective_bundle_id();
  v32 = *(a2 + 80);
  url = nw_parameters_get_url();
  v34 = url;
  *a4 = 32;
  v35 = *(a2 + 96);
  if (effective_bundle_id)
  {
    v36 = strlen(effective_bundle_id);
    if (v34)
    {
      goto LABEL_27;
    }

LABEL_30:
    v37 = 0;
    if (v22)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v36 = 0;
  if (!url)
  {
    goto LABEL_30;
  }

LABEL_27:
  v37 = strlen(v34);
  if (v22)
  {
LABEL_28:
    v38 = strlen(v22);
    v39 = ne_filter_sign_data(v35, a1, dst, effective_bundle_id, v36, v34, v37, v22, v38, a3, a4);
    goto LABEL_32;
  }

LABEL_31:
  v39 = ne_filter_sign_data(v35, a1, dst, effective_bundle_id, v36, v34, v37, 0, 0, a3, a4);
LABEL_32:
  if (!v39)
  {
    v41 = ne_log_obj();
    result = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_38;
    }

    *buf = 0;
    _os_log_error_impl(&dword_1C0DA5000, v41, OS_LOG_TYPE_ERROR, "Failed to sign flow message", buf, 2u);
LABEL_37:
    result = 0;
    goto LABEL_38;
  }

  result = 1;
  if (*(a2 + 64))
  {
    *(a2 + 124) = 1;
  }

LABEL_38:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ne_filter_data_protocol_send_finished_block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(*(a1 + 32), out);
  v4 = *(*(a1 + 32) + 176);
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 3)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v7[10];
      if (v8)
      {
        LODWORD(v8) = nw_parameters_get_ip_protocol();
        v7 = *(a1 + 32);
      }

      v9 = v7[20];
      if (v9)
      {
        v11 = v9[6];
        v12 = v9[7];
        v10 = v9[8];
        v13 = v9[9];
      }

      else
      {
        v10 = -1;
        v11 = -1;
        v12 = -1;
        v13 = -1;
      }

      v21 = v7[21];
      if (v21)
      {
        v23 = v21[6];
        v24 = v21[7];
        v22 = v21[8];
        v25 = v21[9];
      }

      else
      {
        v22 = -1;
        v23 = -1;
        v24 = -1;
        v25 = -1;
      }

      *buf = 136317442;
      v32 = out;
      v33 = 1024;
      v34 = v8;
      v35 = 2048;
      v36 = v11;
      v37 = 2048;
      v38 = v12;
      v39 = 2048;
      v40 = v10;
      v41 = 2048;
      v42 = v13;
      v43 = 2048;
      v44 = v23;
      v45 = 2048;
      v46 = v24;
      v47 = 2048;
      v48 = v22;
      v49 = 2048;
      v50 = v25;
      v26 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]received send-finish reply";
      v27 = v5;
      v28 = 98;
LABEL_20:
      _os_log_debug_impl(&dword_1C0DA5000, v27, OS_LOG_TYPE_DEBUG, v26, buf, v28);
    }
  }

  else if (v6)
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 80);
    if (v18)
    {
      LODWORD(v18) = nw_parameters_get_ip_protocol();
      v17 = *(a1 + 32);
    }

    v19 = *(v17 + 176);
    if (v19 > 3)
    {
      v20 = "unknown";
    }

    else
    {
      v20 = off_1E812BFE0[v19];
    }

    *buf = 136315650;
    v32 = out;
    v33 = 1024;
    v34 = v18;
    v35 = 2080;
    v36 = v20;
    v26 = "[filter %s %d %s] received send-finish reply";
    v27 = v5;
    v28 = 28;
    goto LABEL_20;
  }

  xpc_retain(a2);
  v14 = *(*(a1 + 32) + 88);
  v30 = *(a1 + 56);
  v29 = *(a1 + 40);
  result = nw_queue_context_async();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void __ne_filter_data_protocol_send_finished_block_invoke_40(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  if (MEMORY[0x1C68E6D80]() == MEMORY[0x1E69E9E98])
  {
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x1E69E9E28]);
    v13 = 136315138;
    v14 = string;
    v3 = "Got an error on the XPC connection when sending a finished message: %s";
    v4 = v6;
    v5 = 12;
    goto LABEL_9;
  }

  if (!*(a1 + 32) || MEMORY[0x1C68E6D80]() != MEMORY[0x1E69E9E80])
  {
LABEL_5:
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v13) = 0;
    v3 = "Got an invalid finished message reply";
    v4 = v2;
    v5 = 2;
LABEL_9:
    _os_log_error_impl(&dword_1C0DA5000, v4, OS_LOG_TYPE_ERROR, v3, &v13, v5);
    goto LABEL_11;
  }

  ne_filter_process_verdict(*(a1 + 40), *(a1 + 56), *(a1 + 32), **(a1 + 48));
LABEL_11:
  xpc_release(*(a1 + 32));
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = (v9 + 180);
      if (atomic_fetch_or(v10, 0))
      {
        if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
        {
          ne_filter_protocol_destroy(*(a1 + 40));
        }
      }
    }
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C0DA5000, v11, OS_LOG_TYPE_INFO, "protocol is null", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ne_filter_process_verdict(void *a1, int a2, void *a3, int a4)
{
  v165 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1[5];
    if (!v5 || !atomic_fetch_or((v5 + 180), 0))
    {
      goto LABEL_10;
    }

    if (!a3 || MEMORY[0x1C68E6D80](a3) != MEMORY[0x1E69E9E80])
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v142 = 136315138;
        v143 = "";
        _os_log_error_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_ERROR, "Received invalid reply from %s, dropping", &v142, 0xCu);
      }

      goto LABEL_10;
    }

    int64 = xpc_dictionary_get_int64(a3, "verdict-value");
    if (!int64)
    {
      v13 = xpc_dictionary_get_int64(a3, "error");
      v14 = v13;
      if (v13 != 6 && v13)
      {
        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v142 = 134218242;
          v143 = v14;
          v144 = 2080;
          *v145 = "";
          _os_log_error_impl(&dword_1C0DA5000, v17, OS_LOG_TYPE_ERROR, "Received error %llu from %s", &v142, 0x16u);
        }

        int64 = 2;
      }

      else
      {
        v15 = ne_log_obj();
        int64 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (int64)
        {
          v16 = "system-internal";
          if (v14 == 6)
          {
            v16 = "gone-away";
          }

          v142 = 136315394;
          v143 = v16;
          v144 = 2080;
          *v145 = "";
          _os_log_error_impl(&dword_1C0DA5000, v15, OS_LOG_TYPE_ERROR, "Received error %s from %s", &v142, 0x16u);
          int64 = 0;
        }
      }
    }

    v18 = *(v5 + 144);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      LOBYTE(v23) = 1;
      LOBYTE(v24) = 1;
      do
      {
        if (*v18 == a4)
        {
          if (!int64)
          {
            if (*(v18 + 40) == 3)
            {
              int64 = 1;
            }

            else
            {
              int64 = 2;
            }
          }

          *(v18 + 40) = int64;
          v25 = int64;
          v19 = v18;
        }

        else
        {
          v25 = *(v18 + 40);
        }

        v24 = (v25 != 0) & v24;
        v23 = (v25 == 1) & v23;
        if (v20)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25 == 3;
        }

        if (v26)
        {
          v20 = v18;
        }

        if (v25 == 3)
        {
          v21 = v18;
        }

        v27 = v25 > 3 || v25 == 2;
        v22 |= v27;
        v18 = *(v18 + 152);
      }

      while (v18);
      if (v19)
      {
        if ((v23 & 1) == 0)
        {
          if ((v22 & 1) == 0)
          {
            v28 = (v5 + 176);
            if (v24)
            {
              *v28 = 3;
LABEL_51:
              *(v5 + 160) = v20;
              v30 = (v5 + 160);
              v28 = (v5 + 176);
              *(v5 + 168) = v21;
              v31 = (v5 + 168);
              goto LABEL_52;
            }

            *(v5 + 160) = v20;
            v30 = (v5 + 160);
            v64 = *(v5 + 176);
            *(v5 + 168) = v21;
            v31 = (v5 + 168);
            if (v64 != 2)
            {
LABEL_52:
              *(v19 + 48) = xpc_dictionary_get_uint64(a3, "input-pass-offset");
              *(v19 + 56) = xpc_dictionary_get_uint64(a3, "input-peek-offset");
              *(v19 + 64) = xpc_dictionary_get_uint64(a3, "output-pass-offset");
              *(v19 + 72) = xpc_dictionary_get_uint64(a3, "output-peek-offset");
              memset(out, 0, 37);
              uuid_unparse(v5, out);
              v32 = *(v5 + 176);
              v33 = ne_log_obj();
              v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);
              if (v32 == 3)
              {
                if (!v34)
                {
                  goto LABEL_59;
                }

                v35 = *(v5 + 80);
                if (v35)
                {
                  LODWORD(v35) = nw_parameters_get_ip_protocol();
                }

                v36 = *v30;
                if (*v30)
                {
                  v38 = v36[6];
                  v39 = v36[7];
                  v37 = v36[8];
                  v40 = v36[9];
                }

                else
                {
                  v37 = -1;
                  v38 = -1;
                  v39 = -1;
                  v40 = -1;
                }

                v92 = *v31;
                if (*v31)
                {
                  v94 = v92[6];
                  v95 = v92[7];
                  v93 = v92[8];
                  v96 = v92[9];
                }

                else
                {
                  v93 = -1;
                  v94 = -1;
                  v95 = -1;
                  v96 = -1;
                }

                v110 = *(v19 + 40);
                if (v110 > 3)
                {
                  v111 = "unknown";
                }

                else
                {
                  v111 = off_1E812BFE0[v110];
                }

                v142 = 136317954;
                v143 = out;
                v144 = 1024;
                *v145 = v35;
                *&v145[4] = 2048;
                *&v145[6] = v38;
                v146 = 2048;
                v147 = v39;
                v148 = 2048;
                v149 = v37;
                v150 = 2048;
                v151 = v40;
                v152 = 2048;
                v153 = v94;
                v154 = 2048;
                v155 = v95;
                v156 = 2048;
                v157 = v93;
                v158 = 2048;
                v159 = v96;
                v160 = 2080;
                v161 = "";
                v162 = 2080;
                v163 = v111;
                v112 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]new verdict from %s: %s";
                v113 = v33;
                v114 = 118;
              }

              else
              {
                if (!v34)
                {
                  goto LABEL_59;
                }

                v83 = *(v5 + 80);
                if (v83)
                {
                  LODWORD(v83) = nw_parameters_get_ip_protocol();
                }

                v84 = *v28;
                if (v84 > 3)
                {
                  v85 = "unknown";
                }

                else
                {
                  v85 = off_1E812BFE0[v84];
                }

                v105 = *(v19 + 40);
                if (v105 > 3)
                {
                  v106 = "unknown";
                }

                else
                {
                  v106 = off_1E812BFE0[v105];
                }

                v142 = 136316162;
                v143 = out;
                v144 = 1024;
                *v145 = v83;
                *&v145[4] = 2080;
                *&v145[6] = v85;
                v146 = 2080;
                v147 = "";
                v148 = 2080;
                v149 = v106;
                v112 = "[filter %s %d %s] new verdict from %s: %s";
                v113 = v33;
                v114 = 48;
              }

              _os_log_debug_impl(&dword_1C0DA5000, v113, OS_LOG_TYPE_DEBUG, v112, &v142, v114);
LABEL_59:
              if ((a2 & 0xFFFFFFFD) == 9)
              {
                *(v19 + 144) = *(v19 + 144) & 0xFFAF | 0x40;
              }

              if ((a2 & 0xFFFFFFFE) == 0xA)
              {
                *(v19 + 144) = *(v19 + 144) & 0xFF5F | 0x80;
              }

              uint64 = xpc_dictionary_get_uint64(a3, "stats-report-frequency");
              ne_filter_stats_toggle(a1, v19, uint64);
              if ((*(v19 + 144) & 2) == 0)
              {
                if ((*v28 | 2) != 3)
                {
                  goto LABEL_124;
                }

                ne_filter_send_approved_frames(v5, 0);
                v42 = *(v19 + 144);
                if ((v42 & 4) != 0)
                {
                  if (*(v19 + 40) == 3 && (v42 & 0x40) == 0 && *(v19 + 64) != -1)
                  {
LABEL_81:
                    v52 = *(v5 + 120);
                    if ((v52 & 0x100) != 0)
                    {
                      if ((v52 & 0x400) != 0)
                      {
                        goto LABEL_88;
                      }
                    }

                    else if ((*(v5 + 120) & 0x430) != 0x10)
                    {
                      goto LABEL_88;
                    }

                    if ((nw_frame_array_is_empty() & 1) != 0 || *(v19 + 104) >= *(v19 + 64))
                    {
                      ne_filter_handle_output_finished(a1);
                    }

LABEL_88:
                    ne_filter_read_approved_frames(v5, 0);
                    v53 = *(v19 + 144);
                    if ((v53 & 8) != 0)
                    {
                      if (*(v19 + 40) == 3 && (v53 & 0x80) == 0 && *(v19 + 48) != -1)
                      {
LABEL_95:
                        v54 = *(v5 + 120);
                        if ((v54 & 0x200) != 0)
                        {
                          if ((v54 & 0x800) != 0)
                          {
                            goto LABEL_102;
                          }
                        }

                        else if ((*(v5 + 120) & 0x8C0) != 0x40)
                        {
                          goto LABEL_102;
                        }

                        if ((nw_frame_array_is_empty() & 1) != 0 || *(v19 + 88) >= *(v19 + 48))
                        {
                          ne_filter_handle_input_finished(a1, 0);
                        }

LABEL_102:
                        if ((*(v5 + 120) & 0x10) == 0 && (nw_frame_array_is_empty() & 1) == 0)
                        {
                          memset(out, 0, 37);
                          uuid_unparse(v5, out);
                          v55 = *(v5 + 176);
                          v56 = ne_log_obj();
                          v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);
                          if (v55 == 3)
                          {
                            if (v57)
                            {
                              v58 = *(v5 + 80);
                              if (v58)
                              {
                                LODWORD(v58) = nw_parameters_get_ip_protocol();
                              }

                              v59 = *v30;
                              if (*v30)
                              {
                                v61 = v59[6];
                                v62 = v59[7];
                                v60 = v59[8];
                                v63 = v59[9];
                              }

                              else
                              {
                                v60 = -1;
                                v61 = -1;
                                v62 = -1;
                                v63 = -1;
                              }

                              v134 = *v31;
                              if (*v31)
                              {
                                v136 = v134[6];
                                v137 = v134[7];
                                v135 = v134[8];
                                v138 = v134[9];
                              }

                              else
                              {
                                v135 = -1;
                                v136 = -1;
                                v137 = -1;
                                v138 = -1;
                              }

                              v142 = 136317442;
                              v143 = out;
                              v144 = 1024;
                              *v145 = v58;
                              *&v145[4] = 2048;
                              *&v145[6] = v61;
                              v146 = 2048;
                              v147 = v62;
                              v148 = 2048;
                              v149 = v60;
                              v150 = 2048;
                              v151 = v63;
                              v152 = 2048;
                              v153 = v136;
                              v154 = 2048;
                              v155 = v137;
                              v156 = 2048;
                              v157 = v135;
                              v158 = 2048;
                              v159 = v138;
                              v139 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending input available";
                              v140 = v56;
                              v141 = 98;
LABEL_197:
                              _os_log_debug_impl(&dword_1C0DA5000, v140, OS_LOG_TYPE_DEBUG, v139, &v142, v141);
                            }
                          }

                          else if (v57)
                          {
                            v131 = *(v5 + 80);
                            if (v131)
                            {
                              LODWORD(v131) = nw_parameters_get_ip_protocol();
                            }

                            v132 = *v28;
                            if (v132 > 3)
                            {
                              v133 = "unknown";
                            }

                            else
                            {
                              v133 = off_1E812BFE0[v132];
                            }

                            v142 = 136315650;
                            v143 = out;
                            v144 = 1024;
                            *v145 = v131;
                            *&v145[4] = 2080;
                            *&v145[6] = v133;
                            v139 = "[filter %s %d %s] sending input available";
                            v140 = v56;
                            v141 = 28;
                            goto LABEL_197;
                          }

                          ne_filter_protocol_input_available(v5);
                        }

LABEL_124:
                        memset(out, 0, 37);
                        uuid_unparse(v5, out);
                        v74 = *(v5 + 176);
                        v75 = ne_log_obj();
                        v76 = os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG);
                        if (v74 == 3)
                        {
                          if (v76)
                          {
                            v77 = *(v5 + 80);
                            if (v77)
                            {
                              LODWORD(v77) = nw_parameters_get_ip_protocol();
                            }

                            v78 = *v30;
                            if (*v30)
                            {
                              v80 = v78[6];
                              v81 = v78[7];
                              v79 = v78[8];
                              v82 = v78[9];
                            }

                            else
                            {
                              v79 = -1;
                              v80 = -1;
                              v81 = -1;
                              v82 = -1;
                            }

                            v100 = *v31;
                            if (*v31)
                            {
                              v102 = v100[6];
                              v103 = v100[7];
                              v101 = v100[8];
                              v104 = v100[9];
                            }

                            else
                            {
                              v101 = -1;
                              v102 = -1;
                              v103 = -1;
                              v104 = -1;
                            }

                            v142 = 136317442;
                            v143 = out;
                            v144 = 1024;
                            *v145 = v77;
                            *&v145[4] = 2048;
                            *&v145[6] = v80;
                            v146 = 2048;
                            v147 = v81;
                            v148 = 2048;
                            v149 = v79;
                            v150 = 2048;
                            v151 = v82;
                            v152 = 2048;
                            v153 = v102;
                            v154 = 2048;
                            v155 = v103;
                            v156 = 2048;
                            v157 = v101;
                            v158 = 2048;
                            v159 = v104;
                            v107 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]finished processing new verdict";
                            v108 = v75;
                            v109 = 98;
LABEL_164:
                            _os_log_debug_impl(&dword_1C0DA5000, v108, OS_LOG_TYPE_DEBUG, v107, &v142, v109);
                          }
                        }

                        else if (v76)
                        {
                          v86 = *(v5 + 80);
                          if (v86)
                          {
                            LODWORD(v86) = nw_parameters_get_ip_protocol();
                          }

                          v87 = *v28;
                          if (v87 > 3)
                          {
                            v88 = "unknown";
                          }

                          else
                          {
                            v88 = off_1E812BFE0[v87];
                          }

                          v142 = 136315650;
                          v143 = out;
                          v144 = 1024;
                          *v145 = v86;
                          *&v145[4] = 2080;
                          *&v145[6] = v88;
                          v107 = "[filter %s %d %s] finished processing new verdict";
                          v108 = v75;
                          v109 = 28;
                          goto LABEL_164;
                        }

                        ne_filter_cleanup(a1);
                        goto LABEL_10;
                      }
                    }

                    else if ((v53 & 0x80) == 0)
                    {
                      goto LABEL_95;
                    }

                    ne_filter_handle_input_finished(a1, 0);
                    goto LABEL_95;
                  }
                }

                else if ((v42 & 0x40) == 0)
                {
                  goto LABEL_81;
                }

                ne_filter_handle_output_finished(a1);
                goto LABEL_81;
              }

              memset(out, 0, 37);
              uuid_unparse(v5, out);
              v43 = *(v5 + 176);
              v44 = ne_log_obj();
              v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
              if (v43 == 3)
              {
                if (!v45)
                {
                  goto LABEL_75;
                }

                v46 = *(v5 + 80);
                if (v46)
                {
                  LODWORD(v46) = nw_parameters_get_ip_protocol();
                }

                v47 = *v30;
                if (*v30)
                {
                  v49 = v47[6];
                  v50 = v47[7];
                  v48 = v47[8];
                  v51 = v47[9];
                }

                else
                {
                  v48 = -1;
                  v49 = -1;
                  v50 = -1;
                  v51 = -1;
                }

                v123 = *v31;
                if (*v31)
                {
                  v125 = v123[6];
                  v126 = v123[7];
                  v124 = v123[8];
                  v127 = v123[9];
                }

                else
                {
                  v124 = -1;
                  v125 = -1;
                  v126 = -1;
                  v127 = -1;
                }

                v142 = 136317698;
                v143 = out;
                v144 = 1024;
                *v145 = v46;
                *&v145[4] = 2048;
                *&v145[6] = v49;
                v146 = 2048;
                v147 = v50;
                v148 = 2048;
                v149 = v48;
                v150 = 2048;
                v151 = v51;
                v152 = 2048;
                v153 = v125;
                v154 = 2048;
                v155 = v126;
                v156 = 2048;
                v157 = v124;
                v158 = 2048;
                v159 = v127;
                v160 = 2080;
                v161 = "";
                v128 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]received initial verdict from %s";
                v129 = v44;
                v130 = 108;
              }

              else
              {
                if (!v45)
                {
                  goto LABEL_75;
                }

                v97 = *(v5 + 80);
                if (v97)
                {
                  LODWORD(v97) = nw_parameters_get_ip_protocol();
                }

                v98 = *v28;
                if (v98 > 3)
                {
                  v99 = "unknown";
                }

                else
                {
                  v99 = off_1E812BFE0[v98];
                }

                v142 = 136315906;
                v143 = out;
                v144 = 1024;
                *v145 = v97;
                *&v145[4] = 2080;
                *&v145[6] = v99;
                v146 = 2080;
                v147 = "";
                v128 = "[filter %s %d %s] received initial verdict from %s";
                v129 = v44;
                v130 = 38;
              }

              _os_log_debug_impl(&dword_1C0DA5000, v129, OS_LOG_TYPE_DEBUG, v128, &v142, v130);
LABEL_75:
              *(v19 + 144) &= ~2u;
              if (!ne_filter_protocol_connect(a1))
              {
                ne_filter_protocol_drop_flow(a1);
              }

              goto LABEL_124;
            }

LABEL_114:
            memset(out, 0, 37);
            uuid_unparse(v5, out);
            v65 = *(v5 + 176);
            v66 = ne_log_obj();
            v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG);
            if (v65 == 3)
            {
              if (v67)
              {
                v68 = *(v5 + 80);
                if (v68)
                {
                  LODWORD(v68) = nw_parameters_get_ip_protocol();
                }

                v69 = *v30;
                if (*v30)
                {
                  v71 = v69[6];
                  v72 = v69[7];
                  v70 = v69[8];
                  v73 = v69[9];
                }

                else
                {
                  v70 = -1;
                  v71 = -1;
                  v72 = -1;
                  v73 = -1;
                }

                v115 = *v31;
                if (*v31)
                {
                  v117 = v115[6];
                  v118 = v115[7];
                  v116 = v115[8];
                  v119 = v115[9];
                }

                else
                {
                  v116 = -1;
                  v117 = -1;
                  v118 = -1;
                  v119 = -1;
                }

                v142 = 136317442;
                v143 = out;
                v144 = 1024;
                *v145 = v68;
                *&v145[4] = 2048;
                *&v145[6] = v71;
                v146 = 2048;
                v147 = v72;
                v148 = 2048;
                v149 = v70;
                v150 = 2048;
                v151 = v73;
                v152 = 2048;
                v153 = v117;
                v154 = 2048;
                v155 = v118;
                v156 = 2048;
                v157 = v116;
                v158 = 2048;
                v159 = v119;
                v120 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]overall verdict is drop, dropping the flow";
                v121 = v66;
                v122 = 98;
LABEL_177:
                _os_log_debug_impl(&dword_1C0DA5000, v121, OS_LOG_TYPE_DEBUG, v120, &v142, v122);
              }
            }

            else if (v67)
            {
              v89 = *(v5 + 80);
              if (v89)
              {
                LODWORD(v89) = nw_parameters_get_ip_protocol();
              }

              v90 = *v28;
              if (v90 > 3)
              {
                v91 = "unknown";
              }

              else
              {
                v91 = off_1E812BFE0[v90];
              }

              v142 = 136315650;
              v143 = out;
              v144 = 1024;
              *v145 = v89;
              *&v145[4] = 2080;
              *&v145[6] = v91;
              v120 = "[filter %s %d %s] overall verdict is drop, dropping the flow";
              v121 = v66;
              v122 = 28;
              goto LABEL_177;
            }

            ne_filter_protocol_drop_flow(a1);
            goto LABEL_10;
          }

LABEL_113:
          *(v5 + 176) = 2;
          v28 = (v5 + 176);
          *(v5 + 160) = v20;
          v30 = (v5 + 160);
          *(v5 + 168) = v21;
          v31 = (v5 + 168);
          goto LABEL_114;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v23 = 1;
    }

    v29 = ne_log_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v142 = 136315138;
      v143 = "";
      _os_log_error_impl(&dword_1C0DA5000, v29, OS_LOG_TYPE_ERROR, "Failed to find the filter client for provider %s", &v142, 0xCu);
      if ((v23 & 1) == 0)
      {
        goto LABEL_113;
      }
    }

    else if (!v23)
    {
      goto LABEL_113;
    }

    v19 = 0;
LABEL_50:
    *(v5 + 176) = 1;
    goto LABEL_51;
  }

  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v142) = 0;
    _os_log_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_INFO, "protocol is null", &v142, 2u);
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
}

void ne_filter_protocol_drop_flow(void *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *v41 = 136315138;
    *&v41[4] = "ne_filter_protocol_drop_flow";
    v13 = "%s called with null protocol";
LABEL_14:
    _os_log_fault_impl(&dword_1C0DA5000, v12, OS_LOG_TYPE_FAULT, v13, v41, 0xCu);
    goto LABEL_29;
  }

  v2 = a1[5];
  if (!v2)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_29;
    }

    *v41 = 136315138;
    *&v41[4] = "ne_filter_protocol_drop_flow";
    v13 = "%s called with null filter";
    goto LABEL_14;
  }

  if (!atomic_fetch_or((v2 + 180), 0))
  {
    goto LABEL_29;
  }

  memset(out, 0, 37);
  uuid_unparse(v2, out);
  v3 = *(v2 + 176);
  v4 = ne_log_obj();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 == 3)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v6 = *(v2 + 80);
    if (v6)
    {
      LODWORD(v6) = nw_parameters_get_ip_protocol();
    }

    v7 = *(v2 + 160);
    if (v7)
    {
      v9 = v7[6];
      v10 = v7[7];
      v8 = v7[8];
      v11 = v7[9];
    }

    else
    {
      v8 = -1;
      v9 = -1;
      v10 = -1;
      v11 = -1;
    }

    v33 = *(v2 + 168);
    if (v33)
    {
      v35 = v33[6];
      v36 = v33[7];
      v34 = v33[8];
      v37 = v33[9];
    }

    else
    {
      v34 = -1;
      v35 = -1;
      v36 = -1;
      v37 = -1;
    }

    *v41 = 136317442;
    *&v41[4] = out;
    *&v41[12] = 1024;
    *&v41[14] = v6;
    *&v41[18] = 2048;
    *&v41[20] = v9;
    *&v41[28] = 2048;
    *&v41[30] = v10;
    *&v41[38] = 2048;
    v42 = v8;
    v43 = 2048;
    v44 = v11;
    v45 = 2048;
    v46 = v35;
    v47 = 2048;
    v48 = v36;
    v49 = 2048;
    v50 = v34;
    v51 = 2048;
    v52 = v37;
    v38 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]drop flow";
    v39 = v4;
    v40 = 98;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    v30 = *(v2 + 80);
    if (v30)
    {
      LODWORD(v30) = nw_parameters_get_ip_protocol();
    }

    v31 = *(v2 + 176);
    if (v31 > 3)
    {
      v32 = "unknown";
    }

    else
    {
      v32 = off_1E812BFE0[v31];
    }

    *v41 = 136315650;
    *&v41[4] = out;
    *&v41[12] = 1024;
    *&v41[14] = v30;
    *&v41[18] = 2080;
    *&v41[20] = v32;
    v38 = "[filter %s %d %s] drop flow";
    v39 = v4;
    v40 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v39, OS_LOG_TYPE_DEBUG, v38, v41, v40);
LABEL_16:
  v14 = a1[6];
  if (v14)
  {
    *(v2 + 176) = 2;
    for (i = *(v2 + 144); i; i = *(i + 152))
    {
      *(i + 40) = 2;
    }

    ne_filter_protocol_retain(a1);
    v22 = *(v2 + 120);
    if ((v22 & 0x80) == 0)
    {
      *(v2 + 120) = v22 | 0x80;
      v23 = *(v14 + 24);
      v24 = *(v23 + 56);
      if (v24)
      {
        v24(v14, a1, 57);
        v23 = *(v14 + 24);
      }

      v25 = *(v23 + 48);
      if (v25)
      {
        v25(v14, a1);
      }
    }

    v26 = *(v2 + 120);
    if ((v26 & 0x20) == 0)
    {
      *(v2 + 120) = v26 | 0x20;
      v27 = a1[4];
      if (v27)
      {
        v28 = *(*(v27 + 24) + 32);
        if (v28)
        {
          v28(v27, a1, v16, v17, v18, v19, v20, v21, *v41, *&v41[8], *&v41[16], *&v41[24], *&v41[32]);
        }
      }
    }

    ne_filter_cleanup(a1);
    ne_filter_protocol_release(a1);
  }

LABEL_29:
  v29 = *MEMORY[0x1E69E9840];
}

BOOL ne_filter_protocol_connect(uint64_t a1)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = ne_log_obj();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_41;
    }

    v72 = 136315138;
    v73 = "ne_filter_protocol_connect";
    v10 = "%s called with null protocol";
LABEL_18:
    _os_log_fault_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_FAULT, v10, &v72, 0xCu);
    goto LABEL_40;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v9 = ne_log_obj();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (!result)
    {
      goto LABEL_41;
    }

    v72 = 136315138;
    v73 = "ne_filter_protocol_connect";
    v10 = "%s called with null filter";
    goto LABEL_18;
  }

  if (!atomic_fetch_or((v2 + 180), 0))
  {
    goto LABEL_40;
  }

  v3 = *(v2 + 120);
  *(v2 + 120) = v3 | 4;
  if ((v3 & 2) != 0)
  {
    memset(out, 0, 37);
    uuid_unparse(v2, out);
    v11 = *(v2 + 176);
    v12 = ne_log_obj();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11 == 3)
    {
      if (v13)
      {
        v14 = *(v2 + 80);
        if (v14)
        {
          LODWORD(v14) = nw_parameters_get_ip_protocol();
        }

        v15 = *(v2 + 160);
        if (v15)
        {
          v17 = v15[6];
          v18 = v15[7];
          v16 = v15[8];
          v19 = v15[9];
        }

        else
        {
          v16 = -1;
          v17 = -1;
          v18 = -1;
          v19 = -1;
        }

        v46 = *(v2 + 168);
        if (v46)
        {
          v48 = v46[6];
          v49 = v46[7];
          v47 = v46[8];
          v50 = v46[9];
        }

        else
        {
          v47 = -1;
          v48 = -1;
          v49 = -1;
          v50 = -1;
        }

        v72 = 136317442;
        v73 = out;
        v74 = 1024;
        v75 = v14;
        v76 = 2048;
        v77 = v17;
        v78 = 2048;
        v79 = v18;
        v80 = 2048;
        v81 = v16;
        v82 = 2048;
        v83 = v19;
        v84 = 2048;
        v85 = v48;
        v86 = 2048;
        v87 = v49;
        v88 = 2048;
        v89 = v47;
        v90 = 2048;
        v91 = v50;
        v51 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]waiting for xpc connection";
LABEL_67:
        v52 = v12;
        v53 = 98;
        goto LABEL_68;
      }
    }

    else if (v13)
    {
      v40 = *(v2 + 80);
      if (v40)
      {
        LODWORD(v40) = nw_parameters_get_ip_protocol();
      }

      v41 = *(v2 + 176);
      if (v41 > 3)
      {
        v42 = "unknown";
      }

      else
      {
        v42 = off_1E812BFE0[v41];
      }

      v72 = 136315650;
      v73 = out;
      v74 = 1024;
      v75 = v40;
      v76 = 2080;
      v77 = v42;
      v51 = "[filter %s %d %s] waiting for xpc connection";
      goto LABEL_64;
    }

LABEL_32:
    result = 1;
    goto LABEL_41;
  }

  v4 = *(v2 + 176);
  if (v4 != 3 && v4 != 1)
  {
    if (!v4)
    {
      v20 = *(v2 + 144);
      if (v20)
      {
        result = 1;
        while (*(v20 + 40))
        {
          v20 = *(v20 + 152);
          if (!v20)
          {
            goto LABEL_41;
          }
        }

        v31 = *(v20 + 144);
        if ((v31 & 2) == 0)
        {
          *(v20 + 144) = v31 | 2;
          ne_filter_data_protocol_send_new_flow(a1, v20);
          goto LABEL_32;
        }

        memset(out, 0, 37);
        uuid_unparse(v2, out);
        v32 = *(v2 + 176);
        v12 = ne_log_obj();
        v33 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        if (v32 == 3)
        {
          if (!v33)
          {
            goto LABEL_32;
          }

          v34 = *(v2 + 80);
          if (v34)
          {
            LODWORD(v34) = nw_parameters_get_ip_protocol();
          }

          v35 = *(v2 + 160);
          if (v35)
          {
            v37 = v35[6];
            v38 = v35[7];
            v36 = v35[8];
            v39 = v35[9];
          }

          else
          {
            v36 = -1;
            v37 = -1;
            v38 = -1;
            v39 = -1;
          }

          v67 = *(v2 + 168);
          if (v67)
          {
            v69 = v67[6];
            v70 = v67[7];
            v68 = v67[8];
            v71 = v67[9];
          }

          else
          {
            v68 = -1;
            v69 = -1;
            v70 = -1;
            v71 = -1;
          }

          v72 = 136317442;
          v73 = out;
          v74 = 1024;
          v75 = v34;
          v76 = 2048;
          v77 = v37;
          v78 = 2048;
          v79 = v38;
          v80 = 2048;
          v81 = v36;
          v82 = 2048;
          v83 = v39;
          v84 = 2048;
          v85 = v69;
          v86 = 2048;
          v87 = v70;
          v88 = 2048;
          v89 = v68;
          v90 = 2048;
          v91 = v71;
          v51 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]suppressing duplicate connect call while waiting for initial verdict";
          goto LABEL_67;
        }

        if (!v33)
        {
          goto LABEL_32;
        }

        v43 = *(v2 + 80);
        if (v43)
        {
          LODWORD(v43) = nw_parameters_get_ip_protocol();
        }

        v44 = *(v2 + 176);
        if (v44 > 3)
        {
          v45 = "unknown";
        }

        else
        {
          v45 = off_1E812BFE0[v44];
        }

        v72 = 136315650;
        v73 = out;
        v74 = 1024;
        v75 = v43;
        v76 = 2080;
        v77 = v45;
        v51 = "[filter %s %d %s] suppressing duplicate connect call while waiting for initial verdict";
LABEL_64:
        v52 = v12;
        v53 = 28;
LABEL_68:
        _os_log_debug_impl(&dword_1C0DA5000, v52, OS_LOG_TYPE_DEBUG, v51, &v72, v53);
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    memset(out, 0, 37);
    uuid_unparse(v2, out);
    v21 = *(v2 + 176);
    v22 = ne_log_obj();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    if (v21 == 3)
    {
      if (v23)
      {
        v24 = *(v2 + 80);
        if (v24)
        {
          LODWORD(v24) = nw_parameters_get_ip_protocol();
        }

        v25 = *(v2 + 160);
        if (v25)
        {
          v27 = v25[6];
          v28 = v25[7];
          v26 = v25[8];
          v29 = v25[9];
        }

        else
        {
          v26 = -1;
          v27 = -1;
          v28 = -1;
          v29 = -1;
        }

        v57 = *(v2 + 168);
        if (v57)
        {
          v59 = v57[6];
          v60 = v57[7];
          v58 = v57[8];
          v61 = v57[9];
        }

        else
        {
          v58 = -1;
          v59 = -1;
          v60 = -1;
          v61 = -1;
        }

        v62 = *(v2 + 176);
        if (v62 > 3)
        {
          v63 = "unknown";
        }

        else
        {
          v63 = off_1E812BFE0[v62];
        }

        v72 = 136317698;
        v73 = out;
        v74 = 1024;
        v75 = v24;
        v76 = 2048;
        v77 = v27;
        v78 = 2048;
        v79 = v28;
        v80 = 2048;
        v81 = v26;
        v82 = 2048;
        v83 = v29;
        v84 = 2048;
        v85 = v59;
        v86 = 2048;
        v87 = v60;
        v88 = 2048;
        v89 = v58;
        v90 = 2048;
        v91 = v61;
        v92 = 2080;
        v93 = v63;
        v64 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]failing call to connect because of verdict: %s";
        v65 = v22;
        v66 = 108;
        goto LABEL_90;
      }

LABEL_40:
      result = 0;
      goto LABEL_41;
    }

    if (!v23)
    {
      goto LABEL_40;
    }

    v54 = *(v2 + 80);
    if (v54)
    {
      LODWORD(v54) = nw_parameters_get_ip_protocol();
    }

    v55 = *(v2 + 176);
    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v56 = "drop";
        goto LABEL_89;
      }

      if (v55 == 3)
      {
        v56 = "more-data";
        goto LABEL_89;
      }
    }

    else
    {
      if (!v55)
      {
        v56 = "invalid";
        goto LABEL_89;
      }

      if (v55 == 1)
      {
        v56 = "pass";
LABEL_89:
        v72 = 136315906;
        v73 = out;
        v74 = 1024;
        v75 = v54;
        v76 = 2080;
        v77 = v56;
        v78 = 2080;
        v79 = v56;
        v64 = "[filter %s %d %s] failing call to connect because of verdict: %s";
        v65 = v22;
        v66 = 38;
LABEL_90:
        _os_log_debug_impl(&dword_1C0DA5000, v65, OS_LOG_TYPE_DEBUG, v64, &v72, v66);
        goto LABEL_40;
      }
    }

    v56 = "unknown";
    goto LABEL_89;
  }

  result = 1;
  if ((v3 & 0x40) == 0)
  {
    v7 = *(v2 + 32);
    if (v7)
    {
      v8 = *(*(v7 + 24) + 24);
      if (v8)
      {
        v8(*(v2 + 32), a1);
        goto LABEL_32;
      }
    }
  }

LABEL_41:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ne_filter_send_approved_frames(uint64_t a1, uint64_t a2)
{
  v143 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(a1, out);
  v4 = *(a1 + 176);
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4 == 3)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      LODWORD(v7) = nw_parameters_get_ip_protocol();
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      v10 = v8[6];
      v11 = v8[7];
      v9 = v8[8];
      v12 = v8[9];
    }

    else
    {
      v9 = -1;
      v10 = -1;
      v11 = -1;
      v12 = -1;
    }

    v62 = *(a1 + 168);
    if (v62)
    {
      v64 = v62[6];
      v65 = v62[7];
      v63 = v62[8];
      v66 = v62[9];
    }

    else
    {
      v63 = -1;
      v64 = -1;
      v65 = -1;
      v66 = -1;
    }

    *buf = 136317442;
    *&buf[4] = out;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    v124 = 2048;
    v125 = v10;
    v126 = 2048;
    v127 = v11;
    v128 = 2048;
    v129 = v9;
    v130 = 2048;
    v131 = v12;
    v132 = 2048;
    v133 = v64;
    v134 = 2048;
    v135 = v65;
    v136 = 2048;
    v137 = v63;
    v138 = 2048;
    v139 = v66;
    v67 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending approved frames";
    v68 = v5;
    v69 = 98;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v59 = *(a1 + 80);
    if (v59)
    {
      LODWORD(v59) = nw_parameters_get_ip_protocol();
    }

    v60 = *(a1 + 176);
    if (v60 > 3)
    {
      v61 = "unknown";
    }

    else
    {
      v61 = off_1E812BFE0[v60];
    }

    *buf = 136315650;
    *&buf[4] = out;
    *&buf[12] = 1024;
    *&buf[14] = v59;
    v124 = 2080;
    v125 = v61;
    v67 = "[filter %s %d %s] sending approved frames";
    v68 = v5;
    v69 = 28;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v68, OS_LOG_TYPE_DEBUG, v67, buf, v69);
LABEL_8:
  v122[0] = 0;
  v122[1] = 0;
  nw_frame_array_init();
  if (a2)
  {
    nw_frame_array_append_array();
  }

  v13 = *(a1 + 144);
  if (v13)
  {
    while (1)
    {
      if (*(v13 + 40) != 3 || *(v13 + 64) == -1)
      {
        goto LABEL_23;
      }

      if ((nw_frame_array_is_empty() & 1) == 0)
      {
        break;
      }

LABEL_20:
      if (ne_filter_data_protocol_send_data(a1, v13, 0) && (*(v13 + 144) & 4) != 0)
      {
        ne_filter_data_protocol_send_finished(a1, v13, 9);
        *(v13 + 144) &= ~4u;
      }

LABEL_23:
      if (*(v13 + 104) < *(v13 + 64) && (nw_frame_array_is_empty() & 1) == 0)
      {
        memset(out, 0, 37);
        uuid_unparse(a1, out);
        v17 = *(a1 + 176);
        v18 = ne_log_obj();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v17 == 3)
        {
          if (v19)
          {
            if (*(a1 + 80))
            {
              ip_protocol = nw_parameters_get_ip_protocol();
            }

            else
            {
              ip_protocol = 0;
            }

            v22 = *(a1 + 160);
            if (v22)
            {
              v111 = v22[7];
              v113 = v22[6];
              v24 = v22[8];
              v23 = v22[9];
              v115 = v24;
            }

            else
            {
              v23 = -1;
              v113 = -1;
              v115 = -1;
              v111 = -1;
            }

            v109 = v23;
            v25 = *(a1 + 168);
            if (v25)
            {
              v28 = v25[6];
              v26 = v25[7];
              v27 = v25[9];
              v105 = v28;
              v107 = v25[8];
            }

            else
            {
              v105 = -1;
              v107 = -1;
              v26 = -1;
              v27 = -1;
            }

            v29 = nw_frame_array_unclaimed_length();
            *buf = 136317698;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = ip_protocol;
            v124 = 2048;
            v125 = v113;
            v126 = 2048;
            v127 = v111;
            v128 = 2048;
            v129 = v115;
            v130 = 2048;
            v131 = v109;
            v132 = 2048;
            v133 = v105;
            v134 = 2048;
            v135 = v26;
            v136 = 2048;
            v137 = v107;
            v138 = 2048;
            v139 = v27;
            v140 = 1024;
            v141 = v29;
            v30 = v18;
            v31 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]have %u pending output bytes";
            v32 = 104;
            goto LABEL_52;
          }
        }

        else if (v19)
        {
          if (*(a1 + 80))
          {
            v20 = nw_parameters_get_ip_protocol();
          }

          else
          {
            v20 = 0;
          }

          v33 = *(a1 + 176);
          v34 = "unknown";
          if (v33 <= 3)
          {
            v34 = off_1E812BFE0[v33];
          }

          v35 = nw_frame_array_unclaimed_length();
          *buf = 136315906;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v20;
          v124 = 2080;
          v125 = v34;
          v126 = 1024;
          LODWORD(v127) = v35;
          v30 = v18;
          v31 = "[filter %s %d %s] have %u pending output bytes";
          v32 = 34;
LABEL_52:
          _os_log_debug_impl(&dword_1C0DA5000, v30, OS_LOG_TYPE_DEBUG, v31, buf, v32);
        }

        *buf = 0;
        *&buf[8] = 0;
        nw_frame_array_init();
        nw_frame_array_foreach();
        if ((nw_frame_array_is_empty() & 1) == 0)
        {
          nw_frame_array_prepend_array();
        }
      }

      if ((nw_frame_array_is_empty() & 1) == 0)
      {
        *(a1 + 120) |= 0x2000u;
      }

      v13 = *(v13 + 152);
      if (!v13)
      {
        goto LABEL_66;
      }
    }

    memset(out, 0, 37);
    uuid_unparse(a1, out);
    v14 = *(a1 + 176);
    v15 = ne_log_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (v14 == 3)
    {
      if (v16)
      {
        if (*(a1 + 80))
        {
          v117 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v117 = 0;
        }

        v36 = *(a1 + 160);
        if (v36)
        {
          v112 = v36[7];
          v114 = v36[6];
          v38 = v36[8];
          v37 = v36[9];
          v116 = v38;
        }

        else
        {
          v37 = -1;
          v114 = -1;
          v116 = -1;
          v112 = -1;
        }

        v110 = v37;
        v39 = *(a1 + 168);
        if (v39)
        {
          v42 = v39[6];
          v40 = v39[7];
          v41 = v39[9];
          v106 = v42;
          v108 = v39[8];
        }

        else
        {
          v106 = -1;
          v108 = -1;
          v40 = -1;
          v41 = -1;
        }

        v43 = nw_frame_array_unclaimed_length();
        *buf = 136317698;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v117;
        v124 = 2048;
        v125 = v114;
        v126 = 2048;
        v127 = v112;
        v128 = 2048;
        v129 = v116;
        v130 = 2048;
        v131 = v110;
        v132 = 2048;
        v133 = v106;
        v134 = 2048;
        v135 = v40;
        v136 = 2048;
        v137 = v108;
        v138 = 2048;
        v139 = v41;
        v140 = 1024;
        v141 = v43;
        v44 = v15;
        v45 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending %u bytes to the next filter";
        v46 = 104;
LABEL_65:
        _os_log_debug_impl(&dword_1C0DA5000, v44, OS_LOG_TYPE_DEBUG, v45, buf, v46);
      }
    }

    else if (v16)
    {
      if (*(a1 + 80))
      {
        v21 = nw_parameters_get_ip_protocol();
      }

      else
      {
        v21 = 0;
      }

      v47 = *(a1 + 176);
      v48 = "unknown";
      if (v47 <= 3)
      {
        v48 = off_1E812BFE0[v47];
      }

      v49 = nw_frame_array_unclaimed_length();
      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v21;
      v124 = 2080;
      v125 = v48;
      v126 = 1024;
      LODWORD(v127) = v49;
      v44 = v15;
      v45 = "[filter %s %d %s] sending %u bytes to the next filter";
      v46 = 34;
      goto LABEL_65;
    }

    nw_frame_array_append_array();
    goto LABEL_20;
  }

LABEL_66:
  result = nw_frame_array_is_empty();
  if ((result & 1) == 0)
  {
    if ((*(a1 + 120) & 0x40) == 0)
    {
      v51 = *(a1 + 32);
      if (v51)
      {
        if (*(*(v51 + 24) + 96))
        {
          memset(out, 0, 37);
          uuid_unparse(a1, out);
          v52 = *(a1 + 176);
          v53 = ne_log_obj();
          v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG);
          if (v52 == 3)
          {
            if (v54)
            {
              if (*(a1 + 80))
              {
                v120 = nw_parameters_get_ip_protocol();
              }

              else
              {
                v120 = 0;
              }

              v89 = *(a1 + 160);
              if (v89)
              {
                v90 = v89[6];
                v91 = v89[7];
                v92 = v89[9];
                v119 = v89[8];
              }

              else
              {
                v119 = -1;
                v90 = -1;
                v91 = -1;
                v92 = -1;
              }

              v95 = *(a1 + 168);
              if (v95)
              {
                v97 = v95[6];
                v98 = v95[7];
                v96 = v95[8];
                v99 = v95[9];
              }

              else
              {
                v96 = -1;
                v97 = -1;
                v98 = -1;
                v99 = -1;
              }

              v104 = nw_frame_array_unclaimed_length();
              *buf = 136317698;
              *&buf[4] = out;
              *&buf[12] = 1024;
              *&buf[14] = v120;
              v124 = 2048;
              v125 = v90;
              v126 = 2048;
              v127 = v91;
              v128 = 2048;
              v129 = v119;
              v130 = 2048;
              v131 = v92;
              v132 = 2048;
              v133 = v97;
              v134 = 2048;
              v135 = v98;
              v136 = 2048;
              v137 = v96;
              v138 = 2048;
              v139 = v99;
              v140 = 1024;
              v141 = v104;
              v101 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending %u bytes to the network";
              v102 = v53;
              v103 = 104;
LABEL_126:
              _os_log_debug_impl(&dword_1C0DA5000, v102, OS_LOG_TYPE_DEBUG, v101, buf, v103);
            }
          }

          else if (v54)
          {
            if (*(a1 + 80))
            {
              v88 = nw_parameters_get_ip_protocol();
            }

            else
            {
              v88 = 0;
            }

            v93 = *(a1 + 176);
            if (v93 > 3)
            {
              v94 = "unknown";
            }

            else
            {
              v94 = off_1E812BFE0[v93];
            }

            v100 = nw_frame_array_unclaimed_length();
            *buf = 136315906;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v88;
            v124 = 2080;
            v125 = v94;
            v126 = 1024;
            LODWORD(v127) = v100;
            v101 = "[filter %s %d %s] sending %u bytes to the network";
            v102 = v53;
            v103 = 34;
            goto LABEL_126;
          }

          result = (*(*(v51 + 24) + 96))(v51, v122);
          goto LABEL_82;
        }
      }
    }

    memset(out, 0, 37);
    uuid_unparse(a1, out);
    v55 = *(a1 + 176);
    v56 = ne_log_obj();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG);
    if (v55 == 3)
    {
      if (v57)
      {
        if (*(a1 + 80))
        {
          v121 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v121 = 0;
        }

        v71 = *(a1 + 160);
        if (v71)
        {
          v73 = v71[6];
          v74 = v71[7];
          v72 = v71[8];
          v75 = v71[9];
        }

        else
        {
          v72 = -1;
          v73 = -1;
          v74 = -1;
          v75 = -1;
        }

        v78 = *(a1 + 168);
        if (v78)
        {
          v80 = v78[6];
          v81 = v78[7];
          v79 = v78[8];
          v82 = v78[9];
        }

        else
        {
          v79 = -1;
          v80 = -1;
          v81 = -1;
          v82 = -1;
        }

        v87 = nw_frame_array_unclaimed_length();
        *buf = 136317698;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v121;
        v124 = 2048;
        v125 = v73;
        v126 = 2048;
        v127 = v74;
        v128 = 2048;
        v129 = v72;
        v130 = 2048;
        v131 = v75;
        v132 = 2048;
        v133 = v80;
        v134 = 2048;
        v135 = v81;
        v136 = 2048;
        v137 = v79;
        v138 = 2048;
        v139 = v82;
        v140 = 1024;
        v141 = v87;
        v84 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]output protocol is disconnected or does not exist, dropping %u outbound bytes";
        v85 = v56;
        v86 = 104;
LABEL_110:
        _os_log_debug_impl(&dword_1C0DA5000, v85, OS_LOG_TYPE_DEBUG, v84, buf, v86);
      }
    }

    else if (v57)
    {
      if (*(a1 + 80))
      {
        v70 = nw_parameters_get_ip_protocol();
      }

      else
      {
        v70 = 0;
      }

      v76 = *(a1 + 176);
      if (v76 > 3)
      {
        v77 = "unknown";
      }

      else
      {
        v77 = off_1E812BFE0[v76];
      }

      v83 = nw_frame_array_unclaimed_length();
      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v70;
      v124 = 2080;
      v125 = v77;
      v126 = 1024;
      LODWORD(v127) = v83;
      v84 = "[filter %s %d %s] output protocol is disconnected or does not exist, dropping %u outbound bytes";
      v85 = v56;
      v86 = 34;
      goto LABEL_110;
    }

    result = nw_frame_array_foreach();
  }

LABEL_82:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

void ne_filter_handle_output_finished(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (!v1)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *v58 = 136315138;
      *&v58[4] = "ne_filter_handle_output_finished";
      _os_log_fault_impl(&dword_1C0DA5000, v21, OS_LOG_TYPE_FAULT, "%s called with null filter", v58, 0xCu);
    }

    goto LABEL_34;
  }

  if (!atomic_fetch_or((v1 + 180), 0))
  {
    goto LABEL_34;
  }

  v3 = *(v1 + 120);
  if ((v3 & 0x400) != 0 || *(v1 + 176) != 3 || (v4 = *(v1 + 144)) == 0)
  {
LABEL_10:
    *(v1 + 120) = v3 | 0x400;
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    *(v1 + 120) = v3 & 0xFFFFFAFF | 0x400;
    memset(out, 0, 37);
    uuid_unparse(v1, out);
    v6 = *(v1 + 176);
    v7 = ne_log_obj();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6 == 3)
    {
      if (v8)
      {
        v15 = *(v1 + 80);
        if (v15)
        {
          LODWORD(v15) = nw_parameters_get_ip_protocol();
        }

        v16 = *(v1 + 160);
        if (v16)
        {
          v18 = v16[6];
          v19 = v16[7];
          v17 = v16[8];
          v20 = v16[9];
        }

        else
        {
          v17 = -1;
          v18 = -1;
          v19 = -1;
          v20 = -1;
        }

        v42 = *(v1 + 168);
        if (v42)
        {
          v44 = v42[6];
          v45 = v42[7];
          v43 = v42[8];
          v46 = v42[9];
        }

        else
        {
          v43 = -1;
          v44 = -1;
          v45 = -1;
          v46 = -1;
        }

        *v58 = 136317442;
        *&v58[4] = out;
        *&v58[12] = 1024;
        *&v58[14] = v15;
        *&v58[18] = 2048;
        *&v58[20] = v18;
        *&v58[28] = 2048;
        *&v58[30] = v19;
        *&v58[38] = 2048;
        v59 = v17;
        v60 = 2048;
        v61 = v20;
        v62 = 2048;
        v63 = v44;
        v64 = 2048;
        v65 = v45;
        v66 = 2048;
        v67 = v43;
        v68 = 2048;
        v69 = v46;
        v52 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling output_finished on output protocol";
        v53 = v7;
        v54 = 98;
LABEL_58:
        _os_log_debug_impl(&dword_1C0DA5000, v53, OS_LOG_TYPE_DEBUG, v52, v58, v54);
      }
    }

    else if (v8)
    {
      v36 = *(v1 + 80);
      if (v36)
      {
        LODWORD(v36) = nw_parameters_get_ip_protocol();
      }

      v37 = *(v1 + 176);
      if (v37 > 3)
      {
        v38 = "unknown";
      }

      else
      {
        v38 = off_1E812BFE0[v37];
      }

      *v58 = 136315650;
      *&v58[4] = out;
      *&v58[12] = 1024;
      *&v58[14] = v36;
      *&v58[18] = 2080;
      *&v58[20] = v38;
      v52 = "[filter %s %d %s] calling output_finished on output protocol";
      v53 = v7;
      v54 = 28;
      goto LABEL_58;
    }

    v22 = *(v1 + 32);
    if (v22)
    {
      v23 = *(*(v22 + 24) + 192);
      if (v23)
      {
        v23(v22, a1, v9, v10, v11, v12, v13, v14, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32]);
      }
    }

LABEL_23:
    if ((*(v1 + 120) & 0x30) == 0x10)
    {
      *(v1 + 120) |= 0x20u;
      memset(out, 0, 37);
      uuid_unparse(v1, out);
      v24 = *(v1 + 176);
      v25 = ne_log_obj();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      if (v24 == 3)
      {
        if (!v26)
        {
          goto LABEL_31;
        }

        v27 = *(v1 + 80);
        if (v27)
        {
          LODWORD(v27) = nw_parameters_get_ip_protocol();
        }

        v28 = *(v1 + 160);
        if (v28)
        {
          v30 = v28[6];
          v31 = v28[7];
          v29 = v28[8];
          v32 = v28[9];
        }

        else
        {
          v29 = -1;
          v30 = -1;
          v31 = -1;
          v32 = -1;
        }

        v47 = *(v1 + 168);
        if (v47)
        {
          v49 = v47[6];
          v50 = v47[7];
          v48 = v47[8];
          v51 = v47[9];
        }

        else
        {
          v48 = -1;
          v49 = -1;
          v50 = -1;
          v51 = -1;
        }

        *v58 = 136317442;
        *&v58[4] = out;
        *&v58[12] = 1024;
        *&v58[14] = v27;
        *&v58[18] = 2048;
        *&v58[20] = v30;
        *&v58[28] = 2048;
        *&v58[30] = v31;
        *&v58[38] = 2048;
        v59 = v29;
        v60 = 2048;
        v61 = v32;
        v62 = 2048;
        v63 = v49;
        v64 = 2048;
        v65 = v50;
        v66 = 2048;
        v67 = v48;
        v68 = 2048;
        v69 = v51;
        v55 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling disconnect on output protocol";
        v56 = v25;
        v57 = 98;
      }

      else
      {
        if (!v26)
        {
          goto LABEL_31;
        }

        v39 = *(v1 + 80);
        if (v39)
        {
          LODWORD(v39) = nw_parameters_get_ip_protocol();
        }

        v40 = *(v1 + 176);
        if (v40 > 3)
        {
          v41 = "unknown";
        }

        else
        {
          v41 = off_1E812BFE0[v40];
        }

        *v58 = 136315650;
        *&v58[4] = out;
        *&v58[12] = 1024;
        *&v58[14] = v39;
        *&v58[18] = 2080;
        *&v58[20] = v41;
        v55 = "[filter %s %d %s] calling disconnect on output protocol";
        v56 = v25;
        v57 = 28;
      }

      _os_log_debug_impl(&dword_1C0DA5000, v56, OS_LOG_TYPE_DEBUG, v55, v58, v57);
LABEL_31:
      v33 = *(v1 + 32);
      if (v33)
      {
        if (*(*(v33 + 24) + 32))
        {
          (*(*(*(a1 + 32) + 24) + 32))();
        }
      }
    }

LABEL_34:
    v34 = *MEMORY[0x1E69E9840];
    return;
  }

  while (1)
  {
    if (*(v4 + 40) == 3 && *(v4 + 64) != -1)
    {
      v5 = *(v4 + 144);
      if ((v5 & 0x40) == 0)
      {
        break;
      }
    }

    v4 = *(v4 + 152);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  *(v4 + 144) = v5 | 4;
  v35 = *MEMORY[0x1E69E9840];

  ne_filter_send_approved_frames(v1, 0);
}

uint64_t ne_filter_read_approved_frames(uint64_t a1, uint64_t a2)
{
  v91 = *MEMORY[0x1E69E9840];
  nw_frame_array_init();
  if (a2 && nw_frame_array_unclaimed_length())
  {
    nw_frame_array_append_array();
  }

  for (i = *(a1 + 144); i; i = *(i + 152))
  {
    if (*(i + 40) == 3 && *(i + 48) != -1)
    {
      if ((nw_frame_array_is_empty() & 1) == 0)
      {
        memset(out, 0, 37);
        uuid_unparse(a1, out);
        v5 = *(a1 + 176);
        v6 = ne_log_obj();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (v5 == 3)
        {
          if (v7)
          {
            if (*(a1 + 80))
            {
              ip_protocol = nw_parameters_get_ip_protocol();
            }

            else
            {
              ip_protocol = 0;
            }

            v28 = *(a1 + 160);
            if (v28)
            {
              v31 = v28[6];
              v29 = v28[7];
              v30 = v28[9];
              v65 = v31;
              v67 = v28[8];
            }

            else
            {
              v65 = -1;
              v67 = -1;
              v29 = -1;
              v30 = -1;
            }

            v32 = *(a1 + 168);
            if (v32)
            {
              v34 = v32[6];
              v35 = v32[7];
              v33 = v32[8];
              v36 = v32[9];
            }

            else
            {
              v33 = -1;
              v34 = -1;
              v35 = -1;
              v36 = -1;
            }

            v37 = nw_frame_array_unclaimed_length();
            *buf = 136317698;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = ip_protocol;
            v72 = 2048;
            v73 = v65;
            v74 = 2048;
            v75 = v29;
            v76 = 2048;
            v77 = v67;
            v78 = 2048;
            v79 = v30;
            v80 = 2048;
            v81 = v34;
            v82 = 2048;
            v83 = v35;
            v84 = 2048;
            v85 = v33;
            v86 = 2048;
            v87 = v36;
            v88 = 1024;
            v89 = v37;
            _os_log_debug_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEBUG, "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]sending %u input bytes to the next filter", buf, 0x68u);
          }
        }

        else if (v7)
        {
          if (*(a1 + 80))
          {
            v14 = nw_parameters_get_ip_protocol();
          }

          else
          {
            v14 = 0;
          }

          v38 = *(a1 + 176);
          v39 = "unknown";
          if (v38 <= 3)
          {
            v39 = off_1E812BFE0[v38];
          }

          v40 = nw_frame_array_unclaimed_length();
          *buf = 136315906;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v14;
          v72 = 2080;
          v73 = v39;
          v74 = 1024;
          LODWORD(v75) = v40;
          _os_log_debug_impl(&dword_1C0DA5000, v6, OS_LOG_TYPE_DEBUG, "[filter %s %d %s] sending %u input bytes to the next filter", buf, 0x22u);
        }

        nw_frame_array_append_array();
      }

      if (ne_filter_data_protocol_send_data(a1, i, 1) && (*(i + 144) & 8) != 0)
      {
        ne_filter_data_protocol_send_finished(a1, i, 10);
        *(i + 144) &= ~8u;
      }
    }

    if (*(i + 88) < *(i + 48) && (nw_frame_array_is_empty() & 1) == 0)
    {
      memset(out, 0, 37);
      uuid_unparse(a1, out);
      v8 = *(a1 + 176);
      v9 = ne_log_obj();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v8 == 3)
      {
        if (v10)
        {
          if (*(a1 + 80))
          {
            v69 = nw_parameters_get_ip_protocol();
          }

          else
          {
            v69 = 0;
          }

          v15 = *(a1 + 160);
          if (v15)
          {
            v18 = v15[6];
            v16 = v15[7];
            v17 = v15[9];
            v64 = v18;
            v66 = v15[8];
          }

          else
          {
            v64 = -1;
            v66 = -1;
            v16 = -1;
            v17 = -1;
          }

          v19 = *(a1 + 168);
          if (v19)
          {
            v21 = v19[6];
            v22 = v19[7];
            v20 = v19[8];
            v23 = v19[9];
          }

          else
          {
            v20 = -1;
            v21 = -1;
            v22 = -1;
            v23 = -1;
          }

          v24 = nw_frame_array_unclaimed_length();
          *buf = 136317698;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v69;
          v72 = 2048;
          v73 = v64;
          v74 = 2048;
          v75 = v16;
          v76 = 2048;
          v77 = v66;
          v78 = 2048;
          v79 = v17;
          v80 = 2048;
          v81 = v21;
          v82 = 2048;
          v83 = v22;
          v84 = 2048;
          v85 = v20;
          v86 = 2048;
          v87 = v23;
          v88 = 1024;
          v89 = v24;
          _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]have %u pending input bytes", buf, 0x68u);
        }
      }

      else if (v10)
      {
        if (*(a1 + 80))
        {
          v13 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v13 = 0;
        }

        v25 = *(a1 + 176);
        v26 = "unknown";
        if (v25 <= 3)
        {
          v26 = off_1E812BFE0[v25];
        }

        v27 = nw_frame_array_unclaimed_length();
        *buf = 136315906;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v13;
        v72 = 2080;
        v73 = v26;
        v74 = 1024;
        LODWORD(v75) = v27;
        _os_log_debug_impl(&dword_1C0DA5000, v9, OS_LOG_TYPE_DEBUG, "[filter %s %d %s] have %u pending input bytes", buf, 0x22u);
      }

      *buf = 0;
      *&buf[8] = 0;
      nw_frame_array_init();
      v11 = *(i + 48) - *(i + 88);
      out[0] = 0;
      v12 = ne_filter_protocol_fulfill_frame_request(a1, i + 24, buf, (*(a1 + 120) & 0x8000) == 0, v11, -1, out);
      *(i + 88) += out[0];
      if (v12)
      {
        nw_frame_array_prepend_array();
      }
    }

    if ((nw_frame_array_is_empty() & 1) == 0)
    {
      *(a1 + 120) |= 0x1000u;
    }
  }

  result = nw_frame_array_is_empty();
  if ((result & 1) == 0)
  {
    memset(out, 0, 37);
    uuid_unparse(a1, out);
    v42 = *(a1 + 176);
    v43 = ne_log_obj();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG);
    if (v42 == 3)
    {
      if (v44)
      {
        if (*(a1 + 80))
        {
          v70 = nw_parameters_get_ip_protocol();
        }

        else
        {
          v70 = 0;
        }

        v47 = *(a1 + 160);
        if (v47)
        {
          v49 = v47[6];
          v50 = v47[7];
          v48 = v47[8];
          v51 = v47[9];
        }

        else
        {
          v48 = -1;
          v49 = -1;
          v50 = -1;
          v51 = -1;
        }

        v54 = *(a1 + 168);
        if (v54)
        {
          v56 = v54[6];
          v57 = v54[7];
          v55 = v54[8];
          v58 = v54[9];
        }

        else
        {
          v55 = -1;
          v56 = -1;
          v57 = -1;
          v58 = -1;
        }

        v63 = nw_frame_array_unclaimed_length();
        *buf = 136317698;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v70;
        v72 = 2048;
        v73 = v49;
        v74 = 2048;
        v75 = v50;
        v76 = 2048;
        v77 = v48;
        v78 = 2048;
        v79 = v51;
        v80 = 2048;
        v81 = v56;
        v82 = 2048;
        v83 = v57;
        v84 = 2048;
        v85 = v55;
        v86 = 2048;
        v87 = v58;
        v88 = 1024;
        v89 = v63;
        v60 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]accepting %u input bytes";
        v61 = v43;
        v62 = 104;
LABEL_81:
        _os_log_debug_impl(&dword_1C0DA5000, v61, OS_LOG_TYPE_DEBUG, v60, buf, v62);
      }
    }

    else if (v44)
    {
      if (*(a1 + 80))
      {
        v46 = nw_parameters_get_ip_protocol();
      }

      else
      {
        v46 = 0;
      }

      v52 = *(a1 + 176);
      if (v52 > 3)
      {
        v53 = "unknown";
      }

      else
      {
        v53 = off_1E812BFE0[v52];
      }

      v59 = nw_frame_array_unclaimed_length();
      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v46;
      v72 = 2080;
      v73 = v53;
      v74 = 1024;
      LODWORD(v75) = v59;
      v60 = "[filter %s %d %s] accepting %u input bytes";
      v61 = v43;
      v62 = 34;
      goto LABEL_81;
    }

    result = nw_frame_array_append_array();
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void ne_filter_handle_input_finished(uint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    *v66 = 136315138;
    *&v66[4] = "ne_filter_handle_input_finished";
    v24 = "%s called with null protocol";
LABEL_28:
    _os_log_fault_impl(&dword_1C0DA5000, v23, OS_LOG_TYPE_FAULT, v24, v66, 0xCu);
    goto LABEL_51;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v23 = ne_log_obj();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_51;
    }

    *v66 = 136315138;
    *&v66[4] = "ne_filter_handle_input_finished";
    v24 = "%s called with null filter";
    goto LABEL_28;
  }

  if (!atomic_fetch_or((v3 + 180), 0))
  {
    goto LABEL_51;
  }

  v4 = *(v3 + 120);
  if ((v4 & 0x800) != 0 || *(v3 + 176) != 3 || (v5 = *(v3 + 144)) == 0)
  {
LABEL_11:
    *(v3 + 120) = v4 | 0x800;
    if (a2 && (nw_frame_array_is_empty() & 1) == 0)
    {
      nw_frame_array_append_array();
    }

    v7 = *(v3 + 120);
    if ((v7 & 0x10) == 0)
    {
      if (!nw_frame_array_is_empty())
      {
        v25 = *MEMORY[0x1E69E9840];

        ne_filter_protocol_input_available(a1);
        return;
      }

      v7 = *(v3 + 120);
    }

    if ((v7 & 0x200) == 0)
    {
LABEL_37:
      if ((*(v3 + 120) & 0xC0) == 0x40)
      {
        *(v3 + 120) |= 0x80u;
        for (i = *(v3 + 144); i; i = *(i + 152))
        {
          ne_filter_data_protocol_send_finished(a1, i, 11);
        }

        memset(out, 0, 37);
        uuid_unparse(v3, out);
        v30 = *(v3 + 176);
        v31 = ne_log_obj();
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
        if (v30 == 3)
        {
          if (v32)
          {
            v33 = *(v3 + 80);
            if (v33)
            {
              LODWORD(v33) = nw_parameters_get_ip_protocol();
            }

            v34 = *(v3 + 160);
            if (v34)
            {
              v36 = v34[6];
              v37 = v34[7];
              v35 = v34[8];
              v38 = v34[9];
            }

            else
            {
              v35 = -1;
              v36 = -1;
              v37 = -1;
              v38 = -1;
            }

            v55 = *(v3 + 168);
            if (v55)
            {
              v57 = v55[6];
              v58 = v55[7];
              v56 = v55[8];
              v59 = v55[9];
            }

            else
            {
              v56 = -1;
              v57 = -1;
              v58 = -1;
              v59 = -1;
            }

            *v66 = 136317442;
            *&v66[4] = out;
            *&v66[12] = 1024;
            *&v66[14] = v33;
            *&v66[18] = 2048;
            *&v66[20] = v36;
            *&v66[28] = 2048;
            *&v66[30] = v37;
            *&v66[38] = 2048;
            v67 = v35;
            v68 = 2048;
            v69 = v38;
            v70 = 2048;
            v71 = v57;
            v72 = 2048;
            v73 = v58;
            v74 = 2048;
            v75 = v56;
            v76 = 2048;
            v77 = v59;
            v63 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling disconnected on input protocol";
            v64 = v31;
            v65 = 98;
LABEL_78:
            _os_log_debug_impl(&dword_1C0DA5000, v64, OS_LOG_TYPE_DEBUG, v63, v66, v65);
          }
        }

        else if (v32)
        {
          v47 = *(v3 + 80);
          if (v47)
          {
            LODWORD(v47) = nw_parameters_get_ip_protocol();
          }

          v48 = *(v3 + 176);
          if (v48 > 3)
          {
            v49 = "unknown";
          }

          else
          {
            v49 = off_1E812BFE0[v48];
          }

          *v66 = 136315650;
          *&v66[4] = out;
          *&v66[12] = 1024;
          *&v66[14] = v47;
          *&v66[18] = 2080;
          *&v66[20] = v49;
          v63 = "[filter %s %d %s] calling disconnected on input protocol";
          v64 = v31;
          v65 = 28;
          goto LABEL_78;
        }

        v39 = *(v3 + 48);
        if (v39)
        {
          v40 = *(v39 + 24);
          if (v40)
          {
            v41 = *(v40 + 48);
            if (v41)
            {
              v41();
            }
          }
        }
      }

LABEL_51:
      v42 = *MEMORY[0x1E69E9840];
      return;
    }

    *(v3 + 120) = v7 & 0xFFFFFDFF;
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v8 = *(v3 + 176);
    v9 = ne_log_obj();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
    if (v8 == 3)
    {
      if (v10)
      {
        v17 = *(v3 + 80);
        if (v17)
        {
          LODWORD(v17) = nw_parameters_get_ip_protocol();
        }

        v18 = *(v3 + 160);
        if (v18)
        {
          v20 = v18[6];
          v21 = v18[7];
          v19 = v18[8];
          v22 = v18[9];
        }

        else
        {
          v19 = -1;
          v20 = -1;
          v21 = -1;
          v22 = -1;
        }

        v50 = *(v3 + 168);
        if (v50)
        {
          v52 = v50[6];
          v53 = v50[7];
          v51 = v50[8];
          v54 = v50[9];
        }

        else
        {
          v51 = -1;
          v52 = -1;
          v53 = -1;
          v54 = -1;
        }

        *v66 = 136317442;
        *&v66[4] = out;
        *&v66[12] = 1024;
        *&v66[14] = v17;
        *&v66[18] = 2048;
        *&v66[20] = v20;
        *&v66[28] = 2048;
        *&v66[30] = v21;
        *&v66[38] = 2048;
        v67 = v19;
        v68 = 2048;
        v69 = v22;
        v70 = 2048;
        v71 = v52;
        v72 = 2048;
        v73 = v53;
        v74 = 2048;
        v75 = v51;
        v76 = 2048;
        v77 = v54;
        v60 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]calling input_finished on input protocol";
        v61 = v9;
        v62 = 98;
LABEL_75:
        _os_log_debug_impl(&dword_1C0DA5000, v61, OS_LOG_TYPE_DEBUG, v60, v66, v62);
      }
    }

    else if (v10)
    {
      v44 = *(v3 + 80);
      if (v44)
      {
        LODWORD(v44) = nw_parameters_get_ip_protocol();
      }

      v45 = *(v3 + 176);
      if (v45 > 3)
      {
        v46 = "unknown";
      }

      else
      {
        v46 = off_1E812BFE0[v45];
      }

      *v66 = 136315650;
      *&v66[4] = out;
      *&v66[12] = 1024;
      *&v66[14] = v44;
      *&v66[18] = 2080;
      *&v66[20] = v46;
      v60 = "[filter %s %d %s] calling input_finished on input protocol";
      v61 = v9;
      v62 = 28;
      goto LABEL_75;
    }

    v26 = *(v3 + 48);
    if (v26)
    {
      v27 = *(v26 + 24);
      if (v27)
      {
        v28 = *(v27 + 184);
        if (v28)
        {
          v28(v26, a1, v11, v12, v13, v14, v15, v16, *v66, *&v66[8], *&v66[16], *&v66[24], *&v66[32]);
        }
      }
    }

    goto LABEL_37;
  }

  while (1)
  {
    if (*(v5 + 40) == 3 && *(v5 + 48) != -1)
    {
      v6 = *(v5 + 144);
      if ((v6 & 0x80) == 0)
      {
        break;
      }
    }

    v5 = *(v5 + 152);
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  *(v5 + 144) = v6 | 8;
  v43 = *MEMORY[0x1E69E9840];

  ne_filter_read_approved_frames(v3, a2);
}

void ne_filter_protocol_input_available(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v12 = 136315138;
    v13 = "ne_filter_protocol_input_available";
    v9 = "%s called with null protocol";
LABEL_19:
    _os_log_fault_impl(&dword_1C0DA5000, v8, OS_LOG_TYPE_FAULT, v9, &v12, 0xCu);
    goto LABEL_23;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v8 = ne_log_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_23;
    }

    v12 = 136315138;
    v13 = "ne_filter_protocol_input_available";
    v9 = "%s called with null filter";
    goto LABEL_19;
  }

  if (!atomic_fetch_or((v1 + 180), 0))
  {
    goto LABEL_23;
  }

  v2 = *(v1 + 176);
  if (v2 != 3 && v2 != 1)
  {
    if (!v2)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        _os_log_debug_impl(&dword_1C0DA5000, v10, OS_LOG_TYPE_DEBUG, "verdict invalid, returning", &v12, 2u);
      }
    }

    goto LABEL_23;
  }

  v4 = *(v1 + 48);
  if (!v4 || (v5 = *(v4 + 24)) == 0 || (v6 = *(v5 + 64)) == 0)
  {
LABEL_23:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *MEMORY[0x1E69E9840];

  v6();
}

void ne_filter_cleanup(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v31 = 136315138;
    v32 = "ne_filter_cleanup";
    v15 = "%s called with null protocol";
LABEL_28:
    _os_log_fault_impl(&dword_1C0DA5000, v14, OS_LOG_TYPE_FAULT, v15, &v31, 0xCu);
    goto LABEL_18;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v31 = 136315138;
    v32 = "ne_filter_cleanup";
    v15 = "%s called with null filter";
    goto LABEL_28;
  }

  if (atomic_fetch_or((v2 + 180), 0))
  {
    if ((~*(v2 + 120) & 0x10001) == 0 && (*(v2 + 120) & 0x88) != 8)
    {
      v4 = *(a1 + 32);
      if (!v4)
      {
LABEL_23:
        ne_filter_unregister_flow(*(v2 + 96), a1);
        v18 = *(a1 + 40);
        if (v18)
        {
          v19 = (v18 + 180);
          if (atomic_fetch_or(v19, 0))
          {
            if (atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
            {
              ne_filter_protocol_destroy(a1);
            }
          }
        }

        goto LABEL_18;
      }

      memset(out, 0, 37);
      uuid_unparse(v2, out);
      v5 = *(v2 + 176);
      v6 = ne_log_obj();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
      if (v5 == 3)
      {
        if (v7)
        {
          v8 = *(v2 + 80);
          if (v8)
          {
            LODWORD(v8) = nw_parameters_get_ip_protocol();
          }

          v9 = *(v2 + 160);
          if (v9)
          {
            v11 = v9[6];
            v12 = v9[7];
            v10 = v9[8];
            v13 = v9[9];
          }

          else
          {
            v10 = -1;
            v11 = -1;
            v12 = -1;
            v13 = -1;
          }

          v23 = *(v2 + 168);
          if (v23)
          {
            v25 = v23[6];
            v26 = v23[7];
            v24 = v23[8];
            v27 = v23[9];
          }

          else
          {
            v24 = -1;
            v25 = -1;
            v26 = -1;
            v27 = -1;
          }

          v31 = 136317442;
          v32 = out;
          v33 = 1024;
          v34 = v8;
          v35 = 2048;
          v36 = v11;
          v37 = 2048;
          v38 = v12;
          v39 = 2048;
          v40 = v10;
          v41 = 2048;
          v42 = v13;
          v43 = 2048;
          v44 = v25;
          v45 = 2048;
          v46 = v26;
          v47 = 2048;
          v48 = v24;
          v49 = 2048;
          v50 = v27;
          v28 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]tearing down output handler";
          v29 = v6;
          v30 = 98;
LABEL_40:
          _os_log_debug_impl(&dword_1C0DA5000, v29, OS_LOG_TYPE_DEBUG, v28, &v31, v30);
        }
      }

      else if (v7)
      {
        v20 = *(v2 + 80);
        if (v20)
        {
          LODWORD(v20) = nw_parameters_get_ip_protocol();
        }

        v21 = *(v2 + 176);
        if (v21 > 3)
        {
          v22 = "unknown";
        }

        else
        {
          v22 = off_1E812BFE0[v21];
        }

        v31 = 136315650;
        v32 = out;
        v33 = 1024;
        v34 = v20;
        v35 = 2080;
        v36 = v22;
        v28 = "[filter %s %d %s] tearing down output handler";
        v29 = v6;
        v30 = 28;
        goto LABEL_40;
      }

      v17 = *(*(v4 + 24) + 8);
      if (v17)
      {
        v17(v4, a1, 1);
      }

      *(a1 + 32) = 0;
      goto LABEL_23;
    }
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

BOOL ne_filter_data_protocol_send_data(uint64_t a1, uint64_t a2, int a3)
{
  v324 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (!v3 || !atomic_fetch_or((v3 + 180), 0))
  {
    goto LABEL_109;
  }

  v4 = a3;
  v6 = a1;
  v7 = 104;
  if (a3)
  {
    v7 = 88;
  }

  v8 = *(a2 + v7);
  v9 = (a2 + 96);
  v10 = (a2 + 112);
  v11 = 112;
  if (a3)
  {
    v11 = 96;
    v12 = (a2 + 96);
  }

  else
  {
    v12 = (a2 + 112);
  }

  length = v12;
  v13 = *(a2 + v11);
  v14 = nw_frame_array_unclaimed_length();
  if (!v14)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v28 = *(v3 + 176);
    v29 = ne_log_obj();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
    if (v28 == 3)
    {
      if (v30)
      {
        v31 = *(v3 + 80);
        if (v31)
        {
          LODWORD(v31) = nw_parameters_get_ip_protocol();
        }

        v32 = *(v3 + 160);
        if (v32)
        {
          v34 = v32[6];
          v35 = v32[7];
          v33 = v32[8];
          v36 = v32[9];
        }

        else
        {
          v33 = -1;
          v34 = -1;
          v35 = -1;
          v36 = -1;
        }

        v176 = *(v3 + 168);
        if (v176)
        {
          v178 = v176[6];
          v179 = v176[7];
          v177 = v176[8];
          v180 = v176[9];
        }

        else
        {
          v177 = -1;
          v178 = -1;
          v179 = -1;
          v180 = -1;
        }

        *&buf[4] = out;
        v185 = "out";
        *&buf[12] = 1024;
        *buf = 136317698;
        if (v4)
        {
          v185 = "in";
        }

        *&buf[14] = v31;
        *&buf[18] = 2048;
        *&buf[20] = v34;
        *&buf[28] = 2048;
        *&buf[30] = v35;
        v305 = 2048;
        v306 = v33;
        v307 = 2048;
        v308 = v36;
        v309 = 2048;
        v310 = v178;
        v311 = 2048;
        v312 = v179;
        v313 = 2048;
        v314 = v177;
        v315 = 2048;
        v316 = v180;
        v317 = 2080;
        v318 = v185;
        v182 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]no %sbound pending bytes to filter";
        v183 = v29;
        v184 = 108;
        goto LABEL_238;
      }
    }

    else if (v30)
    {
      v37 = *(v3 + 80);
      if (v37)
      {
        LODWORD(v37) = nw_parameters_get_ip_protocol();
      }

      v38 = *(v3 + 176);
      if (v38 > 3)
      {
        v39 = "unknown";
      }

      else
      {
        v39 = off_1E812BFE0[v38];
      }

      v181 = "out";
      *&buf[4] = out;
      *&buf[12] = 1024;
      *buf = 136315906;
      if (v4)
      {
        v181 = "in";
      }

      *&buf[14] = v37;
      *&buf[18] = 2080;
      *&buf[20] = v39;
      *&buf[28] = 2080;
      *&buf[30] = v181;
      v182 = "[filter %s %d %s] no %sbound pending bytes to filter";
      v183 = v29;
      v184 = 38;
      goto LABEL_238;
    }

    goto LABEL_239;
  }

  v296 = v10;
  v298 = v14;
  if (v13 >= v8)
  {
    v18 = v13;
    goto LABEL_29;
  }

  v15 = v6;
  v16 = v9;
  v17 = v4;
  v18 = v8;
  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v19 = *(v3 + 176);
  v20 = ne_log_obj();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19 == 3)
  {
    v4 = v17;
    v9 = v16;
    v6 = v15;
    if (!v21)
    {
      goto LABEL_29;
    }

    v22 = *(v3 + 80);
    if (v22)
    {
      LODWORD(v22) = nw_parameters_get_ip_protocol();
    }

    v23 = *(v3 + 160);
    if (v23)
    {
      v25 = v23[6];
      v26 = v23[7];
      v24 = v23[8];
      v27 = v23[9];
    }

    else
    {
      v24 = -1;
      v25 = -1;
      v26 = -1;
      v27 = -1;
    }

    v186 = *(v3 + 168);
    if (v186)
    {
      v188 = v186[6];
      v189 = v186[7];
      v187 = v186[8];
      v190 = v186[9];
    }

    else
    {
      v187 = -1;
      v188 = -1;
      v189 = -1;
      v190 = -1;
    }

    *&buf[4] = out;
    v204 = "out";
    *&buf[12] = 1024;
    *buf = 136318210;
    if (v4)
    {
      v204 = "in";
    }

    *&buf[14] = v22;
    *&buf[18] = 2048;
    *&buf[20] = v25;
    *&buf[28] = 2048;
    *&buf[30] = v26;
    v305 = 2048;
    v306 = v24;
    v307 = 2048;
    v308 = v27;
    v309 = 2048;
    v310 = v188;
    v311 = 2048;
    v312 = v189;
    v313 = 2048;
    v314 = v187;
    v315 = 2048;
    v316 = v190;
    v317 = 2080;
    v318 = v204;
    v319 = 2048;
    v320 = v13;
    v321 = 2048;
    v322 = v8;
    v201 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]%sbound sent offset less than start, adjusting from %llu to %llu";
    v202 = v20;
    v203 = 128;
  }

  else
  {
    v4 = v17;
    v9 = v16;
    v6 = v15;
    if (!v21)
    {
      goto LABEL_29;
    }

    v137 = *(v3 + 80);
    if (v137)
    {
      LODWORD(v137) = nw_parameters_get_ip_protocol();
    }

    v138 = *(v3 + 176);
    if (v138 > 3)
    {
      v139 = "unknown";
    }

    else
    {
      v139 = off_1E812BFE0[v138];
    }

    *&buf[4] = out;
    v200 = "out";
    *&buf[12] = 1024;
    *buf = 136316418;
    if (v4)
    {
      v200 = "in";
    }

    *&buf[14] = v137;
    *&buf[18] = 2080;
    *&buf[20] = v139;
    *&buf[28] = 2080;
    *&buf[30] = v200;
    v305 = 2048;
    v306 = v13;
    v307 = 2048;
    v308 = v8;
    v201 = "[filter %s %d %s] %sbound sent offset less than start, adjusting from %llu to %llu";
    v202 = v20;
    v203 = 58;
  }

  _os_log_debug_impl(&dword_1C0DA5000, v202, OS_LOG_TYPE_DEBUG, v201, buf, v203);
LABEL_29:
  v297 = v4;
  v40 = v4 == 0;
  v41 = 64;
  if (v4)
  {
    v41 = 48;
  }

  v42 = *(a2 + v41);
  v43 = 72;
  if (!v40)
  {
    v43 = 56;
  }

  v44 = *(a2 + v43);
  if (v44 <= v42)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v56 = *(v3 + 176);
    v57 = ne_log_obj();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
    if (v56 == 3)
    {
      if (v58)
      {
        v59 = *(v3 + 80);
        if (v59)
        {
          LODWORD(v59) = nw_parameters_get_ip_protocol();
        }

        v60 = *(v3 + 160);
        if (v60)
        {
          v62 = v60[6];
          v63 = v60[7];
          v61 = v60[8];
          v64 = v60[9];
        }

        else
        {
          v61 = -1;
          v62 = -1;
          v63 = -1;
          v64 = -1;
        }

        v191 = *(v3 + 168);
        if (v191)
        {
          v193 = v191[6];
          v194 = v191[7];
          v192 = v191[8];
          v195 = v191[9];
        }

        else
        {
          v192 = -1;
          v193 = -1;
          v194 = -1;
          v195 = -1;
        }

        *&buf[4] = out;
        v205 = "out";
        *&buf[12] = 1024;
        *buf = 136318210;
        if (v297)
        {
          v205 = "in";
        }

        *&buf[14] = v59;
        *&buf[18] = 2048;
        *&buf[20] = v62;
        *&buf[28] = 2048;
        *&buf[30] = v63;
        v305 = 2048;
        v306 = v61;
        v307 = 2048;
        v308 = v64;
        v309 = 2048;
        v310 = v193;
        v311 = 2048;
        v312 = v194;
        v313 = 2048;
        v314 = v192;
        v315 = 2048;
        v316 = v195;
        v317 = 2080;
        v318 = v205;
        v319 = 2048;
        v320 = v44;
        v321 = 2048;
        v322 = v42;
        v182 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]no %sbound bytes to peek (%llu < %llu)";
        v183 = v57;
        v184 = 128;
        goto LABEL_238;
      }
    }

    else if (v58)
    {
      v65 = *(v3 + 80);
      if (v65)
      {
        LODWORD(v65) = nw_parameters_get_ip_protocol();
      }

      v66 = *(v3 + 176);
      if (v66 > 3)
      {
        v67 = "unknown";
      }

      else
      {
        v67 = off_1E812BFE0[v66];
      }

      *&buf[4] = out;
      v196 = "out";
      *&buf[12] = 1024;
      *buf = 136316418;
      if (v297)
      {
        v196 = "in";
      }

      *&buf[14] = v65;
      *&buf[18] = 2080;
      *&buf[20] = v67;
      *&buf[28] = 2080;
      *&buf[30] = v196;
      v305 = 2048;
      v306 = v44;
      v307 = 2048;
      v308 = v42;
      v182 = "[filter %s %d %s] no %sbound bytes to peek (%llu < %llu)";
      v183 = v57;
      v184 = 58;
      goto LABEL_238;
    }

    goto LABEL_239;
  }

  v45 = v18 - v8;
  v46 = v42 - v18;
  if (v42 <= v18)
  {
    v42 = v18;
    v49 = v298;
    goto LABEL_55;
  }

  memset(out, 0, 37);
  uuid_unparse(v3, out);
  v47 = *(v3 + 176);
  bytes = ne_log_obj();
  v48 = os_log_type_enabled(bytes, OS_LOG_TYPE_DEBUG);
  if (v47 == 3)
  {
    v49 = v298;
    if (v48)
    {
      v50 = *(v3 + 80);
      if (v50)
      {
        LODWORD(v50) = nw_parameters_get_ip_protocol();
      }

      v51 = *(v3 + 160);
      if (v51)
      {
        v53 = v51[6];
        v54 = v51[7];
        v52 = v51[8];
        v55 = v51[9];
      }

      else
      {
        v52 = -1;
        v53 = -1;
        v54 = -1;
        v55 = -1;
      }

      v209 = *(v3 + 168);
      if (v209)
      {
        v211 = v209[6];
        v212 = v209[7];
        v210 = v209[8];
        v213 = v209[9];
      }

      else
      {
        v210 = -1;
        v211 = -1;
        v212 = -1;
        v213 = -1;
      }

      v227 = "out";
      *buf = 136318210;
      *&buf[4] = out;
      *&buf[12] = 1024;
      if (v297)
      {
        v227 = "in";
      }

      *&buf[14] = v50;
      *&buf[18] = 2048;
      *&buf[20] = v53;
      *&buf[28] = 2048;
      *&buf[30] = v54;
      v305 = 2048;
      v306 = v52;
      v307 = 2048;
      v308 = v55;
      v309 = 2048;
      v310 = v211;
      v311 = 2048;
      v312 = v212;
      v313 = 2048;
      v314 = v210;
      v315 = 2048;
      v316 = v213;
      v317 = 2080;
      v318 = v227;
      v319 = 2048;
      v320 = v45;
      v321 = 2048;
      v322 = v46 + v45;
      v224 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]already passed %sbound bytes, moving frameArrayStart offset from %llu to %llu";
      v225 = bytes;
      v226 = 128;
LABEL_233:
      _os_log_debug_impl(&dword_1C0DA5000, v225, OS_LOG_TYPE_DEBUG, v224, buf, v226);
    }
  }

  else
  {
    v49 = v298;
    if (v48)
    {
      v197 = *(v3 + 80);
      if (v197)
      {
        LODWORD(v197) = nw_parameters_get_ip_protocol();
      }

      v198 = *(v3 + 176);
      if (v198 > 3)
      {
        v199 = "unknown";
      }

      else
      {
        v199 = off_1E812BFE0[v198];
      }

      v223 = "out";
      *buf = 136316418;
      *&buf[4] = out;
      *&buf[12] = 1024;
      if (v297)
      {
        v223 = "in";
      }

      *&buf[14] = v197;
      *&buf[18] = 2080;
      *&buf[20] = v199;
      *&buf[28] = 2080;
      *&buf[30] = v223;
      v305 = 2048;
      v306 = v45;
      v307 = 2048;
      v308 = v46 + v45;
      v224 = "[filter %s %d %s] already passed %sbound bytes, moving frameArrayStart offset from %llu to %llu";
      v225 = bytes;
      v226 = 58;
      goto LABEL_233;
    }
  }

  v45 += v46;
  *length += v46;
LABEL_55:
  if (v49 < v45)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v68 = *(v3 + 176);
    v69 = ne_log_obj();
    v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
    if (v68 == 3)
    {
      if (v70)
      {
        v71 = *(v3 + 80);
        if (v71)
        {
          LODWORD(v71) = nw_parameters_get_ip_protocol();
        }

        v72 = *(v3 + 160);
        if (v72)
        {
          v74 = v72[6];
          v75 = v72[7];
          v73 = v72[8];
          v76 = v72[9];
        }

        else
        {
          v73 = -1;
          v74 = -1;
          v75 = -1;
          v76 = -1;
        }

        v214 = *(v3 + 168);
        if (v214)
        {
          v216 = v214[6];
          v217 = v214[7];
          v215 = v214[8];
          v218 = v214[9];
        }

        else
        {
          v215 = -1;
          v216 = -1;
          v217 = -1;
          v218 = -1;
        }

        v228 = "out";
        *buf = 136318210;
        *&buf[4] = out;
        *&buf[12] = 1024;
        if (v297)
        {
          v228 = "in";
        }

        *&buf[14] = v71;
        *&buf[18] = 2048;
        *&buf[20] = v74;
        *&buf[28] = 2048;
        *&buf[30] = v75;
        v305 = 2048;
        v306 = v73;
        v307 = 2048;
        v308 = v76;
        v309 = 2048;
        v310 = v216;
        v311 = 2048;
        v312 = v217;
        v313 = 2048;
        v314 = v215;
        v315 = 2048;
        v316 = v218;
        v317 = 2080;
        v318 = v228;
        v319 = 2048;
        v320 = v45;
        v321 = 1024;
        LODWORD(v322) = v49;
        v182 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]all %sbound pending bytes already passed (%llu > %u), not filtering";
        v183 = v69;
        v184 = 124;
LABEL_238:
        _os_log_debug_impl(&dword_1C0DA5000, v183, OS_LOG_TYPE_DEBUG, v182, buf, v184);
      }
    }

    else if (v70)
    {
      v82 = *(v3 + 80);
      if (v82)
      {
        LODWORD(v82) = nw_parameters_get_ip_protocol();
      }

      v83 = *(v3 + 176);
      if (v83 > 3)
      {
        v84 = "unknown";
      }

      else
      {
        v84 = off_1E812BFE0[v83];
      }

      v219 = "out";
      *buf = 136316418;
      *&buf[4] = out;
      *&buf[12] = 1024;
      if (v297)
      {
        v219 = "in";
      }

      *&buf[14] = v82;
      *&buf[18] = 2080;
      *&buf[20] = v84;
      *&buf[28] = 2080;
      *&buf[30] = v219;
      v305 = 2048;
      v306 = v45;
      v307 = 1024;
      LODWORD(v308) = v49;
      v182 = "[filter %s %d %s] all %sbound pending bytes already passed (%llu > %u), not filtering";
      v183 = v69;
      v184 = 54;
      goto LABEL_238;
    }

LABEL_239:
    result = 1;
    goto LABEL_240;
  }

  if (v44 >= v49 - v45 + v42)
  {
    v77 = v49 - v45 + v42;
  }

  else
  {
    v77 = v44;
  }

  v78 = v45 + v8;
  if (v77 <= v78)
  {
    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v85 = *(v3 + 176);
    v86 = ne_log_obj();
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG);
    if (v85 == 3)
    {
      if (!v87)
      {
        goto LABEL_109;
      }

      v88 = *(v3 + 80);
      if (v88)
      {
        LODWORD(v88) = nw_parameters_get_ip_protocol();
      }

      v89 = *(v3 + 160);
      if (v89)
      {
        v91 = v89[6];
        v92 = v89[7];
        v90 = v89[8];
        v93 = v89[9];
      }

      else
      {
        v90 = -1;
        v91 = -1;
        v92 = -1;
        v93 = -1;
      }

      v230 = *(v3 + 168);
      if (v230)
      {
        v232 = v230[6];
        v233 = v230[7];
        v231 = v230[8];
        v234 = v230[9];
      }

      else
      {
        v231 = -1;
        v232 = -1;
        v233 = -1;
        v234 = -1;
      }

      *&buf[4] = out;
      v239 = "out";
      *&buf[12] = 1024;
      *buf = 136318210;
      if (v297)
      {
        v239 = "in";
      }

      *&buf[14] = v88;
      *&buf[18] = 2048;
      *&buf[20] = v91;
      *&buf[28] = 2048;
      *&buf[30] = v92;
      v305 = 2048;
      v306 = v90;
      v307 = 2048;
      v308 = v93;
      v309 = 2048;
      v310 = v232;
      v311 = 2048;
      v312 = v233;
      v313 = 2048;
      v314 = v231;
      v315 = 2048;
      v316 = v234;
      v317 = 2080;
      v318 = v239;
      v319 = 2048;
      v320 = v77;
      v321 = 2048;
      v322 = v78;
      v236 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]no %sbound bytes to filter (%llu <= %llu)";
      v237 = v86;
      v238 = 128;
    }

    else
    {
      if (!v87)
      {
        goto LABEL_109;
      }

      v220 = *(v3 + 80);
      if (v220)
      {
        LODWORD(v220) = nw_parameters_get_ip_protocol();
      }

      v221 = *(v3 + 176);
      if (v221 > 3)
      {
        v222 = "unknown";
      }

      else
      {
        v222 = off_1E812BFE0[v221];
      }

      *&buf[4] = out;
      v235 = "out";
      *&buf[12] = 1024;
      *buf = 136316418;
      if (v297)
      {
        v235 = "in";
      }

      *&buf[14] = v220;
      *&buf[18] = 2080;
      *&buf[20] = v222;
      *&buf[28] = 2080;
      *&buf[30] = v235;
      v305 = 2048;
      v306 = v77;
      v307 = 2048;
      v308 = v78;
      v236 = "[filter %s %d %s] no %sbound bytes to filter (%llu <= %llu)";
      v237 = v86;
      v238 = 58;
    }

    goto LABEL_252;
  }

  v79 = v77 - v42;
  if (!((v77 - v42) >> 32))
  {
    bytesa = malloc_type_malloc(v77 - v42, 0xD101207FuLL);
    if (bytesa)
    {
      v94 = nw_frame_array_first();
      lengtha = v77 - v42;
      v95 = v79 + v45;
      if (v79 + v45 && v94 && v77 != v42)
      {
        v96 = 0;
        v97 = 0;
        do
        {
          *buf = 0;
          v98 = nw_frame_unclaimed_bytes();
          if (v45 <= v97)
          {
            v99 = 0;
          }

          else
          {
            v99 = v45 - v97;
          }

          v100 = *buf;
          v101 = *buf - v99;
          if (*buf > v99)
          {
            v102 = v95 - (v97 + v99);
            if (v102 <= v101)
            {
              v103 = v102;
            }

            else
            {
              v103 = v101;
            }

            memcpy(&bytesa[v96], (v98 + v99), v103);
            v96 += v103;
            v100 = *buf;
          }

          v97 += v100;
          v104 = nw_frame_array_next();
        }

        while (v97 < v95 && v104 != 0 && v96 < lengtha);
      }

      v107 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uuid(v107, "flow-uuid", v3);
      v108 = *(v3 + 80);
      ip_protocol = nw_parameters_get_ip_protocol();
      xpc_dictionary_set_uint64(v107, "ip-protocol", ip_protocol);
      if (v297)
      {
        xpc_dictionary_set_uint64(v107, "pending-data-start-offset", *v9);
        memset(out, 0, 37);
        uuid_unparse(v3, out);
        v110 = *(v3 + 176);
        v111 = ne_log_obj();
        v112 = os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG);
        if (v110 == 3)
        {
          if (v112)
          {
            v113 = *(v3 + 80);
            if (v113)
            {
              LODWORD(v113) = nw_parameters_get_ip_protocol();
            }

            v114 = *(v3 + 160);
            if (v114)
            {
              v116 = v114[6];
              v117 = v114[7];
              v115 = v114[8];
              v118 = v114[9];
            }

            else
            {
              v115 = -1;
              v116 = -1;
              v117 = -1;
              v118 = -1;
            }

            v254 = *(v3 + 168);
            if (v254)
            {
              v256 = v254[6];
              v257 = v254[7];
              v255 = v254[8];
              v258 = v254[9];
            }

            else
            {
              v255 = -1;
              v256 = -1;
              v257 = -1;
              v258 = -1;
            }

            v290 = *v9;
            *buf = 136317954;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v113;
            *&buf[18] = 2048;
            *&buf[20] = v116;
            *&buf[28] = 2048;
            *&buf[30] = v117;
            v305 = 2048;
            v306 = v115;
            v307 = 2048;
            v308 = v118;
            v309 = 2048;
            v310 = v256;
            v311 = 2048;
            v312 = v257;
            v313 = 2048;
            v314 = v255;
            v315 = 2048;
            v316 = v258;
            v317 = 2048;
            v318 = lengtha;
            v319 = 2048;
            v320 = v290;
            v279 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]filtering %zu input bytes at offset %llu";
            v280 = v111;
            v281 = 118;
LABEL_294:
            _os_log_debug_impl(&dword_1C0DA5000, v280, OS_LOG_TYPE_DEBUG, v279, buf, v281);
          }
        }

        else if (v112)
        {
          v240 = *(v3 + 80);
          if (v240)
          {
            LODWORD(v240) = nw_parameters_get_ip_protocol();
          }

          v241 = *(v3 + 176);
          if (v241 > 3)
          {
            v242 = "unknown";
          }

          else
          {
            v242 = off_1E812BFE0[v241];
          }

          v278 = *v9;
          *buf = 136316162;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v240;
          *&buf[18] = 2080;
          *&buf[20] = v242;
          *&buf[28] = 2048;
          *&buf[30] = lengtha;
          v305 = 2048;
          v306 = v278;
          v279 = "[filter %s %d %s] filtering %zu input bytes at offset %llu";
          v280 = v111;
          v281 = 48;
          goto LABEL_294;
        }

        v143 = 8;
LABEL_135:
        xpc_dictionary_set_int64(v107, "command", v143);
        v144 = *(v3 + 64);
        if (v144)
        {
          if (nw_endpoint_get_type(v144) == nw_endpoint_type_address)
          {
            address = nw_endpoint_get_address(*(v3 + 64));
            if (address)
            {
              xpc_dictionary_set_data(v107, "local-addr", address, address->sa_len);
            }
          }
        }

        v146 = *(v3 + 72);
        if (v146)
        {
          type = nw_endpoint_get_type(v146);
          v148 = *(v3 + 72);
          if (type == nw_endpoint_type_address)
          {
            v149 = nw_endpoint_get_address(v148);
            if (!v149)
            {
              goto LABEL_146;
            }

            v150 = v149;
            sa_len = v149->sa_len;
          }

          else
          {
            if (nw_endpoint_get_type(v148) != nw_endpoint_type_host)
            {
              goto LABEL_146;
            }

            memset(buf, 0, 28);
            ne_filter_create_wildcard_remote_sockaddr(buf, v3);
            sa_len = buf[0];
            v150 = buf;
          }

          xpc_dictionary_set_data(v107, "remote-addr", v150, sa_len);
        }

LABEL_146:
        xpc_dictionary_set_data(v107, "data", bytesa, lengtha);
        free(bytesa);
        if (v297)
        {
          v152 = (a2 + 88);
          *v9 = v95 + *(a2 + 88);
          memset(out, 0, 37);
          uuid_unparse(v3, out);
          v153 = *(v3 + 176);
          v154 = ne_log_obj();
          v155 = os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG);
          if (v153 == 3)
          {
            if (v155)
            {
              v156 = *(v3 + 80);
              if (v156)
              {
                LODWORD(v156) = nw_parameters_get_ip_protocol();
              }

              v157 = *(v3 + 160);
              if (v157)
              {
                v159 = v157[6];
                v160 = v157[7];
                v158 = v157[8];
                v161 = v157[9];
              }

              else
              {
                v158 = -1;
                v159 = -1;
                v160 = -1;
                v161 = -1;
              }

              v264 = *(v3 + 168);
              if (v264)
              {
                v266 = v264[6];
                v267 = v264[7];
                v265 = v264[8];
                v268 = v264[9];
              }

              else
              {
                v265 = -1;
                v266 = -1;
                v267 = -1;
                v268 = -1;
              }

              v292 = *v9;
              *buf = 136317698;
              *&buf[4] = out;
              *&buf[12] = 1024;
              *&buf[14] = v156;
              *&buf[18] = 2048;
              *&buf[20] = v159;
              *&buf[28] = 2048;
              *&buf[30] = v160;
              v305 = 2048;
              v306 = v158;
              v307 = 2048;
              v308 = v161;
              v309 = 2048;
              v310 = v266;
              v311 = 2048;
              v312 = v267;
              v313 = 2048;
              v314 = v265;
              v315 = 2048;
              v316 = v268;
              v317 = 2048;
              v318 = v292;
              v275 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]inbound sent offset is now %llu";
              v276 = v154;
              v277 = 108;
LABEL_300:
              _os_log_debug_impl(&dword_1C0DA5000, v276, OS_LOG_TYPE_DEBUG, v275, buf, v277);
            }
          }

          else if (v155)
          {
            v171 = *(v3 + 80);
            if (v171)
            {
              LODWORD(v171) = nw_parameters_get_ip_protocol();
            }

            v172 = *(v3 + 176);
            if (v172 > 3)
            {
              v173 = "unknown";
            }

            else
            {
              v173 = off_1E812BFE0[v172];
            }

            v274 = *v9;
            *buf = 136315906;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v171;
            *&buf[18] = 2080;
            *&buf[20] = v173;
            *&buf[28] = 2048;
            *&buf[30] = v274;
            v275 = "[filter %s %d %s] inbound sent offset is now %llu";
            v276 = v154;
            v277 = 38;
            goto LABEL_300;
          }

LABEL_166:
          v174 = *v9 - *v152;
          v175 = lengtha;
          if (!*(v3 + 124))
          {
            memset(buf, 0, 32);
            out[0] = 0;
            if (ne_filter_generate_crypto_signature(*(a2 + 4), v3, buf, out, 0))
            {
              xpc_dictionary_set_data(v107, "crypto-signature", buf, out[0]);
            }

            else
            {
              v206 = ne_log_obj();
              if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
              {
                *v303 = 0;
                _os_log_error_impl(&dword_1C0DA5000, v206, OS_LOG_TYPE_ERROR, "Failed to generate signature for data message", v303, 2u);
              }
            }

            v175 = lengtha;
          }

          atomic_fetch_add((v3 + 180), 1u);
          v207 = *(v3 + 96);
          v208 = *(a2 + 4);
          v301[0] = MEMORY[0x1E69E9820];
          v301[1] = 0x40000000;
          v301[2] = __ne_filter_data_protocol_send_data_block_invoke;
          v301[3] = &__block_descriptor_tmp_34;
          v301[4] = v3;
          v301[5] = v175;
          v302 = v143;
          v301[6] = v6;
          v301[7] = a2;
          ne_filter_send_message(v207, v208, v107, v301);
          xpc_release(v107);
          result = v298 == v174;
          goto LABEL_240;
        }

        v152 = (a2 + 104);
        *v296 = v95 + *(a2 + 104);
        memset(out, 0, 37);
        uuid_unparse(v3, out);
        v162 = *(v3 + 176);
        v163 = ne_log_obj();
        v164 = os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG);
        if (v162 == 3)
        {
          if (v164)
          {
            v165 = *(v3 + 80);
            if (v165)
            {
              LODWORD(v165) = nw_parameters_get_ip_protocol();
            }

            v166 = *(v3 + 160);
            if (v166)
            {
              v168 = v166[6];
              v169 = v166[7];
              v167 = v166[8];
              v170 = v166[9];
            }

            else
            {
              v167 = -1;
              v168 = -1;
              v169 = -1;
              v170 = -1;
            }

            v269 = *(v3 + 168);
            if (v269)
            {
              v271 = v269[6];
              v272 = v269[7];
              v270 = v269[8];
              v273 = v269[9];
            }

            else
            {
              v270 = -1;
              v271 = -1;
              v272 = -1;
              v273 = -1;
            }

            v293 = *v296;
            *buf = 136317698;
            *&buf[4] = out;
            *&buf[12] = 1024;
            *&buf[14] = v165;
            *&buf[18] = 2048;
            *&buf[20] = v168;
            *&buf[28] = 2048;
            *&buf[30] = v169;
            v305 = 2048;
            v306 = v167;
            v307 = 2048;
            v308 = v170;
            v309 = 2048;
            v310 = v271;
            v311 = 2048;
            v312 = v272;
            v313 = 2048;
            v314 = v270;
            v315 = 2048;
            v316 = v273;
            v317 = 2048;
            v318 = v293;
            v287 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]outbound sent offset is now %llu";
            v288 = v163;
            v289 = 108;
LABEL_303:
            _os_log_debug_impl(&dword_1C0DA5000, v288, OS_LOG_TYPE_DEBUG, v287, buf, v289);
          }
        }

        else if (v164)
        {
          v246 = *(v3 + 80);
          if (v246)
          {
            LODWORD(v246) = nw_parameters_get_ip_protocol();
          }

          v247 = *(v3 + 176);
          if (v247 > 3)
          {
            v248 = "unknown";
          }

          else
          {
            v248 = off_1E812BFE0[v247];
          }

          v286 = *v296;
          *buf = 136315906;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v246;
          *&buf[18] = 2080;
          *&buf[20] = v248;
          *&buf[28] = 2048;
          *&buf[30] = v286;
          v287 = "[filter %s %d %s] outbound sent offset is now %llu";
          v288 = v163;
          v289 = 38;
          goto LABEL_303;
        }

        v9 = v296;
        goto LABEL_166;
      }

      xpc_dictionary_set_uint64(v107, "pending-data-start-offset", *v296);
      memset(out, 0, 37);
      uuid_unparse(v3, out);
      v128 = *(v3 + 176);
      v129 = ne_log_obj();
      v130 = os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG);
      if (v128 == 3)
      {
        if (v130)
        {
          v131 = *(v3 + 80);
          if (v131)
          {
            LODWORD(v131) = nw_parameters_get_ip_protocol();
          }

          v132 = *(v3 + 160);
          if (v132)
          {
            v134 = v132[6];
            v135 = v132[7];
            v133 = v132[8];
            v136 = v132[9];
          }

          else
          {
            v133 = -1;
            v134 = -1;
            v135 = -1;
            v136 = -1;
          }

          v259 = *(v3 + 168);
          if (v259)
          {
            v261 = v259[6];
            v262 = v259[7];
            v260 = v259[8];
            v263 = v259[9];
          }

          else
          {
            v260 = -1;
            v261 = -1;
            v262 = -1;
            v263 = -1;
          }

          v291 = *v296;
          *buf = 136317954;
          *&buf[4] = out;
          *&buf[12] = 1024;
          *&buf[14] = v131;
          *&buf[18] = 2048;
          *&buf[20] = v134;
          *&buf[28] = 2048;
          *&buf[30] = v135;
          v305 = 2048;
          v306 = v133;
          v307 = 2048;
          v308 = v136;
          v309 = 2048;
          v310 = v261;
          v311 = 2048;
          v312 = v262;
          v313 = 2048;
          v314 = v260;
          v315 = 2048;
          v316 = v263;
          v317 = 2048;
          v318 = lengtha;
          v319 = 2048;
          v320 = v291;
          v283 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]filtering %zu output bytes at offset %llu";
          v284 = v129;
          v285 = 118;
LABEL_297:
          _os_log_debug_impl(&dword_1C0DA5000, v284, OS_LOG_TYPE_DEBUG, v283, buf, v285);
        }
      }

      else if (v130)
      {
        v243 = *(v3 + 80);
        if (v243)
        {
          LODWORD(v243) = nw_parameters_get_ip_protocol();
        }

        v244 = *(v3 + 176);
        if (v244 > 3)
        {
          v245 = "unknown";
        }

        else
        {
          v245 = off_1E812BFE0[v244];
        }

        v282 = *v296;
        *buf = 136316162;
        *&buf[4] = out;
        *&buf[12] = 1024;
        *&buf[14] = v243;
        *&buf[18] = 2080;
        *&buf[20] = v245;
        *&buf[28] = 2048;
        *&buf[30] = lengtha;
        v305 = 2048;
        v306 = v282;
        v283 = "[filter %s %d %s] filtering %zu output bytes at offset %llu";
        v284 = v129;
        v285 = 48;
        goto LABEL_297;
      }

      v143 = 7;
      goto LABEL_135;
    }

    memset(out, 0, 37);
    uuid_unparse(v3, out);
    v119 = *(v3 + 176);
    v120 = ne_log_obj();
    v121 = os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG);
    if (v119 == 3)
    {
      if (!v121)
      {
        goto LABEL_109;
      }

      v122 = *(v3 + 80);
      if (v122)
      {
        LODWORD(v122) = nw_parameters_get_ip_protocol();
      }

      v123 = *(v3 + 160);
      if (v123)
      {
        v125 = v123[6];
        v126 = v123[7];
        v124 = v123[8];
        v127 = v123[9];
      }

      else
      {
        v124 = -1;
        v125 = -1;
        v126 = -1;
        v127 = -1;
      }

      v249 = *(v3 + 168);
      if (v249)
      {
        v251 = v249[6];
        v252 = v249[7];
        v250 = v249[8];
        v253 = v249[9];
      }

      else
      {
        v250 = -1;
        v251 = -1;
        v252 = -1;
        v253 = -1;
      }

      *buf = 136317698;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v122;
      *&buf[18] = 2048;
      *&buf[20] = v125;
      *&buf[28] = 2048;
      *&buf[30] = v126;
      v305 = 2048;
      v306 = v124;
      v307 = 2048;
      v308 = v127;
      v309 = 2048;
      v310 = v251;
      v311 = 2048;
      v312 = v252;
      v313 = 2048;
      v314 = v250;
      v315 = 2048;
      v316 = v253;
      v317 = 2048;
      v318 = v77 - v42;
      v236 = "[filter %s %d more-data first (in %lld/%lld out %lld/%lld) last (in %lld/%lld out %lld/%lld)]failed to malloc %zu bytes";
      v237 = v120;
      v238 = 108;
    }

    else
    {
      if (!v121)
      {
        goto LABEL_109;
      }

      v140 = *(v3 + 80);
      if (v140)
      {
        LODWORD(v140) = nw_parameters_get_ip_protocol();
      }

      v141 = *(v3 + 176);
      if (v141 > 3)
      {
        v142 = "unknown";
      }

      else
      {
        v142 = off_1E812BFE0[v141];
      }

      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 1024;
      *&buf[14] = v140;
      *&buf[18] = 2080;
      *&buf[20] = v142;
      *&buf[28] = 2048;
      *&buf[30] = v77 - v42;
      v236 = "[filter %s %d %s] failed to malloc %zu bytes";
      v237 = v120;
      v238 = 38;
    }

LABEL_252:
    _os_log_debug_impl(&dword_1C0DA5000, v237, OS_LOG_TYPE_DEBUG, v236, buf, v238);
    goto LABEL_109;
  }

  v80 = ne_log_obj();
  result = os_log_type_enabled(v80, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 134217984;
    *&buf[4] = v77 - v42;
    _os_log_fault_impl(&dword_1C0DA5000, v80, OS_LOG_TYPE_FAULT, "frameArraySendLength too big %llu", buf, 0xCu);
LABEL_109:
    result = 0;
  }

LABEL_240:
  v229 = *MEMORY[0x1E69E9840];
  return result;
}