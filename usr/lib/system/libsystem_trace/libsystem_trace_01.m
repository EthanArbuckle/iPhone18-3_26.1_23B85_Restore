uint64_t ___os_trace_get_image_info_block_invoke(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v5 = 0;
  v6 = "__cstring";
  do
  {
    if (*a2 == *v6 && a2[1] == *(v6 + 1))
    {
      v9 = *(a1 + 40) + 12 * v5;
      *(v9 + 16) = a3;
      *(v9 + 24) = a4;
      v8 = (v9 + 20);
      goto LABEL_10;
    }

    ++v5;
    v6 += 16;
  }

  while (v5 != 5);
  if (*a2 ^ 0x74736E6F635F5FLL | a2[1])
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 32) + 8) + 32) = a4;
  v8 = (*(*(a1 + 32) + 8) + 28);
LABEL_10:
  *v8 = a5;
  return 0;
}

int *_os_trace_prefs_and_mode_refresh_slow(int a1)
{
  v1 = a1;
  v14 = *MEMORY[0x1E69E9840];
  check = 0;
  out_token = a1;
  v2 = *__error();
  v3 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX);
  v4 = *(&xmmword_1ED3F74C0 + 1);
  while (v3 >= v4)
  {
    v5 = v4;
    atomic_compare_exchange_strong_explicit(&xmmword_1ED3F74C0 + 1, &v5, v3 + 1000000000, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v4;
    v4 = v5;
    if (v6)
    {
      v7 = dword_1ED3F74D8;
      memset(msg, 0, 108);
      while (!mach_msg(msg, 67109122, 0, 0x6Cu, v7, 0, 0))
      {
        _os_trace_mig_server(108, msg);
      }

      if (v1 != -2)
      {
        goto LABEL_14;
      }

      if (!notify_register_check("com.apple.system.logging.prefschanged", &out_token))
      {
        v1 = out_token;
        v8 = -2;
        atomic_compare_exchange_strong_explicit(&dword_1ED3F74DC, &v8, out_token, memory_order_relaxed, memory_order_relaxed);
        if (v8 != -2)
        {
          notify_cancel(v1);
          out_token = v8;
          v1 = v8;
        }

        if ((v1 & 0x80000000) == 0)
        {
LABEL_14:
          if (!notify_check(v1, &check) && check)
          {
            atomic_fetch_add_explicit(&dword_1ED3F74E0, 1u, memory_order_relaxed);
          }
        }
      }

      break;
    }
  }

  if ((byte_1ED3F7544 & 1) == 0)
  {
    if (_dispatch_is_multithreaded())
    {
      __swp(&byte_1ED3F7544, &byte_1ED3F7544);
      if ((&byte_1ED3F7544 & 1) == 0)
      {
        _os_log_watch_for_prefchanges();
      }
    }
  }

  result = __error();
  *result = v2;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___init_unreliable_thread_key_block_invoke()
{
  result = pthread_key_create(&_os_log_unreliable_thread_key, 0);
  if (result)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void _os_log_watch_for_prefchanges()
{
  out_token = 0;
  v0 = dispatch_queue_create_with_target_V2("com.apple.os.log.notify", 0, 0);
  v1 = notify_register_dispatch("com.apple.system.logging.prefschanged", &out_token, v0, &__block_literal_global_367);
  dispatch_release(v0);
  if (!v1)
  {
    __swp(v2, &dword_1ED3F74DC);
    out_token = v2;
    if ((v2 & 0x80000000) == 0)
    {
      check = 0;
      if (notify_check(v2, &check))
      {
        v3 = 1;
      }

      else
      {
        v3 = check == 0;
      }

      if (!v3)
      {
        atomic_fetch_add_explicit(&dword_1ED3F74E0, 1u, memory_order_relaxed);
      }

      notify_cancel(out_token);
    }
  }
}

void ___os_trace_paths_init_block_invoke()
{
  _os_trace_system_preferences_path = "/System/Library/Preferences/Logging";
  _os_trace_os_cryptex_system_preferences_path = "/System/Cryptexes/OS/System/Library/Preferences/Logging";
  _os_trace_app_cryptex_system_preferences_path = "/System/Cryptexes/App/System/Library/Preferences/Logging";
  _os_trace_internal_preferences_path = "/AppleInternal/Library/Preferences/Logging";
  _os_trace_preferences_path = "/Library/Preferences/Logging";
}

uint64_t os_log_shim_legacy_logging_enabled()
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if ((qword_1ED3F74D0 & 0x20000000) != 0)
  {
    return 1;
  }

  else
  {
    return (MEMORY[0xFFFFFC104] >> 29) & 1;
  }
}

unint64_t transport_add_public_tracepoint(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  if (byte_1ED3F7561 == 2)
  {
    v11[0] = a4;
    v11[1] = a5;
    if (a1 == 3)
    {
      v9 = 0;
    }

    else if (a2 == 6)
    {
      v9 = 5;
    }

    else
    {
      v9 = RTBinIndexForType(BYTE1(a2));
    }

    return transport_ringbuffer_add_tracepoint(v8, v9, a2, a3, v11, a5, 0, 0);
  }

  else
  {

    return MEMORY[0x1EEE703C8]();
  }
}

uint64_t os_trace_set_mode(uint64_t result)
{
  if ((qword_1ED3F74D0 & 0x100) == 0 && (MEMORY[0xFFFFFC104] & 0x100) == 0)
  {
    LODWORD(qword_1ED3F74D0) = result & 0xFFFFFF;
  }

  return result;
}

uint64_t _os_log_fmt_flatten_masked_data(_BYTE *a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5, unint64_t a6, size_t a7, _BYTE *a8)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_47;
  }

  v8 = a7;
  v10 = a4;
  v9 = a1;
  v12 = *a1;
  *a1 = v12 & 0xF8 | 2;
  if (a3 <= 0x656D616E6C69616CLL)
  {
    if (a3 <= 0x786F626C69616CLL)
    {
      if (a3 == 1752392040)
      {
        goto LABEL_17;
      }

      v13 = 0x68736168766564;
      goto LABEL_16;
    }

    if (a3 == 0x786F626C69616DLL)
    {
      goto LABEL_17;
    }

    if (a3 != 0x35646D6E69616C70)
    {
      v13 = 0x617474616C69616DLL;
      goto LABEL_16;
    }

    if (*a8)
    {
      LOWORD(v8) = 0;
      goto LABEL_34;
    }

    ccmd5_di();
    ccdigest();
    if (v8 > 0xF)
    {
      v8 = 16;
    }

    else
    {
      *a8 = 1;
    }

    if ((*(v10 + 20) & 2) != 0)
    {
      goto LABEL_34;
    }

    v18 = *(v10 + 8);
    if (v8 <= *(v10 + 12) - v18 - (*(v10 + 22) ^ 1u))
    {
      memcpy((*v10 + v18), __src, v8);
      v19 = *(v10 + 8) + v8;
      *(v10 + 8) = v19;
      if ((*(v10 + 22) & 1) == 0)
      {
        *(*v10 + v19) = 0;
      }

      goto LABEL_34;
    }

LABEL_47:
    os_trace_blob_add_slow(v10, __src, v8);
    goto LABEL_34;
  }

  if (a3 > 0x6F6363616C69616CLL)
  {
    if (a3 == 0x6F6363616C69616DLL || a3 == 0x7075626D6C69616DLL)
    {
      goto LABEL_17;
    }

    v13 = 0x726464616C69616DLL;
  }

  else
  {
    if (a3 == 0x656D616E6C69616DLL || a3 == 0x6A6275736C69616DLL)
    {
      goto LABEL_17;
    }

    v13 = 0x6D6D75736C69616DLL;
  }

LABEL_16:
  if (a3 != v13)
  {
    LOWORD(v8) = 0;
    *a1 = v12 & 8 | 0xE2;
    *a8 = 0;
    goto LABEL_35;
  }

LABEL_17:
  if (!_os_log_mask_callback)
  {
    goto LABEL_33;
  }

  if (a3 > 0x6D6D75736C69616CLL)
  {
    if (a3 > 0x7075626D6C69616CLL)
    {
      if (a3 == 0x726464616C69616DLL)
      {
        goto LABEL_30;
      }

      v14 = 0x7075626D6C69616DLL;
    }

    else
    {
      if (a3 == 0x6D6D75736C69616DLL)
      {
        goto LABEL_30;
      }

      v14 = 0x6F6363616C69616DLL;
    }
  }

  else
  {
    if (a3 <= 0x656D616E6C69616CLL)
    {
      if (a3 != 0x786F626C69616DLL)
      {
        v14 = 0x617474616C69616DLL;
        goto LABEL_29;
      }

LABEL_30:
      v15 = v12 >> 4;
      if (v15 == 4 || v15 == 2)
      {
        goto LABEL_32;
      }

LABEL_33:
      LOWORD(v8) = 0;
      *a8 = 0;
      goto LABEL_34;
    }

    if (a3 == 0x656D616E6C69616DLL)
    {
      goto LABEL_30;
    }

    v14 = 0x6A6275736C69616DLL;
  }

LABEL_29:
  if (a3 == v14)
  {
    goto LABEL_30;
  }

LABEL_32:
  __src[0] = 2;
  LOWORD(v8) = _os_log_mask_callback_impl(a2, __src, a3, a4, a5, a6, a7, a8);
  *v9 = __src[0] & 0xF | *v9 & 0xF8;
LABEL_34:
  *v9 |= 0xF0u;
LABEL_35:
  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _os_log_mask_callback_impl(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5, unint64_t a6, size_t a7, _BYTE *a8)
{
  v8 = a8;
  __src[4] = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    if (a3 > 0x6A6275736C69616CLL)
    {
      if (a3 <= 0x6F6363616C69616CLL)
      {
        if (a3 != 0x6A6275736C69616DLL)
        {
          v13 = 0x6D6D75736C69616DLL;
          goto LABEL_46;
        }
      }

      else if (a3 != 0x726464616C69616DLL)
      {
        if (a3 != 0x7075626D6C69616DLL)
        {
          v13 = 0x6F6363616C69616DLL;
          goto LABEL_46;
        }

        goto LABEL_33;
      }

LABEL_47:
      LOWORD(a7) = 0;
      *a2 = 1;
LABEL_121:
      v55 = *MEMORY[0x1E69E9840];
      return a7;
    }

    if (a3 > 0x786F626C69616CLL)
    {
      if (a3 == 0x786F626C69616DLL || a3 == 0x617474616C69616DLL)
      {
        goto LABEL_47;
      }

      v13 = 0x656D616E6C69616DLL;
LABEL_46:
      if (a3 == v13)
      {
        goto LABEL_47;
      }

      goto LABEL_213;
    }

LABEL_31:
    if (a3 == 1752392040)
    {
      if ((*a8 & 1) == 0)
      {
        _os_log_mask_create_digest(a5, a6, &qword_1ED3F7518, __src);
        if (a7 > 0xF)
        {
          a7 = 16;
        }

        else
        {
          *v8 = 1;
        }

        if ((*(a4 + 20) & 2) == 0)
        {
          v57 = *(a4 + 8);
          if (a7 > *(a4 + 12) - v57 - (*(a4 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a4, __src, a7);
          }

          else
          {
            memcpy((*a4 + v57), __src, a7);
            v58 = *(a4 + 8) + a7;
            *(a4 + 8) = v58;
            if ((*(a4 + 22) & 1) == 0)
            {
              *(*a4 + v58) = 0;
            }
          }
        }

        goto LABEL_121;
      }

LABEL_61:
      LOWORD(a7) = 0;
      goto LABEL_121;
    }

    if (a3 == 0x68736168766564)
    {
LABEL_33:
      if ((*a8 & 1) == 0)
      {
        _os_log_mask_create_device_digest(a5, a6, __src);
        if (a3 == 0x7075626D6C69616DLL)
        {
          v25 = 2;
        }

        else
        {
          v25 = 16;
        }

        if (v25 > a7)
        {
          *v8 = 1;
          v25 = a7;
        }

        if ((*(a4 + 20) & 2) == 0)
        {
          v26 = *(a4 + 8);
          if (v25 > *(a4 + 12) - v26 - (*(a4 + 22) ^ 1u))
          {
            os_trace_blob_add_slow(a4, __src, v25);
          }

          else
          {
            memcpy((*a4 + v26), __src, v25);
            v27 = *(a4 + 8) + v25;
            *(a4 + 8) = v27;
            if ((*(a4 + 22) & 1) == 0)
            {
              *(*a4 + v27) = 0;
            }
          }
        }

        LOWORD(a7) = v25;
        goto LABEL_121;
      }

      goto LABEL_61;
    }

LABEL_213:
    _os_crash();
    __break(1u);
    goto LABEL_214;
  }

  if (a3 > 0x6A6275736C69616CLL)
  {
    if (a3 <= 0x6F6363616C69616CLL)
    {
      if (a3 == 0x6A6275736C69616DLL)
      {
        goto LABEL_51;
      }

      v14 = 0x6D6D75736C69616DLL;
      goto LABEL_50;
    }

    if (a3 != 0x6F6363616C69616DLL)
    {
      if (a3 == 0x7075626D6C69616DLL)
      {
        goto LABEL_33;
      }

      if (a3 == 0x726464616C69616DLL)
      {
        LODWORD(v91) = 0x2000000;
        __src[0] = 0;
        v15 = _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(a5, a6, a6, __src, 0);
        v16 = v15;
        v17 = __src[0];
        if (__src[0] <= 1)
        {
          if (v15 >= 0xFF)
          {
            v59 = 255;
          }

          else
          {
            v59 = v15;
          }

          BYTE1(v91) = v59;
          v60 = v8;
          if (a7 > 3)
          {
            v61 = 4;
          }

          else
          {
            *v8 = 1;
            v61 = a7;
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v78 = *(a4 + 8);
            if (v61 > *(a4 + 12) - v78 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, &v91, v61);
            }

            else
            {
              memcpy((*a4 + v78), &v91, v61);
              v79 = *(a4 + 8) + v61;
              *(a4 + 8) = v79;
              if ((*(a4 + 22) & 1) == 0)
              {
                *(*a4 + v79) = 0;
              }
            }
          }

          if (a7 - v61 < v59)
          {
            *v60 = 1;
            v59 = a7 - v61;
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v80 = *(a4 + 8);
            if (v59 > *(a4 + 12) - v80 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, a5, v59);
            }

            else
            {
              memcpy((*a4 + v80), a5, v59);
              v81 = *(a4 + 8) + v59;
              *(a4 + 8) = v81;
              if ((*(a4 + 22) & 1) == 0)
              {
                *(*a4 + v81) = 0;
              }
            }
          }

          LOWORD(a7) = v59 + v61;
        }

        else
        {
          v18 = v8;
          if (__src[0] >= 0xFF)
          {
            v17 = -1;
          }

          BYTE1(v91) = v17;
          v19 = _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(a5, v15, 1uLL, __src, 64);
          if (v19 >= 0xFF)
          {
            v20 = 255;
          }

          else
          {
            v20 = v19;
          }

          BYTE2(v91) = v20;
          v21 = strnstr(&a5[v19], "@", v16 - v19);
          if (v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = &a5[v16];
          }

          v23 = _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(v22, &a5[v16] - v22, 2uLL, __src, 0);
          _os_log_mask_create_device_digest(a5, v16, __src);
          LOBYTE(v91) = 2;
          if (a7 > 3)
          {
            v24 = 4;
          }

          else
          {
            *v18 = 1;
            v24 = a7;
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v75 = *(a4 + 8);
            if (v24 > *(a4 + 12) - v75 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, &v91, v24);
            }

            else
            {
              memcpy((*a4 + v75), &v91, v24);
              v76 = *(a4 + 8) + v24;
              *(a4 + 8) = v76;
              if ((*(a4 + 22) & 1) == 0)
              {
                *(*a4 + v76) = 0;
              }
            }
          }

          v77 = a7 - v24;
          if (a7 - v24 > 1)
          {
            v77 = 2;
          }

          else
          {
            *v18 = 1;
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v82 = *(a4 + 8);
            if (v77 > *(a4 + 12) - v82 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, __src, v77);
            }

            else
            {
              memcpy((*a4 + v82), __src, v77);
              v83 = *(a4 + 8) + v77;
              *(a4 + 8) = v83;
              if ((*(a4 + 22) & 1) == 0)
              {
                *(*a4 + v83) = 0;
              }
            }
          }

          v84 = v77 + v24;
          if (a7 - v84 < v20)
          {
            *v18 = 1;
            v20 = a7 - v84;
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v85 = *(a4 + 8);
            if (v20 > *(a4 + 12) - v85 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, a5, v20);
            }

            else
            {
              memcpy((*a4 + v85), a5, v20);
              v86 = *(a4 + 8) + v20;
              *(a4 + 8) = v86;
              if ((*(a4 + 22) & 1) == 0)
              {
                *(*a4 + v86) = 0;
              }
            }
          }

          if (v23 > a7 - (v20 + v84))
          {
            *v18 = 1;
            v23 = a7 - (v20 + v84);
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v87 = *(a4 + 8);
            if (v23 > *(a4 + 12) - v87 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, v22, v23);
            }

            else
            {
              memcpy((*a4 + v87), v22, v23);
              v88 = *(a4 + 8) + v23;
              *(a4 + 8) = v88;
              if ((*(a4 + 22) & 1) == 0)
              {
                *(*a4 + v88) = 0;
              }
            }
          }

          LOWORD(a7) = v23 + v20 + v84;
        }

        goto LABEL_121;
      }

      goto LABEL_213;
    }
  }

  else
  {
    if (a3 <= 0x786F626C69616CLL)
    {
      goto LABEL_31;
    }

    if (a3 != 0x786F626C69616DLL)
    {
      if (a3 != 0x617474616C69616DLL)
      {
        v14 = 0x656D616E6C69616DLL;
LABEL_50:
        if (a3 != v14)
        {
          goto LABEL_213;
        }

        goto LABEL_51;
      }

      LODWORD(v91) = 0x1000000;
      __src[0] = 0;
      v31 = _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(a5, a6, a6, __src, 0);
      v32 = v31;
      if (v31)
      {
        v33 = 0;
        v34 = __src[0];
        if (v31 >= 5)
        {
          v35 = 5;
        }

        else
        {
          v35 = v31;
        }

        v36 = &a5[v31];
        v37 = a5 - 1;
        while (v35 != v33)
        {
          v38 = v37[v31];
          ++v33;
          --v37;
          if (v38 == 46)
          {
            goto LABEL_134;
          }
        }

        v33 = v35;
LABEL_134:
        v62 = v8;
        v63 = &v36[-v33];
        if (&v36[-v33] != a5)
        {
          _os_log_mask_create_device_digest(a5, v31, __src);
          v64 = 0;
          v65 = 2;
          LOBYTE(v91) = 2;
          v66 = -1;
          if (v34 < 0xFF)
          {
            v66 = v34;
          }

          BYTE1(v91) = v66;
LABEL_139:
          if (a7 > 3)
          {
            v67 = 4;
          }

          else
          {
            *v62 = 1;
            v67 = a7;
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v68 = *(a4 + 8);
            if (v67 > *(a4 + 12) - v68 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, &v91, v67);
              if ((v64 & 1) == 0)
              {
                goto LABEL_147;
              }

              goto LABEL_154;
            }

            memcpy((*a4 + v68), &v91, v67);
            v69 = *(a4 + 8) + v67;
            *(a4 + 8) = v69;
            if ((*(a4 + 22) & 1) == 0)
            {
              *(*a4 + v69) = 0;
            }
          }

          if ((v64 & 1) == 0)
          {
LABEL_147:
            if (a7 - v67 < v65)
            {
              *v62 = 1;
              v65 = a7 - v67;
            }

            if ((*(a4 + 20) & 2) == 0)
            {
              v70 = *(a4 + 8);
              if (v65 > *(a4 + 12) - v70 - (*(a4 + 22) ^ 1u))
              {
                os_trace_blob_add_slow(a4, __src, v65);
              }

              else
              {
                memcpy((*a4 + v70), __src, v65);
                v71 = *(a4 + 8) + v65;
                *(a4 + 8) = v71;
                if ((*(a4 + 22) & 1) == 0)
                {
                  *(*a4 + v71) = 0;
                }
              }
            }

            v67 += v65;
          }

LABEL_154:
          v72 = a5 - v63 + v32;
          if (v72 > a7 - v67)
          {
            *v62 = 1;
            v72 = a7 - v67;
          }

          if ((*(a4 + 20) & 2) == 0)
          {
            v73 = *(a4 + 8);
            if (v72 > *(a4 + 12) - v73 - (*(a4 + 22) ^ 1u))
            {
              os_trace_blob_add_slow(a4, v63, v72);
            }

            else
            {
              memcpy((*a4 + v73), v63, v72);
              v74 = *(a4 + 8) + v72;
              *(a4 + 8) = v74;
              if ((*(a4 + 22) & 1) == 0)
              {
                *(*a4 + v74) = 0;
              }
            }
          }

          LOWORD(a7) = v72 + v67;
          goto LABEL_121;
        }
      }

      else
      {
        v62 = v8;
      }

      v65 = 0;
      v64 = 1;
      v63 = a5;
      goto LABEL_139;
    }
  }

LABEL_51:
  v90 = 0;
  __src[0] = 0;
  v28 = _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(a5, a6, a6, __src, 0);
  v29 = __src[0];
  if (a3 > 0x6D6D75736C69616CLL)
  {
    if (a3 > 0x7075626D6C69616CLL)
    {
      if (a3 == 0x7075626D6C69616DLL)
      {
        v30 = 0;
        goto LABEL_79;
      }

      if (a3 == 0x726464616C69616DLL)
      {
        v30 = 1;
        goto LABEL_79;
      }

      goto LABEL_214;
    }

    if (a3 != 0x6D6D75736C69616DLL)
    {
      if (a3 != 0x6F6363616C69616DLL)
      {
        goto LABEL_214;
      }

LABEL_59:
      v30 = 2;
      goto LABEL_79;
    }

LABEL_64:
    v30 = 3;
    goto LABEL_79;
  }

  if (a3 > 0x656D616E6C69616CLL)
  {
    if (a3 != 0x656D616E6C69616DLL && a3 != 0x6A6275736C69616DLL)
    {
      goto LABEL_214;
    }

    goto LABEL_64;
  }

  if (a3 == 0x786F626C69616DLL)
  {
    goto LABEL_59;
  }

  if (a3 == 0x617474616C69616DLL)
  {
    v30 = 5;
LABEL_79:
    v39 = -1;
    if (__src[0] < 0xFF)
    {
      v39 = __src[0];
    }

    BYTE1(v90) = v39;
    if (__src[0] <= v30)
    {
      v40 = 0;
    }

    else
    {
      _os_log_mask_create_device_digest(a5, v28, __src);
      v40 = 2;
    }

    LOBYTE(v90) = v40;
    if (a7 > 3)
    {
      v41 = 4;
    }

    else
    {
      *v8 = 1;
      v41 = a7;
    }

    if ((*(a4 + 20) & 2) == 0)
    {
      v42 = *(a4 + 8);
      if (v41 > *(a4 + 12) - v42 - (*(a4 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a4, &v90, v41);
      }

      else
      {
        memcpy((*a4 + v42), &v90, v41);
        v43 = *(a4 + 8) + v41;
        *(a4 + 8) = v43;
        if ((*(a4 + 22) & 1) == 0)
        {
          *(*a4 + v43) = 0;
        }
      }
    }

    if (v29 > v30)
    {
      v44 = a7 - v41;
      if (a7 - v41 >= v40)
      {
        v44 = v40;
      }

      else
      {
        *v8 = 1;
      }

      if ((*(a4 + 20) & 2) == 0)
      {
        v45 = *(a4 + 8);
        if (v44 > *(a4 + 12) - v45 - (*(a4 + 22) ^ 1u))
        {
          os_trace_blob_add_slow(a4, __src, v44);
        }

        else
        {
          memcpy((*a4 + v45), __src, v44);
          v46 = *(a4 + 8) + v44;
          *(a4 + 8) = v46;
          if ((*(a4 + 22) & 1) == 0)
          {
            *(*a4 + v46) = 0;
          }
        }
      }

      v41 += v44;
    }

    if (a3 == 0x6A6275736C69616DLL)
    {
      v89 = v8;
      v47 = a5;
      if (v28 >= 4)
      {
        v47 = a5;
        for (i = v28; i > 3; i += v49)
        {
          if (!strncmp(v47, "Re: ", 4uLL))
          {
            v49 = -4;
            v50 = 4;
          }

          else
          {
            if (i == 4 || strncmp(v47, "Fwd: ", 5uLL))
            {
              break;
            }

            v49 = -5;
            v50 = 5;
          }

          v47 += v50;
        }
      }

      v51 = _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(v47, v28 - (v47 - a5), v30, &v91, 0) + v47 - a5;
      v8 = v89;
    }

    else
    {
      v51 = _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(a5, v28, v30, &v91, 0);
    }

    if (v51 >= v28)
    {
      v52 = v28;
    }

    else
    {
      v52 = v51;
    }

    if (v52 > a7 - v41)
    {
      *v8 = 1;
      v52 = a7 - v41;
    }

    if ((*(a4 + 20) & 2) == 0)
    {
      v53 = *(a4 + 8);
      if (v52 > *(a4 + 12) - v53 - (*(a4 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a4, a5, v52);
      }

      else
      {
        memcpy((*a4 + v53), a5, v52);
        v54 = *(a4 + 8) + v52;
        *(a4 + 8) = v54;
        if ((*(a4 + 22) & 1) == 0)
        {
          *(*a4 + v54) = 0;
        }
      }
    }

    LOWORD(a7) = v52 + v41;
    goto LABEL_121;
  }

LABEL_214:
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t os_log_shim_enabled(uint64_t a1)
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if ((qword_1ED3F74D0 & 0x60000000) != 0 || (MEMORY[0xFFFFFC104] & 0x60000000) != 0)
  {
    return 0;
  }

  if (!a1 || !dyld_image_header_containing_address())
  {
    return 1;
  }

  return dyld_sdk_at_least();
}

void os_activity_apply_f(os_activity_t activity, void *context, os_function_t function)
{
  if (activity == &_os_activity_current)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: OS_ACTIVITY_CURRENT passed";
    __break(1u);
  }

  else
  {
    if (activity != &_os_activity_none)
    {
      os_retain(activity);
    }

    voucher_adopt();
    (function)(context);
    v6 = voucher_adopt();

    os_release(v6);
  }
}

void os_activity_apply(os_activity_t activity, os_block_t block)
{
  if (*(block + 2))
  {
    v2 = *(block + 2);
  }

  else
  {
    v2 = 0;
  }

  os_activity_apply_f(activity, block, v2);
}

unint64_t _os_log_fmt_compose_data(unint64_t a1, uint64_t a2, _BYTE *a3, const char *a4, unsigned int a5, int a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = (*(a2 + 12) + 18) & 0x3FFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v30 - v13;
  v16 = _os_log_fmt_compose_format_copy(&v30 - v13, *v15, *(a2 + 12));
  if ((*a3 & 0xF0) == 0x30)
  {
    result = os_trace_blob_add_hexdump(a1, a4, a5, a6);
    goto LABEL_28;
  }

  if (*(a2 + 10) == 18)
  {
    v14[v16 - 1] = 115;
  }

  v24 = *(a2 + 8);
  if ((v24 & 2) != 0)
  {
    v30 = *(a2 + 20);
    v25 = 1;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_10:
    if (a6)
    {
      a4 = &unk_1A7AD6BB1;
    }

    else
    {
      a4 = "(null)";
    }

    if ((v24 & 4) != 0)
    {
      v26 = v25 + 1;
      *(&v30 + v25) = 0x7FFFFFFF;
    }

    else
    {
      v26 = v25;
    }

    goto LABEL_20;
  }

  v25 = 0;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((v24 & 8) == 0)
  {
    *&v14[v16 - 1] = 7547438;
    v26 = v25 + 1;
LABEL_19:
    *(&v30 + v25) = a5;
    goto LABEL_20;
  }

  v26 = v25 + 1;
  if ((v24 & 4) == 0)
  {
    *strrchr(v14, 46) = 7547438;
    goto LABEL_19;
  }

  v27 = *(a2 + 24);
  if (v27 > a5)
  {
    goto LABEL_19;
  }

  *(&v30 + v25) = v27;
LABEL_20:
  if (v26 == 2)
  {
    result = os_trace_blob_addf(a1, v14, v17, v18, v19, v20, v21, v22, v30);
    if (!a6)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v26 == 1)
  {
    HIBYTE(v29) = HIBYTE(a4);
    result = os_trace_blob_addf(a1, v14, v17, v18, v19, v20, v21, v22, v30);
  }

  else
  {
    result = os_trace_blob_addf(a1, v14, v17, v18, v19, v20, v21, v22, a4);
  }

  if (a6)
  {
LABEL_27:
    result = os_trace_blob_addns(a1, "<…>", 0xFFFFFFFFFFFFFFFFLL, 0);
  }

LABEL_28:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t os_trace_blob_vaddf(uint64_t a1, const char *a2, int a3, va_list a4)
{
  v4 = *(a1 + 22);
  if (v4 == 1)
  {
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Can't use addf() in binary blobs";
    __break(1u);
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 12) - *(a1 + 8) - (v4 ^ 1u);
  *__error() = a3;
  v9 = vsnprintf((*a1 + *(a1 + 8)), (v8 + 1), a2, a4);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 0;
    *(*a1 + *(a1 + 8)) = 0;
  }

  else
  {
    v10 = v9;
    if (v9 > v8)
    {
      if (*(a1 + 12) < *(a1 + 16))
      {
        v8 = os_trace_blob_grow(a1, v9);
        *__error() = a3;
        vsnprintf((*a1 + *(a1 + 8)), (v8 + 1), a2, a4);
      }

      if (v10 > v8)
      {
        *(a1 + 20) |= 2u;
        v10 = v8;
      }
    }

    *(a1 + 8) += v10;
  }

  return v10;
}

void *_os_trace_realloc_typed(void *ptr, size_t size, malloc_type_id_t type_id)
{
  while (1)
  {
    result = malloc_type_realloc(ptr, size, type_id);
    if (result)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return result;
}

uint64_t _os_trace_is_development_build()
{
  if ((MEMORY[0xFFFFFC104] & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return (MEMORY[0xFFFFFC104] >> 28) & 1;
  }
}

void _os_trace_mh_map_insert_impl(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 10);
  v5 = (a2 >> *MEMORY[0x1E69E9AC0]) % v4;
  v6 = a4 + 16;
  while (1)
  {
    v7 = *(v6 + 16 * v5);
    if ((v7 + 1) < 2)
    {
      break;
    }

    if (v7 == a2)
    {
      goto LABEL_8;
    }

    if (v5 + 1 == v4)
    {
      v5 = 0;
    }

    else
    {
      ++v5;
    }
  }

  v8 = (v6 + 16 * v5);
  v8[1] = a3;
  atomic_store(a2, v8);
  ++*(a4 + 8);
LABEL_8:
  if (a1)
  {
    _os_trace_rwptr_wrunlock(a1, a4);
  }
}

void _os_trace_rwptr_wrunlock(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    *a2 = v2;
  }

  atomic_store(a2, (a1 + 8));
  v3 = *a1;
  do
  {
    v4 = v3;
    v5 = v3 | 0x100000000;
    if (v2 == a2)
    {
      v5 = v3;
    }

    v6 = v5;
    if (!HIDWORD(v5))
    {
      v6 = 0;
    }

    if (v5 >> 33)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = v6;
    }

    atomic_compare_exchange_strong_explicit(a1, &v3, v7, memory_order_release, memory_order_relaxed);
  }

  while (v3 != v4);
  if (v7)
  {
    _os_trace_rwptr_cleanup(a1, _os_trace_mh_map_cleanup);
  }

  else
  {
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
    if (v8 != v4)
    {
      _os_trace_rwptr_wrunlock_slow(a1, v8, v4);
    }
  }
}

size_t _os_signpost_pack_fill(size_t result, unint64_t a2, __int16 a3, uint64_t a4, char *a5, char *__s, uint64_t a7)
{
  v13 = result;
  if (!a5)
  {
    result = strlen(__s);
    a5 = &__s[result];
  }

  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = a4;
  *(v13 + 32) = v7;
  *(v13 + 40) = a5;
  if (a2 >= 0x10000)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: Absurdly large size";
    qword_1EB2AFEB0 = a2;
    __break(1u);
  }

  else
  {
    *(v13 + 48) = __s;
    *(v13 + 56) = a7;
    *(v13 + 64) = a3;
    *(v13 + 66) = a2 - 72;
    return v13 + 68;
  }

  return result;
}

void _os_signpost_pack_send(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 60) >> 9) & 0xC0;
  v3 = *(a1 + 64);
  v4 = *(a1 + 66);
  _os_log_impl_flatten_and_send(a1);
}

uint64_t _os_log_pack_fill(uint64_t result, unint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = a4;
  *(result + 32) = v5;
  *(result + 40) = a5;
  if (a2 >= 0x10000)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: Absurdly large size";
    qword_1EB2AFEB0 = a2;
    __break(1u);
  }

  else
  {
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = a3;
    *(result + 66) = a2 - 72;
    result += 68;
  }

  return result;
}

uint64_t _os_trace_write(int __fd, uint64_t a2, size_t __nbyte)
{
  if (__nbyte)
  {
    v3 = __nbyte;
    v6 = 0;
    while (1)
    {
      v7 = write(__fd, (a2 + v6), v3);
      if (v7 < 0)
      {
        v8 = *__error();
        if (v8 != 4)
        {
          _os_trace_undo_write(__fd, v6, v8);
          return -1;
        }
      }

      else
      {
        v6 += v7;
        v3 -= v7;
      }

      if (!v3)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t _os_trace_logd_send_with_reply()
{
  v0 = _os_trace_logd_pipe_copy(0);
  if (v0)
  {
    v1 = v0;
    if (xpc_pipe_routine() != 32)
    {
LABEL_5:
      xpc_release(v1);
      return 0;
    }

    v2 = _os_trace_logd_pipe_copy(v1);
    if (v2)
    {
      v1 = v2;
      xpc_pipe_routine();
      goto LABEL_5;
    }
  }

  return 0;
}

uint64_t _os_log_preferences_load_base_sysprefs_file(char *__str, const char *a2, int a3)
{
  if (!a3)
  {
    goto LABEL_9;
  }

  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_app_cryptex_system_preferences_path, "Subsystems", a2);
  result = _os_trace_read_plist_at(4294967294, __str);
  if (!result)
  {
    if (_os_trace_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
    }

    snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_os_cryptex_system_preferences_path, "Subsystems", a2);
    result = _os_trace_read_plist_at(4294967294, __str);
    if (!result)
    {
LABEL_9:
      if (_os_trace_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
      }

      snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_system_preferences_path, "Subsystems", a2);

      return _os_trace_read_plist_at(4294967294, __str);
    }
  }

  return result;
}

uint64_t _os_log_mask_create_digest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = ccsha256_di();
  v6 = (((*(v5 + 8) + *(v5 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v12 - v7;
  ccdigest_init();
  ccdigest_update();
  ccdigest_update();
  (*(v5 + 56))(v5, v8, a4);
  v9 = *(v5 + 8) + *(v5 + 16);
  result = cc_clear();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *_os_trace_logd_pipe_copy(void *a1)
{
  os_unfair_lock_lock_with_options();
  v2 = _event_pipe;
  if (a1)
  {
    if (_event_pipe == a1)
    {
      xpc_release(_event_pipe);
      v2 = 0;
    }

    xpc_release(a1);
  }

  if (v2 || (v2 = xpc_pipe_create(), (_event_pipe = v2) != 0))
  {
    xpc_retain(v2);
  }

  os_unfair_lock_unlock(&_event_lock);
  return v2;
}

void *_os_log_preferences_load(const char *a1, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  base_sysprefs_file = _os_log_preferences_load_base_sysprefs_file(__str, a1, 1);
  if ((MEMORY[0xFFFFFC104] & 0x80000000) == 0 && (MEMORY[0xFFFFFC104] & 0x10000000) != 0)
  {
    if (_os_trace_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
    }

    snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_internal_preferences_path, "Subsystems", a1);
    plist_at = _os_trace_read_plist_at(4294967294, __str);
  }

  else
  {
    plist_at = 0;
  }

  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  snprintf(__str, 0x400uLL, "%s/%s/%s.plist", _os_trace_preferences_path, "Subsystems", a1);
  v6 = _os_trace_read_plist_at(4294967294, __str);
  if (qword_1ED3F7550)
  {
    dictionary = xpc_dictionary_get_dictionary(qword_1ED3F7550, a1);
    if (dictionary)
    {
      v8 = xpc_copy(dictionary);
      if (!v6)
      {
        goto LABEL_12;
      }

LABEL_16:
      if (v8)
      {
        _os_log_preferences_merge(v8, v6, a2);
        if (plist_at)
        {
LABEL_23:
          _os_log_preferences_merge(plist_at, v8, a2);
          v9 = v8;
          goto LABEL_24;
        }

LABEL_18:
        v9 = 0;
        if (base_sysprefs_file)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      v8 = v6;
LABEL_22:
      v6 = 0;
      if (plist_at)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  v8 = 0;
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v8)
  {
    goto LABEL_22;
  }

  if (!plist_at)
  {
    goto LABEL_29;
  }

  v9 = 0;
  v6 = 0;
LABEL_24:
  v8 = plist_at;
  if (base_sysprefs_file)
  {
LABEL_25:
    _os_log_preferences_merge(base_sysprefs_file, v8, a2);
    xpc_release(v8);
    if (!v6)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_19:
  base_sysprefs_file = v8;
  if (v6)
  {
LABEL_26:
    xpc_release(v6);
  }

LABEL_27:
  if (v9)
  {
    xpc_release(v9);
  }

LABEL_29:
  v10 = *MEMORY[0x1E69E9840];
  return base_sysprefs_file;
}

void _os_activity_label_useraction_impl(unint64_t a1, unint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  v68 = 0;
  v69 = 0;
  v67 = 0;
  refreshed = dword_1ED3F74DC;
  if (dword_1ED3F74DC != -1)
  {
    refreshed = _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v6 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v37 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v37, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v37 == v6)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 0x500) == 0 && (MEMORY[0xFFFFFC104] & 0x500) == 0)
  {
    v7 = v2;
    if (xmmword_1ED3F74C0)
    {
      v8 = dword_1ED3F7568;
    }

    else
    {
      v8 = 0;
    }

    if (_os_trace_dsc_load_addr <= a1 && _os_trace_dsc_size + _os_trace_dsc_load_addr > a1)
    {
      v9 = v2 - _os_trace_dsc_load_addr;
      LODWORD(v68) = v2 - _os_trace_dsc_load_addr;
      WORD2(v68) = (v2 - _os_trace_dsc_load_addr) >> 32;
      v69 = 0;
      if (WORD2(v68))
      {
        v45 = 0;
        v10 = 6;
        HIWORD(v68) = 6;
        v11 = 12;
        v46 = 0x100000000;
      }

      else
      {
        HIDWORD(v68) = 0x40000;
        v45 = 0;
        v10 = 4;
        v46 = 1;
        v11 = 4;
      }

      goto LABEL_47;
    }

    if (*(a1 + 12) == 2)
    {
      v45 = 0;
      v9 = v2 - a1;
      LODWORD(v68) = v2 - a1;
      WORD2(v68) = (v2 - a1) >> 32;
      v10 = 4;
      HIWORD(v68) = 4;
      v69 = 0;
      v11 = 2;
      v46 = 1;
LABEL_47:
      v44 = a2;
      if (a2)
      {
        v25 = _os_trace_dsc_load_addr;
        if (_os_trace_dsc_load_addr <= a1)
        {
          if (_os_trace_dsc_size + _os_trace_dsc_load_addr <= a1)
          {
            v25 = a1;
          }

          v26 = a2 - v25;
        }

        else
        {
          v26 = a2 - a1;
        }

        if (v26 >> 31)
        {
          v27 = (2 * v26) & 0xFFFF00000000;
        }

        else
        {
          v27 = 0;
        }

        a2 = v27 & 0xFFFFFFFF80000000 | v26 & 0x7FFFFFFF;
      }

      v67 = a2;
      v28 = v10 + 2 * (HIDWORD(a2) != 0);
      MEMORY[0x1EEE9AC00](refreshed);
      v30 = &v43 - v29;
      bzero(&v43 - v29, v28);
      if (HIDWORD(v46))
      {
        *v30 = v68;
        *(v30 + 2) = WORD2(v68);
      }

      else
      {
        *v30 = v9;
        if ((v46 & 1) == 0)
        {
          *(v30 + 4) = *v45;
        }
      }

      if (HIDWORD(a2))
      {
        v11 |= 0x20u;
        *&v30[v10] = WORD2(a2);
      }

      if ((qword_1ED3F74D0 & 8) != 0 || (MEMORY[0xFFFFFC104] & 8) != 0)
      {
        LODWORD(v31) = 1;
      }

      else
      {
        v31 = (voucher_get_activity_id() >> 59) & 1;
      }

      v32 = (v11 << 16) | (a2 << 32);
      v65 = 0;
      v66 = 0;
      v33 = v31 & dword_1ED3F7540;
      v64 = 0;
      if ((v31 & dword_1ED3F7540) == 1)
      {
        if (mach_get_times())
        {
          _os_assumes_log();
        }
      }

      else
      {
        v66 = mach_continuous_time();
      }

      v34 = _os_get_logging_unreliable_for_current_thread() == 1;
      v63[0] = v30;
      v63[1] = v28;
      v35 = transport_add_tracepoint(0, v32 | 0x302, v66, v63, v28, 0, v34);
      if (v33)
      {
        v38 = v35;
        v39 = _os_trace_diagnosticd_pipe(0);
        if (v39)
        {
          v40 = v39;
          v62 = 0;
          v61 = 0u;
          v60 = 0u;
          v59 = 0u;
          v58 = 0u;
          v57 = 0u;
          v56 = 0u;
          v55 = 0u;
          v54 = 0u;
          v53 = 0u;
          v52 = 0u;
          v51 = 0u;
          v50 = 0u;
          v49 = 0u;
          v48 = 0u;
          if (v38 <= 8u && ((1 << v38) & 0x158) != 0)
          {
            v41 = v38 << 8;
          }

          else
          {
            v41 = bswap32(v38) >> 16;
          }

          v47 = v41;
          *&v51 = v38;
          *(&v51 + 1) = v66;
          *(&v53 + 1) = v64;
          *&v54 = (v65 / 0x3E8);
          *(&v56 + 1) = v44;
          LOBYTE(v57) = 1;
          _os_activity_stream_reflect(v39, &v47, a1, -3, &v68, &v67);
          xpc_release(v40);
        }
      }

      goto LABEL_70;
    }

    if (xmmword_1ED3F74C0)
    {
LABEL_18:
      v12 = *v8;
      do
      {
        if (v12)
        {
          v14 = v7;
          refreshed = _os_trace_rwptr_rdlock_wait(v8);
          v7 = v14;
          goto LABEL_18;
        }

        v13 = v12;
        atomic_compare_exchange_strong_explicit(v8, &v13, v12 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
        v19 = v13 == v12;
        v12 = v13;
      }

      while (!v19);
      v15 = *(off_1ED3F7570 + 5);
      v16 = off_1ED3F7570 + 16;
      v17 = (a1 >> *MEMORY[0x1E69E9AC0]) % v15;
      while (1)
      {
        v18 = *&v16[16 * v17];
        if (v18 == a1)
        {
          break;
        }

        if (v17 + 1 == v15)
        {
          v17 = 0;
        }

        else
        {
          ++v17;
        }

        if (v18)
        {
          v19 = v17 == (a1 >> *MEMORY[0x1E69E9AC0]) % v15;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          v20 = 0;
          goto LABEL_35;
        }
      }

      v20 = *&v16[16 * v17 + 8];
LABEL_35:
      v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v22 = *v8;
      v23 = *v8;
      do
      {
        v24 = v22 - 0x200000000;
        if (v22 == 0x300000000)
        {
          v24 = v21;
        }

        atomic_compare_exchange_strong_explicit(v8, &v23, v24, memory_order_relaxed, memory_order_relaxed);
        v19 = v23 == v22;
        v22 = v23;
      }

      while (!v19);
      if (v24 == v21)
      {
        __dmb(9u);
        v42 = v7;
        _os_trace_rwptr_cleanup(v8, _os_trace_mh_map_cleanup);
        v7 = v42;
      }

      v69 = v20;
      if (v20)
      {
        v45 = v20;
        v46 = 0;
        v9 = v7 - a1;
        LODWORD(v68) = v7 - a1;
        WORD2(v68) = (v7 - a1) >> 32;
        v10 = 20;
        HIWORD(v68) = 20;
        v11 = 10;
        goto LABEL_47;
      }
    }

    else
    {
      v69 = 0;
    }

    v45 = 0;
    LODWORD(v68) = v7;
    WORD2(v68) = WORD2(v7);
    v10 = 6;
    HIWORD(v68) = 6;
    v11 = 8;
    v46 = 0x100000000;
    v9 = v7;
    goto LABEL_47;
  }

LABEL_70:
  v36 = *MEMORY[0x1E69E9840];
}

xpc_object_t _os_log_preferences_compute(void *a1, const char *a2, uint64_t a3)
{
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  if (a1)
  {
    dictionary = xpc_dictionary_get_dictionary(a1, "DEFAULT-OPTIONS");
    v49 = dictionary;
    if (dictionary)
    {
      v7 = dictionary;
      v45 = xpc_dictionary_get_dictionary(dictionary, "Level");
      v47 = xpc_dictionary_get_dictionary(v7, "TTL");
    }

    if (a2)
    {
      v8 = xpc_dictionary_get_dictionary(a1, a2);
      v50 = v8;
      if (v8)
      {
        v9 = v8;
        v46 = xpc_dictionary_get_dictionary(v8, "Level");
        v48 = xpc_dictionary_get_dictionary(v9, "TTL");
      }
    }
  }

  v44 = _os_log_preference_option_ttl(&v47, "Default");
  v43 = _os_log_preference_option_ttl(&v47, "Info");
  v42 = _os_log_preference_option_ttl(&v47, "Debug");
  v41 = _os_log_preference_option(&v45, "Enable");
  v40 = _os_log_preference_option(&v45, "Persist");
  v10 = MEMORY[0x1E69E9E58];
  v39 = _os_log_preference_value(&v49, "Symptoms", MEMORY[0x1E69E9E58]);
  v38 = _os_log_preference_value(&v49, "Enable-Oversize-Messages", v10);
  v11 = _os_log_preference_value(&v49, "Default-Privacy-Setting", MEMORY[0x1E69E9F10]);
  if (!v11)
  {
    goto LABEL_11;
  }

  string_ptr = xpc_string_get_string_ptr(v11);
  if (!strcasecmp(string_ptr, "Sensitive"))
  {
    v13 = 6144;
  }

  else if (!strcasecmp(string_ptr, "Private"))
  {
    v13 = 4096;
  }

  else
  {
    if (strcasecmp(string_ptr, "Public"))
    {
LABEL_11:
      v37 = 0;
      goto LABEL_16;
    }

    v13 = 2048;
  }

  v37 = v13;
LABEL_16:
  v14 = _os_log_preference_value(&v49, "Privacy-Enable-Level", MEMORY[0x1E69E9F10]);
  v15 = MEMORY[0x1E69E9E10];
  if (!v14)
  {
LABEL_20:
    v17 = (_os_log_preference_value(&v49, "Enable-Private-Data", MEMORY[0x1E69E9E58]) == v15) << 14;
    goto LABEL_24;
  }

  v16 = xpc_string_get_string_ptr(v14);
  if (!strcasecmp(v16, "Sensitive"))
  {
    v17 = 24576;
  }

  else if (!strcasecmp(v16, "Private"))
  {
    v17 = 0x4000;
  }

  else
  {
    if (strcasecmp(v16, "Public"))
    {
      goto LABEL_20;
    }

    v17 = 0x2000;
  }

LABEL_24:
  v18 = _os_log_preference_value(&v49, "Signpost-Scope", MEMORY[0x1E69E9F10]);
  if (!v18)
  {
LABEL_28:
    v20 = 0x10000;
    goto LABEL_31;
  }

  v19 = xpc_string_get_string_ptr(v18);
  if (!strcasecmp(v19, "Thread"))
  {
    v20 = 0x8000;
  }

  else
  {
    if (!strcasecmp(v19, "Process") || strcasecmp(v19, "System"))
    {
      goto LABEL_28;
    }

    v20 = 98304;
  }

LABEL_31:
  v21 = MEMORY[0x1E69E9E58];
  v22 = _os_log_preference_value(&v49, "Supports-Signpost-Introspection", MEMORY[0x1E69E9E58]);
  v23 = _os_log_preference_value(&v49, "Signpost-Enabled", v21);
  if (v23)
  {
    if (v23 == v15)
    {
LABEL_36:
      v24 = 0x40000;
      goto LABEL_38;
    }
  }

  else if (strcmp(a2, "DynamicTracing") && strcmp(a2, "DynamicStackTracing"))
  {
    goto LABEL_36;
  }

  v24 = 0;
LABEL_38:
  v25 = MEMORY[0x1E69E9E58];
  v26 = _os_log_preference_value(&v49, "Signpost-Persisted", MEMORY[0x1E69E9E58]);
  v27 = _os_log_preference_value(&v49, "Signpost-Backtraces-Enabled", v25);
  if (v27)
  {
    if (v27 == v15)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }
  }

  else
  {
    v28 = strcmp(a2, "DynamicStackTracing") == 0;
  }

  v29 = _os_log_preference_value(&v49, "Signpost-Allow-Streaming", v25);
  v30 = _os_log_preference_value(&v49, "Enable-Fault-Crashlogs", v25);
  if (v30 == v15)
  {
LABEL_50:
    v33 = 0x1000000;
    goto LABEL_51;
  }

  if (v30 == MEMORY[0x1E69E9E08])
  {
    goto LABEL_49;
  }

  v31 = _os_log_preference_value(&v49, "Enable-Fault-Crashlogs", MEMORY[0x1E69E9F10]);
  if (!v31)
  {
    goto LABEL_49;
  }

  v32 = xpc_string_get_string_ptr(v31);
  if (strcasecmp(v32, "Once"))
  {
    if (!strcasecmp(v32, "None") || strcasecmp(v32, "Always"))
    {
LABEL_49:
      v33 = 0;
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v33 = 0x800000;
LABEL_51:
  if (v29 == v15 || v29 == 0)
  {
    v35 = 0x400000;
  }

  else
  {
    v35 = 0;
  }

  result = _os_log_preference_value(&v49, "Enable-Fault-Crashlog-Excerpts", MEMORY[0x1E69E9E58]);
  *a3 = 0;
  *(a3 + 1) = v44;
  *(a3 + 2) = v43;
  *(a3 + 3) = v42;
  *(a3 + 4) = (v41 | (8 * v40)) | ((v39 == v15) << 9) | ((v38 == v15) << 10) | v37 | v17 | v20 | ((v22 == v15) << 17) | v24 | ((v26 == v15) << 19) | (v28 << 20) | v35 | v33 | ((result == v15) << 25);
  return result;
}

void _os_log_impl_dynamic(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, va_list a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v15[2] = 0;
  v15[0] = &v18;
  v15[1] = 0x40000000000;
  if (a4)
  {
    if (os_trace_blob_vaddf_CF_once != -1)
    {
      dispatch_once(&os_trace_blob_vaddf_CF_once, &__block_literal_global_437);
    }

    *__error() = a5;
    v10 = objc_autoreleasePoolPush();
    v11 = os_trace_blob_vaddf_CF__NSString;
    v12 = a4;
    v13 = [[v11 alloc] initWithFormat:v12 arguments:a6];

    os_trace_blob_adds_CF(v15, v13);
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    os_trace_blob_vaddf(v15, *(a1 + 40), a5, a6);
  }

  v16 = 136380675;
  v17 = v15[0];
  *(a1 + 40) = "%s";
  _os_log_impl_flatten_and_send(a1);
  v14 = *MEMORY[0x1E69E9840];
}

xpc_object_t _os_log_preference_option_ttl(uint64_t a1, char *a2)
{
  result = _os_log_preference_value(a1, a2, MEMORY[0x1E69E9EB0]);
  if (result)
  {
    LOBYTE(result) = xpc_int64_get_value(result);
  }

  return result;
}

xpc_object_t _os_log_preference_value(uint64_t a1, char *key, objc_class *a3)
{
  v6 = *(a1 + 8);
  if (!v6 || (v7 = xpc_dictionary_get_value(v6, key)) == 0 || (v8 = v7, object_getClass(v7) != a3))
  {
    if (*a1 && (value = xpc_dictionary_get_value(*a1, key)) != 0)
    {
      v10 = value;
      if (object_getClass(value) == a3)
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void _os_trace_logd_send()
{
  v0 = _os_trace_logd_pipe_copy(0);
  if (v0)
  {
    v1 = v0;
    if (xpc_pipe_simpleroutine() == 32)
    {
      v2 = _os_trace_logd_pipe_copy(v1);
      if (!v2)
      {
        return;
      }

      v1 = v2;
      xpc_pipe_simpleroutine();
    }

    xpc_release(v1);
  }
}

uint64_t _os_log_fmt_flatten_coder(uint64_t a1, void *a2, size_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v14 = objc_opt_class();
  class_getInstanceSize(v14);
  v15 = v26 - ((MEMORY[0x1EEE9AC00]() + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v15, v16);
  v17 = objc_constructInstance(v14, v15);
  v17[1] = a1;
  v17[3] = a6;
  v17[4] = a7;
  *(v17 + 40) = a4;
  v18 = a4 > 1;
  *(v17 + 214) = a5 != 0;
  v17[25] = a3;
  if (a5)
  {
    v18 = 1;
  }

  if (*a1)
  {
    v19 = 1;
  }

  else
  {
    v19 = *a1 & 2;
  }

  if (v18)
  {
    v20 = v19 | 0x100;
  }

  else
  {
    v20 = v19;
  }

  v21 = objc_autoreleasePoolPush();
  [a2 encodeWithOSLogCoder:v17 options:v20 maxLength:a3];
  objc_autoreleasePoolPop(v21);
  if ([v17 retainCount] != 1)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: A reference to the coder escaped";
    __break(1u);
  }

  if (v17[2] == v17 + 6)
  {
    *(v17 + 105) = *(a6 + 8);
    *(v17 + 104) = _os_log_fmt_flatten_masked_data(a1, a4, a5, a6, v17[6], *(v17 + 14), a3, v17 + 212);
    if (*(v17 + 34))
    {
      v22 = v17[6];
      v17[6] = 3954044928;
      *(v17 + 34) = 0;
      free(v22);
    }
  }

  else
  {
    *a1 = *a1 & 0xF | 0x30;
  }

  v23 = v17[26] & 0x7FFF | (*(v17 + 212) << 15);
  *(a1 + 2) = *(v17 + 105);
  *(a1 + 4) = v23;
  result = *(v17 + 104);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t os_trace_blob_adds_CF(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _fastCStringContents:1];
  if (v4)
  {
    v5 = os_trace_blob_addns(a1, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v6 = [v3 lengthOfBytesUsingEncoding:4];
    v12 = v6;
    v7 = *(a1 + 8);
    v8 = *(a1 + 12) - v7 - (*(a1 + 22) ^ 1);
    if (v6 > v8)
    {
      v9 = v6;
      os_trace_blob_grow(a1, v6);
      v7 = *(a1 + 8);
      v8 = *(a1 + 12) - v7 - (*(a1 + 22) ^ 1);
      if (v9 > v8)
      {
        *(a1 + 20) |= 2u;
      }
    }

    [v3 getBytes:*a1 + v7 maxLength:v8 usedLength:&v12 encoding:4 options:1 range:0 remainingRange:{objc_msgSend(v3, "length"), 0}];
    v5 = v12;
    v10 = *(a1 + 8) + v12;
    *(a1 + 8) = v10;
    if ((*(a1 + 22) & 1) == 0)
    {
      *(*a1 + v10) = 0;
    }
  }

  return v5;
}

void _os_log_preferences_merge(void *a1, xpc_object_t xdict, char *a3)
{
  if (a3)
  {
    _os_log_preferences_merge_category(a1, xdict, "DEFAULT-OPTIONS");

    _os_log_preferences_merge_category(a1, xdict, a3);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___os_log_preferences_merge_block_invoke;
    v6[3] = &__block_descriptor_tmp_302;
    v6[4] = a1;
    v6[5] = xdict;
    xpc_dictionary_apply(xdict, v6);
  }
}

uint64_t _os_trace_fdscandir_b(int a1, void *a2, uint64_t a3, void *a4)
{
  v7 = dup(a1);
  if (v7 == -1)
  {
    v23 = *__error();
    _os_assumes_log();
LABEL_25:
    *a2 = 0;
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  if (lseek(v7, 0, 0) == -1)
  {
    v24 = *__error();
    _os_assumes_log();
  }

  v9 = fdopendir(v8);
  if (v9)
  {
    v10 = v9;
    v26 = a2;
    while (1)
    {
      v11 = malloc_type_malloc(0x100uLL, 0x2004093837F09uLL);
      if (v11)
      {
        break;
      }

      _os_trace_temporary_resource_shortage();
    }

    v12 = v11;
    rewinddir(v10);
    v13 = 0;
    v14 = 32;
    while (1)
    {
      v15 = readdir(v10);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (!a3 || (*(a3 + 16))(a3, v15))
      {
        v17 = v16[9];
        while (1)
        {
          v18 = malloc_type_malloc(v17 + 22, 0xEBE9206BuLL);
          if (v18)
          {
            break;
          }

          _os_trace_temporary_resource_shortage();
        }

        v19 = v18;
        memcpy(v18, v16, v17 + 22);
        if (v13 >= v14)
        {
          v20 = malloc_type_realloc(v12, 16 * v14, 0x2004093837F09uLL);
          if (!v20)
          {
            free(v19);
            closedir(v10);
            _os_trace_scandir_free_namelist(v13, v12);
            *v26 = 0;
            return 0xFFFFFFFFLL;
          }

          v14 *= 2;
          v12 = v20;
        }

        *(v12 + v13++) = v19;
      }
    }

    closedir(v10);
    if (a4 && v13)
    {
      qsort_b(v12, v13, 8uLL, a4);
    }

    *v26 = v12;
    return v13;
  }

  v21 = *__error();
  if (close(v8) != -1)
  {
LABEL_24:
    *__error() = v21;
    goto LABEL_25;
  }

  v25 = *__error();
  result = *__error();
  if (v25 != 9)
  {
    _os_assumes_log();
    goto LABEL_24;
  }

  qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_1EB2AFEB0 = result;
  __break(1u);
  return result;
}

void _os_log_preferences_merge_category(void *a1, xpc_object_t xdict, char *key)
{
  dictionary = xpc_dictionary_get_dictionary(xdict, key);
  if (dictionary)
  {
    v6 = dictionary;
    v7 = xpc_dictionary_get_dictionary(a1, key);
    if (v7)
    {

      _os_log_preferences_apply_overrides(v7, v6);
    }

    else
    {

      xpc_dictionary_set_value(a1, key, v6);
    }
  }
}

void logDestructor()
{
  if (qword_1EB2B0028)
  {
    Resource = RTLogBufferGetResource(qword_1EB2B0028, 1);
    if (Resource)
    {
      *(Resource + 72) |= 1u;
    }

    v0 = vars8;
  }

  RTLogDisconnect();
}

void RTLogDisconnect()
{
  if (rt_globals[0])
  {
    if (qword_1EB2B0010)
    {
      xpc_connection_cancel(qword_1EB2B0010);
      xpc_release(qword_1EB2B0010);
      qword_1EB2B0010 = 0;
    }

    rt_globals[0] = 0;
  }
}

uint64_t _os_trace_rwptr_rdlock_wait(uint64_t result)
{
  v1 = result;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
LABEL_2:
  v3 = *v1;
  while (1)
  {
    v4 = v3;
    if (!v3)
    {
      return result;
    }

    if ((v3 & 0xFFFFFFFE) != v3)
    {
      atomic_compare_exchange_strong_explicit(v1, &v3, v3 & 0xFFFFFFFE, memory_order_relaxed, memory_order_relaxed);
      if (v3 != v4)
      {
        continue;
      }
    }

    v5 = v4 ^ v2;
    if ((v5 & 0xFFFFFFFE) == 0)
    {
      qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: trying to lock recursively";
      __break(1u);
LABEL_18:
      qword_1EB2AFE80 = "BUG IN LIBTRACE: ulock_wait() failed";
      qword_1EB2AFEB0 = v5;
      __break(1u);
      return result;
    }

    while (1)
    {
      result = __ulock_wait();
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_2;
      }

      result = __error();
      v5 = *result;
      if (*result != 4)
      {
        if (v5 > 0x3C || ((1 << v5) & 0x1000000000004001) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_2;
      }
    }
  }
}

void _os_trace_rwptr_cleanup(uint64_t a1, void (*a2)(void))
{
  v3 = *(a1 + 8);
  v4 = *v3;
  if (*v3)
  {
    do
    {
      v6 = *v4;
      a2();
      v4 = v6;
    }

    while (v6);
  }

  *v3 = 0;
  v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
  v8 = atomic_exchange_explicit(a1, 0, memory_order_release);
  if (v8 != v7)
  {

    _os_trace_rwptr_wrunlock_slow(a1, v7, v8);
  }
}

uint64_t ___os_log_matches_logical_expression_filter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _os_log_matches_filter(a3, *(a1 + 56), *(*(a1 + 32) + 8) + 24);
  v5 = 48;
  if (v4)
  {
    v5 = 40;
  }

  *(*(*(a1 + v5) + 8) + 24) = v4;
  return 1;
}

uint64_t _os_log_matches_filter(void *a1, uint64_t a2, uint64_t *a3)
{
  dictionary = xpc_dictionary_get_dictionary(a1, "logicalExp");
  if (!dictionary)
  {
    v11 = _os_log_simple_filter_subtype_matches_string(a1, "subsystem", *a2, a3);
    v12 = _os_log_simple_filter_subtype_matches_string(a1, "category", *(a2 + 8), a3);
    v13 = _os_log_simple_filter_subtype_matches_string(a1, "processImagePath", *(a2 + 16), a3);
    v14 = _os_log_simple_filter_subtype_matches_string(a1, "process", *(a2 + 24), a3);
    v15 = _os_log_simple_filter_subtype_matches_number(a1, "pid", *(a2 + 32), -1, a3);
    v10 = _os_log_simple_filter_subtype_matches_number(a1, "uid", *(a2 + 36), 0xFFFFFFFFLL, a3) | v15 | v14 | v13 | v12 | v11;
    return v10 & 1;
  }

  v7 = dictionary;
  array = xpc_dictionary_get_array(dictionary, "subfilters");
  if (!array)
  {
    goto LABEL_4;
  }

  v9 = array;
  if (object_getClass(array) != MEMORY[0x1E69E9E50] || !xpc_array_get_count(v9))
  {
    goto LABEL_4;
  }

  value = xpc_dictionary_get_value(v7, "operator");
  if (!value)
  {
    v19 = 2;
    goto LABEL_14;
  }

  v18 = xpc_int64_get_value(value);
  v19 = v18;
  if ((v18 - 1) >= 2)
  {
    if (!v18 && xpc_array_get_count(v9) == 1)
    {
      v19 = 0;
      goto LABEL_14;
    }

LABEL_4:
    v10 = 0;
    return v10 & 1;
  }

LABEL_14:
  v33 = 0;
  v34 = &v33;
  v35 = 0x2800000000;
  v36 = 0;
  v37 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 1;
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___os_log_matches_logical_expression_filter_block_invoke;
  applier[3] = &unk_1E77DB570;
  applier[4] = &v33;
  applier[5] = &v29;
  applier[6] = &v25;
  applier[7] = a2;
  xpc_array_apply(v9, applier);
  v20 = v34;
  v21 = *a3;
  if ((v19 - 1) >= 2)
  {
    *a3 = v34[4] | v21;
    a3[1] |= v20[3];
    v10 = *(v30 + 24) ^ 1;
  }

  else
  {
    v22 = a3[1] | v34[4];
    *a3 = v34[3] | v21;
    a3[1] = v22;
    if (v19 == 2)
    {
      v23 = v30;
    }

    else
    {
      v23 = v26;
    }

    v10 = *(v23 + 24);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  return v10 & 1;
}

void *_os_trace_mmap(int a1, size_t *a2)
{
  v4 = lseek(a1, 0, 2);
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_4;
  }

  v5 = v4;
  if (!v4)
  {
    v7 = 34;
    goto LABEL_6;
  }

  result = mmap(0, v4, 1, 8194, a1, 0);
  if (result + 1 <= 1)
  {
LABEL_4:
    v7 = *__error();
LABEL_6:
    v8 = __error();
    v5 = 0;
    result = 0;
    *v8 = v7;
  }

  *a2 = v5;
  return result;
}

uint64_t _os_trace_mmap_at(int a1, const char *a2, int a3, size_t *a4)
{
  v5 = openat(a1, a2, a3 | 0x1000004);
  if (v5 < 0)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = _os_trace_mmap(v5, a4);
  if (!v7)
  {
    v11 = *__error();
    if (close(v6) == -1)
    {
      v12 = *__error();
      result = *__error();
      if (v12 == 9)
      {
        goto LABEL_13;
      }

      _os_assumes_log();
    }

    *__error() = v11;
LABEL_8:
    v8 = 0;
    *a4 = 0;
    return v8;
  }

  v8 = v7;
  if (close(v6) != -1)
  {
    return v8;
  }

  v9 = *__error();
  result = *__error();
  if (v9 != 9)
  {
    _os_assumes_log();
    return v8;
  }

  qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_1EB2AFEB0 = result;
  __break(1u);
LABEL_13:
  qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_1EB2AFEB0 = result;
  __break(1u);
  return result;
}

uint64_t _os_log_simple_filter_subtype_matches_string(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a3 && (dictionary = xpc_dictionary_get_dictionary(a1, a2)) != 0)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ___os_log_simple_filter_subtype_matches_string_block_invoke;
    applier[3] = &unk_1E77DB598;
    applier[4] = &v10;
    applier[5] = a3;
    applier[6] = a4;
    xpc_dictionary_apply(dictionary, applier);
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t ___os_log_simple_filter_subtype_matches_string_block_invoke(void *a1, const char *a2, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  v6 = a1[5];
  if (value)
  {
    if (!strcasestr(v6, a2))
    {
      goto LABEL_3;
    }

LABEL_5:
    *(*(a1[4] + 8) + 24) = 1;
    v7 = a1[6];
    goto LABEL_6;
  }

  if (!strcmp(v6, a2))
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = (a1[6] + 8);
LABEL_6:
  *v7 |= value;
  return 1;
}

uint64_t _os_log_simple_filter_subtype_matches_number(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == a4 || (dictionary = xpc_dictionary_get_dictionary(a1, a2)) == 0)
  {
    v8 = 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ___os_log_simple_filter_subtype_matches_number_block_invoke;
    applier[3] = &unk_1E77DB5C0;
    applier[4] = &v11;
    applier[5] = a3;
    applier[6] = a5;
    xpc_dictionary_apply(dictionary, applier);
    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  return v8 & 1;
}

unint64_t _os_log_mask_bytes_size_for_unicode_codepoint_count_stop(_BYTE *a1, unint64_t a2, unint64_t a3, unint64_t *a4, int a5)
{
  v5 = 0;
  if (a2)
  {
    result = 0;
    if (a3)
    {
      result = 0;
      v5 = 0;
      while (1)
      {
        v8 = *a1;
        if (!*a1 || v8 == a5)
        {
          break;
        }

        if ((v8 & 0x80) != 0)
        {
          if ((v8 & 0xF8) == 0xF0)
          {
            v10 = 4;
          }

          else if ((v8 & 0xF0) == 0xE0)
          {
            v10 = 3;
          }

          else
          {
            if ((v8 & 0xE0) != 0xC0)
            {
              break;
            }

            v10 = 2;
          }

          if (v10 + result <= a2)
          {
            v11 = 1;
            while ((a1[v11] & 0xC0) == 0x80)
            {
              if (v10 == ++v11)
              {
                result += v10;
                goto LABEL_22;
              }
            }
          }

          break;
        }

        if (result < a2)
        {
          ++result;
          v10 = 1;
LABEL_22:
          ++v5;
          if (result < a2)
          {
            a1 += v10;
            if (v5 < a3)
            {
              continue;
            }
          }
        }

        break;
      }
    }
  }

  else
  {
    result = 0;
  }

  *a4 = v5;
  return result;
}

uint64_t _os_log_mask_create_device_digest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED3F7528 != -1)
  {
    dispatch_once(&qword_1ED3F7528, &__block_literal_global_164);
  }

  return _os_log_mask_create_digest(a1, a2, &qword_1ED3F7520, a3);
}

uint64_t _os_trace_prefsdir_path()
{
  if (_os_trace_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_paths_init_once, &__block_literal_global_290);
  }

  return _os_trace_preferences_path;
}

void *_os_trace_memdup(const void *a1, size_t size)
{
  while (1)
  {
    v4 = malloc_type_malloc(size, 0x253D2B3EuLL);
    if (v4)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return memcpy(v4, a1, size);
}

void _os_trace_scandir_free_namelist(int a1, char *a2)
{
  if (a1 >= 1)
  {
    v3 = a1 + 1;
    v4 = &a2[8 * a1 - 8];
    do
    {
      v5 = *v4--;
      free(v5);
      --v3;
    }

    while (v3 > 1);
  }

  free(a2);
}

void _os_log_impl_stream(uint64_t *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7)
{
  v14 = _os_trace_diagnosticd_pipe(0);
  if (v14)
  {
    v15 = v14;
    v16 = *a5;
    if ((*(*a5 + 20) & 2) == 0)
    {
      v34 = a2;
      v17 = a7;
      v18 = a3;
      v19 = a4;
      v20 = a5[1];
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v16 + 8);
      if (*(v16 + 12) - v23 - (*(v16 + 22) ^ 1u) < v22)
      {
        os_trace_blob_add_slow(v16, v21, v22);
        a4 = v19;
        a3 = v18;
        a7 = v17;
        a2 = v34;
      }

      else
      {
        memcpy((*v16 + v23), v21, v22);
        v24 = *(v16 + 8) + v22;
        *(v16 + 8) = v24;
        a4 = v19;
        a3 = v18;
        a7 = v17;
        a2 = v34;
        if ((*(v16 + 22) & 1) == 0)
        {
          *(*v16 + v24) = 0;
        }
      }
    }

    memset(v50, 0, sizeof(v50));
    if (a6 <= 8u && ((1 << a6) & 0x158) != 0)
    {
      v25 = a6 << 8;
    }

    else
    {
      v25 = bswap32(a6) >> 16;
    }

    v35 = v25;
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v26 = *a1;
    v27 = a1[1];
    v39 = a6;
    v40 = v26;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = v27;
    v45 = (a1[2] / 0x3E8uLL);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    *&v50[1] = a1[5];
    v28 = *a5;
    *&v50[3] = **a5;
    *&v50[5] = *(v28 + 8);
    v29 = a5[2];
    *&v50[7] = *v29;
    *&v50[9] = *(v29 + 8);
    if (a2 && ((v30 = *(a2 + 24)) != 0 ? (v31 = v30 + 4) : (v31 = 0), *&v50[11] = v31, v30))
    {
      v32 = v30 + 4 + *(v30 + 2);
    }

    else
    {
      v32 = 0;
    }

    *&v50[13] = v32;
    v50[15] = 0;
    LOBYTE(v50[16]) = a7;
    BYTE1(v50[16]) = (a5[9] & 0x10000000) != 0;
    v33 = a1[6];
    *&v50[17] = a1[7];
    *&v50[19] = v33;
    LOWORD(v50[21]) = 0;
    v51 = 0;
    _os_activity_stream_reflect(v15, &v35, a1[3], -3, a3, a4);
    xpc_release(v15);
  }
}

void *_os_trace_diagnosticd_pipe(uint64_t a1)
{
  if (client_has_mach_ports_disabled_once != -1)
  {
    dispatch_once(&client_has_mach_ports_disabled_once, &__block_literal_global_37);
  }

  if ((client_has_mach_ports_disabled_has_entitlement & 1) == 0)
  {
    os_unfair_lock_lock(&qword_1ED3F7538);
    v2 = qword_1ED3F7530;
    if (qword_1ED3F7530 != a1 || qword_1ED3F7530 == 0)
    {
      if (qword_1ED3F7530)
      {
        goto LABEL_12;
      }
    }

    else
    {
      xpc_release(qword_1ED3F7530);
      qword_1ED3F7530 = 0;
    }

    v2 = xpc_pipe_create();
    qword_1ED3F7530 = v2;
    if (!v2)
    {
LABEL_13:
      os_unfair_lock_unlock(&qword_1ED3F7538);
      return v2;
    }

LABEL_12:
    xpc_retain(v2);
    goto LABEL_13;
  }

  return 0;
}

void *_os_activity_stream_entry_encode_v2(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v61 = xpc_dictionary_create(0, 0, 0);
  v2 = *(a1 + 28);
  if (v2)
  {
    v3 = strnlen(*(a1 + 28), 0x1000uLL) + 17;
  }

  else
  {
    v3 = 16;
  }

  v4 = v3 + 16;
  v5 = *(a1 + 84);
  if (v5)
  {
    v6 = strnlen(v5, 0x1000uLL) + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  v8 = v6 + v4;
  v9 = *a1;
  if (*a1 > 1023)
  {
    if (v9 == 1024)
    {
      v12 = v8;
    }

    else if (v9 == 1536)
    {
      v17 = *(a1 + 212);
      if (v17)
      {
        v18 = strnlen(v17, 0x1000uLL) + 1;
      }

      else
      {
        v18 = 0;
      }

      v12 = v18 + v8;
      v7 = v8;
    }

    else
    {
      v12 = v8;
      v58 = 0;
      v59 = 0;
      v13 = 0;
      v60 = 0;
      v14 = 0;
      if (v9 != 2048)
      {
        goto LABEL_43;
      }
    }

    v21 = *(a1 + 140);
    if (v21)
    {
      v22 = strnlen(v21, 0x10000uLL) + 1;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 + v12;
    v13 = v22 + v12 + *(a1 + 156);
    v8 = v13 + *(a1 + 172);
    v24 = *(a1 + 180);
    if (v24)
    {
      v25 = v8 + strnlen(v24, 0x1000uLL);
      v26 = v8;
      v8 = v25 + 1;
    }

    else
    {
      v26 = 0;
    }

    v59 = v26;
    v60 = v23;
    v27 = *(a1 + 188);
    if (v27)
    {
      v58 = v8;
      v8 += strnlen(v27, 0x1000uLL) + 1;
    }

    else
    {
      v58 = 0;
    }

    v14 = v12;
  }

  else if (v9 == 513 || v9 == 515)
  {
    v15 = *(a1 + 140);
    if (v15)
    {
      v16 = strnlen(v15, 0x1000uLL) + 1;
    }

    else
    {
      v16 = 0;
    }

    v58 = 0;
    v59 = 0;
    v13 = 0;
    v60 = 0;
    v7 = 0;
    v14 = v8;
    v8 += v16;
  }

  else if (v9 == 768)
  {
    v10 = *(a1 + 140);
    if (v10)
    {
      v11 = strnlen(v10, 0x1000uLL) + 1;
    }

    else
    {
      v11 = 0;
    }

    v19 = v11 + v8;
    if (*(a1 + 148))
    {
      v58 = 0;
      v59 = 0;
      v13 = 0;
      v7 = 0;
      v20 = *(a1 + 156);
      v14 = v8;
      v8 = v20 + v19;
      if (!v20)
      {
        v19 = 0;
      }

      v60 = v19;
    }

    else
    {
      v58 = 0;
      v59 = 0;
      v13 = 0;
      v60 = 0;
      v7 = 0;
      v14 = v8;
      v8 = v19;
    }
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v13 = 0;
    v60 = 0;
    v14 = 0;
  }

LABEL_43:
  MEMORY[0x1EEE9AC00]();
  v28 = &v57 - ((v8 + 251) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 20);
  v30 = v28 + 236;
  if (v29)
  {
    *v30 = *v29;
    if (!v2)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  *v30 = 0;
  *(v28 + 244) = 0;
  if (v2)
  {
LABEL_45:
    strlcpy(v28 + 252, v2, v8 - 16);
  }

LABEL_46:
  v31 = *(a1 + 76);
  v32 = &v30[v3];
  if (v31)
  {
    *v32 = *v31;
  }

  else
  {
    *v32 = 0;
    *(v32 + 1) = 0;
  }

  v33 = v61;
  v34 = *(a1 + 84);
  if (v34)
  {
    strlcpy(&v30[v4], v34, v8 - v4);
  }

  *(a1 + 20) = 0;
  *(a1 + 28) = 16;
  *(a1 + 76) = v3;
  *(a1 + 84) = v4;
  v35 = *a1;
  if (*a1 > 1023)
  {
    if (v35 != 1024)
    {
      if (v35 == 1536)
      {
        v41 = *(a1 + 212);
        if (v41)
        {
          strlcpy(&v30[v7], v41, v8 - v7);
          *(a1 + 212) = v7;
        }
      }

      else if (v35 != 2048)
      {
        goto LABEL_78;
      }
    }

    v42 = *(a1 + 140);
    if (v42)
    {
      strlcpy(&v30[v14], v42, v8 - v14);
      *(a1 + 140) = v14;
    }

    v43 = v60;
    memcpy(&v30[v60], *(a1 + 148), *(a1 + 156));
    memcpy(&v30[v13], *(a1 + 164), *(a1 + 172));
    v44 = *(a1 + 180);
    v45 = v59;
    if (v44)
    {
      strlcpy(&v30[v59], v44, v8 - v59);
    }

    v46 = *(a1 + 188);
    v47 = v58;
    if (v46)
    {
      strlcpy(&v30[v58], v46, v8 - v58);
    }

    *(a1 + 148) = v43;
    *(a1 + 164) = v13;
    *(a1 + 180) = v45;
    *(a1 + 188) = v47;
  }

  else if (v35 == 513 || v35 == 515)
  {
    v40 = *(a1 + 140);
    if (v40)
    {
      strlcpy(&v30[v14], v40, v8 - v14);
      *(a1 + 140) = v14;
    }
  }

  else if (v35 == 768)
  {
    v36 = *(a1 + 140);
    if (v36)
    {
      strlcpy(&v30[v14], v36, v8 - v14);
      *(a1 + 140) = v14;
    }

    v37 = *(a1 + 148);
    if (v37)
    {
      v38 = *(a1 + 156);
      if (v38)
      {
        v39 = v60;
        memcpy(&v30[v60], v37, v38);
        *(a1 + 148) = v39;
      }
    }

    xpc_dictionary_set_value(v33, "payload", *(a1 + 164));
  }

LABEL_78:
  if (*(a1 + 132))
  {
    xpc_dictionary_set_BOOL(v33, "32bits", 1);
  }

  v48 = *(a1 + 208);
  *(v28 + 12) = *(a1 + 192);
  *(v28 + 13) = v48;
  *(v28 + 220) = *(a1 + 220);
  v49 = *(a1 + 144);
  *(v28 + 8) = *(a1 + 128);
  *(v28 + 9) = v49;
  v50 = *(a1 + 176);
  *(v28 + 10) = *(a1 + 160);
  *(v28 + 11) = v50;
  v51 = *(a1 + 80);
  *(v28 + 4) = *(a1 + 64);
  *(v28 + 5) = v51;
  v52 = *(a1 + 112);
  *(v28 + 6) = *(a1 + 96);
  *(v28 + 7) = v52;
  v53 = *(a1 + 16);
  *v28 = *a1;
  *(v28 + 1) = v53;
  v54 = *(a1 + 48);
  *(v28 + 2) = *(a1 + 32);
  *(v28 + 3) = v54;
  xpc_dictionary_set_data(v33, "entryData", &v57 - ((v8 + 251) & 0xFFFFFFFFFFFFFFF0), v8 + 236);
  v55 = *MEMORY[0x1E69E9840];
  return v33;
}

void _os_activity_stream_reflect(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v11 = xmmword_1ED3F74C0;
  v28[0] = 0;
  v28[1] = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2000000000;
  v27 = 0;
  *(a2 + 4) = getpid();
  *(a2 + 8) = qword_1ED3F7510;
  *(a2 + 16) = geteuid();
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 20) = v12;
  *(a2 + 28) = qword_1ED3F7508;
  *(a2 + 36) = voucher_get_activity_id();
  v13 = *a5 | (*(a5 + 2) << 32);
  if (*(a3 + 12) == 2)
  {
    *(a2 + 116) = v13;
  }

  else if (*(a5 + 1))
  {
    *(a2 + 116) = v13;
    v12 = *(a5 + 1);
  }

  else
  {
    if (!_dyld_get_image_uuid())
    {
      goto LABEL_22;
    }

    v14 = _os_trace_dsc_load_addr;
    if (_os_trace_dsc_load_addr <= a3)
    {
      if (_os_trace_dsc_size + _os_trace_dsc_load_addr <= a3)
      {
        v14 = 0;
      }

      v13 += v14;
    }

    *(a2 + 116) = v13 - a3;
    v12 = v28;
  }

  *(a2 + 76) = v12;
  v15 = *a6;
  if (*a6 >= 0)
  {
    v16 = v15 & 0x7FFFFFFF | (*(a6 + 4) << 31);
  }

  else
  {
    v16 = v15 & 0x7FFFFFFF | (*(a6 + 4) << 31) | 0x8000000000000000;
  }

  *(a2 + 124) = v16;
  v17 = dyld_image_path_containing_address();
  v18 = *(a2 + 92);
  *(a2 + 84) = v17;
  *(a2 + 68) = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  if (!v18)
  {
    gettimeofday((a2 + 92), 0);
  }

  if (!*(a2 + 108))
  {
    v25 = *(a2 + 92);
    memset(&v24, 0, sizeof(v24));
    localtime_r(&v25, &v24);
    tm_isdst = v24.tm_isdst;
    v20 = ((v24.tm_gmtoff * 0x7777777777777777) >> 64) - v24.tm_gmtoff;
    *(a2 + 108) = (v20 >> 5) + (v20 >> 63) + 60 * v24.tm_isdst;
    *(a2 + 112) = tm_isdst;
  }

  v21 = _os_activity_stream_entry_encode(a2, 2uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___os_activity_stream_reflect_block_invoke;
  block[3] = &unk_1E77DB2A8;
  block[5] = a1;
  block[6] = v21;
  block[4] = v26;
  dispatch_block_perform(DISPATCH_BLOCK_DETACHED, block);
  xpc_release(v21);
LABEL_22:
  _Block_object_dispose(v26, 8);
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t _os_activity_stream_entry_encode(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == 2)
  {
    v4 = _os_activity_stream_entry_encode_v2(result);
  }

  else
  {
    if (a2 != 1)
    {
      qword_1EB2AFE80 = "BUG IN LIBTRACE: Nope. Invalid stream object version";
      qword_1EB2AFEB0 = -1;
      __break(1u);
      return result;
    }

    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v4, "pid", v3[1]);
    xpc_dictionary_set_uint64(v4, "procid", *(v3 + 1));
    xpc_dictionary_set_uint64(v4, "uid", v3[4]);
    v5 = *(v3 + 5);
    if (v5)
    {
      xpc_dictionary_set_uuid(v4, "procuuid", v5);
    }

    v6 = *(v3 + 7);
    if (v6)
    {
      xpc_dictionary_set_string(v4, "procpath", v6);
    }

    v7 = *(v3 + 9);
    if (v7)
    {
      xpc_dictionary_set_uint64(v4, "aid", v7);
    }

    v8 = *(v3 + 11);
    if (v8)
    {
      xpc_dictionary_set_uint64(v4, "paid", v8);
    }

    xpc_dictionary_set_uint64(v4, "type", *v3);
    if (v3[33])
    {
      xpc_dictionary_set_BOOL(v4, "32bits", 1);
    }

    v9 = *(v3 + 23);
    if (v9)
    {
      xpc_dictionary_set_int64(v4, "timeGMTsec", v9);
      xpc_dictionary_set_int64(v4, "timeGMTusec", v3[25]);
    }

    v10 = v3[28];
    if (v10)
    {
      xpc_dictionary_set_int64(v4, "timezoneDSTflag", v10);
    }

    v11 = v3[27];
    if (v11)
    {
      xpc_dictionary_set_int64(v4, "timezoneMinutesWest", v11);
    }

    v12 = *v3;
    if (*v3 > 1023)
    {
      if (v12 != 1024)
      {
        if (v12 == 1536)
        {
          xpc_dictionary_set_uint64(v4, "signpostid", *(v3 + 51));
          v25 = *(v3 + 53);
          if (v25)
          {
            xpc_dictionary_set_string(v4, "signpostname", v25);
          }
        }

        else if (v12 != 2048)
        {
          goto LABEL_72;
        }
      }

      xpc_dictionary_set_uint64(v4, "traceid", *(v3 + 13));
      xpc_dictionary_set_uint64(v4, "thread", *(v3 + 17));
      xpc_dictionary_set_uint64(v4, "timestamp", *(v3 + 15));
      xpc_dictionary_set_uint64(v4, "offset", *(v3 + 29));
      xpc_dictionary_set_uint64(v4, "formatoffset", *(v3 + 31));
      xpc_dictionary_set_uint64(v4, "timeToLive", *(v3 + 200));
      v26 = *(v3 + 19);
      if (v26)
      {
        xpc_dictionary_set_uuid(v4, "imageuuid", v26);
      }

      v27 = *(v3 + 21);
      if (v27)
      {
        xpc_dictionary_set_string(v4, "imagepath", v27);
      }

      v28 = *(v3 + 35);
      if (v28)
      {
        xpc_dictionary_set_string(v4, "name", v28);
        v29 = *(v3 + 35);
        if (v29)
        {
          xpc_dictionary_set_string(v4, "formatstring", v29);
        }
      }

      v30 = *(v3 + 37);
      if (v30)
      {
        v31 = *(v3 + 39);
        if (v31)
        {
          xpc_dictionary_set_data(v4, "buffer", v30, v31);
        }
      }

      v32 = *(v3 + 41);
      if (v32)
      {
        v33 = *(v3 + 43);
        if (v33)
        {
          xpc_dictionary_set_data(v4, "privdata", v32, v33);
        }
      }

      v34 = *(v3 + 47);
      if (v34)
      {
        xpc_dictionary_set_string(v4, "category", v34);
      }

      v35 = *(v3 + 45);
      if (v35)
      {
        xpc_dictionary_set_string(v4, "subsystem", v35);
      }

      v24 = *(v3 + 201);
    }

    else
    {
      if (v12 == 513)
      {
        xpc_dictionary_set_uint64(v4, "traceid", *(v3 + 13));
        xpc_dictionary_set_uint64(v4, "thread", *(v3 + 17));
        xpc_dictionary_set_uint64(v4, "timestamp", *(v3 + 15));
        v18 = *(v3 + 35);
        if (v18)
        {
          xpc_dictionary_set_string(v4, "name", v18);
        }

        v19 = *(v3 + 19);
        if (v19)
        {
          xpc_dictionary_set_uuid(v4, "imageuuid", v19);
        }

        v20 = *(v3 + 21);
        if (v20)
        {
          xpc_dictionary_set_string(v4, "imagepath", v20);
        }

        xpc_dictionary_set_uint64(v4, "offset", *(v3 + 29));
        xpc_dictionary_set_uint64(v4, "formatoffset", *(v3 + 31));
        goto LABEL_72;
      }

      if (v12 != 515)
      {
        if (v12 == 768)
        {
          xpc_dictionary_set_uint64(v4, "traceid", *(v3 + 13));
          xpc_dictionary_set_uint64(v4, "thread", *(v3 + 17));
          xpc_dictionary_set_uint64(v4, "timestamp", *(v3 + 15));
          xpc_dictionary_set_uint64(v4, "offset", *(v3 + 29));
          xpc_dictionary_set_uint64(v4, "formatoffset", *(v3 + 31));
          xpc_dictionary_set_value(v4, "payload", *(v3 + 41));
          v13 = *(v3 + 19);
          if (v13)
          {
            xpc_dictionary_set_uuid(v4, "imageuuid", v13);
          }

          v14 = *(v3 + 21);
          if (v14)
          {
            xpc_dictionary_set_string(v4, "imagepath", v14);
          }

          v15 = *(v3 + 35);
          if (v15)
          {
            xpc_dictionary_set_string(v4, "name", v15);
          }

          v16 = *(v3 + 37);
          if (v16)
          {
            v17 = *(v3 + 39);
            if (v17)
            {
              xpc_dictionary_set_data(v4, "buffer", v16, v17);
            }
          }
        }

        goto LABEL_72;
      }

      xpc_dictionary_set_uint64(v4, "traceid", *(v3 + 13));
      xpc_dictionary_set_uint64(v4, "thread", *(v3 + 17));
      xpc_dictionary_set_uint64(v4, "timestamp", *(v3 + 15));
      xpc_dictionary_set_uint64(v4, "offset", *(v3 + 29));
      xpc_dictionary_set_uint64(v4, "formatoffset", *(v3 + 31));
      v21 = *(v3 + 19);
      if (v21)
      {
        xpc_dictionary_set_uuid(v4, "imageuuid", v21);
      }

      v22 = *(v3 + 21);
      if (v22)
      {
        xpc_dictionary_set_string(v4, "imagepath", v22);
      }

      v23 = *(v3 + 35);
      if (v23)
      {
        xpc_dictionary_set_string(v4, "name", v23);
      }

      v24 = *(v3 + 148);
    }

    xpc_dictionary_set_BOOL(v4, "persisted", v24);
  }

LABEL_72:
  if (v4)
  {
    xpc_dictionary_set_uint64(v4, "action", 6uLL);
    xpc_dictionary_set_uint64(v4, "version", a2);
  }

  return v4;
}

void ___os_activity_stream_reflect_block_invoke(void *a1)
{
  v2 = a1[5];
  while (1)
  {
    v3 = a1[6];
    v4 = xpc_pipe_simpleroutine();
    if (v4 != 32)
    {
      break;
    }

    if (v2 != a1[5])
    {
      xpc_release(v2);
    }

    v2 = _os_trace_diagnosticd_pipe(v2);
    if (!v2)
    {
      v5 = 32;
      goto LABEL_10;
    }
  }

  v5 = v4;
  if (v2 && v2 != a1[5])
  {
    xpc_release(v2);
  }

LABEL_10:
  *(*(a1[4] + 8) + 24) = v5;
}

void _os_log_impl_generate_crashlog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  if (!v6)
  {
    _os_log_impl_compose(*(a2 + 40), a3);
    v6 = *(a3 + 24);
  }

  v7 = *v6;
  v8 = strlen(*v6);
  v9 = v8 + 1;
  v10 = *(a1 + 24);
  if (v10)
  {
    v10 = *(v10 + 3) + *(v10 + 2);
  }

  v11 = v8 + v10 + 21;
  if (v11 >= 0x801 && v9 > 2028 - v10)
  {
    *&v7[-v10 + 2024] = 3026478;
    v11 = 2048;
    v9 = 2028 - v10;
  }

  while (1)
  {
    v12 = malloc_type_malloc(v11, 0x48B89F86uLL);
    if (v12)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v13 = v12;
  *v12 = 1;
  *(v12 + 12) = 0;
  *(v12 + 4) = 0;
  v14 = v12 + 20;
  v15 = *(a1 + 24);
  if (v15)
  {
    *(v12 + 2) = 20;
    v16 = *(v15 + 2);
    if (strlcpy(v12 + 20, (v15 + 4), v16) + 1 != v16)
    {
LABEL_19:
      _os_assert_log();
      _os_crash();
      __break(1u);
      goto LABEL_20;
    }

    v17 = &v14[v16];
    v13[3] = v17 - v13;
    v18 = *(a1 + 24);
    v19 = *(v18 + 3);
    if (strlcpy(v17, (v18 + *(v18 + 2) + 4), v19) + 1 != v19)
    {
LABEL_20:
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    v14 = &v17[v19];
  }

  v13[4] = v14 - v13;
  if (v9 != strlcpy(v14, **(a3 + 24), v11 - (v14 - v13)) + 1)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  v20 = *(a2 + 40);
  v21 = *(a1 + 60) >> 14;
  os_fault_with_payload();

  free(v13);
}

uint64_t _os_trace_getxattr_at(int a1, const char *a2, int a3, const char *a4, void *a5, size_t a6)
{
  v9 = openat(a1, a2, a3 | 0x1000004);
  if (v9 < 0)
  {
    return -1;
  }

  v10 = v9;
  v11 = fgetxattr(v9, a4, a5, a6, 0, 0);
  if (v11 == -1)
  {
    v15 = *__error();
    if (close(v10) == -1)
    {
      v17 = *__error();
      v14 = *__error();
      if (v17 == 9)
      {
        goto LABEL_13;
      }

      _os_assumes_log();
    }

    *__error() = v15;
    return -1;
  }

  v12 = v11;
  if (close(v10) == -1)
  {
    v13 = *__error();
    v14 = *__error();
    if (v13 != 9)
    {
      _os_assumes_log();
      return v12;
    }

    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_1EB2AFEB0 = v14;
    __break(1u);
LABEL_13:
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_1EB2AFEB0 = v14;
    __break(1u);
    JUMPOUT(0x1A7AC9ED4);
  }

  return v12;
}

uint64_t amfi_check_dyld_policy_for_pid(int a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  v7 = -1431655766;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = a2;
  v5[2] = v5;
  v6 = a1;
  result = __sandbox_ms();
  if (result)
  {
    result = *__error();
  }

  *a3 = v5[0];
  return result;
}

Class __os_log_fmt_object_for_data_block_invoke()
{
  os_log_fmt_object_for_data__NSString = objc_getClass("NSString");
  os_log_fmt_object_for_data__NSNumber = objc_getClass("NSNumber");
  result = objc_getClass("NSData");
  os_log_fmt_object_for_data__NSData = result;
  return result;
}

unint64_t _os_log_fmt_plugin_annotated(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, unsigned int a6, char a7)
{
  v27 = *MEMORY[0x1E69E9840];
  plugin = os_log_fmt_get_plugin(*(a3 + 32), *(a3 + 14));
  v15 = plugin;
  if (plugin)
  {
    if (!plugin[3])
    {
      goto LABEL_32;
    }

    v16 = *a4;
    if (os_log_fmt_object_for_data_onceToken != -1)
    {
      dispatch_once(&os_log_fmt_object_for_data_onceToken, &__block_literal_global);
    }

    v17 = (*(a3 + 8) & 0x10) != 0 ? COERCE_DOUBLE(os_log_fmt_read_scalar(a3, a5, a6)) : 0.0;
    switch(*(a3 + 10))
    {
      case 1:
        v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithChar:SLOBYTE(v17)];
        break;
      case 2:
        v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithUnsignedChar:LOBYTE(v17)];
        break;
      case 3:
        v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithShort:SLOWORD(v17)];
        break;
      case 4:
        v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithUnsignedShort:LOWORD(v17)];
        break;
      case 5:
      case 7:
      case 8:
        goto LABEL_21;
      case 6:
        goto LABEL_17;
      case 9:
        if (a2 == 4)
        {
LABEL_21:
          v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithInt:*&v17];
        }

        else
        {
          if (a2 == 8)
          {
            goto LABEL_20;
          }

LABEL_22:
          v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithLongLong:*&v17];
        }

        break;
      case 0xA:
      case 0xD:
        if (a2 == 4)
        {
LABEL_17:
          v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithUnsignedInt:*&v17];
        }

        else if (a2 == 8)
        {
LABEL_20:
          v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithLong:*&v17];
        }

        else
        {
LABEL_15:
          v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithUnsignedLongLong:*&v17];
        }

        break;
      case 0xB:
        goto LABEL_22;
      case 0xC:
        goto LABEL_15;
      case 0xE:
      case 0xF:
        v18 = [[os_log_fmt_object_for_data__NSNumber alloc] initWithDouble:v17];
        break;
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
        if ((v16 & 0xF0) == 0x30)
        {
          v18 = [[os_log_fmt_object_for_data__NSData alloc] initWithBytes:a5 length:a6];
        }

        else if (a6)
        {
          v18 = [[os_log_fmt_object_for_data__NSString alloc] initWithBytes:a5 length:a6 - 1 encoding:4];
        }

        else
        {
          v18 = objc_alloc_init(os_log_fmt_object_for_data__NSString);
        }

        break;
      default:
        goto LABEL_32;
    }

    v19 = v18;
    if (v18)
    {
      v25 = 1;
      BYTE4(v25) = a7;
      v20 = *(a3 + 40);
      *(a3 + 16);
      __strlcpy_chk();
      v21 = (*(v15 + 24))(v26, v19, &v25);
      v22 = [v21 string];
      v15 = v22 != 0;
      if (v22)
      {
        os_trace_blob_adds_CF(a1, v22);
      }
    }

    else
    {
LABEL_32:
      v15 = 0;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

void *os_log_fmt_get_plugin(const char *a1, size_t a2)
{
  if (_dyld_dlsym_blocked())
  {
    return 0;
  }

  if (qword_1ED3F77B8 != -1)
  {
    dispatch_once_f(&qword_1ED3F77B8, 0, _os_trace_formatters_list);
  }

  v4 = qword_1ED3F77B0;
  if (!qword_1ED3F77B0)
  {
    return 0;
  }

  v5 = 0;
  v6 = _formatters;
  while (1)
  {
    v7 = (v5 + v4) >> 1;
    v8 = (v6 + 40 * v7);
    v9 = v8[1];
    v10 = strncasecmp(a1, v9, a2);
    if (!v10)
    {
      break;
    }

LABEL_9:
    if (v10 >= 0)
    {
      v5 = v7 + 1;
    }

    else
    {
      v4 = (v5 + v4) >> 1;
    }

    if (v5 >= v4)
    {
      return 0;
    }
  }

  if (v9[a2])
  {
    v10 = -v9[a2];
    goto LABEL_9;
  }

  if (*v8 != -1)
  {
    dispatch_once_f((v6 + 40 * v7), (v6 + 40 * v7), _os_trace_load_formatter);
  }

  return v8;
}

void *_os_trace_load_formatter(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = (&plugin_dirs)[2 * *(a1 + 16)];
  snprintf(__str, 0x400uLL, "%sliblog_%s.dylib", v2, *(a1 + 8));
  result = dlopen(__str, 6);
  *(a1 + 16) = result;
  if (result)
  {
    *(a1 + 24) = dlsym(result, "OSLogCopyFormattedString");
    result = dlsym(*(a1 + 16), "OSStateCreateStringWithData");
    *(a1 + 32) = result;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void _os_trace_formatters_list()
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v0 = getenv("OS_ACTIVITY_FORMATTER");
  if (!v0 || strcmp(v0, "disable"))
  {
    v1 = 0;
    v2 = 1;
    do
    {
      v3 = v2;
      v4 = opendir((&plugin_dirs)[2 * v1]);
      v5 = v4;
      if (v4)
      {
        for (i = readdir(v4); i; i = readdir(v5))
        {
          if (i->d_type == 8)
          {
            v7 = _os_trace_formatter_record(v19[3], i->d_name, v1, v15 + 3, v11 + 3);
            v19[3] = v7;
          }
        }

        closedir(v5);
      }

      v2 = 0;
      v1 = 1;
    }

    while ((v3 & 1) != 0);
    v22 = 0;
    v23 = 0;
    if (_dyld_get_shared_cache_uuid())
    {
      dyld_shared_cache_iterate_text();
    }

    qsort_b(v19[3], v15[3], 0x28uLL, &__block_literal_global_62);
    v8 = v15[3];
    _formatters = v19[3];
    qword_1ED3F77B0 = v8;
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A7ACA934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

char *_os_trace_formatter_record(char *a1, char *__s1, uint64_t a3, uint64_t *a4, void *a5)
{
  if (!strncmp(__s1, "liblog_", 7uLL) && !strchr(__s1, 47))
  {
    v11 = strrchr(__s1, 46);
    if (v11)
    {
      v12 = v11;
      if (!strcmp(v11, ".dylib"))
      {
        v13 = strndup(__s1 + 7, v12 - (__s1 + 7));
        v14 = *a4;
        if (*a4)
        {
          v15 = 8;
          v16 = *a4;
          while (strcasecmp(*&a1[v15], v13))
          {
            v15 += 40;
            if (!--v16)
            {
              goto LABEL_10;
            }
          }

          free(v13);
        }

        else
        {
LABEL_10:
          if (v14 == *a5)
          {
            *a5 = v14 + 8;
            while (1)
            {
              v17 = malloc_type_realloc(a1, 40 * (v14 + 8), 0x10900409268F270uLL);
              if (v17)
              {
                break;
              }

              _os_trace_temporary_resource_shortage();
            }

            v14 = *a4;
            a1 = v17;
          }

          *a4 = v14 + 1;
          v18 = &a1[40 * v14];
          *v18 = 0;
          *(v18 + 1) = v13;
          *(v18 + 3) = 0;
          *(v18 + 4) = 0;
          *(v18 + 2) = a3;
        }
      }
    }
  }

  return a1;
}

char *___os_trace_formatters_list_block_invoke(char *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = &(&plugin_dirs)[2 * v4];
    if (*(v7 + 8) != 1 || (v3[56] & 1) == 0)
    {
      v8 = *v7;
      v9 = strlen(*v7);
      v10 = *(a2 + 40);
      result = strncmp(v10, v8, v9);
      if (!result)
      {
        result = _os_trace_formatter_record(*(*(*(v3 + 4) + 8) + 24), &v10[v9], v4, (*(*(v3 + 5) + 8) + 24), (*(*(v3 + 6) + 8) + 24));
        *(*(*(v3 + 4) + 8) + 24) = result;
      }
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t _os_trace_macho_for_each_slice(_DWORD *a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 4)
  {
    return 88;
  }

  v7 = *a1;
  result = 88;
  if (v7 > -805638659)
  {
    if (v7 != -17958193)
    {
      if (v7 == -17958194)
      {
LABEL_14:
        if (a2 < 0x1C)
        {
          return result;
        }

        goto LABEL_15;
      }

      if (v7 != -805638658)
      {
        return result;
      }
    }

    if (a2 < 0x20)
    {
      return result;
    }

LABEL_15:
    v8 = *(a3 + 16);

    return v8(a3, a1, a2);
  }

  switch(v7)
  {
    case -1095041334:
      if (a2 < 8)
      {
        return result;
      }

      v9 = bswap32(a1[1]);
      v10 = 1;
      break;
    case -889275714:
      if (a2 < 8)
      {
        return result;
      }

      v10 = 0;
      v9 = a1[1];
      break;
    case -822415874:
      goto LABEL_14;
    default:
      return result;
  }

  v11 = 20 * v9;
  if (20 * v9 == v11 && a2 - 8 >= v11)
  {
    v13 = v9;
    if (!v9)
    {
      return 0;
    }

    v14 = a1 + 5;
    for (i = 1; ; ++i)
    {
      LODWORD(v16) = *(v14 - 1);
      v17 = bswap32(v16);
      v16 = v10 ? v17 : v16;
      if (a2 < v16)
      {
        break;
      }

      v18 = bswap32(*v14);
      v19 = v10 ? v18 : *v14;
      if (a2 - v16 < v19)
      {
        break;
      }

      result = (*(a3 + 16))(a3, a1 + v16);
      if (result)
      {
        v20 = 1;
      }

      else
      {
        v20 = i >= v13;
      }

      v14 += 5;
      if (v20)
      {
        return result;
      }
    }

    return 88;
  }

  return result;
}

void _os_trace_mh_map_cleanup(void *a1)
{
  if (*(a1 + 12) == 1)
  {
    free(a1);
  }
}

uint64_t RTLogRingBufferInit(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  if (!a1 || !a2 || !a3 || !a4)
  {
    __assert_rtn("RTLogRingBufferInit", "ringbuffer.c", 96, "out_ring_buffer && size_buffer && msg_part_buffer && data_buffer");
  }

  if (a5 && a6)
  {
    *a1 = a5;
    *(a1 + 3) = a3;
    *(a1 + 4) = a4;
    *(a1 + 1) = a6;
    *(a1 + 2) = a2 + 16;
    *a2 = *a1;
    atomic_store(a5 + 1, (a2 + 16));
    atomic_store(*a1 + 1, *(a1 + 2));
    bzero(*(a1 + 3), 4 * *a1);
    return 0;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t RTLogRingBufferWriteWithCallback(unsigned int *a1, void (*a2)(void *, uint64_t), unint64_t a3, uint64_t a4)
{
  if (!a1 || !a2)
  {
    __assert_rtn("RTLogRingBufferWriteWithCallback", "ringbuffer.c", 133, "ring && callback");
  }

  v18 = 0;
  v5 = *(a1 + 1);
  if (v5 * *a1 >= a3)
  {
    if (v5 == a3)
    {
      LODWORD(v7) = 1;
    }

    else
    {
      v7 = (a3 + v5 - 1) / v5;
    }

    add_explicit = atomic_fetch_add_explicit(*(a1 + 2), v7, memory_order_relaxed);
    v9 = *(a1 + 4);
    v10 = *a1;
    v11 = (*a1 - 1) & add_explicit;
    v12 = *(a1 + 1);
    v17[0] = v9 + v12 * v11;
    if (v11 + v7 <= v10)
    {
      v14 = 0;
    }

    else
    {
      v13 = v12 * (v10 - v11);
      v18 = v9;
      v14 = a3 - v13;
      a3 = v13;
    }

    v17[1] = a3;
    v19 = v14;
    if (v7 >= 2)
    {
      v15 = v7 - 1;
      v16 = add_explicit + 1;
      do
      {
        *(*(a1 + 3) + 4 * ((*a1 - 1) & v16++)) = add_explicit;
        --v15;
      }

      while (v15);
    }

    a2(v17, a4);
    result = 0;
    atomic_store(add_explicit, (*(a1 + 3) + 4 * ((*a1 - 1) & add_explicit)));
  }

  else
  {
    *__error() = 28;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t RTLogRingBufferWriteMessage(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    a3 = 0;
    v4 = (a2 + 8);
    v5 = v3;
    do
    {
      v6 = *v4;
      v4 += 2;
      a3 += v6;
      --v5;
    }

    while (v5);
  }

  v8[0] = a2;
  v8[1] = v3;
  return RTLogRingBufferWriteWithCallback(a1, messageWriteCallback, a3, v8);
}

void *messageWriteCallback(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = a2[1];
  if (result[3])
  {
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v8 = *result;
      v7 = result[1];
      do
      {
        v9 = *a2 + v5;
        v10 = *v9;
        v11 = *(v9 + 8);
        if (v11 >= v7)
        {
          memcpy(v8, v10, v7);
          v8 = v3[2];
          result = memcpy(v8, (*(*a2 + v5) + v7), v11 - v7);
          v7 = v3[3];
        }

        else
        {
          result = memcpy(v8, v10, *(v9 + 8));
          v8 += v11;
          v7 -= v11;
        }

        ++v6;
        v5 += 16;
      }

      while (v6 < a2[1]);
    }
  }

  else if (v4)
  {
    v12 = 0;
    v13 = 0;
    v14 = *result;
    v15 = *a2;
    do
    {
      result = memcpy(v14, *(v15 + v12), *(v15 + v12 + 8));
      v15 = *a2;
      v14 += *(*a2 + v12 + 8);
      ++v13;
      v12 += 16;
    }

    while (v13 < a2[1]);
  }

  return result;
}

uint64_t RTLogRingBufferReadAt(uint64_t a1, void (*a2)(void), uint64_t a3, int *a4, _DWORD *a5)
{
  v5 = *a1;
  if (!*a1)
  {
    __assert_rtn("RTLogRingBufferReadAt", "ringbuffer.c", 280, "seg_count > 0");
  }

  v9 = **(a1 + 16);
  if (v9 - *a4 <= v5)
  {
    explicit = atomic_load_explicit((*(a1 + 24) + 4 * (*a4 & (v5 - 1))), memory_order_acquire);
    *a5 = 0;
    v10 = *a4;
    if ((explicit - *a4) < 0)
    {
      return 0;
    }
  }

  else
  {
    *a5 = v9 - *a4 - v5;
    v10 = v9 - v5;
    *a4 = v9 - v5;
    while (1)
    {
      explicit = atomic_load_explicit((*(a1 + 24) + 4 * ((*a1 - 1) & v10)), memory_order_acquire);
      if (explicit == *a4)
      {
        break;
      }

      v10 = *a4 + 1;
      *a4 = v10;
      if (v10 - v9 >= 0)
      {
        goto LABEL_10;
      }
    }

    v10 = explicit;
  }

LABEL_10:
  if (v10 == v9)
  {
    return 0;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32) + v13 * ((*a1 - 1) & v10);
  *a4 = v10 + 1;
  for (i = (v14 + 4 * ((*a1 - 1) & (v10 + 1))); ; i = (*(a1 + 24) + 4 * ((*a1 - 1) & v20)))
  {
    v17 = atomic_load_explicit(i, memory_order_acquire);
    if (explicit != v17)
    {
      break;
    }

    v18 = *a4;
    if (*a4 - v9 >= 0)
    {
      v17 = explicit;
      break;
    }

    if (((*a1 - 1) & v18) == 0)
    {
      a2();
      v13 = 0;
      v19 = *(a1 + 32);
      v18 = *a4;
    }

    v13 += *(a1 + 8);
    v20 = v18 + 1;
    *a4 = v20;
  }

  a2();
  return (v17 - (explicit + v5)) >> 31;
}

BOOL RTLogRingBufferIterate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(uint64_t, uint64_t))
{
  if (!a1 || !a3 || !a5)
  {
    __assert_rtn("RTLogRingBufferIterate", "ringbuffer.c", 380, "ring && buffer && callback");
  }

  v12 = atomic_load_explicit(*(a1 + 16), memory_order_acquire) - *a1;
  v10 = **(a1 + 16);
  while (1)
  {
    result = RTLogRingBufferIterateFrom(a1, &v12, a2, a3, a4, 0, a5);
    if (result || (v12 - v10) >= 0)
    {
      break;
    }

    ++v12;
  }

  return result;
}

BOOL RTLogRingBufferIterateFrom(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), unsigned int (*a7)(uint64_t, uint64_t))
{
  if (!a1 || !a2 || !a4 || !a7)
  {
    __assert_rtn("RTLogRingBufferIterateFrom", "ringbuffer.c", 431, "ring && offset && buffer && callback");
  }

  v14 = *a2;
  v15 = **(a1 + 16);
  v18 = 0;
  while (1)
  {
    v17[0] = a4;
    v17[1] = 0;
    v17[2] = a5;
    if ((RTLogRingBufferReadAt(a1, writeSegmentsToBuffer, v17, a2, &v18) & 1) == 0)
    {
      return 0;
    }

    if (a6)
    {
      if (v18)
      {
        a6(a4, a3);
      }
    }

    if (!a7(a4, a3))
    {
      break;
    }

    if (*a2 - v15 >= 0)
    {
      return *a2 != v14;
    }
  }

  return 1;
}

void *writeSegmentsToBuffer(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  if (*(a4 + 16) - v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(a4 + 16) - v5;
  }

  result = memcpy((*a4 + v5), a2, v6);
  *(a4 + 8) += v6;
  return result;
}

uint64_t RTLogRingBufferCreateManaged(uint64_t a1, unsigned int *a2, int a3, uint64_t a4)
{
  if (!a1 || !a2)
  {
    __assert_rtn("RTLogRingBufferCreateManaged", "ringbuffer.c", 462, "ring && data");
  }

  if (a3 && a4 && (a3 & (a3 - 1)) == 0)
  {
    v4 = 0;
    *a1 = a3;
    *(a1 + 8) = a4;
    *(a1 + 16) = a2;
    *(a1 + 24) = a2 + 1;
    *(a1 + 32) = (&a2[a3 + 2] + 3) & 0xFFFFFFFFFFFFFFF8;
    atomic_store(a3 + 1, a2);
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t RTLogRingBufferWriteBuffer(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  if (!a1 || !a2)
  {
    __assert_rtn("RTLogRingBufferWriteBuffer", "ringbuffer.c", 488, "ring && buffer");
  }

  v4[0] = a2;
  v4[1] = a3;
  return RTLogRingBufferWriteWithCallback(a1, flatWriteCallback, a3, v4);
}

void *flatWriteCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    memcpy(*a1, *a2, *(a1 + 8));
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = (*a2 + *(a1 + 8));
  }

  else
  {
    v4 = *a1;
    v6 = *a2;
    v5 = *(a2 + 8);
  }

  return memcpy(v4, v6, v5);
}

uint64_t RTLogRingBufferGetSegmentCount(unsigned int *a1)
{
  if (!a1)
  {
    __assert_rtn("RTLogRingBufferGetSegmentCount", "ringbuffer.c", 499, "ring");
  }

  return *a1;
}

uint64_t RTLogRingBufferGetSegmentSize(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("RTLogRingBufferGetSegmentSize", "ringbuffer.c", 506, "ring");
  }

  return *(a1 + 8);
}

uint64_t RTLogRingBufferJoinManaged(uint64_t a1, unsigned int *a2, uint64_t a3, int8x8_t a4)
{
  if (!a1 || !a2 || !a3)
  {
    __assert_rtn("RTLogRingBufferJoinManaged", "ringbuffer.c", 515, "ring && size && data");
  }

  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  if (*(a2 + 1))
  {
    a4.i32[0] = *a2;
    v5 = vcnt_s8(a4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.i32[0] <= 1u)
    {
      *a1 = *a2;
      v6 = *a2;
      *(a1 + 16) = a3;
      *(a1 + 24) = a3 + 4;
      *(a1 + 32) = (a3 + 4 + 4 * v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      return 1;
    }
  }

  return v4;
}

uint64_t RTLogBufferInitialize(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("RTLogBufferInitialize", "oslogbuffer.c", 36, "buffer");
  }

  if (a2 <= 0x1AF)
  {
    __assert_rtn("RTLogBufferInitialize", "oslogbuffer.c", 38, "size >= LOGUTIL_ROUNDUP(sizeof(RTLogBufferHeader), RTLOG_BUFFER_ALIGN)");
  }

  result = __strlcpy_chk();
  if (result != 31)
  {
    __assert_rtn("RTLogBufferInitialize", "oslogbuffer.c", 45, "(len + 1) == RTLOG_BUFFER_HEADER_MARKER_LENGTH");
  }

  *(a1 + 32) = 32;
  *(a1 + 40) = 5;
  *(a1 + 48) = a2;
  return result;
}

uint64_t RTLogBufferCheckStatus(char *__s1)
{
  if (!__s1)
  {
    __assert_rtn("RTLogBufferCheckStatus", "oslogbuffer.c", 56, "buffer");
  }

  if (*(__s1 + 16) != 32 || strncmp(__s1, "[==========LOGBUFFER==========]", 0x1FuLL))
  {
    return 2;
  }

  if (*(__s1 + 5) != 5)
  {
    return 1;
  }

  if (*(__s1 + 8) <= 0xFuLL)
  {
    return 0;
  }

  return 3;
}

char *RTLogBufferGetHeader(char *a1)
{
  if (!a1)
  {
    __assert_rtn("RTLogBufferGetHeader", "oslogbuffer.c", 78, "buffer");
  }

  if (RTLogBufferCheckStatus(a1))
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

uint64_t RTLogBufferGetResource(uint64_t a1, int a2)
{
  if (!a1)
  {
    __assert_rtn("RTLogBufferGetResource", "oslogbuffer.c", 90, "buffer");
  }

  if (RTLogBufferCheckStatus(a1))
  {
    return 0;
  }

  v5 = *(a1 + 64);
  if (!v5)
  {
    return 0;
  }

  for (i = a1 + 72; *i != a2; i += 24)
  {
    if (!--v5)
    {
      return 0;
    }
  }

  v7 = *(i + 8);
  if (*(a1 + 48) >= v7)
  {
    return a1 + v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RTLogBufferGetResourceSize(uint64_t a1, int a2)
{
  if (!a1)
  {
    __assert_rtn("RTLogBufferGetResourceSize", "oslogbuffer.c", 108, "buffer");
  }

  if (RTLogBufferCheckStatus(a1))
  {
    return 0;
  }

  v5 = *(a1 + 64);
  if (!v5)
  {
    return 0;
  }

  for (i = a1 + 72; *i != a2; i += 24)
  {
    if (!--v5)
    {
      return 0;
    }
  }

  return *(i + 16);
}

char *RTLogBufferAllocateResource(void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    __assert_rtn("RTLogBufferAllocateResource", "oslogbuffer.c", 129, "buffer");
  }

  v3 = (a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = a1[8];
  if (!v4)
  {
    v5 = a1[6];
    if (v3 + 432 <= v5)
    {
      v6 = 432;
      goto LABEL_8;
    }

LABEL_14:
    __assert_rtn("RTLogBufferAllocateResource", "oslogbuffer.c", 137, "offset + aligned_size <= header->RTLogBufferSize");
  }

  v5 = a1[6];
  v6 = (a1[3 * v4 + 7] + a1[3 * v4 + 8] + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 + v3 > v5)
  {
    goto LABEL_14;
  }

  if (v4 >= 0xF)
  {
    __assert_rtn("RTLogBufferAllocateResource", "oslogbuffer.c", 140, "header->catalog.count < RTLOG_RESOURCE_COUNT");
  }

LABEL_8:
  v7 = &a1[3 * v4];
  *(v7 + 18) = a2;
  v7[10] = v6;
  v7[11] = v3;
  a1[7] += v3;
  a1[8] = v4 + 1;
  if (v5 >= v6)
  {
    result = a1 + v6;
  }

  else
  {
    result = 0;
  }

  if ((result & 7) != 0)
  {
    __assert_rtn("RTLogBufferAllocateResource", "oslogbuffer.c", 151, "(uint64_t)ptr % RTLOG_BUFFER_ALIGN == 0");
  }

  return result;
}

void *RTLogBufferAddResource(void *a1, int a2, const void *a3, size_t a4)
{
  if (!a1 || !a3)
  {
    __assert_rtn("RTLogBufferAddResource", "oslogbuffer.c", 162, "buffer && base");
  }

  Resource = RTLogBufferAllocateResource(a1, a2, a4);
  if (!Resource)
  {
    __assert_rtn("RTLogBufferAddResource", "oslogbuffer.c", 164, "dest");
  }

  return memcpy(Resource, a3, a4);
}

unint64_t RTLogBufferRequiredStorageSize(uint64_t *a1, unint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 <= 0xE)
  {
    v3 = a2;
    memset(v10, 0, sizeof(v10));
    v9 = 0u;
    memset(v8, 0, 48);
    v8[3] = 0xFFFFFFFFuLL;
    if (a2)
    {
      do
      {
        v5 = *a1++;
        RTLogBufferAllocateResource(v8, 0, v5);
        --v3;
      }

      while (v3);
      v6 = v9 - 1;
    }

    else
    {
      v6 = -1;
    }

    result = (*(v10 + 3 * v6) + *(v10 + 3 * v6 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RTLogBufferIterate(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    __assert_rtn("RTLogBufferIterate", "oslogbuffer.c", 192, "buffer");
  }

  if (!a2)
  {
    __assert_rtn("RTLogBufferIterate", "oslogbuffer.c", 193, "callback");
  }

  result = RTLogBufferCheckStatus(a1);
  if (!result && *(a1 + 64))
  {
    v7 = 0;
    v8 = a1 + 72;
    do
    {
      result = a2(v8, a3);
      ++v7;
      v8 += 24;
    }

    while (v7 < *(a1 + 64));
  }

  return result;
}

unint64_t transport_ringbuffer_add_tracepoint(char a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  RTLogConnect();
  v16 = getpid();
  v17 = v16;
  v18 = WORD1(a3) & 0xFFEF;
  v19 = a6 + 8;
  if (v16)
  {
    v18 = WORD1(a3);
  }

  else
  {
    v19 = a6;
    v17 = 0;
  }

  if ((a3 & 0x100000) != 0)
  {
    v20 = v18;
  }

  else
  {
    v19 = a6;
    v17 = 0;
    v20 = WORD1(a3);
  }

  v21 = v19 + 4;
  if (a7)
  {
    v22 = v20 | 0x100;
  }

  else
  {
    v21 = v19;
    v22 = v20;
  }

  v23 = a7 + v21 + 40;
  if (v23 >= 0xFF1)
  {
    abort();
  }

  v31 = a4;
  v32 = v21;
  WORD1(v32) = a7;
  BYTE4(v32) = a1;
  v24 = *(qword_1EB2B0128 + 72) & 2 | (4 * (a8 & 1));
  if (((1 << a1) & 0x13) != 0)
  {
    ++v24;
  }

  BYTE6(v32) = v24 ^ 4;
  v26[0] = &v31;
  v26[1] = a5;
  v27 = a3;
  v28 = v22;
  v29 = HIDWORD(a3);
  v30 = v17;
  if (!RTLogRingBufferWriteWithCallback(&rt_globals[40 * a2 + 48], writeData, v23, v26))
  {
    return a3 & 0xFFFFFFFF0000FFFFLL | (v22 << 16);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

void *writeData(void *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = a2[1];
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) - 8);
  v6 = *(v3 + 10);
  v7 = *(v3 + 8);
  v9 = a2[2];
  v8 = a2[3];
  v10 = *result;
  v11 = *v3 - 0x1000000000;
  if (*v3 < 0x1000000000uLL)
  {
    v11 = 0;
  }

  *(v10 + 8) = v11;
  v12 = *(v3 + 8);
  v13 = v12 + 24;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFF8) + 32;
  }

  v14 = v13 + 16;
  *(v10 + 32) = (*v3 - v11) | (v12 << 48);
  *(v10 + 24) = v5;
  v15 = *(v3 + 10) + v13 + 16;
  if ((v15 & 7) != 0)
  {
    v15 = (v15 & 0xFFF8) + 8;
  }

  v39 = *(v3 + 12);
  v38 = 2 * (*(v3 + 14) & 3);
  *v10 = v15;
  *(v10 + 2) = v14;
  *(v10 + 4) = 1;
  *(v10 + 5) = 0;
  *(v10 + 6) = v39;
  *(v10 + 7) = v38;
  v16 = result[1];
  if (v8)
  {
    *(v10 + 40) = v8;
    v17 = (v10 + 48);
    v18 = v16 - 48;
    v7 -= 8;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v17 = (v10 + 40);
  v18 = v16 - 40;
  if (v6)
  {
LABEL_9:
    *v17++ = (v13 + 16) | (v6 << 16);
    v18 -= 4;
    v7 -= 4;
  }

LABEL_10:
  if (!result[3])
  {
    if (v7)
    {
      while (1)
      {
        v31 = *(v4 + 8);
        result = memcpy(v17, *v4, v31);
        v32 = *(v4 + 8);
        v23 = v7 >= v32;
        v33 = v7 - v32;
        if (!v23 || v33 >= 0x10000)
        {
          break;
        }

        v17 = (v17 + v31);
        v4 += 16;
        v7 = v33;
        if (!v33)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      if (!v6)
      {
        goto LABEL_41;
      }

      v34 = (v10 + v14);
      while (1)
      {
        v35 = *(v4 + 8);
        result = memcpy(v34, *v4, v35);
        v36 = *(v4 + 8);
        v23 = v6 >= v36;
        v37 = v6 - v36;
        if (!v23 || v37 >= 0x10000)
        {
          break;
        }

        v34 += v35;
        v6 = v37;
        v4 += 16;
        if (!v37)
        {
          goto LABEL_41;
        }
      }
    }

    __assert_rtn("writeIovOnePart", "transport_ringbuffer.c", 124, "false");
  }

  if (v7)
  {
    while (1)
    {
      v19 = *v4;
      v20 = *(v4 + 8);
      if (v20 >= v18)
      {
        memcpy(v17, v19, v18);
        v21 = v2[2];
        result = memcpy(v21, (*v4 + v18), v20 - v18);
        v17 = &v21[v20 - v18];
        v18 = v2[3];
      }

      else
      {
        result = memcpy(v17, v19, *(v4 + 8));
        v17 = (v17 + v20);
        v18 -= v20;
      }

      v22 = *(v4 + 8);
      v23 = v7 >= v22;
      v24 = v7 - v22;
      if (!v23 || v24 >= 0x10000)
      {
        break;
      }

      v4 += 16;
      v7 = v24;
      if (!v24)
      {
        goto LABEL_19;
      }
    }

LABEL_42:
    __assert_rtn("writeIovMessageParts", "transport_ringbuffer.c", 160, "false");
  }

LABEL_19:
  if (v6)
  {
    v25 = (v4 + 8);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = *v25 - v18;
      if (*v25 >= v18)
      {
        memcpy(v17, v26, v18);
        v29 = v2[2];
        result = memcpy(v29, (*(v25 - 1) + v18), v28);
        v17 = &v29[v28];
        v18 = v2[3];
      }

      else
      {
        result = memcpy(v17, v26, *v25);
        v17 = (v17 + v27);
        v18 -= v27;
      }

      v30 = v6 - *v25;
      if (v6 < *v25 || v30 >= 0x10000)
      {
        goto LABEL_42;
      }

      v6 = (v6 - *v25);
      v25 += 2;
    }

    while (v30);
  }

LABEL_41:
  atomic_store(v9, (v10 + 16));
  atomic_fetch_add_explicit(v10, 0xFFFFFFFF00000000, memory_order_relaxed);
  return result;
}

uint64_t RTBinIndexForType(int a1)
{
  if (a1 > 15)
  {
    if ((a1 - 16) >= 2)
    {
      goto LABEL_10;
    }

    return 4;
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

LABEL_10:
      abort();
    }

    return 2;
  }

  else
  {
    return 3;
  }
}

void _os_trace_rwptr_wrunlock_slow(uint64_t a1, int a2, unsigned int a3)
{
  if ((a3 ^ a2) > 1)
  {
    v3 = a3;
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: lock not owned by current thread";
    qword_1EB2AFEB0 = a3;
    __break(1u);
LABEL_11:
    qword_1EB2AFE80 = "BUG IN LIBTRACE: ulock_wake() failed";
    qword_1EB2AFEB0 = v3;
    __break(1u);
  }

  else
  {
    while ((__ulock_wake() & 0x80000000) != 0)
    {
      v3 = *__error();
      if (v3 != 4)
      {
        if (v3)
        {
          v4 = v3 == 2;
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return;
        }

        goto LABEL_11;
      }
    }
  }
}

void _os_trace_image_was_unloaded(unint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (xmmword_1ED3F74C0 && (_os_trace_dsc_load_addr > a1 || _os_trace_dsc_size + _os_trace_dsc_load_addr <= a1))
  {
    v17[0] = 0u;
    v17[1] = a1;
    if (_dyld_get_image_uuid())
    {
      v2 = mach_continuous_time();
      transport_add_public_tracepoint(3, 0x300000105, v2, v17, 32);
      v3 = 0;
      atomic_compare_exchange_strong_explicit(dword_1ED3F7568, &v3, *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24), memory_order_acquire, memory_order_acquire);
      if (v3)
      {
        os_unfair_lock_lock_with_options();
      }

      v4 = off_1ED3F7570;
      v5 = *(off_1ED3F7570 + 5);
      v6 = off_1ED3F7570 + 16;
      v7 = (a1 >> *MEMORY[0x1E69E9AC0]) % v5;
      while (1)
      {
        v8 = *&v6[16 * v7];
        if (v8 == a1)
        {
          break;
        }

        if (v7 + 1 == v5)
        {
          v7 = 0;
        }

        else
        {
          ++v7;
        }

        if (v8)
        {
          v9 = v7 == (a1 >> *MEMORY[0x1E69E9AC0]) % v5;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          goto LABEL_30;
        }
      }

      v10 = &v6[16 * v7];
      v10[1] = 0;
      --v4[4];
      v11 = v4[5];
      if (v7 + 1 < v11)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = *&v6[16 * v12];
      if (v13)
      {
        v14 = -1;
      }

      else
      {
        v14 = 0;
      }

      atomic_store(v14, v10);
      if (!v13)
      {
        while (1)
        {
          if (!v7)
          {
            v7 = v11;
          }

          --v7;
          v15 = &v6[16 * v7];
          if (*v15 != -1)
          {
            break;
          }

          *v15 = 0;
        }
      }

LABEL_30:
      _os_trace_rwptr_wrunlock(dword_1ED3F7568, v4);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void _os_trace_send_sections_to_logd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = xpc_array_create(0, 0);
  v8 = (a3 + 20);
  v9 = 5;
  do
  {
    xpc_array_set_data(v7, 0xFFFFFFFFFFFFFFFFLL, (a2 + *(v8 - 1)), *v8);
    v8 += 3;
    --v9;
  }

  while (v9);
  xpc_dictionary_set_uint64(v6, "operation", 4uLL);
  xpc_dictionary_set_uuid(v6, "uuid", a1);
  xpc_dictionary_set_string(v6, "path", (a1 + 32));
  xpc_dictionary_set_value(v6, "sections", v7);
  xpc_release(v7);
  _os_trace_logd_send();

  xpc_release(v6);
}

void _os_trace_mig_server(uint64_t a1, mach_msg_header_t *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = (v12 - ((MEMORY[0x1EEE9AC00]() + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v3, v4);
  v5 = a2->msgh_bits & 0x1F;
  msgh_remote_port = a2->msgh_remote_port;
  *v3 = v5;
  v3[1] = 36;
  msgh_id = a2->msgh_id;
  v3[4] = 0;
  v3[5] = msgh_id + 100;
  v3[2] = msgh_remote_port;
  v3[3] = 0;
  if ((msgh_id - 50003) < 0xFFFFFFFD || (v8 = ostracemig_do_libtraceMIG_subsystem[5 * (msgh_id - 50000) + 5]) == 0)
  {
    *(v3 + 3) = *MEMORY[0x1E69E99E0];
    v3[8] = -303;
LABEL_7:
    a2->msgh_remote_port = 0;
    mach_msg_destroy(a2);
LABEL_8:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  (v8)(a2, v3);
  if (*v3 < 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3[8];
    if (v9)
    {
      goto LABEL_11;
    }
  }

  if (v5 != 18)
  {
LABEL_11:
    if (v9 == -305 || !v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = v3[5];
  qword_1EB2AFE80 = "BUG IN LIBTRACE: _os_trace_mig_server doesn't handle replies";
  qword_1EB2AFEB0 = v11;
  __break(1u);
}

void _libtrace_fork_child()
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED3F7530)
  {
    xpc_pipe_invalidate();
    xpc_release(qword_1ED3F7530);
  }

  v8 = 0u;
  memset(v9, 0, 28);
  v6 = 0;
  v7 = 0;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v5, 0, 29);
  bzero(__src, 0x232uLL);
  _os_trace = v8;
  dword_1ED3F74D8 = DWORD2(v9[1]);
  qword_1ED3F74D0 = *&v9[1];
  xmmword_1ED3F74C0 = v9[0];
  dword_1ED3F74DC = -2;
  dword_1ED3F74E0 = 0;
  dword_1ED3F74E4 = -1;
  dword_1ED3F74F0 = v7;
  qword_1ED3F74E8 = v6;
  dword_1ED3F74F4 = -1;
  qword_1ED3F7538 = *&v5[1];
  *&qword_1ED3F7528 = v5[0];
  dword_1ED3F7540 = DWORD2(v5[1]);
  byte_1ED3F7544 = BYTE12(v5[1]);
  *&qword_1ED3F7518 = v4;
  *&qword_1ED3F74F8 = v2;
  *&qword_1ED3F7508 = v3;
  byte_1ED3F7545 = 1;
  memcpy(&byte_1ED3F7546, __src, 0x232uLL);
  dword_1ED3F74D8 = _os_trace_create_debug_control_port();
  if (_event_pipe)
  {
    xpc_pipe_invalidate();
    xpc_release(_event_pipe);
    _event_pipe = 0;
  }

  _event_lock = 0;
  v0 = *MEMORY[0x1E69E9840];
}

char *_os_trace_atm_diagnostic_config(_DWORD *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 1024;
  if (sysctlbyname("kern.bootargs", __big, &v7, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = strcasestr(__big, "atm_diagnostic_config=");
    if (result)
    {
      __endptr = 0;
      v3 = strtoul(result + 22, &__endptr, 16);
      if (__endptr)
      {
        v4 = *__endptr;
        if (*__endptr)
        {
          if ((v4 & 0x80000000) != 0)
          {
            result = __maskrune(v4, 0x4000uLL);
            if (!result)
            {
              goto LABEL_9;
            }
          }

          else
          {
            result = (*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x4000);
            if (!result)
            {
              goto LABEL_9;
            }
          }
        }
      }

      *a1 = v3;
      result = 1;
    }
  }

LABEL_9:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _os_trace_prefs_latest_version_4tests()
{
  if ((byte_1ED3F7544 & 1) == 0)
  {
    if (_dispatch_is_multithreaded())
    {
      __swp(&byte_1ED3F7544, &byte_1ED3F7544);
      if ((&byte_1ED3F7544 & 1) == 0)
      {
        _os_log_watch_for_prefchanges();
      }
    }
  }

  return dword_1ED3F74E0;
}

BOOL _os_trace_mode_match_4tests(int a1)
{
  if ((byte_1ED3F7544 & 1) == 0)
  {
    if (_dispatch_is_multithreaded())
    {
      __swp(&byte_1ED3F7544, &byte_1ED3F7544);
      if ((&byte_1ED3F7544 & 1) == 0)
      {
        _os_log_watch_for_prefchanges();
      }
    }
  }

  return (qword_1ED3F74D0 & a1) != 0 || (MEMORY[0xFFFFFC104] & a1) != 0 || a1 && ((voucher_get_activity_id() >> 56) & a1) != 0;
}

uint64_t _os_trace_set_diagnostic_flags(uint32_t a1)
{
  v2 = MEMORY[0x1AC5603A0]();
  v3 = host_set_atm_diagnostic_flag(v2, a1);
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  return v3;
}

uint64_t _os_trace_commpage_compute(int a1, int a2, int a3, int a4, char a5)
{
  v5 = a1 & 0x88000000;
  if (a2 && (v5 |= 0x60000000u, (a5 & 1) == 0))
  {
    v11 = a1 & 0x8000000 | 0x71000000;
    if (!a4)
    {
      v11 = v5;
    }

    if (a1 >= 0)
    {
      return v11;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v6 = a3 ^ 1 | a1 | v5;
    v7 = v6 & 0xEEFFFFFF;
    v8 = v6 | 0x11000001;
    if (!a4)
    {
      v8 = v7;
    }

    v9 = v5 | 1;
    if (a1 < 0)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }
}

uint64_t _os_trace_update_with_datavolume_4launchd()
{
  os_variant_check();

  return _os_trace_commpage_setup();
}

uint64_t _os_trace_commpage_setup()
{
  v0 = MEMORY[0xFFFFFC104];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v2 = v0 & 0x6EFFFFFE | 1;
  if (has_internal_diagnostics)
  {
    v2 = v0 | 0x11000001;
  }

  if (v0 < 0)
  {
    result = v0 & 0x88000000 | 1;
  }

  else
  {
    result = v2;
  }

  if (result != v0)
  {

    return _os_trace_set_diagnostic_flags(result);
  }

  return result;
}

void __LIBTRACE_CLIENT_QUARANTINED_DUE_TO_HIGH_LOGGING_VOLUME__()
{
  if ((BYTE8(_os_trace) & 1) != 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v0 = 0;
    _os_log_fault_impl(&dword_1A7AB8000, &_os_log_default, OS_LOG_TYPE_FAULT, "QUARANTINED DUE TO HIGH LOGGING VOLUME", v0, 2u);
  }

  byte_1ED3F754A = 1;
}

uint64_t _os_trace_get_reconnect_info(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v54 = v2;
  address = v1;
  v64 = *MEMORY[0x1E69E9840];
  v59 = 0;
  __src = 0;
  v58 = 0x1000000100000;
  v56 = &v63;
  v57 = 0x100000000000;
  v3 = _dyld_image_count();
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    while (1)
    {
      image_header = _dyld_get_image_header(v5);
      if (image_header)
      {
        v7 = image_header;
        if ((_os_trace_dsc_load_addr > image_header || _os_trace_dsc_size + _os_trace_dsc_load_addr <= image_header) && image_header->filetype != 2)
        {
          image_name = _dyld_get_image_name(v5);
          if (image_name)
          {
            v9 = image_name;
            v10 = strlen(image_name);
            *uu = 0u;
            v62 = v7;
            *(&v62 + 1) = _os_trace_get_image_info(v7, 0, uu, 0, 1);
            if (*(&v62 + 1))
            {
              break;
            }
          }
        }
      }

LABEL_26:
      if (v4 == ++v5)
      {
        goto LABEL_33;
      }
    }

    LOBYTE(v11) = v10 + 33;
    LODWORD(v59) = 3;
    HIDWORD(v59) = v10 + 33;
    v12 = BYTE4(v58);
    if ((v58 & 0x200000000) == 0)
    {
      v13 = BYTE6(v58);
      v14 = v57;
      if (HIDWORD(v57) - v57 - (BYTE6(v58) ^ 1u) <= 7)
      {
        os_trace_blob_add_slow(&v56, &v59, 8uLL);
        v12 = BYTE4(v58);
        if ((v58 & 0x200000000) == 0)
        {
LABEL_14:
          v18 = BYTE6(v58);
          v19 = v57;
          if (HIDWORD(v57) - v57 - (BYTE6(v58) ^ 1u) <= 0x1F)
          {
            os_trace_blob_add_slow(&v56, uu, 0x20uLL);
            v12 = BYTE4(v58);
          }

          else
          {
            v20 = v56;
            v21 = v56 + v57;
            v22 = v62;
            *v21 = *uu;
            v21[1] = v22;
            v23 = v19 + 32;
            LODWORD(v57) = v23;
            if ((v18 & 1) == 0)
            {
              v20[v23] = 0;
            }
          }
        }

LABEL_17:
        if ((v12 & 2) == 0)
        {
          v24 = v10 + 1;
          v25 = BYTE6(v58);
          v26 = v57;
          if (v24 > HIDWORD(v57) - v57 - (BYTE6(v58) ^ 1u))
          {
            os_trace_blob_add_slow(&v56, v9, v24);
          }

          else
          {
            v27 = v56;
            memcpy(v56 + v57, v9, v24);
            LODWORD(v57) = v26 + v24;
            if ((v25 & 1) == 0)
            {
              v27[(v26 + v24)] = 0;
            }
          }
        }

        if ((v11 & 7) != 0 && (v58 & 0x200000000) == 0)
        {
          v28 = 8 - (v11 & 7);
          v29 = BYTE6(v58);
          v30 = v57;
          if (HIDWORD(v57) - v57 - (BYTE6(v58) ^ 1u) < v28)
          {
            os_trace_blob_add_slow(&v56, &__src, v28);
          }

          else
          {
            v31 = v56;
            memcpy(v56 + v57, &__src, v28);
            LODWORD(v57) = v30 + v28;
            if ((v29 & 1) == 0)
            {
              v31[(v30 + v28)] = 0;
            }
          }
        }

        goto LABEL_26;
      }

      v15 = v56;
      v16 = v59;
      *(v56 + v57) = v59;
      v17 = v14 + 8;
      LODWORD(v57) = v17;
      v11 = HIDWORD(v16);
      if ((v13 & 1) == 0)
      {
        v15[v17] = 0;
      }
    }

    if ((v12 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_33:
  os_unfair_lock_lock_with_options();
  for (i = 0; i != 64; ++i)
  {
    for (j = _os_log_globals[i]; j; j = *(j + 16))
    {
      if ((*(j + 63) & 4) != 0)
      {
        v35 = *(j + 24);
        LODWORD(v36) = v35[2] + v35[3] + 4;
        LODWORD(v59) = 2;
        HIDWORD(v59) = v36;
        v34 = BYTE4(v58);
        if ((v58 & 0x200000000) == 0)
        {
          v37 = BYTE6(v58);
          v38 = v57;
          if (HIDWORD(v57) - v57 - (BYTE6(v58) ^ 1u) <= 7)
          {
            os_trace_blob_add_slow(&v56, &v59, 8uLL);
            v34 = BYTE4(v58);
          }

          else
          {
            v39 = v56;
            v40 = v59;
            *(v56 + v57) = v59;
            v41 = v38 + 8;
            LODWORD(v57) = v41;
            v36 = HIDWORD(v40);
            if ((v37 & 1) == 0)
            {
              v39[v41] = 0;
            }
          }
        }

        if ((v34 & 2) == 0)
        {
          v42 = BYTE6(v58);
          v43 = v57;
          if (HIDWORD(v57) - v57 - (BYTE6(v58) ^ 1u) < v36)
          {
            os_trace_blob_add_slow(&v56, v35, v36);
          }

          else
          {
            v44 = v56;
            memcpy(v56 + v57, v35, v36);
            LODWORD(v57) = v43 + v36;
            if ((v42 & 1) == 0)
            {
              v44[(v43 + v36)] = 0;
            }
          }
        }

        if ((v36 & 7) != 0 && (v58 & 0x200000000) == 0)
        {
          v45 = 8 - (v36 & 7);
          v46 = BYTE6(v58);
          v47 = v57;
          if (HIDWORD(v57) - v57 - (BYTE6(v58) ^ 1u) < v45)
          {
            os_trace_blob_add_slow(&v56, &__src, v45);
          }

          else
          {
            v48 = v56;
            memcpy(v56 + v57, &__src, v45);
            LODWORD(v57) = v47 + v45;
            if ((v46 & 1) == 0)
            {
              v48[(v47 + v45)] = 0;
            }
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(&dword_1ED3F7A40);
  *address = 0;
  v49 = v57;
  v50 = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + v57);
  *v54 = v50;
  if (v50)
  {
    v51 = mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v50, 1);
    if (!v51)
    {
      memcpy(*address, v56, v49);
    }

    if ((v58 & 0x100000000) != 0)
    {
      free(v56);
    }
  }

  else
  {
    v51 = 0;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v51;
}

void _os_trace_debug_channel_handler(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();

    _os_trace_mig_server(48, msg);
  }

  else if (a2 == 1 && (byte_1ED3F7544 & 1) == 0)
  {
    if (_dispatch_is_multithreaded())
    {
      __swp(&byte_1ED3F7544, &byte_1ED3F7544);
      if ((&byte_1ED3F7544 & 1) == 0)
      {

        _os_log_watch_for_prefchanges();
      }
    }
  }
}

void _os_trace_with_buffer(void *dso, const char *message, uint8_t type, const void *buffer, size_t buffer_size, os_trace_payload_t payload)
{
  v7 = v6;
  v11 = type;
  v68 = *MEMORY[0x1E69E9840];
  if (!dyld_sdk_at_least())
  {
    goto LABEL_109;
  }

  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v14 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v18 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v18, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v14)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 0x500) != 0 || (MEMORY[0xFFFFFC104] & 0x500) != 0)
  {
    goto LABEL_109;
  }

  v66 = 0;
  v67 = 0;
  v65 = 0;
  if ((qword_1ED3F74D0 & 8) == 0 && (MEMORY[0xFFFFFC104] & 8) == 0 && (voucher_get_activity_id() & 0x800000000000000) == 0 || (dword_1ED3F7540 & 2) == 0)
  {
    v63 = 0;
    goto LABEL_13;
  }

  v63 = HIDWORD(qword_1ED3F7538);
  if (v11 == 2)
  {
    v63 = (v63 >> 1) & 1;
    goto LABEL_33;
  }

  if (v11 != 4)
  {
    v63 = (v63 >> 3) & 1;
LABEL_13:
    v15 = 0;
    v16 = 0;
    if (v11 > 64)
    {
      if (v11 == 65)
      {
        v16 = 0;
        v15 = 4096;
      }

      else if (v11 == 193)
      {
        v16 = 0;
        v15 = 4352;
      }

      goto LABEL_39;
    }

    if (v11 != 2)
    {
      if (v11 != 4)
      {
        goto LABEL_39;
      }

      goto LABEL_16;
    }

LABEL_33:
    if ((qword_1ED3F74D0 & 2) != 0 || (MEMORY[0xFFFFFC104] & 2) != 0)
    {
      v16 = 0;
    }

    else
    {
      activity_id = voucher_get_activity_id();
      v16 = (activity_id & 0x200000000000000) == 0;
      if (((((activity_id & 0x200000000000000uLL) >> 57) | v63) & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    v15 = 512;
    goto LABEL_39;
  }

LABEL_16:
  if ((qword_1ED3F74D0 & 3) != 0 || (MEMORY[0xFFFFFC104] & 3) != 0)
  {
    v16 = 0;
  }

  else
  {
    v17 = voucher_get_activity_id();
    v16 = (v17 & 0x300000000000000) == 0;
    if (!(((v17 & 0x300000000000000) != 0) | v63 & 1))
    {
      goto LABEL_109;
    }
  }

  v15 = 256;
LABEL_39:
  v60 = v15;
  if (xmmword_1ED3F74C0)
  {
    v20 = dword_1ED3F7568;
  }

  else
  {
    v20 = 0;
  }

  v62 = payload;
  v61 = v16;
  if (_os_trace_dsc_load_addr > dso || _os_trace_dsc_size + _os_trace_dsc_load_addr <= dso)
  {
    if (*(dso + 3) == 2)
    {
      v21 = 0;
      v7 = v6 - dso;
      LODWORD(v66) = v6 - dso;
      WORD2(v66) = (v6 - dso) >> 32;
      v22 = 4;
      HIWORD(v66) = 4;
      v67 = 0;
      v23 = 2;
      goto LABEL_78;
    }

    if (xmmword_1ED3F74C0)
    {
LABEL_50:
      v24 = *v20;
      do
      {
        if (v24)
        {
          v26 = v16;
          _os_trace_rwptr_rdlock_wait(v20);
          v16 = v26;
          goto LABEL_50;
        }

        v25 = v24;
        atomic_compare_exchange_strong_explicit(v20, &v25, v24 + 0x200000000, memory_order_relaxed, memory_order_relaxed);
        v31 = v25 == v24;
        v24 = v25;
      }

      while (!v31);
      v27 = *(off_1ED3F7570 + 5);
      v28 = off_1ED3F7570 + 16;
      v29 = (dso >> *MEMORY[0x1E69E9AC0]) % v27;
      while (1)
      {
        v30 = *&v28[16 * v29];
        if (v30 == dso)
        {
          break;
        }

        if (v29 + 1 == v27)
        {
          v29 = 0;
        }

        else
        {
          ++v29;
        }

        if (v30)
        {
          v31 = v29 == (dso >> *MEMORY[0x1E69E9AC0]) % v27;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          v21 = 0;
          goto LABEL_67;
        }
      }

      v21 = *&v28[16 * v29 + 8];
LABEL_67:
      v32 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 24);
      v33 = *v20;
      v34 = *v20;
      do
      {
        v35 = v33 - 0x200000000;
        if (v33 == 0x300000000)
        {
          v35 = v32;
        }

        atomic_compare_exchange_strong_explicit(v20, &v34, v35, memory_order_relaxed, memory_order_relaxed);
        v31 = v34 == v33;
        v33 = v34;
      }

      while (!v31);
      if (v35 == v32)
      {
        __dmb(9u);
        _os_trace_rwptr_cleanup(v20, _os_trace_mh_map_cleanup);
      }

      v67 = v21;
      if (v21)
      {
        v7 = v6 - dso;
        LODWORD(v66) = v6 - dso;
        WORD2(v66) = (v6 - dso) >> 32;
        v22 = 20;
        HIWORD(v66) = 20;
        v23 = 10;
        goto LABEL_78;
      }
    }

    else
    {
      v67 = 0;
    }

    v21 = 0;
    LODWORD(v66) = v6;
    WORD2(v66) = WORD2(v6);
    v22 = 6;
    HIWORD(v66) = 6;
    v23 = 8;
LABEL_78:
    if (message)
    {
      goto LABEL_79;
    }

    goto LABEL_89;
  }

  v7 = v6 - _os_trace_dsc_load_addr;
  LODWORD(v66) = v6 - _os_trace_dsc_load_addr;
  WORD2(v66) = (v6 - _os_trace_dsc_load_addr) >> 32;
  v67 = 0;
  v21 = 0;
  if (WORD2(v66))
  {
    v22 = 6;
    HIWORD(v66) = 6;
    v23 = 12;
    if (!message)
    {
      goto LABEL_89;
    }

LABEL_79:
    v36 = _os_trace_dsc_load_addr;
    if (_os_trace_dsc_load_addr <= dso)
    {
      if (_os_trace_dsc_size + _os_trace_dsc_load_addr <= dso)
      {
        v36 = dso;
      }

      v37 = &message[-v36];
    }

    else
    {
      v37 = message - dso;
    }

    if (v37 >> 31)
    {
      v38 = (2 * v37) & 0xFFFF00000000;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38 & 0xFFFFFFFF80000000 | v37 & 0x7FFFFFFF;
    goto LABEL_90;
  }

  HIDWORD(v66) = 0x40000;
  v22 = 4;
  v23 = 4;
  if (message)
  {
    goto LABEL_79;
  }

LABEL_89:
  v39 = 0;
LABEL_90:
  v65 = v39;
  v40 = v22 + 2 * (HIDWORD(v39) != 0);
  v41 = MEMORY[0x1EEE9AC00](v23);
  v47 = v58 - v46;
  if (v48)
  {
    *v47 = v66;
    *(v47 + 2) = WORD2(v66);
  }

  else
  {
    *v47 = v7;
    if ((v44 & 1) == 0)
    {
      *(v47 + 4) = *v21;
    }
  }

  if (v45)
  {
    v41 = v41 | 0x20;
    *&v47[v43] = v45;
  }

  v64 = buffer;
  v58[1] = v42;
  v59 = v41;
  if (buffer_size > 0x3FF)
  {
    v50 = *(buffer + buffer_size - 1);
    if (*(buffer + buffer_size - 1))
    {
      v51 = 0;
      v52 = 0;
      v53 = buffer + buffer_size - v50 - 1;
      while (1)
      {
        v49 = v52 + (v53[v51] & 0x3F);
        v54 = v51 + 1;
        if (v51 + 1 + v49 >= 0x401)
        {
          break;
        }

        ++v51;
        v52 = v49;
        if (v50 == v54)
        {
          goto LABEL_105;
        }
      }

      memcpy(&v47[v40], v64, v52);
      memcpy(&v47[v40 + v52], v53, v51);
      v47[v40 + v52 + v51] = v51;
      v49 = v51 + v40 + v52 + 1;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = v40 + buffer_size;
    memcpy(&v47[v40], buffer, buffer_size);
  }

LABEL_105:
  v55 = mach_continuous_time();
  v56 = (v59 << 16) | (v39 << 32) | v60 | 3;
  if (!v61)
  {
    v56 = transport_add_public_tracepoint(2, (v59 << 16) | (v39 << 32) | v60 | 3, v55, v47, v49);
  }

  if (v63)
  {
    _os_trace_stream(dso, message, &v66, &v65, v64, buffer_size, v56, v55, v62);
  }

LABEL_109:
  v57 = *MEMORY[0x1E69E9840];
}

void _os_trace_stream(unint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = _os_trace_diagnosticd_pipe(0);
  if (v17)
  {
    v18 = v17;
    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    if (a7 <= 8u && ((1 << a7) & 0x158) != 0)
    {
      v19 = a7 << 8;
    }

    else
    {
      v19 = bswap32(a7) >> 16;
    }

    v21 = v19;
    *&v25 = a7;
    *(&v25 + 1) = a8;
    *(&v30 + 1) = a2;
    *&v31 = a5;
    *(&v31 + 1) = a6;
    if (a9)
    {
      v20 = xpc_dictionary_create(0, 0, 0);
      (*(a9 + 16))(a9, v20);
      if (xpc_dictionary_get_count(v20))
      {
        *&v32 = v20;
      }

      else
      {
        xpc_release(v20);
      }
    }

    _os_activity_stream_reflect(v18, &v21, a1, -3, a3, a4);
    if (v32)
    {
      xpc_release(v32);
      *&v32 = 0;
    }

    xpc_release(v18);
  }
}

uint64_t os_trace_get_type(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 <= 1)
  {
    if (!*(a1 + 1))
    {
      return 1;
    }

    if (v1 == 1)
    {
      return 4;
    }
  }

  else
  {
    switch(v1)
    {
      case 2u:
        return 2;
      case 0x10u:
        return 65;
      case 0x11u:
        return 193;
    }
  }

  return 0;
}

uint64_t os_trace_get_mode()
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v0 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v2 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v2, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v0)
    {
      _os_log_preferences_refresh_process();
    }
  }

  return qword_1ED3F74D0;
}

BOOL _os_trace_set_mode_for_pid(int pid, int a2)
{
  name = 0;
  v3 = MEMORY[0x1E69E9A60];
  if (debug_control_port_for_pid(*MEMORY[0x1E69E9A60], pid, &name) || !name)
  {
    return 0;
  }

  v8 = *MEMORY[0x1E69E99E0];
  v9 = a2;
  v10 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_remote_port = name;
  msg.msgh_id = 50000;
  *&msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v4 = mach_msg(&msg, 1, 0x2Cu, 0, 0, 0, 0) == 0;
  if (mach_port_deallocate(*v3, name))
  {
    _os_assumes_log();
  }

  return v4;
}

BOOL _os_trace_get_mode_for_pid(int pid, _DWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  name = 0;
  v3 = MEMORY[0x1E69E9A60];
  if (debug_control_port_for_pid(*MEMORY[0x1E69E9A60], pid, &name) || (v5 = name) == 0)
  {
    result = 0;
    goto LABEL_40;
  }

  v16 = 0;
  v15 = 0u;
  memset(&msg[4], 0, 32);
  reply_port = mig_get_reply_port();
  *&msg[8] = v5;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0xC35200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(msg, 275, 0x18u, 0x38u, v7, 0x3E8u, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
    goto LABEL_23;
  }

  if (!v8)
  {
    if (*&msg[20] == 71)
    {
      v9 = -308;
    }

    else if (*&msg[20] == 50102)
    {
      if ((*msg & 0x80000000) == 0)
      {
        if (*&msg[4] == 48)
        {
          if (!*&msg[8])
          {
            v9 = *&msg[32];
            if (!*&msg[32])
            {
              *a2 = v15;
              goto LABEL_37;
            }

            goto LABEL_31;
          }
        }

        else if (*&msg[4] == 36)
        {
          if (*&msg[8])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&msg[32] == 0;
          }

          if (v10)
          {
            v9 = -300;
          }

          else
          {
            v9 = *&msg[32];
          }

          goto LABEL_31;
        }
      }

      v9 = -300;
    }

    else
    {
      v9 = -301;
    }

LABEL_31:
    mach_msg_destroy(msg);
    goto LABEL_32;
  }

  mig_dealloc_reply_port(*&msg[12]);
LABEL_23:
  if (v9 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*v3, *&msg[12]);
    }

    mach_msg_destroy(msg);
    v11 = 4;
LABEL_36:
    v9 = v11 | 0x10000000;
    goto LABEL_37;
  }

LABEL_32:
  if (v9 == 268451843)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *msg = 67109120;
      *&msg[4] = 268451843;
      _os_log_error_impl(&dword_1A7AB8000, &_os_log_default, OS_LOG_TYPE_ERROR, "Timed out get mode error %d", msg, 8u);
    }

    v11 = 16387;
    goto LABEL_36;
  }

LABEL_37:
  if (mach_port_deallocate(*v3, name))
  {
    _os_assumes_log();
  }

  result = v9 == 0;
LABEL_40:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL os_trace_info_enabled(void)
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v0 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v3 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v3, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v3 == v0)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 3) != 0 || (MEMORY[0xFFFFFC104] & 3) != 0 || (voucher_get_activity_id() & 0x300000000000000) != 0)
  {
    v1 = 1;
  }

  else if (((qword_1ED3F74D0 & 8) != 0 || (MEMORY[0xFFFFFC104] & 8) != 0 || (voucher_get_activity_id() & 0x800000000000000) != 0) && (dword_1ED3F7540 & 2) != 0)
  {
    v1 = BYTE4(qword_1ED3F7538);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL os_trace_debug_enabled(void)
{
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v0 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v2 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v2, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v2 == v0)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 2) != 0 || (MEMORY[0xFFFFFC104] & 2) != 0 || (voucher_get_activity_id() & 0x200000000000000) != 0)
  {
    LOBYTE(v1) = 1;
  }

  else if (((qword_1ED3F74D0 & 8) != 0 || (MEMORY[0xFFFFFC104] & 8) != 0 || (voucher_get_activity_id() & 0x800000000000000) != 0) && (dword_1ED3F7540 & 2) != 0)
  {
    return (BYTE4(qword_1ED3F7538) >> 1) & 1;
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

void ___os_log_mask_create_device_digest_block_invoke()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "operation", 5uLL);
  v1 = _os_trace_logd_send_with_reply();
  if (!v1)
  {
    xpc_release(empty);
LABEL_5:
    uint64 = qword_1ED3F7518;
    goto LABEL_6;
  }

  v2 = v1;
  uint64 = xpc_dictionary_get_uint64(v1, "device_salt");
  xpc_release(v2);
  xpc_release(empty);
  if (!uint64)
  {
    goto LABEL_5;
  }

LABEL_6:
  qword_1ED3F7520 = uint64;
}

void *os_trace_blob_detach(uint64_t a1, void *a2)
{
  v2 = *(a1 + 20);
  v3 = *a1;
  *a1 = 3954044928;
  *(a1 + 20) = 0;
  if (a2)
  {
    *a2 = *(a1 + 8);
  }

  if (v2)
  {
    return v3;
  }

  v4 = *(a1 + 8) + (*(a1 + 22) ^ 1u);
  while (1)
  {
    v5 = malloc_type_malloc(v4, 0x253D2B3EuLL);
    if (v5)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  return memcpy(v5, v3, v4);
}

tm *os_trace_blob_add_localtime(tm *result, time_t a2, char a3, unsigned int a4)
{
  v20 = a2;
  if (BYTE2(result->tm_year) == 1)
  {
    qword_1EB2AFE80 = "BUG IN LIBTRACE: Can't use addf() in binary blobs";
    __break(1u);
  }

  else
  {
    v4 = result;
    if ((result->tm_year & 2) == 0)
    {
      memset(&v19, 0, sizeof(v19));
      result = localtime_r(&v20, &v19);
      if (result)
      {
        os_trace_blob_addf(v4, "%04d-%02d-%02d %02d:%02d:%02d", v7, v8, v9, v10, v11, v12, LOBYTE(v19.tm_year) + 108);
        if (a4 <= 2)
        {
          os_trace_blob_addf(v4, off_1E77DB308[a4], v13, v14, v15, v16, v17, v18, a3);
        }

        return os_trace_blob_addf(v4, "%+05ld", v13, v14, v15, v16, v17, v18, (v19.tm_gmtoff / 60 % 60) + 100 * (v19.tm_gmtoff / 3600));
      }
    }
  }

  return result;
}

unint64_t os_trace_blob_add_hexdump(unint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
  v27 = 39;
  if ((*(result + 20) & 2) == 0)
  {
    v8 = *(result + 8);
    if (*(result + 12) == v8 + (*(result + 22) ^ 1))
    {
      result = os_trace_blob_add_slow(result, &v27, 1uLL);
      if (!a3)
      {
        goto LABEL_27;
      }

      goto LABEL_6;
    }

    *(*result + v8) = 39;
    v9 = *(result + 8) + 1;
    *(result + 8) = v9;
    if ((*(result + 22) & 1) == 0)
    {
      *(*result + v9) = 0;
    }
  }

  if (!a3)
  {
    goto LABEL_27;
  }

LABEL_6:
  v10 = 0;
  do
  {
    v11 = *(a2 + v10);
    v12 = *(v7 + 20);
    if (v10)
    {
      v26 = 32;
      if ((v12 & 2) == 0)
      {
        v13 = *(v7 + 8);
        if (*(v7 + 12) == v13 + (*(v7 + 22) ^ 1))
        {
          result = os_trace_blob_add_slow(v7, &v26, 1uLL);
        }

        else
        {
          *(*v7 + v13) = 32;
          v14 = *(v7 + 8) + 1;
          *(v7 + 8) = v14;
          if ((*(v7 + 22) & 1) == 0)
          {
            *(*v7 + v14) = 0;
          }
        }
      }

      v12 = *(v7 + 20);
    }

    v15 = a0123456789abcd[v11 >> 4];
    __src = v15;
    if ((v12 & 2) == 0)
    {
      v16 = *(v7 + 8);
      if (*(v7 + 12) == v16 + (*(v7 + 22) ^ 1))
      {
        result = os_trace_blob_add_slow(v7, &__src, 1uLL);
      }

      else
      {
        *(*v7 + v16) = v15;
        v17 = *(v7 + 8) + 1;
        *(v7 + 8) = v17;
        if ((*(v7 + 22) & 1) == 0)
        {
          *(*v7 + v17) = 0;
        }
      }
    }

    v18 = a0123456789abcd[v11 & 0xF];
    v24 = v18;
    if ((*(v7 + 20) & 2) == 0)
    {
      v19 = *(v7 + 8);
      if (*(v7 + 12) == v19 + (*(v7 + 22) ^ 1))
      {
        result = os_trace_blob_add_slow(v7, &v24, 1uLL);
      }

      else
      {
        *(*v7 + v19) = v18;
        v20 = *(v7 + 8) + 1;
        *(v7 + 8) = v20;
        if ((*(v7 + 22) & 1) == 0)
        {
          *(*v7 + v20) = 0;
        }
      }
    }

    ++v10;
  }

  while (a3 != v10);
LABEL_27:
  if (a4)
  {

    return os_trace_blob_addns(v7, "…'", 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v23 = 39;
    if ((*(v7 + 20) & 2) == 0)
    {
      v21 = *(v7 + 8);
      if (*(v7 + 12) == v21 + (*(v7 + 22) ^ 1))
      {
        return os_trace_blob_add_slow(v7, &v23, 1uLL);
      }

      else
      {
        *(*v7 + v21) = 39;
        v22 = *(v7 + 8) + 1;
        *(v7 + 8) = v22;
        if ((*(v7 + 22) & 1) == 0)
        {
          *(*v7 + v22) = 0;
        }
      }
    }
  }

  return result;
}

void *_os_metric_label_create_internal(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 16 * a2;
  while (1)
  {
    v7 = malloc_type_calloc(1uLL, v6, 0x1052040E606EE0EuLL);
    if (v7)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v8 = v7;
  while (1)
  {
    v9 = malloc_type_calloc(1uLL, v6, 0x1052040E606EE0EuLL);
    if (v9)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v10 = v9;
  if (!a2)
  {
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    if ((_os_metric_label_flatten(v8, 0, &v33, &v32) & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = _os_trace_dsc_load_addr;
  v15 = a2;
  do
  {
    v16 = *(a3 + v11 + 8);
    if (*(a3 + v11) != 1)
    {
      v18 = &v8[v11];
      *(v18 + 1) = v16;
      *v18 = 0;
      goto LABEL_25;
    }

    if (!v16)
    {
      v19 = &v8[16 * v12];
      v20 = &v8[v11];
      *(v20 + 2) = 0;
      *(v20 + 6) = 0;
LABEL_23:
      v24 = 1;
      goto LABEL_24;
    }

    if (v14 <= a1)
    {
      if (_os_trace_dsc_size + v14 <= a1)
      {
        v21 = a1;
      }

      else
      {
        v21 = v14;
      }

      v17 = v16 - v21;
    }

    else
    {
      v17 = v16 - a1;
    }

    v22 = (2 * v17) & 0xFFFF00000000;
    if (!(v17 >> 31))
    {
      v22 = 0;
    }

    v23 = v17 & 0x7FFFFFFF;
    v19 = &v8[v11];
    *(v19 + 2) = v23;
    *(v19 + 6) = WORD2(v22);
    if (!v22)
    {
      goto LABEL_23;
    }

    v24 = 2;
LABEL_24:
    *v19 = v24;
    v16 = *(a3 + v11 + 8);
    v13 = 1;
LABEL_25:
    v25 = &v9[v11];
    *(v25 + 1) = v16;
    *v25 = 0;
    ++v12;
    v11 += 16;
    --v15;
  }

  while (v15);
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  if ((_os_metric_label_flatten(v8, a2, &v33, &v32) & 1) != 0 && ((v13 & 1) == 0 || _os_metric_label_flatten(v10, a2, &v31, &v30)))
  {
LABEL_31:
    objc_opt_class();
    v26 = _os_object_alloc();
    v27 = v32;
    v26[2] = v33;
    v26[3] = v27;
    v28 = v30;
    v26[4] = v31;
    v26[5] = v28;
    v33 = 0;
    v31 = 0;
    goto LABEL_32;
  }

LABEL_29:
  v26 = 0;
LABEL_32:
  free(v8);
  free(v10);
  free(v33);
  free(v31);
  return v26;
}

uint64_t _os_metric_label_flatten(uint64_t a1, uint64_t a2, char **a3, size_t *a4)
{
  if (!a3)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_32;
  }

  v6 = a4;
  if (!a4)
  {
LABEL_32:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_33;
  }

  v4 = a3;
  v7 = a2;
  v9 = 2 * a2;
  while (1)
  {
    v10 = malloc_type_calloc(1uLL, v9, 0x1000040BDFB0063uLL);
    if (v10)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v5 = v10;
  if (v7)
  {
    v32 = v6;
    v11 = 0;
    v12 = (a1 + 8);
    v13 = v7;
    v14 = v10;
    while (1)
    {
      v15 = *(v12 - 8);
      if (*(v12 - 8))
      {
        v16 = v15 == 1 ? 4 : 0;
        v17 = v15 == 2 ? 6 : v16;
      }

      else
      {
        v17 = strlen(*v12);
        if (v17 > 0xFFF)
        {
          break;
        }
      }

      *v14 = v17;
      if (v11 + v17 + 14 >= 0x801)
      {
        break;
      }

      v11 += v17 + 2;
      ++v14;
      v12 += 2;
      if (!--v13)
      {
        v6 = v32;
        while (1)
        {
          v18 = malloc_type_calloc(1uLL, v11, 0x8FBD0788uLL);
          if (v18)
          {
            break;
          }

          _os_trace_temporary_resource_shortage();
        }

        v20 = v18;
        v21 = (a1 + 8);
        v22 = v5;
        v23 = v18;
        while (1)
        {
          v24 = *v22++;
          v25 = v24 & 0xFFF;
          *v23 = *v23 & 0xF000 | v25;
          *v23 = v25 | (*(v21 - 8) << 12);
          v26 = v23 + 2;
          v27 = *(v21 - 8);
          if (*(v21 - 8))
          {
            if (v27 != 1 && v27 != 2)
            {
              goto LABEL_29;
            }

            v25 = v25;
            v28 = v26;
            v29 = v21;
          }

          else
          {
            v29 = *v21;
            v25 = v25;
            v28 = v26;
          }

          memcpy(v28, v29, v25);
LABEL_29:
          v23 = v26 + v25;
          v21 += 2;
          if (!--v7)
          {
            goto LABEL_36;
          }
        }
      }
    }

    v19 = 0;
    goto LABEL_38;
  }

  while (1)
  {
    v30 = malloc_type_calloc(1uLL, 0, 0x8FBD0788uLL);
    if (v30)
    {
      break;
    }

LABEL_33:
    _os_trace_temporary_resource_shortage();
  }

  v20 = v30;
  v11 = 0;
  v23 = v30;
LABEL_36:
  if (v23 - v20 == v11)
  {
    *v4 = v20;
    *v6 = v11;
    v19 = 1;
LABEL_38:
    free(v5);
    return v19;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

void *_os_metric_label_create_impl(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = 16 * a2;
  while (1)
  {
    v16 = malloc_type_calloc(1uLL, v15, 0x105004017C8E431uLL);
    if (v16)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  v17 = v16;
  if (a2)
  {
    v18 = &a11;
    v19 = v16 + 1;
    v20 = a2;
    do
    {
      *(v19 - 1) = a3;
      *v19 = a4;
      a3 = *(v18 - 2);
      a4 = *(v18 - 1);
      v18 += 2;
      v19 += 2;
      --v20;
    }

    while (v20);
  }

  internal = _os_metric_label_create_internal(a1, a2, v16);
  free(v17);
  return internal;
}

uint64_t os_metric_dimensions_create(unsigned int a1)
{
  objc_opt_class();
  v2 = _os_object_alloc();
  *(v2 + 16) = a1;
  v3 = 8 * a1;
  while (1)
  {
    v4 = malloc_type_calloc(1uLL, v3, 0x2004093837F09uLL);
    if (v4)
    {
      break;
    }

    _os_trace_temporary_resource_shortage();
  }

  *(v2 + 24) = v4;
  return v2;
}

BOOL os_metric_dimensions_add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(a1 + 17) == *(a1 + 16))
  {
    result = 0;
  }

  else
  {
    v8[0] = 0;
    v9 = a2;
    v10 = 0;
    v11 = a3;
    internal = _os_metric_label_create_internal(&dword_1A7AB8000, 2, v8);
    result = internal != 0;
    if (internal)
    {
      v6 = *(a1 + 17);
      *(*(a1 + 24) + 8 * v6) = internal;
      *(a1 + 17) = v6 + 1;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t os_metric_group_create(const char *a1, const char *a2, void *a3)
{
  objc_opt_class();
  v6 = _os_object_alloc();
  *(v6 + 16) = os_log_create(a1, a2);
  if (a3)
  {
    *(v6 + 24) = os_retain(a3);
  }

  return v6;
}

void *_os_metric_create_impl(void *result, uint64_t a2, void *a3, char a4, char a5, char a6, unsigned int a7, int a8, char a9)
{
  if (!a2)
  {
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: label cannot be NULL";
    __break(1u);
    goto LABEL_7;
  }

  v9 = a7;
  if (a7 >= 0x81)
  {
LABEL_7:
    qword_1EB2AFE80 = "BUG IN CLIENT OF LIBTRACE: histogram cannot have greater than 128 bins.";
    __break(1u);
    return result;
  }

  v16 = result;
  objc_opt_class();
  v17 = _os_object_alloc();
  *(v17 + 16) = os_retain(v16);
  *(v17 + 24) = _os_metric_label_create_impl(&dword_1A7AB8000, 1, 0, a2, v18, v19, v20, v21, v22, v23, v24);
  if (a3)
  {
    *(v17 + 32) = os_retain(a3);
  }

  *(v17 + 40) = a4;
  *(v17 + 41) = a5;
  *(v17 + 42) = a6;
  *(v17 + 45) = v9;
  *(v17 + 48) = a8;
  *(v17 + 52) = a9;
  _os_metric_reset_data(v17);
  return v17;
}

void _os_metric_reset_data(unsigned __int8 *a1)
{
  v2 = a1 + 56;
  os_unfair_lock_lock(&metric_lock);
  v3 = a1[42];
  if (a1[42])
  {
    if (v3 == 1)
    {
      v9 = *(&metric_defaults + a1[41]);
      v11 = v9[1];
      v10 = v9[2];
      *v2 = *v9;
      *(v2 + 1) = v11;
      *(v2 + 2) = v10;
    }

    else if (v3 == 2)
    {
      v4 = *(&metric_defaults + a1[41]);
      v5 = *(v4 + 16);
      *v2 = *v4;
      *(v2 + 1) = v5;
      v7 = *(v4 + 48);
      v6 = *(v4 + 64);
      v8 = *(v4 + 32);
      *(v2 + 10) = *(v4 + 80);
      *(v2 + 3) = v7;
      *(v2 + 4) = v6;
      *(v2 + 2) = v8;
    }
  }

  else
  {
    *v2 = 0;
  }

  if (a1[45])
  {
    if (v3 >= 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = 40 * v3 + 8;
    }

    bzero(&v2[v12], 8 * a1[45]);
  }

  os_unfair_lock_unlock(&metric_lock);
}

void _os_metric_uint64_op_impl(uint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  v9 = (a1 + 56);
  v10 = *(a1 + 42);
  if (*(a1 + 42))
  {
    if (v10 == 2)
    {
      v12 = 144;
      v11 = (a1 + 56);
    }

    else
    {
      if (v10 != 1)
      {
        __assert_rtn("_os_metric_uint64_op_impl", "metric.c", 617, "0");
      }

      v11 = 0;
      v12 = 104;
    }

    v13 = (a1 + 56);
    v9 = 0;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 64;
  }

  os_unfair_lock_lock(&metric_lock);
  if (*(a1 + 42))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        a3 = *v13 - a3;
      }

      else if (a2 != 2)
      {
        a3 = *v13;
LABEL_20:
        v15 = v13[3];
        v13[4] += a3;
        v16 = v13[1] + 1;
        v13[1] = v16;
        if (a3 > v15)
        {
          v13[3] = a3;
        }

        if (a3 < v13[2])
        {
          v13[2] = a3;
        }

        if (v11)
        {
          if (v16 < 2)
          {
            v11[9] = a3;
            v11[10] = 0.0;
          }

          else
          {
            v17 = v11[9];
            v18 = v11[10];
            v19 = v17 + (a3 - v17) / v16;
            v11[9] = v19;
            v11[10] = v18 + (*v13 - v17) * (*v13 - v19);
          }

          v20 = v11[7];
          if (v20 <= 0.0)
          {
            v11[7] = 1.0;
            v11[8] = *v13;
          }

          else
          {
            v21 = v11[6] * v20 + 1.0;
            v22 = 1.0 / v21 * *v13 + (1.0 - 1.0 / v21) * v11[8];
            v11[7] = v21;
            v11[8] = v22;
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      a3 += *v13;
    }

    *v13 = a3;
    goto LABEL_20;
  }

  if (a2 == 2)
  {
    *v9 = a3;
  }

  else
  {
    if (a2 == 1)
    {
      v14 = *v9 - a3;
    }

    else
    {
      if (a2)
      {
        goto LABEL_34;
      }

      v14 = *v9 + a3;
    }

    *v9 = v14;
  }

LABEL_34:
  v23 = *(a1 + 45);
  if (*(a1 + 45))
  {
    if (v9)
    {
      v24 = v9;
    }

    else
    {
      v24 = v13;
    }

    v25 = *v24;
    v26 = *(a1 + 48);
    LODWORD(v27) = 64 - __clz(v25);
    if (v25)
    {
      v28 = v26 == 0;
      *(a1 + 48);
    }

    else
    {
      v28 = 0;
    }

    if (!v28)
    {
      LODWORD(v27) = 0;
    }

    if (v26)
    {
      v27 = v25 / v26;
    }

    if (v27 >= v23)
    {
      v29 = v23 - 1;
    }

    else
    {
      v29 = v27;
    }

    ++*(a1 + v12 + 8 * v29);
  }

  _os_metric_emit_value(a1, v4, a4);

  os_unfair_lock_unlock(&metric_lock);
}

void _os_metric_emit_value(uint64_t a1, size_t a2, unint64_t a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v54 = 0;
  v6 = *(*(a1 + 16) + 16);
  if (_os_trace != -1)
  {
    dispatch_once_f(&_os_trace, 0, _os_trace_init_slow);
  }

  if (dword_1ED3F74DC != -1)
  {
    _os_trace_prefs_and_mode_refresh_slow(dword_1ED3F74DC);
  }

  v7 = dword_1ED3F74E4;
  if (dword_1ED3F74E4 != dword_1ED3F74E0)
  {
    v21 = dword_1ED3F74E4;
    atomic_compare_exchange_strong_explicit(&dword_1ED3F74E4, &v21, dword_1ED3F74E0, memory_order_relaxed, memory_order_relaxed);
    if (v21 == v7)
    {
      _os_log_preferences_refresh_process();
    }
  }

  if ((qword_1ED3F74D0 & 0x500) != 0 || (MEMORY[0xFFFFFC104] & 0x500) != 0 || !v6 || v6 == &_os_log_disabled)
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (*(v6 + 24))
    {
      v9 = dword_1ED3F74E0;
      v10 = *(v6 + 48);
      if (v10 != dword_1ED3F74E0)
      {
        goto LABEL_49;
      }
    }

    while (1)
    {
      v11 = &v53;
      if (*(*(a1 + 16) + 24))
      {
        v11 = &v54;
        v53 = *(*(a1 + 16) + 24);
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        ++v12;
        *v11 = v13;
      }

      if (*(a1 + 42) >= 3u)
      {
        v14 = 0;
      }

      else
      {
        v14 = 40 * *(a1 + 42) + 8;
      }

      v15 = *(a1 + 45);
      __n = 8 * v15;
      v6 = v14 + 8 * v15 + *(*(a1 + 24) + 24) + 16;
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v17 = *(&v53 + i);
          v18 = *(v17 + 16);
          if (*(v17 + 16))
          {
            v19 = *(v17 + 24);
            do
            {
              v20 = *v19++;
              v6 += *(v20 + 24);
              --v18;
            }

            while (v18);
          }
        }
      }

      while (1)
      {
        v22 = malloc_type_calloc(1uLL, v6, 0x18DF1F40uLL);
        if (v22)
        {
          break;
        }

        _os_trace_temporary_resource_shortage();
      }

      v23 = v22;
      *v22 = *(a1 + 40);
      v24 = v22 + 1;
      memcpy(v22 + 1, (a1 + 56), v14);
      v25 = v24 + v14;
      if (v15)
      {
        if (!*(a1 + 45))
        {
          __assert_rtn("_os_metric_get_bins", "metric_internal.h", 284, "metric->metadata.bins > 0");
        }

        if (*(a1 + 42) >= 3u)
        {
          v26 = 0;
        }

        else
        {
          v26 = 40 * *(a1 + 42) + 8;
        }

        memcpy(v25, (a1 + 56 + v26), __n);
        v25 += __n;
      }

      v37 = a3;
      __na = a2;
      memcpy(v25, *(*(a1 + 24) + 16), *(*(a1 + 24) + 24));
      v27 = &v25[*(*(a1 + 24) + 24)];
      if (v12)
      {
        for (j = 0; j != v12; ++j)
        {
          a2 = *(&v53 + j);
          if (*(a2 + 16))
          {
            a3 = 0;
            do
            {
              v29 = *(*(a2 + 24) + 8 * a3);
              v30 = *(v29 + 24);
              memcpy(v27, *(v29 + 16), v30);
              v27 += v30;
              ++a3;
            }

            while (a3 < *(a2 + 16));
          }
        }
      }

      if (v27 - v23 == v6)
      {
        break;
      }

      _os_assert_log();
      _os_crash();
      __break(1u);
LABEL_49:
      v36 = v10;
      atomic_compare_exchange_strong_explicit((v6 + 48), &v36, v9, memory_order_relaxed, memory_order_relaxed);
      if (v36 == v10)
      {
        _os_log_preferences_refresh(v6);
      }
    }

    v31 = *(*(a1 + 16) + 16);
    v32 = *(a1 + 41);
    v33 = *(a1 + 56);
    v48 = v23;
    v49 = v6;
    memset(v50, 0, sizeof(v50));
    v51 = 0;
    memset(v52, 0, sizeof(v52));
    v46 = v33;
    v47 = 0;
    v40 = 0u;
    v41 = 0;
    v42 = v37;
    v43 = __na;
    v44 = "%s";
    v45 = &v48;
    v34 = *__error();
    v55 = 136380675;
    v56 = &unk_1A7AD6BB1;
    _os_log_impl_flatten_and_send(&v40);
    v35 = *MEMORY[0x1E69E9840];

    free(v23);
  }
}

void _os_metric_int64_op_impl(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v9 = (a1 + 56);
  v10 = *(a1 + 42);
  if (*(a1 + 42))
  {
    if (v10 == 2)
    {
      v12 = 144;
      v11 = (a1 + 56);
    }

    else
    {
      if (v10 != 1)
      {
        __assert_rtn("_os_metric_int64_op_impl", "metric.c", 649, "0");
      }

      v11 = 0;
      v12 = 104;
    }

    v13 = (a1 + 56);
    v9 = 0;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 64;
  }

  os_unfair_lock_lock(&metric_lock);
  if (*(a1 + 42))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        a3 = *v13 - a3;
      }

      else if (a2 != 2)
      {
        a3 = *v13;
LABEL_20:
        v15 = v13[3];
        v13[4] += a3;
        v16 = v13[1] + 1;
        v13[1] = v16;
        if (a3 > v15)
        {
          v13[3] = a3;
        }

        if (a3 < v13[2])
        {
          v13[2] = a3;
        }

        if (v11)
        {
          if (v16 < 2)
          {
            v11[9] = a3;
            v11[10] = 0.0;
          }

          else
          {
            v17 = v11[9];
            v18 = v11[10];
            v19 = v17 + (a3 - v17) / v16;
            v11[9] = v19;
            v11[10] = v18 + (*v13 - v17) * (*v13 - v19);
          }

          v20 = v11[7];
          if (v20 <= 0.0)
          {
            v11[7] = 1.0;
            v11[8] = *v13;
          }

          else
          {
            v21 = v11[6] * v20 + 1.0;
            v22 = 1.0 / v21 * *v13 + (1.0 - 1.0 / v21) * v11[8];
            v11[7] = v21;
            v11[8] = v22;
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      a3 += *v13;
    }

    *v13 = a3;
    goto LABEL_20;
  }

  if (a2 == 2)
  {
    *v9 = a3;
  }

  else
  {
    if (a2 == 1)
    {
      v14 = *v9 - a3;
    }

    else
    {
      if (a2)
      {
        goto LABEL_34;
      }

      v14 = *v9 + a3;
    }

    *v9 = v14;
  }

LABEL_34:
  v23 = *(a1 + 45);
  if (*(a1 + 45))
  {
    if (v9)
    {
      v24 = v9;
    }

    else
    {
      v24 = v13;
    }

    v25 = *v24;
    v26 = *(a1 + 48);
    LODWORD(v27) = 64 - __clz(v25);
    if (v25 > 0)
    {
      v28 = v26 == 0;
      *(a1 + 48);
    }

    else
    {
      v28 = 0;
    }

    if (!v28)
    {
      LODWORD(v27) = 0;
    }

    if (v26)
    {
      if (v25 < 0)
      {
        LODWORD(v27) = 0;
      }

      else
      {
        v27 = v25 / v26;
      }
    }

    if (v27 >= v23)
    {
      v29 = v23 - 1;
    }

    else
    {
      v29 = v27;
    }

    ++*(a1 + v12 + 8 * v29);
  }

  _os_metric_emit_value(a1, v4, a4);

  os_unfair_lock_unlock(&metric_lock);
}

void _os_metric_double_op_impl(uint64_t a1, int a2, unint64_t a3, double a4)
{
  v9 = (a1 + 56);
  v10 = *(a1 + 42);
  if (*(a1 + 42))
  {
    if (v10 == 2)
    {
      v12 = 144;
      v11 = a1 + 56;
    }

    else
    {
      if (v10 != 1)
      {
        __assert_rtn("_os_metric_double_op_impl", "metric.c", 684, "0");
      }

      v11 = 0;
      v12 = 104;
    }

    v13 = a1 + 56;
    v9 = 0;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v12 = 64;
  }

  os_unfair_lock_lock(&metric_lock);
  if (*(a1 + 42))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        a4 = *v13 - a4;
      }

      else if (a2 != 2)
      {
        a4 = *v13;
LABEL_20:
        v15 = *(v13 + 24);
        *(v13 + 32) = a4 + *(v13 + 32);
        v16 = *(v13 + 8) + 1;
        *(v13 + 8) = v16;
        if (a4 > v15)
        {
          *(v13 + 24) = a4;
        }

        if (a4 < *(v13 + 16))
        {
          *(v13 + 16) = a4;
        }

        if (v11)
        {
          if (v16 < 2)
          {
            *(v11 + 72) = a4;
            v20 = 0.0;
          }

          else
          {
            v17 = *(v11 + 72);
            v18 = *(v11 + 80);
            v19 = v17 + (a4 - v17) / v16;
            *(v11 + 72) = v19;
            v20 = v18 + (*v13 - v17) * (*v13 - v19);
          }

          *(v11 + 80) = v20;
          v21 = *(v11 + 56);
          if (v21 <= 0.0)
          {
            *(v11 + 56) = 0x3FF0000000000000;
            *(v11 + 64) = *v13;
          }

          else
          {
            v22 = *(v11 + 48) * v21 + 1.0;
            v23 = 1.0 / v22 * *v13 + (1.0 - 1.0 / v22) * *(v11 + 64);
            *(v11 + 56) = v22;
            *(v11 + 64) = v23;
          }
        }

        goto LABEL_34;
      }
    }

    else
    {
      a4 = *v13 + a4;
    }

    *v13 = a4;
    goto LABEL_20;
  }

  if (a2 == 2)
  {
    *v9 = a4;
  }

  else
  {
    if (a2 == 1)
    {
      v14 = *v9 - a4;
    }

    else
    {
      if (a2)
      {
        goto LABEL_34;
      }

      v14 = *v9 + a4;
    }

    *v9 = v14;
  }

LABEL_34:
  v24 = *(a1 + 45);
  if (!*(a1 + 45))
  {
    goto LABEL_48;
  }

  if (v9)
  {
    v25 = v9;
  }

  else
  {
    v25 = v13;
  }

  v26 = *v25;
  v27 = *(a1 + 48);
  if (v27 || v26 < 1.0)
  {
    v29 = 0;
    if (!v27 || v26 < 0.0)
    {
      goto LABEL_45;
    }

    v28 = v26 / v27;
  }

  else
  {
    v28 = floor(log2(v26)) + 1.0;
  }

  v29 = v28;
LABEL_45:
  if (v29 >= v24)
  {
    v29 = v24 - 1;
  }

  ++*(a1 + v12 + 8 * v29);
LABEL_48:
  _os_metric_emit_value(a1, v4, a3);

  os_unfair_lock_unlock(&metric_lock);
}

void _os_metric_reset_impl(unsigned __int8 *a1, unint64_t a2)
{
  _os_metric_reset_data(a1);

  _os_metric_emit_value(a1, v2, a2);
}

_BYTE *os_log_fmt_convert_trace(_BYTE *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v5 = &a2[a3 - 1];
  v4 = *v5;
  *a1 = 0;
  a1[1] = v4;
  if (v4)
  {
    v6 = -v4;
    v7 = &v5[-v4];
    v8 = a1 + 2;
    while (1)
    {
      v9 = v5[v6] & 0x3F;
      v10 = &a2[v9];
      if (&a2[v9] > v7)
      {
        break;
      }

      *v8 = 0;
      v8[1] = v9;
      v11 = v8 + 2;
      memcpy(v8 + 2, a2, v9);
      v8 = &v11[v9];
      a2 = v10;
      if (__CFADD__(v6++, 1))
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

_BYTE *os_log_fmt_extract_pubdata(_BYTE *result, int a2, void *a3, unsigned __int16 *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (!a2)
  {
    return &os_log_fmt_extract_pubdata_empty_hdr;
  }

  if (a2 == 1)
  {
    return 0;
  }

  v4 = result + 2;
  v5 = a2 - 2;
  if (result[1])
  {
    v6 = 0;
    while (v5 >= 2u)
    {
      v7 = v4[1] + 2;
      if (v7 > v5)
      {
        break;
      }

      v4 += v7;
      v5 -= v7;
      if (result[1] <= ++v6)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  *a3 = v4;
  *a4 = v5;
  return result;
}

size_t _os_log_fmt_compose_masked_partial_redacted(size_t result, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = result;
  if (!a3 && (a4 & 1) == 0)
  {
    if ((*(result + 20) & 2) != 0)
    {
      return result;
    }

    v11 = *(result + 8);
    if (*(result + 12) - v11 - (*(result + 22) ^ 1u) > 7)
    {
      *(*result + v11) = 0x3E296C6C756E283CLL;
      v12 = *(result + 8) + 8;
      goto LABEL_72;
    }

    v44 = "<(null)>";
    v45 = 8;
    goto LABEL_79;
  }

  if (a3 <= 3)
  {
    if ((*(result + 20) & 2) != 0)
    {
      return result;
    }

    v13 = *(result + 8);
    if (*(result + 12) - v13 - (*(result + 22) ^ 1u) > 4)
    {
      v14 = *result + v13;
      *(v14 + 4) = 62;
      *v14 = -1501502916;
      v12 = *(result + 8) + 5;
      goto LABEL_72;
    }

    v44 = "<…>";
    v45 = 5;
    goto LABEL_79;
  }

  v15 = a3;
  v16 = *a2;
  v17 = a2[1];
  LOBYTE(v18) = a2[2];
  v19 = a2[3];
  if (v18)
  {
    v20 = v19 == 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20;
  if (!a4 && !*a2 && v21)
  {
    v22 = a3 - 4;
    v23 = a2 + 4;

    return os_trace_blob_addns(result, v23, v22, 0);
  }

  v24 = v19 == 1;
  if ((*(result + 20) & 2) == 0)
  {
    v25 = *(result + 8);
    if (*(result + 12) == v25 + (*(result + 22) ^ 1))
    {
      os_trace_blob_add_slow(result, "<", 1uLL);
    }

    else
    {
      *(*result + v25) = 60;
      v26 = *(result + 8) + 1;
      *(result + 8) = v26;
      if ((*(result + 22) & 1) == 0)
      {
        *(*result + v26) = 0;
      }
    }
  }

  v27 = v16 + 4;
  if (v15 > v16 + 4)
  {
    if (v15 - (v16 + 4) >= v18)
    {
      v18 = v18;
    }

    else
    {
      v18 = v15 - (v16 + 4);
    }

    if (v19 == 2)
    {
      a3 = v18;
    }

    else
    {
      a3 = v15 - (v16 + 4);
    }

    if (a3)
    {
      if (v19 == 1 && (*(v10 + 20) & 2) == 0)
      {
        v28 = *(v10 + 8);
        if (*(v10 + 12) - v28 - (*(v10 + 22) ^ 1u) <= 2)
        {
          v46 = a3;
          os_trace_blob_add_slow(v10, "…", 3uLL);
          a3 = v46;
        }

        else
        {
          v29 = *v10 + v28;
          *(v29 + 2) = -90;
          *v29 = -32542;
          v30 = *(v10 + 8) + 3;
          *(v10 + 8) = v30;
          if ((*(v10 + 22) & 1) == 0)
          {
            *(*v10 + v30) = 0;
          }
        }
      }

      if (os_trace_blob_addns(v10, &a2[v27], a3, 0))
      {
        if (((v19 | 2) == 2 || v8) && (*(v10 + 20) & 2) == 0)
        {
          v31 = *(v10 + 8);
          if (*(v10 + 12) - v31 - (*(v10 + 22) ^ 1u) <= 2)
          {
            os_trace_blob_add_slow(v10, "…", 3uLL);
          }

          else
          {
            v32 = *v10 + v31;
            *(v32 + 2) = -90;
            *v32 = -32542;
            v33 = *(v10 + 8) + 3;
            *(v10 + 8) = v33;
            if ((*(v10 + 22) & 1) == 0)
            {
              *(*v10 + v33) = 0;
            }
          }
        }

        v24 = 1;
      }
    }

    else
    {
      v24 = 0;
    }

    if (v19 == 2 && (a3 = v15 - (v18 + v27), v15 != v18 + v27) && os_trace_blob_addns(v10, &a2[v18 + v27], a3, 0))
    {
      if ((*(v10 + 20) & 2) == 0)
      {
        v34 = *(v10 + 8);
        if (*(v10 + 12) - v34 - (*(v10 + 22) ^ 1u) <= 2)
        {
          os_trace_blob_add_slow(v10, "…", 3uLL);
        }

        else
        {
          v35 = *v10 + v34;
          *(v35 + 2) = -90;
          *v35 = -32542;
          v36 = *(v10 + 8) + 3;
          *(v10 + 8) = v36;
          if ((*(v10 + 22) & 1) == 0)
          {
            *(*v10 + v36) = 0;
          }
        }
      }
    }

    else if (!v24)
    {
      goto LABEL_60;
    }

    if ((*(v10 + 20) & 2) == 0)
    {
      v37 = *(v10 + 8);
      if (*(v10 + 12) - v37 - (*(v10 + 22) ^ 1u) <= 1)
      {
        os_trace_blob_add_slow(v10, ", ", 2uLL);
      }

      else
      {
        *(*v10 + v37) = 8236;
        v38 = *(v10 + 8) + 2;
        *(v10 + 8) = v38;
        if ((*(v10 + 22) & 1) == 0)
        {
          *(*v10 + v38) = 0;
        }
      }
    }
  }

LABEL_60:
  result = os_trace_blob_addf(v10, "length=%u", a3, a4, a5, a6, a7, a8, v17);
  v39 = v15 - 4;
  if (v39 >= v16)
  {
    v40 = v16;
  }

  else
  {
    v40 = v39;
  }

  if (v40)
  {
    if ((*(v10 + 20) & 2) == 0)
    {
      v41 = *(v10 + 8);
      if (*(v10 + 12) - v41 - (*(v10 + 22) ^ 1u) <= 1)
      {
        os_trace_blob_add_slow(v10, ", ", 2uLL);
      }

      else
      {
        *(*v10 + v41) = 8236;
        v42 = *(v10 + 8) + 2;
        *(v10 + 8) = v42;
        if ((*(v10 + 22) & 1) == 0)
        {
          *(*v10 + v42) = 0;
        }
      }
    }

    result = os_trace_blob_add_hexdump(v10, (a2 + 4), v40, v39 < v16);
  }

  if ((*(v10 + 20) & 2) == 0)
  {
    v43 = *(v10 + 8);
    if (*(v10 + 12) != v43 + (*(v10 + 22) ^ 1))
    {
      *(*v10 + v43) = 62;
      v12 = *(v10 + 8) + 1;
LABEL_72:
      *(v10 + 8) = v12;
      if ((*(v10 + 22) & 1) == 0)
      {
        *(*v10 + v12) = 0;
      }

      return result;
    }

    v44 = ">";
    result = v10;
    v45 = 1;
LABEL_79:

    return os_trace_blob_add_slow(result, v44, v45);
  }

  return result;
}

uint64_t _os_log_fmt_builtin_annotated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v9 = 0;
  v10 = *(a3 + 40);
  v11 = *(a3 + 16);
  v12 = 17;
  while (1)
  {
    v13 = (v9 + v12) >> 1;
    v14 = &(&_os_log_fmt_builtin_annotated_functions)[2 * v13];
    v15 = *v14;
    v16 = strncmp(v10, *v14, v11);
    if (!v16)
    {
      break;
    }

LABEL_5:
    if (v16 >= 0)
    {
      v9 = v13 + 1;
    }

    else
    {
      v12 = (v9 + v12) >> 1;
    }

    if (v9 >= v12)
    {
      return 0;
    }
  }

  if (v15[v11])
  {
    v16 = -v15[v11];
    goto LABEL_5;
  }

  v18 = v14[1];

  return (v18)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t _os_log_fmt_builtin_uuid_t(size_t a1, int a2, uint64_t a3, _BYTE *a4, unsigned __int8 *uu, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      memset(v15, 0, sizeof(v15));
      uuid_unparse_upper(uu, v15);
      v9 = strlen(v15);
      if ((*(a1 + 20) & 2) == 0)
      {
        v10 = v9;
        v11 = *(a1 + 8);
        if (v9 > *(a1 + 12) - v11 - (*(a1 + 22) ^ 1u))
        {
          os_trace_blob_add_slow(a1, v15, v9);
        }

        else
        {
          memcpy((*a1 + v11), v15, v9);
          v12 = *(a1 + 8) + v10;
          *(a1 + 8) = v12;
          if ((*(a1 + 22) & 1) == 0)
          {
            *(*a1 + v12) = 0;
          }
        }
      }
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, a6, a7, a8);
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t _os_log_fmt_builtin_timeval(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      os_trace_blob_add_localtime(a1, *a5, *(a5 + 8), 1u);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, a6, a7, a8);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_timespec(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, time_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 10) == 19 && a6 <= 0x10 && (a6 == 16 || (a7 & 1) != 0))
  {
    if (a6 != 16 && a7)
    {
      _os_log_fmt_decode_error(a1);
    }

    else
    {
      os_trace_blob_add_localtime(a1, *a5, a5[1], 0);
    }
  }

  else
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, a6, a7, a8);
  }

  return 1;
}

uint64_t _os_log_fmt_builtin_time(tm *a1, uint64_t a2, uint64_t a3, _BYTE *a4, time_t *a5, uint64_t a6)
{
  if (!_os_log_fmt_spec_is_integer(*(a3 + 10), 0))
  {
    goto LABEL_8;
  }

  if (a6 == 4)
  {
    v14 = *a5;
    goto LABEL_6;
  }

  if (a6 != 8)
  {
LABEL_8:
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v11, v12, v13);
    return 1;
  }

  v14 = *a5;
LABEL_6:
  os_trace_blob_add_localtime(a1, v14, 0, 3u);
  return 1;
}

uint64_t _os_log_fmt_spec_is_integer(unsigned __int8 a1, unsigned int a2)
{
  if (a1 == 13)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0;
  }

  if (a1 - 1 < 0xC)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t _os_log_fmt_builtin_trace_mode(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int *a5, uint64_t a6)
{
  is_integer = _os_log_fmt_spec_is_integer(*(a3 + 10), 0);
  if (a6 != 4 || (is_integer & 1) == 0)
  {
    _os_log_fmt_decode_cmd_mismatch(a1, *a3, *(a3 + 12), a4, a6, v15, v16, v17);
    return 1;
  }

  v18 = *a5;
  os_trace_blob_addf(a1, "0x%X", v12, v13, v14, v15, v16, v17, *a5);
  v19 = 1;
  v20 = &off_1E77DB468;
  v21 = 7;
  do
  {
    if ((*(v20 - 1) & v18) == 0)
    {
      goto LABEL_20;
    }

    if (v19)
    {
      v22 = "(";
    }

    else
    {
      v22 = ", ";
    }

    if (v19)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    if ((*(a1 + 20) & 2) == 0)
    {
      v24 = *(a1 + 8);
      if (v23 > *(a1 + 12) - v24 - (*(a1 + 22) ^ 1u))
      {
        os_trace_blob_add_slow(a1, v22, v23);
      }

      else
      {
        memcpy((*a1 + v24), v22, v23);
        v25 = *(a1 + 8) + v23;
        *(a1 + 8) = v25;
        if ((*(a1 + 22) & 1) == 0)
        {
          *(*a1 + v25) = 0;
        }
      }
    }

    v26 = *v20;
    v27 = strlen(*v20);
    if ((*(a1 + 20) & 2) != 0)
    {
      goto LABEL_18;
    }

    v28 = v27;
    v29 = *(a1 + 8);
    if (v27 > *(a1 + 12) - v29 - (*(a1 + 22) ^ 1u))
    {
      os_trace_blob_add_slow(a1, v26, v27);
LABEL_18:
      v19 = 0;
      goto LABEL_20;
    }

    memcpy((*a1 + v29), v26, v27);
    v30 = *(a1 + 8) + v28;
    *(a1 + 8) = v30;
    if (*(a1 + 22))
    {
      goto LABEL_18;
    }

    v19 = 0;
    *(*a1 + v30) = 0;
LABEL_20:
    v20 += 2;
    --v21;
  }

  while (v21);
  if ((v19 & 1) == 0 && (*(a1 + 20) & 2) == 0)
  {
    v31 = *(a1 + 8);
    if (*(a1 + 12) - v31 - (*(a1 + 22) ^ 1u) <= 1)
    {
      os_trace_blob_add_slow(a1, ")", 2uLL);
    }

    else
    {
      *(*a1 + v31) = 10528;
      v32 = *(a1 + 8) + 2;
      *(a1 + 8) = v32;
      if ((*(a1 + 22) & 1) == 0)
      {
        *(*a1 + v32) = 0;
      }
    }
  }

  return 1;
}