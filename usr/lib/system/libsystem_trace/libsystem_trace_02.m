uint64_t _os_log_fmt_builtin_mach_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, kern_return_t *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v15 = *a5;
    if ((*a5 - 1100) > 6)
    {
      mach_error_string(v15 & 0xFFFFC1FF);
    }

    else
    {
      bootstrap_strerror(*a5);
    }

    os_trace_blob_addf(a1, "[%#x: %s]", v16, v17, v18, v19, v20, v21, v15);
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v12, v13, v14);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_scaled(uint64_t a1, unsigned int a2, uint64_t a3, _BYTE *a4, char *a5, uint64_t a6, void *a7)
{
  if (_os_log_fmt_spec_is_integer(*(a3 + 10), 0))
  {
    scalar = os_log_fmt_read_scalar(a3, a5, a6);
    v24 = 0.0;
    if (*a7)
    {
      v25 = 1;
      if (a7[1] && scalar >= 0x3E8)
      {
        v26 = 0;
        do
        {
          v27 = scalar;
          v28 = a7[v26 + 2];
          ++v26;
          scalar /= a2;
        }

        while (v28 && scalar > 0x3E7);
        v24 = (v27 - scalar * a2) * 100.0;
        v25 = v26 == 0;
      }
    }

    else
    {
      v25 = 1;
    }

    v29 = vcvtad_u64_f64(v24 / a2);
    if (v29 == 100)
    {
      v30 = scalar + 1;
    }

    else
    {
      v30 = scalar;
    }

    if (v29 == 100)
    {
      v29 = 0;
    }

    if (v25)
    {
      return os_trace_blob_addf(a1, "%llu %s", v18, v19, v20, v21, v22, v23, v30);
    }

    if (v30 > 9 || -10 * (v29 / 0xA) == -v29)
    {
      if (!v29 || v30 > 0x63)
      {
        return os_trace_blob_addf(a1, "%llu %s", v18, v19, v20, v21, v22, v23, v30);
      }

      return os_trace_blob_addf(a1, "%llu.%01u %s", v18, v19, v20, v21, v22, v23, v30);
    }

    else
    {
      return os_trace_blob_addf(a1, "%llu.%02u %s", v18, v19, v20, v21, v22, v23, v30);
    }
  }

  else
  {
    v33 = *a3;
    v34 = *(a3 + 12);

    return _os_log_fmt_decode_cmd_mismatch(a1, v33, v34, a4, a6, v14, v15, v16);
  }
}

uint64_t _os_log_fmt_builtin_darwin_signal(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _DWORD *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v18 = *a5;
    if (v18 < 0x20)
    {
      v20 = *(MEMORY[0x1E69E9948] + 8 * v18);
      os_trace_blob_addf(a1, "[sig%s: %s]", v12, v13, v14, v15, v16, v17, *(MEMORY[0x1E69E9950] + 8 * v18));
    }

    else
    {
      os_trace_blob_addf(a1, "[%d: Unknown signal]", v12, v13, v14, v15, v16, v17, *a5);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v15, v16, v17);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_mode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int *a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v15 = *a5;
    __src[0] = aPcDBLSW[*a5 >> 12];
    if ((v15 & 0x40) != 0)
    {
      v16 = 120;
    }

    else
    {
      v16 = 45;
    }

    if ((v15 & 0x40) != 0)
    {
      v17 = 115;
    }

    else
    {
      v17 = 83;
    }

    if ((v15 & 8) != 0)
    {
      v18 = 120;
    }

    else
    {
      v18 = 45;
    }

    if ((v15 & 8) != 0)
    {
      v19 = 115;
    }

    else
    {
      v19 = 83;
    }

    v20 = vdupq_n_s32(v15);
    v21.i16[0] = 11565;
    v21.i8[3] = 45;
    v21.i8[4] = 45;
    v21.i16[3] = 11565;
    v21.i8[2] = v16;
    v21.i8[5] = v18;
    v22.i16[0] = 30578;
    v22.i8[2] = v17;
    v22.i8[3] = 114;
    v22.i8[4] = 119;
    v22.i8[5] = v19;
    v22.i16[3] = 30578;
    *&__src[1] = vbsl_s8(vmovn_s16(vuzp1q_s16(vceqzq_s32(vandq_s8(v20, xmmword_1A7AD5380)), vceqzq_s32(vandq_s8(v20, xmmword_1A7AD5390)))), v21, v22);
    if (v15)
    {
      v23 = 120;
    }

    else
    {
      v23 = 45;
    }

    if (v15)
    {
      v24 = 116;
    }

    else
    {
      v24 = 84;
    }

    if ((v15 & 0x200) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    __src[9] = v25;
    if ((*(a1 + 20) & 2) == 0)
    {
      v26 = *(a1 + 8);
      if (*(a1 + 12) - v26 - (*(a1 + 22) ^ 1u) <= 9)
      {
        os_trace_blob_add_slow(a1, __src, 0xAuLL);
      }

      else
      {
        v27 = *a1 + v26;
        *v27 = *__src;
        *(v27 + 8) = *&__src[8];
        v28 = *(a1 + 8) + 10;
        *(a1 + 8) = v28;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v28) = 0;
        }
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v12, v13, v14);
  }

  v29 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t _os_log_fmt_builtin_darwin_errno(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 == 4 && (is_integer & 1) != 0)
  {
    v18 = *a5;
    if (*a5)
    {
      strerror(*a5);
      os_trace_blob_addf(a1, "[%d: %s]", v19, v20, v21, v22, v23, v24, v18);
    }

    else
    {
      os_trace_blob_addf(a1, "[%d: %s]", v12, v13, v14, v15, v16, v17, 0);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v15, v16, v17);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_BOOL(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char *a5, uint64_t a6)
{
  if ((_os_log_fmt_spec_is_integer(*(a3 + 10), 1u) & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v11, v12, v13);
    return 1;
  }

  scalar = os_log_fmt_read_scalar(a3, a5, a6);
  v15 = *(a1 + 20);
  if (**(a3 + 40) == 66)
  {
    if (scalar)
    {
      v16 = "YES";
    }

    else
    {
      v16 = "NO";
    }

    if (scalar)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if ((v15 & 2) != 0)
    {
      return 1;
    }

LABEL_18:
    v18 = *(a1 + 8);
    if (v17 > *(a1 + 12) - v18 - (*(a1 + 22) ^ 1u))
    {
      os_trace_blob_add_slow(a1, v16, v17);
    }

    else
    {
      memcpy((*a1 + v18), v16, v17);
      v19 = *(a1 + 8) + v17;
      *(a1 + 8) = v19;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v19) = 0;
      }
    }

    return 1;
  }

  if (scalar)
  {
    v16 = "true";
  }

  else
  {
    v16 = "false";
  }

  if (scalar)
  {
    v17 = 4;
  }

  else
  {
    v17 = 5;
  }

  if ((v15 & 2) == 0)
  {
    goto LABEL_18;
  }

  return 1;
}

uint64_t _os_trace_sysprefsdir_path()
{
  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  return _os_trace_system_preferences_path;
}

uint64_t _os_trace_os_cryptex_sysprefsdir_path()
{
  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  return _os_trace_os_cryptex_system_preferences_path;
}

uint64_t _os_trace_app_cryptex_sysprefsdir_path()
{
  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  return _os_trace_app_cryptex_system_preferences_path;
}

uint64_t _os_trace_intprefsdir_path()
{
  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  return _os_trace_internal_preferences_path;
}

uint64_t _os_log_preferences_apply_overrides(void *a1, void *a2)
{
  if (a1 == a2)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result = object_getClass(a1);
    if (a2)
    {
      v5 = MEMORY[0x1E69E9E80];
      if (result == MEMORY[0x1E69E9E80])
      {
        result = object_getClass(a2);
        if (result == v5)
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 0x40000000;
          applier[2] = ___os_log_preferences_apply_overrides_block_invoke;
          applier[3] = &__block_descriptor_tmp_35_304;
          applier[4] = a1;
          return xpc_dictionary_apply(a2, applier);
        }
      }
    }
  }

  return result;
}

uint64_t ___os_log_preferences_apply_overrides_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  value = xpc_dictionary_get_value(*(a1 + 32), a2);
  if (!value)
  {
    goto LABEL_5;
  }

  v7 = value;
  if (object_getClass(value) == MEMORY[0x1E69E9E80])
  {
    _os_log_preferences_apply_overrides(v7, a3);
    return 1;
  }

  if (object_getClass(a3) != MEMORY[0x1E69E9F10] || (string_ptr = xpc_string_get_string_ptr(a3), strcasecmp(string_ptr, "inherit")))
  {
LABEL_5:
    xpc_dictionary_set_value(*(a1 + 32), a2, a3);
  }

  return 1;
}

void *_os_log_preferences_load_sysprefs(const char *a1, char *a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  base_sysprefs_file = _os_log_preferences_load_base_sysprefs_file(__str, a1, a3);
  if ((MEMORY[0xFFFFFC104] & 0x80000000) == 0 && (MEMORY[0xFFFFFC104] & 0x10000000) != 0)
  {
    if (_os_trace_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
    }

    snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_internal_preferences_path, "Subsystems", a1);
    plist_at = _os_trace_read_plist_at(-2, __str);
    if (plist_at)
    {
      v7 = plist_at;
      if (base_sysprefs_file)
      {
        _os_log_preferences_merge(base_sysprefs_file, plist_at, a2);
        xpc_release(v7);
      }

      else
      {
        base_sysprefs_file = plist_at;
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return base_sysprefs_file;
}

void *_os_log_preferences_copy_cache(void *a1)
{
  *a1 = 0;
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v2 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v8 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v8, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v2)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 0x100) != 0 || (MEMORY[0xFFFFFC104] & 0x100) != 0)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  if (byte_1ED3F754B)
  {
    goto LABEL_16;
  }

  if (dword_1ED3F74F4 != dword_1ED3F74E0)
  {
    _os_log_preference_load_cache();
  }

  v3 = qword_1ED3F7500;
  if (!qword_1ED3F7500)
  {
LABEL_16:
    v6 = 0;
  }

  else
  {
    v4 = qword_1ED3F74F8;
    while (1)
    {
      v5 = malloc_type_malloc(v4, 0x253D2B3EuLL);
      if (v5)
      {
        break;
      }

      _os_trace_temporary_resource_shortage();
    }

    v6 = v5;
    memcpy(v5, v3, v4);
    *a1 = qword_1ED3F74F8;
  }

  os_unfair_lock_unlock(&dword_1ED3F74F0);
  return v6;
}

uint64_t ___os_log_simple_filter_subtype_matches_number_block_invoke(void *a1, const char *a2, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  v6 = a1[5];
  if (v6 == strtoul(a2, 0, 10))
  {
    *(*(a1[4] + 8) + 24) = 1;
    v7 = a1[6];
  }

  else
  {
    v7 = (a1[6] + 8);
  }

  *v7 |= value;
  return 1;
}

uint64_t os_log_set_client_type(char a1)
{
  if (pthread_is_threaded_np())
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  result = _dispatch_is_multithreaded();
  if (result)
  {
LABEL_7:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (_os_trace)
  {
LABEL_8:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(qword_1ED3F74D0))
  {
    byte_1ED3F7561 = a1;
    return result;
  }

LABEL_9:
  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t os_log_shim_to_stdout(uint64_t result)
{
  if (result == &_os_log_default)
  {
    _os_crash();
    __break(1u);
  }

  else if (result != &_os_log_disabled)
  {
    *(result + 60) |= 0x80000000;
    return result;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

const char *os_log_type_get_name(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "Default";
    }

    if (a1 == 1)
    {
      return "Info";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "Debug";
      case 16:
        return "Error";
      case 17:
        return "Fault";
    }
  }

  result = _os_crash();
  __break(1u);
  return result;
}

char *os_log_copy_message_string(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  if (!v2)
  {
    if (v1)
    {
      v8 = *MEMORY[0x1E69E9840];
      v9 = *(a1 + 88);

      return strdup(v9);
    }

LABEL_23:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_24;
  }

  v3 = *(a1 + 104);
  if (v3 >= 0x10000)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(a1 + 120);
  if (v4 >= 0x10000)
  {
LABEL_22:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  if (*(a1 + 104))
  {
    if (*(a1 + 104) == 1)
    {
      goto LABEL_24;
    }

    v5 = (v2 + 2);
    LOWORD(v3) = v3 - 2;
    if (v2[1])
    {
      v6 = 0;
      while (v3 >= 2u)
      {
        v7 = *(v5 + 1) + 2;
        if (v7 > v3)
        {
          break;
        }

        v5 += v7;
        LOWORD(v3) = v3 - v7;
        if (v2[1] <= ++v6)
        {
          goto LABEL_17;
        }
      }

LABEL_24:
      _os_assert_log();
      _os_crash();
      __break(1u);
    }
  }

  else
  {
    v5 = 0;
    v2 = &os_log_fmt_extract_pubdata_empty_hdr;
  }

LABEL_17:
  v13[2] = 0x10000;
  v13[0] = &v14;
  v13[1] = 0x40000000000;
  if (*(a1 + 80))
  {
    v11 = 4;
  }

  else
  {
    v11 = 8;
  }

  os_log_fmt_compose(v13, v1, 2, 3u, v11, v2, v5, v3, *(a1 + 112), v4);
  result = os_trace_blob_detach(v13, 0);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *os_log_copy_decorated_message(int a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  *&v34[0].tm_mon = 0;
  *&v34[0].tm_sec = &v34[0].tm_wday;
  *&v34[0].tm_hour = 0x40000000000;
  os_trace_blob_add_localtime(v34, *(a2 + 40), *(a2 + 48), 1u);
  name = os_log_type_get_name(a1);
  os_trace_blob_addf(v34, " %s", v5, v6, v7, v8, v9, v10, name);
  LOBYTE(a1) = getprogname();
  getpid();
  v33 = *(a2 + 16);
  os_trace_blob_addf(v34, " %s[%d:%llx]", v11, v12, v13, v14, v15, v16, a1);
  v23 = *(a2 + 128);
  if (v23)
  {
    if (*(a2 + 136) || (os_trace_blob_addf(v34, "[%s]", v17, v18, v19, v20, v21, v22, *(a2 + 128)), (v23 = *(a2 + 128)) != 0) && *(a2 + 136))
    {
      os_trace_blob_addf(v34, "[%s:%s]", v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v24 = os_log_copy_message_string(a2);
  os_trace_blob_addf(v34, " %s\n", v25, v26, v27, v28, v29, v30, v24);
  free(v24);
  result = os_trace_blob_detach(v34, 0);
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _os_log_get_enablement_value(uint64_t result)
{
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        return 0;
      case 0x10:
        return 3;
      case 0x11:
        return 4;
    }

LABEL_12:
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (!result)
  {
    return 2;
  }

  if (result != 1)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t _os_log_set_hook_impl(unsigned __int8 a1, unint64_t a2, void *aBlock)
{
  if (!aBlock)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v3 = aBlock;
  v4 = a2;
  v5 = a1;
  if (_os_log_set_hook_impl_once != -1)
  {
LABEL_9:
    dispatch_once(&_os_log_set_hook_impl_once, &__block_literal_global_82);
    goto LABEL_3;
  }

  do
  {
LABEL_3:
    v6 = _os_log_hook_level;
    if (_os_log_hook_level)
    {
      enablement_value = _os_log_get_enablement_value(_os_log_hook_level);
      if (enablement_value < _os_log_get_enablement_value(v5))
      {
        v5 = v6;
      }
    }

    v8 = v6;
    atomic_compare_exchange_strong_explicit(&_os_log_hook_level, &v8, v5, memory_order_relaxed, memory_order_relaxed);
  }

  while (v8 != v6);
  atomic_fetch_or_explicit(&_os_log_hook_params, v4, memory_order_relaxed);
  return __swp(_Block_copy(v3), &_os_log_hook);
}

uint64_t ___os_log_set_hook_impl_block_invoke()
{
  result = pthread_key_create(&_os_log_hook_thread_key, 0);
  if (result)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t os_log_set_fault_callback(uint64_t a1)
{
  if (a1)
  {
    return __swp(a1, &_os_log_current_fault_callback);
  }

  else
  {
    return _os_log_current_fault_callback;
  }
}

uint64_t _os_log_impl_mirror_to_stderr(uint64_t result, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v7 = result;
  v38 = *MEMORY[0x1E69E9840];
  v8 = byte_1ED3F7547;
  if ((byte_1ED3F7546 & 1) != 0 || (byte_1ED3F7547 & 1) == 0 || (v8 = 1, (a3 & 0xFE) == 0x10) || (a5 & 0xE) == 2 || (*(a4 + 72) & 0x40000000) != 0)
  {
    if (a2)
    {
      if (a3 == 17 && (v8 & 1) != 0)
      {
        v12 = *(a2 + 24);
        if (v12)
        {
          if (!strcmp((v12 + 4), "com.apple.runtime-issues") || !strcmp((v12 + 4 + *(v12 + 2)), "RuntimeIssues"))
          {
            result = strstr(*(v7 + 40), "xcode:text-backtrace");
            if (result)
            {
              goto LABEL_25;
            }
          }
        }
      }
    }
  }

  else
  {
    if ((a5 & 6 | 8) == 0xC)
    {
      goto LABEL_25;
    }

    v9 = *(result + 24);
    v10 = dyld_image_path_containing_address();
    if (v10)
    {
      v11 = v10;
      result = strncmp(v10, "/System/Developer/", 0x12uLL);
      if (!result)
      {
        goto LABEL_25;
      }

      result = strncmp(v11, "/System/Library/", 0x10uLL);
      if (!result)
      {
        goto LABEL_25;
      }

      result = strncmp(v11, "/usr/lib/", 9uLL);
      if (!result)
      {
        goto LABEL_25;
      }
    }
  }

  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  *&v34.tm_mon = 0;
  *&v34.tm_sec = &v37;
  *&v34.tm_hour = 0x10000000000;
  os_trace_blob_add_localtime(&v34, v13, v14 / 0x3E8, 1u);
  v15 = getprogname();
  getpid();
  v33 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  os_trace_blob_addf(&v34, " %s[%d:%llu] ", v16, v17, v18, v19, v20, v21, v15);
  if (a2)
  {
    v28 = *(a2 + 24);
    if (v28)
    {
      os_trace_blob_addf(&v34, "[%s] ", v22, v23, v24, v25, v26, v27, v28 + *(v28 + 2) + 4);
    }
  }

  v29 = *(a4 + 24);
  if (!v29)
  {
    _os_log_impl_compose(*(v7 + 40), a4);
    v29 = *(a4 + 24);
  }

  *&v34.tm_wday = *&v34.tm_sec;
  *&v34.tm_isdst = v34.tm_hour;
  v30 = *v29;
  v31 = *(v29 + 8);
  v34.tm_gmtoff = v30;
  v34.tm_zone = v31;
  v35 = "\n";
  v36 = 1;
  result = _os_trace_writev(2, &v34.tm_wday, 3);
LABEL_25:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _os_log_mirror_syslog(uint64_t result, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  if ((*(a5 + 75) & 0x40) != 0)
  {
    return result;
  }

  v7 = result;
  result = asl_new_delayInitStub(a3);
  if (a2)
  {
    v9 = *(a2 + 24);
    if (v9)
    {
      v10 = (v9 + *(v9 + 2) + 4);
    }

    else
    {
      v10 = 0;
    }

    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = 0;
    if (!result)
    {
      return result;
    }
  }

  asl_set_delayInitStub(v8);
  v12 = *(a5 + 24);
  if (!v12)
  {
    _os_log_impl_compose(*(v7 + 40), a5);
    v12 = *(a5 + 24);
  }

  if (v10)
  {
    asprintf(&v18, "[%s] %s", v10, *v12);
    asl_set_delayInitStub(v13);
    free(v18);
  }

  else
  {
    asl_set_delayInitStub(v11);
  }

  os_unfair_lock_lock(&_os_log_mirror_syslog_asl_lock);
  if (!*(a2 + 32))
  {
    *(a2 + 32) = asl_open_delayInitStub(v14);
    asl_set_filter_delayInitStub(v16);
    v17 = *(a2 + 32);
  }

  asl_send_delayInitStub(v14);
  os_unfair_lock_unlock(&_os_log_mirror_syslog_asl_lock);
  return asl_release_delayInitStub(v15);
}

uint64_t _os_log_impl_mirror_symptom(uint64_t result, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (xmmword_1ED3F74C0)
  {
    v5 = result;
    if (_os_log_impl_mirror_symptom_reporter || (result = symptom_framework_init(), (_os_log_impl_mirror_symptom_reporter = result) != 0))
    {
      result = symptom_new();
      if (result)
      {
        voucher_get_activity_id();
        if (a2)
        {
          v6 = *(a2 + 24);
          if (v6)
          {
            a2 = v6 + *(v6 + 2) + 4;
          }

          else
          {
            a2 = 0;
          }
        }

        if (!a3[3])
        {
          _os_log_impl_compose(*(v5 + 40), a3);
        }

        v7 = *(v5 + 32);
        symptom_set_qualifier();
        v8 = *v5;
        symptom_set_qualifier();
        symptom_set_qualifier();
        strlen(a2);
        symptom_set_additional_qualifier();
        v10 = a3[4];
        v9 = a3[5];
        symptom_set_additional_qualifier();
        symptom_set_additional_qualifier();
        v11 = *(v5 + 24);
        if (_dyld_get_image_uuid())
        {
          symptom_set_additional_qualifier();
        }

        v12 = a3[3];
        v13 = *(v12 + 2);
        v14 = *v12;
        symptom_set_additional_qualifier();
        result = symptom_send();
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _os_log_unreliable_impl(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 17)
  {
    return _os_log(result, a2, a3, a4, a5, a6, v6, 1);
  }

  qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: Calling the unreliable interfaces on a fault is not supported";
  __break(1u);
  return result;
}

uint64_t os_set_logging_unreliable_for_current_thread()
{
  if (_init_unreliable_thread_key_unreliable_once != -1)
  {
    dispatch_once(&_init_unreliable_thread_key_unreliable_once, &__block_literal_global_85);
  }

  v1 = _os_log_unreliable_thread_key;

  return pthread_setspecific(v1, 1);
}

void _os_log_internal(void *dso, os_log_t log, os_log_type_t type, const char *message, ...)
{
  va_start(va, message);
  v23 = *MEMORY[0x1E69E9840];
  v9 = *__error();
  if (dyld_sdk_at_least() && log && log != &_os_log_disabled)
  {
    isa = log[7].isa;
    if (isa == OS_LOG_TYPE_DEFAULT)
    {
      isa = type;
    }

    v11 = isa & 0x7F;
    if (os_log_type_enabled(log, (isa & 0x7F)))
    {
      v21 = 0;
      va_copy(v20, va);
      v19 = 0;
      v13 = 0u;
      v14 = 0;
      v15 = dso;
      v16 = v4;
      v17 = message;
      v18 = 0uLL;
      if (os_log_fmt_encode(message, 2, v22, &v21, va))
      {
        _os_log_impl_flatten_and_send(&v13);
      }

      else
      {
        va_copy(v20, va);
        _os_log_impl_dynamic(&v13, log, v11, 0, v9, va);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

char *os_log_pack_send_and_compose(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = 0;
  v4 = &v9;
  if (a4)
  {
    v4 = a4;
  }

  v8 = v4;
  v5 = *(a1 + 64);
  v6 = *(a1 + 66);
  _os_log_impl_flatten_and_send(a1);
  return v8;
}

char *os_log_pack_compose(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = 0;
  v4 = &v9;
  if (a4)
  {
    v4 = a4;
  }

  v8 = v4;
  v5 = *(a1 + 64);
  v6 = *(a1 + 66);
  _os_log_impl_flatten_and_send(a1);
  return v8;
}

int *os_log_with_args_find_first_non_jit_frame(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, va_list a6))
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v2 = backtrace(v12, 32);
  v3 = &dword_1A7AB8000;
  v4 = _os_log_impl_dynamic;
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = v2;
    while (1)
    {
      v7 = *(v12 + v5);
      v8 = dyld_image_header_containing_address();
      if (v8 && v8 != &dword_1A7AB8000)
      {
        break;
      }

      ++v5;
      v4 = _os_log_impl_dynamic;
      if (v6 == v5)
      {
        goto LABEL_9;
      }
    }

    v4 = *(v12 + v5);
    v3 = v8;
  }

LABEL_9:
  *a1 = v4;
  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

image_offset **os_log_backtrace_create_from_current(uint64_t a1, void *a2)
{
  v3 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v6 = (v11 - v5);
  if (v4 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v4;
  }

  bzero(v11 - v5, v7);
  if (a2)
  {
    v8 = backtrace_from_fp(a2, v6, v3);
  }

  else
  {
    v8 = backtrace(v6, v3);
  }

  result = os_log_backtrace_create_from_pcs(v6, v8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void os_log_backtrace_destroy(void **a1)
{
  free(*a1);

  free(a1);
}

void *os_log_backtrace_copy_serialized_buffer(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0x1000000000000;
  v7[0] = &v9;
  v7[1] = 0x100000000000;
  os_log_backtrace_serialize_to_blob(v1);
  v4 = os_trace_blob_detach(v7, v3);
  if ((v8 & 0x100000000) != 0)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

_DWORD *os_log_backtrace_create_from_buffer(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 < 4)
  {
    return 0;
  }

  v4 = *a1;
  if (**a1 != 18)
  {
    return 0;
  }

  v5 = *(v4 + 1);
  v6 = (v5 & 3) != 0 ? v5 + 16 * v4[1] + 4 * v5 + 4 - (v5 & 3) + 4 : v5 + 16 * v4[1] + 4 * v5 + 4;
  v7 = v2 >= v6;
  v8 = v2 - v6;
  if (!v7)
  {
    return 0;
  }

  v21 = v8;
  while (1)
  {
    v12 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    if (v12)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v9 = v12;
  v13 = 20 * *(v4 + 1);
  while (1)
  {
    v14 = malloc_type_malloc(v13, 0x1000040A86A77D5uLL);
    if (v14)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  *v9 = v14;
  v15 = *(v4 + 1);
  v9[2] = v15;
  if (v15)
  {
    v16 = 0;
    v17 = &v4[16 * v4[1] + 4];
    v18 = v17 + 4 * v15;
    v19 = 16;
    do
    {
      v20 = *(v18 + v16);
      if (v20 == 255)
      {
        uuid_clear(&v14[v19 - 16]);
      }

      else
      {
        if (v20 >= v4[1])
        {
          free(v14);
          free(v9);
          return 0;
        }

        uuid_copy(&v14[v19 - 16], &v4[16 * v20 + 4]);
      }

      v14 = *v9;
      *(*v9 + v19) = *(v17 + 4 * v16++);
      v19 += 20;
    }

    while (v16 < *(v4 + 1));
  }

  *a1 = &v4[v6];
  *a2 = v21;
  return v9;
}

uint64_t os_log_backtrace_print_to_blob(uint64_t result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(result + 8) >= 1)
  {
    v3 = result;
    v4 = 0;
    memset(out, 0, 37);
    v5 = 16;
    do
    {
      uuid_unparse((*v3 + v5 - 16), out);
      v13 = *(*v3 + v5);
      result = os_trace_blob_addf(a2, "%s +0x%x\n", v6, v7, v8, v9, v10, v11, out);
      ++v4;
      v5 += 20;
    }

    while (v4 < *(v3 + 8));
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void *os_log_backtrace_copy_description(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5[0] = &v7;
  v5[1] = 0x100000000000;
  os_log_backtrace_print_to_blob(v1, v5);
  v2 = os_trace_blob_detach(v5, 0);
  if ((v6 & 0x100000000) != 0)
  {
    free(v5[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

int *_os_trace_undo_write(int a1, uint64_t a2, int a3)
{
  v5 = lseek(a1, -a2, 1);
  if (v5 != -1)
  {
    ftruncate(a1, v5);
  }

  result = __error();
  *result = a3;
  return result;
}

void *_os_trace_mmap_offset(int a1, size_t a2, off_t a3)
{
  result = mmap(0, a2, 1, 8194, a1, a3);
  if (result == -1)
  {
    return 0;
  }

  return result;
}

int *_os_trace_get_boot_uuid_slow(void *a1)
{
  v3 = 37;
  result = sysctlbyname("kern.bootsessionuuid", a1, &v3, 0, 0);
  if ((result & 0x80000000) != 0)
  {
    result = __error();
    v2 = *result;
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Unable to grab boot uuid";
    qword_1EB2AFEB0 = v2;
    __break(1u);
  }

  return result;
}

uint64_t _os_trace_get_times_now(void *a1, void *a2, _DWORD *a3)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  result = mach_get_times();
  if (result)
  {
    result = _os_assumes_log();
  }

  v7 = v14;
  *a1 = v15;
  v8 = v13;
  *a2 = v7 + 1000000000 * v13;
  if (a3)
  {
    v12 = v8;
    memset(&v11, 0, sizeof(v11));
    result = localtime_r(&v12, &v11);
    tm_isdst = v11.tm_isdst;
    v10 = ((v11.tm_gmtoff * 0x7777777777777777) >> 64) - v11.tm_gmtoff;
    *a3 = (v10 >> 5) + (v10 >> 63) + 60 * v11.tm_isdst;
    a3[1] = tm_isdst;
  }

  return result;
}

void _os_trace_log_simple(char *a1, ...)
{
  va_start(va, a1);
  v1[0] = 0;
  va_copy(&v1[1], va);
  vasprintf(v1, a1, va);
  _simple_asl_log();
  free(v1[0]);
}

char *_os_trace_strdup(char *__s1)
{
  while (1)
  {
    result = strdup(__s1);
    if (result)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return result;
}

void *_os_trace_zalloc_typed(size_t size, malloc_type_id_t type_id)
{
  while (1)
  {
    result = malloc_type_calloc(1uLL, size, type_id);
    if (result)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return result;
}

intptr_t _os_state_request_for_pidlist(uint64_t a1, int a2)
{
  if (_os_state_request_for_pidlist_onceToken != -1)
  {
    dispatch_once(&_os_state_request_for_pidlist_onceToken, &__block_literal_global_487);
  }

  result = dispatch_semaphore_wait(_os_state_request_for_pidlist_sema, 0);
  if (!result)
  {
    if (_os_trace != -1)
    {
      dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
    }

    if (dword_1ED3F74DC != -1)
    {
      _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
    }

    v5 = dword_1ED3F74E4;
    if (dword_1ED3F74E4 != dword_1ED3F74E0)
    {
      v7 = dword_1ED3F74E4;
      atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v7, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
      if (v7 == v5)
      {
        _os_log_preferences_refresh_process();
      }
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___os_state_request_for_pidlist_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_3_488;
    v9 = a2;
    v8[4] = a1;
    if (___os_state_request_for_pidlist_block_invoke_2)
    {
      v6 = ___os_state_request_for_pidlist_block_invoke_2;
    }

    else
    {
      v6 = 0;
    }

    _os_activity_initiate_impl(&dword_1A7AB8000, "System-wide statedump", 0, v8, v6);
    return dispatch_semaphore_signal(_os_state_request_for_pidlist_sema);
  }

  return result;
}

uint64_t ___os_state_request_for_pidlist_block_invoke_2(uint64_t a1)
{
  result = voucher_get_activity_id();
  if (*(a1 + 40))
  {
    v3 = result;
    v4 = 0;
    v5 = MEMORY[0x1E69E9A60];
    v6 = MEMORY[0x1E69E99E0];
    do
    {
      name = 0;
      result = debug_control_port_for_pid(*v5, *(*(a1 + 32) + 4 * v4), &name);
      if (result)
      {
        v7 = 1;
      }

      else
      {
        v7 = name == 0;
      }

      if (!v7)
      {
        v10 = *v6;
        v11 = v3;
        *&msg.msgh_bits = 19;
        msg.msgh_voucher_port = 0;
        msg.msgh_id = 50001;
        msg.msgh_remote_port = name;
        msg.msgh_local_port = 0;
        if (MEMORY[0x1EEE9AC50])
        {
          voucher_mach_msg_set(&msg);
        }

        if (mach_msg(&msg, 17, 0x28u, 0, 0, 0x32u, 0) == 268435460)
        {
          if ((msg.msgh_bits & 0x1F00) == 0x1100)
          {
            mach_port_deallocate(*v5, msg.msgh_local_port);
          }

          mach_msg_destroy(&msg);
        }

        result = mach_port_deallocate(*v5, name);
      }

      ++v4;
    }

    while (v4 < *(a1 + 40));
  }

  return result;
}

dispatch_semaphore_t ___os_state_request_for_pidlist_block_invoke()
{
  result = dispatch_semaphore_create(1);
  _os_state_request_for_pidlist_sema = result;
  return result;
}

uint64_t RTLogConnect()
{
  if (rt_globals[0])
  {
    return 1;
  }

  v1 = getenv("OSLogRTBufferConfig");
  v2 = RTLogConnectMemoryConfigFromString(v1);
  v4 = v2;
  os_unfair_lock_lock(&stru_1EB2B000C);
  v0 = 1;
  if ((byte_1EB2B0019 & 1) == 0)
  {
    byte_1EB2B0018 = v2;
    RTLogConnectRingBuffer(&v4);
    byte_1EB2B0019 = 1;
    v0 = 0;
  }

  os_unfair_lock_unlock(&stru_1EB2B000C);
  return v0;
}

uint64_t RTLogConnectMemoryConfigFromString(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = strcasecmp(result, "default");
    if (result)
    {
      if (!strcasecmp(v1, "small"))
      {
        return 1;
      }

      else if (!strcasecmp(v1, "medium"))
      {
        return 2;
      }

      else if (!strcasecmp(v1, "large"))
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t RTLogConnectRingBuffer(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __assert_rtn("RTLogConnectRingBuffer", "connection.c", 93, "config");
  }

  v1 = 0;
  v2 = byte_1EB2B0018 == 2;
  if (byte_1EB2B0018 == 3)
  {
    v2 = 2;
  }

  do
  {
    if (v1 * 4)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    log_bin_config[v1 * 4] = dword_1A7AD5438[v1] << v3;
    ++v1;
  }

  while (v1 != 6);
  address[0] = (qword_1EB2AFE00 + 4) * log_bin_config[0] + 8;
  address[1] = (qword_1EB2AFE10 + 4) * dword_1EB2AFE08 + 8;
  object_handle = 0;
  *&v18 = (qword_1EB2AFE20 + 4) * dword_1EB2AFE18 + 8;
  *(&v18 + 1) = (qword_1EB2AFE30 + 4) * dword_1EB2AFE28 + 8;
  *&v19 = (qword_1EB2AFE40 + 4) * dword_1EB2AFE38 + 8;
  *(&v19 + 1) = (qword_1EB2AFE50 + 4) * dword_1EB2AFE48 + 8;
  *v20 = xmmword_1A7AD53A0;
  *&v20[16] = 2048;
  v15 = RTLogBufferRequiredStorageSize(address, 9uLL);
  address[0] = 0;
  v4 = MEMORY[0x1E69E9A60];
  if (mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v15, 1308622849))
  {
    v5 = 0;
  }

  else
  {
    v5 = address[0];
  }

  if (mach_make_memory_entry_64(*v4, &v15, v5, 3, &object_handle, 0))
  {
    __assert_rtn("RTSharedMemoryConfigure", "shared_memory.c", 140, "kr == KERN_SUCCESS");
  }

  dword_1EB2B0020 = object_handle;
  qword_1EB2B0028 = v5;
  qword_1EB2B0030 = v15;
  RTLogBufferInitialize(v5, v15);
  v6 = 0;
  v7 = &qword_1EB2AFE00;
  v8 = 0x30u;
  do
  {
    Resource = RTLogBufferAllocateResource(v5, v6 + 2, (*v7 + 4) * *(v7 - 2) + 8);
    if (!Resource)
    {
      __assert_rtn("configureEventBins", "shared_memory.c", 56, "placement_in_logbuffer");
    }

    if (RTLogRingBufferCreateManaged(&rt_globals[v8], Resource, *(v7 - 2), *v7))
    {
      __assert_rtn("configureEventBins", "shared_memory.c", 60, "0 == RTLogRingBufferCreateManaged( &rt_globals.eventBin[i], placement_in_logbuffer, log_bin_config[i].segment_count, log_bin_config[i].segment_size)");
    }

    v10 = RTLogBufferAllocateResource(v5, v6 | 8u, 16);
    if (!v10)
    {
      __assert_rtn("configureEventBins", "shared_memory.c", 66, "placement_in_logbuffer");
    }

    *v10 = *&rt_globals[v8];
    v8 += 40;
    ++v6;
    v7 += 2;
  }

  while (v8 != 288);
  v11 = RTLogBufferAllocateResource(v5, 14, 2048);
  _os_trace_metadata_init(v11, 2048);
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *address = 0u;
  v18 = 0u;
  *&v20[16] = getpid();
  *&v20[20] = geteuid();
  v21 = rand();
  getprogname();
  __strlcpy_chk();
  qword_1EB2B0128 = RTLogBufferAddResource(qword_1EB2B0028, 1, address, 0x50uLL);
  rt_globals[0] = 1;
  qword_1EB2B0010 = xpc_connection_create_mach_service("com.apple.logd.realtime", 0, 0);
  if (!qword_1EB2B0010)
  {
    abort();
  }

  __xpc_connection_set_logging();
  xpc_connection_set_event_handler(qword_1EB2B0010, &__block_literal_global_504);
  xpc_connection_activate(qword_1EB2B0010);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v12, "rt_message_type", 0);
  xpc_dictionary_set_uint64(v12, "rt_shmem_size", qword_1EB2B0030);
  xpc_dictionary_set_mach_send();
  xpc_connection_send_message(qword_1EB2B0010, v12);
  xpc_release(v12);
  _os_trace_get_logd_port();
  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

Class __xpcConnectionStart_block_invoke(int a1, id a2)
{
  result = object_getClass(a2);
  if (result != MEMORY[0x1E69E9E98])
  {
    rt_globals[0] = 2;
  }

  return result;
}

unsigned int os_activity_get_active(os_activity_id_t *entries, unsigned int *count)
{
  if (*count >= 2)
  {
    activity_id = voucher_get_activity_id();
    *entries = activity_id;
    if (entries[1])
    {
      result = (activity_id != 0) + 1;
    }

    else
    {
      result = activity_id != 0;
    }

    goto LABEL_7;
  }

  if (*count == 1)
  {
    v6 = voucher_get_activity_id();
    *entries = v6;
    result = v6 != 0;
LABEL_7:
    *count = result;
    return result;
  }

  return 0;
}

_DWORD *_XGetMode(_DWORD *result, uint64_t a2)
{
  v3 = MEMORY[0x1E69E99E0];
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v5 = -304;
  }

  else
  {
    v4 = result[2];
    v7 = *MEMORY[0x1E69E99E0];
    v8 = 0;
    v9 = qword_1ED3F74D0;
    v10 = 0;
    *&v6.msgh_bits = 18;
    v6.msgh_remote_port = v4;
    v6.msgh_id = 50102;
    *&v6.msgh_local_port = 0;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v6);
    }

    result = mach_msg(&v6, 1, 0x30u, 0, 0, 0, 0);
    v5 = -305;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *v3;
  return result;
}

void _XStateDump(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 40)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    _os_state_request_for_self(*(a1 + 32), &ostracemig_do_StateDump_hints, 14, 0);
    *(a2 + 32) = 0;
  }
}

void _XChangeMode(_DWORD *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*a1 & 0x80000000) != 0 || a1[1] != 44)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  else
  {
    if ((qword_1ED3F74D0 & 0x100) == 0)
    {
      v3 = a1[8];
      v4 = a1[9];
      v5 = a1[10];
      if ((MEMORY[0xFFFFFC104] & 0x100) == 0)
      {
        if (_os_trace != -1)
        {
          v9 = a1[8];
          dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
          v3 = v9;
        }

        v6 = qword_1ED3F74D0;
        v7 = v3 & 0xFFFFFF;
        LODWORD(qword_1ED3F74D0) = v3 & 0xFFFFFF;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 67109888;
          v10[1] = v6;
          v11 = 1024;
          v12 = v7;
          v13 = 1024;
          v14 = v4;
          v15 = 1024;
          v16 = v5;
          _os_log_impl(&dword_1A7AB8000, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Change Mode: %{os_trace_procmode_t}d, Final: %{os_trace_procmode_t}d, Interval: %d, Filter: 0x%x", v10, 0x1Au);
        }
      }
    }

    *(a2 + 32) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t (*libtraceMIG_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 50003) >= 0xFFFFFFFD)
  {
    return ostracemig_do_libtraceMIG_subsystem[5 * (v1 - 50000) + 5];
  }

  else
  {
    return 0;
  }
}

size_t _os_log_fmt_decode_error(size_t result)
{
  if ((*(result + 20) & 2) == 0)
  {
    v1 = *(result + 8);
    if (*(result + 12) - v1 - (*(result + 22) ^ 1u) <= 0x15)
    {
      return os_trace_blob_add_slow(result, "<decode: missing data>", 0x16uLL);
    }

    else
    {
      qmemcpy((*result + v1), "<decode: missing data>", 22);
      v2 = *(result + 8) + 22;
      *(result + 8) = v2;
      if ((*(result + 22) & 1) == 0)
      {
        *(*result + v2) = 0;
      }
    }
  }

  return result;
}

uint64_t _os_log_fmt_decode_cmd_mismatch(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  os_trace_blob_addf(a1, "<decode: mismatch for [%.*s] got [", a3, a4, a5, a6, a7, a8, a3);
  v17 = *a4;
  if (v17 > 0x4F)
  {
    os_trace_blob_addf(a1, "%d", v11, v12, v13, v14, v15, v16, *a4 >> 4);
  }

  else
  {
    v18 = _cmd_type2str[v17 >> 4];
    v19 = strlen(v18);
    if ((*(a1 + 20) & 2) == 0)
    {
      v26 = v19;
      v27 = *(a1 + 8);
      if (v19 > *(a1 + 12) - v27 - (*(a1 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a1, v18, v19);
      }

      else
      {
        memcpy((*a1 + v27), v18, v19);
        v28 = *(a1 + 8) + v26;
        *(a1 + 8) = v28;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v28) = 0;
        }
      }
    }
  }

  if ((*a4 & 2) != 0 && (*(a1 + 20) & 2) == 0)
  {
    v29 = *(a1 + 8);
    if (*(a1 + 12) - v29 - (*(a1 + 22) ^ 1u) <= 6)
    {
      os_trace_blob_add_slow(a1, " public", 7uLL);
    }

    else
    {
      v30 = (*a1 + v29);
      *(v30 + 3) = 1667853410;
      *v30 = 1651863584;
      v31 = *(a1 + 8) + 7;
      *(a1 + 8) = v31;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v31) = 0;
      }
    }
  }

  if ((*a4 & 1) != 0 && (*(a1 + 20) & 2) == 0)
  {
    v32 = *(a1 + 8);
    if (*(a1 + 12) - v32 - (*(a1 + 22) ^ 1u) <= 7)
    {
      os_trace_blob_add_slow(a1, " private", 8uLL);
    }

    else
    {
      *(*a1 + v32) = 0x6574617669727020;
      v33 = *(a1 + 8) + 8;
      *(a1 + 8) = v33;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v33) = 0;
      }
    }
  }

  return os_trace_blob_addf(a1, " sz:%d]>", v20, v21, v22, v23, v24, v25, v8);
}

uint64_t _os_log_fmt_decode_masked_unknown(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 - 8) >= 3)
  {
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v9 = off_1E77DB4D0[(a4 - 8)];
    return os_trace_blob_addf(a1, "<decode: mask %.*s is %s>", a3, a4, a5, a6, a7, a8, a2);
  }

  return result;
}

uint64_t asl_new_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libsystem_asl_dylib))
  {
    dlopenHelper_libsystem_asl_dylib(a1);
  }

  return MEMORY[0x1EEE70860]();
}

uint64_t asl_open_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libsystem_asl_dylib))
  {
    dlopenHelper_libsystem_asl_dylib(a1);
  }

  return MEMORY[0x1EEE70870]();
}

uint64_t asl_release_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libsystem_asl_dylib))
  {
    dlopenHelper_libsystem_asl_dylib(a1);
  }

  return MEMORY[0x1EEE70878]();
}

uint64_t asl_send_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libsystem_asl_dylib))
  {
    dlopenHelper_libsystem_asl_dylib(a1);
  }

  return MEMORY[0x1EEE70880]();
}

uint64_t asl_set_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libsystem_asl_dylib))
  {
    dlopenHelper_libsystem_asl_dylib(a1);
  }

  return MEMORY[0x1EEE70888]();
}

uint64_t asl_set_filter_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libsystem_asl_dylib))
  {
    dlopenHelper_libsystem_asl_dylib(a1);
  }

  return MEMORY[0x1EEE70890]();
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_libsystem_asl_dylib(double a1)
{
  dlopen("/usr/lib/system/libsystem_asl.dylib", 0);
  atomic_store(1u, &dlopenHelperFlag_libsystem_asl_dylib);
  return a1;
}