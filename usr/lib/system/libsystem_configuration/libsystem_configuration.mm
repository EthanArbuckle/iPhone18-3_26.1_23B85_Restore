BOOL is_config_agent_type_dns(_BOOL8 result)
{
  v3 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    result = !strcmp((result + 16), "SystemConfig") && strcmp((v1 + 48), "DNSAgent") == 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t config_agent_copy_dns_information(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (!is_config_agent_type_dns(a1))
  {
LABEL_12:
    v6 = *MEMORY[0x29EDCA608];
    return 0;
  }

  if (!*(a1 + 212))
  {
    v4 = (a1 + 80);
    if (strncmp(v4, "DNSAgent(p)", 0xBuLL) && strncmp(v4, "DNSAgent(m)", 0xBuLL))
    {
      if (*v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = "DNSAgent";
      }

      syslog(3, "Cannot parse config agent (%s). No data available", v5);
    }

    goto LABEL_12;
  }

  v2 = *MEMORY[0x29EDCA608];

  return xpc_create_from_plist();
}

void __dns_configuration_copy_block_invoke()
{
  v3 = *MEMORY[0x29EDCA608];
  if (dnsinfo_active++)
  {
    v1 = dnsinfo_client == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (_block_invoke_once != -1)
    {
      __dns_configuration_copy_block_invoke_cold_1();
    }

    if (__dns_configuration_queue_once != -1)
    {
      dns_configuration_copy_cold_1();
    }

    dnsinfo_client = libSC_info_client_create(__dns_configuration_queue_q, "com.apple.SystemConfiguration.DNSConfiguration", "DNS configuration");
    if (!dnsinfo_client)
    {
      --dnsinfo_active;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
}

_DWORD *dns_configuration_copy()
{
  v68 = *MEMORY[0x29EDCA608];
  if (!libSC_info_available())
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "*** DNS configuration requested between fork() and exec()", buf, 2u);
    }

    goto LABEL_21;
  }

  if (__dns_configuration_queue_once != -1)
  {
    dns_configuration_copy_cold_1();
  }

  dispatch_sync(__dns_configuration_queue_q, &__block_literal_global);
  if (!dnsinfo_client || *dnsinfo_client != 1)
  {
    goto LABEL_21;
  }

  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = v0;
  if (dns_configuration_copy_proc_name)
  {
    xpc_dictionary_set_string(v0, "proc_name", dns_configuration_copy_proc_name);
  }

  xpc_dictionary_set_int64(v1, "request_op", 65537);
  v2 = libSC_send_message_with_reply_sync(dnsinfo_client, v1);
  xpc_release(v1);
  if (!v2)
  {
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  length = 0;
  data = xpc_dictionary_get_data(v2, "configuration", &length);
  if (!data)
  {
    goto LABEL_20;
  }

  v4 = length;
  if (length - 56 > 0xFFFC8)
  {
    goto LABEL_20;
  }

  v5 = data;
  v6 = bswap32(data[12]) + 56;
  if (v6 != length)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v67 = v6;
      *&v67[8] = 2048;
      *&v67[10] = v4;
      v8 = MEMORY[0x29EDCA988];
      v9 = "DNS configuration: size error (%zu != %zu)";
      v10 = 22;
      goto LABEL_19;
    }

LABEL_20:
    xpc_release(v2);
    goto LABEL_21;
  }

  v7 = bswap32(data[13]);
  if (0x100000 - length < v7)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v67 = v7;
      *&v67[4] = 2048;
      *&v67[6] = 0x100000 - v4;
      v8 = MEMORY[0x29EDCA988];
      v9 = "DNS configuration: padding error (%u > %zu)";
      v10 = 18;
LABEL_19:
      _os_log_impl(&dword_299DD2000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v11 = malloc_type_malloc(length + v7, 0xAC30884BuLL);
  memcpy(v11, v5, v4);
  bzero(v11 + v4, v7);
  xpc_release(v2);
  if (!v11)
  {
    goto LABEL_22;
  }

  v14 = v11[12];
  v15 = bswap32(v11[13]);
  v16 = bswap32(*v11);
  *v11 = v16;
  if (v15 < 8 * v16)
  {
    goto LABEL_95;
  }

  v17 = bswap32(v14);
  v18 = v11 + 14;
  v19 = 8 * v16;
  v20 = 8 * v16 ? v11 + v17 + 56 : 0;
  v21 = v15 - v19;
  *(v11 + 1) = v20;
  v22 = bswap32(v11[3]);
  v11[3] = v22;
  if (v21 < 8 * v22)
  {
    goto LABEL_95;
  }

  v23 = 8 * v22;
  v24 = v11 + v17 + v19 + 56;
  v25 = v23 ? v24 : 0;
  v26 = v21 - v23;
  *(v11 + 2) = v25;
  v27 = bswap32(v11[8]);
  v11[8] = v27;
  if (v26 < 8 * v27)
  {
    goto LABEL_95;
  }

  v28 = 8 * v27;
  v29 = v24 + v23;
  if (8 * v27)
  {
    v30 = v24 + v23;
  }

  else
  {
    v30 = 0;
  }

  *(v11 + 9) = v30;
  if (v17 < 8)
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    goto LABEL_92;
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = v26 - v28;
  v35 = v29 + v28;
  do
  {
    v36 = bswap32(v18[1]);
    v37 = bswap32(*v18);
    if (v37 - 1 > 2)
    {
      goto LABEL_89;
    }

    if (v36 - 8 < 0x64)
    {
      goto LABEL_95;
    }

    *(v18 + 1) = 0;
    v38 = bswap32(v18[4]);
    v18[4] = v38;
    if (v34 < 8 * v38)
    {
      goto LABEL_95;
    }

    v39 = 8 * v38;
    v40 = 8 * v38 ? v35 : 0;
    v41 = v34 - v39;
    *(v18 + 5) = v40;
    *(v18 + 14) = bswap32(*(v18 + 14)) >> 16;
    v42 = bswap32(v18[8]);
    v18[8] = v42;
    if (v41 < 8 * v42)
    {
      goto LABEL_95;
    }

    v43 = 8 * v42;
    v44 = v35 + v39;
    v45 = 8 * v42 ? v44 : 0;
    v46 = v41 - v43;
    *(v18 + 9) = v45;
    v47 = bswap32(v18[11]);
    v18[11] = v47;
    if (v46 < 8 * v47)
    {
      goto LABEL_95;
    }

    v48 = 8 * v47;
    v49 = v44 + v43;
    v50 = 8 * v47 ? v49 : 0;
    *(v18 + 6) = v50;
    *(v18 + 7) = 0;
    *(v18 + 4) = vrev32q_s8(*(v18 + 4));
    *(v18 + 10) = vrev32_s8(*(v18 + 20));
    v51 = v36 - 108;
    if (v36 - 108 != bswap32(v18[26]))
    {
      goto LABEL_95;
    }

    v52 = v18 + 2;
    if (v51 < 8)
    {
      v55 = 0;
      v54 = 0;
      v53 = 0;
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = v18 + 27;
      do
      {
        v57 = v56[1];
        v58 = bswap32(*v56);
        if (v58 <= 12)
        {
          switch(v58)
          {
            case 10:
              *v52 = v56 + 2;
              break;
            case 11:
              v61 = *(v18 + 5);
              if (!v61)
              {
                goto LABEL_95;
              }

              *(v61 + 8 * v55++) = v56 + 2;
              break;
            case 12:
              v59 = *(v18 + 9);
              if (!v59)
              {
                goto LABEL_95;
              }

              *(v59 + 8 * v54++) = v56 + 2;
              break;
          }
        }

        else if (v58 > 14)
        {
          if (v58 == 15)
          {
            *(v18 + 11) = v56 + 2;
          }

          else if (v58 == 16)
          {
            *(v18 + 12) = v56 + 2;
          }
        }

        else if (v58 == 13)
        {
          v60 = *(v18 + 6);
          if (!v60)
          {
            goto LABEL_95;
          }

          *(v60 + 8 * v53++) = v56 + 2;
        }

        else
        {
          *(v18 + 7) = v56 + 2;
        }

        v62 = bswap32(v57);
        v56 = (v56 + v62);
        v51 -= v62;
      }

      while (v51 > 7);
    }

    if (v55 != v38 || v54 != v42 || v53 != v47)
    {
      goto LABEL_95;
    }

    v35 = v49 + v48;
    v34 = v46 - v48;
    switch(v37)
    {
      case 3u:
        v63 = *(v11 + 9);
        if (!v63)
        {
          goto LABEL_95;
        }

        v64 = v31++;
        break;
      case 2u:
        v63 = *(v11 + 2);
        if (!v63)
        {
          goto LABEL_95;
        }

        v64 = v32++;
        break;
      case 1u:
        v63 = *(v11 + 1);
        if (!v63)
        {
          goto LABEL_95;
        }

        v64 = v33++;
        break;
      default:
        goto LABEL_89;
    }

    *(v63 + 8 * v64) = v52;
LABEL_89:
    v18 = (v18 + v36);
    v17 -= v36;
  }

  while (v17 > 7);
  v16 = *v11;
LABEL_92:
  if (v33 != v16 || v32 != v11[3] || v31 != v11[8])
  {
LABEL_95:
    free(v11);
    goto LABEL_21;
  }

LABEL_22:
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

dispatch_queue_t ____dns_configuration_queue_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = dispatch_queue_create("com.apple.SystemConfiguration.DNSConfiguration", 0);
  __dns_configuration_queue_q = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void dns_configuration_copy_cold_1()
{
  v0 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x29EDCA608];

  dispatch_once(&__dns_configuration_queue_once, &__block_literal_global_19);
}

BOOL libSC_info_available()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return (_available & 1) == 0;
}

void nwi_state_copy_cold_1()
{
  v0 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x29EDCA608];

  dispatch_once(&nwi_state_copy_initialized, &__block_literal_global_0);
}

uint64_t nwi_state_copy()
{
  v15 = *MEMORY[0x29EDCA608];
  if (nwi_state_copy_initialized != -1)
  {
    nwi_state_copy_cold_1();
  }

  pthread_mutex_lock(&nwi_store_lock);
  v0 = 1;
  atomic_compare_exchange_strong(nwi_store_force_refresh, &v0, 0);
  v1 = v0 == 1;
  if (!G_nwi_state)
  {
    v3 = 0;
    goto LABEL_10;
  }

  check[0] = 0;
  if (nwi_store_token_valid != 1)
  {
    goto LABEL_9;
  }

  v2 = notify_check(nwi_store_token, check);
  if (v2)
  {
    fprintf(*MEMORY[0x29EDCA610], "nwi notify_check: failed with %u\n", v2);
LABEL_9:
    v3 = G_nwi_state;
    G_nwi_state = 0;
    goto LABEL_10;
  }

  if (check[0] != 0 || v1)
  {
    goto LABEL_9;
  }

  v3 = 0;
  v10 = G_nwi_state;
  if (G_nwi_state)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (!libSC_info_available())
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(check[0]) = 0;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "*** network information requested between fork() and exec()", check, 2u);
    }

    goto LABEL_27;
  }

  _nwi_client_init();
  if (!nwi_client || *nwi_client != 1)
  {
    goto LABEL_27;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (client_proc_name)
  {
    xpc_dictionary_set_string(v4, "proc_name", client_proc_name);
  }

  xpc_dictionary_set_int64(v5, "request_op", 131073);
  v6 = libSC_send_message_with_reply_sync(nwi_client, v5);
  xpc_release(v5);
  if (!v6)
  {
LABEL_27:
    v11 = 0;
    G_nwi_state = 0;
    goto LABEL_28;
  }

  *check = 0;
  data = xpc_dictionary_get_data(v6, "configuration", check);
  if (!data || (v8 = data, *check < 8uLL))
  {
LABEL_26:
    xpc_release(v6);
    goto LABEL_27;
  }

  v9 = malloc_type_malloc(*check, 0x32071A3EuLL);
  memcpy(v9, v8, *check);
  if (*v9 != 538379777)
  {
    free(v9);
    goto LABEL_26;
  }

  v9[5] = 0;
  xpc_release(v6);
  G_nwi_state = v9;
  atomic_fetch_add(v9 + 5, 1u);
  v10 = G_nwi_state;
  if (G_nwi_state)
  {
LABEL_24:
    atomic_fetch_add((v10 + 20), 1u);
    v11 = G_nwi_state;
    goto LABEL_28;
  }

  v11 = 0;
LABEL_28:
  pthread_mutex_unlock(&nwi_store_lock);
  if (v3 && atomic_fetch_add(v3 + 5, 0xFFFFFFFF) == 1)
  {
    _nwi_client_release();
    free(v3);
  }

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

void __dns_configuration_copy_block_invoke_cold_1()
{
  v0 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x29EDCA608];

  dispatch_once(&_block_invoke_once, &__block_literal_global_5);
}

uint64_t __nwi_state_copy_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = notify_register_check("com.apple.system.SystemConfiguration.nwi", &nwi_store_token);
  if (result)
  {
    result = fprintf(*MEMORY[0x29EDCA610], "nwi_state: registration failed (%u)\n", result);
  }

  else
  {
    nwi_store_token_valid = 1;
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void _nwi_client_release_cold_1()
{
  v0 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x29EDCA608];

  dispatch_once(&__nwi_client_queue_once, &__block_literal_global_27);
}

void _nwi_client_init()
{
  v2 = *MEMORY[0x29EDCA608];
  if (__nwi_client_queue_once != -1)
  {
    _nwi_client_release_cold_1();
  }

  v0 = __nwi_client_queue_q;
  v1 = *MEMORY[0x29EDCA608];

  dispatch_sync(v0, &__block_literal_global_17);
}

const char *__dns_configuration_copy_block_invoke_2()
{
  v2 = *MEMORY[0x29EDCA608];
  result = getprogname();
  dns_configuration_copy_proc_name = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void *libSC_send_message_with_reply_sync(uint64_t a1, xpc_object_t message)
{
  *&v22[5] = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCAA00];
  v5 = MEMORY[0x29EDCA9B8];
  v6 = MEMORY[0x29EDCAA18];
  v7 = MEMORY[0x29EDCA988];
  while (1)
  {
    do
    {
      v8 = xpc_connection_send_message_with_reply_sync(*(a1 + 8), message);
    }

    while (!v8);
    v9 = v8;
    v10 = MEMORY[0x29C2B1550]();
    if (v10 == v4)
    {
      break;
    }

    v11 = v10;
    if (v9 != v5 || v10 != v6)
    {
      v13 = MEMORY[0x29EDCA9C0];
      v14 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
      if (v9 == v13 && v11 == v6)
      {
        if (v14)
        {
          v15 = *(a1 + 16);
          v19 = 136315138;
          v20 = v15;
          _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s server not available", &v19, 0xCu);
        }

        *a1 = 0;
      }

      else
      {
        if (v14)
        {
          v16 = *(a1 + 16);
          v19 = 136315138;
          v20 = v16;
          _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s xpc_connection_send_message_with_reply_sync() with unexpected reply", &v19, 0xCu);
        }

        log_xpc_object("  reply", v9);
      }

      xpc_release(v9);
      v9 = 0;
      break;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      libSC_send_message_with_reply_sync_cold_1(buf, (a1 + 16), v22);
    }

    xpc_release(v5);
  }

  v17 = *MEMORY[0x29EDCA608];
  return v9;
}

void *libSC_info_client_create(NSObject *a1, const char *a2, const char *a3)
{
  handler[6] = *MEMORY[0x29EDCA608];
  if (_available)
  {
    v3 = 0;
  }

  else
  {
    v3 = malloc_type_malloc(0x20uLL, 0x103004009027118uLL);
    *v3 = 1;
    v3[2] = strdup(a3);
    v3[3] = strdup(a2);
    mach_service = xpc_connection_create_mach_service(a2, a1, 2uLL);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = __libSC_info_client_create_block_invoke;
    handler[3] = &__block_descriptor_tmp_1;
    handler[4] = v3;
    handler[5] = mach_service;
    xpc_connection_set_event_handler(mach_service, handler);
    v3[1] = mach_service;
    xpc_connection_set_context(mach_service, v3);
    xpc_connection_set_finalizer_f(mach_service, libSC_client_dealloc);
    xpc_connection_resume(mach_service);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

void dns_configuration_free(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (__dns_configuration_queue_once != -1)
    {
      dns_configuration_copy_cold_1();
    }

    dispatch_sync(__dns_configuration_queue_q, &__block_literal_global_12);
    v2 = *MEMORY[0x29EDCA608];

    free(a1);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
  }
}

void libSC_client_dealloc(void **a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    free(a1[2]);
    free(a1[3]);
    v2 = *MEMORY[0x29EDCA608];

    free(a1);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
    v4 = *MEMORY[0x29EDCA608];
  }
}

dispatch_queue_t ____nwi_client_queue_block_invoke()
{
  v2 = *MEMORY[0x29EDCA608];
  result = dispatch_queue_create("com.apple.SystemConfiguration.NetworkInformation", 0);
  __nwi_client_queue_q = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void __dns_configuration_free_block_invoke()
{
  v1 = *MEMORY[0x29EDCA608];
  if (!--dnsinfo_active)
  {
    libSC_info_client_release(dnsinfo_client);
    dnsinfo_client = 0;
  }

  v0 = *MEMORY[0x29EDCA608];
}

void libSC_info_client_release(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *MEMORY[0x29EDCA608];

  xpc_release(v1);
}

void ___nwi_client_init_block_invoke()
{
  v3 = *MEMORY[0x29EDCA608];
  if (nwi_active++)
  {
    v1 = nwi_client == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (nwi_store_force_refresh_block_invoke_once != -1)
    {
      ___nwi_client_init_block_invoke_cold_1();
    }

    if (__nwi_client_queue_once != -1)
    {
      _nwi_client_release_cold_1();
    }

    nwi_client = libSC_info_client_create(__nwi_client_queue_q, "com.apple.SystemConfiguration.NetworkInformation", "Network information");
    if (!nwi_client)
    {
      --nwi_active;
    }
  }

  v2 = *MEMORY[0x29EDCA608];
}

void ___nwi_client_init_block_invoke_cold_1()
{
  v0 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_0();
  v1 = *MEMORY[0x29EDCA608];

  dispatch_once(&nwi_store_force_refresh_block_invoke_once, &__block_literal_global_21);
}

const char *___nwi_client_init_block_invoke_2()
{
  v2 = *MEMORY[0x29EDCA608];
  result = getprogname();
  client_proc_name = result;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void ___nwi_client_release_block_invoke()
{
  v1 = *MEMORY[0x29EDCA608];
  if (!--nwi_active)
  {
    libSC_info_client_release(nwi_client);
    nwi_client = 0;
  }

  v0 = *MEMORY[0x29EDCA608];
}

void _nwi_client_release()
{
  v2 = *MEMORY[0x29EDCA608];
  if (__nwi_client_queue_once != -1)
  {
    _nwi_client_release_cold_1();
  }

  v0 = __nwi_client_queue_q;
  v1 = *MEMORY[0x29EDCA608];

  dispatch_sync(v0, &__block_literal_global_14);
}

uint64_t nwi_ifstate_get_generation(uint64_t a1)
{
  result = *(a1 + 52);
  v2 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return result;
}

const char *nwi_state_get_ifstate(_DWORD *a1, char *__s1)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
LABEL_18:
    v7 = 0;
    goto LABEL_19;
  }

  v4 = a1[1];
  v5 = a1[2];
  if (v5 >= 1 && v5 <= v4)
  {
    v7 = (a1 + 10);
    while (strcmp(__s1, v7))
    {
      v7 += 112;
      if (!--v5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = v4;
    v9 = a1[3];
    if (v9 < 1 || v9 > v8)
    {
      goto LABEL_18;
    }

    v7 = &a1[28 * v8 + 10];
    while (strcmp(__s1, v7))
    {
      v7 += 112;
      if (!--v9)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t nwi_ifstate_get_signature(uint64_t a1, int a2, _DWORD *a3)
{
  v6 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
LABEL_7:
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a2 != 30 && a2 != 2)
  {
    goto LABEL_9;
  }

  if (*(a1 + 32) != a2)
  {
    v3 = *(a1 + 24);
    if (!v3)
    {
      goto LABEL_9;
    }

    a1 += 112 * v3;
    goto LABEL_7;
  }

LABEL_8:
  if ((*(a1 + 16) & 0x10) != 0)
  {
    *a3 = 20;
    result = a1 + 92;
    goto LABEL_11;
  }

LABEL_9:
  result = 0;
  *a3 = 0;
LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

const char *dns_configuration_notify_key()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return "com.apple.system.SystemConfiguration.dns_configuration";
}

void _dns_configuration_ack(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 && dnsinfo_client && *dnsinfo_client == 1)
  {
    if (__dns_configuration_queue_once != -1)
    {
      dns_configuration_copy_cold_1();
    }

    dispatch_sync(__dns_configuration_queue_q, &__block_literal_global_15);
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "request_op", 65538);
    xpc_dictionary_set_uint64(v2, "generation", *(a1 + 24));
    xpc_connection_send_message(*(dnsinfo_client + 8), v2);
    v3 = *MEMORY[0x29EDCA608];

    xpc_release(v2);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];
  }
}

void ___dns_configuration_ack_block_invoke()
{
  v1 = *MEMORY[0x29EDCA608];
  ++dnsinfo_active;
  v0 = *MEMORY[0x29EDCA608];
}

const char *nwi_state_get_notify_key()
{
  v0 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return "com.apple.system.SystemConfiguration.nwi";
}

void _nwi_state_force_refresh()
{
  v0 = 0;
  v2 = *MEMORY[0x29EDCA608];
  atomic_compare_exchange_strong(nwi_store_force_refresh, &v0, 1u);
  v1 = *MEMORY[0x29EDCA608];
}

void nwi_state_release(atomic_uint *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (atomic_fetch_add(a1 + 5, 0xFFFFFFFF) == 1)
  {
    _nwi_client_release();
    v2 = *MEMORY[0x29EDCA608];

    free(a1);
  }

  else
  {
    v3 = *MEMORY[0x29EDCA608];
  }
}

void *_nwi_config_agent_copy_data(uint64_t a1, void *a2)
{
  v2 = 0;
  size[1] = *MEMORY[0x29EDCA608];
  if (a1 && a2)
  {
    _nwi_client_init();
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v5, "request_op", 131075);
    if (client_proc_name)
    {
      xpc_dictionary_set_string(v5, "proc_name", client_proc_name);
    }

    xpc_dictionary_set_uuid(v5, "AgentUUID", a1);
    xpc_dictionary_set_string(v5, "AgentType", (a1 + 48));
    v6 = libSC_send_message_with_reply_sync(nwi_client, v5);
    xpc_release(v5);
    if (v6)
    {
      size[0] = 0;
      data = xpc_dictionary_get_data(v6, "AgentData", size);
      v2 = 0;
      if (data)
      {
        v8 = data;
        if (size[0])
        {
          v2 = malloc_type_malloc(size[0], 0xB077D0A5uLL);
          v9 = size[0];
          *a2 = size[0];
          memcpy(v2, v8, v9);
        }
      }

      xpc_release(v6);
    }

    else
    {
      v2 = 0;
    }

    _nwi_client_release();
  }

  v10 = *MEMORY[0x29EDCA608];
  return v2;
}

void _nwi_state_ack(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a1 && nwi_client && *nwi_client == 1)
  {
    if (__nwi_client_queue_once != -1)
    {
      _nwi_client_release_cold_1();
    }

    dispatch_sync(__nwi_client_queue_q, &__block_literal_global_10);
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "request_op", 131074);
    xpc_dictionary_set_uint64(v2, "generation", *(a1 + 32));
    xpc_connection_send_message(*(nwi_client + 8), v2);
    v3 = *MEMORY[0x29EDCA608];

    xpc_release(v2);
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
    v5 = *MEMORY[0x29EDCA608];
  }
}

void ___nwi_state_ack_block_invoke()
{
  v1 = *MEMORY[0x29EDCA608];
  ++nwi_active;
  v0 = *MEMORY[0x29EDCA608];
}

uint64_t nwi_state_get_generation(uint64_t a1)
{
  result = *(a1 + 32);
  v2 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nwi_ifstate_get_flags(uint64_t a1)
{
  v2 = 1;
  if (*(a1 + 32) != 2)
  {
    v2 = 2;
  }

  result = v2 | *(a1 + 16) & 0x44;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v5 = a1 + 112 * v4;
      v6 = 1;
      if (*(v5 + 32) != 2)
      {
        v6 = 2;
      }

      result |= *(v5 + 16) & 0x44 | v6;
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nwi_state_get_first_ifstate(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 4);
    if (v2 < 1)
    {
      goto LABEL_11;
    }

    v3 = 12;
    if (a2 == 2)
    {
      v3 = 8;
    }

    if (*(result + v3) < 1)
    {
LABEL_11:
      result = 0;
    }

    else
    {
      if (a2 != 30)
      {
        v2 = 0;
      }

      v4 = result + 112 * v2;
      if ((*(v4 + 56) & 8) != 0)
      {
        result = 0;
      }

      else
      {
        result = v4 + 40;
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nwi_ifstate_get_next(uint64_t a1, int a2)
{
  if (*(a1 + 32) != a2)
  {
    v2 = *(a1 + 24);
    if (!v2)
    {
LABEL_5:
      result = 0;
      goto LABEL_9;
    }

    a1 += 112 * v2;
  }

  if ((*(a1 + 16) & 0x1008) != 0)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 128) & 8) != 0)
  {
    result = 0;
  }

  else
  {
    result = a1 + 112;
  }

LABEL_9:
  v4 = *MEMORY[0x29EDCA608];
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nwi_ifstate_compare_rank(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  v3 = *(a2 + 28);
  v4 = v2 == v3;
  if (v2 < v3)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    result = 0;
  }

  else
  {
    result = v5;
  }

  v7 = *MEMORY[0x29EDCA608];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nwi_state_get_reachability_flags(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2 == 30 || a2 == 2)
    {
      v2 = *(a1 + 4);
      if (v2 < 1)
      {
        goto LABEL_14;
      }

      v3 = 12;
      if (a2 == 2)
      {
        v3 = 8;
      }

      if (*(a1 + v3) < 1)
      {
LABEL_14:
        v5 = 0;
      }

      else
      {
        if (a2 != 30)
        {
          v2 = 0;
        }

        v4 = a1 + 112 * v2;
        if ((*(v4 + 56) & 8) != 0)
        {
          v5 = 0;
        }

        else
        {
          v5 = v4 + 40;
        }
      }

      v7 = 28;
      if (a2 == 2)
      {
        v7 = 24;
      }

      v8 = (a1 + v7);
      if (v5)
      {
        v9 = (v5 + 60);
      }

      else
      {
        v9 = v8;
      }

      goto LABEL_20;
    }

    v13 = *(a1 + 4);
    if (v13 >= 1)
    {
      if (*(a1 + 8) < 1)
      {
        if (*(a1 + 12) >= 1)
        {
          v20 = a1 + 112 * v13;
          if ((*(v20 + 56) & 8) == 0)
          {
            v17 = v20 + 40;
            goto LABEL_41;
          }
        }
      }

      else
      {
        v14 = a1 + 40;
        v15 = *(a1 + 56);
        if ((v15 & 8) != 0)
        {
          v16 = 0;
        }

        else
        {
          v16 = a1 + 40;
        }

        if (*(a1 + 12) <= 0)
        {
          v14 = v16;
          if ((v15 & 8) == 0)
          {
LABEL_39:
            v9 = (v14 + 60);
LABEL_20:
            v6 = *v9;
            goto LABEL_21;
          }
        }

        else
        {
          v17 = v14 + 112 * v13;
          v18 = *(v17 + 16);
          if ((v18 & 8) != 0)
          {
            v19 = 0;
          }

          else
          {
            v19 = v17;
          }

          if ((v15 & 8) == 0)
          {
            if ((v18 & 8) == 0)
            {
              if (*(v16 + 28) <= *(v19 + 28))
              {
                v9 = (v16 + 60);
              }

              else
              {
                v9 = (v19 + 60);
              }

              goto LABEL_20;
            }

            goto LABEL_39;
          }

          if ((v18 & 8) == 0)
          {
LABEL_41:
            v9 = (v17 + 60);
            goto LABEL_20;
          }
        }
      }
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      goto LABEL_21;
    }

    v9 = (a1 + 28);
    goto LABEL_20;
  }

  v6 = 0;
LABEL_21:
  v10 = *MEMORY[0x29EDCA608];
  v11 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t nwi_ifstate_get_vpn_server(uint64_t a1)
{
  if (*(a1 + 65))
  {
    result = a1 + 64;
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nwi_ifstate_get_reachability_flags(uint64_t a1)
{
  result = *(a1 + 60);
  v2 = *MEMORY[0x29EDCA608];
  *MEMORY[0x29EDCA608];
  return result;
}

uint64_t nwi_ifstate_get_dns_signature(uint64_t a1, int *a2)
{
  v3 = a1;
  v21 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  if ((nwi_ifstate_get_flags(a1) & 4) != 0)
  {
    v5 = *(v3 + 32);
    v6 = v3;
    if (v5 != 2)
    {
      v7 = *(v3 + 24);
      if (!v7)
      {
        v10 = 0;
        v11 = 0;
        goto LABEL_10;
      }

      v6 = v3 + 112 * v7;
    }

    v8 = *(v6 + 16);
    v9 = v6 + 92;
    if ((v8 & 0x10) != 0)
    {
      v10 = 20;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9 & (v8 << 59 >> 63);
LABEL_10:
    v12 = v3;
    if (v5 != 30)
    {
      v13 = *(v3 + 24);
      if (!v13)
      {
        goto LABEL_14;
      }

      v12 = v3 + 112 * v13;
    }

    if ((*(v12 + 16) & 0x10) != 0)
    {
      v4 = v12 + 92;
      v14 = 20;
      goto LABEL_17;
    }

LABEL_14:
    v4 = 0;
    if (!v11)
    {
      goto LABEL_28;
    }

    v14 = 0;
LABEL_17:
    v15 = v3;
    if (v5 != 2)
    {
      v16 = *(v3 + 24);
      if (!v16)
      {
        goto LABEL_21;
      }

      v15 = v3 + 112 * v16;
    }

    if ((nwi_ifstate_get_flags(v15) & 8) == 0)
    {
LABEL_27:
      *a2 = v10;
      v4 = v11;
      goto LABEL_28;
    }

LABEL_21:
    if (v5 != 30)
    {
      v17 = *(v3 + 24);
      if (!v17)
      {
        LOBYTE(v18) = 1;
LABEL_25:
        if ((v18 & (v10 != 0)) == 0)
        {
          v10 = v14;
          v11 = v4;
        }

        goto LABEL_27;
      }

      v3 += 112 * v17;
    }

    v18 = (nwi_ifstate_get_flags(v3) >> 3) & 1;
    goto LABEL_25;
  }

  v4 = 0;
LABEL_28:
  v19 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t nwi_state_get_interface_names(uint64_t a1, void *a2, int a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 && a3)
  {
    result = *(a1 + 16);
    if (result >= 1)
    {
      v5 = a1 + 40;
      v6 = 2 * *(a1 + 4);
      v7 = (v5 + 112 * v6);
      v8 = result;
      while (*v7 < v6)
      {
        *a2++ = v5 + 112 * *v7++;
        if (!--v8)
        {
          goto LABEL_10;
        }
      }

      result = 0;
    }
  }

  else
  {
    result = *(a1 + 16);
  }

LABEL_10:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _libSC_info_fork_child()
{
  v2 = *MEMORY[0x29EDCA608];
  result = _dispatch_is_fork_of_multithreaded_parent();
  if (result)
  {
    _available = 1;
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void __libSC_info_client_create_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C2B1550](a2);
  if (v4 == MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 24);
      v11 = 136315138;
      v12 = v7;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: unexpected message", &v11, 0xCu);
    }

    log_xpc_object("  dict = ", a2);
  }

  else
  {
    v5 = v4;
    if (v4 == MEMORY[0x29EDCAA18])
    {
      if (a2 == MEMORY[0x29EDCA9C0])
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(*(a1 + 32) + 24);
          v11 = 136315138;
          v12 = v10;
          _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: server not available", &v11, 0xCu);
        }

        **(a1 + 32) = 0;
      }

      else if (a2 == MEMORY[0x29EDCA9B8])
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
        {
          __libSC_info_client_create_block_invoke_cold_2(a1);
        }
      }

      else
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x29EDCA9C8]);
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
        {
          __libSC_info_client_create_block_invoke_cold_1(a1, string);
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 24);
      v11 = 136315394;
      v12 = v6;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s: unknown event type : %p", &v11, 0x16u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void log_xpc_object(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29C2B1490](a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = a1;
    v7 = 2080;
    v8 = v3;
    _os_log_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s = %s", &v5, 0x16u);
  }

  free(v3);
  v4 = *MEMORY[0x29EDCA608];
}

BOOL is_config_agent_type_proxy(_BOOL8 result)
{
  v3 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    result = !strcmp((result + 16), "SystemConfig") && strcmp((v1 + 48), "ProxyAgent") == 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

xpc_object_t config_agent_get_dns_nameservers(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1 && MEMORY[0x29C2B1550]() == MEMORY[0x29EDCAA00])
  {
    v4 = *MEMORY[0x29EDCA608];

    return xpc_dictionary_get_value(a1, "NameServers");
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

xpc_object_t config_agent_get_dns_searchdomains(void *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (a1 && MEMORY[0x29C2B1550]() == MEMORY[0x29EDCAA00])
  {
    v4 = *MEMORY[0x29EDCA608];

    return xpc_dictionary_get_value(a1, "SearchDomains");
  }

  else
  {
    v2 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

void config_agent_free_dns_information(void *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *MEMORY[0x29EDCA608];
    v2 = *MEMORY[0x29EDCA608];

    xpc_release(a1);
  }

  else
  {
    syslog(3, "Attempting to free invalid resolver");
    v3 = *MEMORY[0x29EDCA608];
  }
}

uint64_t config_agent_copy_proxy_information(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (!is_config_agent_type_proxy(a1))
  {
LABEL_10:
    v7 = *MEMORY[0x29EDCA608];
    return 0;
  }

  if (!*(a1 + 212))
  {
    v5 = *(a1 + 80);
    v4 = (a1 + 80);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = "ProxyAgent";
    }

    syslog(3, "Cannot parse config agent (%s). No data available", v6);
    goto LABEL_10;
  }

  v2 = *MEMORY[0x29EDCA608];

  return xpc_create_from_plist();
}

void *config_agent_update_proxy_information(void *a1)
{
  v1 = a1;
  v27 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v15 = 0u;
    v16 = 0u;
    *dst = 0u;
    v14 = 0u;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    if (MEMORY[0x29C2B1550](a1) == MEMORY[0x29EDCA9E0])
    {
      applier[0] = MEMORY[0x29EDCA5F8];
      applier[1] = 0x40000000;
      applier[2] = __get_agent_uuid_if_OOB_data_required_block_invoke;
      applier[3] = &unk_29F28C090;
      applier[4] = &v9;
      xpc_array_apply(v1, applier);
    }

    else if (MEMORY[0x29C2B1550](v1) == MEMORY[0x29EDCAA00])
    {
      value = xpc_dictionary_get_value(v1, "OutOfBandDataUUID");
      v10[3] = value;
    }

    if (v10[3] && MEMORY[0x29C2B1550]() == MEMORY[0x29EDCA9F8] && xpc_data_get_length(v10[3]) >= 0x10)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v10[3]);
      uuid_copy(dst, bytes_ptr);
    }

    else
    {
      uuid_clear(dst);
    }

    _Block_object_dispose(&v9, 8);
    if (uuid_is_null(dst))
    {
      v1 = 0;
    }

    else
    {
      applier[0] = 0;
      __strlcpy_chk();
      v4 = _nwi_config_agent_copy_data(dst, applier);
      v1 = 0;
      if (v4 && applier[0])
      {
        v5 = v4;
        v1 = xpc_create_from_plist();
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v1;
}

void config_agent_free_proxy_information(void *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = *MEMORY[0x29EDCA608];
    v2 = *MEMORY[0x29EDCA608];

    xpc_release(a1);
  }

  else
  {
    syslog(3, "Attempting to free proxy configuration");
    v3 = *MEMORY[0x29EDCA608];
  }
}

void __libSC_info_client_create_block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(*(a1 + 32) + 24);
  pid = xpc_connection_get_pid(*(a1 + 40));
  v6 = 136315650;
  v7 = v3;
  v8 = 1024;
  v9 = pid;
  v10 = 2080;
  v11 = a2;
  _os_log_debug_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s: connection error: %d : %s", &v6, 0x1Cu);
  v5 = *MEMORY[0x29EDCA608];
}

void __libSC_info_client_create_block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 24);
  v3 = 136315138;
  v4 = v1;
  _os_log_debug_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s: server failed", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void libSC_send_message_with_reply_sync_cold_1(uint8_t *buf, uint64_t *a2, void *a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  *buf = 136315138;
  *a3 = v3;
  _os_log_debug_impl(&dword_299DD2000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s server failure, retrying", buf, 0xCu);
  v4 = *MEMORY[0x29EDCA608];
}