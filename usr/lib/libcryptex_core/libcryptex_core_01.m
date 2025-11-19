uint64_t _write_file(int __fd, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v4 = pwrite(__fd, *a2, *(a2 + 8), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v18) = v7;
      _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, "write: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
    v8 = *__error();
    if (v8 != 4)
    {
      goto LABEL_20;
    }
  }

  v9 = v4;
  v10 = *(a2 + 8);
  v11 = *__error();
  if (v9 == v10)
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v12 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v18 = v9;
      _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "wrote %ld bytes", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v13 = log_util_log;
    v8 = 5;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 8);
      *buf = 134218496;
      v18 = v9;
      v19 = 2048;
      v20 = v14;
      v21 = 1024;
      v22 = 5;
      _os_log_impl(&dword_2986F2000, v13, OS_LOG_TYPE_ERROR, "truncated write: actual = %ld, expected = %ld: %{darwin.errno}d", buf, 0x1Cu);
    }
  }

  *__error() = v11;
LABEL_20:
  v15 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t _digest_file(int a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(&v21, 0, sizeof(v21));
  v6 = (*(a2 + 8) + *(a2 + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  MEMORY[0x2A1C7C4A8]();
  v8 = &v19 - v7;
  bzero(&v19 - v7, v9);
  if (*a2 >= 0x31uLL)
  {
    _digest_file_cold_5(&v20, buf);
  }

  if (fstat(a1, &v21))
  {
    v10 = *__error();
    v11 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v12 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v10;
    v13 = "failed to stat file: %{darwin.errno}d";
LABEL_7:
    _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
LABEL_8:
    *__error() = v11;
    goto LABEL_13;
  }

  st_size = v21.st_size;
  if (v21.st_size < 0)
  {
    _read_file_cold_6();
  }

  v15 = mmap(0, v21.st_size, 1, 1, a1, 0);
  if (v15 == -1)
  {
    v10 = *__error();
    v11 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v12 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v10;
    v13 = "failed to map file into memory: %{darwin.errno}d";
    goto LABEL_7;
  }

  v16 = v15;
  ccdigest_init();
  ccdigest_update();
  (*(a2 + 56))(a2, v8, a3 + 16);
  *(a3 + 8) = *a2;
  if (munmap(v16, st_size) == -1)
  {
    _digest_file_cold_2(&v20, buf);
  }

  v10 = 0;
LABEL_13:
  v17 = *MEMORY[0x29EDCA608];
  return v10;
}

os_log_t __log_util_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "utility");
  log_util_log = result;
  return result;
}

double OUTLINED_FUNCTION_2_5(void *a1, _OWORD *a2)
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

uint64_t OUTLINED_FUNCTION_7_0()
{
  v2 = *v0;

  return _os_crash_msg();
}

uint64_t OUTLINED_FUNCTION_10()
{
  v2 = *v0;

  return _os_crash_msg();
}

void _sprintdgst_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

void _digest_file_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  OUTLINED_FUNCTION_5_0();
  v2 = *__error();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  __break(1u);
}

void _digest_file_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10();
  __break(1u);
}

uint64_t _buff_destructor_munmap(void *a1, size_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = munmap(a1, a2);
  if (result == -1)
  {
    _buff_destructor_munmap_cold_1(&v4, v5);
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void *buff_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x29EDCA608];
  *result = a4;
  result[1] = a5;
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  if (a5 < 0)
  {
    buff_init_cold_1(&v6, v7);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *buff_init_signed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a5 < 0)
  {
    buff_init_signed_cold_1(&v7, v8);
  }

  v5 = *MEMORY[0x29EDCA608];

  return buff_init(a1, a2, a3, a4, a5);
}

__n128 buff_xfer_subrange(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a4 + a3 > a2->n128_u64[1])
  {
    v6 = a2->n128_u64[1];
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  a1->n128_u64[0] = a2->n128_u64[0] + a3;
  a1->n128_u64[1] = a4;
  a1[1].n128_u64[0] = a2->n128_u64[0];
  a1[1].n128_u64[1] = a2->n128_u64[1];
  result = a2[2];
  a1[2] = result;
  a2[2].n128_u64[1] = 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void *buff_destroy(void *result)
{
  if (result)
  {
    if (*result)
    {
      v2 = result[5];
      if (v2)
      {
        if (result[6])
        {
          buff_destroy_cold_1();
        }

        v3 = result[3];
        v4 = result[4];
        v5 = result[2];

        return v2(v5, v3, v4);
      }
    }
  }

  return result;
}

void _buff_destructor_munmap_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = *__error();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2();
  v4 = *v2;
  _os_crash_msg();
  __break(1u);
}

void buff_init_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void buff_init_signed_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  v3 = *v2;
  _os_crash_msg();
  __break(1u);
}

void *ctx_new(void *a1, size_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 <= 0x1F)
  {
    ctx_new_cold_2(&v8, v9);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!v4)
    {
      _cryptex_magister_record_property_continue2_cold_1(&v8, v9);
    }
  }

  v5 = v4;
  if (a1)
  {
    *v4 = os_retain(a1);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void ctx_destroy(void **a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1);
    }

    if (*a1)
    {
      os_release(*a1);
    }

    free(a1);
  }
}

void ctx_new_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

uint64_t _xpc_dictionary_try_get_uint64(void *a1, const char *a2, uint64_t *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C2903B0]() != MEMORY[0x29EDCAA58])
  {
    return 79;
  }

  v7 = xpc_uint64_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_try_get_string(void *a1, const char *a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C2903B0]() != MEMORY[0x29EDCAA50])
  {
    return 79;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  result = 0;
  *a3 = string_ptr;
  return result;
}

uint64_t _xpc_dictionary_try_get_BOOL(void *a1, const char *a2, BOOL *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C2903B0]() != MEMORY[0x29EDCA9E8])
  {
    return 79;
  }

  v7 = xpc_BOOL_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

void cryptex_core_set_asset_cold_1(uint64_t *a1, _OWORD *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6(a1, a2);
  OUTLINED_FUNCTION_4();
  v6 = *(a3 + 48);
  _os_log_send_and_compose_impl();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_core_set_assets_from_directory_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  OUTLINED_FUNCTION_2();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_core_generate_identifier_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_core_generate_version_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  _os_log_send_and_compose_impl();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void cryptex_core_copy_nonce_domain_desc_cold_1(const char *a1)
{
  OUTLINED_FUNCTION_7(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void session_core_generate_username_cold_1(uint64_t *a1, _OWORD *a2)
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
  OUTLINED_FUNCTION_2();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_asset_generic_stamp_cold_1(uint64_t *a1, _OWORD *a2, unsigned int a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _AMAuthInstallErrorString(a3, 0);
  OUTLINED_FUNCTION_4_0();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_asset_new_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_5_0();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_asset_init_path_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_5_0();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void cryptex_asset_copy_cold_1(const char *a1, void *a2, _OWORD *a3)
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
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_base_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_core_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_core_cx1_properties_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_host_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_magister_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_signature_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _cryptex_scrivener_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void _session_core_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_4();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  __break(1u);
}

void cryptex_core_unparse_hdiid_cold_1(uint64_t *a1, _OWORD *a2)
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

void cryptex_tss_set_info_from_file_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_version_new_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
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

void cryptex_version_new_cold_2(uint64_t *a1, _OWORD *a2)
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

void _cryptex_magister_authenticate_toutoc_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  OUTLINED_FUNCTION_2();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_magister_firmware_execute_toutoc_cold_2(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v4 = *__error();
  OUTLINED_FUNCTION_2();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_magister_record_property_continue2_cold_1(uint64_t *a1, _OWORD *a2)
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

void _cryptex_signature_compute_hash_cold_1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_scrivener_create_cold_1(uint64_t *a1, _OWORD *a2)
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
  OUTLINED_FUNCTION_3_0();
  _os_log_send_and_compose_impl();
  v4 = *a1;
  _os_crash_msg();
  __break(1u);
}

void cryptex_scrivener_set_url_cold_1(const char *a1, uint64_t *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  OUTLINED_FUNCTION_4();
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  v6 = *a2;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_scrivener_sign_continue_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  OUTLINED_FUNCTION_4();
  _AMAuthInstallErrorString(v2, 0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0();
  v4 = *v3;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_scrivener_sign_continue_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  OUTLINED_FUNCTION_4();
  _AMAuthInstallErrorString(v2, 0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0();
  v4 = *v3;
  _os_crash_msg();
  __break(1u);
}

void _cryptex_scrivener_init_tss_common_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  OUTLINED_FUNCTION_4();
  _AMAuthInstallErrorString(v2, 0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0();
  v4 = *v3;
  _os_crash_msg();
  __break(1u);
}

void _CFCreateAssertImpl_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _CFNumberGetUInt32_cold_1(uint64_t *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_2_4();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void _CFNumberGetUInt32_cold_2()
{
  _os_crash();
  __break(1u);
  AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped();
}