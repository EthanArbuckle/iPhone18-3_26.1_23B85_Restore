uint64_t endpoint_lookup_interface_create_request(id *a1, uint64_t a2)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "ENDPOINT_LOOKUP");
  xpc_dictionary_set_uint64(empty, "ENDPOINT_INDEX", a2);
  if (a1)
  {
    objc_storeStrong(a1, empty);
  }

  return 0;
}

_xpc_connection_s *cryptex_xpc_create_connection(dispatch_queue_t targetq)
{
  mach_service = xpc_connection_create_mach_service("com.apple.security.cryptex.xpc", targetq, 2uLL);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global);
  xpc_connection_activate(mach_service);
  return mach_service;
}

void __cryptex_xpc_create_connection_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C290B80](a2) != MEMORY[0x29EDCAA18])
  {
    __cryptex_xpc_create_connection_block_invoke_cold_1();
  }

  v3 = MEMORY[0x29C290A60](a2);
  v4 = *__error();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = v3;
    _os_log_impl(&dword_298711000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Received error: %s", &v6, 0xCu);
  }

  *__error() = v4;
  free(v3);
  v5 = *MEMORY[0x29EDCA608];
}

void _cryptex_actor_dealloc(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    os_release(v2);
  }

  object_proto_destroy(a1 + 16);
}

void *cryptex_actor_create(uint64_t a1, uint64_t a2)
{
  v4 = _cryptex_actor_alloc();
  v4[5] = a2;
  v4[6] = a1;
  v4[7] = 0;
  object_proto_init((v4 + 2), "com.apple.security.libcryptex.interface", "actor");
  object_set_name((v4 + 2), *(a1 + 16));
  return v4;
}

uint64_t cryptex_actor_connect(void *a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if ((a2 + 1) >= 2)
  {
    v13 = xpc_pipe_create_from_port();
    goto LABEL_14;
  }

  v3 = a1[5] & 1;
  v4 = *MEMORY[0x29EDCA6A0];
  v5 = bootstrap_look_up2();
  v6 = a1[2];
  v7 = *__error();
  v8 = a1[4];
  if (v5)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v9 = "[anonymous]";
    if (v6)
    {
      v9 = v6;
    }

    *buf = 136446466;
    v19 = v9;
    v20 = 1024;
    v21 = v5;
    v10 = "%{public}s: bootstrap_look_up: %{mach.errno}x";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v14 = "[anonymous]";
    if (v6)
    {
      v14 = v6;
    }

    *buf = 136446466;
    v19 = v14;
    v20 = 1024;
    v21 = 0;
    v10 = "%{public}s: looked up port: %#x";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(&dword_298711000, v11, v12, v10, buf, 0x12u);
LABEL_13:
  *__error() = v7;
  v13 = xpc_pipe_create_from_port();
  if (!v13)
  {
    result = 74;
    goto LABEL_20;
  }

LABEL_14:
  v15 = a1[7];
  if (v15)
  {
    os_release(v15);
  }

  a1[7] = os_retain(v13);
  if (v13)
  {
    os_release(v13);
  }

  result = 0;
LABEL_20:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void _cryptex_actor_init_invoke_u64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _rpc_target_init_u64((a4 + 16), **(a1 + 48), a3, a2);
  v6 = *(a1 + 32);

  rpc_init_remote(a4, 0, v6);
}

void _cryptex_actor_init_invoke_cstr(uint64_t a1, char *__source, uint64_t a3, uint64_t a4)
{
  _rpc_target_init_cstr(a4 + 16, **(a1 + 48), a3, __source);
  v6 = *(a1 + 32);

  rpc_init_remote(a4, 0, v6);
}

void _cryptex_actor_init_invoke_port(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _rpc_target_init_port(a4 + 16, **(a1 + 48), a3);
  v6 = *(a1 + 32);

  rpc_init_remote(a4, 0, v6);
}

uint64_t cryptex_actor_trap(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = rpc_call(a1[7], a2, a3);
  v5 = v4;
  if (v4)
  {
    TopLevelPosixError = _CFErrorGetTopLevelPosixError(v4);
    if (TopLevelPosixError == 5)
    {
      v14 = a1[2];
      v15 = *__error();
      v16 = a1[4];
      v7 = 57;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = "[anonymous]";
        if (v14)
        {
          v17 = v14;
        }

        v22 = 136446466;
        v23 = v17;
        v24 = 1024;
        v25 = 57;
        v18 = "%{public}s: pipe went dead: %{darwin.errno}d";
        goto LABEL_18;
      }
    }

    else
    {
      v7 = TopLevelPosixError;
      if (!TopLevelPosixError)
      {
        goto LABEL_4;
      }

      v19 = a1[2];
      v15 = *__error();
      v16 = a1[4];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = "[anonymous]";
        if (v19)
        {
          v20 = v19;
        }

        v22 = 136446466;
        v23 = v20;
        v24 = 1024;
        v25 = v7;
        v18 = "%{public}s: ipc failure: %{darwin.errno}d";
LABEL_18:
        _os_log_impl(&dword_298711000, v16, OS_LOG_TYPE_ERROR, v18, &v22, 0x12u);
      }
    }

    *__error() = v15;
LABEL_20:
    CFRelease(v5);
    result = v7;
    goto LABEL_21;
  }

LABEL_4:
  v8 = a1[2];
  v9 = *__error();
  v10 = a1[4];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = "[anonymous]";
    if (v8)
    {
      v11 = v8;
    }

    v22 = 136446210;
    v23 = v11;
    _os_log_impl(&dword_298711000, v10, OS_LOG_TYPE_DEBUG, "%{public}s: ipc routine succeeded", &v22, 0xCu);
  }

  v12 = __error();
  v7 = 0;
  result = 0;
  *v12 = v9;
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_21:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

CFErrorRef cryptex_actor_trap_with_cferr(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = rpc_call(a1[7], a2, a3);
  if (a1[2])
  {
    v5 = a1[2];
  }

  else
  {
    v5 = "[anonymous]";
  }

  v6 = *__error();
  v7 = a1[4];
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446466;
      v15 = v5;
      v16 = 2112;
      v17 = v4;
      v8 = "%{public}s: ipc: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_9:
      _os_log_impl(&dword_298711000, v9, v10, v8, &v14, v11);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136446210;
    v15 = v5;
    v8 = "%{public}s: ipc [no error]";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEBUG;
    v11 = 12;
    goto LABEL_9;
  }

  *__error() = v6;
  v12 = *MEMORY[0x29EDCA608];
  return v4;
}

void codex_install_pack(uint64_t a1, uint64_t a2)
{
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 4));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 8));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 12));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 16));
  _rpc_pack_int64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 24));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 40));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 48));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 56));
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 64));
  v4 = *(a2 + 304);
  v5 = *(a1 + 72);

  _rpc_pack_array(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_install_unpack(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = _rpc_unpack_fd(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 4));
    if (!result)
    {
      result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 8));
      if (result)
      {
        if (result != 2)
        {
          return result;
        }

        *(a2 + 8) = -1;
        ++v5;
      }

      result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 12));
      if (!result)
      {
        result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 16));
        if (result)
        {
          if (result != 2)
          {
            return result;
          }

          *(a2 + 16) = -1;
          ++v5;
        }

        result = _rpc_unpack_int64(*(a1 + 304), &v5, (a2 + 24));
        if (!result)
        {
          result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 32));
          if (!result)
          {
            result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 40));
            if (!result)
            {
              result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 48));
              if (!result)
              {
                result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 56));
                if (!result)
                {
                  result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 64));
                  if (result <= 33)
                  {
                    if (!result)
                    {
                      return _rpc_unpack_dictionary(*(a1 + 304), &v5, (a2 + 72));
                    }

                    if (result != 2)
                    {
                      return result;
                    }

LABEL_22:
                    *(a2 + 64) = 0;
                    ++v5;
                    return _rpc_unpack_dictionary(*(a1 + 304), &v5, (a2 + 72));
                  }

                  if (result == 79 || result == 34)
                  {
                    goto LABEL_22;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void codex_install_reply_pack(const char **a1, uint64_t a2)
{
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[1]);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[2]);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[3]);
  v4 = *(a2 + 304);
  v5 = a1[4];

  _rpc_pack_string(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_install_reply_unpack(uint64_t a1, const char **a2)
{
  v5 = 0;
  result = _rpc_unpack_string(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 1);
    if (!result)
    {
      result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 2);
      if (!result)
      {
        result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 3);
        if (!result)
        {
          return _rpc_unpack_string(*(a1 + 304), &v5, a2 + 4);
        }
      }
    }
  }

  return result;
}

void codex_upgrade_stage_semi_splat_pack(uint64_t a1, uint64_t a2)
{
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_uint64(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 8));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 16));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 20));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 24));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 28));
  _rpc_pack_fd(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  v4 = *(a2 + 304);
  v5 = *(a1 + 40);

  _rpc_pack_int64(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_upgrade_stage_semi_splat_unpack(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = _rpc_unpack_string(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_uint64(*(a1 + 304), &v5, (a2 + 8));
    if (!result)
    {
      result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 16));
      if (!result)
      {
        result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 20));
        if (!result)
        {
          result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 24));
          if (!result)
          {
            result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 28));
            if (result)
            {
              if (result != 2)
              {
                return result;
              }

              *(a2 + 28) = -1;
              ++v5;
            }

            result = _rpc_unpack_fd(*(a1 + 304), &v5, (a2 + 32));
            if (!result)
            {
              return _rpc_unpack_int64(*(a1 + 304), &v5, (a2 + 40));
            }
          }
        }
      }
    }
  }

  return result;
}

void codex_upgrade_stage_semi_splat_reply_pack(const char **a1, uint64_t a2)
{
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, *a1);
  _rpc_pack_string(*(a2 + 304), 0xFFFFFFFFFFFFFFFFLL, a1[1]);
  v4 = *(a2 + 304);
  v5 = a1[2];

  _rpc_pack_string(v4, 0xFFFFFFFFFFFFFFFFLL, v5);
}

uint64_t codex_upgrade_stage_semi_splat_reply_unpack(uint64_t a1, const char **a2)
{
  v5 = 0;
  result = _rpc_unpack_string(*(a1 + 304), &v5, a2);
  if (!result)
  {
    result = _rpc_unpack_string(*(a1 + 304), &v5, a2 + 1);
    if (!result)
    {
      return _rpc_unpack_string(*(a1 + 304), &v5, a2 + 2);
    }
  }

  return result;
}

uint64_t cryptex_trampoline_upgrade_interface_wait(const char *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  if (cryptex_trampoline_upgrade_xpc_get_queue_once_q_token != -1)
  {
    cryptex_trampoline_upgrade_interface_wait_cold_1();
  }

  v2 = cryptex_trampoline_upgrade_xpc_get_queue_local;
  *v17 = MEMORY[0x29EDCA5F8];
  *&v17[8] = 3221225472;
  *&v17[16] = __cryptex_trampoline_upgrade_xpc_get_connection_block_invoke;
  v18 = &unk_29EEA92A8;
  v19 = v2;
  v3 = cryptex_trampoline_upgrade_xpc_get_connection_once_con_token;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&cryptex_trampoline_upgrade_xpc_get_connection_once_con_token, v17);
  }

  v5 = cryptex_trampoline_upgrade_xpc_get_connection_conn;

  if (!v5)
  {
    v8 = 0;
    empty = 0;
    v9 = 3;
    goto LABEL_21;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "UPGRADE_WAIT");
  if (a1)
  {
    xpc_dictionary_set_string(empty, "cryptex_name", a1);
  }

  if (!empty)
  {
    v8 = 0;
    v9 = 12;
    goto LABEL_21;
  }

  v7 = xpc_connection_send_message_with_reply_sync(v5, empty);
  v8 = v7;
  if (!v7)
  {
    v10 = *__error();
    v11 = cryptex_upgrade_trampoline_osl();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0x504000100;
      _os_log_impl(&dword_298711000, v11, OS_LOG_TYPE_ERROR, "No reply from cryptexd while waiting on upgrade.: %{darwin.errno}d", v17, 8u);
    }

    v8 = 0;
    *__error() = v10;
    goto LABEL_20;
  }

  if (MEMORY[0x29C290B80](v7) == MEMORY[0x29EDCAA18])
  {
    v12 = MEMORY[0x29C290A60](v8);
    v13 = *__error();
    v14 = cryptex_upgrade_trampoline_osl();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136446466;
      *&v17[4] = v12;
      *&v17[12] = 1024;
      *&v17[14] = 5;
      _os_log_impl(&dword_298711000, v14, OS_LOG_TYPE_ERROR, "Error from cryptexd while waiting on upgrade: %{public}s: %{darwin.errno}d", v17, 0x12u);
    }

    *__error() = v13;
    free(v12);
LABEL_20:
    v9 = 5;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_21:

  v15 = *MEMORY[0x29EDCA608];
  return v9;
}

id cryptex_upgrade_trampoline_osl()
{
  if (cryptex_upgrade_trampoline_osl_onceToken != -1)
  {
    cryptex_upgrade_trampoline_osl_cold_1();
  }

  v1 = cryptex_upgrade_trampoline_osl_trampoline_log;

  return v1;
}

uint64_t __cryptex_trampoline_upgrade_xpc_get_connection_block_invoke(uint64_t a1)
{
  cryptex_trampoline_upgrade_xpc_get_connection_conn = cryptex_xpc_create_connection(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_trampoline_upgrade_xpc_get_queue_block_invoke()
{
  cryptex_trampoline_upgrade_xpc_get_queue_local = dispatch_queue_create("com.apple.security.libcryptex.interface.upgrade_trampoline", 0);

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_upgrade_trampoline_osl_block_invoke()
{
  cryptex_upgrade_trampoline_osl_trampoline_log = os_log_create("com.apple.libcryptex", "upgrade_trampoline");

  return MEMORY[0x2A1C71028]();
}

xpc_object_t remote_service_create_nonce_index_request(uint64_t a1)
{
  v2 = _remote_service_create_argv();
  xpc_dictionary_set_uint64(v2, "nonce-domain", a1);
  request = _xpc_create_request("get-nonce", v2);

  return request;
}

id _remote_service_create_argv()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "client-version", 3uLL);

  return empty;
}

xpc_object_t remote_service_create_nonce_handle_request(unsigned int a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "nonce-domain-handle", a1);
  request = _xpc_create_request("get-nonce", empty);

  return request;
}

xpc_object_t remote_service_create_roll_nonce_index_request(uint64_t a1)
{
  v2 = _remote_service_create_argv();
  xpc_dictionary_set_uint64(v2, "nonce-domain", a1);
  request = _xpc_create_request("roll-nonce", v2);

  return request;
}

xpc_object_t remote_service_create_roll_nonce_handle_request(unsigned int a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "nonce-domain-handle", a1);
  request = _xpc_create_request("roll-nonce", empty);

  return request;
}

CFErrorRef remote_service_create_install_request(void *a1, int a2, int64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v19 = a11;
  v20 = _remote_service_create_argv();
  v21 = v20;
  if (a2 < 0)
  {
    v29 = _rsi_log();

    if (v29)
    {
      v30 = _rsi_log();
      os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      v31 = _os_log_send_and_compose_impl();
    }

    else
    {
      v31 = _os_log_send_and_compose_impl();
    }

    Error = createError("remote_service_create_install_request", "remote_service_interface.m", 112, "com.apple.security.cryptex", 15, 0, v31);
    goto LABEL_21;
  }

  if (a4 < 0)
  {
    v32 = _rsi_log();

    if (v32)
    {
      v33 = _rsi_log();
      os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
      v31 = _os_log_send_and_compose_impl();
    }

    else
    {
      v31 = _os_log_send_and_compose_impl();
    }

    Error = createError("remote_service_create_install_request", "remote_service_interface.m", 120, "com.apple.security.cryptex", 15, 0, v31);
    goto LABEL_21;
  }

  if (a6 < 0)
  {
    v34 = _rsi_log();

    if (v34)
    {
      v35 = _rsi_log();
      os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      v31 = _os_log_send_and_compose_impl();
    }

    else
    {
      v31 = _os_log_send_and_compose_impl();
    }

    Error = createError("remote_service_create_install_request", "remote_service_interface.m", 128, "com.apple.security.cryptex", 15, 0, v31);
LABEL_21:
    v28 = Error;
    free(v31);
    goto LABEL_22;
  }

  v38 = a1;
  xpc_dictionary_set_int64(v20, "image-type-index", a3);
  xpc_dictionary_set_uint64(v21, "auth", a8);
  xpc_dictionary_set_uint64(v21, "persistence", a9);
  xpc_dictionary_set_uint64(v21, "nonce-persistence", a10);
  v22 = v19;
  xpc_dictionary_set_value(v21, "cryptex1-properties", v19);
  if ((a5 & 0x80000000) == 0)
  {
    v23 = xpc_file_transfer_create_with_fd();
    xpc_dictionary_set_value(v21, "info", v23);
  }

  if ((a7 & 0x80000000) == 0)
  {
    v24 = xpc_file_transfer_create_with_fd();
    xpc_dictionary_set_value(v21, "volumehash", v24);
  }

  v25 = xpc_file_transfer_create_with_fd();
  xpc_dictionary_set_value(v21, "image", v25);
  v26 = xpc_file_transfer_create_with_fd();
  xpc_dictionary_set_value(v21, "trustcache", v26);
  v27 = xpc_file_transfer_create_with_fd();
  xpc_dictionary_set_value(v21, "im4m", v27);
  *v38 = _xpc_create_request("install", v21);

  v28 = 0;
  v19 = v22;
LABEL_22:

  return v28;
}

id _rsi_log()
{
  if (_rsi_log_onceToken != -1)
  {
    _rsi_log_cold_1();
  }

  v1 = _rsi_log_osl;

  return v1;
}

int *__remote_service_create_install_request_block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *__error();
  v4 = _rsi_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v6 = "c411 transfer: %{darwin.errno}d";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v7, v8, v6, v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v6 = "c411 transfer [no error]";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v3;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

int *__remote_service_create_install_request_block_invoke_13(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *__error();
  v4 = _rsi_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v6 = "volume hash transfer: %{darwin.errno}d";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v7, v8, v6, v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v6 = "volume hash transfer [no error]";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v3;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

int *__remote_service_create_install_request_block_invoke_17(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *__error();
  v4 = _rsi_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v6 = "image transfer: %{darwin.errno}d";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v7, v8, v6, v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v6 = "image transfer [no error]";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v3;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

int *__remote_service_create_install_request_block_invoke_21(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *__error();
  v4 = _rsi_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v6 = "trustcache transfer: %{darwin.errno}d";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v7, v8, v6, v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v6 = "trustcache transfer [no error]";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v3;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

int *__remote_service_create_install_request_block_invoke_25(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = *__error();
  v4 = _rsi_log();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a2;
      v6 = "im4m transfer: %{darwin.errno}d";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 8;
LABEL_6:
      _os_log_impl(&dword_298711000, v7, v8, v6, v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    v6 = "im4m transfer [no error]";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEBUG;
    v9 = 2;
    goto LABEL_6;
  }

  result = __error();
  *result = v3;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t remote_service_install_request_valid(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = 0;
  argv = _xpc_request_get_argv(a1, &v12);
  v2 = v12;
  v3 = v2;
  if (argv)
  {
    v4 = *__error();
    v5 = _rsi_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = argv;
      _os_log_impl(&dword_298711000, v5, OS_LOG_TYPE_ERROR, "failed to get argv: %{darwin.errno}d", buf, 8u);
    }

    v6 = 0;
    v7 = 0;
    *__error() = v4;
  }

  else
  {
    if (_xpc_dictionary_key_with_type_exists(v2, "image", MEMORY[0x29EDCAA28]) && _xpc_dictionary_key_with_type_exists(v3, "trustcache", MEMORY[0x29EDCAA28]) && _xpc_dictionary_key_with_type_exists(v3, "im4m", MEMORY[0x29EDCAA28]) && _xpc_dictionary_key_with_type_exists(v3, "image-type-index", MEMORY[0x29EDCAA30]) && _xpc_dictionary_key_with_type_exists(v3, "persistence", MEMORY[0x29EDCAA58]) && _xpc_dictionary_key_with_type_exists(v3, "nonce-persistence", MEMORY[0x29EDCAA58]))
    {
      v8 = _xpc_dictionary_key_with_type_exists(v3, "auth", MEMORY[0x29EDCAA58]);
    }

    else
    {
      v8 = 0;
    }

    v6 = xpc_dictionary_get_value(v3, "info");
    if (v6)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v7 = (v6 == 0) & v8;
    }

    else
    {
      v7 = _xpc_dictionary_key_with_type_exists(v3, "info", MEMORY[0x29EDCAA28]);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v7;
}

xpc_object_t remote_service_create_uninstall_request(const char *a1, const char *a2)
{
  v4 = _remote_service_create_argv();
  xpc_dictionary_set_string(v4, "remote-cryptex-identifier", a1);
  if (a2)
  {
    xpc_dictionary_set_string(v4, "remote-cryptex-version", a2);
  }

  request = _xpc_create_request("uninstall", v4);

  return request;
}

xpc_object_t remote_service_create_copy_installed_request()
{
  v0 = _remote_service_create_argv();
  request = _xpc_create_request("copy-installed", v0);

  return request;
}

xpc_object_t remote_service_create_personalization_identifiers_request()
{
  v0 = _remote_service_create_argv();
  request = _xpc_create_request("read-personalization-id", v0);

  return request;
}

uint64_t ___rsi_log_block_invoke()
{
  _rsi_log_osl = os_log_create("com.apple.libcryptex", "remote_service_interface");

  return MEMORY[0x2A1C71028]();
}

uint64_t _CFCreateAssertImpl(uint64_t result)
{
  v4 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    _CFCreateAssertImpl_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

CFErrorRef createError(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, char *cStr)
{
  valuePtr = a3;
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v14 = CFStringCreateWithCString(0, a4, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F58], v12);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(Mutable, @"FunctionName", v13);
    CFDictionarySetValue(Mutable, @"FileName", v15);
    CFDictionarySetValue(Mutable, @"LineNumber", v16);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F68], a6);
  }

  v18 = CFErrorCreate(0, v14, a5, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  return v18;
}

uint64_t _CFErrorCopyTopLevelErrorWithDomain(const void *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___CFErrorCopyTopLevelErrorWithDomain_block_invoke;
  v4[3] = &unk_29EEA9310;
  v4[4] = &v5;
  v4[5] = a2;
  _CFErrorIterUnderlying(a1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _CFErrorIterUnderlying(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFErrorGetTypeID())
    {
      v5 = CFRetain(a1);
      if (v5)
      {
        v6 = v5;
        v7 = *MEMORY[0x29EDB8F68];
        while (1)
        {
          v8 = (*(a2 + 16))(a2, v6);
          v9 = CFErrorCopyUserInfo(v6);
          CFRelease(v6);
          if (!v9)
          {
            return;
          }

          Value = CFDictionaryGetValue(v9, v7);
          if (!Value)
          {
            break;
          }

          v6 = CFRetain(Value);
          CFRelease(v9);
          if (((v6 != 0) & v8) == 0)
          {
            if (!v6)
            {
              return;
            }

            goto LABEL_11;
          }
        }

        v6 = v9;
LABEL_11:

        CFRelease(v6);
      }
    }
  }
}

CFIndex _CFErrorGetTopLevelPosixError(const void *a1)
{
  Code = a1;
  if (a1)
  {
    v2 = _CFErrorCopyTopLevelErrorWithDomain(a1, @"com.apple.security.cryptex.posix");
    v3 = v2;
    if (v2)
    {
      Domain = CFErrorGetDomain(v2);
      if (CFEqual(Domain, @"com.apple.security.cryptex.posix"))
      {
        Code = CFErrorGetCode(v3);
        goto LABEL_10;
      }
    }

    v5 = CFErrorGetDomain(Code);
    if (CFEqual(v5, @"com.apple.security.cryptex"))
    {
      v6 = CFErrorGetCode(Code);
      if (v6 <= 0x26)
      {
        Code = dword_298719EB8[v6 & 0x3F];
        if (!v3)
        {
          return Code;
        }

        goto LABEL_10;
      }
    }

    Code = 0xFFFFFFFFLL;
    if (v3)
    {
LABEL_10:
      CFRelease(v3);
    }
  }

  return Code;
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

uint64_t OUTLINED_FUNCTION_2()
{

  return _os_log_send_and_compose_impl();
}

CFErrorRef codex_interface_create_uninstall_request(id *a1, const char *a2, const char *a3, BOOL a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "SUBSYSTEM", "CODEX");
  xpc_dictionary_set_string(v8, "CODEX_SUB_REQ", "UNINSTALL");
  if (a2)
  {
    xpc_dictionary_set_string(v8, "UNINSTALL:CXID", a2);
    if (a3)
    {
      xpc_dictionary_set_string(v8, "UNINSTALL:CXVER", a3);
    }

    xpc_dictionary_set_BOOL(v8, "UNINSTALL:FORCE_UNMOUNT", a4);
    Error = 0;
    if (a1 && v8)
    {
      objc_storeStrong(a1, v8);
      Error = 0;
    }
  }

  else
  {
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    v10 = _os_log_send_and_compose_impl();
    Error = createError("codex_interface_create_uninstall_request", "codex_xpc_interface.m", 21, "com.apple.security.cryptex", 11, 0, v10);
    free(v10);
  }

  return Error;
}

id collation_xpc_get_queue()
{
  if (collation_xpc_get_queue_once_q_token != -1)
  {
    collation_xpc_get_queue_cold_1();
  }

  v1 = collation_xpc_get_queue_local;

  return v1;
}

uint64_t __collation_xpc_get_queue_block_invoke()
{
  collation_xpc_get_queue_local = dispatch_queue_create(0, 0);

  return MEMORY[0x2A1C71028]();
}

uint64_t collation_xpc_get_connection()
{
  v0 = collation_xpc_get_queue();
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __collation_xpc_get_connection_block_invoke;
  block[3] = &unk_29EEA92A8;
  v7 = v0;
  v1 = collation_xpc_get_connection_once_con_token;
  v2 = v0;
  if (v1 != -1)
  {
    dispatch_once(&collation_xpc_get_connection_once_con_token, block);
  }

  v3 = collation_xpc_get_connection_conn;
  v4 = collation_xpc_get_connection_conn;

  return v3;
}

uint64_t __collation_xpc_get_connection_block_invoke(uint64_t a1)
{
  collation_xpc_get_connection_conn = cryptex_xpc_create_connection(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

id collation_xpc_endpoint_request(unsigned int a1)
{
  v1 = a1;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "COLLATION");
  xpc_dictionary_set_uint64(empty, "user", v1);

  return empty;
}

id collation_interface_request_endpoint_for_user(unsigned int a1)
{
  v2 = collation_xpc_get_connection();
  v3 = collation_xpc_endpoint_request(a1);
  v4 = xpc_connection_send_message_with_reply_sync(v2, v3);
  v5 = xpc_dictionary_get_value(v4, "endpoint");

  return v5;
}

uint64_t _cryptex_actor_alloc()
{
  v4 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  result = _os_object_alloc();
  if (!result)
  {
    _cryptex_actor_alloc_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298714D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_298714EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2987150EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_298715B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf)
{
  free(0);
  free(v16);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t cryptex_upgrade_interface_acquire_lock()
{
  v0 = +[UpgradeInterfaceLock getSharedInstance];
  v1 = [v0 acquireLock];

  return v1;
}

CFErrorRef mount_interface_create_mount_request(void *a1, int a2, int64_t a3, int a4, int a5, int a6, int a7, void *a8)
{
  v15 = a8;
  v16 = v15;
  if (a2 < 0)
  {
    v20 = _mnt_intf_log();

    if (v20)
    {
      v21 = _mnt_intf_log();
      os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      v19 = _os_log_send_and_compose_impl();
    }

    else
    {
      v19 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 40, "com.apple.security.cryptex", 2, 0, v19);
    goto LABEL_31;
  }

  if (a5 < 0)
  {
    v22 = _mnt_intf_log();

    if (v22)
    {
      v23 = _mnt_intf_log();
      os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      v19 = _os_log_send_and_compose_impl();
    }

    else
    {
      v19 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 46, "com.apple.security.cryptex", 2, 0, v19);
    goto LABEL_31;
  }

  if (a6 < 0)
  {
    v24 = _mnt_intf_log();

    if (v24)
    {
      v25 = _mnt_intf_log();
      os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      v19 = _os_log_send_and_compose_impl();
    }

    else
    {
      v19 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 52, "com.apple.security.cryptex", 2, 0, v19);
    goto LABEL_31;
  }

  if (a7 < 0)
  {
    v27 = _mnt_intf_log();

    if (v27)
    {
      v28 = _mnt_intf_log();
      os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
      v19 = _os_log_send_and_compose_impl();
    }

    else
    {
      v19 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 58, "com.apple.security.cryptex", 2, 0, v19);
    goto LABEL_31;
  }

  if (MEMORY[0x29C290B80](v15) != MEMORY[0x29EDCAA00])
  {
    v17 = _mnt_intf_log();

    if (v17)
    {
      v18 = _mnt_intf_log();
      os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      v19 = _os_log_send_and_compose_impl();
    }

    else
    {
      v19 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 64, "com.apple.security.cryptex", 2, 0, v19);
LABEL_31:
    v32 = Error;
    free(v19);
    v30 = 0;
    goto LABEL_32;
  }

  v29 = mount_interface_create_request("REQ:MOUNT");
  if (!v29)
  {
    v34 = _mnt_intf_log();

    if (v34)
    {
      v35 = _mnt_intf_log();
      os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      v19 = _os_log_send_and_compose_impl();
    }

    else
    {
      v19 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_mount_request", "mount_interface.m", 71, "com.apple.security.cryptex", 2, 0, v19);
    goto LABEL_31;
  }

  v30 = v29;
  if ((a4 & 0x80000000) == 0)
  {
    xpc_dictionary_set_fd(v29, "MOUNT:VOLHASH_FD", a4);
  }

  xpc_dictionary_set_fd(v30, "MOUNT:DMG_FD", a2);
  xpc_dictionary_set_fd(v30, "MOUNT:LTRS_FD", a5);
  xpc_dictionary_set_fd(v30, "MOUNT:INFO_FD", a6);
  xpc_dictionary_set_fd(v30, "MOUNT:IM4M_FD", a7);
  xpc_dictionary_set_value(v30, "MOUNT:CX1_PROPERTIES", v16);
  xpc_dictionary_set_int64(v30, "MOUNT:DMG_ASSET_IDX_INT64", a3);
  if (a1)
  {
    v31 = v30;
    v32 = 0;
    *a1 = v30;
  }

  else
  {
    v32 = 0;
  }

LABEL_32:

  return v32;
}

id _mnt_intf_log()
{
  if (_mnt_intf_log_onceToken != -1)
  {
    _mnt_intf_log_cold_1();
  }

  v1 = _mnt_intf_log_osl;

  return v1;
}

id mount_interface_create_request(const char *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "SUBSYSTEM", "MOUNT");
  xpc_dictionary_set_string(v2, "MOUNT_SUB_REQ", a1);

  return v2;
}

CFErrorRef mount_interface_create_unmount_request(void *a1, int a2, BOOL a3)
{
  if (a2 < 0)
  {
    v10 = _mnt_intf_log();

    if (v10)
    {
      v11 = _mnt_intf_log();
      os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      v12 = _os_log_send_and_compose_impl();
    }

    else
    {
      v12 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_unmount_request", "mount_interface.m", 105, "com.apple.security.cryptex", 2, 0, v12);
    goto LABEL_14;
  }

  v6 = mount_interface_create_request("REQ:UNMOUNT");
  if (!v6)
  {
    v13 = _mnt_intf_log();

    if (v13)
    {
      v14 = _mnt_intf_log();
      os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      v12 = _os_log_send_and_compose_impl();
    }

    else
    {
      v12 = _os_log_send_and_compose_impl();
    }

    Error = createError("mount_interface_create_unmount_request", "mount_interface.m", 112, "com.apple.security.cryptex", 2, 0, v12);
LABEL_14:
    v9 = Error;
    free(v12);
    v7 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  xpc_dictionary_set_fd(v6, "UNMOUNT:INFO_FD", a2);
  xpc_dictionary_set_BOOL(v7, "UNMOUNT:FORCE", a3);
  if (a1)
  {
    v8 = v7;
    v9 = 0;
    *a1 = v7;
  }

  else
  {
    v9 = 0;
  }

LABEL_15:

  return v9;
}

uint64_t ___mnt_intf_log_block_invoke()
{
  _mnt_intf_log_osl = os_log_create("com.apple.libcryptex", "mount_interface");

  return MEMORY[0x2A1C71028]();
}

CFErrorRef cryptex_upgrade_interface_abort()
{
  v25 = *MEMORY[0x29EDCA608];
  if (cryptex_upgrade_interface_abort_xpc_get_queue_once_q_token != -1)
  {
    cryptex_upgrade_interface_abort_cold_1();
  }

  v0 = cryptex_upgrade_interface_abort_xpc_get_queue_local;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 3221225472;
  v22 = __cryptex_upgrade_interface_abort_xpc_get_connection_block_invoke;
  v23 = &unk_29EEA92A8;
  v24 = v0;
  v1 = cryptex_upgrade_interface_abort_xpc_get_connection_once_con_token;
  v2 = v0;
  if (v1 != -1)
  {
    dispatch_once(&cryptex_upgrade_interface_abort_xpc_get_connection_once_con_token, &block);
  }

  v3 = cryptex_upgrade_interface_abort_xpc_get_connection_conn;

  if (!v3)
  {
    v8 = cryptex_upgrade_abort_osl();

    if (v8)
    {
      v9 = cryptex_upgrade_abort_osl();
      os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      LOWORD(block) = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(block) = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 64, "com.apple.security.cryptex", 23, 0, v10);
    goto LABEL_22;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "SUBSYSTEM", "UPGRADE_ABORT");
  if (!empty)
  {
    v11 = cryptex_upgrade_abort_osl();

    if (v11)
    {
      v12 = cryptex_upgrade_abort_osl();
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      LOWORD(block) = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(block) = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    Error = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 73, "com.apple.security.cryptex", 24, 0, v10);
LABEL_22:
    v7 = Error;
    v6 = 0;
    empty = 0;
LABEL_23:
    free(v10);
    goto LABEL_24;
  }

  v5 = xpc_connection_send_message_with_reply_sync(v3, empty);
  v6 = v5;
  if (!v5)
  {
    v13 = cryptex_upgrade_abort_osl();

    if (v13)
    {
      v14 = cryptex_upgrade_abort_osl();
      os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      LOWORD(block) = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(block) = 0;
      v10 = _os_log_send_and_compose_impl();
    }

    v7 = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 82, "com.apple.security.cryptex", 16, 0, v10);
    v6 = 0;
    goto LABEL_23;
  }

  if (MEMORY[0x29C290B80](v5) == MEMORY[0x29EDCAA18])
  {
    v10 = MEMORY[0x29C290A60](v6);
    v16 = cryptex_upgrade_abort_osl();

    if (v16)
    {
      v17 = cryptex_upgrade_abort_osl();
      os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      LODWORD(block) = 136446210;
      *(&block + 4) = v10;
      v18 = _os_log_send_and_compose_impl();
    }

    else
    {
      LODWORD(block) = 136446210;
      *(&block + 4) = v10;
      v18 = _os_log_send_and_compose_impl();
    }

    v7 = createError("cryptex_upgrade_interface_abort", "upgrade_abort_interface.m", 90, "com.apple.security.cryptex", 16, 0, v18);
    free(v18);
    goto LABEL_23;
  }

  v7 = 0;
LABEL_24:

  v19 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_29871726C(_Unwind_Exception *a1)
{
  free(v2);
  free(v1);
  _Unwind_Resume(a1);
}

id cryptex_upgrade_abort_osl()
{
  if (cryptex_upgrade_abort_osl_onceToken != -1)
  {
    cryptex_upgrade_abort_osl_cold_1();
  }

  v1 = cryptex_upgrade_abort_osl_trampoline_log;

  return v1;
}

uint64_t __cryptex_upgrade_interface_abort_xpc_get_connection_block_invoke(uint64_t a1)
{
  cryptex_upgrade_interface_abort_xpc_get_connection_conn = cryptex_xpc_create_connection(*(a1 + 32));

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_upgrade_interface_abort_xpc_get_queue_block_invoke()
{
  cryptex_upgrade_interface_abort_xpc_get_queue_local = dispatch_queue_create("com.apple.security.libcryptex.interface.upgrade_abort", 0);

  return MEMORY[0x2A1C71028]();
}

uint64_t __cryptex_upgrade_abort_osl_block_invoke()
{
  cryptex_upgrade_abort_osl_trampoline_log = os_log_create("com.apple.libcryptex", "upgrade_trampoline");

  return MEMORY[0x2A1C71028]();
}

void *_rpc_target_init_u64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  result[3] = a4;
  return result;
}

size_t _rpc_target_init_cstr(uint64_t a1, uint64_t a2, uint64_t a3, char *__source)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 1;
  return strlcpy((a1 + 24), __source, 0xFFuLL);
}

uint64_t _rpc_target_init_port(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 2;
  result = mach_right_send_retain();
  *(a1 + 24) = result;
  return result;
}

void rpc_init_remote(uint64_t a1, xpc_object_t a2, void *a3)
{
  v6 = xpc_array_create(0, 0);
  if (a2)
  {
    xpc_retain(a2);
  }

  else
  {
    a2 = xpc_dictionary_create(0, 0, 0);
  }

  xpc_dictionary_set_value(a2, "argv", v6);
  xpc_dictionary_set_uint64(a2, "subsystem", *(a1 + 16));
  xpc_dictionary_set_uint64(a2, "routine", *(a1 + 24));
  xpc_dictionary_set_uint64(a2, "target-type", *(a1 + 32));
  v7 = *(a1 + 32);
  switch(v7)
  {
    case 2:
      v8 = *(a1 + 40);
      xpc_dictionary_set_mach_send();
      break;
    case 1:
      xpc_dictionary_set_string(a2, "target", (a1 + 40));
      break;
    case 0:
      xpc_dictionary_set_uint64(a2, "target", *(a1 + 40));
      break;
  }

  *a1 = 1;
  if (a3)
  {
    v9 = os_retain(a3);
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  *(a1 + 8) = v9;
  *(a1 + 296) = a2;
  *(a1 + 304) = v6;
  *(a1 + 312) = -1;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  if (v6)
  {

    os_release(v6);
  }
}

CFErrorRef rpc_init_local(uint64_t a1, xpc_object_t xdict, NSObject *a3)
{
  v32 = *MEMORY[0x29EDCA608];
  cf = 0;
  memset(v28, 0, sizeof(v28));
  value = xpc_dictionary_get_value(xdict, "argv");
  if (!value || (v7 = value, MEMORY[0x29C290B80]() != MEMORY[0x29EDCA9E0]))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v30 = 67109120;
    v31 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 105;
LABEL_6:
    v11 = 94;
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v16 = xpc_dictionary_get_value(xdict, "subsystem");
  if (!v16 || (v17 = v16, v18 = MEMORY[0x29C290B80](), v19 = MEMORY[0x29EDCAA58], v18 != MEMORY[0x29EDCAA58]))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v30 = 67109120;
    v31 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 113;
    goto LABEL_6;
  }

  v20 = xpc_dictionary_get_value(xdict, "routine");
  if (!v20 || (v21 = v20, MEMORY[0x29C290B80]() != v19))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v30 = 67109120;
    v31 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 121;
    goto LABEL_6;
  }

  v22 = xpc_dictionary_get_value(xdict, "target-type");
  if (!v22 || (v23 = v22, MEMORY[0x29C290B80]() != v19))
  {
    if (a3)
    {
      os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
    }

    v30 = 67109120;
    v31 = 94;
    v8 = _os_log_send_and_compose_impl();
    v9 = "com.apple.security.cryptex.posix";
    v10 = 129;
    goto LABEL_6;
  }

  v24 = xpc_dictionary_get_value(xdict, "target");
  v25 = xpc_uint64_get_value(v23);
  if (v25 == 2)
  {
    if (MEMORY[0x29C290B80](v24) != MEMORY[0x29EDCAA38])
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v30 = 67109120;
      v31 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 167;
      goto LABEL_60;
    }

    *(a1 + 40) = xpc_mach_send_copy_right();
  }

  else if (v25 == 1)
  {
    if (MEMORY[0x29C290B80](v24) != MEMORY[0x29EDCAA50])
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v30 = 67109120;
      v31 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 148;
      goto LABEL_60;
    }

    if (xpc_string_get_length(v24) >= 0xFF)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v30 = 67109120;
      v31 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 156;
      goto LABEL_60;
    }

    string_ptr = xpc_string_get_string_ptr(v24);
    strlcpy((a1 + 40), string_ptr, 0xFFuLL);
  }

  else
  {
    if (v25)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v30 = 67109120;
      v31 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 175;
      goto LABEL_60;
    }

    if (MEMORY[0x29C290B80](v24) != v19)
    {
      if (a3)
      {
        os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
      }

      v30 = 67109120;
      v31 = 22;
      v8 = _os_log_send_and_compose_impl();
      v9 = "com.apple.security.cryptex.posix";
      v10 = 139;
LABEL_60:
      v11 = 22;
      goto LABEL_7;
    }

    *(a1 + 40) = xpc_uint64_get_value(v24);
  }

  if (_xpc_dictionary_try_get_cferr(xdict, "cferror", &cf))
  {
    *a1 = 1;
    if (a3)
    {
      v27 = os_retain(a3);
    }

    else
    {
      v27 = MEMORY[0x29EDCA988];
    }

    *(a1 + 8) = v27;
    *(a1 + 16) = xpc_uint64_get_value(v17);
    *(a1 + 24) = xpc_uint64_get_value(v21);
    *(a1 + 32) = xpc_uint64_get_value(v23);
    *(a1 + 296) = xpc_retain(xdict);
    *(a1 + 304) = v7;
    xpc_dictionary_get_audit_token();
    rpc_cred_init_with_audit_token((a1 + 328), v28);
    Error = 0;
    goto LABEL_9;
  }

  if (a3)
  {
    os_log_type_enabled(a3, OS_LOG_TYPE_ERROR);
  }

  LOWORD(v30) = 0;
  v8 = _os_log_send_and_compose_impl();
  v12 = cf;
  v9 = "com.apple.security.cryptex";
  v10 = 181;
  v11 = 16;
LABEL_8:
  Error = createError("rpc_init_local", "rpc.c", v10, v9, v11, v12, v8);
  free(v8);
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *MEMORY[0x29EDCA608];
  return Error;
}

uint64_t rpc_cred_init_with_audit_token(uid_t *a1, _OWORD *a2)
{
  v4 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v4;
  *a1 = audit_token_to_auid(&v13);
  v5 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v5;
  a1[1] = audit_token_to_euid(&v13);
  v6 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v6;
  a1[2] = audit_token_to_egid(&v13);
  v7 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v7;
  a1[3] = audit_token_to_ruid(&v13);
  v8 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v8;
  a1[4] = audit_token_to_rgid(&v13);
  v9 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v9;
  a1[5] = audit_token_to_pid(&v13);
  v10 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v10;
  a1[6] = audit_token_to_asid(&v13);
  v11 = a2[1];
  *v13.val = *a2;
  *&v13.val[4] = v11;
  result = audit_token_to_pidversion(&v13);
  a1[7] = result;
  return result;
}

CFErrorRef rpc_call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(*(a2 + 8), OS_LOG_TYPE_DEBUG))
  {
    v5 = MEMORY[0x29C290A60](*(a2 + 296));
    v6 = *__error();
    v7 = *(a2 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v24 = v5;
      _os_log_impl(&dword_298711000, v7, OS_LOG_TYPE_DEBUG, "sending request: %s", buf, 0xCu);
    }

    *__error() = v6;
    free(v5);
  }

  v8 = *(a2 + 296);
  v9 = xpc_pipe_routine();
  if (v9)
  {
    v10 = v9;
    v11 = v9;
    v12 = *(a2 + 8);
    if (v12)
    {
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      *buf = 67109120;
      LODWORD(v24) = v10;
    }

    else
    {
      *buf = 67109120;
      LODWORD(v24) = v9;
    }

    v20 = _os_log_send_and_compose_impl();
    Error = createError("rpc_call", "rpc.c", 332, "com.apple.security.cryptex.posix", v11, 0, v20);
    free(v20);
  }

  else
  {
    v13 = *(a2 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = MEMORY[0x29C290A60](0);
      v15 = *__error();
      v16 = *(a2 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v24 = v14;
        _os_log_impl(&dword_298711000, v16, OS_LOG_TYPE_DEBUG, "got reply: %s", buf, 0xCu);
      }

      *__error() = v15;
      free(v14);
      v13 = *(a2 + 8);
    }

    Error = rpc_init_local(a3, 0, v13);
    if (!Error)
    {
      v18 = *__error();
      v19 = *(a2 + 8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_298711000, v19, OS_LOG_TYPE_DEBUG, "routine succeeded", buf, 2u);
      }

      Error = 0;
      *__error() = v18;
    }
  }

  v21 = *MEMORY[0x29EDCA608];
  return Error;
}

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

char *object_set_name(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v5 = *__error();
  v6 = *(a1 + 16);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      *buf = 136446722;
      v13 = v4;
      v14 = 2080;
      v15 = v8;
      v16 = 2080;
      v17 = a2;
      _os_log_impl(&dword_298711000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: changing name: %s -> %s", buf, 0x20u);
    }

    *__error() = v5;
    free(*(a1 + 8));
  }

  else
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "[anonymous]";
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_298711000, v6, OS_LOG_TYPE_DEBUG, "%{public}s: setting name: %s", buf, 0x16u);
    }

    *__error() = v5;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(a2);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(a2);
    if (!result)
    {
      object_set_name_cold_1(a2, &v11, buf);
    }
  }

  *a1 = result;
  *(a1 + 8) = result;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void object_proto_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

void object_set_name_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  _os_log_send_and_compose_impl();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void _rpc_pack_fd(void *a1, size_t a2, int fd)
{
  v5 = xpc_fd_create(fd);
  if (v5)
  {
    v6 = v5;
    xpc_array_set_value(a1, a2, v5);
  }

  else
  {
    v6 = xpc_null_create();
    xpc_array_set_value(a1, a2, v6);
    if (!v6)
    {
      return;
    }
  }

  os_release(v6);
}

uint64_t _rpc_unpack_expected(void *a1, size_t a2, uint64_t a3, void *a4)
{
  if (xpc_array_get_count(a1) <= a2)
  {
    return 34;
  }

  value = xpc_array_get_value(a1, a2);
  if (MEMORY[0x29C290B80]() == MEMORY[0x29EDCAA40])
  {
    return 2;
  }

  if (MEMORY[0x29C290B80](value) != a3)
  {
    return 79;
  }

  result = 0;
  *a4 = value;
  return result;
}

uint64_t _rpc_unpack_int64(void *a1, size_t *a2, int64_t *a3)
{
  xint = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA30], &xint);
  if (!v6)
  {
    *a3 = xpc_int64_get_value(xint);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_uint64(void *a1, size_t *a2, uint64_t *a3)
{
  xuint = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA58], &xuint);
  if (!v6)
  {
    *a3 = xpc_uint64_get_value(xuint);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_string(void *a1, size_t *a2, const char **a3)
{
  xstring = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA50], &xstring);
  if (!v6)
  {
    *a3 = xpc_string_get_string_ptr(xstring);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_string_copy(void *a1, size_t *a2, char **a3)
{
  __s1 = 0;
  result = _rpc_unpack_string(a1, a2, &__s1);
  if (!result)
  {
    v5 = strdup(__s1);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a3 = v6;
    }

    else
    {
      return *__error();
    }
  }

  return result;
}

uint64_t _rpc_unpack_array(void *a1, size_t *a2, void **a3)
{
  object = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCA9E0], &object);
  if (!v6)
  {
    *a3 = os_retain(object);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_dictionary(void *a1, size_t *a2, void **a3)
{
  object = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA00], &object);
  if (!v6)
  {
    *a3 = os_retain(object);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _rpc_unpack_fd(void *a1, size_t *a2, int *a3)
{
  xfd = 0;
  v5 = *a2;
  v6 = _rpc_unpack_expected(a1, *a2, MEMORY[0x29EDCAA20], &xfd);
  if (!v6)
  {
    *a3 = xpc_fd_dup(xfd);
    *a2 = v5 + 1;
  }

  return v6;
}

uint64_t _xpc_dictionary_key_with_type_exists(void *a1, const char *a2, const _xpc_type_s *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!xpc_dictionary_get_value(a1, a2))
  {
    v5 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      _xpc_dictionary_key_with_type_exists_cold_1();
    }

    v10 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315138;
    v15 = a2;
    v7 = "key %s doesn't exist";
    v8 = v10;
    v9 = 12;
    goto LABEL_11;
  }

  if (MEMORY[0x29C290B80]() == a3)
  {
    result = 1;
    goto LABEL_14;
  }

  v5 = *__error();
  if (_xpc_log_onceToken != -1)
  {
    _xpc_dictionary_key_with_type_exists_cold_1();
  }

  v6 = _xpc_log_osl;
  if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = a2;
    v16 = 2080;
    name = xpc_type_get_name(a3);
    v7 = "key %s isn't of type %s";
    v8 = v6;
    v9 = 22;
LABEL_11:
    _os_log_impl(&dword_298711000, v8, OS_LOG_TYPE_ERROR, v7, &v14, v9);
  }

LABEL_12:
  v11 = __error();
  result = 0;
  *v11 = v5;
LABEL_14:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

xpc_object_t _xpc_create_request(const char *a1, void *a2)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "routine", a1);
  xpc_dictionary_set_value(empty, "argv", a2);
  return empty;
}

uint64_t _xpc_dictionary_try_get_cferr(void *a1, const char *a2, CFErrorRef *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C290B80]() != MEMORY[0x29EDCAA00])
  {
    return 79;
  }

  return _xpc_dictionary_to_cferr(v5, a3);
}

uint64_t _xpc_dictionary_to_cferr(void *a1, CFErrorRef *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  value = 0;
  dictionary = xpc_dictionary_get_dictionary(a1, "cferr_userinfo");
  if (dictionary)
  {
    v5 = dictionary;
    string = xpc_dictionary_get_string(a1, "cferr_domain");
    v7 = _CFStringCreateFromUTF8String(string);
    if (v7)
    {
      v8 = v7;
      int64 = xpc_dictionary_get_int64(a1, "cferr_code");
      v10 = xpc_dictionary_get_dictionary(v5, "underlying_cferr");
      if (v10 && _xpc_dictionary_to_cferr(v10, &value))
      {
        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 67109120;
        v32 = 22;
        v13 = "Failed to unpack underlying error.: %{darwin.errno}d";
      }

      else
      {
        xpc_dictionary_set_value(v5, "underlying_cferr", 0);
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        if (v17)
        {
          v18 = v17;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
          if (MutableCopy)
          {
            v20 = MutableCopy;
            if (value)
            {
              CFDictionarySetValue(MutableCopy, *MEMORY[0x29EDB8F68], value);
            }

            v21 = CFErrorCreate(0, v8, int64, v20);
            if (v21)
            {
              if (a2)
              {
                v16 = 0;
                *a2 = v21;
              }

              else
              {
                CFRelease(v21);
                v16 = 0;
              }
            }

            else
            {
              v26 = *__error();
              if (_xpc_log_onceToken != -1)
              {
                _xpc_dictionary_to_cferr_cold_1();
              }

              v27 = _xpc_log_osl;
              if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v32 = 12;
                _os_log_impl(&dword_298711000, v27, OS_LOG_TYPE_ERROR, "Failed to create CFError.: %{darwin.errno}d", buf, 8u);
              }

              *__error() = v26;
              v16 = 12;
            }

            CFRelease(v20);
          }

          else
          {
            v24 = *__error();
            if (_xpc_log_onceToken != -1)
            {
              _xpc_dictionary_to_cferr_cold_1();
            }

            v25 = _xpc_log_osl;
            if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v32 = 12;
              _os_log_impl(&dword_298711000, v25, OS_LOG_TYPE_ERROR, "Failed to create mutable dictionary.: %{darwin.errno}d", buf, 8u);
            }

            *__error() = v24;
            v16 = 12;
          }

          CFRelease(v18);
          goto LABEL_45;
        }

        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          *__error() = v11;
          v16 = 22;
LABEL_45:
          CFRelease(v8);
          goto LABEL_46;
        }

        *buf = 67109120;
        v32 = 22;
        v13 = "Failed to convert CF to XPC.: %{darwin.errno}d";
      }

      _os_log_impl(&dword_298711000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
      goto LABEL_31;
    }

    v22 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      _xpc_dictionary_key_with_type_exists_cold_1();
    }

    v23 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = 12;
      _os_log_impl(&dword_298711000, v23, OS_LOG_TYPE_ERROR, "Failed to create string.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v22;
    v16 = 12;
  }

  else
  {
    v14 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      _xpc_dictionary_key_with_type_exists_cold_1();
    }

    v15 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = 22;
      _os_log_impl(&dword_298711000, v15, OS_LOG_TYPE_ERROR, "CFError XPC dictionary is missing user info.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v14;
    v16 = 22;
  }

LABEL_46:
  if (value)
  {
    CFRelease(value);
  }

  v28 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t _xpc_request_get_argv(void *a1, void *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "argv", MEMORY[0x29EDCAA00]))
  {
    return 22;
  }

  dictionary = xpc_dictionary_get_dictionary(a1, "argv");
  result = 0;
  *a2 = dictionary;
  return result;
}

os_log_t ___xpc_log_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "xpc");
  _xpc_log_osl = result;
  return result;
}

void _CFCreateAssertImpl_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_actor_alloc_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}