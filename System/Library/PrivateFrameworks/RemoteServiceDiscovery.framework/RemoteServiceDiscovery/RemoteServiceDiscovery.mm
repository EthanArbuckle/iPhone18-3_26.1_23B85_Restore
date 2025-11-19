void __remote_device_create_from_client_description_block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __remote_device_create_from_client_description_block_invoke_cold_3();
    }

    goto LABEL_21;
  }

  if (MEMORY[0x2318E96F0](v3) != MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v3, "cmd");
    v6 = string;
    if (string && !strcmp(string, "found_device"))
    {
      v12 = rsd_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = WeakRetained[1];
        *buf = 136446210;
        v26 = v13;
        _os_log_impl(&dword_22E542000, v12, OS_LOG_TYPE_INFO, "%{public}s> Updated device", buf, 0xCu);
      }

      v7 = WeakRetained;
      v14 = v3;
      v15 = [v7 dq];
      dispatch_assert_queue_V2(v15);

      v16 = xpc_dictionary_get_dictionary(v14, "device");
      if (!v16)
      {
        __remote_device_create_from_client_description_block_invoke_cold_2(&v24, buf);
      }

      v17 = v16;
      v18 = rsd_log();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

      if (v19)
      {
        v20 = xpc_copy_clean_description();
        v21 = rsd_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __remote_device_create_from_client_description_block_invoke_cold_1();
        }

        free(v20);
      }

      remote_device_update_from_client_description(v7, v17);
      uint64 = xpc_dictionary_get_uint64(v17, "device_state");
      remote_device_advance_state(v7, uint64);
    }

    else
    {
      v7 = rsd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = WeakRetained[1];
        *buf = 136446466;
        v26 = v8;
        v27 = 2080;
        v28 = v6;
        _os_log_impl(&dword_22E542000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s> Device connection received unexpected command %s", buf, 0x16u);
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v9 = MEMORY[0x2318E9560](v3);
  v10 = rsd_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = WeakRetained[1];
    *buf = 136446466;
    v26 = v11;
    v27 = 2080;
    v28 = v9;
    _os_log_impl(&dword_22E542000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s> Error on device connection: %s", buf, 0x16u);
  }

  free(v9);
  if (v3 == MEMORY[0x277D863F0])
  {
    xpc_connection_cancel(*(a1 + 32));
  }

  else
  {
    remote_device_advance_state(WeakRetained, 3);
  }

LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
}

id rsd_log()
{
  if (rsd_log_once != -1)
  {
    rsd_log_cold_1();
  }

  v1 = rsd_log__log;

  return v1;
}

void remote_device_advance_state(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 dq];
  dispatch_assert_queue_V2(v4);

  v5 = [v3 state];
  if (v5 != a2)
  {
    v6 = v5;
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      remote_device_advance_state_cold_1();
    }

    switch(v6)
    {
      case 1:
        if ((a2 & 0xFFFFFFFE) != 2)
        {
          remote_device_advance_state_cold_4(&v28, v29);
        }

        break;
      case 2:
        if (a2 != 3)
        {
          remote_device_advance_state_cold_3(&v28, v29);
        }

        break;
      case 3:
        remote_device_advance_state_cold_2();
    }

    [v3 setState:a2];
    v8 = [v3 connected_callback];
    if (v8)
    {

      if ((a2 & 0xFFFFFFFE) == 2)
      {
        v9 = [v3 connected_callback];
        v10 = [v3 connected_callback_queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __remote_device_advance_state_block_invoke;
        block[3] = &unk_27884ACF0;
        v27 = v9;
        v11 = v3;
        v26 = v11;
        v12 = v9;
        dispatch_async(v10, block);

        [v11 setConnected_callback:0];
        [v11 setConnected_callback_queue:0];
        [v11 setConnected_callback_self_retain:0];
      }
    }

    v13 = [v3 disconnected_callback];

    if (a2 == 3 && v13)
    {
      v14 = [v3 disconnected_callback];
      v15 = [v3 disconnected_callback_queue];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __remote_device_advance_state_block_invoke_2;
      v22 = &unk_27884ACF0;
      v24 = v14;
      v16 = v3;
      v23 = v16;
      v17 = v14;
      dispatch_async(v15, &v19);

      [v16 setDisconnected_callback:{0, v19, v20, v21, v22}];
      [v16 setDisconnected_callback_queue:0];
      [v16 setDisconnected_callback_self_retain:0];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void remote_device_cancel(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v3 = [v1 dq];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remote_device_cancel_block_invoke;
  block[3] = &unk_27884AD40;
  v6 = v2;
  v4 = v2;
  dispatch_sync(v3, block);
}

void __remote_device_cancel_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) connection];
  xpc_connection_cancel(v1);
}

uint64_t remote_device_get_name(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_get_name_block_invoke;
  v7[3] = &unk_27884AC28;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E5437CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

OS_remote_device_browser *remote_device_start_browsing(int a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(OS_remote_device_browser);
  _remote_device_start_browsing(v7, a1, v6, v5, 0);

  return v7;
}

void _remote_device_start_browsing(void *a1, int a2, void *a3, void *a4, int a5)
{
  LODWORD(v8) = a2;
  v28 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (v8)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0xFFFFLL;
  }

  v10 = a4;
  v11 = a3;
  [v9 setDevice_type:v8];
  [v9 setCallback:v10];

  v12 = dispatch_queue_create_with_target_V2("remote device browse", 0, v11);
  [v9 setCbq:v12];

  v13 = [v9 cbq];
  mach_service = remoted_connection_create_mach_service("com.apple.remoted", v13);
  [v9 setConnection:mach_service];

  v15 = [v9 connection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = ___remote_device_start_browsing_block_invoke;
  handler[3] = &unk_27884AFB0;
  v16 = v9;
  v25 = v16;
  xpc_connection_set_event_handler(v15, handler);

  v17 = [v16 connection];
  xpc_connection_activate(v17);

  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v18, "cmd", "browse");
  xpc_dictionary_set_uint64(v18, "device_type", v8);
  if (a5)
  {
    xpc_dictionary_set_BOOL(v18, "present_only", 1);
  }

  v19 = MEMORY[0x2318E9560](v18);
  v20 = rsd_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = v19;
    _os_log_impl(&dword_22E542000, v20, OS_LOG_TYPE_DEFAULT, "Starting browsing: %s", buf, 0xCu);
  }

  free(v19);
  v21 = [v16 connection];
  v22 = [v16 cbq];
  xpc_connection_send_message_with_reply(v21, v18, v22, &__block_literal_global_385);

  v23 = *MEMORY[0x277D85DE8];
}

xpc_connection_t remoted_connection_create_mach_service(const char *a1, NSObject *a2)
{
  v4 = 0;
  mach_service = xpc_connection_create_mach_service(a1, a2, 0);
  if (xpc_user_sessions_enabled() && xpc_is_system_session())
  {
    xpc_user_sessions_get_foreground_uid();
    xpc_connection_set_target_user_session_uid();
  }

  return mach_service;
}

uint64_t __rsd_log_block_invoke()
{
  rsd_log__log = os_log_create("com.apple.RemoteServiceDiscovery", "RemoteServiceDiscovery");

  return MEMORY[0x2821F96F8]();
}

uint64_t bridge_version_parse_components(const char *a1, const char *a2, _DWORD *a3)
{
  v5 = a3 + 3;
  v6 = a3 + 4;
  v7 = sscanf(a1, "%u.%u.%u.%u.%u", a3, a3 + 1, a3 + 2, a3 + 3, a3 + 4);
  if (v7 != 5)
  {
    if (v7 != 4)
    {
      if (v7 != 3)
      {
        return 0;
      }

      *v5 = 0;
    }

    *v6 = 0;
  }

  __endptr = 0;
  v8 = strtol(a2, &__endptr, 10);
  if (!__endptr)
  {
    return 0;
  }

  if (*__endptr || HIDWORD(v8) != 0)
  {
    return 0;
  }

  a3[5] = v8;
  return 1;
}

char *bridge_version_unparse(_DWORD *a1)
{
  v2 = 0;
  asprintf(&v2, "%u.%u.%u.%u.%u,%u", *a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  return v2;
}

uint64_t bridge_version_serialize(__int128 *a1, _BYTE *a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 1) = *a2;
  *(a3 + 2) = a2[1];
  *(a3 + 24) = *(a1 + 5);
  v3 = *a1;
  *(a3 + 20) = *(a1 + 4);
  *(a3 + 4) = v3;
  return 1;
}

BOOL bridge_version_deserialize(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = *(a1 + 4);
    *(a2 + 16) = *(a1 + 5);
    *a2 = v4;
    *(a2 + 20) = *(a1 + 6);
    if (a3)
    {
      *a3 = a1[1];
      a3[1] = a1[2];
    }
  }

  return v3 == 1;
}

uint64_t bridge_version_compare(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    v3 = *(a2 + 20);
    if (v3 == 1)
    {
      return 0;
    }

    v4 = *(a3 + 20);
    if (v4 == 1)
    {
      return 0;
    }
  }

  else if (a1 == 1)
  {
    v3 = *(a2 + 20);
    if (v3 == 1)
    {
      return 2;
    }

    v4 = *(a3 + 20);
    if (v4 == 1)
    {
      return 2;
    }
  }

  else
  {
    if (a1)
    {
      bridge_version_compare_cold_1();
    }

    v3 = *(a2 + 20);
    v4 = *(a3 + 20);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(a2 + v5);
    v7 = *(a3 + v5);
    if (v6 > v7)
    {
      break;
    }

    if (v6 < v7)
    {
      return 1;
    }

    v5 += 4;
    if (v5 == 20)
    {
      return 2;
    }
  }

  return 3;
}

uint64_t bridge_version_read_plist(const char *a1, _DWORD *a2, uint64_t a3)
{
  v5 = open(a1, 0);
  if (v5 == -1)
  {
    v8 = 0;
LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v20.st_blksize = v7;
  *v20.st_qspare = v7;
  v20.st_birthtimespec = v7;
  *&v20.st_size = v7;
  v20.st_mtimespec = v7;
  v20.st_ctimespec = v7;
  *&v20.st_uid = v7;
  v20.st_atimespec = v7;
  *&v20.st_dev = v7;
  if (fstat(v5, &v20))
  {
    v8 = 0;
    goto LABEL_11;
  }

  v9 = malloc_type_malloc(v20.st_size, 0x7BE3B97AuLL);
  v10 = read(v6, v9, v20.st_size);
  if (v10 == v20.st_size)
  {
    v11 = xpc_create_from_plist();
    v8 = v11;
    if (!v11 || MEMORY[0x2318E96F0](v11) == MEMORY[0x277D86468])
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:
  free(v9);
LABEL_11:
  close(v6);
  if (!v8)
  {
    goto LABEL_20;
  }

  string = xpc_dictionary_get_string(v8, "BridgeVersion");
  v13 = xpc_dictionary_get_string(v8, "BridgeBuildGroup");
  v14 = 0;
  if (string)
  {
    if (v13)
    {
      v14 = bridge_version_parse_components(string, v13, a2);
      if (a3)
      {
        *a3 = 0;
        v15 = xpc_dictionary_get_dictionary(v8, "SEPEpoch");
        v16 = v15;
        if (v15)
        {
          int64 = xpc_dictionary_get_int64(v15, "Major");
          v18 = xpc_dictionary_get_int64(v16, "Minor");
          if ((int64 - 1) <= 0xFE && (v18 - 1) <= 0xFE)
          {
            *a3 = int64;
            *(a3 + 1) = v18;
          }
        }
      }
    }
  }

LABEL_21:

  return v14;
}

char *bridge_version_copy_current_string()
{
  memset(v2, 170, sizeof(v2));
  plist = bridge_version_read_plist("/System/Library/CoreServices/BridgeVersion.plist", v2, 0);
  result = 0;
  if (plist)
  {
    v3 = 0;
    asprintf(&v3, "%u.%u.%u.%u.%u,%u", LODWORD(v2[0]), HIDWORD(v2[0]), LODWORD(v2[1]), HIDWORD(v2[1]), LODWORD(v2[2]), HIDWORD(v2[2]));
    return v3;
  }

  return result;
}

const char *remote_device_type_get_description(unsigned int a1)
{
  if (a1 > 0x12)
  {
    return "<unknown>";
  }

  else
  {
    return remote_device_type_str[a1];
  }
}

uint64_t remote_device_type_is_trusted(int a1)
{
  if ((a1 - 19) <= 0xFFFFFFED)
  {
    remote_device_type_is_trusted_cold_1();
  }

  return (0x2500Fu >> (a1 - 1)) & 1;
}

uint64_t remote_device_type_parse(char *__s2)
{
  v2 = 1;
  while (strcmp(remote_device_type_str[v2], __s2))
  {
    if (++v2 == 19)
    {
      return 0;
    }
  }

  return v2;
}

const char *remote_device_state_get_description(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "<unknown>";
  }

  else
  {
    return remote_device_state_str[a1];
  }
}

void sub_22E544B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id remoted_queue()
{
  if (remoted_queue_once != -1)
  {
    remoted_queue_cold_1();
  }

  v1 = remoted_queue_queue;

  return v1;
}

id remote_service_copy_properties(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_service_copy_properties_cold_1();
  }

  v2 = v1;
  v3 = v1[2];

  return v3;
}

uint64_t remote_service_copy_property(void *a1, const char *a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_service_copy_properties_cold_1();
  }

  v4 = v3;
  v5 = *(v3 + 2);
  if (v5)
  {
    v6 = xpc_dictionary_get_value(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

int64_t remote_service_get_version(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_service_copy_properties_cold_1();
  }

  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    int64 = xpc_dictionary_get_int64(v3, "ServiceVersion");
  }

  else
  {
    int64 = 0;
  }

  return int64;
}

uint64_t remote_service_should_encrypt_socket_data(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_service_copy_properties_cold_1();
  }

  v2 = v1;
  if (_remote_device_supports_encrypting_socket_data(v1[4]) && _remote_service_properties_should_encrypt_socket_data(v2[2]))
  {
    v3 = remote_device_xpc_remote_connection_tls_enabled(v2[4]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL _remote_device_supports_encrypting_socket_data(void *a1)
{
  v1 = a1;
  if (remote_device_xpc_remote_connection_tls_enabled(v1))
  {
    v2 = [v1 messaging_protocol_version] > 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL _remote_service_properties_should_encrypt_socket_data(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = 0;
    v7 = 0;
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  v3 = xpc_dictionary_get_value(v1, "EncryptSocketData");
  v4 = v3;
  v5 = MEMORY[0x277D86448];
  if (v3 && MEMORY[0x2318E96F0](v3) == v5 && !xpc_BOOL_get_value(v4))
  {
    v8 = 0;
    goto LABEL_11;
  }

  v6 = xpc_dictionary_get_value(v2, "UsesRemoteXPC");
  v7 = v6;
  if (!v6 || MEMORY[0x2318E96F0](v6) != v5)
  {
    goto LABEL_9;
  }

  v8 = !xpc_BOOL_get_value(v7);
LABEL_10:

LABEL_11:
  return v8;
}

uint64_t remote_service_get_xpc_remote_connection_version_flags(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_service_copy_properties_cold_1();
  }

  v2 = v1;
  v3 = *(v1 + 4);
  if (!v3)
  {
    remote_service_get_xpc_remote_connection_version_flags_cold_1(&v7, v8);
  }

  xpc_remote_connection_version_flags = remote_device_get_xpc_remote_connection_version_flags(v3);

  v5 = *MEMORY[0x277D85DE8];
  return xpc_remote_connection_version_flags;
}

uint64_t remote_device_get_xpc_remote_connection_version_flags(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v3 = remote_device_copy_property(v1, "RemoteXPCVersionFlags");
  v4 = v3;
  if (v3 && MEMORY[0x2318E96F0](v3) == MEMORY[0x277D864C8])
  {
    value = xpc_uint64_get_value(v4);
  }

  else
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      remote_device_get_xpc_remote_connection_version_flags_cold_1();
    }

    value = 0;
  }

  return value;
}

id remote_service_copy_device(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_service_copy_properties_cold_1();
  }

  v2 = v1;
  v3 = *(v1 + 4);
  if (!v3)
  {
    remote_service_get_xpc_remote_connection_version_flags_cold_1(&v7, v8);
  }

  v4 = v3;

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t remote_device_get_xpc_remote_connection_mode_flags(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  type = remote_device_get_type(v1);
  if (type == 13 || type == 10)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t remote_device_get_type(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1431655766;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_get_type_block_invoke;
  v7[3] = &unk_27884AC28;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E54520C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t remote_service_supports_feature(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_service_copy_properties_cold_1();
  }

  v4 = v3;
  v5 = *(v3 + 2);
  if (v5)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v6 = xpc_dictionary_get_value(v5, "Features");
    v7 = v6;
    if (v6 && MEMORY[0x2318E96F0](v6) == MEMORY[0x277D86440])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __remote_service_supports_feature_block_invoke;
      v10[3] = &unk_27884ABD8;
      v10[4] = &v11;
      v10[5] = a2;
      xpc_array_apply(v7, v10);
    }

    v8 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_22E545334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __remote_service_supports_feature_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D864C0])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    v5 = 1;
    if (!strcmp(string_ptr, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t remote_service_set_connect_timeout(void *a1, int a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_service_copy_properties_cold_1();
  }

  v3[10] = a2;

  return 0;
}

uint64_t remote_service_set_keepalive(void *a1, BOOL a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_service_copy_properties_cold_1();
  }

  v4 = v3;
  v5 = xpc_BOOL_create(a2);
  v6 = v4[6];
  v4[6] = v5;

  return 0;
}

uint64_t remote_service_set_keepalive_time(void *a1, int a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_service_copy_properties_cold_1();
  }

  v3[14] = a2;

  return 0;
}

uint64_t remote_service_set_keepcount(void *a1, int a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_service_copy_properties_cold_1();
  }

  v3[15] = a2;

  return 0;
}

uint64_t remote_service_set_keepinterval(void *a1, int a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_service_copy_properties_cold_1();
  }

  v3[16] = a2;

  return 0;
}

uint64_t remote_service_create_connected_socket(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_service_copy_properties_cold_1();
  }

  v2 = v1;
  if (!v1[3])
  {
    remote_service_create_connected_socket_cold_1(&v6, v7);
  }

  connected_socket_impl = _remote_service_create_connected_socket_impl(v1, 1);

  v4 = *MEMORY[0x277D85DE8];
  return connected_socket_impl;
}

uint64_t _remote_service_create_connected_socket_impl(void *a1, int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = -1;
  v4 = remoted_queue();
  dispatch_assert_queue_not_V2(v4);

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "cmd", "connect");
  xpc_dictionary_set_uint64(v5, "connect_timeout", *(v3 + 10));
  v6 = v3[6];
  if (v6)
  {
    xpc_dictionary_set_value(v5, "keepalive", v6);
  }

  xpc_dictionary_set_uint64(v5, "keepalive_time", *(v3 + 14));
  xpc_dictionary_set_uint64(v5, "keepcount", *(v3 + 15));
  xpc_dictionary_set_uint64(v5, "keepinterval", *(v3 + 16));
  v7 = xpc_connection_send_message_with_reply_sync(v3[3], v5);
  v8 = v7;
  if (v7 && MEMORY[0x2318E96F0](v7) != MEMORY[0x277D86480])
  {
    v9 = xpc_dictionary_dup_fd(v8, "fd");
    *(v37 + 6) = v9;
  }

  v10 = *(v37 + 6);
  if (v10 == -1)
  {
    v24 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = rsd_log();
    v12 = remote_socket_poll_connect_sync(v10, v11);

    if (v12)
    {
      if (close(*(v37 + 6)) == -1)
      {
        v13 = *__error();
        _os_assumes_log();
      }

      v14 = v37;
      *(v37 + 6) = -1;
      if (a2)
      {
        v15 = rsd_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22E542000, v15, OS_LOG_TYPE_DEFAULT, "socket connection failed, heartbeat remote device and try again", buf, 2u);
        }

        v16 = dispatch_queue_create("remote client heartbeat", 0);
        v17 = dispatch_semaphore_create(0);
        v18 = v16;
        if (!v18)
        {
          v35 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v40 = 134217984;
          v41 = 0;
          _os_log_send_and_compose_impl();
          v29 = _os_crash_msg();
          _remote_service_create_connected_socket_impl_cold_1(v29);
        }

        v19 = v18;

        v20 = v17;
        if (!v20)
        {
          v35 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          *buf = 0u;
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v40 = 134217984;
          v41 = 0;
          _os_log_send_and_compose_impl();
          v30 = _os_crash_msg();
          _remote_service_create_connected_socket_impl_cold_1(v30);
        }

        v21 = v20;

        v22 = v3[4];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = ___remote_service_create_connected_socket_impl_block_invoke;
        v31[3] = &unk_27884AEC0;
        v34 = &v36;
        v32 = v3;
        v23 = v21;
        v33 = v23;
        remote_device_heartbeat(v22, v19, v31);
        dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);

        v14 = v37;
      }
    }

    else
    {
      should_encrypt_socket_data = remote_service_should_encrypt_socket_data(v3);
      v14 = v37;
      if (should_encrypt_socket_data)
      {
        v26 = [(xpc_connection_t *)v3 proxySocketOverRemoteXPC:*(v37 + 6)];
        v14 = v37;
        *(v37 + 6) = v26;
      }
    }

    v24 = *(v14 + 6);
  }

  _Block_object_dispose(&v36, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_22E5459E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void remote_service_connect_socket(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if (!v8)
  {
    remote_service_copy_properties_cold_1();
  }

  if (!v8[3])
  {
    remote_service_create_connected_socket_cold_1(&v9, v10);
  }

  _remote_service_connect_socket_impl(v8, v5, v6, 1);

  v7 = *MEMORY[0x277D85DE8];
}

void _remote_service_connect_socket_impl(void *a1, void *a2, void *a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "cmd", "connect");
  xpc_dictionary_set_uint64(v10, "connect_timeout", *(v7 + 10));
  v11 = v7[6];
  if (v11)
  {
    xpc_dictionary_set_value(v10, "keepalive", v11);
  }

  xpc_dictionary_set_uint64(v10, "keepalive_time", *(v7 + 14));
  xpc_dictionary_set_uint64(v10, "keepcount", *(v7 + 15));
  xpc_dictionary_set_uint64(v10, "keepinterval", *(v7 + 16));
  v12 = rsd_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    _remote_service_connect_socket_impl_cold_1();
  }

  v13 = v7[3];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___remote_service_connect_socket_impl_block_invoke;
  v17[3] = &unk_27884AF38;
  v21 = a4;
  v18 = v8;
  v19 = v7;
  v20 = v9;
  v14 = v9;
  v15 = v7;
  v16 = v8;
  xpc_connection_send_message_with_reply(v13, v10, v16, v17);
}

id remote_device_copy_property(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v4 = v3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = [v3 dq];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remote_device_copy_property_block_invoke;
  block[3] = &unk_27884AC50;
  v10 = v4;
  v11 = &v13;
  v12 = a2;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_22E545FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t remote_device_get_state(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -1431655766;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_get_state_block_invoke;
  v7[3] = &unk_27884AC28;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E54619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t remote_device_copy_service_names(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  _remote_device_crash_if_not_connected(v1);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "list_services");
  v4 = [v2 connection];
  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);

  if (MEMORY[0x2318E96F0](v5) == MEMORY[0x277D86480])
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      remote_device_copy_service_names_cold_2();
    }

    v6 = xpc_array_create(0, 0);
  }

  else
  {
    v6 = xpc_dictionary_get_value(v5, "services");
    if (!v6)
    {
      remote_device_copy_service_names_cold_1(&v10, v11);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

void remote_device_copy_uuid(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v4 = v3;
  v5 = [v3 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_copy_uuid_block_invoke;
  v7[3] = &unk_27884AC00;
  v8 = v4;
  v9 = a2;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __remote_device_copy_uuid_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) uuid];

    uuid_copy(v3, v4);
  }

  else
  {
    v5 = *(a1 + 40);

    uuid_clear(v5);
  }
}

uint64_t __remote_device_get_type_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) type];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id remote_device_copy_properties(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_copy_properties_block_invoke;
  v7[3] = &unk_27884AC28;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_22E546568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __remote_device_copy_properties_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __remote_device_copy_property_block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) properties];
  v2 = xpc_dictionary_get_value(v5, *(a1 + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t remote_device_copy_product_type(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_copy_product_type_block_invoke;
  v7[3] = &unk_27884AC78;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E546734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remote_device_copy_product_type_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  string = xpc_dictionary_get_string(v2, "ProductType");

  if (string)
  {
    *(*(*(a1 + 40) + 8) + 24) = strdup(string);
  }
}

uint64_t remote_device_copy_os_version(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_copy_os_version_block_invoke;
  v7[3] = &unk_27884AC78;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E546894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remote_device_copy_os_version_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  string = xpc_dictionary_get_string(v2, "OSVersion");

  if (string)
  {
    *(*(*(a1 + 40) + 8) + 24) = strdup(string);
  }
}

uint64_t remote_device_copy_os_build(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_copy_os_build_block_invoke;
  v7[3] = &unk_27884AC78;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E5469F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remote_device_copy_os_build_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  string = xpc_dictionary_get_string(v2, "BuildVersion");

  if (string)
  {
    *(*(*(a1 + 40) + 8) + 24) = strdup(string);
  }
}

uint64_t remote_device_copy_bridge_version_string(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_copy_bridge_version_string_block_invoke;
  v7[3] = &unk_27884AC78;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E546B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remote_device_copy_bridge_version_string_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  string = xpc_dictionary_get_string(v2, "BridgeVersion");

  if (string)
  {
    *(*(*(a1 + 40) + 8) + 24) = strdup(string);
  }
}

BOOL remote_device_get_bridge_version(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v4 = v3;
  v5 = remote_device_copy_bridge_version_string(v3);
  if (v5)
  {
    v6 = v5;
    v7 = bridge_version_parse(v5, a2);
    free(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t remote_device_copy_boot_session_uuid(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  if (!a2)
  {
    remote_device_copy_boot_session_uuid_cold_1();
  }

  v4 = v3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [v3 dq];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remote_device_copy_boot_session_uuid_block_invoke;
  block[3] = &unk_27884ACA0;
  v11 = &v13;
  v12 = a2;
  v10 = v4;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v7;
}

void sub_22E546D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remote_device_copy_boot_session_uuid_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  uuid = xpc_dictionary_get_uuid(v2, "BootSessionUUID");

  v4 = *(a1 + 48);
  if (uuid)
  {
    uuid_copy(v4, uuid);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {

    uuid_clear(v4);
  }
}

uint64_t remote_device_copy_build_version(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v3 = remote_device_copy_os_build(v1);

  return v3;
}

uint64_t remote_device_copy_internal_build(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -86;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_copy_internal_build_block_invoke;
  v7[3] = &unk_27884AC28;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E546EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __remote_device_copy_internal_build_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(v2, "AppleInternal");
}

uint64_t remote_device_get_messaging_protocol_version(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v2 = [v1 dq];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __remote_device_get_messaging_protocol_version_block_invoke;
  v6[3] = &unk_27884AC28;
  v7 = v1;
  v8 = &v9;
  v3 = v1;
  dispatch_sync(v2, v6);

  v4 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_22E547050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __remote_device_get_messaging_protocol_version_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) messaging_protocol_version];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

BOOL remote_device_get_connectable(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "get_connectable");
  v4 = [v2 connection];
  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);

  if (MEMORY[0x2318E96F0](v5) == MEMORY[0x277D86480])
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      remote_device_get_connectable_cold_1();
    }

    v6 = 0;
  }

  else
  {
    v6 = xpc_dictionary_get_BOOL(v5, "result");
  }

  return v6;
}

int64_t remote_device_get_latest_connect_result(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "get_latest_connect_error");
  v4 = [v2 connection];
  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);

  if (MEMORY[0x2318E96F0](v5) == MEMORY[0x277D86480])
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      remote_device_get_latest_connect_result_cold_1();
    }

    int64 = 0;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(v5, "result");
  }

  return int64;
}

void remote_device_authenticate(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  if (!v6)
  {
    remote_device_authenticate_cold_4();
  }

  v8 = v7;
  if (!v7)
  {
    remote_device_authenticate_cold_3();
  }

  _remote_device_crash_if_not_connected(v5);
  v9 = sec_trust_copy_ref(v6);
  v10 = SecTrustCopyCertificateChain(v9);
  if (!v10)
  {
    v11 = rsd_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      remote_device_authenticate_cold_1();
    }

    v8[2](v8, 0);
  }

  v12 = [(__CFArray *)v10 lastObject];
  if (!v12)
  {
    v13 = rsd_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      remote_device_authenticate_cold_2();
    }

    v8[2](v8, 0);
  }

  v14 = SecCertificateCopyData(v12);
  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v15, "cmd", "authenticate_device");
  BytePtr = CFDataGetBytePtr(v14);
  Length = CFDataGetLength(v14);
  xpc_dictionary_set_data(v15, "identity_cert", BytePtr, Length);
  v18 = [v5 connection];
  v19 = [v5 dq];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __remote_device_authenticate_block_invoke;
  v22[3] = &unk_27884ACC8;
  v20 = v8;
  v24 = v20;
  v21 = v5;
  v23 = v21;
  xpc_connection_send_message_with_reply(v18, v15, v19, v22);

  if (v14)
  {
    CFRelease(v14);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

void sub_22E5474CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void _remote_device_crash_if_not_connected(void *a1)
{
  v1 = a1;
  if (remote_device_get_state(v1) <= 1)
  {
    _remote_device_crash_if_not_connected_cold_1();
  }
}

void __remote_device_authenticate_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __remote_device_authenticate_block_invoke_cold_1();
    }

    *__error() = 83;
  }

  else
  {
    string = xpc_dictionary_get_string(v3, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v8 = *(*(a1 + 40) + 16);
      goto LABEL_14;
    }

    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 8);
      v10 = 136446210;
      v11 = v6;
      _os_log_impl(&dword_22E542000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s> remote_device_authenticate failed", &v10, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 16);
LABEL_14:
  v8();

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t remote_device_copy_local_services(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  _remote_device_crash_if_not_connected(v1);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "list_local_services");
  v4 = [v2 connection];
  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);

  if (MEMORY[0x2318E96F0](v5) == MEMORY[0x277D86480])
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      remote_device_copy_local_services_cold_2();
    }

    empty = xpc_dictionary_create_empty();
  }

  else
  {
    empty = xpc_dictionary_get_value(v5, "services");
    if (!empty)
    {
      remote_device_copy_service_names_cold_1(&v10, v11);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return empty;
}

OS_remote_service *remote_device_copy_service(void *a1, const char *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a1;
  if (!v4)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  if (!a2)
  {
    remote_device_copy_service_cold_8();
  }

  v5 = v4;
  _remote_device_crash_if_not_connected(v4);
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "cmd", "get_service");
  xpc_dictionary_set_string(v6, "name", a2);
  v7 = [v5 connection];
  v8 = xpc_connection_send_message_with_reply_sync(v7, v6);

  if (MEMORY[0x2318E96F0](v8) == MEMORY[0x277D86480])
  {
    v14 = rsd_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      remote_device_copy_service_cold_7();
    }

    v11 = __error();
    v12 = 0;
    v13 = 83;
    goto LABEL_14;
  }

  string = xpc_dictionary_get_string(v8, "result");
  if (string && (*string != 79 || string[1] != 75 || string[2]))
  {
    v10 = rsd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E542000, v10, OS_LOG_TYPE_DEFAULT, "remote_device_copy_service: service not found", buf, 2u);
    }

    v11 = __error();
    v12 = 0;
    v13 = 3;
LABEL_14:
    *v11 = v13;
    goto LABEL_25;
  }

  v15 = xpc_dictionary_get_dictionary(v8, "service");
  if (!v15)
  {
    remote_device_copy_service_cold_6(&v37, buf);
  }

  v16 = v15;
  v17 = v5;
  v18 = v16;
  if (MEMORY[0x2318E96F0]() != MEMORY[0x277D86468])
  {
    remote_device_copy_service_cold_1(&v37, buf);
  }

  v12 = objc_alloc_init(OS_remote_service);
  v19 = rsd_log();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

  if (v20)
  {
    v21 = xpc_copy_clean_description();
    v22 = rsd_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      remote_device_copy_service_cold_2();
    }

    free(v21);
  }

  v23 = xpc_dictionary_get_string(v18, "name");
  if (!v23)
  {
    remote_device_copy_service_cold_5(&v37, buf);
  }

  v12->name = strdup(v23);
  objc_storeStrong(&v12->device, a1);
  v24 = xpc_dictionary_get_dictionary(v18, "properties");
  properties = v12->properties;
  v12->properties = v24;

  v26 = xpc_dictionary_get_value(v18, "endpoint");
  if (!v26)
  {
    remote_device_copy_service_cold_4(&v37, buf);
  }

  v27 = v26;
  v28 = xpc_connection_create_from_endpoint(v26);
  if (!v28)
  {
    remote_device_copy_service_cold_3(&v37, buf);
  }

  v29 = v28;
  v30 = remoted_queue();
  xpc_connection_set_target_queue(v29, v30);

  xpc_connection_set_event_handler(v29, &__block_literal_global_364);
  xpc_connection_activate(v29);
  connection = v12->connection;
  v12->connection = v29;
  v32 = v29;

  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  proxies = v12->proxies;
  v12->proxies = v33;

LABEL_25:
  v35 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t remote_device_check_service(void *a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  if (!a2)
  {
    remote_device_copy_service_cold_8();
  }

  v4 = v3;
  _remote_device_crash_if_not_connected(v3);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "cmd", "check_service");
  xpc_dictionary_set_string(v5, "name", a2);
  v6 = [v4 connection];
  v7 = xpc_connection_send_message_with_reply_sync(v6, v5);

  if (MEMORY[0x2318E96F0](v7) == MEMORY[0x277D86480])
  {
    v10 = rsd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      remote_device_check_service_cold_1();
    }

    v9 = 0;
    *__error() = 83;
  }

  else
  {
    string = xpc_dictionary_get_string(v7, "result");
    if (string && *string == 79 && string[1] == 75 && !string[2])
    {
      v13 = rsd_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136446210;
        v15 = a2;
        _os_log_impl(&dword_22E542000, v13, OS_LOG_TYPE_DEFAULT, "remote_device_check_service: service %{public}s found", &v14, 0xCu);
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __remote_device_get_state_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) state];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void remote_device_set_connected_callback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v8 = v7;
  if (!v7)
  {
    remote_device_set_connected_callback_cold_1();
  }

  v9 = [v5 dq];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remote_device_set_connected_callback_block_invoke;
  block[3] = &unk_27884AD18;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v5;
  dispatch_sync(v9, block);
}

void __remote_device_set_connected_callback_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 2 || objc_msgSend(*(a1 + 32), "state") == 3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __remote_device_set_connected_callback_block_invoke_2;
    v4[3] = &unk_27884ACF0;
    v2 = *(a1 + 40);
    v6 = *(a1 + 48);
    v5 = *(a1 + 32);
    dispatch_async(v2, v4);
  }

  else
  {
    [*(a1 + 32) setConnected_callback:*(a1 + 48)];
    [*(a1 + 32) setConnected_callback_queue:*(a1 + 40)];
    v3 = *(a1 + 32);

    [v3 setConnected_callback_self_retain:v3];
  }
}

void remote_device_set_disconnected_callback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v8 = v7;
  if (!v7)
  {
    remote_device_set_connected_callback_cold_1();
  }

  v9 = [v5 dq];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remote_device_set_disconnected_callback_block_invoke;
  block[3] = &unk_27884AD18;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v5;
  dispatch_sync(v9, block);
}

void __remote_device_set_disconnected_callback_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 3)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __remote_device_set_disconnected_callback_block_invoke_2;
    v4[3] = &unk_27884ACF0;
    v2 = *(a1 + 40);
    v6 = *(a1 + 48);
    v5 = *(a1 + 32);
    dispatch_async(v2, v4);
  }

  else
  {
    [*(a1 + 32) setDisconnected_callback:*(a1 + 48)];
    [*(a1 + 32) setDisconnected_callback_queue:*(a1 + 40)];
    v3 = *(a1 + 32);

    [v3 setDisconnected_callback_self_retain:v3];
  }
}

void remote_device_heartbeat(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v8 = v7;
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "cmd", "heartbeat");
  v10 = [v5 connection];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __remote_device_heartbeat_block_invoke;
  handler[3] = &unk_27884AD68;
  v13 = v8;
  v11 = v8;
  xpc_connection_send_message_with_reply(v10, v9, v6, handler);
}

void __remote_device_heartbeat_block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    string = xpc_dictionary_get_string(xdict, "result");
    v4 = string && *string == 79 && string[1] == 75 && *(string + 2) == 0;
    (*(*(a1 + 32) + 16))(*(a1 + 32), v4);
  }
}

uint64_t remote_device_get_heartbeat_stats(void *a1, _OWORD *a2)
{
  v3 = a1;
  if (!v3)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "cmd", "get_heartbeat_stats");
  v6 = [v4 connection];
  v7 = xpc_connection_send_message_with_reply_sync(v6, v5);

  if (MEMORY[0x2318E96F0](v7) == MEMORY[0x277D86480])
  {
    v10 = 0;
  }

  else
  {
    length = 0xAAAAAAAAAAAAAAAALL;
    data = xpc_dictionary_get_data(v7, "heartbeat_stats", &length);
    if (data)
    {
      v9 = length == 48;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    if (v9)
    {
      v11 = *data;
      v12 = data[2];
      a2[1] = data[1];
      a2[2] = v12;
      *a2 = v11;
    }
  }

  return v10;
}

uint64_t remote_device_timesync(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  _remote_device_crash_if_not_connected(v1);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "timesync");
  v4 = [v2 connection];
  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);

  if (MEMORY[0x2318E96F0](v5) == MEMORY[0x277D86480])
  {
    v8 = rsd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      remote_device_timesync_cold_1(v2);
    }

    int64 = 35;
  }

  else
  {
    string = xpc_dictionary_get_string(v5, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v10 = 1;
      goto LABEL_14;
    }

    int64 = xpc_dictionary_get_int64(v5, "error_code");
    v8 = rsd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v2[1];
      v13 = 136446466;
      v14 = v9;
      v15 = 1024;
      v16 = int64;
      _os_log_impl(&dword_22E542000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s> remote_device_timesync: %{errno}d", &v13, 0x12u);
    }
  }

  v10 = 0;
  *__error() = int64;
LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t remote_device_reset(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "reset");
  v4 = [v2 connection];
  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);

  if (MEMORY[0x2318E96F0](v5) == MEMORY[0x277D86480])
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      remote_device_reset_cold_1(v2);
    }

    v9 = 35;
  }

  else
  {
    string = xpc_dictionary_get_string(v5, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v10 = 1;
      goto LABEL_15;
    }

    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v2[1];
      v13 = 136446210;
      v14 = v8;
      _os_log_impl(&dword_22E542000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s> remote_device_reset: client lacks privilege", &v13, 0xCu);
    }

    v9 = 1;
  }

  v10 = 0;
  *__error() = v9;
LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t remote_device_disconnect(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "disconnect_device");
  v4 = [v2 connection];
  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);

  if (MEMORY[0x2318E96F0](v5) == MEMORY[0x277D86480])
  {
    v8 = rsd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      remote_device_disconnect_cold_1(v2);
    }

    int64 = 35;
  }

  else
  {
    string = xpc_dictionary_get_string(v5, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v10 = 1;
      goto LABEL_14;
    }

    int64 = xpc_dictionary_get_int64(v5, "error_code");
    v8 = rsd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v2[1];
      v13 = 136446466;
      v14 = v9;
      v15 = 1024;
      v16 = int64;
      _os_log_impl(&dword_22E542000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s> remote_device_disconnect: %{errno}d", &v13, 0x12u);
    }
  }

  v10 = 0;
  *__error() = int64;
LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t remote_device_set_alias(void *a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  if (!a2)
  {
    remote_device_set_alias_cold_1();
  }

  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "cmd", "set_alias");
  xpc_dictionary_set_string(v5, "device_alias", a2);
  v6 = [v4 connection];
  v7 = xpc_connection_send_message_with_reply_sync(v6, v5);

  if (MEMORY[0x2318E96F0](v7) == MEMORY[0x277D86480])
  {
    v11 = 0;
  }

  else
  {
    string = xpc_dictionary_get_string(v7, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v11 = 1;
    }

    else
    {
      v9 = rsd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v4[1];
        v14 = 136446210;
        v15 = v10;
        _os_log_impl(&dword_22E542000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s> remote_device_set_alias: client lacks privilege", &v14, 0xCu);
      }

      v11 = 0;
      *__error() = 1;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t remote_device_get_alias(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_get_xpc_remote_connection_version_flags_cold_2();
  }

  v2 = v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v3 = [v1 dq];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_device_get_alias_block_invoke;
  v7[3] = &unk_27884AC28;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);

  v5 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v5;
}

void sub_22E548C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t local_device_copy_description()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, "cmd", "get_local_device_description");
  v1 = remoted_conn();
  v2 = xpc_connection_send_message_with_reply_sync(v1, v0);

  if (MEMORY[0x2318E96F0](v2) == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_description_cold_2();
    }

    v5 = 0;
    *__error() = 35;
  }

  else
  {
    string = xpc_dictionary_get_string(v2, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v5 = xpc_dictionary_get_dictionary(v2, "device");
      if (!v5)
      {
        local_device_copy_description_cold_1(&v9, buf);
      }
    }

    else
    {
      v4 = rsd_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E542000, v4, OS_LOG_TYPE_DEFAULT, "local_device_copy_description: failed", buf, 2u);
      }

      v5 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

id remoted_conn()
{
  if (remoted_conn_once != -1)
  {
    remoted_conn_cold_1();
  }

  v1 = remoted_conn_conn;

  return v1;
}

uint64_t local_device_copy_identity()
{
  v42 = *MEMORY[0x277D85DE8];
  error = 0;
  empty = xpc_dictionary_create_empty();
  v1 = empty;
  if (!empty)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v35 = 134217984;
    v36 = 0;
    _os_log_send_and_compose_impl();
    v26 = _os_crash_msg();
    _remote_service_create_connected_socket_impl_cold_1(v26);
  }

  xpc_dictionary_set_string(empty, "cmd", "get_local_device_identity");
  v2 = remoted_conn();
  v3 = xpc_connection_send_message_with_reply_sync(v2, v1);

  if (!v3)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v35 = 134217984;
    v36 = 0;
    _os_log_send_and_compose_impl();
    v27 = _os_crash_msg();
    _remote_service_create_connected_socket_impl_cold_1(v27);
  }

  if (MEMORY[0x2318E96F0](v3) == MEMORY[0x277D86480])
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_11();
    }

    goto LABEL_25;
  }

  string = xpc_dictionary_get_string(v3, "result");
  if (string && (*string != 79 || string[1] != 75 || string[2]))
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_1();
    }

LABEL_25:
    v22 = 0;
    v11 = 0;
    v21 = 0;
    v20 = 0;
    v16 = 0;
    data = 0;
    xdict = 0;
LABEL_26:
    v12 = 0;
    xdata = 0;
    goto LABEL_27;
  }

  v6 = xpc_dictionary_get_dictionary(v3, "identity");
  xdict = v6;
  if (!v6)
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_10();
    }

    goto LABEL_25;
  }

  xdata = xpc_dictionary_get_value(v6, "identity_cert");
  if (!xdata)
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_9();
    }

    v22 = 0;
    v11 = 0;
    v21 = 0;
    v20 = 0;
    v16 = 0;
    data = 0;
    goto LABEL_26;
  }

  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  data = [v7 initWithBytes:bytes_ptr length:xpc_data_get_length(xdata)];
  if (!data)
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_8();
    }

    v22 = 0;
    v11 = 0;
    v21 = 0;
    v20 = 0;
    v16 = 0;
    data = 0;
    goto LABEL_50;
  }

  v9 = SecCertificateCreateWithData(0, data);
  if (!v9)
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_7();
    }

    v22 = 0;
    goto LABEL_48;
  }

  v10 = v9;
  v11 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
  v28 = v10;
  if (!v11)
  {
    v5 = rsd_log();
    v22 = v10;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_6(&error);
    }

LABEL_48:
    v11 = 0;
LABEL_49:
    v21 = 0;
    v20 = 0;
    v16 = 0;
LABEL_50:
    v12 = 0;
    goto LABEL_27;
  }

  v12 = xpc_dictionary_get_value(xdict, "identity_key");
  if (!v12)
  {
    v5 = rsd_log();
    v22 = v10;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_5();
    }

    goto LABEL_49;
  }

  v13 = objc_alloc(MEMORY[0x277CBEA90]);
  v14 = xpc_data_get_bytes_ptr(v12);
  v15 = [v13 initWithBytes:v14 length:xpc_data_get_length(v12)];
  v16 = v15;
  if (v15)
  {
    v17 = *MEMORY[0x277CDBEC0];
    v33[0] = *MEMORY[0x277CDC178];
    v33[1] = v17;
    v18 = *MEMORY[0x277CDC158];
    v33[2] = *MEMORY[0x277CDBFD0];
    v33[3] = v18;
    v34[0] = v15;
    v34[1] = v11;
    v19 = *MEMORY[0x277CDC160];
    v34[2] = MEMORY[0x277CBEC28];
    v34[3] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
    v21 = SecKeyCreateWithData([MEMORY[0x277CBEA90] data], v20, &error);
    if (v21)
    {
      v22 = v28;
      v23 = SecIdentityCreate();
      if (v23)
      {
        goto LABEL_28;
      }

      v5 = rsd_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        local_device_copy_identity_cold_2();
      }
    }

    else
    {
      v5 = rsd_log();
      v22 = v28;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        local_device_copy_identity_cold_3(&error);
      }

      v21 = 0;
    }
  }

  else
  {
    v5 = rsd_log();
    v22 = v28;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_identity_cold_4();
    }

    v21 = 0;
    v20 = 0;
    v16 = 0;
  }

LABEL_27:

  v23 = 0;
LABEL_28:

  if (v21)
  {
    CFRelease(v21);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (error)
  {
    CFRelease(error);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_22E54953C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef a16)
{
  CFRelease(v16);
  CFRelease(v17);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a16)
  {
    CFRelease(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t local_device_delete_identity()
{
  v11 = *MEMORY[0x277D85DE8];
  empty = xpc_dictionary_create_empty();
  if (!empty)
  {
    local_device_delete_identity_cold_4(&v9, v10);
  }

  v1 = empty;
  xpc_dictionary_set_string(empty, "cmd", "delete_local_device_identity");
  v2 = remoted_conn();
  v3 = xpc_connection_send_message_with_reply_sync(v2, v1);

  if (!v3)
  {
    local_device_delete_identity_cold_3(&v9, v10);
  }

  if (MEMORY[0x2318E96F0](v3) == MEMORY[0x277D86480])
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_delete_identity_cold_2();
    }
  }

  else
  {
    string = xpc_dictionary_get_string(v3, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v6 = 1;
      goto LABEL_14;
    }

    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_delete_identity_cold_1();
    }
  }

  v6 = 0;
LABEL_14:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t local_device_create_identity()
{
  v11 = *MEMORY[0x277D85DE8];
  empty = xpc_dictionary_create_empty();
  if (!empty)
  {
    local_device_delete_identity_cold_4(&v9, v10);
  }

  v1 = empty;
  xpc_dictionary_set_string(empty, "cmd", "create_local_device_identity");
  v2 = remoted_conn();
  v3 = xpc_connection_send_message_with_reply_sync(v2, v1);

  if (!v3)
  {
    local_device_delete_identity_cold_3(&v9, v10);
  }

  if (MEMORY[0x2318E96F0](v3) == MEMORY[0x277D86480])
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_create_identity_cold_2();
    }
  }

  else
  {
    string = xpc_dictionary_get_string(v3, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v6 = 1;
      goto LABEL_14;
    }

    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      local_device_create_identity_cold_1();
    }
  }

  v6 = 0;
LABEL_14:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t local_device_copy_service_names()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, "cmd", "list_local_device_services");
  v1 = remoted_conn();
  v2 = xpc_connection_send_message_with_reply_sync(v1, v0);

  if (MEMORY[0x2318E96F0](v2) == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      local_device_copy_service_names_cold_2();
    }

    v5 = 0;
    *__error() = 35;
  }

  else
  {
    string = xpc_dictionary_get_string(v2, "result");
    if (!string || *string == 79 && string[1] == 75 && !string[2])
    {
      v5 = xpc_dictionary_get_array(v2, "services");
      if (!v5)
      {
        local_device_copy_service_names_cold_1(&v9, buf);
      }
    }

    else
    {
      v4 = rsd_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22E542000, v4, OS_LOG_TYPE_DEFAULT, "local_device_copy_service_names: failed", buf, 2u);
      }

      v5 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

OS_remote_device *remote_device_copy_unique_of_type(unsigned int a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 - 19 <= 0xFFFFFFED)
  {
    remote_device_copy_unique_of_type_cold_3();
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "cmd", "get_unique_device");
  xpc_dictionary_set_uint64(v2, "device_type", a1);
  v3 = remoted_conn();
  v4 = xpc_connection_send_message_with_reply_sync(v3, v2);

  if (MEMORY[0x2318E96F0](v4) == MEMORY[0x277D86480])
  {
    v10 = rsd_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      remote_device_copy_unique_of_type_cold_2();
    }

    v7 = __error();
    v8 = 0;
    v9 = 35;
    goto LABEL_13;
  }

  string = xpc_dictionary_get_string(v4, "result");
  if (string && (*string != 79 || string[1] != 75 || string[2]))
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E542000, v6, OS_LOG_TYPE_DEFAULT, "remote_device_copy_unique_of_type: device not found", buf, 2u);
    }

    v7 = __error();
    v8 = 0;
    v9 = 3;
LABEL_13:
    *v7 = v9;
    goto LABEL_16;
  }

  v11 = xpc_dictionary_get_dictionary(v4, "device");
  if (!v11)
  {
    remote_device_copy_unique_of_type_cold_1(&v15, buf);
  }

  v12 = v11;
  v8 = remote_device_create_from_client_description(v11);

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

OS_remote_device *remote_device_create_from_client_description(void *a1)
{
  v1 = a1;
  v2 = rsd_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    v4 = xpc_copy_clean_description();
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      remote_device_create_from_client_description_cold_1();
    }

    free(v4);
  }

  v6 = objc_alloc_init(OS_remote_device);
  remote_device_update_from_client_description(v6, v1);
  v7 = xpc_dictionary_get_value(v1, "endpoint");
  v8 = xpc_connection_create_from_endpoint(v7);
  v9 = [(OS_remote_device *)v6 dq];
  xpc_connection_set_target_queue(v8, v9);

  objc_initWeak(&location, v6);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __remote_device_create_from_client_description_block_invoke;
  handler[3] = &unk_27884AF60;
  objc_copyWeak(&v22, &location);
  v10 = v8;
  v21 = v10;
  xpc_connection_set_event_handler(v10, handler);
  [(OS_remote_device *)v6 setConnection:v10];
  v11 = [(OS_remote_device *)v6 dq];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remote_device_create_from_client_description_block_invoke_372;
  block[3] = &unk_27884AF88;
  v12 = v1;
  v18 = v12;
  v13 = v6;
  v19 = v13;
  dispatch_sync(v11, block);

  xpc_connection_activate(v10);
  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v14, "cmd", "helo_device");
  xpc_dictionary_set_uint64(v14, "device_state", [(OS_remote_device *)v13 state]);
  xpc_connection_send_message(v10, v14);
  v15 = v13;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v15;
}

void sub_22E549E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

OS_remote_device *remote_device_copy_device_matching(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "cmd", "get_device");
  v3 = &unk_28430A248;
  v4 = 4;
  v5 = MEMORY[0x277D864C0];
  do
  {
    v6 = *(v3 - 3);
    v8 = *(v3 - 1);
    v7 = *v3;
    v9 = xpc_dictionary_get_value(v1, v6);
    v10 = v9;
    if (v9)
    {
      if (MEMORY[0x2318E96F0](v9) == v5)
      {
        v7(v2, v8, v10);
      }

      else
      {
        v11 = rsd_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          *&buf[4] = v6;
          _os_log_error_impl(&dword_22E542000, v11, OS_LOG_TYPE_ERROR, "Key '%{public}s' has invalid type", buf, 0xCu);
        }
      }
    }

    v3 += 4;
    --v4;
  }

  while (v4);
  v12 = remoted_conn();
  v13 = xpc_connection_send_message_with_reply_sync(v12, v2);

  if (MEMORY[0x2318E96F0](v13) == MEMORY[0x277D86480])
  {
    v19 = rsd_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      remote_device_copy_device_matching_cold_2();
    }

    v16 = __error();
    v17 = 0;
    v18 = 35;
    goto LABEL_20;
  }

  string = xpc_dictionary_get_string(v13, "result");
  if (string && (*string != 79 || string[1] != 75 || string[2]))
  {
    v15 = rsd_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E542000, v15, OS_LOG_TYPE_DEFAULT, "remote_device_copy_device_matching: device not found", buf, 2u);
    }

    v16 = __error();
    v17 = 0;
    v18 = 3;
LABEL_20:
    *v16 = v18;
    goto LABEL_23;
  }

  v20 = xpc_dictionary_get_dictionary(v13, "device");
  if (!v20)
  {
    remote_device_copy_unique_of_type_cold_1(&v24, buf);
  }

  v21 = v20;
  v17 = remote_device_create_from_client_description(v20);

LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void _xpc_dictionary_set_uuid_with_str(void *a1, const char *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  memset(uu, 0, sizeof(uu));
  string_ptr = xpc_string_get_string_ptr(v6);
  if (uuid_parse(string_ptr, uu))
  {
    _xpc_dictionary_set_uuid_with_str_cold_1(&v9, v10);
  }

  xpc_dictionary_set_uuid(v5, a2, uu);

  v8 = *MEMORY[0x277D85DE8];
}

void _xpc_dictionary_set_device_type_with_str(void *a1, const char *a2, void *a3)
{
  xdict = a1;
  string_ptr = xpc_string_get_string_ptr(a3);
  v6 = 1;
  while (strcmp(remote_device_type_str[v6], string_ptr))
  {
    if (++v6 == 19)
    {
      v6 = 0;
      break;
    }
  }

  xpc_dictionary_set_uint64(xdict, a2, v6);
}

OS_remote_device *remote_device_copy_device_with_name(const char *a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "DeviceName", a1);
  v3 = remote_device_copy_device_matching(empty);

  return v3;
}

OS_remote_device *remote_device_copy_device_with_uuid(const unsigned __int8 *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  empty = xpc_dictionary_create_empty();
  memset(v6, 0, sizeof(v6));
  uuid_unparse(a1, v6);
  xpc_dictionary_set_string(empty, "DeviceUUID", v6);
  v3 = remote_device_copy_device_matching(empty);

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

OS_remote_device *remote_device_copy_device_with_uuid_and_trust_level(const unsigned __int8 *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "cmd", "get_device");
  xpc_dictionary_set_uuid(v4, "UUID", a1);
  if (a2)
  {
    v5 = "trusted";
  }

  else
  {
    v5 = "untrusted";
  }

  xpc_dictionary_set_string(v4, "trust_level", v5);
  v6 = remoted_conn();
  v7 = xpc_connection_send_message_with_reply_sync(v6, v4);

  if (MEMORY[0x2318E96F0](v7) == MEMORY[0x277D86480])
  {
    v13 = rsd_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      remote_device_copy_device_matching_cold_2();
    }

    v10 = __error();
    v11 = 0;
    v12 = 35;
    goto LABEL_15;
  }

  string = xpc_dictionary_get_string(v7, "result");
  if (string && (*string != 79 || string[1] != 75 || string[2]))
  {
    v9 = rsd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E542000, v9, OS_LOG_TYPE_DEFAULT, "remote_device_copy_device_with_uuid_and_trust_level: device not found", buf, 2u);
    }

    v10 = __error();
    v11 = 0;
    v12 = 3;
LABEL_15:
    *v10 = v12;
    goto LABEL_18;
  }

  v14 = xpc_dictionary_get_dictionary(v7, "device");
  if (!v14)
  {
    remote_device_copy_unique_of_type_cold_1(&v18, buf);
  }

  v15 = v14;
  v11 = remote_device_create_from_client_description(v14);

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void remote_device_browse_present(int a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_alloc_init(OS_remote_device_browser);
  _remote_device_start_browsing(v7, a1, v6, v5, 1);
}

void remote_device_browser_cancel(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    remote_device_browser_cancel_cold_1();
  }

  v2 = v1;
  v3 = rsd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22E542000, v3, OS_LOG_TYPE_DEFAULT, "Browsing stopped by client", v4, 2u);
  }

  _remote_device_browser_cancel(v2);
}

void _remote_device_browser_cancel(void *a1)
{
  v1 = a1;
  if (([v1 canceling] & 1) == 0)
  {
    [v1 setCanceling:1];
    v2 = [v1 connection];
    xpc_connection_cancel(v2);

    v3 = [v1 cbq];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___remote_device_browser_cancel_block_invoke;
    block[3] = &unk_27884AD40;
    v5 = v1;
    dispatch_async(v3, block);
  }
}

void remote_device_browse_present_matching(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __remote_device_browse_present_matching_block_invoke;
  v17[3] = &unk_27884AD90;
  v18 = v11;
  v19 = v8;
  v20 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v11;
  v15 = MEMORY[0x2318E9210](v17);
  v16 = _remote_device_browse_matching_common(v7, v9, v15, 1);
}

void __remote_device_browse_present_matching_block_invoke(uint64_t a1, void *a2, int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  if (a3)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __remote_device_comparator_cast_block_invoke;
      v22[3] = &unk_27884AFD8;
      v23 = v8;
      v9 = v8;
      v10 = MEMORY[0x2318E9210](v22);

      [v7 sortUsingComparator:v10];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = *(a1 + 32);
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
LABEL_8:
      v15 = 0;
      while (1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (!(*(*(a1 + 48) + 16))(*(a1 + 48)))
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
          if (v13)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }

  v17 = *MEMORY[0x277D85DE8];
}

OS_remote_device_browser *_remote_device_browse_matching_common(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v7)
  {
    _remote_device_browse_matching_common_cold_1();
  }

  v10 = v9;
  v11 = objc_alloc_init(OS_remote_device_browser);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___remote_device_browse_matching_common_block_invoke;
  v18[3] = &unk_27884B028;
  v20 = v8;
  v21 = v10;
  v22 = a4;
  v19 = v7;
  v12 = v8;
  v13 = v7;
  v14 = v10;
  v15 = MEMORY[0x2318E9210](v18);
  matching_type = _remote_device_get_matching_type(v13);
  _remote_device_start_browsing(v11, matching_type, v12, v15, a4);

  return v11;
}

uint64_t remote_device_start_browsing_matching(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __remote_device_start_browsing_matching_block_invoke;
  v12[3] = &unk_27884ADB8;
  v13 = v5;
  v6 = v5;
  v7 = a2;
  v8 = a1;
  v9 = MEMORY[0x2318E9210](v12);
  v10 = _remote_device_browse_matching_common(v8, v7, v9, 0);

  return v10;
}

void __remote_device_start_browsing_matching_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && remote_device_get_state(v3) != 2)
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __remote_device_start_browsing_matching_block_invoke_cold_1(v4);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void remote_service_listen_with_device(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_set_stream_handler_once != -1)
  {
    remote_service_listen_with_device_cold_1();
  }

  v7 = strdup(a1);
  v8 = _listening_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __remote_service_listen_with_device_block_invoke_3;
  block[3] = &unk_27884AE48;
  v13 = v6;
  v14 = v7;
  v12 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __remote_service_listen_with_device_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.RemoteServiceDiscovery.listener-demux", 0);
  v1 = _listening_queue;
  _listening_queue = v0;

  v2 = _listening_queue;

  xpc_set_event_stream_handler("com.apple.remoted.service", v2, &__block_literal_global_265);
}

void __remote_service_listen_with_device_block_invoke_2(uint64_t a1, void *a2)
{
  xdict = a2;
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  v4 = _listening_service_find(string);
  if (v4)
  {
    v5 = xpc_dictionary_get_value(xdict, "device");
    v6 = remote_device_create_from_client_description(v5);
    v7 = xpc_dictionary_dup_fd(xdict, "fd");
    _remote_service_accept(v4, v6, v7);
  }

  else
  {
    v8 = objc_alloc_init(OS_remote_pending_event);
    objc_storeStrong(&v8->event, a2);
    v8->service_name = strdup(string);
    objc_storeStrong(&v8->next, _pending_events);
    v5 = _pending_events;
    _pending_events = v8;
  }
}

id _listening_service_find(const char *a1)
{
  dispatch_assert_queue_V2(_listening_queue);
  v2 = _listening_services;
  if (v2)
  {
    do
    {
      if (!strcmp(*(v2 + 1), a1))
      {
        break;
      }

      v3 = *(v2 + 6);

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

void _remote_service_accept(void *a1, void *a2, uint64_t a3)
{
  location[10] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if ([v5 shouldEncryptSocketData] && _remote_device_supports_encrypting_socket_data(v6))
  {
    v7 = [SocketRemoteXpcProxy alloc];
    v8 = [(SocketRemoteXpcProxy *)v7 initWithSocket:a3 device:v6 queue:_listening_queue server:1];
    objc_initWeak(location, v8);
    LODWORD(a3) = [(SocketRemoteXpcProxy *)v8 takeOwnershipOfClientSocket];
    if ((a3 & 0x80000000) != 0)
    {
      v9 = rsd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [OS_remote_service proxySocketOverRemoteXPC:];
      }
    }

    [*(v5 + 5) addObject:v8];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___remote_service_accept_block_invoke;
    v19[3] = &unk_27884ABB0;
    v20 = v5;
    objc_copyWeak(&v21, location);
    [(SocketRemoteXpcProxy *)v8 setOnCancel:v19];
    [(SocketRemoteXpcProxy *)v8 activate];
    objc_destroyWeak(&v21);

    objc_destroyWeak(location);
  }

  if (a3 == -1)
  {
    _remote_service_accept_cold_2(&v18, location);
  }

  v10 = *(v5 + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___remote_service_accept_block_invoke_391;
  block[3] = &unk_27884B050;
  v15 = v5;
  v16 = v6;
  v17 = a3;
  v11 = v6;
  v12 = v5;
  dispatch_async(v10, block);

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22E54B400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __remote_service_listen_with_device_block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = xpc_copy_event();
  if (!v4)
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __remote_service_listen_with_device_block_invoke_3_cold_1(v3);
    }
  }

  _listening_service_find(*v3);
  if (objc_claimAutoreleasedReturnValue())
  {
    __remote_service_listen_with_device_block_invoke_3_cold_2(&v26, v27, v3);
  }

  v6 = objc_alloc_init(OS_remote_listening_service);
  v6->service_name = *(a1 + 48);
  v7 = MEMORY[0x2318E9210](*(a1 + 40));
  accept_block = v6->accept_block;
  v6->accept_block = v7;

  objc_storeStrong(&v6->queue, *(a1 + 32));
  objc_storeStrong(&v6->next, _listening_services);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  proxies = v6->proxies;
  v6->proxies = v9;

  objc_storeStrong(&_listening_services, v6);
  if (v4)
  {
    v11 = xpc_dictionary_get_value(v4, "ServiceProperties");
    properties = v6->properties;
    v6->properties = v11;
  }

  if (v6->properties && MEMORY[0x2318E96F0]() != MEMORY[0x277D86468])
  {
    __remote_service_listen_with_device_block_invoke_3_cold_3(&v26, v27);
  }

  v13 = *v3;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v23 = __remote_service_listen_with_device_block_invoke_270;
  v24 = &unk_27884AE20;
  v14 = v6;
  v25 = v14;
  v15 = v22;
  dispatch_assert_queue_V2(_listening_queue);
  v16 = _pending_events;
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    do
    {
      if (!strcmp(v17[1], v13))
      {
        v23(v15, v17);
        if (v18)
        {
          v19 = v18 + 3;
        }

        else
        {
          v19 = &_pending_events;
        }

        objc_storeStrong(v19, v17[3]);
      }

      v20 = v17;

      v17 = v20[3];
      v18 = v20;
    }

    while (v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __remote_service_listen_with_device_block_invoke_270(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2;
  v9 = xpc_dictionary_get_value(v4, "device");
  v6 = remote_device_create_from_client_description(v9);
  v7 = a2[2];

  v8 = xpc_dictionary_dup_fd(v7, "fd");
  _remote_service_accept(*(a1 + 32), v6, v8);
}

void remote_service_listen(const char *a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __remote_service_listen_block_invoke;
  v7[3] = &unk_27884AE70;
  v8 = v5;
  v6 = v5;
  remote_service_listen_with_device(a1, a2, v7);
}

BOOL do_control_channel_request(const char *a1, const char *a2)
{
  mach_service = remoted_connection_create_mach_service("com.apple.remoted.control", 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_394);
  xpc_connection_activate(mach_service);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "cmd", a1);
  if (a2)
  {
    xpc_dictionary_set_string(v5, "arg", a2);
  }

  v6 = xpc_connection_send_message_with_reply_sync(mach_service, v5);
  v7 = MEMORY[0x2318E96F0]();
  v8 = MEMORY[0x277D86480];
  if (v7 != MEMORY[0x277D86480])
  {
    xpc_connection_cancel(mach_service);
  }

  return v7 != v8;
}

int64_t remote_compute_controller_add_node(const char *a1, const char *a2)
{
  if (!a1)
  {
    remote_compute_controller_add_node_cold_4();
  }

  if (!a2)
  {
    remote_compute_controller_add_node_cold_3();
  }

  mach_service = remoted_connection_create_mach_service("com.apple.remoted.compute-platform", 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_289);
  xpc_connection_activate(mach_service);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "cmd", "add_device");
  xpc_dictionary_set_string(v5, "address", a2);
  xpc_dictionary_set_string(v5, "interface_name", a1);
  v6 = xpc_connection_send_message_with_reply_sync(mach_service, v5);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v8 = rsd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_add_node_cold_2();
    }

    v7 = 54;
    goto LABEL_10;
  }

  v7 = _check_operation_result(v6);
  if (v7)
  {
    v8 = rsd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_add_node_cold_1();
    }

LABEL_10:
  }

  xpc_connection_cancel(mach_service);

  return v7;
}

void __remote_compute_controller_add_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __remote_compute_controller_add_node_block_invoke_cold_1();
    }
  }
}

int64_t _check_operation_result(void *a1)
{
  v1 = a1;
  string = xpc_dictionary_get_string(v1, "result");
  if (!string)
  {
    v4 = rsd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _check_operation_result_cold_2();
    }

    goto LABEL_10;
  }

  if (*string == 79 && string[1] == 75 && !string[2])
  {
    int64 = 0;
    goto LABEL_11;
  }

  int64 = xpc_dictionary_get_int64(v1, "error_code");
  if (!int64)
  {
    v4 = rsd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _check_operation_result_cold_1();
    }

LABEL_10:

    int64 = 94;
  }

LABEL_11:

  return int64;
}

int64_t remote_compute_controller_remove_node(const char *a1)
{
  if (!a1)
  {
    remote_compute_controller_add_node_cold_4();
  }

  mach_service = xpc_connection_create_mach_service("com.apple.remoted.compute-platform", 0, 2uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_294);
  xpc_connection_activate(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "remove_device");
  xpc_dictionary_set_string(v3, "interface_name", a1);
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_remove_node_cold_2();
    }

    v5 = 54;
    goto LABEL_9;
  }

  v5 = _check_operation_result(v4);
  if (v5)
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_remove_node_cold_1();
    }

LABEL_9:
  }

  xpc_connection_cancel(mach_service);

  return v5;
}

void __remote_compute_controller_remove_node_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __remote_compute_controller_add_node_block_invoke_cold_1();
    }
  }
}

int64_t remote_compute_node_listen(const char *a1)
{
  if (!a1)
  {
    remote_compute_controller_add_node_cold_4();
  }

  mach_service = remoted_connection_create_mach_service("com.apple.remoted.compute-platform", 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_297);
  xpc_connection_activate(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "listen");
  xpc_dictionary_set_string(v3, "interface_name", a1);
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_node_listen_cold_2();
    }

    v5 = 54;
    goto LABEL_9;
  }

  v5 = _check_operation_result(v4);
  if (v5)
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_node_listen_cold_1();
    }

LABEL_9:
  }

  xpc_connection_cancel(mach_service);

  return v5;
}

void __remote_compute_node_listen_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __remote_compute_controller_add_node_block_invoke_cold_1();
    }
  }
}

int64_t remote_compute_node_listen_cancel(const char *a1)
{
  if (!a1)
  {
    remote_compute_controller_add_node_cold_4();
  }

  mach_service = remoted_connection_create_mach_service("com.apple.remoted.compute-platform", 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_300);
  xpc_connection_activate(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "listen_cancel");
  xpc_dictionary_set_string(v3, "interface_name", a1);
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_node_listen_cancel_cold_2();
    }

    v5 = 54;
    goto LABEL_9;
  }

  v5 = _check_operation_result(v4);
  if (v5)
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_node_listen_cancel_cold_1();
    }

LABEL_9:
  }

  xpc_connection_cancel(mach_service);

  return v5;
}

void __remote_compute_node_listen_cancel_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __remote_compute_controller_add_node_block_invoke_cold_1();
    }
  }
}

uint64_t remote_compute_node_disconnect_controller(void *a1)
{
  v1 = a1;
  if ([v1 type] == 15)
  {
    if (remote_device_disconnect(v1))
    {
      v2 = 0;
    }

    else
    {
      v2 = *__error();
    }
  }

  else
  {
    v3 = rsd_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      remote_compute_node_disconnect_controller_cold_1();
    }

    v2 = 22;
  }

  return v2;
}

int64_t remote_compute_controller_browse(const char *a1)
{
  if (!a1)
  {
    remote_compute_controller_add_node_cold_4();
  }

  mach_service = remoted_connection_create_mach_service("com.apple.remoted.compute-platform", 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_303);
  xpc_connection_activate(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "browse");
  xpc_dictionary_set_string(v3, "interface_name", a1);
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_browse_cold_2();
    }

    v5 = 54;
    goto LABEL_9;
  }

  v5 = _check_operation_result(v4);
  if (v5)
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_browse_cold_1();
    }

LABEL_9:
  }

  xpc_connection_cancel(mach_service);

  return v5;
}

void __remote_compute_controller_browse_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __remote_compute_controller_add_node_block_invoke_cold_1();
    }
  }
}

int64_t remote_compute_controller_browse_cancel(const char *a1)
{
  if (!a1)
  {
    remote_compute_controller_add_node_cold_4();
  }

  mach_service = remoted_connection_create_mach_service("com.apple.remoted.compute-platform", 0);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_306);
  xpc_connection_activate(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "browse_cancel");
  xpc_dictionary_set_string(v3, "interface_name", a1);
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_browse_cancel_cold_2();
    }

    v5 = 54;
    goto LABEL_9;
  }

  v5 = _check_operation_result(v4);
  if (v5)
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      remote_compute_controller_browse_cancel_cold_1();
    }

LABEL_9:
  }

  xpc_connection_cancel(mach_service);

  return v5;
}

void __remote_compute_controller_browse_cancel_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __remote_compute_controller_add_node_block_invoke_cold_1();
    }
  }
}

int64_t local_device_compute_platform_require_tls(BOOL a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.remoted.compute-platform", 0, 2uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_309);
  xpc_connection_activate(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "require_tls");
  xpc_dictionary_set_BOOL(v3, "is_tls_required", a1);
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      local_device_compute_platform_require_tls_cold_2();
    }

    v5 = 54;
    goto LABEL_8;
  }

  v5 = _check_operation_result(v4);
  if (v5)
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      local_device_compute_platform_require_tls_cold_1();
    }

LABEL_8:
  }

  xpc_connection_cancel(mach_service);

  return v5;
}

void __local_device_compute_platform_require_tls_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __local_device_compute_platform_require_tls_block_invoke_cold_1();
    }
  }
}

uint64_t remote_compute_platform_tls_required(BOOL *a1)
{
  mach_service = xpc_connection_create_mach_service("com.apple.remoted.compute-platform", 0, 2uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_313);
  xpc_connection_activate(mach_service);
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "cmd", "is_tls_required_cmd");
  v4 = xpc_connection_send_message_with_reply_sync(mach_service, v3);
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v9 = rsd_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      local_device_compute_platform_require_tls_cold_2();
    }

    v8 = 0;
    v6 = 54;
  }

  else
  {
    v5 = _check_operation_result(v4);
    if (v5)
    {
      v6 = v5;
      v7 = rsd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        remote_compute_platform_tls_required_cold_1();
      }

      v8 = 0;
    }

    else
    {
      v11 = xpc_dictionary_get_value(v4, "is_tls_required");
      if (v11)
      {
        v8 = v11;
        v6 = 0;
        if (a1)
        {
          *a1 = xpc_BOOL_get_value(v11);
        }
      }

      else
      {
        v12 = rsd_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          remote_compute_platform_tls_required_cold_2();
        }

        v8 = 0;
        v6 = 72;
      }
    }
  }

  xpc_connection_cancel(mach_service);

  return v6;
}

void __remote_compute_platform_tls_required_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __local_device_compute_platform_require_tls_block_invoke_cold_1();
    }
  }
}

uint64_t remote_device_xpc_remote_connection_tls_enabled(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = [v1 dq];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __remote_device_xpc_remote_connection_tls_enabled_block_invoke;
  v10[3] = &unk_27884AC28;
  v12 = &v13;
  v3 = v1;
  v11 = v3;
  dispatch_sync(v2, v10);

  v4 = rsd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v3[1];
    if (*(v14 + 24))
    {
      v6 = "";
    }

    else
    {
      v6 = " not";
    }

    *buf = 136446466;
    v18 = v5;
    v19 = 2080;
    v20 = v6;
    _os_log_impl(&dword_22E542000, v4, OS_LOG_TYPE_INFO, "%{public}s> RemoteXPC is%s encrypted", buf, 0x16u);
  }

  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void sub_22E54C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __remote_device_xpc_remote_connection_tls_enabled_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) remotexpc_tls_enabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

sec_identity_t remote_device_copy_xpc_remote_connection_tls_identity(void *a1)
{
  v1 = a1;
  v2 = local_device_copy_identity();
  v3 = sec_identity_create(v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void sub_22E54CA28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

id remote_device_copy_xpc_remote_connection_tls_verify_block(void *a1)
{
  v1 = a1;
  if (remote_device_xpc_remote_connection_tls_enabled(v1))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __remote_device_copy_xpc_remote_connection_tls_verify_block_block_invoke;
    v5[3] = &unk_27884AE98;
    v6 = v1;
    v2 = MEMORY[0x2318E9210](v5);
    v3 = [v2 copy];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __remoted_queue_block_invoke()
{
  remoted_queue_queue = dispatch_queue_create("remote client queue", 0);

  return MEMORY[0x2821F96F8]();
}

intptr_t ___remote_service_create_connected_socket_impl_block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = _remote_service_create_connected_socket_impl(a1[4], 0);
  v2 = a1[5];

  return dispatch_semaphore_signal(v2);
}

void ___remote_service_connect_socket_impl_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___remote_service_connect_socket_impl_block_invoke_cold_7();
    }

    goto LABEL_16;
  }

  string = xpc_dictionary_get_string(v3, "result");
  if (!string)
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___remote_service_connect_socket_impl_block_invoke_cold_6();
    }

    goto LABEL_16;
  }

  v5 = string;
  if (!strcmp(string, "ERROR"))
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___remote_service_connect_socket_impl_block_invoke_cold_5();
    }

    goto LABEL_16;
  }

  if (!strcmp(v5, "INTERRUPTED"))
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___remote_service_connect_socket_impl_block_invoke_cold_4();
    }

    goto LABEL_16;
  }

  if (*v5 != 79 || v5[1] != 75 || v5[2])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___remote_service_connect_socket_impl_block_invoke_cold_1();
    }

LABEL_16:

    (*(*(a1 + 48) + 16))();
    goto LABEL_17;
  }

  v7 = xpc_dictionary_dup_fd(v3, "fd");
  v8 = rsd_log();
  v6 = v8;
  if ((v7 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ___remote_service_connect_socket_impl_block_invoke_cold_2();
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    ___remote_service_connect_socket_impl_block_invoke_cold_3();
  }

  v9 = remoted_queue();
  v10 = rsd_log();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___remote_service_connect_socket_impl_block_invoke_358;
  v12[3] = &unk_27884AF10;
  v16 = *(a1 + 56);
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  remote_socket_poll_connect_async(v7, v9, v10, v11, v12);

LABEL_17:
}

void ___remote_service_connect_socket_impl_block_invoke_358(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 && *(a1 + 56) == 1)
  {
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E542000, v5, OS_LOG_TYPE_DEFAULT, "socket connection failed, heartbeat remote device and try again", buf, 2u);
    }

    v6 = *(*(a1 + 32) + 32);
    v7 = remoted_queue();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___remote_service_connect_socket_impl_block_invoke_359;
    v9[3] = &unk_27884AEE8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    remote_device_heartbeat(v6, v7, v9);
  }

  else
  {
    if (remote_service_should_encrypt_socket_data(*(a1 + 32)) && remote_device_xpc_remote_connection_tls_enabled(*(*(a1 + 32) + 32)))
    {
      [*(a1 + 32) proxySocketOverRemoteXPC:a2];
    }

    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

void __remote_service_create_from_client_description_block_invoke()
{
  v0 = rsd_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22E542000, v0, OS_LOG_TYPE_DEFAULT, "Error on service connection", v1, 2u);
  }
}

void __remoted_conn_block_invoke()
{
  v0 = remoted_queue();
  mach_service = remoted_connection_create_mach_service("com.apple.remoted", v0);
  v2 = remoted_conn_conn;
  remoted_conn_conn = mach_service;

  xpc_connection_set_event_handler(remoted_conn_conn, &__block_literal_global_370);
  v3 = remoted_conn_conn;

  xpc_connection_activate(v3);
}

void __remoted_conn_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2318E96F0](a2);
  v3 = MEMORY[0x277D86480];
  v4 = rsd_log();
  v5 = v4;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __remoted_conn_block_invoke_2_cold_2();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __remoted_conn_block_invoke_2_cold_1();
  }
}

void remote_device_update_from_client_description(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v3 = a2;
  if ([v12 type])
  {
    v4 = [v12 type];
    if (v4 != xpc_dictionary_get_uint64(v3, "device_type"))
    {
      remote_device_update_from_client_description_cold_1(&v13, v14);
    }
  }

  else
  {
    [v12 setType:{xpc_dictionary_get_uint64(v3, "device_type")}];
    if (![v12 type])
    {
      remote_device_update_from_client_description_cold_6(&v13, v14);
    }
  }

  if ([v12 device_id])
  {
    v5 = [v12 device_id];
    if (v5 != xpc_dictionary_get_uint64(v3, "device_id"))
    {
      remote_device_update_from_client_description_cold_2(&v13, v14);
    }
  }

  else
  {
    [v12 setDevice_id:{xpc_dictionary_get_uint64(v3, "device_id")}];
    if (![v12 device_id])
    {
      remote_device_update_from_client_description_cold_5(&v13, v14);
    }
  }

  v6 = v12;
  if (!v12[1])
  {
    string = xpc_dictionary_get_string(v3, "device_name");
    if (!string)
    {
      remote_device_update_from_client_description_cold_4(&v13, v14);
    }

    v8 = strdup(string);
    v6 = v12;
    v12[1] = v8;
    if (!v8)
    {
      remote_device_update_from_client_description_cold_3(&v13, v14);
    }
  }

  if (!v6[2])
  {
    v9 = xpc_dictionary_get_string(v3, "device_alias");
    if (v9)
    {
      v12[2] = strdup(v9);
    }
  }

  [v12 setMessaging_protocol_version:{xpc_dictionary_get_uint64(v3, "device_messaging_protocol_version")}];
  [v12 setRemotexpc_tls_enabled:{xpc_dictionary_get_BOOL(v3, "device_tls_enabled")}];
  [v12 setUuid:{xpc_dictionary_get_uuid(v3, "UUID")}];
  v10 = xpc_dictionary_get_dictionary(v3, "properties");
  [v12 setProperties:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __remote_device_create_from_client_description_block_invoke_372(uint64_t a1)
{
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "device_state");
  v3 = *(a1 + 40);

  remote_device_advance_state(v3, uint64);
}

void ___remote_device_start_browsing_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v6 = rsd_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22E542000, v6, OS_LOG_TYPE_INFO, "Connection invalidated", &buf, 2u);
    }

    _remote_device_browser_cancel(*(a1 + 32));
  }

  else
  {
    string = xpc_dictionary_get_string(v3, "cmd");
    if (string && !strcmp(string, "found_device"))
    {
      v7 = rsd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22E542000, v7, OS_LOG_TYPE_INFO, "Got new device", &buf, 2u);
      }

      v5 = *(a1 + 32);
      v8 = v3;
      if (([v5 canceling]& 1) != 0)
      {
        v9 = rsd_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_22E542000, v9, OS_LOG_TYPE_INFO, "Not delivering the device because client is canceling the browser", &buf, 2u);
        }
      }

      else
      {
        v10 = [v5 cbq];
        dispatch_assert_queue_V2(v10);

        v11 = xpc_dictionary_get_dictionary(v8, "device");
        if (!v11)
        {
          __remote_device_create_from_client_description_block_invoke_cold_2(&v16, &buf);
        }

        v9 = v11;
        v12 = remote_device_create_from_client_description(v11);
        v13 = [v5 cbq];
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v18 = ___remote_device_new_device_note_block_invoke;
        v19 = &unk_27884AF88;
        v20 = v5;
        v21 = v12;
        v14 = v12;
        dispatch_async(v13, &buf);
      }
    }

    else
    {
      v5 = rsd_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __remoted_conn_block_invoke_2_cold_1();
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void ___remote_device_start_browsing_block_invoke_383(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MEMORY[0x2318E96F0]() == MEMORY[0x277D86480])
  {
    v4 = MEMORY[0x2318E9560](v2);
    v5 = rsd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___remote_device_start_browsing_block_invoke_383_cold_1();
    }

    free(v4);
  }

  else
  {
    v3 = rsd_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E542000, v3, OS_LOG_TYPE_INFO, "Started browsing.", v6, 2u);
    }
  }
}

void ___remote_device_new_device_note_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];

  if (v2)
  {
    v3 = [*(a1 + 32) callback];
    (*(v3 + 2))(v3, *(a1 + 40), 0);
  }
}

uint64_t ___remote_device_browser_cancel_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  v2[2](v2, 0, 1);

  [*(a1 + 32) setCallback:0];
  v3 = *(a1 + 32);

  return [v3 setCanceled:1];
}

uint64_t __remote_device_comparator_cast_block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = -1;
  if (v1 >= 0)
  {
    v2 = 1;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void ___remote_device_browse_matching_common_block_invoke(uint64_t a1, void *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      ___remote_device_browse_matching_common_block_invoke_cold_2(&v14, v15);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = rsd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      ___remote_device_browse_matching_common_block_invoke_cold_1(v6);
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___remote_device_browse_matching_common_block_invoke_388;
    v11[3] = &unk_27884B000;
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v8 = MEMORY[0x2318E9210](v11);
    v9 = v8;
    if (*(a1 + 56) == 1)
    {
      (v8)[2](v8, v6);
    }

    else
    {
      remote_device_set_connected_callback(v6, *(a1 + 40), v8);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void ___remote_device_browse_matching_common_block_invoke_388(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[RemoteDeviceQuery wildcard];
  [v5 setType:_remote_device_get_matching_type(v4)];
  [v5 setAvailableService:{xpc_dictionary_get_string(v4, "AvailableService")}];
  string = xpc_dictionary_get_string(v4, "DeviceName");

  [v5 setName:string];
  v7 = rsd_log();
  LODWORD(string) = remote_device_matches(v3, v5, 0, v7);

  v8 = rsd_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (string)
  {
    if (v9)
    {
      ___remote_device_browse_matching_common_block_invoke_388_cold_2(v3);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v9)
    {
      ___remote_device_browse_matching_common_block_invoke_388_cold_1(v3);
    }
  }
}

uint64_t _remote_device_get_matching_type(void *a1)
{
  string = xpc_dictionary_get_string(a1, "DeviceType");
  if (!string)
  {
    return 0;
  }

  v2 = string;
  v3 = 1;
  while (strcmp(remote_device_type_str[v3], v2))
  {
    if (++v3 == 19)
    {
      return 0;
    }
  }

  return v3;
}

void ___remote_service_accept_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}

void __do_control_channel_request_block_invoke(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x2318E96F0](a2) != MEMORY[0x277D86480])
  {
    v2 = rsd_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __do_control_channel_request_block_invoke_cold_1();
    }
  }
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_11()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_12()
{
  v2 = *v0;

  return _os_crash_msg();
}

id proxy_log()
{
  if (proxy_log_once != -1)
  {
    proxy_log_cold_1();
  }

  v1 = proxy_log__log;

  return v1;
}

void sub_22E54E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __proxy_log_block_invoke()
{
  proxy_log__log = os_log_create("com.apple.RemoteServiceDiscovery", "SocketRemoteXpcProxy");

  return MEMORY[0x2821F96F8]();
}

void remote_socket_poll_connect_async(unsigned int a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  if ((a1 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      remote_socket_poll_connect_async_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __remote_socket_poll_connect_async_block_invoke;
    block[3] = &unk_27884B0C8;
    v30 = v12;
    v15 = v12;
    dispatch_async(v11, block);
    v14 = v30;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      remote_socket_poll_connect_async_cold_2();
    }

    v13 = dispatch_source_create(MEMORY[0x277D85D50], a1, 0, v9);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __remote_socket_poll_connect_async_block_invoke_1;
    v24 = &unk_27884B140;
    v27 = v31;
    v25 = v11;
    v26 = v12;
    v28 = a1;
    v14 = v12;
    dispatch_source_set_mandatory_cancel_handler();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __remote_socket_poll_connect_async_block_invoke_4;
    handler[3] = &unk_27884B168;
    v20 = a1;
    v18 = v13;
    v19 = v31;
    v17 = v10;
    v15 = v13;
    dispatch_source_set_event_handler(v15, handler);
    dispatch_activate(v15);
  }

  _Block_object_dispose(v31, 8);
}

void __remote_socket_poll_connect_async_block_invoke_1(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (close(*(a1 + 56)) == -1)
    {
      __remote_socket_poll_connect_async_block_invoke_1_cold_1();
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __remote_socket_poll_connect_async_block_invoke_3;
    v7[3] = &unk_27884B118;
    v2 = v8;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8[0] = v4;
    v8[1] = v5;
    v6 = v7;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __remote_socket_poll_connect_async_block_invoke_2;
    block[3] = &unk_27884B0F0;
    v2 = &v10;
    v3 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    v6 = block;
  }

  dispatch_async(v3, v6);
}

void __remote_socket_poll_connect_async_block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _remote_socket_expect_connected(*(a1 + 56), *(a1 + 32), (*(*(a1 + 48) + 8) + 24));
  v3 = *(*(*(a1 + 48) + 8) + 24);
  if (v2)
  {
    if (v3)
    {
      __remote_socket_poll_connect_async_block_invoke_4_cold_2(&v6, v7);
    }
  }

  else if (!v3)
  {
    __remote_socket_poll_connect_async_block_invoke_4_cold_1(&v6, v7);
  }

  v4 = *(a1 + 40);
  v5 = *MEMORY[0x277D85DE8];

  dispatch_source_cancel(v4);
}

BOOL _remote_socket_expect_connected(int a1, void *a2, int *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    a3 = &v11;
  }

  v10 = 4;
  v11 = 0;
  if (getsockopt(a1, 0xFFFF, 4103, a3, &v10) == -1)
  {
    _remote_socket_expect_connected_cold_3(&v9, v12);
  }

  v6 = *a3;
  if (*a3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _remote_socket_expect_connected_cold_1(a3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _remote_socket_expect_connected_cold_2();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

uint64_t remote_socket_poll_connect_sync(int a1, void *a2)
{
  v3 = a2;
  v8.fd = a1;
  *&v8.events = 4;
  v4 = poll(&v8, 1u, -1);
  if (!v4)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      remote_socket_poll_connect_sync_cold_1(&v8.revents);
    }

    goto LABEL_12;
  }

  if (v4 == -1)
  {
    if (*__error() == 4)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        remote_socket_poll_connect_sync_cold_3();
      }
    }

    else
    {
      v6 = v3;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        remote_socket_poll_connect_sync_cold_2();
      }
    }

LABEL_12:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v5 = (_remote_socket_expect_connected(a1, v3, 0) - 1);
LABEL_13:

  return v5;
}

uint64_t remote_socket_create_connected_ipv6_pair(int *a1, int *a2, void *a3)
{
  v5 = a3;
  v6 = socket(30, 1, 0);
  if (v6 == -1)
  {
    v13 = v5;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_4();
    }

    goto LABEL_29;
  }

  v7 = v6;
  *&v19.sae_srcif = 7708;
  v18 = *MEMORY[0x277D85EF0];
  *&v19.sae_srcaddr = *MEMORY[0x277D85EF0];
  LODWORD(v19.sae_dstaddr) = 0;
  if (bind(v6, &v19, 0x1Cu) == -1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_8();
    }

    goto LABEL_19;
  }

  if (listen(v7, 128) == -1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_7();
    }

LABEL_19:

LABEL_27:
    v15 = v7;
LABEL_28:
    close(v15);
LABEL_29:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  v20[0] = 28;
  if (getsockname(v7, &v19, v20) == -1)
  {
    v14 = v5;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_6();
    }

    goto LABEL_26;
  }

  sae_srcif_high = HIWORD(v19.sae_srcif);
  if (!HIWORD(v19.sae_srcif))
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_5();
    }

    goto LABEL_27;
  }

  v9 = socket(30, 1, 0);
  if (v9 == -1)
  {
    v14 = v5;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_4();
    }

LABEL_26:

    goto LABEL_27;
  }

  v10 = v9;
  if (fcntl(v9, 4, 4) == -1)
  {
    v17 = v5;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_3();
    }

    goto LABEL_37;
  }

  LOWORD(v20[0]) = 7708;
  HIWORD(v20[0]) = sae_srcif_high;
  v20[1] = 0;
  v21 = v18;
  v22 = 0;
  *(&v19.sae_srcif + 1) = -1431655766;
  v19.sae_srcif = 0;
  v19.sae_srcaddr = 0;
  *&v19.sae_srcaddrlen = 0xAAAAAAAA00000000;
  v19.sae_dstaddr = v20;
  *&v19.sae_dstaddrlen = 0xAAAAAAAA0000001CLL;
  if (connectx(v10, &v19, 0, 0, 0, 0, 0, 0) == -1 && *__error() != 36)
  {
    v17 = v5;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_1();
    }

    goto LABEL_37;
  }

  memset(&v19, 170, 28);
  v20[0] = 0;
  v11 = accept(v7, &v19, v20);
  if (v11 == -1)
  {
    v17 = v5;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      remote_socket_create_connected_ipv6_pair_cold_2();
    }

LABEL_37:

    close(v7);
    v15 = v10;
    goto LABEL_28;
  }

  *a1 = v10;
  *a2 = v11;
  close(v7);
  v12 = 0;
LABEL_30:

  return v12;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void remote_service_get_xpc_remote_connection_version_flags_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_service_create_connected_socket_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void _remote_service_connect_socket_impl_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void remote_device_copy_service_names_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_copy_service_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_copy_service_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_device_copy_service_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_copy_service_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_copy_service_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_copy_service_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_timesync_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void remote_device_reset_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void remote_device_disconnect_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void local_device_copy_description_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void local_device_copy_identity_cold_3(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void local_device_copy_identity_cold_6(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void local_device_copy_identity_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void local_device_delete_identity_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void local_device_delete_identity_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void local_device_delete_identity_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void local_device_create_identity_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void local_device_copy_service_names_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_copy_unique_of_type_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_create_from_client_description_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void _xpc_dictionary_set_uuid_with_str_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void __remote_device_start_browsing_matching_block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void _remote_service_accept_cold_2(uint64_t *a1, _OWORD *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __remote_service_listen_with_device_block_invoke_3_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  _os_log_fault_impl(&dword_22E542000, v2, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF RemoteServiceDiscovery: Tried to listen for unknown service '%{public}s'.", v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __remote_service_listen_with_device_block_invoke_3_cold_2(uint64_t *a1, _OWORD *a2, uint64_t *a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  v6 = *a3;
  _os_log_send_and_compose_impl();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void __remote_service_listen_with_device_block_invoke_3_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_compute_controller_add_node_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void remoted_connection_create_mach_service_cold_1(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

void _check_operation_result_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_compute_controller_remove_node_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_compute_node_listen_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_compute_node_listen_cancel_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_compute_controller_browse_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_compute_controller_browse_cancel_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void local_device_compute_platform_require_tls_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_compute_platform_tls_required_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void remote_compute_platform_tls_required_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ___remote_service_connect_socket_impl_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ___remote_service_connect_socket_impl_block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __remoted_conn_block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void remote_device_update_from_client_description_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_update_from_client_description_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_update_from_client_description_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_update_from_client_description_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_update_from_client_description_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_update_from_client_description_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void __remote_device_create_from_client_description_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __remote_device_create_from_client_description_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void __remote_device_create_from_client_description_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void remote_device_advance_state_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_22E542000, v1, OS_LOG_TYPE_DEBUG, "device advancing from %d to %d", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

void remote_device_advance_state_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void remote_device_advance_state_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void ___remote_device_start_browsing_block_invoke_383_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void ___remote_device_browse_matching_common_block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void ___remote_device_browse_matching_common_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  __break(1u);
}

void ___remote_device_browse_matching_common_block_invoke_388_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void ___remote_device_browse_matching_common_block_invoke_388_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_10(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void remote_socket_poll_connect_async_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __remote_socket_poll_connect_async_block_invoke_4_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void __remote_socket_poll_connect_async_block_invoke_4_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void _remote_socket_expect_connected_cold_1(unsigned int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void _remote_socket_expect_connected_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  OUTLINED_FUNCTION_0();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void remote_socket_poll_connect_sync_cold_1(__int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_poll_connect_sync_cold_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "poll(2) failed while connecting to a service: %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_poll_connect_sync_cold_3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void remote_socket_create_connected_ipv6_pair_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "connectx(2): %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_create_connected_ipv6_pair_cold_2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "accept(2): %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_create_connected_ipv6_pair_cold_3()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "fcntl(2): %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_create_connected_ipv6_pair_cold_4()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "socket(2): %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_create_connected_ipv6_pair_cold_5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void remote_socket_create_connected_ipv6_pair_cold_6()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "getsockname(2): %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_create_connected_ipv6_pair_cold_7()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "listen(2): %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void remote_socket_create_connected_ipv6_pair_cold_8()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_22E542000, v1, v2, "bind(2): %{errno}d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}