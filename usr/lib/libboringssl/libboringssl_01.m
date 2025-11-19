unint64_t ERR_peek_error(void)
{
  result = err_get_state();
  if (result)
  {
    v1 = *(result + 388);
    if (v1 == *(result + 384))
    {
      return 0;
    }

    else
    {
      return *(result + 24 * ((v1 + 1) & 0xF) + 16);
    }
  }

  return result;
}

void nw_boringssl_read(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_131;
  }

  v2 = nw_protocol_downcast();
  if (!v2)
  {
    goto LABEL_131;
  }

  v3 = v2;
  if ((*(v2 + 435) & 1) == 0)
  {
    nw_boringssl_read_cold_1();
  }

  if ((*(v3 + 348) & 1) != 0 || *(v3 + 232) || (*(v3 + 349) & 2) != 0)
  {
    goto LABEL_131;
  }

  *(v3 + 349) |= 2u;
  if (boringssl_session_get_state(*(v3 + 296)) < 2)
  {
    if (*(v3 + 280))
    {
      nw_queue_cancel_source();
      *(v3 + 280) = 0;
    }

    nw_protocol_boringssl_handshake_negotiate(v3);
    goto LABEL_130;
  }

  if (*(v3 + 348) < 0)
  {
    goto LABEL_127;
  }

  v4 = 0;
  v5 = (v3 + 340);
  v6 = v3 + 351;
  while (1)
  {
    if (*v5 > 0x800000u)
    {
      if ((*(v3 + 435) & 1) == 0)
      {
        nw_boringssl_read_cold_2();
      }

      goto LABEL_125;
    }

    v7 = nw_protocol_downcast();
    if (!v7)
    {
      goto LABEL_29;
    }

    v8 = v7;
    if ((*(v7 + 435) & 1) == 0 && datapath_logging_enabled == 1)
    {
      v37 = g_boringssl_log;
      if (g_boringssl_log)
      {
        if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446978;
          v51 = "nw_protocol_boringssl_read_one_record";
          v52 = 1024;
          v53 = 1496;
          v54 = 2082;
          v55 = v8 + 351;
          v56 = 2048;
          v57 = v8;
          _os_log_debug_impl(&dword_1A8FF5000, v37, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] ", buf, 0x26u);
        }
      }
    }

    if ((boringssl_session_get_state(*(v8 + 296)) & 0xFFFFFFFE) != 2)
    {
      if ((*(v8 + 435) & 1) == 0 && datapath_logging_enabled == 1)
      {
        v39 = g_boringssl_log;
        if (g_boringssl_log)
        {
          if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446978;
            v51 = "nw_protocol_boringssl_read_one_record";
            v52 = 1024;
            v53 = 1500;
            v54 = 2082;
            v55 = v8 + 351;
            v56 = 2048;
            v57 = v8;
            _os_log_debug_impl(&dword_1A8FF5000, v39, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Cannot get any bytes in current state", buf, 0x26u);
          }
        }
      }

      goto LABEL_29;
    }

    v9 = (*(v8 + 24))(*(v8 + 296), 0, 0x7FFFFFFFLL, 1);
    if ((*(v8 + 435) & 1) == 0 && datapath_logging_enabled == 1)
    {
      v38 = g_boringssl_log;
      if (g_boringssl_log)
      {
        if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136447234;
          v51 = "nw_protocol_boringssl_read_one_record";
          v52 = 1024;
          v53 = 1509;
          v54 = 2082;
          v55 = v8 + 351;
          v56 = 2048;
          v57 = v8;
          v58 = 1024;
          v59 = v9;
          _os_log_debug_impl(&dword_1A8FF5000, v38, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] peeked %d bytes", buf, 0x2Cu);
        }
      }
    }

    v10 = *(v8 + 296);
    if (v10)
    {
      if (*v10 == -1252936367)
      {
        v11 = v10[1];
        if (v11)
        {
          if (v9 < 1)
          {
            if (boringssl_session_get_state(*(v8 + 296)) == 4)
            {
              goto LABEL_29;
            }

            v22 = *(v11 + 392);
            if (v22)
            {
              error = SSL_get_error(v22, v9);
              if ((*(v8 + 435) & 1) == 0 && datapath_logging_enabled == 1)
              {
                v42 = g_boringssl_log;
                if (g_boringssl_log)
                {
                  if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136447234;
                    v51 = "nw_protocol_boringssl_read_one_record";
                    v52 = 1024;
                    v53 = 1565;
                    v54 = 2082;
                    v55 = v8 + 351;
                    v56 = 2048;
                    v57 = v8;
                    v58 = 1024;
                    v59 = error;
                    _os_log_debug_impl(&dword_1A8FF5000, v42, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] read error code %d", buf, 0x2Cu);
                  }
                }
              }

              if (error == 1)
              {
                ERR_print_errors_cb(nw_protocol_error_print, v10);
                nw_protocol_boringssl_internal_error(v8, -9810);
                nw_protocol_get_output_handler();
                nw_protocol_boringssl_disconnect(a1);
              }

              else if (error == 6)
              {
                nw_protocol_get_output_handler();
                nw_protocol_boringssl_input_finished(a1);
              }
            }

            else if ((*(v8 + 435) & 1) == 0)
            {
              v36 = g_boringssl_log;
              if (g_boringssl_log)
              {
                if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v51 = "nw_protocol_boringssl_read_one_record";
                  v52 = 1024;
                  v53 = 1561;
                  v54 = 2082;
                  v55 = v8 + 351;
                  v56 = 2048;
                  v57 = v8;
                  v18 = v36;
                  v19 = "%{public}s(%d) %{public}s[%p] cannot peek into the session";
                  v35 = 38;
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_29;
          }

          v12 = *(v11 + 24);
          buffer_manager_with_context = nw_frame_get_buffer_manager_with_context();
          if (buffer_manager_with_context)
          {
            v14 = buffer_manager_with_context;
            v15 = nw_mem_buffer_allocate();
            if (v15)
            {
LABEL_44:
              v24 = v6;
              v25 = (*(v8 + 24))(*(v8 + 296), v15, v9, 0);
              v26 = *(v8 + 435);
              if ((v26 & 1) == 0 && datapath_logging_enabled == 1)
              {
                oslog = g_boringssl_log;
                if (g_boringssl_log)
                {
                  if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136447234;
                    v51 = "nw_protocol_boringssl_read_one_record";
                    v52 = 1024;
                    v53 = 1540;
                    v54 = 2082;
                    v55 = v8 + 351;
                    v56 = 2048;
                    v57 = v8;
                    v58 = 1024;
                    v59 = v25;
                    _os_log_debug_impl(&dword_1A8FF5000, oslog, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Actually read %d bytes", buf, 0x2Cu);
                  }

                  v26 = *(v8 + 435);
                }
              }

              if (v25 != v9 && (v26 & 1) == 0)
              {
                osloga = g_boringssl_log;
                if (g_boringssl_log)
                {
                  if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136447490;
                    v51 = "nw_protocol_boringssl_read_one_record";
                    v52 = 1024;
                    v53 = 1542;
                    v54 = 2082;
                    v55 = v8 + 351;
                    v56 = 2048;
                    v57 = v8;
                    v58 = 1024;
                    v59 = v25;
                    v60 = 1024;
                    v61 = v9;
                    _os_log_error_impl(&dword_1A8FF5000, osloga, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Unexpected read result %d != %d", buf, 0x32u);
                  }

                  v26 = *(v8 + 435);
                }
              }

              if ((v26 & 1) == 0 && datapath_logging_enabled == 1)
              {
                v40 = g_boringssl_log;
                if (g_boringssl_log)
                {
                  if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136447234;
                    v51 = "nw_protocol_boringssl_read_one_record";
                    v52 = 1024;
                    v53 = 1593;
                    v54 = 2082;
                    v55 = v8 + 351;
                    v56 = 2048;
                    v57 = v8;
                    v58 = 1024;
                    v59 = v9;
                    _os_log_debug_impl(&dword_1A8FF5000, v40, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] bytes read: %u", buf, 0x2Cu);
                  }
                }
              }

              v28 = nw_frame_create();
              v29 = v28;
              if (v14)
              {
                if (v28)
                {
                  nw_frame_set_buffer_used_manager();
LABEL_55:
                  v30 = boringssl_context_copy_metadata(*(v8 + 296));
                  if (v30)
                  {
                    boringssl_context_is_dtls(*(v8 + 296));
                    nw_frame_set_metadata();
                  }

                  v31 = v29;
                  nw_frame_array_append();
                  nw_frame_array_append();

                  *(v8 + 340) += v9;
                  v6 = v24;
                  goto LABEL_58;
                }

                if ((*(v8 + 435) & 1) == 0)
                {
                  oslogb = g_boringssl_log;
                  if (g_boringssl_log)
                  {
                    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136447234;
                      v51 = "nw_protocol_boringssl_read_one_record";
                      v52 = 1024;
                      v53 = 1600;
                      v54 = 2082;
                      v55 = v8 + 351;
                      v56 = 2048;
                      v57 = v8;
                      v58 = 1024;
                      v59 = v9;
                      _os_log_error_impl(&dword_1A8FF5000, oslogb, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] nw_frame_create failed for %d bytes", buf, 0x2Cu);
                    }
                  }
                }

                nw_mem_buffer_free();
              }

              else
              {
                if (v28)
                {
                  nw_frame_set_buffer_used_malloc();
                  goto LABEL_55;
                }

                if ((*(v8 + 435) & 1) == 0)
                {
                  v43 = g_boringssl_log;
                  if (g_boringssl_log)
                  {
                    if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136447234;
                      v51 = "nw_protocol_boringssl_read_one_record";
                      v52 = 1024;
                      v53 = 1608;
                      v54 = 2082;
                      v55 = v8 + 351;
                      v56 = 2048;
                      v57 = v8;
                      v58 = 1024;
                      v59 = v9;
                      _os_log_error_impl(&dword_1A8FF5000, v43, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] nw_frame_create failed for %d bytes", buf, 0x2Cu);
                    }
                  }
                }

                free(v15);
              }

              v6 = v24;
              goto LABEL_29;
            }

            if ((*(v8 + 435) & 1) == 0 && datapath_logging_enabled == 1)
            {
              v41 = g_boringssl_log;
              if (g_boringssl_log)
              {
                if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136447234;
                  v51 = "nw_protocol_boringssl_read_one_record";
                  v52 = 1024;
                  v53 = 1519;
                  v54 = 2082;
                  v55 = v8 + 351;
                  v56 = 2048;
                  v57 = v8;
                  v58 = 1024;
                  v59 = v9;
                  _os_log_debug_impl(&dword_1A8FF5000, v41, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Failed to allocate %d bytes for input_buffer from buffer manager", buf, 0x2Cu);
                }
              }
            }

            v16 = malloc_type_malloc(v9, 0x100004077774924uLL);
            if (!v16)
            {
              if ((*(v8 + 435) & 1) == 0)
              {
                v17 = g_boringssl_log;
                if (g_boringssl_log)
                {
                  if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136447234;
                    v51 = "nw_protocol_boringssl_read_one_record";
                    v52 = 1024;
                    v53 = 1525;
                    v54 = 2082;
                    v55 = v8 + 351;
                    v56 = 2048;
                    v57 = v8;
                    v58 = 1024;
                    v59 = v9;
                    v18 = v17;
                    v19 = "%{public}s(%d) %{public}s[%p] Failed to allocate %d bytes for input_buffer";
LABEL_71:
                    v35 = 44;
LABEL_76:
                    _os_log_error_impl(&dword_1A8FF5000, v18, OS_LOG_TYPE_ERROR, v19, buf, v35);
                    goto LABEL_29;
                  }
                }
              }

              goto LABEL_29;
            }
          }

          else
          {
            v16 = malloc_type_malloc(v9, 0x100004077774924uLL);
            if (!v16)
            {
              if ((*(v8 + 435) & 1) == 0)
              {
                v34 = g_boringssl_log;
                if (g_boringssl_log)
                {
                  if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136447234;
                    v51 = "nw_protocol_boringssl_read_one_record";
                    v52 = 1024;
                    v53 = 1532;
                    v54 = 2082;
                    v55 = v8 + 351;
                    v56 = 2048;
                    v57 = v8;
                    v58 = 1024;
                    v59 = v9;
                    v18 = v34;
                    v19 = "%{public}s(%d) %{public}s[%p] Failed to allocate %d bytes for input_buffer";
                    goto LABEL_71;
                  }
                }
              }

LABEL_29:
              if ((v4 & 1) == 0)
              {
                goto LABEL_127;
              }

              goto LABEL_30;
            }
          }

          v15 = v16;
          v14 = 0;
          goto LABEL_44;
        }
      }
    }

LABEL_58:
    if (*v5 <= 0x800000u)
    {
      v21 = *(v3 + 348);
      v4 = 1;
      goto LABEL_34;
    }

    if ((*(v3 + 435) & 1) == 0 && datapath_logging_enabled == 1)
    {
      v32 = g_boringssl_log;
      if (g_boringssl_log)
      {
        if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(v3 + 340);
          *buf = 136447234;
          v51 = "nw_boringssl_read";
          v52 = 1024;
          v53 = 793;
          v54 = 2082;
          v55 = v6;
          v56 = 2048;
          v57 = v3;
          v58 = 1024;
          v59 = v33;
          _os_log_debug_impl(&dword_1A8FF5000, v32, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] Passed max input threshold, stopping reading to deliver data (%u bytes)", buf, 0x2Cu);
        }
      }
    }

LABEL_30:
    nw_protocol_get_input_handler();
    is_valid = nw_protocol_input_available_is_valid();
    v21 = *(v3 + 348);
    if (is_valid)
    {
      *(v3 + 348) = v21 | 0x40;
      nw_protocol_get_input_handler();
      nw_protocol_input_available();
      v21 = *(v3 + 348);
      if ((v21 & 0x40) != 0 && *v5 > 0x8000u)
      {
        break;
      }
    }

    v4 = 0;
LABEL_34:
    if (v21 < 0)
    {
      goto LABEL_127;
    }
  }

  if ((*(v3 + 435) & 1) == 0 && datapath_logging_enabled == 1)
  {
    v45 = g_boringssl_log;
    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_DEBUG))
      {
        v46 = *(v3 + 340);
        *buf = 136447234;
        v51 = "nw_boringssl_read";
        v52 = 1024;
        v53 = 821;
        v54 = 2082;
        v55 = v6;
        v56 = 2048;
        v57 = v3;
        v58 = 1024;
        v59 = v46;
        _os_log_debug_impl(&dword_1A8FF5000, v45, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] input_available unacknowledged, data (%u bytes) over readahead threshold, suspending reads", buf, 0x2Cu);
      }

LABEL_125:
      v21 = *(v3 + 348);
    }
  }

  *(v3 + 348) = v21 | 0x80;
LABEL_127:
  if (*(v3 + 349))
  {
    nw_protocol_get_input_handler();
    if (nw_protocol_input_finished_is_valid())
    {
      *(v3 + 349) &= ~1u;
      nw_protocol_get_input_handler();
      nw_protocol_input_finished();
    }
  }

LABEL_130:
  *(v3 + 349) &= ~2u;
LABEL_131:
  v44 = *MEMORY[0x1E69E9840];
}

void nw_boringssl_read_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

int SSL_get_error(const SSL *s, int ret_code)
{
  if (ret_code > 0)
  {
    return 0;
  }

  v5 = ERR_peek_error();
  if (v5)
  {
    if (HIBYTE(v5) == 2)
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }

  result = *(s->handshake_func + 49);
  if (!ret_code)
  {
    if (result == 6)
    {
      return 6;
    }

    else
    {
      return 5;
    }
  }

  if ((result - 11) >= 0xA && result != 4)
  {
    if (result == 3)
    {
      bbio = s->bbio;
      if (BIO_should_write(bbio))
      {
        return 3;
      }

      if (!BIO_should_read(bbio))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (result != 2)
      {
        return 5;
      }

      if (!*&s->hit)
      {
        bbio = s->wbio;
        if (!BIO_should_read(bbio))
        {
          if (!BIO_should_write(bbio))
          {
LABEL_26:
            if (BIO_should_io_special(bbio))
            {
              retry_reason = BIO_get_retry_reason(bbio);
              if (retry_reason == 3)
              {
                v9 = 8;
              }

              else
              {
                v9 = 5;
              }

              if (retry_reason == 2)
              {
                return 7;
              }

              else
              {
                return v9;
              }
            }

            return 5;
          }

          return 3;
        }
      }
    }

    return 2;
  }

  return result;
}

void nw_protocol_boringssl_output_available(uint64_t a1)
{
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 435) & 1) == 0)
      {
        nw_protocol_boringssl_output_available_cold_1();
      }

      if (nw_protocol_get_output_handler())
      {
        v3 = *(v2 + 435);
        if ((*(v2 + 350) & 2) != 0)
        {
          if ((*(v2 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_output_available_cold_2();
          }
        }

        else if ((*(v2 + 435) & 1) == 0)
        {
          nw_protocol_boringssl_output_available_cold_3();
        }

        if ((*(v2 + 348) & 0x20) != 0 && (nw_protocol_boringssl_write_frames(v2), (*(v2 + 348) & 0x20) != 0))
        {
          if ((*(v2 + 435) & 1) == 0)
          {
            nw_protocol_boringssl_output_available_cold_4();
          }
        }

        else
        {
          state = boringssl_session_get_state(*(v2 + 296));
          if (state == 1)
          {
            nw_protocol_boringssl_handshake_negotiate(v2);
          }

          else if (state == 2)
          {
            if ((*(v2 + 435) & 1) == 0)
            {
              nw_protocol_boringssl_output_available_cold_5();
            }

            nw_protocol_get_input_handler();
            nw_protocol_output_available();
          }
        }
      }
    }
  }
}

void nw_protocol_boringssl_output_available_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::ssl_handle_open_record(bssl *a1, _BYTE *a2, int a3, ssl_st *a4, int a5)
{
  *a2 = 0;
  v6 = *(a1 + 6);
  v7 = *(v6 + 92);
  if (a3 != 2)
  {
    if (v7 < a4)
    {
      abort();
    }

    *(v6 + 88) += a4;
    LOWORD(v7) = v7 - a4;
    *(v6 + 92) = v7;
    *(v6 + 94) -= a4;
    if (!a3)
    {
      return 1;
    }
  }

  if (!v7)
  {
    *(v6 + 88) = *(v6 + 90);
    *(v6 + 94) = *(v6 + 96);
  }

  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (a3 != 4)
  {
    if (a3 == 3)
    {
      result = 0;
      *(v6 + 196) = 6;
      return result;
    }

    if (a3 == 2)
    {
      result = bssl::ssl_read_buffer_extend_to(a1, a4);
      if (result < 1)
      {
        return result;
      }

LABEL_13:
      result = 1;
      *a2 = 1;
      return result;
    }

LABEL_20:
    bssl::ssl_handle_open_record();
  }

  if (a5)
  {
    bssl::ssl_send_alert(a1, 2, a5);
  }

  return 0xFFFFFFFFLL;
}

BOOL bssl::SSLAEADContext::Open(bssl::SSLAEADContext *this, char **a2, char a3, __int16 a4, unint64_t a5, int a6, int a7, int a8, char *a9, unint64_t a10)
{
  v11 = a9;
  v12 = a10;
  __dst[5] = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v17 = *(this + 616);
    if ((v17 & 8) != 0)
    {
      v19 = 0;
    }

    else
    {
      v18 = bssl::SSLAEADContext::MaxOverhead(this);
      v19 = a10 - v18;
      if (a10 < v18)
      {
        v20 = 231;
LABEL_20:
        ERR_put_error(16, 0, 112, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_aead_ctx.cc", v20);
        result = 0;
        goto LABEL_35;
      }

      v17 = *(this + 616);
    }

    memset(&__dst[3], 170, 13);
    if ((v17 & 0x10) == 0)
    {
      __dst[3] = bswap64(a5);
      LOBYTE(__dst[4]) = a3;
      BYTE1(__dst[4]) = HIBYTE(a4);
      BYTE2(__dst[4]) = a4;
      if ((v17 & 8) == 0)
      {
        *(&__dst[4] + 3) = bswap32(v19) >> 16;
      }
    }

    memset(__dst, 170, 24);
    v22 = *(this + 604);
    v23 = *(this + 604);
    if ((v17 & 4) != 0)
    {
      v22 -= *(this + 605);
      if (v22)
      {
        bzero(__dst, v22);
      }
    }

    else if (*(this + 604))
    {
      memcpy(__dst, this + 592, *(this + 604));
    }

    else
    {
      v22 = 0;
    }

    v24 = *(this + 605);
    if (v17)
    {
      v12 = a10 - v24;
      if (a10 < v24)
      {
        v20 = 258;
        goto LABEL_20;
      }

      if (*(this + 605))
      {
        memcpy(__dst + v22, a9, *(this + 605));
      }

      v11 = &a9[v24];
    }

    else
    {
      if (v24 != 8)
      {
        bssl::SSLAEADContext::Open();
      }

      *(__dst + v22) = bswap64(a5);
      v24 = 8;
    }

    v25 = v22 + v24;
    if ((v17 & 4) != 0)
    {
      if (v25 != v23)
      {
        bssl::SSLAEADContext::Open();
      }

      if (v23)
      {
        v26 = this + 592;
        v27 = __dst;
        v28 = v22 + v24;
        do
        {
          v29 = *v26++;
          *v27++ ^= v29;
          --v28;
        }

        while (v28);
      }
    }

    v33 = 0xAAAAAAAAAAAAAAAALL;
    v30 = EVP_AEAD_CTX_open(this + 8, v11, &v33, v12, __dst, v25, v11, v12);
    result = v30 != 0;
    if (v30)
    {
      v31 = v33;
      if (v12 < v33)
      {
        v31 = v12;
      }

      *a2 = v11;
      a2[1] = v31;
    }
  }

  else
  {
    *a2 = a9;
    a2[1] = a10;
    result = 1;
  }

LABEL_35:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::ssl_max_handshake_message_len(bssl *this, const ssl_st *a2)
{
  if (SSL_in_init(this))
  {
    if ((*(this + 180) & 1) != 0 && (*(*(this + 1) + 308) & 1) == 0)
    {
      return 0x4000;
    }
  }

  else
  {
    if (bssl::ssl_protocol_version(this, v3) < 0x304)
    {
      return 0;
    }

    if (*(this + 180))
    {
      return 1;
    }
  }

  v5 = *(this + 38);
  if (v5 <= 0x4000)
  {
    return 0x4000;
  }

  else
  {
    return v5;
  }
}

uint64_t bssl::tls_can_accept_handshake_data(bssl *this, const ssl_st *a2, unsigned __int8 *a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v5;
  v11[1] = v5;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (bssl::parse_message(this, v11, &v10))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 523);
    v7 = 80;
LABEL_5:
    result = 0;
    LOBYTE(a2->version) = v7;
    return result;
  }

  v8 = v10;
  if (v8 > bssl::ssl_max_handshake_message_len(this, v6) + 4)
  {
    ERR_put_error(16, 0, 150, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 530);
    v7 = 47;
    goto LABEL_5;
  }

  return 1;
}

int BIO_read(BIO *b, void *data, int len)
{
  if (!b || !b->method || (bread = b->method->bread) == 0)
  {
    v6 = 115;
    v7 = 129;
LABEL_9:
    ERR_put_error(17, 0, v6, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio.c", v7);
    return -2;
  }

  if (!LODWORD(b->cb_arg))
  {
    v6 = 114;
    v7 = 133;
    goto LABEL_9;
  }

  if (len < 1)
  {
    return 0;
  }

  result = (bread)(b, data);
  if (result >= 1)
  {
    b->next_bio = (b->next_bio + result);
  }

  return result;
}

void nw_protocol_boringssl_read_bytes_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

_WORD *bssl::SSLBuffer::DiscardConsumed(_WORD *this)
{
  if (!this[6])
  {
    this[4] = this[5];
    this[7] = this[8];
  }

  return this;
}

uint64_t CRYPTO_set_thread_local(unsigned int a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (pthread_once(&g_thread_local_init_once, thread_local_init))
  {
    abort();
  }

  if (!g_thread_local_key_created)
  {
    goto LABEL_9;
  }

  v6 = pthread_getspecific(g_thread_local_key);
  if (!v6)
  {
    v8 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
    if (!v8)
    {
      goto LABEL_9;
    }

    v6 = v8;
    *(v8 + 4) = 0;
    *v8 = 0u;
    v8[1] = 0u;
    if (pthread_setspecific(g_thread_local_key, v8))
    {
      free(v6);
      goto LABEL_9;
    }
  }

  if (!pthread_mutex_lock(&g_destructors_lock))
  {
    *(&g_destructors + a1) = a3;
    pthread_mutex_unlock(&g_destructors_lock);
    *(v6 + a1) = a2;
    return 1;
  }

LABEL_9:
  a3(a2);
  return 0;
}

uint64_t bssl::ssl_protocol_version_from_wire(bssl *this, unsigned __int16 *a2)
{
  v2 = 0;
  if (a2 > 64548)
  {
    switch(a2)
    {
      case 0xFC25:
        LOWORD(a2) = 772;
        break;
      case 0xFEFD:
        LOWORD(a2) = 771;
        break;
      case 0xFEFF:
        LOWORD(a2) = 770;
        break;
      default:
        return v2;
    }

    goto LABEL_3;
  }

  if ((a2 - 769) < 4)
  {
LABEL_3:
    *this = a2;
    return 1;
  }

  return v2;
}

const char *__cdecl SSL_CIPHER_get_name(const SSL_CIPHER *c)
{
  v1 = kUnknownCipher;
  if (c)
  {
    v1 = c;
  }

  return *v1;
}

uint64_t boringssl_ciphers_fillout_configuration_string(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (a1 && a2 && a3 && a4)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a2 - 1;
    do
    {
      while (1)
      {
        v13 = boringssl_ciphers_value_to_string(*(a1 + 2 * v11));
        if (!v13)
        {
          break;
        }

        v14 = v13;
        if (v10)
        {
          if (v9 + 1 >= a4)
          {
            return 0;
          }

          *(a3 + v9++) = 58;
        }

        v15 = strlen(v13);
        v16 = v15 + v9;
        if (v15 + v9 >= a4)
        {
          return 0;
        }

        strncpy((a3 + v9), v14, v15);
        v10 = 1;
        v9 = v16;
        if (v12 == v11++)
        {
          return a3;
        }
      }

      ++v11;
    }

    while (a2 != v11);
    result = a3;
    if (v10)
    {
      return result;
    }

    if (g_boringssl_log)
    {
      if (os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
      {
        boringssl_ciphers_fillout_configuration_string_cold_1();
      }
    }

    return 0;
  }

  return result;
}

const char *boringssl_ciphers_value_to_string(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_9:
    v6 = *MEMORY[0x1E69E9840];
    return 0;
  }

  cipher_by_value = SSL_get_cipher_by_value(a1);
  if (!cipher_by_value)
  {
    v5 = g_boringssl_log;
    if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_INFO))
    {
      v7 = 136446722;
      v8 = "boringssl_ciphers_value_to_string";
      v9 = 1024;
      v10 = 31;
      v11 = 1024;
      v12 = a1;
      _os_log_impl(&dword_1A8FF5000, v5, OS_LOG_TYPE_INFO, "%{public}s(%d) Failed to get boringssl cipher for ciphersuite 0x%04x", &v7, 0x18u);
    }

    goto LABEL_9;
  }

  v3 = *MEMORY[0x1E69E9840];

  return SSL_CIPHER_get_name(cipher_by_value);
}

uint64_t SSL_set_strict_cipher_list(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v2 + 309);
  if ((v4 & 0x800) != 0)
  {
    is_opaque = (v4 >> 12) & 1;
  }

  else
  {
    is_opaque = RSA_is_opaque();
    v2 = *(a1 + 8);
  }

  return bssl::ssl_create_cipher_list((v2 + 24), is_opaque != 0, a2, 1);
}

uint64_t boringssl_context_set_tls13_ciphersuite_chacha20poly1305_enabled(uint64_t result, int a2)
{
  if (*result == -1252936367)
  {
    v2 = *(result + 8);
    if (v2)
    {
      result = *(v2 + 392);
      if (result)
      {
        if (a2)
        {
          v3 = 8;
        }

        else
        {
          v3 = 0;
        }

        *(v2 + 552) = *(v2 + 552) & 0xF7 | v3;
        return SSL_set_tls13_ciphersuite_chacha20poly1305_enabled(result, a2);
      }
    }
  }

  return result;
}

uint64_t boringssl_context_set_tls13_ciphersuite_aesgcm_enabled(uint64_t result, int a2)
{
  if (*result == -1252936367)
  {
    v2 = *(result + 8);
    if (v2)
    {
      result = *(v2 + 392);
      if (result)
      {
        if (a2)
        {
          v3 = 4;
        }

        else
        {
          v3 = 0;
        }

        *(v2 + 552) = *(v2 + 552) & 0xFB | v3;
        return SSL_set_tls13_ciphersuite_aesgcm_enabled(result, a2);
      }
    }
  }

  return result;
}

uint64_t SSL_set_tls13_ciphersuite_chacha20poly1305_enabled(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 120) + 248) = *(*(result + 120) + 248) & 0xFD | v2;
  return result;
}

int CRYPTO_set_ex_data(CRYPTO_EX_DATA *ad, int idx, void *val)
{
  if (idx < 0)
  {
    abort();
  }

  sk = ad->sk;
  if (sk || (sk = OPENSSL_sk_new_null(), (ad->sk = sk) != 0))
  {
    v7 = EVP_MD_CTX_md(sk);
    v8 = idx;
    if (v7 > idx)
    {
LABEL_8:
      OPENSSL_sk_set(ad->sk, v8, val);
      LODWORD(sk) = 1;
    }

    else
    {
      v9 = idx - v7 + 1;
      while (1)
      {
        sk = OPENSSL_sk_push(ad->sk, 0);
        if (!sk)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return sk;
}

uint64_t OPENSSL_sk_set(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (!a1 || *a1 <= a2)
  {
    return 0;
  }

  *(a1[1] + 8 * a2) = a3;
  return a3;
}

void SSL_set_bio(SSL *s, BIO *rbio, BIO *wbio)
{
  p_wbio = &s->wbio;
  v7 = s->wbio;
  if (*&s->wbio != __PAIR128__(wbio, rbio))
  {
    if (rbio && rbio == wbio)
    {
      BIO_up_ref(rbio);
      v7 = *p_wbio;
    }

    if (v7 == rbio || ((bbio = s->bbio, std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](p_wbio, rbio), bbio == wbio) ? (v9 = v7 == bbio) : (v9 = 1), v9))
    {

      std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](&s->bbio, wbio);
    }
  }
}

uint64_t boringssl_session_set_bio(uint64_t result, BIO *a2, BIO *a3)
{
  if (result)
  {
    v3 = result;
    if (*result == -1252936367)
    {
      result = 0;
      if (a3)
      {
        if (a2)
        {
          v6 = *(v3 + 8);
          if (v6)
          {
            if (*(v6 + 392))
            {
              BIO_up_ref(a2);
              SSL_set_bio(*(v6 + 392), a2, a3);
              return 1;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BIO *std::unique_ptr<bio_st,bssl::internal::Deleter>::reset[abi:ne200100](BIO **a1, BIO *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    return BIO_free(result);
  }

  return result;
}

void *boringssl_context_set_remote_address(void *result, unsigned __int8 *a2)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      if (a2)
      {
        v2 = result[1];
        if (v2)
        {
          v3 = a2[1];
          if (v3 == 30 || v3 == 2)
          {
            return memcpy((v2 + 216), a2, *a2);
          }
        }
      }
    }
  }

  return result;
}

NSObject *nw_protocol_boringssl_get_subject_endpoint(void *a1)
{
  v1 = a1;
  v2 = nw_endpoint_copy_proxy_original_endpoint();
  v3 = v2;
  if (v2)
  {
    v4 = v2;

    v1 = v4;
  }

  v5 = v1;
  v6 = nw_endpoint_copy_parent_endpoint();
  v7 = v5;
  if (v6)
  {
    v8 = v6;
    v9 = v5;
    do
    {
      v7 = v8;

      v8 = nw_endpoint_copy_parent_endpoint();
      v9 = v7;
    }

    while (v8);
  }

  if (nw_endpoint_get_type(v7) == (nw_endpoint_type_url|nw_endpoint_type_address))
  {
    v10 = v7;

    v5 = v10;
  }

  v11 = v5;

  return v5;
}

uint64_t nw_protocol_boringssl_get_subject_name(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    parent_endpoint_domain = 0;
    goto LABEL_8;
  }

  v6 = nw_protocol_boringssl_get_subject_endpoint(v4);

  v5 = v6;
  if (nw_endpoint_get_type(v5) == nw_endpoint_type_host)
  {
    hostname = nw_endpoint_get_hostname(v5);
LABEL_5:
    parent_endpoint_domain = hostname;
LABEL_6:

    goto LABEL_8;
  }

  if (nw_endpoint_get_type(v5) != nw_endpoint_type_address)
  {
    if (nw_endpoint_get_type(v5) == nw_endpoint_type_bonjour_service)
    {
      hostname = nw_endpoint_get_bonjour_fullname();
    }

    else
    {
      if (nw_endpoint_get_type(v5) != (nw_endpoint_type_url|nw_endpoint_type_address))
      {
        parent_endpoint_domain = 0;
        goto LABEL_6;
      }

      hostname = nw_endpoint_get_srv_name();
    }

    goto LABEL_5;
  }

  parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain();
  if (parent_endpoint_domain)
  {
    goto LABEL_6;
  }

  parent_endpoint_domain = nw_endpoint_copy_address_string(v5);

  v10 = v3[39];
  if (v10)
  {
    free(v10);
  }

  v3[39] = parent_endpoint_domain;
LABEL_8:

  return parent_endpoint_domain;
}

uint64_t boringssl_session_set_peer_hostname(uint64_t a1, char *__s1, size_t __n)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0;
  }

  v4 = 0;
  if (__n - 1 > 0xFE)
  {
    return v4;
  }

  if (!__s1)
  {
    return v4;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    return v4;
  }

  v4 = *(v6 + 392);
  if (!v4)
  {
    return v4;
  }

  v7 = *(v6 + 72);
  if (v7)
  {
    free(v7);
    *(v6 + 72) = 0;
  }

  *(v6 + 72) = strndup(__s1, __n);
  if (!*(v6 + 72))
  {
    return 0;
  }

  is_valid_sni_value = boringssl_helper_is_valid_sni_value(__s1, __n);
  if (is_valid_sni_value)
  {
    if (!SSL_set_tlsext_host_name(v4, __s1))
    {
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (!WeakRetained || (v10 = WeakRetained, v11 = objc_loadWeakRetained((v6 + 16)), v12 = v11[435], v11, v10, (v12 & 1) == 0))
      {
        v13 = objc_loadWeakRetained((v6 + 16));
        if (v13)
        {
          v14 = objc_loadWeakRetained((v6 + 16));
          v15 = (v14[435] & 1) == 0;
        }

        else
        {
          v15 = 1;
        }

        v4 = 0;
        if (v15 && g_boringssl_log)
        {
          v24 = g_boringssl_log;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            boringssl_session_set_peer_hostname_cold_2();
          }

LABEL_33:
          v4 = is_valid_sni_value ^ 1u;

          return v4;
        }

        return v4;
      }

      return 0;
    }

    return 1;
  }

  v17 = objc_loadWeakRetained((v6 + 16));
  if (v17)
  {
    v18 = v17;
    v19 = objc_loadWeakRetained((v6 + 16));
    v20 = v19[435];

    if (v20)
    {
      return 1;
    }
  }

  v21 = objc_loadWeakRetained((v6 + 16));
  if (v21)
  {
    v22 = objc_loadWeakRetained((v6 + 16));
    v23 = (v22[435] & 1) == 0;
  }

  else
  {
    v23 = 1;
  }

  v4 = 1;
  if (v23 && g_boringssl_log)
  {
    v24 = g_boringssl_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      boringssl_session_set_peer_hostname_cold_1();
    }

    goto LABEL_33;
  }

  return v4;
}

uint64_t boringssl_helper_is_valid_sni_value(uint64_t a1, uint64_t a2)
{
  IsDNSName = 0;
  v10 = *MEMORY[0x1E69E9840];
  if (a1 && (a2 - 1) <= 0xFE)
  {
    memset(v9, 0, sizeof(v9));
    __memcpy_chk();
    v4 = 0;
    while (*(v9 + v4) && *(v9 + v4) != 42)
    {
      if (a2 == ++v4)
      {
        v5 = CFStringCreateWithCString(0, v9, 0x8000100u);
        if (v5)
        {
          v6 = v5;
          IsDNSName = SecFrameworkIsDNSName();
          CFRelease(v6);
          goto LABEL_10;
        }

        break;
      }
    }

    IsDNSName = 0;
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return IsDNSName;
}

BOOL SSL_set_tlsext_host_name(uint64_t a1, const char *a2)
{
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 160), 0);
  if (!a2)
  {
    return 1;
  }

  if (strlen(a2) - 256 > 0xFFFFFFFFFFFFFF00)
  {
    v5 = OPENSSL_strdup(a2);
    std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 160), v5);
    return *(a1 + 160) != 0;
  }

  else
  {
    ERR_put_error(16, 0, 213, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 2544);
    return 0;
  }
}

void std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    OPENSSL_free(v3);
  }
}

const char *OPENSSL_strdup(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result) + 1;

    return OPENSSL_memdup(v1, v2);
  }

  return result;
}

void *OPENSSL_memdup(const void *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = OPENSSL_malloc(a2);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, a2);
}

void *boringssl_context_set_enable_message_mode(void *a1, int a2)
{
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v16[9] = v2;
      v17 = v3;
      v4 = a1[1];
      if (v4)
      {
        v5 = a2 == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        if (SSL_set_quic_method(*(v4 + 392), &boringssl_quic_method))
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __boringssl_context_set_enable_message_mode_block_invoke;
          v16[3] = &__block_descriptor_40_e15_B28__0i8r_12Q20lu32l8;
          v16[4] = v4;
          a1 = MEMORY[0x1AC57F4F0](v16);
LABEL_15:

          return a1;
        }

        WeakRetained = objc_loadWeakRetained((v4 + 16));
        if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((v4 + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
        {
          v12 = objc_loadWeakRetained((v4 + 16));
          if (v12)
          {
            v13 = objc_loadWeakRetained((v4 + 16));
            v14 = (v13[435] & 1) == 0;
          }

          else
          {
            v14 = 1;
          }

          a1 = 0;
          if (!v14 || !g_boringssl_log)
          {
            goto LABEL_15;
          }

          v15 = g_boringssl_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            boringssl_context_set_enable_message_mode_cold_1();
          }
        }
      }

      a1 = 0;
      goto LABEL_15;
    }

    a1 = 0;
  }

  return a1;
}

uint64_t boringssl_session_apply_protocol_options_for_transport(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (*a1 == -1252936367)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        if ((*(v4 + 548) & 0x10) != 0 || !*(v4 + 72))
        {
          v19 = v3;
          host_with_numeric_port = 0;
          v20 = *(v4 + 504);
          *(v4 + 504) = v19;
LABEL_49:

          v26 = *(v4 + 504);
          v27 = host_with_numeric_port;
          v17 = nw_protocol_options_access_handle();

          goto LABEL_26;
        }

        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (nw_endpoint_get_type(host_with_numeric_port) != nw_endpoint_type_address)
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v4 + 72)];
          v22 = v21;
          if (v21 && ([v21 hasSuffix:@".local"] & 1) == 0 && (objc_msgSend(v22, "hasSuffix:", @".local.") & 1) == 0)
          {
            [v22 containsString:@"."];
          }

          v23 = sec_protocol_configuration_copy_transformed_options_for_host();
          goto LABEL_48;
        }

        v6 = host_with_numeric_port;
        host_with_numeric_port = v6;
        if (*a1 == -1252936367)
        {
          v7 = *(a1 + 8);
          if (v7)
          {
            address = nw_endpoint_get_address(v6);
            sa_family = address->sa_family;
            if (sa_family == 30)
            {
              if (address->sa_len < 0x1Cu)
              {
                goto LABEL_44;
              }

              if (*&address->sa_data[6])
              {
                if (*&address->sa_data[6] == 254)
                {
                  if ((*&address->sa_data[6] & 0xC000) != 0x8000)
                  {
                    goto LABEL_44;
                  }
                }

                else if ((*&address->sa_data[6] & 0xFE) != 0xFC)
                {
                  goto LABEL_44;
                }
              }

              else if (*&address->sa_data[10] || *&address[1].sa_len || *&address[1].sa_data[2] != 0x1000000)
              {
                goto LABEL_44;
              }
            }

            else if (sa_family != 2 || address->sa_len < 0x10u || (v10 = bswap32(*&address->sa_data[2]), v11 = v10 & 0xFF000000, (v10 & 0xFF000000) != 0x7F000000) && ((v12 = v10 & 0xFFFF0000, v13 = v10 & 0xFFF00000, v12 != -1062731776) ? (v14 = v13 == -1408237568) : (v14 = 1), !v14 ? (v15 = v12 == -1442971648) : (v15 = 1), !v15 ? (v16 = v11 == 167772160) : (v16 = 1), !v16))
            {
LABEL_44:
              WeakRetained = objc_loadWeakRetained((v7 + 16));
              nw_protocol_upcast();
              nw_protocol_get_input_handler();

              v25 = nw_protocol_get_path();
              if ((nw_path_is_direct() & 1) == 0)
              {
                nw_path_is_local();
              }
            }
          }
        }

        v23 = sec_protocol_configuration_copy_transformed_options_for_address();
LABEL_48:
        v20 = *(v4 + 504);
        *(v4 + 504) = v23;
        goto LABEL_49;
      }
    }
  }

  v17 = 0;
LABEL_26:

  return v17;
}

unsigned __int16 *__boringssl_session_apply_protocol_options_for_transport_block_invoke(uint64_t a1, unsigned __int16 *a2)
{
  v278 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 40) + 504);
  if (!a2)
  {
    goto LABEL_302;
  }

  if (a2[1])
  {
    boringssl_context_set_max_version(*(a1 + 48), a2[1]);
  }

  if (*a2)
  {
    boringssl_context_set_min_version(*(a1 + 48), *a2);
  }

  v5 = (a2 + 369);
  boringssl_context_set_fallback(*(a1 + 48), (*(a2 + 369) >> 7) & 1);
  v6 = *(a1 + 48);
  v7 = *(a2 + 369);
  if ((v7 & 0x2000) != 0)
  {
    sct_enabled = 1;
  }

  else if ((v7 & 0x4000) != 0)
  {
    sct_enabled = 0;
  }

  else
  {
    sct_enabled = boringssl_config_get_sct_enabled();
  }

  boringssl_context_set_sct_enable(v6, sct_enabled);
  v9 = *(a1 + 48);
  if ((*v5 & 0x8000) != 0)
  {
    ocsp_enabled = 1;
  }

  else if ((*v5 & 0x10000) != 0)
  {
    ocsp_enabled = 0;
  }

  else
  {
    ocsp_enabled = boringssl_config_get_ocsp_enabled();
  }

  boringssl_context_set_ocsp_enable(v9, ocsp_enabled);
  v11 = *(a1 + 48);
  if ((*v5 & 0x200000) != 0)
  {
    renegotiation_enabled = 1;
  }

  else if ((*v5 & 0x400000) != 0)
  {
    renegotiation_enabled = 0;
  }

  else
  {
    renegotiation_enabled = boringssl_config_get_renegotiation_enabled();
  }

  boringssl_context_set_renegotiation(v11, renegotiation_enabled);
  v13 = *(a1 + 48);
  if ((*v5 & 0x80000) != 0)
  {
    resumption_enabled = 1;
  }

  else if ((*v5 & 0x100000) != 0)
  {
    resumption_enabled = 0;
  }

  else
  {
    resumption_enabled = boringssl_config_get_resumption_enabled();
  }

  boringssl_context_set_resumption(v13, resumption_enabled);
  v15 = *(a1 + 48);
  if ((*v5 & 0x800) != 0)
  {
    tickets_enabled = 1;
  }

  else if ((*v5 & 0x100000) != 0)
  {
    tickets_enabled = 0;
  }

  else
  {
    tickets_enabled = boringssl_config_get_tickets_enabled();
  }

  boringssl_context_set_session_ticket_enabled(v15, tickets_enabled);
  v17 = *(a1 + 48);
  if ((*v5 & 0x200) != 0)
  {
    false_start_enabled = 1;
  }

  else if ((*v5 & 0x400) != 0)
  {
    false_start_enabled = 0;
  }

  else
  {
    false_start_enabled = boringssl_config_get_false_start_enabled();
  }

  boringssl_context_set_false_start(v17, false_start_enabled);
  boringssl_session_set_early_data_enabled(*(a1 + 48), (*v5 >> 23) & 1);
  v19 = *v5;
  if ((*v5 & 0x800000) != 0 && (*(*(a1 + 40) + 548) & 0x10) != 0 && *(a1 + 56) == 2)
  {
    boringssl_session_set_quic_early_data_context(*(a1 + 48), *(a2 + 43), *(a2 + 45));
    v19 = *v5;
  }

  boringssl_context_set_enforce_ev(*(a1 + 48), (v19 >> 17) & 1);
  boringssl_context_set_ats_enforced(*(a1 + 48), *v5 & 1);
  boringssl_context_set_ats_minimum_rsa_key_size(*(a1 + 48), *(a2 + 39));
  boringssl_context_set_ats_minimum_ecdsa_key_size(*(a1 + 48), *(a2 + 40));
  boringssl_context_set_ats_minimum_signature_algorithm(*(a1 + 48), *(a2 + 82));
  boringssl_context_set_ats_non_pfs_ciphersuite_allowed(*(a1 + 48), (*v5 >> 2) & 1);
  options = v4;
  if (*(*(a1 + 40) + 48) == 772)
  {
    is_opaque = RSA_is_opaque();
    if ((*v5 & 0x40000000) != 0)
    {
      v21 = (*v5 >> 29) & 1;
    }

    else
    {
      v21 = is_opaque;
    }

    boringssl_context_set_certificate_compression(*(a1 + 48), v21);
    v22 = *(a1 + 48);
    if ((*(a2 + 373) & 2) != 0)
    {
      v23 = 1;
    }

    else
    {
      v23 = RSA_is_opaque();
    }

    boringssl_context_set_GREASE_enabled(v22, v23);
    enable_encrypted_client_hello = sec_protocol_options_get_enable_encrypted_client_hello(v4);
    v25 = *(a1 + 40);
    if (v25)
    {
      WeakRetained = objc_loadWeakRetained((v25 + 16));
      if (WeakRetained)
      {
        v27 = WeakRetained;
        v28 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v29 = v28[435];

        if (v29)
        {
          goto LABEL_59;
        }
      }

      v30 = *(a1 + 40);
      if (v30)
      {
        v31 = objc_loadWeakRetained((v30 + 16));
        if (v31)
        {
          v32 = objc_loadWeakRetained((*(a1 + 40) + 16));
          v33 = (v32[435] & 1) == 0;
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          goto LABEL_59;
        }
      }
    }

    if (!g_boringssl_log)
    {
      goto LABEL_59;
    }

    v34 = g_boringssl_log;
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
LABEL_58:

LABEL_59:
      boringssl_context_set_ech_grease_enabled(*(a1 + 48), enable_encrypted_client_hello);
      goto LABEL_60;
    }

    v113 = *(a1 + 40);
    if (v113)
    {
      v132 = objc_loadWeakRetained((v113 + 16));
      v133 = *(a1 + 40);
      v240 = v132;
      if (v132)
      {
        v114 = v133 != 0;
        if (v133)
        {
          v132 = objc_loadWeakRetained((v133 + 16));
          v133 = *(a1 + 40);
        }

        else
        {
          v132 = 0;
        }

        v117 = v132 + 351;
      }

      else
      {
        v114 = 0;
        v117 = &unk_1A9098A9F;
      }

      v237 = v132;
      if (v133)
      {
        v115 = objc_loadWeakRetained((v133 + 16));
        v116 = 0;
      }

      else
      {
        v115 = 0;
        v116 = 1;
      }
    }

    else
    {
      v114 = 0;
      v115 = 0;
      v116 = 1;
      v117 = &unk_1A9098A9F;
    }

    v249 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
    v250 = 1024;
    v224 = "disabled";
    v251 = 1980;
    v252 = 2082;
    *buf = 136447234;
    if (enable_encrypted_client_hello)
    {
      v224 = "enabled";
    }

    v253 = v117;
    v254 = 2048;
    v255 = v115;
    v256 = 2080;
    *v257 = v224;
    _os_log_debug_impl(&dword_1A8FF5000, v34, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] ECH is %s", buf, 0x30u);
    if (v116)
    {
      if (!v114)
      {
        goto LABEL_318;
      }
    }

    else
    {

      if (!v114)
      {
LABEL_318:
        if (!v113)
        {
          goto LABEL_58;
        }

        goto LABEL_322;
      }
    }

    if (!v113)
    {
      goto LABEL_58;
    }

LABEL_322:

    goto LABEL_58;
  }

LABEL_60:
  v276 = 0;
  v277 = 0;
  v35 = (a2 + 12);
  v36 = (*(a1 + 40) + 244);
  if (*(a2 + 12) == 0)
  {
    MEMORY[0x1AC57F9A0](v36, v35);
  }

  else
  {
    uuid_copy(v36, v35);
  }

  v37 = *(a2 + 2);
  if (v37)
  {
    v38 = boringssl_context_set_experiment_identifier(*(a1 + 48), v37);
  }

  else
  {
    v38 = 1;
  }

  if (*(a2 + 30) && *(a2 + 31))
  {
    v39 = MEMORY[0x1AC57F4F0]();
    v40 = *(a1 + 40);
    v41 = *(v40 + 208);
    *(v40 + 208) = v39;

    objc_storeStrong((*(a1 + 40) + 200), *(a2 + 31));
  }

  v42 = *v5;
  if ((*v5 & 0x10000000) != 0)
  {
    if ((v42 & 0x4000000) != 0)
    {
      v44 = 3;
    }

    else
    {
      v44 = (v42 >> 27) & ((*(*(a1 + 40) + 548) & 0x10) >> 4);
    }

    v43 = *(a1 + 48);
  }

  else
  {
    v43 = *(a1 + 48);
    if ((*(*(a1 + 40) + 548) & 0x10) != 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = 3;
    }
  }

  boringssl_context_set_verify_mode(v43, v44);
  v45 = *(a2 + 1);
  if (v45)
  {
    v46 = strlen(*(a2 + 1));
    boringssl_session_set_peer_hostname(*(a1 + 48), v45, v46);
  }

  if ((*v5 & 0x20) != 0)
  {
    v47 = *(a1 + 48);
    if (v47)
    {
      if (*v47 == -1252936367)
      {
        v48 = *(v47 + 8);
        if (v48)
        {
          v49 = *(v48 + 392);
          if (v49)
          {
            if (!SSL_set_tlsext_host_name(v49, 0))
            {
              v69 = objc_loadWeakRetained((v48 + 16));
              if (!v69 || (v70 = v69, v71 = objc_loadWeakRetained((v48 + 16)), v72 = v71[435], v71, v70, (v72 & 1) == 0))
              {
                v73 = objc_loadWeakRetained((v48 + 16));
                if (v73)
                {
                  v74 = objc_loadWeakRetained((v48 + 16));
                  v75 = (v74[435] & 1) == 0;
                }

                else
                {
                  v75 = 1;
                }

                if (v75)
                {
                  if (g_boringssl_log)
                  {
                    v134 = g_boringssl_log;
                    if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
                    {
                      __boringssl_session_apply_protocol_options_for_transport_block_invoke_cold_1();
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

  v50 = *(a2 + 24);
  if (v50)
  {
    v51 = boringssl_session_state_create_from_dispatch_data(*(a1 + 40), v50);
    v52 = boringssl_session_set_session_state(*(a1 + 48), v51);
    v53 = *(a1 + 40);
    if (!v53)
    {
      goto LABEL_95;
    }

    v54 = objc_loadWeakRetained((v53 + 16));
    if (!v54 || (v55 = v54, v56 = objc_loadWeakRetained((*(a1 + 40) + 16)), v57 = v56[435], v56, v55, (v57 & 1) == 0))
    {
      v58 = *(a1 + 40);
      if (!v58)
      {
        goto LABEL_95;
      }

      v59 = objc_loadWeakRetained((v58 + 16));
      if (v59)
      {
        v60 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v61 = (v60[435] & 1) == 0;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
LABEL_95:
        if (g_boringssl_log)
        {
          v62 = g_boringssl_log;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = *(a1 + 40);
            if (v63)
            {
              v64 = objc_loadWeakRetained((v63 + 16));
              v65 = *(a1 + 40);
              v237 = v64;
              if (v64)
              {
                v241 = v65 != 0;
                if (v65)
                {
                  v64 = objc_loadWeakRetained((v65 + 16));
                  v65 = *(a1 + 40);
                }

                else
                {
                  v64 = 0;
                }

                v68 = v64 + 351;
              }

              else
              {
                v241 = 0;
                v68 = &unk_1A9098A9F;
              }

              v232 = v64;
              if (v65)
              {
                v66 = objc_loadWeakRetained((v65 + 16));
                v67 = 0;
              }

              else
              {
                v66 = 0;
                v67 = 1;
              }
            }

            else
            {
              v241 = 0;
              v66 = 0;
              v67 = 1;
              v68 = &unk_1A9098A9F;
            }

            v249 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
            v250 = 1024;
            v76 = "not set";
            v251 = 2029;
            *buf = 136447234;
            v252 = 2082;
            if (v52)
            {
              v76 = "set";
            }

            v253 = v68;
            v254 = 2048;
            v255 = v66;
            v256 = 2082;
            *v257 = v76;
            _os_log_impl(&dword_1A8FF5000, v62, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Session state %{public}s.", buf, 0x30u);
            if ((v67 & 1) == 0)
            {
            }

            if (v241)
            {
            }

            if (v63)
            {
            }
          }
        }
      }
    }
  }

  v77 = *(a2 + 6);
  if (v77)
  {
    boringssl_context_set_alpn_protocol_list(*(a1 + 48), v77, *(a1 + 56));
  }

  v78 = *(a2 + 373);
  if ((v78 & 8) != 0)
  {
    boringssl_context_set_allow_unknown_alpn_protos(*(a1 + 48), (v78 >> 2) & 1);
  }

  v79 = *(a2 + 35);
  v80 = MEMORY[0x1E695E480];
  if (v79)
  {
    *(*(a1 + 40) + 360) = CFArrayCreateCopy(*MEMORY[0x1E695E480], v79);
    v38 &= boringssl_context_set_raw_public_key_certificate(*(a1 + 48), *(a2 + 35), 1);
  }

  v81 = *(a2 + 36);
  if (v81)
  {
    *(*(a1 + 40) + 368) = CFArrayCreateCopy(*v80, v81);
    v38 &= boringssl_context_set_raw_public_key_certificate(*(a1 + 48), *(a2 + 36), 0);
  }

  v82 = *(a2 + 7);
  if (v82)
  {
    v38 &= boringssl_context_set_identity(*(a1 + 48), v82);
    v83 = *(a2 + 7);
    v84 = sec_identity_copy_type() == 2;
  }

  else
  {
    v84 = 0;
  }

  v85 = *(a2 + 8);
  v242 = v84;
  if (v85)
  {
    v86 = *(a2 + 27);
    if (v86)
    {
      v87 = *(a2 + 25);
      if (v87)
      {
        v88 = *(a2 + 26);
        if (v88)
        {
          v38 &= boringssl_context_set_external_identity(*(a1 + 48), v85, v87, v88, v86);
        }
      }
    }
  }

  v89 = xpc_array_create(0, 0);
  v90 = *(a2 + 9);
  if (v90)
  {
    v91 = v90;
    v92 = boringssl_psk_cache_create_with_context(*(a1 + 40));
    v93 = *(a1 + 40);
    v94 = *(v93 + 40);
    *(v93 + 40) = v92;

    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __boringssl_session_apply_protocol_options_for_transport_block_invoke_17;
    applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16lu32l8;
    applier[4] = *(a1 + 40);
    xpc_array_apply(v91, applier);
    if (!xpc_array_get_count(v91))
    {
LABEL_217:
      v141 = *(a2 + 32);
      if (v141)
      {
        v142 = *(a2 + 33);
        if (v142)
        {
          boringssl_psk_cache_set_selection_block_and_queue(*(*(a1 + 40) + 40), v141, v142);
        }
      }

      goto LABEL_221;
    }

    if (boringssl_context_get_min_protocol_version(*(a1 + 48)) == 772)
    {
      tls13_external_psk_enabled = boringssl_config_get_tls13_external_psk_enabled();
      v96 = *(a1 + 40);
      if (tls13_external_psk_enabled)
      {
        if (!v96)
        {
          goto LABEL_160;
        }

        v97 = objc_loadWeakRetained((v96 + 16));
        if (!v97 || (v98 = v97, v99 = objc_loadWeakRetained((*(a1 + 40) + 16)), v100 = v99[435], v99, v98, (v100 & 1) == 0))
        {
          v101 = *(a1 + 40);
          if (!v101)
          {
            goto LABEL_160;
          }

          v102 = objc_loadWeakRetained((v101 + 16));
          if (v102)
          {
            v103 = objc_loadWeakRetained((*(a1 + 40) + 16));
            v104 = (v103[435] & 1) == 0;
          }

          else
          {
            v104 = 1;
          }

          if (v104)
          {
LABEL_160:
            if (g_boringssl_log)
            {
              v118 = g_boringssl_log;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
              {
                v119 = *(a1 + 40);
                v233 = v119;
                if (v119)
                {
                  v120 = objc_loadWeakRetained((v119 + 16));
                  v121 = *(a1 + 40);
                  v226 = v120;
                  if (v120)
                  {
                    v228 = v121 != 0;
                    if (v121)
                    {
                      v120 = objc_loadWeakRetained((v121 + 16));
                      v121 = *(a1 + 40);
                    }

                    else
                    {
                      v120 = 0;
                    }

                    v128 = v120 + 351;
                  }

                  else
                  {
                    v228 = 0;
                    v128 = &unk_1A9098A9F;
                  }

                  v225 = v120;
                  if (v121)
                  {
                    v135 = v128;
                    v136 = objc_loadWeakRetained((v121 + 16));
                    v128 = v135;
                    v126 = v136;
                    v127 = 0;
                  }

                  else
                  {
                    v126 = 0;
                    v127 = 1;
                  }
                }

                else
                {
                  v228 = 0;
                  v126 = 0;
                  v127 = 1;
                  v128 = &unk_1A9098A9F;
                }

                *buf = 136446978;
                v249 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
                v250 = 1024;
                v251 = 2118;
                v252 = 2082;
                v253 = v128;
                v254 = 2048;
                v255 = v126;
                _os_log_impl(&dword_1A8FF5000, v118, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Using TLS 1.3 external PSK callback", buf, 0x26u);
                if ((v127 & 1) == 0)
                {
                }

                if (v228)
                {
                }

                if (v233)
                {
                }
              }
            }
          }
        }

        SSL_set_psk_client13_ext_callback(*(*(a1 + 40) + 392), boringssl_session_psk_client13_ext_callback_handler);
        goto LABEL_215;
      }

      if (!v96)
      {
        goto LABEL_168;
      }

      v105 = objc_loadWeakRetained((v96 + 16));
      if (!v105 || (v106 = v105, v107 = objc_loadWeakRetained((*(a1 + 40) + 16)), v108 = v107[435], v107, v106, (v108 & 1) == 0))
      {
        v109 = *(a1 + 40);
        if (!v109)
        {
          goto LABEL_168;
        }

        v110 = objc_loadWeakRetained((v109 + 16));
        if (v110)
        {
          v111 = objc_loadWeakRetained((*(a1 + 40) + 16));
          v112 = (v111[435] & 1) == 0;
        }

        else
        {
          v112 = 1;
        }

        if (v112)
        {
LABEL_168:
          if (g_boringssl_log)
          {
            v122 = g_boringssl_log;
            if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
            {
              v123 = *(a1 + 40);
              v234 = v123;
              if (v123)
              {
                v124 = objc_loadWeakRetained((v123 + 16));
                v125 = *(a1 + 40);
                v226 = v124;
                if (v124)
                {
                  v229 = v125 != 0;
                  if (v125)
                  {
                    v124 = objc_loadWeakRetained((v125 + 16));
                    v125 = *(a1 + 40);
                  }

                  else
                  {
                    v124 = 0;
                  }

                  v131 = v124 + 351;
                }

                else
                {
                  v229 = 0;
                  v131 = &unk_1A9098A9F;
                }

                v225 = v124;
                if (v125)
                {
                  v137 = v131;
                  v138 = objc_loadWeakRetained((v125 + 16));
                  v131 = v137;
                  v129 = v138;
                  v130 = 0;
                }

                else
                {
                  v129 = 0;
                  v130 = 1;
                }
              }

              else
              {
                v229 = 0;
                v129 = 0;
                v130 = 1;
                v131 = &unk_1A9098A9F;
              }

              *buf = 136446978;
              v249 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
              v250 = 1024;
              v251 = 2122;
              v252 = 2082;
              v253 = v131;
              v254 = 2048;
              v255 = v129;
              _os_log_impl(&dword_1A8FF5000, v122, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] TLS 1.3 external PSK callback is not enabled", buf, 0x26u);
              if ((v130 & 1) == 0)
              {
              }

              if (v229)
              {
              }

              if (v234)
              {
              }
            }
          }
        }
      }
    }

    SSL_set_psk_server_callback(*(*(a1 + 40) + 392), boringssl_session_server_psk_callback_handler);
    SSL_set_psk_client_callback(*(*(a1 + 40) + 392), boringssl_session_client_psk_callback_handler);
    for (i = 0; i != 4; ++i)
    {
      xpc_array_set_uint64(v89, 0xFFFFFFFFFFFFFFFFLL, g_boringssl_private_key_methods_block_invoke_supported_psk_ciphersuites[i]);
    }

LABEL_215:
    v140 = *(*(a1 + 40) + 392);
    if (v140)
    {
      SSL_set_options(v140, 0x400000u);
    }

    goto LABEL_217;
  }

LABEL_221:
  v143 = *(a2 + 10);
  if (v143)
  {
    size = dispatch_data_get_size(v143);
    v145 = malloc_type_malloc(size + 1, 0x100004077774924uLL);
    bzero(v145, size + 1);
    v146 = boringssl_helper_dispatch_data_copyout(*(a2 + 10), v145, size);
    v147 = *(a1 + 40);
    if (v146 == size)
    {
      SSL_use_psk_identity_hint(*(v147 + 392), v145);
    }

    else
    {
      if (!v147)
      {
        goto LABEL_233;
      }

      v148 = objc_loadWeakRetained((v147 + 16));
      if (!v148 || (v149 = v148, v150 = objc_loadWeakRetained((*(a1 + 40) + 16)), v151 = v150[435], v150, v149, (v151 & 1) == 0))
      {
        v152 = *(a1 + 40);
        if (!v152)
        {
          goto LABEL_233;
        }

        v153 = objc_loadWeakRetained((v152 + 16));
        if (v153)
        {
          v154 = objc_loadWeakRetained((*(a1 + 40) + 16));
          v155 = (v154[435] & 1) == 0;
        }

        else
        {
          v155 = 1;
        }

        if (v155)
        {
LABEL_233:
          if (g_boringssl_log)
          {
            v156 = g_boringssl_log;
            if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
            {
              v218 = *(a1 + 40);
              v236 = v218;
              v239 = v77;
              if (v218)
              {
                v222 = objc_loadWeakRetained((v218 + 16));
                v223 = *(a1 + 40);
                v226 = v222;
                if (v222)
                {
                  v231 = v223 != 0;
                  if (v223)
                  {
                    v222 = objc_loadWeakRetained((v223 + 16));
                    v223 = *(a1 + 40);
                  }

                  else
                  {
                    v222 = 0;
                  }

                  v221 = v222 + 351;
                }

                else
                {
                  v231 = 0;
                  v221 = &unk_1A9098A9F;
                }

                v225 = v222;
                if (v223)
                {
                  v219 = objc_loadWeakRetained((v223 + 16));
                  v220 = 0;
                }

                else
                {
                  v219 = 0;
                  v220 = 1;
                }
              }

              else
              {
                v231 = 0;
                v219 = 0;
                v220 = 1;
                v221 = &unk_1A9098A9F;
              }

              *buf = 136446978;
              v249 = "boringssl_session_apply_protocol_options_for_transport_block_invoke";
              v250 = 1024;
              v251 = 2169;
              v252 = 2082;
              v253 = v221;
              v254 = 2048;
              v255 = v219;
              _os_log_error_impl(&dword_1A8FF5000, v156, OS_LOG_TYPE_ERROR, "%{public}s(%d) %{public}s[%p] Failed to copy PSK hint data", buf, 0x26u);
              if ((v220 & 1) == 0)
              {
              }

              if (v231)
              {
              }

              v77 = v239;
              if (v236)
              {
              }
            }
          }
        }
      }
    }

    if (v145)
    {
      free(v145);
    }
  }

  v157 = *(a2 + 17);
  if (v157)
  {
    v38 &= boringssl_context_set_quic_transport_parameters(*(a1 + 48), v157);
    v158 = *(*(a1 + 40) + 392);
    quic_use_legacy_codepoint = sec_protocol_options_get_quic_use_legacy_codepoint(options);
    SSL_set_quic_use_legacy_codepoint(v158, quic_use_legacy_codepoint);
  }

  v160 = *(a1 + 48);
  if (v160 && *v160 == -1252936367 && (v161 = *(v160 + 8)) != 0)
  {
    pqtls_enabled_for_endpoint = (*(v161 + 552) >> 5) & 1;
  }

  else
  {
    pqtls_enabled_for_endpoint = 0;
  }

  v163 = a2[167];
  if (v163 == 2)
  {
LABEL_248:
    pqtls_enabled_for_endpoint = 1;
    goto LABEL_250;
  }

  if (v163 == 1)
  {
    if ((pqtls_enabled_for_endpoint & 1) == 0)
    {
      v164 = *(a1 + 32);
      pqtls_enabled_for_endpoint = nw_settings_get_pqtls_enabled_for_endpoint();
      goto LABEL_250;
    }

    goto LABEL_248;
  }

LABEL_250:
  v165 = *(a2 + 29);
  if (v165)
  {
    goto LABEL_254;
  }

  v166 = xpc_array_create(0, 0);
  v165 = v166;
  if (pqtls_enabled_for_endpoint)
  {
    xpc_array_set_uint64(v166, 0xFFFFFFFFFFFFFFFFLL, 0x11ECuLL);
  }

  xpc_array_set_uint64(v165, 0xFFFFFFFFFFFFFFFFLL, 0x1DuLL);
  xpc_array_set_uint64(v165, 0xFFFFFFFFFFFFFFFFLL, 0x17uLL);
  xpc_array_set_uint64(v165, 0xFFFFFFFFFFFFFFFFLL, 0x18uLL);
  xpc_array_set_uint64(v165, 0xFFFFFFFFFFFFFFFFLL, 0x19uLL);
  if (v165)
  {
LABEL_254:
    v244[0] = MEMORY[0x1E69E9820];
    v244[1] = 3221225472;
    v244[2] = __boringssl_session_apply_protocol_options_for_transport_block_invoke_22;
    v244[3] = &unk_1E785EAA0;
    v167 = v165;
    v168 = *(a1 + 48);
    v245 = v167;
    v246 = v168;
    xpc_array_apply(v167, v244);
  }

  else
  {
    v167 = 0;
  }

  v4 = options;
  boringssl_context_set_key_exchange_groups(*(a1 + 48), v167, pqtls_enabled_for_endpoint);
  v169 = *(a1 + 48);
  if (v169)
  {
    if (*v169 == -1252936367)
    {
      v170 = *(v169 + 8);
      if (v170)
      {
        v171 = *(v170 + 392);
        if (v171)
        {
          SSL_set_tls13_pqtls_ciphersuites_enabled(v171, (*(v170 + 552) >> 5) & 1);
        }
      }
    }
  }

  v172 = *(a2 + 5);
  v173 = v172;
  if (v172 && xpc_array_get_count(v172))
  {
    if (v89 && xpc_array_get_count(v89))
    {
      v174 = boringssl_helper_xpc_array_union(v173, v89);

      v173 = v174;
    }

    v175 = *(a1 + 48);
    v176 = v173;
  }

  else
  {
    if (!v89 || !xpc_array_get_count(v89))
    {
      goto LABEL_270;
    }

    v175 = *(a1 + 48);
    v176 = v89;
  }

  boringssl_context_set_ciphersuites_from_list(v175, v176);
LABEL_270:
  if (*(a2 + 15))
  {
    v177 = MEMORY[0x1AC57F4F0]();
    v178 = *(a1 + 40);
    v179 = *(v178 + 112);
    *(v178 + 112) = v177;

    objc_storeStrong((*(a1 + 40) + 120), *(a2 + 16));
  }

  if (*(a2 + 13))
  {
    v180 = MEMORY[0x1AC57F4F0]();
    v181 = *(a1 + 40);
    v182 = *(v181 + 128);
    *(v181 + 128) = v180;

    objc_storeStrong((*(a1 + 40) + 136), *(a2 + 14));
  }

  if (*(a2 + 11))
  {
    v183 = MEMORY[0x1AC57F4F0]();
    v184 = *(a1 + 40);
    v185 = *(v184 + 144);
    *(v184 + 144) = v183;

    objc_storeStrong((*(a1 + 40) + 152), *(a2 + 12));
  }

  if (*(a2 + 22))
  {
    v186 = MEMORY[0x1AC57F4F0]();
    v187 = *(a1 + 40);
    v188 = *(v187 + 160);
    *(v187 + 160) = v186;

    objc_storeStrong((*(a1 + 40) + 168), *(a2 + 23));
  }

  *(*(a1 + 40) + 376) = *(a2 + 304);
  *(*(a1 + 40) + 377) = *(a2 + 305);
  a2 = (v38 & boringssl_context_set_ticket_request(*(a1 + 48), *(*(a1 + 40) + 376), *(*(a1 + 40) + 377)));
  if (a2 == 1)
  {
    v189 = *(a1 + 40);
    if (!v189)
    {
      goto LABEL_289;
    }

    v190 = objc_loadWeakRetained((v189 + 16));
    if (!v190 || (v191 = v190, v192 = objc_loadWeakRetained((*(a1 + 40) + 16)), v193 = v192[435], v192, v191, (v193 & 1) == 0))
    {
      v194 = *(a1 + 40);
      if (!v194)
      {
        goto LABEL_289;
      }

      v195 = objc_loadWeakRetained((v194 + 16));
      if (v195)
      {
        v196 = objc_loadWeakRetained((*(a1 + 40) + 16));
        v197 = (v196[435] & 1) == 0;
      }

      else
      {
        v197 = 1;
      }

      if (v197)
      {
LABEL_289:
        if (g_boringssl_log)
        {
          v198 = g_boringssl_log;
          if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
          {
            v199 = objc_loadWeakRetained((*(a1 + 40) + 16));
            v200 = *(a1 + 40);
            v235 = v199;
            v238 = v77;
            if (v199)
            {
              v201 = v200 != 0;
              if (v200)
              {
                v202 = objc_loadWeakRetained((v200 + 16));
                v200 = *(a1 + 40);
              }

              else
              {
                v202 = 0;
              }

              v225 = v202;
              v227 = v202 + 351;
              v230 = v201;
            }

            else
            {
              v230 = 0;
              v227 = &unk_1A9098A9F;
            }

            v203 = objc_loadWeakRetained((v200 + 16));
            v204 = *(a1 + 40);
            v205 = *(v204 + 50);
            v206 = *(v204 + 48);
            v207 = objc_loadWeakRetained((v204 + 16));
            redacted_identity = nw_protocol_boringssl_get_redacted_identity(v207, *(*(a1 + 40) + 72));
            v209 = *(a1 + 40);
            v210 = (v209[549] >> 4) & 1;
            v211 = v209[548] >> 7;
            v212 = (v209[551] >> 1) & 1;
            v213 = (v209[551] >> 3) & 1;
            v214 = (v209[551] >> 4) & 1;
            v215 = (v209[552] >> 4) & 1;
            LODWORD(v209) = (v209[552] >> 5) & 1;
            *buf = 136449794;
            v249 = "boringssl_session_apply_protocol_options_for_transport_block_invoke_2";
            v250 = 1024;
            v251 = 2280;
            v252 = 2082;
            v253 = v227;
            v254 = 2048;
            v255 = v203;
            v256 = 1024;
            *v257 = v205;
            *&v257[4] = 1024;
            *&v257[6] = v206;
            v258 = 2082;
            v259 = redacted_identity;
            v260 = 1024;
            v261 = v210;
            v262 = 1024;
            v263 = v211;
            v264 = 1024;
            v265 = v212;
            v266 = 1024;
            v267 = v213;
            v268 = 1024;
            v269 = v214;
            v270 = 1024;
            v271 = v215;
            v272 = 1024;
            v273 = v209;
            v274 = 1024;
            v275 = v242;
            _os_log_impl(&dword_1A8FF5000, v198, OS_LOG_TYPE_DEFAULT, "%{public}s(%d) %{public}s[%p] TLS configured [min_version(0x%04x) max_version(0x%04x) name(%{public}s) tickets(%{BOOL}d) false_start(%{BOOL}d) enforce_ev(%{BOOL}d) enforce_ats(%{BOOL}d) ats_non_pfs_ciphersuite_allowed(%{BOOL}d) ech(%{BOOL}d) pqtls(%{BOOL}d), pake(%{BOOL}d)]", buf, 0x6Cu);

            if (v230)
            {
            }

            v4 = options;
            v77 = v238;
          }
        }
      }
    }
  }

LABEL_302:
  v216 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t boringssl_context_set_fallback(uint64_t a1, int a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    SSL_set_mode(v3, 0x400u);
    v4 = 64;
  }

  else
  {
    SSL_clear_mode(v3, 1024);
    v4 = 0;
  }

  result = 0;
  *(v2 + 548) = *(v2 + 548) & 0xBF | v4;
  return result;
}

uint64_t SSL_clear_mode(uint64_t a1, int a2)
{
  v2 = *(a1 + 148) & ~a2;
  *(a1 + 148) = v2;
  return v2;
}

uint64_t boringssl_context_set_ocsp_enable(uint64_t a1, int a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    SSL_enable_ocsp_stapling(v3);
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  result = 0;
  *(v2 + 548) = *(v2 + 548) & 0xF7 | v4;
  return result;
}

uint64_t boringssl_context_set_sct_enable(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 400);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *(v2 + 392);
  if (a2)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(v2 + 548) = *(v2 + 548) & 0xFB | v6;
  if (a2)
  {
    if (v5)
    {
      SSL_enable_signed_cert_timestamps(v5);
    }

    else
    {
      SSL_CTX_enable_signed_cert_timestamps(v3);
    }

    return 0;
  }

  return result;
}

uint64_t SSL_enable_ocsp_stapling(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(v1 + 309) |= 4u;
  }

  return result;
}

uint64_t SSL_enable_signed_cert_timestamps(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(v1 + 309) |= 2u;
  }

  return result;
}

uint64_t boringssl_context_set_renegotiation(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  SSL_set_renegotiate_mode(v3, v4);
  return 0;
}

void bssl::ssl_maybe_shed_handshake_config(bssl *this, ssl_st *a2)
{
  if (!*(*(this + 6) + 280))
  {
    v3 = (this + 8);
    v2 = *(this + 1);
    if (v2)
    {
      if ((*(v2 + 309) & 0x80) != 0 && !bssl::ssl_can_renegotiate(this, a2))
      {

        std::unique_ptr<bssl::SSL_CONFIG,bssl::internal::Deleter>::reset[abi:ne200100](v3, 0);
      }
    }
  }
}

uint64_t boringssl_context_set_session_ticket_enabled(uint64_t a1, int a2)
{
  if (!a1 || *a1 != -1252936367)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v2 + 392);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    SSL_clear_options(v3, 0x4000);
    v4 = 16;
  }

  else
  {
    SSL_set_options(v3, 0x4000u);
    v4 = 0;
  }

  result = 0;
  *(v2 + 549) = *(v2 + 549) & 0xEF | v4;
  return result;
}

const EVP_MD *bssl::ssl_get_handshake_digest(bssl *this, uint64_t a2, const ssl_cipher_st *a3)
{
  v4 = *(a2 + 36);
  switch(v4)
  {
    case 4:

      return EVP_sha384();
    case 2:
      goto LABEL_5;
    case 1:
      if (this >= 0x303)
      {
LABEL_5:

        return EVP_sha256();
      }

      else
      {

        return EVP_md5_sha1();
      }

    default:
      bssl::ssl_get_handshake_digest();
  }
}

int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type, ENGINE *impl)
{
  if (ctx->digest == type)
  {
    digest = ctx->digest;
LABEL_6:
    if (ctx->flags && !ctx->md_data)
    {
      EVP_DigestInit_ex_cold_2();
    }

    (digest->flags)(ctx);
    LODWORD(v6) = 1;
    return v6;
  }

  digest = type;
  final_high = HIDWORD(type->final);
  if (!final_high)
  {
    EVP_DigestInit_ex_cold_1();
  }

  v6 = OPENSSL_malloc(final_high);
  if (v6)
  {
    v7 = v6;
    OPENSSL_free(ctx->engine);
    ctx->digest = digest;
    ctx->engine = v7;
    goto LABEL_6;
  }

  return v6;
}

uint64_t bssl::tls_add_change_cipher_spec(bssl *this, ssl_st *a2)
{
  if (!bssl::tls_flush_pending_hs_data(this, a2) || !*(this + 21) && !bssl::add_record_to_flight(this, 0x14, &bssl::tls_add_change_cipher_spec(ssl_st *)::kChangeCipherSpec, 1))
  {
    return 0;
  }

  v3 = 1;
  bssl::ssl_do_msg_callback(this, 1, 20, &bssl::tls_add_change_cipher_spec(ssl_st *)::kChangeCipherSpec, 1);
  return v3;
}

uint64_t CRYPTO_once(pthread_once_t *a1, void (*a2)(void))
{
  result = pthread_once(a1, a2);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t CRYPTO_memcmp(char *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    v3 |= v6 ^ v4;
    --a3;
  }

  while (a3);
  return v3;
}

uint64_t bssl::anonymous namespace::X25519KeyShare::Decap(uint64_t a1, uint64_t a2, _BYTE *a3, int64x2_t *a4, uint64_t a5)
{
  *a3 = 80;
  OPENSSL_free(0);
  v10 = OPENSSL_malloc(0x20uLL);
  v11 = v10;
  if (v10)
  {
    if (a5 == 32 && X25519(v10, (a1 + 8), a4))
    {
      OPENSSL_free(*a2);
      *a2 = v11;
      *(a2 + 8) = 32;
      v12 = 1;
      v11 = 0;
    }

    else
    {
      *a3 = 47;
      ERR_put_error(16, 0, 108, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_key_share.cc", 179);
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  OPENSSL_free(v11);
  return v12;
}

uint64_t bssl::SSLTranscript::DigestLen(bssl::SSLTranscript *this)
{
  v1 = EVP_MD_CTX_md((this + 8));

  return EVP_MD_size(v1);
}

BOOL X25519(char *a1, __int128 *a2, int64x2_t *a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v86 = 0xAAAAAAAAAAAAAAAALL;
  v3.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v3.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v84 = v3;
  v85 = v3;
  v72 = 0xAAAAAAAAAAAAAAAALL;
  v71[0] = v3;
  v71[1] = v3;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v69[0] = v3;
  v69[1] = v3;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v67[0] = v3;
  v67[1] = v3;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v65[0] = v3;
  v65[1] = v3;
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v63[0] = v3;
  v63[1] = v3;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v61[0] = v3;
  v61[1] = v3;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  v58 = v3;
  v59 = v3;
  v4 = a2[1];
  v87 = *a2;
  v88 = v4;
  LOBYTE(v87) = v87 & 0xF8;
  HIBYTE(v88) = HIBYTE(v4) & 0x3F | 0x40;
  v5 = a3[1];
  v89 = *a3;
  v90 = v5;
  v90.i8[15] = v5.i8[15] & 0x7F;
  fe_frombytes_strict(&v84, &v89);
  v6 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = 0;
  v81 = 1;
  v78 = 0u;
  v79 = 0u;
  v76[0] = v84;
  v76[1] = v85;
  v7 = 254;
  v77 = v86;
  v74 = 0u;
  v73 = 1;
  v75 = 0u;
  do
  {
    v8 = 0;
    v9 = v7;
    v10 = v6;
    v6 = (*(&v87 + (v7 >> 3)) >> (v7 & 7)) & 1;
    v11 = -(v6 ^ v10);
    do
    {
      v12 = *(&v81 + v8 * 8);
      v13 = v76[0].i64[v8];
      v14 = (v13 ^ v12) & v11;
      *(&v81 + v8 * 8) = v14 ^ v12;
      v76[0].i64[v8++] = v14 ^ v13;
    }

    while (v8 != 5);
    for (i = 0; i != 5; ++i)
    {
      v16 = v78.i64[i];
      v17 = *(&v73 + i * 8);
      v18 = (v17 ^ v16) & v11;
      v78.i64[i] = v18 ^ v16;
      *(&v73 + i * 8) = v18 ^ v17;
    }

    fe_sub(v61, v76, &v73);
    fe_sub(&v58, &v81, &v78);
    fe_add(v67, &v81, &v78);
    fe_add(v65, v76, &v73);
    fe_mul_impl(&v73, v61, v67);
    fe_mul_impl(v78.i64, v65, &v58);
    fe_sq_tl(v71[0].i64, &v58);
    fe_sq_tl(v69[0].i64, v67);
    fe_add(v63, &v73, &v78);
    fe_sub(v65, &v73, &v78);
    fe_mul_impl(&v81, v69, v71);
    fe_sub(&v58, v69, v71);
    fe_sq_tl(v78.i64, v65);
    for (j = 0; j != 5; ++j)
    {
      if (v58.i64[j] >= 0x1A666666666665uLL)
      {
        X25519_cold_2();
      }
    }

    v20 = 0;
    v21 = (v60 * 0x1DB42uLL) >> 64;
    v22 = 121666 * v60;
    v23 = (v59.u64[1] * 0x1DB42uLL) >> 64;
    v24 = 121666 * v59.i64[1];
    v25 = (v58.u64[0] * 0x1DB42uLL) >> 51;
    v26 = __CFADD__(v25, 121666 * v58.i64[1]);
    v27 = v25 + 121666 * v58.i64[1];
    v28 = 121666 * v59.i64[0];
    v29 = (v58.u64[1] * 0x1DB42uLL) >> 64;
    if (v26)
    {
      ++v29;
    }

    *(&v31 + 1) = v29;
    *&v31 = v27;
    v30 = v31 >> 51;
    v32 = v27 & 0x7FFFFFFFFFFFFLL;
    v26 = __CFADD__(v30, v28);
    v33 = v30 + v28;
    if (v26)
    {
      v34 = ((v59.u64[0] * 0x1DB42uLL) >> 64) + 1;
    }

    else
    {
      v34 = (v59.u64[0] * 0x1DB42uLL) >> 64;
    }

    *(&v36 + 1) = v34;
    *&v36 = v33;
    v35 = v36 >> 51;
    v37 = v33 & 0x7FFFFFFFFFFFFLL;
    v26 = __CFADD__(v35, v24);
    v38 = v35 + v24;
    if (v26)
    {
      ++v23;
    }

    *(&v40 + 1) = v23;
    *&v40 = v38;
    v39 = v40 >> 51;
    v26 = __CFADD__(v39, v22);
    v41 = v39 + v22;
    if (v26)
    {
      ++v21;
    }

    *(&v42 + 1) = v21;
    *&v42 = v41;
    v43 = ((121666 * v58.i64[0]) & 0x7FFFFFFFFFFFELL) + 19 * (v42 >> 51);
    v44 = v43 & 0x7FFFFFFFFFFFFLL;
    v45 = v32 + (v43 >> 51);
    v73 = v44;
    *&v74 = v45 & 0x7FFFFFFFFFFFFLL;
    *(&v74 + 1) = v37 + (v45 >> 51);
    *&v75 = v38 & 0x7FFFFFFFFFFFFLL;
    *(&v75 + 1) = v41 & 0x7FFFFFFFFFFFFLL;
    do
    {
      if (*(&v73 + v20) >= 0x8CCCCCCCCCCCDLL)
      {
        X25519_cold_1();
      }

      v20 += 8;
    }

    while (v20 != 40);
    fe_sq_tl(v76[0].i64, v63);
    fe_add(v61, v71, &v73);
    fe_mul_impl(&v73, &v84, &v78);
    fe_mul_impl(v78.i64, &v58, v61);
    v7 = v9 - 1;
  }

  while (v9);
  v46 = 0;
  v47 = -v6;
  do
  {
    v48 = *(&v81 + v46 * 8);
    v49 = v76[0].i64[v46];
    v50 = (v49 ^ v48) & v47;
    *(&v81 + v46 * 8) = v50 ^ v48;
    v76[0].i64[v46++] = v50 ^ v49;
  }

  while (v46 != 5);
  for (k = 0; k != 5; ++k)
  {
    v52 = v78.i64[k];
    v53 = *(&v73 + k * 8);
    v54 = (v53 ^ v52) & v47;
    v78.i64[k] = v54 ^ v52;
    *(&v73 + k * 8) = v54 ^ v53;
  }

  v89 = v78;
  v90 = v79;
  v91 = v80;
  fe_loose_invert(v78.i64, &v89);
  fe_mul_impl(&v81, &v81, &v78);
  fe_tobytes(a1, &v81);
  result = CRYPTO_memcmp(X25519_kZeros, a1, 32) != 0;
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

void OPENSSL_cleanse(void *ptr, size_t len)
{
  if (len)
  {
    bzero(ptr, len);
  }
}

uint64_t bssl::ssl_hash_message(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    return 1;
  }

  else
  {
    return bssl::SSLTranscript::Update(a1 + 424, *(a2 + 24), *(a2 + 32));
  }
}

uint64_t bssl::ssl_log_secret(uint64_t a1, const char *a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!*(*(a1 + 120) + 784))
  {
    return 1;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = v8;
  v16[2] = v8;
  v16[0] = v8;
  CBB_zero(v16);
  v15[0] = 0;
  v15[1] = 0;
  v9 = strlen(a2);
  if (!CBB_init(v16, v9 + 2 * a4 + 67) || (v10 = strlen(a2), !CBB_add_bytes(v16, a2, v10)) || !CBB_add_u8(v16, 0x20u) || !bssl::cbb_add_hex_consttime(v16, (*(a1 + 48) + 48), 32) || !CBB_add_u8(v16, 0x20u) || !bssl::cbb_add_hex_consttime(v16, a3, a4) || !CBB_add_u8(v16, 0))
  {
    v12 = 0;
    goto LABEL_12;
  }

  v11 = bssl::CBBFinishArray(v16, v15);
  v12 = v15[0];
  if (!v11)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  (*(*(a1 + 120) + 784))(a1, v15[0]);
  v13 = 1;
LABEL_13:
  OPENSSL_free(v12);
  CBB_cleanup(v16);
  return v13;
}

void sub_1A90082B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  bssl::Array<unsigned char>::~Array(&a9);
  CBB_cleanup(&a11);
  _Unwind_Resume(a1);
}

uint64_t bssl::SSLTranscript::GetHash(bssl::SSLTranscript *this, unsigned __int8 *a2, unint64_t *a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&ctx.digest = v6;
  *&ctx.flags = v6;
  EVP_MD_CTX_init(&ctx);
  s = -1431655766;
  if (EVP_MD_CTX_copy_ex(&ctx, (this + 8)) && EVP_DigestFinal_ex(&ctx, a2, &s))
  {
    *a3 = s;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  EVP_MD_CTX_cleanup(&ctx);
  return v7;
}

int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in)
{
  if (!in)
  {
    goto LABEL_13;
  }

  if (!in->flags)
  {
    digest = in->digest;
    if (in->digest)
    {
      v6 = 0;
LABEL_9:
      if (out->digest == digest)
      {
        engine = out->engine;
        out->engine = 0;
LABEL_16:
        EVP_MD_CTX_cleanup(out);
        v11 = in->digest;
        out->digest = in->digest;
        out->engine = engine;
        if (v11)
        {
          final_high = HIDWORD(v11->final);
          if (final_high)
          {
            memcpy(engine, in->engine, final_high);
          }
        }

        md_data = in->md_data;
        out->flags = v6;
        out->md_data = md_data;
        LODWORD(v5) = 1;
        if (v6 && !md_data)
        {
          EVP_MD_CTX_copy_ex_cold_3();
        }

        return v5;
      }

      v9 = HIDWORD(digest->final);
      if (!v9)
      {
        EVP_MD_CTX_copy_ex_cold_2();
      }

      v10 = OPENSSL_malloc(v9);
      if (v10)
      {
        engine = v10;
        goto LABEL_16;
      }

      if (v6)
      {
        (*in->md_data)(v6);
      }

LABEL_14:
      LODWORD(v5) = 0;
      return v5;
    }

LABEL_13:
    ERR_put_error(29, 0, 100, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/fipsmodule/digest/digest.c.inc", 138);
    goto LABEL_14;
  }

  v4 = in->md_data;
  if (!v4)
  {
    EVP_MD_CTX_copy_ex_cold_1();
  }

  v5 = v4[1]();
  if (v5)
  {
    v6 = v5;
    digest = in->digest;
    if (!in->digest)
    {
      engine = 0;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  return v5;
}

uint64_t digest_final(uint64_t a1)
{
  if (!a1)
  {
    digest_final_cold_2();
  }

  result = CCDigestFinal();
  if (result)
  {
    digest_final_cold_1();
  }

  return result;
}

int EVP_DigestFinal_ex(EVP_MD_CTX *ctx, unsigned __int8 *md, unsigned int *s)
{
  if (ctx->digest->pkey_type >= 0x41u)
  {
    EVP_DigestFinal_ex_cold_1();
  }

  (ctx->digest->update)();
  digest = ctx->digest;
  if (s)
  {
    *s = digest->pkey_type;
  }

  OPENSSL_cleanse(ctx->engine, HIDWORD(digest->final));
  return 1;
}

uint64_t digest_update(uint64_t a1)
{
  if (!a1)
  {
    digest_update_cold_2();
  }

  result = CCDigestUpdate();
  if (result)
  {
    digest_update_cold_1();
  }

  return result;
}

void *bssl::tls_append_handshake_data(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *(a1 + 48);
  v9 = *(v6 + 224);
  v8 = (v6 + 224);
  result = v9;
  if (v9)
  {
    return (BUF_MEM_append(result, a2, a3) != 0);
  }

  v10 = BUF_MEM_new();
  std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v8, v10);
  result = *(*(a1 + 48) + 224);
  if (result)
  {
    return (BUF_MEM_append(result, a2, a3) != 0);
  }

  return result;
}

uint64_t boringssl_session_handshake_continue_inner(SSL *a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a1 || a1->version != -1252936367 || (method = a1->method) == 0 || (ssl_pending = method[1].ssl_pending) == 0)
  {
    result = 0xFFFFFFFFLL;
LABEL_12:
    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  v7 = SSL_do_handshake(ssl_pending);
  if (v7 == 1)
  {
    result = SSL_in_false_start(method[1].ssl_pending);
    if (result)
    {
      WeakRetained = objc_loadWeakRetained(&method->ssl_clear);
      if (!WeakRetained || (v10 = WeakRetained, v11 = objc_loadWeakRetained(&method->ssl_clear), v2 = v11[435], v11, v10, (v2 & 1) == 0))
      {
        v12 = objc_loadWeakRetained(&method->ssl_clear);
        if (v12)
        {
          v13 = objc_loadWeakRetained(&method->ssl_clear);
          v14 = (v13[435] & 1) == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          if (g_boringssl_log)
          {
            v17 = g_boringssl_log;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = objc_loadWeakRetained(&method->ssl_clear);
              if (v18)
              {
                v2 = objc_loadWeakRetained(&method->ssl_clear);
                v19 = v2 + 351;
              }

              else
              {
                v19 = &unk_1A9098A9F;
              }

              v20 = objc_loadWeakRetained(&method->ssl_clear);
              v22 = 136446978;
              v23 = "boringssl_session_handshake_continue_inner";
              v24 = 1024;
              v25 = 213;
              v26 = 2082;
              v27 = v19;
              v28 = 2048;
              v29 = v20;
              _os_log_impl(&dword_1A8FF5000, v17, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Connected in False Start.", &v22, 0x26u);

              if (v18)
              {
              }
            }
          }
        }
      }

      BYTE5(method[2].ssl_renegotiate) |= 1u;
      session = SSL_get_session(method[1].ssl_pending);
      boringssl_session_set_peer_verification_state_from_session(a1, session);
      boringssl_session_finish_handshake(a1);
      result = 0;
    }

    goto LABEL_12;
  }

  v16 = *MEMORY[0x1E69E9840];

  return boringssl_session_handshake_incomplete(a1, v7, a2);
}

uint64_t CBS_get_u24(uint64_t *a1, int *a2)
{
  v2 = a1[1];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 3;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 3);
  *a2 = v6;
  return 1;
}

uint64_t digest_init(uint64_t a1)
{
  if (!a1)
  {
    digest_init_cold_2();
  }

  result = CCDigestInit();
  if (result)
  {
    digest_init_cold_1();
  }

  return result;
}

void nw_protocol_boringssl_read_bytes_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t BIO_ctrl(uint64_t bp, int cmd, uint64_t larg, void *parg)
{
  if (bp)
  {
    if (*bp && (v5 = *(*bp + 48)) != 0)
    {

      return v5();
    }

    else
    {
      ERR_put_error(17, 0, 115, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bio/bio.c", 217);
      return -2;
    }
  }

  return bp;
}

uint64_t boringssl_bio_ctrl(uint64_t a1, int a2, int a3)
{
  result = 1;
  if (a2 > 103)
  {
    if ((a2 - 104) >= 2)
    {
      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 8:
        return *(a1 + 20);
      case 9:
        *(a1 + 20) = a3;
        return 1;
      case 11:
        break;
      default:
        return 0;
    }
  }

  return result;
}

const char *bssl::tls13_client_handshake_state(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 0xE)
  {
    return "TLS 1.3 client unknown";
  }

  else
  {
    return off_1E785EEF0[v1];
  }
}

uint64_t bssl::parse_server_hello_tls13(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  result = bssl::ssl_parse_server_hello(a2, a3, a4);
  if (result)
  {
    is_dtls = SSL_is_dtls(*a1);
    if (SSL_is_dtls(*a1))
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = (a1 + 1613);
      v10 = *(a1 + 1645);
    }

    if (is_dtls)
    {
      v11 = 65277;
    }

    else
    {
      v11 = 771;
    }

    if (v11 == *(a2 + 16) && !*(a2 + 58) && *(a2 + 48) == v10 && !memcmp(*(a2 + 40), v9, v10) && *(a2 + 72))
    {
      return 1;
    }

    else
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 132);
      result = 0;
      *a3 = 50;
    }
  }

  return result;
}

uint64_t bssl::SSLTranscript::InitHash(bssl::SSLTranscript *this, bssl *a2, const ssl_cipher_st *a3)
{
  *(this + 21) = a2;
  handshake_digest = bssl::ssl_get_handshake_digest(a2, a3, a3);
  if (EVP_MD_CTX_md((this + 8)) != handshake_digest)
  {
    result = bssl::SSLTranscript::HashBuffer(this, (this + 8), handshake_digest);
    if (!result)
    {
      return result;
    }

    if ((*(this + 40) & 1) != 0 && *(this + 21) >= 0x304u)
    {
      std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this, 0);
    }
  }

  return 1;
}

uint64_t bssl::ssl_ech_confirmation_signal_hello_offset(unsigned __int8 **this, const ssl_st *a2)
{
  if (SSL_is_dtls(this))
  {
    return 38;
  }

  else
  {
    return 30;
  }
}

uint64_t ssl_session_st::ssl_session_st(uint64_t a1, void *a2, CRYPTO_EX_DATA *a3)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 58) = 0;
  *(a1 + 91) = 0;
  *(a1 + 128) = 0;
  *(a1 + 124) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 65;
  *(a1 + 184) = vdup_n_s32(0x1C20u);
  *(a1 + 368) = 0;
  *(a1 + 372) = 0;
  *(a1 + 376) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) &= 0x80u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  CRYPTO_new_ex_data(a1 + 208, a2, a3);
  *(a1 + 192) = time(0);
  return a1;
}

void sub_1A9008D60(_Unwind_Exception *a1)
{
  v4 = v3;
  bssl::Array<unsigned char>::~Array(v4 + 232);
  bssl::Array<unsigned char>::~Array(v1 + 424);
  bssl::Array<unsigned char>::~Array(v1 + 408);
  bssl::Array<unsigned char>::~Array(v4 + 176);
  *(v1 + 368) = 0;
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 264), 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 256), 0);
  std::unique_ptr<crypto_buffer_st,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 248), 0);
  bssl::Array<unsigned char>::~Array(v1 + 232);
  std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100]((v1 + 136), 0);
  std::unique_ptr<char,bssl::internal::Deleter>::reset[abi:ne200100](v2, 0);
  *(v1 + 124) = 0;
  *(v1 + 91) = 0;
  *(v1 + 58) = 0;
  _Unwind_Resume(a1);
}

void nw_protocol_boringssl_input_available_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::SSLTranscript::HashBuffer(size_t **this, env_md_ctx_st *ctx, const env_md_st *type)
{
  result = EVP_DigestInit_ex(ctx, type, 0);
  if (result)
  {
    if ((this[5] & 1) == 0 || *(this + 21) <= 0x303u)
    {
      v7 = **this;
      v6 = (*this)[1];
      return EVP_DigestUpdate(ctx, v6, v7) != 0;
    }

    v8 = *this;
    v9 = **this;
    if (!v9)
    {
      return 1;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v12 = v8[1];
    v13 = v9;
    result = CBS_get_bytes(&v12, &v10, 4uLL);
    if (result)
    {
      result = CBS_skip(&v12, 8uLL);
      if (result)
      {
        result = EVP_DigestUpdate(ctx, v10, v11);
        if (result)
        {
          v6 = v12;
          v7 = v13;
          return EVP_DigestUpdate(ctx, v6, v7) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_parse_server_hello(uint64_t a1, char *a2, uint64_t a3)
{
  if (*(a3 + 1) == 2)
  {
    *a1 = *(a3 + 24);
    v10 = *(a3 + 8);
    if (CBS_get_u16(&v10, (a1 + 16)) && CBS_get_bytes(&v10, (a1 + 24), 0x20uLL) && CBS_get_u8_length_prefixed(&v10, (a1 + 40)) && *(a1 + 48) <= 0x20uLL && CBS_get_u16(&v10, (a1 + 56)) && CBS_get_u8(&v10, (a1 + 58)))
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      v5 = (a1 + 64);
      if (!*(&v10 + 1))
      {
        return 1;
      }

      u16_length_prefixed = CBS_get_u16_length_prefixed(&v10, v5);
      v7 = 762;
      if (u16_length_prefixed)
      {
        if (!*(&v10 + 1))
        {
          return 1;
        }
      }
    }

    else
    {
      v7 = 752;
    }

    ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", v7);
    result = 0;
    v9 = 50;
  }

  else
  {
    ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake_client.cc", 740);
    result = 0;
    v9 = 10;
  }

  *a2 = v9;
  return result;
}

uint64_t bssl::ssl_parse_extensions(__int128 *a1, char *a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v9 = 8 * a4;
  if (a4)
  {
    v10 = 8 * a4;
    v11 = a3;
    do
    {
      v12 = *v11;
      *(v12 + 3) = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      if (((a5 ^ 1 | *(v12 + 2)) & 1) == 0)
      {
        bssl::ssl_parse_extensions();
      }

      ++v11;
      v10 -= 8;
    }

    while (v10);
  }

  v21 = *a1;
  v13 = 1;
  if (!*(&v21 + 1))
  {
    return v13;
  }

  while (1)
  {
    v20 = -21846;
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CBS_get_u16(&v21, &v20) || !CBS_get_u16_length_prefixed(&v21, &v19))
    {
      ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 295);
      v17 = 50;
      goto LABEL_21;
    }

    if (a4)
    {
      break;
    }

LABEL_13:
    if ((v5 & 1) == 0)
    {
      ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 312);
      v17 = 110;
      goto LABEL_21;
    }

LABEL_17:
    if (!*(&v21 + 1))
    {
      return 1;
    }
  }

  v14 = v9;
  v15 = a3;
  while (1)
  {
    v16 = *v15;
    if (v20 == **v15 && (v16[1] & 1) != 0)
    {
      break;
    }

    ++v15;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (*(v16 + 3) != 1)
  {
    *(v16 + 3) = 1;
    *(v16 + 4) = v19;
    goto LABEL_17;
  }

  ERR_put_error(16, 0, 257, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/handshake.cc", 319);
  v17 = 47;
LABEL_21:
  v13 = 0;
  *a2 = v17;
  return v13;
}

uint64_t bssl::tls13_client_handshake(bssl *this, ssl_st *a2)
{
  v131 = (this + 1536);
  v3 = (this + 1520);
  v155 = *MEMORY[0x1E69E9840];
  v129 = (this + 1488);
  v130 = (this + 520);
  v128 = (this + 552);
  while (2)
  {
    v4 = *(this + 6);
    v5 = 1;
    switch(v4)
    {
      case 0:
        v6 = *this;
        if (!*(*(*this + 48) + 208))
        {
          bssl::tls13_client_handshake();
        }

        *&v150 = 0xAAAAAAAAAAAAAAAALL;
        *&v7 = 0xAAAAAAAAAAAAAAAALL;
        *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v148 = v7;
        v149 = v7;
        if (!(*(*v6 + 24))(v6, &v148))
        {
          goto LABEL_138;
        }

        if ((*(this + 1601) & 8) == 0 && !(*(*v6 + 112))(v6))
        {
          goto LABEL_332;
        }

        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v8;
        v144 = v8;
        *&v141[16] = v8;
        v142 = v8;
        *v141 = v8;
        *&v141[16] = 0;
        WORD4(v143) = 0;
        BYTE10(v143) = 0;
        LOBYTE(v151[0]) = 50;
        if ((bssl::parse_server_hello_tls13(this, v141, v151, &v148) & 1) == 0)
        {
          goto LABEL_281;
        }

        cipher_by_value = SSL_get_cipher_by_value(WORD4(v143));
        v10 = cipher_by_value;
        if (!cipher_by_value || (min_version = SSL_CIPHER_get_min_version(cipher_by_value), min_version > bssl::ssl_protocol_version(v6, v12)) || (max_version = SSL_CIPHER_get_max_version(v10), max_version < bssl::ssl_protocol_version(v6, v14)) || (protocol_id = SSL_CIPHER_get_protocol_id(v10), (bssl::ssl_tls13_cipher_meets_policy(protocol_id, *(*(v6 + 1) + 304)) & 1) == 0))
        {
          ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 219);
          bssl::ssl_send_alert(v6, 2, 47);
          goto LABEL_332;
        }

        *(this + 196) = v10;
        v20 = v142 == 32 && **&v141[24] == 0x11619AE574AD21CFLL && *(*&v141[24] + 8) == 0x91B8651E028C1DBELL && *(*&v141[24] + 16) == 0x5E8CBB7A1611A2C2 && *(*&v141[24] + 24) == 0x9C33A8C8E2099E07;
        v90 = bssl::ssl_protocol_version(v6, v16);
        if (!bssl::SSLTranscript::InitHash((this + 424), v90, *(this + 196)) || v20 && !bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 424)))
        {
          goto LABEL_332;
        }

        if (*(this + 195))
        {
          v91 = bssl::ssl_protocol_version(v6, a2);
          if (!bssl::SSLTranscript::InitHash((this + 472), v91, *(this + 196)) || v20 && !bssl::SSLTranscript::UpdateForHelloRetryRequest((this + 472)))
          {
            goto LABEL_332;
          }
        }

        LOBYTE(v132[0]) = -86;
        if (!bssl::check_ech_confirmation(this, v132, v151, v141))
        {
          goto LABEL_281;
        }

        v92 = *(this + 195);
        if (v92)
        {
          if (LOBYTE(v132[0]))
          {
            v93 = 1;
          }

          else
          {
            v93 = 2;
          }

          *(*(v6 + 6) + 216) = v93;
        }

        if (!v20)
        {
          *(this + 6) = 2;
          goto LABEL_44;
        }

        v145 = 0xAAAAAAAA0001002CLL;
        *&v146 = 0;
        v137 = 0xAAAAAAAA00AA0033;
        BYTE2(v137) = *(this + 80) != 0;
        v138 = 0;
        v139 = 0;
        v135 = 0xAAAAAAAA0001002BLL;
        v136 = 0;
        *&v132[1] = 0xAAAAAAAA00AAFE0DLL;
        if (v92)
        {
          LOBYTE(v94) = 1;
        }

        else
        {
          v94 = *(*(this + 1) + 309);
        }

        LOBYTE(v132[2]) = v94 & 1;
        v133 = 0;
        v134 = 0;
        *&v152 = &v145;
        *(&v152 + 1) = &v137;
        *&v153 = &v135;
        *(&v153 + 1) = &v132[1];
        if ((bssl::ssl_parse_extensions(&v144, v151, &v152, 4, 0) & 1) == 0)
        {
LABEL_281:
          bssl::ssl_send_alert(v6, 2, LOBYTE(v151[0]));
          goto LABEL_332;
        }

        if (BYTE3(v145))
        {
          *&v152 = 0xAAAAAAAAAAAAAAAALL;
          *(&v152 + 1) = 0xAAAAAAAAAAAAAAAALL;
          if (!CBS_get_u16_length_prefixed(&v145 + 1, &v152) || (v115 = *(&v152 + 1)) == 0 || v146)
          {
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 280);
            bssl::ssl_send_alert(v6, 2, 50);
            goto LABEL_332;
          }

          v116 = v152;
          if ((bssl::Array<unsigned char>::InitUninitialized(v128, *(&v152 + 1)) & 1) == 0)
          {
            goto LABEL_332;
          }

          v117 = *v128;
          do
          {
            v118 = *v116++;
            *v117++ = v118;
            --v115;
          }

          while (v115);
          if ((v137 & 0x1000000) == 0)
          {
LABEL_326:
            if (!bssl::ssl_hash_message(this, &v148) || *(*(v6 + 6) + 216) == 1 && !bssl::SSLTranscript::Update(this + 472, *(&v149 + 1), v150))
            {
              goto LABEL_332;
            }

            if ((*(*v6 + 40))(v6))
            {
              bssl::ssl_send_alert(v6, 2, 10);
              ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 339);
              goto LABEL_332;
            }

            (*(*v6 + 32))(v6);
            *(*(v6 + 6) + 222) |= 0x1000u;
            v5 = 1;
            *(this + 6) = 1;
            if ((*(this + 1601) & 4) != 0)
            {
              *(*(v6 + 6) + 256) = 8;
              v39 = bssl::close_early_data(this, 0);
              goto LABEL_64;
            }

            goto LABEL_333;
          }
        }

        else if ((v137 & 0x1000000) == 0)
        {
          ERR_put_error(16, 0, 282, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 271);
          bssl::ssl_send_alert(v6, 2, 47);
          goto LABEL_332;
        }

        if (*(this + 210))
        {
          bssl::tls13_client_handshake();
        }

        LOWORD(v152) = -21846;
        if (!CBS_get_u16(&v138, &v152) || v139)
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 298);
          bssl::ssl_send_alert(v6, 2, 50);
          goto LABEL_332;
        }

        if (!bssl::tls1_check_group_id(this, v152))
        {
          bssl::ssl_send_alert(v6, 2, 47);
          ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 306);
          goto LABEL_332;
        }

        v119 = (*(**(this + 49) + 16))(*(this + 49));
        v120 = v152;
        if (v119 == v152 || (v121 = *(this + 50)) != 0 && (v122 = (*(*v121 + 16))(v121), v120 = v152, v122 == v152))
        {
          bssl::ssl_send_alert(v6, 2, 47);
          ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 315);
          goto LABEL_332;
        }

        if (!bssl::ssl_setup_key_shares(this, v120))
        {
          goto LABEL_332;
        }

        goto LABEL_326;
      case 1:
        v40 = *(*this + 48);
        if (*(v40 + 204))
        {
          bssl::tls13_client_handshake();
        }

        if (*(v40 + 216) == 1 && !bssl::ssl_encrypt_client_hello(this, 0, 0) || !bssl::ssl_add_client_hello(this, a2))
        {
          goto LABEL_332;
        }

        bssl::ssl_done_writing_client_hello(this);
        *(this + 6) = 2;
        goto LABEL_72;
      case 2:
        v29 = *this;
        *&v150 = 0xAAAAAAAAAAAAAAAALL;
        *&v47 = 0xAAAAAAAAAAAAAAAALL;
        *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v148 = v47;
        v149 = v47;
        if (!(*(*v29 + 24))(v29, &v148))
        {
          goto LABEL_138;
        }

        *&v48 = 0xAAAAAAAAAAAAAAAALL;
        *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v143 = v48;
        v144 = v48;
        *&v141[16] = v48;
        v142 = v48;
        *v141 = v48;
        *&v141[16] = 0;
        WORD4(v143) = 0;
        BYTE10(v143) = 0;
        v140 = 50;
        if ((bssl::parse_server_hello_tls13(this, v141, &v140, &v148) & 1) == 0)
        {
          goto LABEL_301;
        }

        if (v142 == 32)
        {
          v49 = **&v141[24] == 0x11619AE574AD21CFLL && *(*&v141[24] + 8) == 0x91B8651E028C1DBELL;
          v50 = v49 && *(*&v141[24] + 16) == 0x5E8CBB7A1611A2C2;
          if (v50 && *(*&v141[24] + 24) == 0x9C33A8C8E2099E07)
          {
            bssl::ssl_send_alert(v29, 2, 10);
            ERR_put_error(16, 0, 223, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 393);
            goto LABEL_332;
          }
        }

        v52 = SSL_CIPHER_get_protocol_id(*(this + 196));
        if (v52 != WORD4(v143))
        {
          ERR_put_error(16, 0, 242, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 399);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        v53 = *(v29 + 48);
        if (*(v53 + 216) != 1)
        {
          goto LABEL_108;
        }

        if ((*(v53 + 222) & 0x1000) == 0)
        {
          goto LABEL_107;
        }

        LOBYTE(v152) = -86;
        if (!bssl::check_ech_confirmation(this, &v152, &v140, v141))
        {
          v88 = v140;
          goto LABEL_218;
        }

        if ((v152 & 1) == 0)
        {
          ERR_put_error(16, 0, 321, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 413);
          v88 = 47;
LABEL_218:
          bssl::ssl_send_alert(v29, 2, v88);
          goto LABEL_332;
        }

LABEL_107:
        v54 = *(this + 59);
        *(this + 59) = 0;
        std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 53, v54);
        EVP_MD_CTX_move(this + 432, this + 30);
        *(this + 116) = *(this + 128);
        *(this + 94) = *(this + 95);
        v55 = *(v29 + 48);
        v56 = v130[1];
        *(v55 + 48) = *v130;
        *(v55 + 64) = v56;
        v53 = *(v29 + 48);
LABEL_108:
        v57 = *(*&v141[24] + 16);
        *(v53 + 16) = **&v141[24];
        *(v53 + 32) = v57;
        v58 = *(v29 + 104);
        if (v58)
        {
          LOBYTE(v58) = *(*(v29 + 48) + 216) != 2;
        }

        *&v145 = 0xAAAAAAAA00AA0033;
        BYTE2(v145) = *(this + 49) != 0;
        *(&v145 + 1) = 0;
        *&v146 = 0;
        v137 = 0xAAAAAAAA00AA8A3BLL;
        BYTE2(v137) = *(this + 210) != 0;
        v138 = 0;
        v139 = 0;
        v135 = 0xAAAAAAAA00AA0029;
        BYTE2(v135) = v58;
        v136 = 0;
        *&v132[1] = 0xAAAAAAAA0001002BLL;
        v133 = 0;
        v134 = 0;
        *&v152 = &v145;
        *(&v152 + 1) = &v135;
        *&v153 = &v132[1];
        *(&v153 + 1) = &v137;
        if ((bssl::ssl_parse_extensions(&v144, &v140, &v152, 4, 0) & 1) == 0)
        {
          goto LABEL_301;
        }

        LOWORD(v151[0]) = -21846;
        if (HIBYTE(v132[2]) != 1 || !CBS_get_u16(&v133, v151) || v134 || LOWORD(v151[0]) != *(*(v29 + 48) + 208))
        {
          ERR_put_error(16, 0, 288, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 449);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        if (BYTE3(v137) == 1)
        {
          if ((BYTE3(v145) & 1) != 0 || BYTE3(v135) == 1)
          {
            ERR_put_error(16, 0, 222, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 458);
            bssl::ssl_send_alert(v29, 2, 110);
            goto LABEL_332;
          }

          if (!*(this + 210))
          {
            goto LABEL_268;
          }

LABEL_265:
          v140 = 50;
          if ((bssl::ssl_get_new_session(this, v59) & 1) == 0)
          {
LABEL_331:
            bssl::ssl_send_alert(v29, 2, 80);
            goto LABEL_332;
          }

          goto LABEL_266;
        }

        if (*(this + 210))
        {
          ERR_put_error(16, 0, 164, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 464);
          bssl::ssl_send_alert(v29, 2, 109);
          goto LABEL_332;
        }

        if ((BYTE3(v145) & 1) == 0)
        {
LABEL_268:
          ERR_put_error(16, 0, 258, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 471);
          bssl::ssl_send_alert(v29, 2, 109);
          goto LABEL_332;
        }

        if (BYTE3(v135) != 1)
        {
          goto LABEL_265;
        }

        v140 = 50;
        if ((bssl::ssl_ext_pre_shared_key_parse_serverhello(this, &v140, &v135 + 8) & 1) == 0)
        {
LABEL_301:
          bssl::ssl_send_alert(v29, 2, v140);
          goto LABEL_332;
        }

        v107 = *(v29 + 104);
        if (*(v107 + 4) != *(*(v29 + 48) + 208))
        {
          ERR_put_error(16, 0, 188, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 496);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        if (*(*(v107 + 200) + 36) != *(*(this + 196) + 36))
        {
          ERR_put_error(16, 0, 268, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 502);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        if (!bssl::ssl_session_is_context_valid(this, v107))
        {
          ERR_put_error(16, 0, 101, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 510);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        *(*(v29 + 48) + 222) |= 0x20u;
        *(this + 400) |= 0x1000000u;
        bssl::SSL_SESSION_dup(*(v29 + 104), 0, &v152);
        v108 = v152;
        *&v152 = 0;
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v131, v108);
        std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](&v152, 0);
        if (!*(this + 192))
        {
          goto LABEL_331;
        }

        bssl::ssl_set_session(v29, 0, v109);
        bssl::ssl_session_renew_timeout(v29, *v131, *(*(v29 + 128) + 308));
LABEL_266:
        *(*(this + 192) + 200) = *(this + 196);
        v111 = bssl::ssl_protocol_version(v29, v110);
        handshake_digest = bssl::ssl_get_handshake_digest(v111, *(this + 196), v112);
        EVP_MD_size(handshake_digest);
        if ((*(*(v29 + 48) + 222) & 0x20) != 0)
        {
          v114 = &(*v131)->key_arg[2];
          v124 = (*v131)->master_key[38];
        }

        else
        {
          v114 = &bssl::kZeroes;
        }

        if (!bssl::tls13_init_key_schedule(this, v114))
        {
          goto LABEL_332;
        }

        if ((BYTE3(v145) & 1) == 0)
        {
          if ((v137 & 0x1000000) == 0)
          {
            ERR_put_error(16, 0, 258, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 547);
            bssl::ssl_send_alert(v29, 2, 109);
            goto LABEL_332;
          }

          v152 = 0uLL;
          v140 = 50;
          v132[0] = 0;
          if (bssl::ssl_ext_pake_parse_serverhello(this, v132, &v152, &v140, &v138))
          {
            *(*(v29 + 48) + 220) = v132[0];
LABEL_310:
            if (bssl::tls13_advance_key_schedule(this) && bssl::ssl_hash_message(this, &v148) && bssl::tls13_derive_handshake_secrets(this, v125) && ((*(this + 1601) & 4) != 0 && !*(v29 + 168) || bssl::tls13_set_traffic_key(v29, 2, 1, *(this + 192), this + 130, *(this + 178))) && bssl::tls13_set_traffic_key(v29, 2, 0, *(this + 192), this + 179, *(this + 227)))
            {
              (*(*v29 + 32))(v29);
              *(this + 6) = 3;
              v5 = 1;
LABEL_323:
              bssl::Array<unsigned char>::~Array(&v152);
              goto LABEL_333;
            }

LABEL_322:
            v5 = 0;
            goto LABEL_323;
          }

LABEL_321:
          bssl::ssl_send_alert(v29, 2, v140);
          goto LABEL_322;
        }

        if (!BYTE3(v137))
        {
          v152 = 0uLL;
          v140 = 50;
          if (bssl::ssl_ext_key_share_parse_serverhello(this, &v152, &v140, &v145 + 8))
          {
            goto LABEL_310;
          }

          goto LABEL_321;
        }

        ERR_put_error(16, 0, 1122, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 553);
        bssl::ssl_send_alert(v29, 2, 40);
LABEL_332:
        v5 = 0;
LABEL_333:
        if (*(this + 6) != v4)
        {
          bssl::ssl_do_info_callback(*this, 0x1001);
        }

        if (v5 == 1)
        {
          continue;
        }

LABEL_339:
        v126 = *MEMORY[0x1E69E9840];
        return v5;
      case 3:
        v29 = *this;
        *&v142 = 0xAAAAAAAAAAAAAAAALL;
        *&v30 = 0xAAAAAAAAAAAAAAAALL;
        *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v141 = v30;
        *&v141[16] = v30;
        if (!(*(*v29 + 24))(v29, v141))
        {
          goto LABEL_138;
        }

        if (!bssl::ssl_check_message_type(v29, v141, 8))
        {
          goto LABEL_332;
        }

        v148 = *&v141[8];
        *&v152 = 0xAAAAAAAAAAAAAAAALL;
        *(&v152 + 1) = 0xAAAAAAAAAAAAAAAALL;
        if (!CBS_get_u16_length_prefixed(&v148, &v152) || *(&v148 + 1))
        {
          ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 618);
          bssl::ssl_send_alert(v29, 2, 50);
          goto LABEL_332;
        }

        if ((bssl::ssl_parse_serverhello_tlsext(this, &v152) & 1) == 0)
        {
          ERR_put_error(16, 0, 190, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 624);
          goto LABEL_332;
        }

        v31 = *(v29 + 48);
        v32 = *(v31 + 222);
        if ((v32 & 0x200) == 0)
        {
          goto LABEL_56;
        }

        if ((v32 & 0x20) == 0)
        {
          bssl::tls13_client_handshake();
        }

        if (*(v31 + 216) == 2)
        {
          bssl::tls13_client_handshake();
        }

        v86 = *(this + 193);
        v87 = *(this + 192);
        if (*(v86 + 200) != *(v87 + 200))
        {
          ERR_put_error(16, 0, 304, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 637);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        v89 = *(v86 + 400);
        if (v89 != *(v31 + 504) || memcmp(*(v86 + 392), *(v31 + 496), v89))
        {
          ERR_put_error(16, 0, 277, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 643);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        if ((*(this + 1603) & 2) != 0 || (*(v87 + 440) & 0x40) != 0)
        {
          ERR_put_error(16, 0, 279, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 651);
          bssl::ssl_send_alert(v29, 2, 47);
          goto LABEL_332;
        }

        *(v87 + 440) |= *(v86 + 440) & 0x40;
        v95 = *(this + 192);
        v96 = *(this + 193);
        v97 = *(v96 + 408);
        v98 = *(v96 + 416);
        if (!bssl::Array<unsigned char>::InitUninitialized(v95 + 408, v98))
        {
          goto LABEL_331;
        }

        if (v98)
        {
          v99 = *(v95 + 408);
          do
          {
            v100 = *v97++;
            *v99++ = v100;
            --v98;
          }

          while (v98);
        }

        v101 = *(this + 192);
        v102 = *(this + 193);
        v103 = *(v102 + 424);
        v104 = *(v102 + 432);
        if (!bssl::Array<unsigned char>::InitUninitialized(v101 + 424, v104))
        {
          goto LABEL_331;
        }

        if (v104)
        {
          v105 = *(v101 + 424);
          do
          {
            v106 = *v103++;
            *v105++ = v106;
            --v104;
          }

          while (v104);
        }

LABEL_56:
        v33 = *v131;
        v34 = *(v29 + 48);
        v35 = *(v34 + 496);
        v36 = *(v34 + 504);
        if (!bssl::Array<unsigned char>::InitUninitialized(&(*v131)[1].sid_ctx_length, v36))
        {
          goto LABEL_331;
        }

        if (v36)
        {
          v37 = *&v33[1].sid_ctx_length;
          do
          {
            v38 = *v35++;
            *v37++ = v38;
            --v36;
          }

          while (v36);
        }

        if (!bssl::ssl_hash_message(this, v141))
        {
          goto LABEL_332;
        }

        (*(*v29 + 32))(v29);
        *(this + 6) = 4;
        if ((*(this + 1601) & 4) == 0 || (*(*(v29 + 48) + 222) & 0x200) != 0)
        {
LABEL_44:
          v5 = 1;
        }

        else
        {
          v39 = bssl::close_early_data(this, 2);
LABEL_64:
          if (v39)
          {
            v5 = 13;
          }

          else
          {
            v5 = 0;
          }
        }

        goto LABEL_333;
      case 4:
        v29 = *this;
        if ((*(*(*this + 48) + 222) & 0x20) != 0)
        {
          if (*(*(*this + 48) + 222) & 0x200) == 0 && (*(*(v29 + 120) + 520))
          {
            v28 = 7;
            goto LABEL_180;
          }

LABEL_179:
          v28 = 8;
LABEL_180:
          *(this + 6) = v28;
          goto LABEL_333;
        }

        if (*(this + 210))
        {
          goto LABEL_179;
        }

        *&v142 = 0xAAAAAAAAAAAAAAAALL;
        *&v63 = 0xAAAAAAAAAAAAAAAALL;
        *(&v63 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v141 = v63;
        *&v141[16] = v63;
        if (!(*(*v29 + 24))(v29, v141))
        {
LABEL_138:
          v5 = 3;
          goto LABEL_333;
        }

        if (*(*(v29 + 48) + 220))
        {
          if (v141[1] == 20)
          {
            goto LABEL_179;
          }

          bssl::ssl_send_alert(v29, 2, 40);
        }

        else
        {
          if (v141[1] != 13)
          {
            goto LABEL_294;
          }

          v148 = 0xAAAAAAAA0001000DLL;
          *&v149 = 0;
          v152 = 0xAAAAAAAA0001002FLL;
          *&v153 = 0;
          v145 = *&v141[8];
          v137 = 0xAAAAAAAAAAAAAAAALL;
          v138 = 0xAAAAAAAAAAAAAAAALL;
          *&v135 = 0xAAAAAAAAAAAAAAAALL;
          *(&v135 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v132[1] = 0xAAAAAAAAAAAAAAAALL;
          v133 = 0xAAAAAAAAAAAAAAAALL;
          LOBYTE(v132[0]) = 50;
          if (!CBS_get_u8_length_prefixed(&v145, &v137) || v138 || !CBS_get_u16_length_prefixed(&v145, &v135) || *(&v145 + 1) || (v151[0] = &v148, v151[1] = &v152, !bssl::ssl_parse_extensions(&v135, v132, v151, 2, 1)) || BYTE3(v148) != 1 || !CBS_get_u16_length_prefixed(&v148 + 1, &v132[1]) || (bssl::tls1_parse_peer_sigalgs(this, &v132[1]) & 1) == 0)
          {
            bssl::ssl_send_alert(v29, 2, LOBYTE(v132[0]));
            ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 741);
            goto LABEL_332;
          }

          if (BYTE3(v152) == 1)
          {
            bssl::SSL_parse_CA_list(v29, v132, &v152 + 1, v151);
            v85 = v151[0];
            v151[0] = 0;
            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v129, v85);
            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v151, 0);
            if (!*v129)
            {
              bssl::ssl_send_alert(v29, 2, LOBYTE(v132[0]));
              goto LABEL_332;
            }
          }

          else
          {
            v123 = OPENSSL_sk_new_null();
            std::unique_ptr<stack_st_CRYPTO_BUFFER,bssl::internal::Deleter>::reset[abi:ne200100](v129, v123);
            if (!*v129)
            {
              goto LABEL_331;
            }
          }

          *(this + 400) |= 0x20u;
          (*(*(*(v29 + 120) + 16) + 80))(this);
          if (bssl::ssl_hash_message(this, v141))
          {
            (*(*v29 + 32))(v29);
LABEL_294:
            v28 = 5;
            goto LABEL_180;
          }
        }

        goto LABEL_332;
      case 5:
        v42 = *this;
        *&v142 = 0xAAAAAAAAAAAAAAAALL;
        *&v43 = 0xAAAAAAAAAAAAAAAALL;
        *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v141 = v43;
        *&v141[16] = v43;
        if (!(*(*v42 + 24))(v42, v141))
        {
          goto LABEL_138;
        }

        if (v141[1] != 25 && !bssl::ssl_check_message_type(v42, v141, 11) || !bssl::tls13_process_certificate(this, v141, 0) || !bssl::ssl_hash_message(this, v141))
        {
          goto LABEL_332;
        }

        (*(*v42 + 32))(v42);
        goto LABEL_90;
      case 6:
        v44 = *this;
        *&v142 = 0xAAAAAAAAAAAAAAAALL;
        *&v45 = 0xAAAAAAAAAAAAAAAALL;
        *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v141 = v45;
        *&v141[16] = v45;
        if (!(*(*v44 + 24))(v44, v141))
        {
          goto LABEL_138;
        }

        v46 = bssl::ssl_verify_peer_cert(this, a2);
        if (v46 == 1)
        {
          goto LABEL_332;
        }

        if (v46 == 2)
        {
          v5 = 16;
LABEL_90:
          v28 = 6;
          goto LABEL_180;
        }

        if (bssl::ssl_check_message_type(v44, v141, 15) && bssl::tls13_process_certificate_verify(this, v141) && bssl::ssl_hash_message(this, v141))
        {
          (*(*v44 + 32))(v44);
          goto LABEL_179;
        }

        goto LABEL_332;
      case 7:
        v41 = bssl::ssl_reverify_peer_cert(this, 1);
        if (v41 == 1)
        {
          goto LABEL_332;
        }

        if (v41 == 2)
        {
          v28 = 7;
        }

        else
        {
          v28 = 8;
        }

        if (v41 == 2)
        {
          v5 = 16;
        }

        else
        {
          v5 = 1;
        }

        goto LABEL_180;
      case 8:
        v61 = *this;
        *&v142 = 0xAAAAAAAAAAAAAAAALL;
        *&v62 = 0xAAAAAAAAAAAAAAAALL;
        *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v141 = v62;
        *&v141[16] = v62;
        if (!(*(*v61 + 24))(v61, v141))
        {
          goto LABEL_138;
        }

        if (!bssl::ssl_check_message_type(v61, v141, 20))
        {
          goto LABEL_332;
        }

        if (!bssl::tls13_process_finished(this, v141, 0))
        {
          goto LABEL_332;
        }

        if (!bssl::ssl_hash_message(this, v141))
        {
          goto LABEL_332;
        }

        bssl::SSLTranscript::DigestLen((this + 424));
        if (!bssl::tls13_advance_key_schedule(this) || !bssl::tls13_derive_application_secrets(this, a2))
        {
          goto LABEL_332;
        }

        if ((*(*v61 + 40))(v61))
        {
          bssl::ssl_send_alert(v61, 2, 10);
          ERR_put_error(16, 0, 255, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 853);
          goto LABEL_332;
        }

        (*(*v61 + 32))(v61);
        v28 = 9;
        goto LABEL_180;
      case 9:
        v27 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) == 0)
        {
          goto LABEL_49;
        }

        if (v27[21] || SSL_is_dtls(*this))
        {
          goto LABEL_48;
        }

        *&v83 = 0xAAAAAAAAAAAAAAAALL;
        *(&v83 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v141[16] = v83;
        v142 = v83;
        *v141 = v83;
        CBB_zero(v141);
        *&v84 = 0xAAAAAAAAAAAAAAAALL;
        *(&v84 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v149 = v84;
        v150 = v84;
        v148 = v84;
        if (!(*(*v27 + 88))(v27, v141, &v148, 5) || (bssl::ssl_add_message_cbb(v27, v141) & 1) == 0)
        {
          goto LABEL_188;
        }

        CBB_cleanup(v141);
LABEL_48:
        if (!bssl::close_early_data(this, 2))
        {
          goto LABEL_332;
        }

LABEL_49:
        v28 = 10;
        goto LABEL_180;
      case 10:
        if ((*(*(this + 192) + 440) & 0x40) == 0)
        {
          goto LABEL_43;
        }

        v23 = *this;
        if ((*(*(*this + 48) + 222) & 0x200) != 0)
        {
          goto LABEL_43;
        }

        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v141[16] = v24;
        v142 = v24;
        *v141 = v24;
        CBB_zero(v141);
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v149 = v25;
        v150 = v25;
        v153 = v25;
        v154 = v25;
        v152 = v25;
        v147 = v25;
        v148 = v25;
        v145 = v25;
        v146 = v25;
        if ((*(*(this + 1) + 309) & 0x2000) != 0)
        {
          v26 = 17613;
        }

        else
        {
          v26 = 17513;
        }

        if (!(*(*v23 + 88))(v23, v141, &v148, 8) || !CBB_add_u16_length_prefixed(&v148, &v152) || !CBB_add_u16(&v152, v26) || !CBB_add_u16_length_prefixed(&v152, &v145) || !CBB_add_bytes(&v145, *&(*v131)[1].sid_ctx[12], *&(*v131)[1].sid_ctx[20]) || (bssl::ssl_add_message_cbb(v23, v141) & 1) == 0)
        {
          goto LABEL_188;
        }

        CBB_cleanup(v141);
LABEL_43:
        *(this + 6) = 11;
        goto LABEL_44;
      case 11:
        if ((*(this + 1600) & 0x20) == 0)
        {
          goto LABEL_140;
        }

        v68 = *this;
        if (*(*(*this + 48) + 216) == 2)
        {
          SSL_certs_clear(*this);
LABEL_154:
          *v141 = 0;
          *&v141[8] = 0;
          if ((bssl::ssl_get_credential_list(this, v141) & 1) == 0)
          {
            goto LABEL_190;
          }

          if (!*&v141[8])
          {
            goto LABEL_169;
          }

          v76 = *v141;
          v77 = 8 * *&v141[8];
          while (2)
          {
            v78 = *v76;
            ERR_clear_error();
            LOWORD(v148) = -21846;
            v80 = *(v78 + 1);
            if (v80)
            {
              if (v80 == 2)
              {
                if ((*(this + 1602) & 0x40) != 0 && *(this + 747) == 2)
                {
                  goto LABEL_161;
                }

                v81 = 924;
                v82 = 253;
              }

              else
              {
                v81 = 930;
                v82 = 228;
              }

              ERR_put_error(16, 0, v82, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", v81);
            }

            else
            {
LABEL_161:
              if (bssl::tls1_choose_signature_algorithm(this, v78, &v148, v79) && bssl::ssl_credential_matches_requested_issuers(this, v78, v73))
              {
                SSL_CREDENTIAL_up_ref(v78);
                std::unique_ptr<ssl_credential_st,bssl::internal::Deleter>::reset[abi:ne200100](v3, v78);
                *(this + 805) = v148;
LABEL_168:
                if (*v3)
                {
LABEL_169:
                  if (bssl::tls13_add_certificate(this, v72, v73, v74, v75))
                  {
                    *(this + 6) = 12;
                    v5 = 1;
LABEL_191:
                    OPENSSL_free(*v141);
                    goto LABEL_333;
                  }
                }

                else
                {
                  bssl::ssl_send_alert(v68, 2, 40);
                }

LABEL_190:
                v5 = 0;
                goto LABEL_191;
              }
            }

            ++v76;
            v77 -= 8;
            if (!v77)
            {
              goto LABEL_168;
            }

            continue;
          }
        }

        v69 = *(*(this + 1) + 32);
        v70 = *(v69 + 64);
        if (!v70)
        {
          goto LABEL_154;
        }

        v71 = v70(*this, *(v69 + 72));
        if (!v71)
        {
          bssl::ssl_send_alert(v68, 2, 80);
          ERR_put_error(16, 0, 126, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 961);
          goto LABEL_332;
        }

        if ((v71 & 0x80000000) == 0)
        {
          goto LABEL_154;
        }

        *(this + 6) = 11;
        v5 = 8;
        goto LABEL_333;
      case 12:
        if (*v3 && (v60 = bssl::tls13_add_certificate_verify(this, a2)) != 0)
        {
          if (v60 == 2)
          {
            goto LABEL_332;
          }

          if (v60 != 1)
          {
            bssl::tls13_client_handshake();
          }

          v5 = 9;
          v28 = 12;
        }

        else
        {
LABEL_140:
          v28 = 13;
        }

        goto LABEL_180;
      case 13:
        v21 = *this;
        v22 = *(this + 400);
        *(this + 400) = v22 | 0x1000000;
        if ((v22 & 0x2000000) == 0)
        {
          goto LABEL_26;
        }

        *&v64 = 0xAAAAAAAAAAAAAAAALL;
        *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v141[16] = v64;
        v142 = v64;
        *v141 = v64;
        CBB_zero(v141);
        *&v65 = 0xAAAAAAAAAAAAAAAALL;
        *(&v65 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v149 = v65;
        v150 = v65;
        v148 = v65;
        if (!(*(*v21 + 88))(v21, v141, &v148, 203) || !bssl::tls1_write_channel_id(this, &v148, v66, v67) || (bssl::ssl_add_message_cbb(v21, v141) & 1) == 0)
        {
LABEL_188:
          CBB_cleanup(v141);
          goto LABEL_332;
        }

        CBB_cleanup(v141);
LABEL_26:
        if (!bssl::tls13_add_finished(this, a2) || !bssl::tls13_set_traffic_key(v21, 3, 1, *(this + 192), this + 228, *(this + 276)) || !bssl::tls13_set_traffic_key(v21, 3, 0, *(this + 192), this + 277, *(this + 325)) || !bssl::tls13_derive_resumption_secret(this, a2))
        {
          goto LABEL_332;
        }

        *(this + 6) = 14;
LABEL_72:
        v5 = 4;
        goto LABEL_333;
      case 14:
        goto LABEL_339;
      default:
        goto LABEL_332;
    }
  }
}

void nw_protocol_boringssl_output_available_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v1, v2, v3, v4, v5, 0x26u);
  }

  v0 = *MEMORY[0x1E69E9840];
}

void MLKEM768_public_key_free(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }
}

void bssl::anonymous namespace::X25519MLKEM768KeyShare::~X25519MLKEM768KeyShare(void **this)
{
  *this = &unk_1F1CB0458;
  MLKEM768_public_key_free(this + 5);
}

{

  JUMPOUT(0x1AC57E0F0);
}

uint64_t HKDF_extract(int a1, void *a2, EVP_MD *md)
{
  v5 = EVP_MD_type(md);
  boringssl_crypto_hash_nid_to_cc_digest(v5);
  if (cchkdf_extract())
  {
    return 0;
  }

  *a2 = EVP_MD_size(md);
  return 1;
}

uint64_t boringssl_crypto_hash_nid_to_cc_digest(int a1)
{
  if (a1 > 672)
  {
    switch(a1)
    {
      case 673:

        return MEMORY[0x1EEE6FB70]();
      case 674:

        return MEMORY[0x1EEE6FB80]();
      case 675:

        return MEMORY[0x1EEE6FB60]();
      default:
LABEL_20:
        if (g_boringssl_log && os_log_type_enabled(g_boringssl_log, OS_LOG_TYPE_ERROR))
        {
          boringssl_crypto_hash_nid_to_cc_digest_cold_1();
        }

        return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:

        return MEMORY[0x1EEE6F8D8]();
      case 64:

        return MEMORY[0x1EEE6FB58]();
      case 672:

        return MEMORY[0x1EEE6FB68]();
      default:
        goto LABEL_20;
    }
  }
}

int EVP_Digest(const void *data, size_t count, unsigned __int8 *md, unsigned int *size, const EVP_MD *type, ENGINE *impl)
{
  memset(&v12, 0, sizeof(v12));
  v10 = EVP_DigestInit_ex(&v12, type, md);
  if (v10)
  {
    (v12.digest->init)(&v12, data, count);
    EVP_DigestFinal_ex(&v12, md, size);
  }

  EVP_MD_CTX_cleanup(&v12);
  return v10;
}

BOOL CRYPTO_tls13_hkdf_expand_label(int a1, int a2, EVP_MD *a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7, const void *a8, size_t a9)
{
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = v15;
  v21[2] = v15;
  v20[2] = v15;
  v21[0] = v15;
  v20[0] = v15;
  v20[1] = v15;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0;
  CBB_zero(v21);
  if (CBB_init(v21, a7 + a9 + 10) && CBB_add_u16(v21, a2) && CBB_add_u8_length_prefixed(v21, v20) && CBB_add_bytes(v20, "tls13 ", 6uLL) && CBB_add_bytes(v20, a6, a7) && CBB_add_u8_length_prefixed(v21, v20) && CBB_add_bytes(v20, a8, a9) && CBB_finish(v21, &v19, &v18))
  {
    v16 = HKDF_expand(a1, a2, a3);
    OPENSSL_free(v19);
  }

  else
  {
    CBB_cleanup(v21);
    return 0;
  }

  return v16;
}

BOOL bssl::hkdf_expand_label(int a1, int a2, EVP_MD *a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7, uint64_t a8, const void *a9, size_t a10, char a11)
{
  if (a11)
  {
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[1] = v16;
    v23[2] = v16;
    v22[2] = v16;
    v23[0] = v16;
    v22[0] = v16;
    v22[1] = v16;
    v20 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 0;
    CBB_zero(v23);
    if (!CBB_init(v23, a7 + a10 + 10) || !CBB_add_u16(v23, a2) || !CBB_add_u8_length_prefixed(v23, v22) || !CBB_add_bytes(v22, "dtls13", 6uLL) || !CBB_add_bytes(v22, a6, a7) || !CBB_add_u8_length_prefixed(v23, v22) || !CBB_add_bytes(v22, a9, a10) || !CBB_finish(v23, &v21, &v20))
    {
      CBB_cleanup(v23);
      return 0;
    }

    v17 = HKDF_expand(a1, a2, a3);
    OPENSSL_free(v21);
    return v17;
  }

  else
  {
    return CRYPTO_tls13_hkdf_expand_label(a1, a2, a3, a4, a5, a6, a7, a9, a10);
  }
}

BOOL HKDF_expand(int a1, int a2, EVP_MD *md)
{
  v3 = EVP_MD_type(md);
  boringssl_crypto_hash_nid_to_cc_digest(v3);
  return cchkdf_expand() == 0;
}

uint64_t bssl::derive_secret_with_transcript(uint64_t a1, uint64_t a2, bssl::SSLTranscript *this, const void *a4, size_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23 = v10;
  v24 = v10;
  *v21 = v10;
  v22 = v10;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  result = bssl::SSLTranscript::GetHash(this, v21, &v20);
  if (result)
  {
    v12 = bssl::SSLTranscript::DigestLen(this);
    if (v12 >= 0x31)
    {
      abort();
    }

    v13 = v12;
    *(a2 + 48) = v12;
    v14 = bssl::SSLTranscript::Digest(this);
    v15 = *(a1 + 80);
    v16 = v20;
    v17 = SSL_is_dtls(*a1) != 0;
    result = bssl::hkdf_expand_label(a2, v13, v14, a1 + 32, v15, a4, a5, v18, v21, v16, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::tls13_derive_handshake_secrets(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v4 = this + 130;
  v3 = *this;
  if (!bssl::derive_secret_with_transcript(this, this + 130, (this + 424), "c hs traffic", 0xCuLL) || !bssl::ssl_log_secret(v3, "CLIENT_HANDSHAKE_TRAFFIC_SECRET", v4, *(this + 178)) || !bssl::derive_secret_with_transcript(this, this + 179, (this + 424), "s hs traffic", 0xCuLL))
  {
    return 0;
  }

  v5 = *(this + 227);

  return bssl::ssl_log_secret(v3, "SERVER_HANDSHAKE_TRAFFIC_SECRET", this + 179, v5);
}

uint64_t bssl::tls13_set_traffic_key(uint64_t a1, const ssl_session_st *a2, uint64_t a3, const ssl_cipher_st **this, char *a5, unint64_t a6)
{
  v58 = *MEMORY[0x1E69E9840];
  v12 = bssl::ssl_session_protocol_version(this, a2);
  digest = bssl::ssl_session_get_digest(this, v13);
  is_dtls = SSL_is_dtls(a1);
  v51 = 0;
  if (*(a1 + 168))
  {
    bssl::SSLAEADContext::CreatePlaceholderForQUIC(this[25], &v53);
    v16 = v53;
    *&v53 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v51, v16);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v53, 0);
    v17 = a6;
    v18 = a5;
  }

  else
  {
    v49 = 0xAAAAAAAAAAAAAAAALL;
    v50 = 0xAAAAAAAAAAAAAAAALL;
    if ((bssl::ssl_cipher_get_evp_aead(&v50, &v49, &v49, this[25], v12) & 1) == 0)
    {
      goto LABEL_31;
    }

    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v56 = v23;
    v57 = v23;
    v54 = v23;
    v55 = v23;
    v53 = v23;
    memset(v52, 170, sizeof(v52));
    v24 = EVP_AEAD_key_length(v50);
    if (v24 >= 0x51)
    {
      goto LABEL_33;
    }

    v26 = EVP_AEAD_nonce_length(v50);
    if (v26 >= 0x19)
    {
      goto LABEL_33;
    }

    if (!bssl::hkdf_expand_label(&v53, v24, digest, a5, a6, "key", 3uLL, v25, 0, 0, is_dtls != 0) || !bssl::hkdf_expand_label(v52, v26, digest, a5, a6, "iv", 2uLL, v27, 0, 0, is_dtls != 0))
    {
      goto LABEL_31;
    }

    bssl::SSLAEADContext::Create(a3, *(this + 2), this[25], &v53, v24, 0, 0, &v48, v52, v26);
    v28 = v48;
    v48 = 0;
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v51, v28);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v48, 0);
    v17 = 0;
    v18 = 0;
  }

  if (!v51)
  {
    goto LABEL_31;
  }

  if (!is_dtls)
  {
    goto LABEL_9;
  }

  v19 = *(v51 + 76);
  if (!v19)
  {
LABEL_31:
    v43 = 0;
    goto LABEL_32;
  }

  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v20;
  v54 = v20;
  v22 = (*(*v19 + 16))(v19);
  if (v22 >= 0x21)
  {
    goto LABEL_33;
  }

  if (!bssl::hkdf_expand_label(&v53, v22, digest, a5, a6, "sn", 2uLL, v21, 0, 0, 1) || ((*(*v19 + 24))(v19, &v53, v22) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_9:
  if (a6 >= 0x32)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_enc.cc", 242);
    goto LABEL_31;
  }

  v29 = *a1;
  v30 = v51;
  if (!a3)
  {
    v37 = *(v29 + 17);
    v51 = 0;
    v47 = v30;
    v38 = v37(a1, a2, &v47, v18, v17);
    std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v47, 0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (a6 != 49)
    {
      v39 = *(a1 + 48);
      *(v39 + 393) = 0;
      if (a6)
      {
        v40 = (v39 + 345);
        v41 = a6;
        do
        {
          v42 = *a5++;
          *v40++ = v42;
          --v41;
        }

        while (v41);
      }

      *(v39 + 393) = a6;
      goto LABEL_30;
    }

LABEL_33:
    abort();
  }

  v31 = *(v29 + 18);
  v51 = 0;
  v46 = v30;
  v32 = v31(a1, a2, &v46, v18, v17);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v46, 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (a6 == 49)
  {
    goto LABEL_33;
  }

  v33 = *(a1 + 48);
  *(v33 + 344) = 0;
  if (a6)
  {
    v34 = (v33 + 296);
    v35 = a6;
    do
    {
      v36 = *a5++;
      *v34++ = v36;
      --v35;
    }

    while (v35);
  }

  *(v33 + 344) = a6;
LABEL_30:
  v43 = 1;
LABEL_32:
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](&v51, 0);
  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

void sub_1A900BAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, bssl::SSLAEADContext *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  std::unique_ptr<bssl::SSLAEADContext,bssl::internal::Deleter>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

uint64_t bssl::ssl_get_new_session(bssl *this, bssl::SSL_HANDSHAKE *a2)
{
  v2 = *this;
  if ((*(*this + 149) & 2) != 0)
  {
    ERR_put_error(16, 0, 209, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 348);
    return 0;
  }

  v21[0] = *(*(v2 + 120) + 16);
  result = bssl::New<ssl_session_st,bssl::SSL_X509_METHOD const*&>(v21);
  v22 = result;
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 440) & 0xEF | (16 * (*(v2 + 180) & 1));
  *(result + 440) = v6;
  *(result + 4) = *(*(v2 + 48) + 208);
  *(result + 440) = v6 & 0xDF | (32 * (*(v2 + 168) != 0));
  v21[0] = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = 0xAAAAAAAAAAAAAAAALL;
  bssl::ssl_get_current_time(v2, v21);
  *(v5 + 192) = v21[0];
  v8 = bssl::ssl_protocol_version(v2, v7);
  v9 = *(v2 + 128);
  if (v8 < 0x304)
  {
    v10 = *(v9 + 304);
    v11 = v10;
  }

  else
  {
    v10 = *(v9 + 308);
    v11 = 604800;
  }

  *(v5 + 184) = v10;
  *(v5 + 188) = v11;
  v12 = *(*(this + 1) + 32);
  v13 = *(v12 + 120);
  if (v13 > 0x20)
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_session.cc", 380);
    v22 = 0;
    bssl::RefCounted<ssl_session_st>::DecRefInternal(v5);
    return 0;
  }

  *(v5 + 124) = 0;
  if (v13)
  {
    v14 = (v12 + 88);
    v15 = (v5 + 92);
    v16 = v13;
    do
    {
      v17 = *v14++;
      *v15++ = v17;
      --v16;
    }

    while (v16);
  }

  *(v5 + 124) = v13;
  v18 = *(v5 + 440);
  *(v5 + 176) = 65;
  *(v5 + 440) = v18 & 0x7B | 4;
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](this + 192, v5);
  v20 = *(v2 + 104);
  v19 = (v2 + 104);
  if (v20)
  {
    std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](v19, 0);
  }

  return 1;
}

void sub_1A900BCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::unique_ptr<ssl_session_st,bssl::internal::Deleter>::reset[abi:ne200100](SSL_SESSION **a1, SSL_SESSION *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    SSL_SESSION_free(v3);
  }
}

uint64_t bssl::tls13_init_key_schedule(uint64_t a1, const ssl_st *a2)
{
  v3 = bssl::ssl_protocol_version(*a1, a2);
  result = bssl::init_key_schedule(a1, (a1 + 424), v3, *(a1 + 1568), v4);
  if (result)
  {
    if ((*(a1 + 1602) & 4) == 0)
    {
      bssl::SSLTranscript::FreeBuffer((a1 + 424));
    }

    return bssl::hkdf_extract_to_secret(a1, (a1 + 424));
  }

  return result;
}

uint64_t bssl::ssl_ctx_get_current_time(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 792);
  if (v3)
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    result = v3(0, &v6);
    tv_sec = v6.tv_sec;
    if (v6.tv_sec < 0)
    {
      bssl::ssl_ctx_get_current_time();
    }
  }

  else
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    result = gettimeofday(&v6, 0);
    tv_sec = v6.tv_sec;
    if (v6.tv_sec < 0)
    {
      bssl::ssl_ctx_get_current_time();
    }
  }

  *a2 = tv_sec;
  *(a2 + 8) = v6.tv_usec;
  return result;
}

BOOL bssl::check_ech_confirmation(uint64_t a1, ssl_st *a2, char *a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a4 + 32) != 32)
  {
    goto LABEL_12;
  }

  v8 = *(a4 + 24);
  v9 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v11 = v8[3];
  v13 = v9 == 0x11619AE574AD21CFLL && v10 == 0x91B8651E028C1DBELL;
  v14 = v13 && v12 == 0x5E8CBB7A1611A2C2;
  if (v14 && v11 == 0x9C33A8C8E2099E07)
  {
    v25 = 0;
    v24 = 0xAAAAAAAA0001FE0DLL;
    v26 = 0;
    v23 = &v24;
    if (!bssl::ssl_parse_extensions((a4 + 64), a3, &v23, 1, 1))
    {
      v19 = 0;
      goto LABEL_24;
    }

    if ((v24 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != 8)
    {
      ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/tls13_client.cc", 160);
      v19 = 0;
      v20 = 50;
      goto LABEL_17;
    }

    v17 = v25 - *a4;
    v18 = 1;
  }

  else
  {
LABEL_12:
    v17 = bssl::ssl_ech_confirmation_signal_hello_offset(*a1, a2);
    v18 = 0;
  }

  if (!*(a1 + 1560))
  {
LABEL_22:
    LOBYTE(a2->version) = 0;
    v19 = 1;
    goto LABEL_24;
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  v19 = bssl::ssl_ech_accept_confirmation(a1, &v24, 8, a1 + 520, 32, (a1 + 472), v18, v16, *a4, *(a4 + 8), v17);
  if (!v19)
  {
    v20 = 80;
LABEL_17:
    *a3 = v20;
    goto LABEL_24;
  }

  LOBYTE(a2->version) = CRYPTO_memcmp((*a4 + v17), &v24, 8) == 0;
LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t bssl::init_key_schedule(bssl *this, bssl::SSL_HANDSHAKE *a2, bssl::SSLTranscript *a3, ssl_cipher_st *a4, const ssl_cipher_st *a5)
{
  inited = bssl::SSLTranscript::InitHash(a2, a3, a4);
  if (inited)
  {
    *(this + 80) = 0;
    v8 = bssl::SSLTranscript::DigestLen(a2);
    if (v8 > 0x30)
    {
      abort();
    }

    v9 = v8;
    v10 = *(this + 80);
    if (v8 > v10)
    {
      bzero(this + v10 + 32, v8 - v10);
    }

    *(this + 80) = v9;
  }

  return inited;
}

BOOL bssl::hkdf_extract_to_secret(uint64_t a1, bssl::SSLTranscript *this)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v3 = bssl::SSLTranscript::Digest(this);
  v4 = *(a1 + 80);
  v5 = HKDF_extract(a1 + 32, &v7, v3);
  if (v5 && v7 != *(a1 + 80))
  {
    bssl::hkdf_extract_to_secret();
  }

  return v5 != 0;
}

uint64_t bssl::ssl_ext_key_share_parse_serverhello(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!*(a1 + 392))
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2351);
LABEL_7:
    result = 0;
    v9 = 80;
    goto LABEL_8;
  }

  memset(v14, 170, sizeof(v14));
  if (CBS_get_u16(a4, v14) && CBS_get_u16_length_prefixed(a4, &v14[1]) && !*(a4 + 8))
  {
    v10 = *(a1 + 392);
    v11 = (*(*v10 + 16))(v10);
    if (v11 != v14[0])
    {
      v12 = *(a1 + 400);
      if (!v12 || (v13 = (*(*v12 + 16))(v12), v13 != v14[0]))
      {
        *a3 = 47;
        ERR_put_error(16, 0, 243, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2370);
        return 0;
      }

      v10 = *(a1 + 400);
    }

    if ((*(*v10 + 40))(v10, a2, a3, *&v14[1], *&v14[5]))
    {
      *(*(a1 + 1536) + 6) = v14[0];
      std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 392), 0);
      std::unique_ptr<bssl::SSLKeyShare,bssl::internal::Deleter>::reset[abi:ne200100]((a1 + 400), 0);
      return 1;
    }

    goto LABEL_7;
  }

  ERR_put_error(16, 0, 137, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/extensions.cc", 2361);
  result = 0;
  v9 = 50;
LABEL_8:
  *a3 = v9;
  return result;
}

uint64_t bssl::tls13_advance_key_schedule(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v2;
  v16 = v2;
  *md = v2;
  v14 = v2;
  size = -1431655766;
  v3 = bssl::SSLTranscript::Digest((a1 + 424));
  result = EVP_Digest(0, 0, md, &size, v3, 0);
  if (result)
  {
    v5 = *(a1 + 80);
    v6 = bssl::SSLTranscript::Digest((a1 + 424));
    v7 = *(a1 + 80);
    v8 = size;
    is_dtls = SSL_is_dtls(*a1);
    result = bssl::hkdf_expand_label(a1 + 32, v5, v6, a1 + 32, v7, "derived", 7uLL, v10, md, v8, is_dtls != 0);
    if (result)
    {
      result = bssl::hkdf_extract_to_secret(a1, (a1 + 424));
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

int SSL_state(const SSL *ssl)
{
  v1 = *(ssl->handshake_func + 35);
  if (!v1 || (*(v1 + 1600) & 8) != 0)
  {
    return 3;
  }

  else
  {
    return 12288;
  }
}

const char *bssl::ssl_client_handshake_state(uint64_t a1)
{
  v1 = *(a1 + 20);
  result = "TLS client start_connect";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "TLS client enter_early_data";
      break;
    case 2:
      result = "TLS client early_reverify_server_certificate";
      break;
    case 3:
      result = "TLS client read_server_hello";
      break;
    case 4:
      result = bssl::tls13_client_handshake_state(a1);
      break;
    case 5:
      result = "TLS client read_server_certificate";
      break;
    case 6:
      result = "TLS client read_certificate_status";
      break;
    case 7:
      result = "TLS client verify_server_certificate";
      break;
    case 8:
      result = "TLS client reverify_server_certificate";
      break;
    case 9:
      result = "TLS client read_server_key_exchange";
      break;
    case 10:
      result = "TLS client read_certificate_request";
      break;
    case 11:
      result = "TLS client read_server_hello_done";
      break;
    case 12:
      result = "TLS client send_client_certificate";
      break;
    case 13:
      result = "TLS client send_client_key_exchange";
      break;
    case 14:
      result = "TLS client send_client_certificate_verify";
      break;
    case 15:
      result = "TLS client send_client_finished";
      break;
    case 16:
      result = "TLS client finish_flight";
      break;
    case 17:
      result = "TLS client read_session_ticket";
      break;
    case 18:
      result = "TLS client process_change_cipher_spec";
      break;
    case 19:
      result = "TLS client read_server_finished";
      break;
    case 20:
      result = "TLS client finish_client_handshake";
      break;
    case 21:
      result = "TLS client done";
      break;
    default:
      result = "TLS client unknown";
      break;
  }

  return result;
}

const char *__cdecl SSL_state_string_long(const SSL *s)
{
  v3 = *(s->handshake_func + 35);
  if (!v3)
  {
    return "SSL negotiation finished successfully";
  }

  if (BYTE4(s->param))
  {
    return bssl::ssl_server_handshake_state(v3, v1);
  }

  return bssl::ssl_client_handshake_state(v3);
}

uint64_t bssl::ssl_version(bssl *this, const ssl_st *a2)
{
  if (SSL_in_early_data(this) && (*(this + 180) & 1) == 0)
  {
    return *(*(*(*(this + 6) + 280) + 1544) + 4);
  }

  else
  {
    v3 = *(*(this + 6) + 208);
    if (!v3)
    {
      if (SSL_is_dtls(this))
      {
        return -259;
      }

      else
      {
        return 771;
      }
    }
  }

  return v3;
}

uint64_t BUF_MEM_append(void *a1, const void *a2, size_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *a1 + a3;
  if (__CFADD__(*a1, a3))
  {
    ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/buf/buf.c", 127);
    return 0;
  }

  else
  {
    result = BUF_MEM_reserve(a1, *a1 + a3);
    if (result)
    {
      memcpy((a1[1] + *a1), a2, a3);
      *a1 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t bssl::SSLTranscript::AddToBufferOrHash(uint64_t a1, const void *a2, size_t a3)
{
  v6 = *a1;
  if (!v6 || (result = BUF_MEM_append(v6, a2, a3), result))
  {
    if (EVP_MD_CTX_md((a1 + 8)))
    {
      EVP_DigestUpdate((a1 + 8), a2, a3);
    }

    return 1;
  }

  return result;
}

uint64_t boringssl_session_handshake_incomplete(void *a1, int a2, char a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a1 != -1252936367 || (v4 = a1[1]) == 0)
  {
LABEL_27:
    result = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  error = SSL_get_error(*(v4 + 392), a2);
  v7 = error;
  if (error == 2)
  {
    v8 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_read_stalls;
  }

  else
  {
    if (error != 3)
    {
      goto LABEL_8;
    }

    v8 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_write_stalls;
  }

  ++*(v4 + *v8);
LABEL_8:
  ssl_error_code_description = boringssl_helper_get_ssl_error_code_description(error);
  if (boringssl_helper_error_is_fatal(v7))
  {
    WeakRetained = objc_loadWeakRetained((v4 + 16));
    if (!WeakRetained || (v11 = WeakRetained, v12 = objc_loadWeakRetained((v4 + 16)), v13 = v12[435], v12, v11, (v13 & 1) == 0))
    {
      v14 = objc_loadWeakRetained((v4 + 16));
      if (v14)
      {
        v15 = objc_loadWeakRetained((v4 + 16));
        v16 = (v15[435] & 1) == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        if (g_boringssl_log)
        {
          v23 = g_boringssl_log;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            boringssl_session_handshake_incomplete_cold_1();
          }
        }
      }
    }

    ERR_print_errors_cb(boringssl_session_handshake_error_print, a1);
    goto LABEL_27;
  }

  if (v7 == 15)
  {
    if (a3)
    {
LABEL_45:
      result = 0;
      goto LABEL_28;
    }

    SSL_reset_early_data_reject(*(v4 + 392));
  }

  v17 = objc_loadWeakRetained((v4 + 16));
  if (!v17 || (v18 = v17, v19 = objc_loadWeakRetained((v4 + 16)), v20 = v19[435], v19, v18, (v20 & 1) == 0))
  {
    v18 = objc_loadWeakRetained((v4 + 16));
    if (v18)
    {
      v21 = objc_loadWeakRetained((v4 + 16));
      v22 = (v21[435] & 1) == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (g_boringssl_log)
      {
        v18 = g_boringssl_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v26 = objc_loadWeakRetained((v4 + 16));
          if (v26)
          {
            v40 = objc_loadWeakRetained((v4 + 16));
            v27 = v40 + 351;
          }

          else
          {
            v27 = &unk_1A9098A9F;
          }

          v28 = objc_loadWeakRetained((v4 + 16));
          *buf = 136447490;
          v42 = "boringssl_session_handshake_incomplete";
          v43 = 1024;
          v44 = 257;
          v45 = 2082;
          v46 = v27;
          v47 = 2048;
          v48 = v28;
          v49 = 2082;
          v50 = ssl_error_code_description;
          v51 = 1024;
          v52 = v7;
          _os_log_impl(&dword_1A8FF5000, v18, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Handshake incomplete: %{public}s [%d]", buf, 0x36u);

          if (v26)
          {
          }
        }
      }
    }
  }

  boringssl_context_update_encryption_level(a1);
  if (v7 != 15)
  {
    goto LABEL_45;
  }

  v29 = objc_loadWeakRetained((v4 + 16));
  if (!v29 || (v30 = v29, v31 = objc_loadWeakRetained((v4 + 16)), v32 = v31[435], v31, v30, (v32 & 1) == 0))
  {
    v33 = objc_loadWeakRetained((v4 + 16));
    if (v33)
    {
      v34 = objc_loadWeakRetained((v4 + 16));
      v35 = (v34[435] & 1) == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      if (g_boringssl_log)
      {
        v36 = g_boringssl_log;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = objc_loadWeakRetained((v4 + 16));
          if (v37)
          {
            v18 = objc_loadWeakRetained((v4 + 16));
            v38 = &v18[43].isa + 7;
          }

          else
          {
            v38 = &unk_1A9098A9F;
          }

          v39 = objc_loadWeakRetained((v4 + 16));
          *buf = 136446978;
          v42 = "boringssl_session_handshake_incomplete";
          v43 = 1024;
          v44 = 261;
          v45 = 2082;
          v46 = v38;
          v47 = 2048;
          v48 = v39;
          _os_log_impl(&dword_1A8FF5000, v36, OS_LOG_TYPE_INFO, "%{public}s(%d) %{public}s[%p] Restarting handshake", buf, 0x26u);

          if (v37)
          {
          }
        }
      }
    }
  }

  result = boringssl_session_handshake_continue_inner(a1, 1);
LABEL_28:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BUF_MEM_reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) >= a2)
  {
    return 1;
  }

  if (a2 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = 85;
LABEL_9:
    ERR_put_error(7, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/buf/buf.c", v2);
    return 0;
  }

  if (a2 >= 0xBFFFFFFFFFFFFFFDLL)
  {
    v2 = 91;
    goto LABEL_9;
  }

  v5 = (2 * (((a2 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  result = OPENSSL_realloc(*(a1 + 8), v5);
  if (result)
  {
    *(a1 + 8) = result;
    *(a1 + 16) = v5;
    return 1;
  }

  return result;
}

uint64_t boringssl_session_update_flight_time(uint64_t result, int a2, uint64_t a3)
{
  if (result)
  {
    if (*result == -1252936367)
    {
      v3 = *(result + 8);
      if (v3)
      {
        if (*(v3 + 292) <= 1u)
        {
          result = boringssl_session_in_early_data(result);
          if ((result & 1) == 0)
          {
            if ((*(v3 + 548) & 1) != 0 && ((*(v3 + 550) >> 1) & 1) != a2)
            {
              if (*(v3 + 432))
              {
                result = boringssl_helper_get_current_time_ms();
                *(v3 + 440) += result - *(v3 + 432);
                *(v3 + 432) = 0;
                if (!*(v3 + 456))
                {
                  *(v3 + 456) = result;
                }
              }
            }

            else
            {
              result = boringssl_helper_get_current_time_ms();
              *(v3 + 432) = result;
              if (!*(v3 + 448))
              {
                *(v3 + 448) = *(v3 + 432);
              }

              *(v3 + 550) = *(v3 + 550) & 0xFD | (2 * (a2 & 1));
              *(v3 + 548) |= 1u;
            }

            v6 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_inbound_byte_count;
            if (a2 == 1)
            {
              v6 = &OBJC_IVAR___boringssl_concrete_boringssl_ctx_outbound_byte_count;
            }

            *(v3 + *v6) += a3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t bssl::ssl_supports_version(uint64_t a1, unsigned __int16 *a2)
{
  v3 = 6;
  if (***a1)
  {
    v3 = 4;
  }

  v4 = &bssl::kTLSVersions;
  if (***a1)
  {
    v4 = &bssl::kDTLSVersions;
  }

  do
  {
    v6 = *v4++;
    v5 = v6;
    v7 = v6 == a2 || v3 == 0;
    v3 -= 2;
  }

  while (!v7);
  if (v5 == a2)
  {
    v9 = -21846;
    result = bssl::ssl_protocol_version_from_wire(&v9, a2);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 28) <= v9)
    {
      return v9 <= *(a1 + 30);
    }
  }

  return 0;
}

uint64_t bssl::SSLTranscript::Update(uint64_t a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if ((*(a1 + 40) & 1) != 0 && *(a1 + 42) >= 0x304u)
  {
    v3 = a3 - 12;
    if (a3 < 0xC || !bssl::SSLTranscript::AddToBufferOrHash(a1, a2, 4uLL))
    {
      return 0;
    }

    v4 += 12;
  }

  return bssl::SSLTranscript::AddToBufferOrHash(a1, v4, v3);
}

const char *boringssl_helper_get_ssl_error_code_description(unsigned int a1)
{
  if (a1 > 0x12)
  {
    return "unknown error";
  }

  else
  {
    return off_1E785F8F0[a1];
  }
}

uint64_t boringssl_context_update_encryption_level(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != -1252936367)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v2[63];
  v7 = v2;
  v4 = v2;
  v5 = nw_protocol_options_access_handle();

  return v5;
}

uint64_t boringssl_session_in_false_start(uint64_t result)
{
  if (result)
  {
    if (*result == -1252936367 && (v1 = *(result + 8)) != 0)
    {
      result = *(v1 + 392);
      if (result)
      {
        return SSL_in_false_start(result) != 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SSL_in_false_start(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 280);
  if (v1)
  {
    return (*(v1 + 1600) >> 9) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL __boringssl_context_update_encryption_level_block_invoke(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 160) && *(a2 + 168))
  {
    v4 = MEMORY[0x1AC57F4F0]();
    level = SSL_quic_read_level(*(*(a1 + 32) + 392));
    v6 = *(a1 + 32);
    if (level != *(v6 + 540))
    {
      v7 = level;
      WeakRetained = objc_loadWeakRetained((v6 + 16));
      if (!WeakRetained || (v9 = WeakRetained, v10 = objc_loadWeakRetained((*(a1 + 32) + 16)), v11 = v10[435], v10, v9, (v11 & 1) == 0))
      {
        v12 = *(a1 + 32);
        if (v12)
        {
          v13 = objc_loadWeakRetained((v12 + 16));
          if (v13)
          {
            v14 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v15 = (v14[435] & 1) == 0;
          }

          else
          {
            v15 = 1;
          }
        }

        else
        {
          v15 = 1;
        }

        if (v15 && g_boringssl_log)
        {
          v16 = g_boringssl_log;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v33 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v34 = *(a1 + 32);
            v50 = v33;
            if (v33)
            {
              v39 = v34 != 0;
              if (v34)
              {
                v40 = objc_loadWeakRetained((v34 + 16));
                v34 = *(a1 + 32);
              }

              else
              {
                v40 = 0;
              }

              v48 = v39;
              v47 = v40;
              v35 = v40 + 351;
            }

            else
            {
              v48 = 0;
              v35 = &unk_1A9098A9F;
            }

            v43 = objc_loadWeakRetained((v34 + 16));
            v44 = *(*(a1 + 32) + 540);
            *buf = 136447490;
            v59 = "boringssl_context_update_encryption_level_block_invoke";
            v60 = 1024;
            v61 = 2617;
            v62 = 2082;
            v63 = v35;
            v64 = 2048;
            v65 = v43;
            v66 = 1024;
            v67 = v44;
            v68 = 1024;
            v69 = v7;
            _os_log_debug_impl(&dword_1A8FF5000, v16, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] encryption_read_level %u -> %u", buf, 0x32u);

            if (v48)
            {
            }
          }
        }
      }

      *(*(a1 + 32) + 540) = v7;
      v17 = *(a2 + 168);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __boringssl_context_update_encryption_level_block_invoke_217;
      block[3] = &unk_1E7869728;
      v57 = v4;
      v56 = *(a1 + 32);
      dispatch_async(v17, block);

      v6 = *(a1 + 32);
    }

    v18 = SSL_quic_write_level(*(v6 + 392));
    v19 = *(a1 + 32);
    if (v18 != *(v19 + 544))
    {
      v20 = v18;
      v21 = objc_loadWeakRetained((v19 + 16));
      if (!v21 || (v22 = v21, v23 = objc_loadWeakRetained((*(a1 + 32) + 16)), v24 = v23[435], v23, v22, (v24 & 1) == 0))
      {
        v25 = *(a1 + 32);
        if (v25)
        {
          v26 = objc_loadWeakRetained((v25 + 16));
          if (v26)
          {
            v27 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v28 = (v27[435] & 1) == 0;
          }

          else
          {
            v28 = 1;
          }
        }

        else
        {
          v28 = 1;
        }

        if (v28 && g_boringssl_log)
        {
          v29 = g_boringssl_log;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v36 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v37 = *(a1 + 32);
            v51 = v36;
            if (v36)
            {
              v41 = v37 != 0;
              if (v37)
              {
                v42 = objc_loadWeakRetained((v37 + 16));
                v37 = *(a1 + 32);
              }

              else
              {
                v42 = 0;
              }

              v49 = v41;
              v47 = v42;
              v38 = v42 + 351;
            }

            else
            {
              v49 = 0;
              v38 = &unk_1A9098A9F;
            }

            v45 = objc_loadWeakRetained((v37 + 16));
            v46 = *(*(a1 + 32) + 544);
            *buf = 136447490;
            v59 = "boringssl_context_update_encryption_level_block_invoke_2";
            v60 = 1024;
            v61 = 2626;
            v62 = 2082;
            v63 = v38;
            v64 = 2048;
            v65 = v45;
            v66 = 1024;
            v67 = v46;
            v68 = 1024;
            v69 = v20;
            _os_log_debug_impl(&dword_1A8FF5000, v29, OS_LOG_TYPE_DEBUG, "%{public}s(%d) %{public}s[%p] encryption_write_level %u -> %u", buf, 0x32u);

            if (v49)
            {
            }
          }
        }
      }

      *(*(a1 + 32) + 544) = v20;
      v30 = *(a2 + 168);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __boringssl_context_update_encryption_level_block_invoke_219;
      v52[3] = &unk_1E7869728;
      v54 = v4;
      v53 = *(a1 + 32);
      dispatch_async(v30, v52);
    }
  }

  result = a2 != 0;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_boringssl_handshake_negotiate_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_22(&datapath_logging_enabled);
  if (v0 && g_boringssl_log && OUTLINED_FUNCTION_18_0())
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_10_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0x26u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void *bssl::New<ssl_session_st,bssl::SSL_X509_METHOD const*&>(void **a1)
{
  result = OPENSSL_malloc(0x1D0uLL);
  if (result)
  {
    return ssl_session_st::ssl_session_st(result, *a1, v3);
  }

  return result;
}

void CBB_cleanup(uint64_t a1)
{
  if (*(a1 + 8))
  {
    CBB_cleanup_cold_1();
  }

  if (*(a1 + 40))
  {
    v2 = *(a1 + 16);

    OPENSSL_free(v2);
  }
}

uint64_t bssl::ssl_tls13_cipher_meets_policy(int a1, int a2)
{
  LOBYTE(v2) = 1;
  if (a2 <= 1)
  {
    if (!a2)
    {
      return v2 & 1;
    }

    if (a2 == 1)
    {
      if ((a1 - 4865) >= 3)
      {
        bssl::ssl_tls13_cipher_meets_policy();
      }

      v2 = 3u >> ((a1 - 1) & 7);
      return v2 & 1;
    }

LABEL_8:
    bssl::ssl_tls13_cipher_meets_policy();
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      return v2 & 1;
    }

    goto LABEL_8;
  }

  LOBYTE(v2) = a1 - 1;
  if ((a1 - 4865) >= 3)
  {
    bssl::ssl_tls13_cipher_meets_policy();
  }

  return v2 & 1;
}

uint64_t SSL_CIPHER_get_max_version(uint64_t a1)
{
  if (*(a1 + 20) == 16)
  {
    return 772;
  }

  else if (*(a1 + 24) == 16)
  {
    return 772;
  }

  else
  {
    return 771;
  }
}

uint64_t SSL_CIPHER_get_protocol_id(uint64_t a1)
{
  if (HIBYTE(*(a1 + 16)) != 3)
  {
    SSL_CIPHER_get_protocol_id_cold_1();
  }

  return *(a1 + 16);
}

uint64_t SSL_CIPHER_get_min_version(_DWORD *a1)
{
  if (a1[5] == 16 || a1[6] == 16)
  {
    return 772;
  }

  if (a1[9] == 1)
  {
    return 768;
  }

  return 771;
}

uint64_t cbb_add_u(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = CBB_add_space(a1, &v9, a3);
  if (result)
  {
    if (a3)
    {
      v7 = a3 - 1;
      do
      {
        *(v9 + v7) = a2;
        a2 >>= 8;
        --v7;
      }

      while (v7 < a3);
    }

    if (a2)
    {
      v8 = a1 + 16;
      if (*(a1 + 8))
      {
        v8 = *v8;
      }

      result = 0;
      *(v8 + 24) |= 2u;
      *a1 = 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t *fe_loose_invert(uint64_t *a1, unint64_t *a2)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[0] = v4;
  v20[1] = v4;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v4;
  v18[1] = v4;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v16[0] = v4;
  v16[1] = v4;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v4;
  v14[1] = v4;
  fe_sq_tl(v20, a2);
  fe_sq_tt(v18, v20);
  fe_sq_tt(v18, v18);
  fe_mul_impl(v18, a2, v18);
  fe_mul_impl(v20, v20, v18);
  fe_sq_tt(v16, v20);
  fe_mul_impl(v18, v18, v16);
  fe_sq_tt(v16, v18);
  v5 = 4;
  do
  {
    fe_sq_tt(v16, v16);
    --v5;
  }

  while (v5);
  fe_mul_impl(v18, v16, v18);
  fe_sq_tt(v16, v18);
  v6 = 9;
  do
  {
    fe_sq_tt(v16, v16);
    --v6;
  }

  while (v6);
  fe_mul_impl(v16, v16, v18);
  fe_sq_tt(v14, v16);
  v7 = 19;
  do
  {
    fe_sq_tt(v14, v14);
    --v7;
  }

  while (v7);
  fe_mul_impl(v16, v14, v16);
  fe_sq_tt(v16, v16);
  v8 = 9;
  do
  {
    fe_sq_tt(v16, v16);
    --v8;
  }

  while (v8);
  fe_mul_impl(v18, v16, v18);
  fe_sq_tt(v16, v18);
  v9 = 49;
  do
  {
    fe_sq_tt(v16, v16);
    --v9;
  }

  while (v9);
  fe_mul_impl(v16, v16, v18);
  fe_sq_tt(v14, v16);
  v10 = 99;
  do
  {
    fe_sq_tt(v14, v14);
    --v10;
  }

  while (v10);
  fe_mul_impl(v16, v14, v16);
  fe_sq_tt(v16, v16);
  v11 = 49;
  do
  {
    fe_sq_tt(v16, v16);
    --v11;
  }

  while (v11);
  fe_mul_impl(v18, v16, v18);
  fe_sq_tt(v18, v18);
  v12 = 4;
  do
  {
    fe_sq_tt(v18, v18);
    --v12;
  }

  while (v12);
  return fe_mul_impl(a1, v18, v20);
}

uint64_t cbb_add_length_prefixed(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  result = CBB_flush(a1);
  if (result)
  {

    return cbb_add_child(a1, a2, a3, 0);
  }

  return result;
}

uint64_t CBB_flush(uint64_t *a1)
{
  v2 = (a1 + 2);
  v3 = (a1 + 2);
  if (*(a1 + 8))
  {
    v3 = *v2;
    if (!*v2)
    {
      return 0;
    }
  }

  if ((*(v3 + 24) & 2) != 0)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (!*(v4 + 8))
  {
    CBB_flush_cold_3();
  }

  if (*(v4 + 16) != v3)
  {
    CBB_flush_cold_1();
  }

  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (!CBB_flush(*a1))
  {
    goto LABEL_33;
  }

  v7 = v5 + v6;
  v8 = *(v4 + 24);
  if (v5 + v6 < v8)
  {
    goto LABEL_33;
  }

  v9 = *(v3 + 8);
  v10 = v9 - v7;
  if (v9 < v7)
  {
    goto LABEL_33;
  }

  LODWORD(v11) = *(v4 + 32);
  if (*(v4 + 33))
  {
    if (v11 != 1)
    {
      CBB_flush_cold_2();
    }

    if (v10 > 0xFFFFFFFE)
    {
      v12 = 221;
LABEL_32:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bytestring/cbb.c", v12);
      goto LABEL_33;
    }

    if (v10 >> 24)
    {
      v14 = -124;
      v15 = 4;
    }

    else if (v10 >> 16)
    {
      v14 = -125;
      v15 = 3;
    }

    else if (v10 <= 0xFF)
    {
      if (v10 <= 0x7F)
      {
        LODWORD(v11) = 0;
        v14 = v9 - v7;
        v10 = 0;
LABEL_26:
        v17 = *v3;
        *(v4 + 24) = v8 + 1;
        *(v17 + v8) = v14;
        *(v4 + 32) = v11;
        goto LABEL_27;
      }

      v14 = -127;
      v15 = 1;
    }

    else
    {
      v14 = -126;
      v15 = 2;
    }

    v11 = v15;
    if (!cbb_buffer_reserve(v3, 0, v15))
    {
LABEL_33:
      if (*(a1 + 8))
      {
        v2 = *v2;
      }

      result = 0;
      *(v2 + 24) |= 2u;
      goto LABEL_36;
    }

    v16 = *v3;
    *(v3 + 8) += v11;
    memmove((v16 + v7 + v11), (v16 + v7), v10);
    v8 = *(v4 + 24);
    goto LABEL_26;
  }

LABEL_27:
  if (v11)
  {
    v18 = v11 - 1;
    do
    {
      *(*v3 + *(v4 + 24) + v18) = v10;
      v10 >>= 8;
      --v18;
    }

    while (v18 < *(v4 + 32));
  }

  if (v10)
  {
    v12 = 260;
    goto LABEL_32;
  }

  *(v4 + 16) = 0;
  result = 1;
LABEL_36:
  *a1 = 0;
  return result;
}

uint64_t cbb_buffer_reserve(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = __CFADD__(v4, a3);
    v6 = v4 + a3;
    if (v5)
    {
      v7 = 81;
LABEL_5:
      ERR_put_error(14, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bytestring/cbb.c", v7);
LABEL_6:
      result = 0;
      *(v3 + 24) |= 2u;
      return result;
    }

    v9 = *(result + 16);
    if (v6 > v9)
    {
      if ((*(result + 24) & 1) == 0)
      {
        v7 = 87;
        goto LABEL_5;
      }

      v10 = 2 * v9;
      if (2 * v9 <= v6)
      {
        v10 = v6;
      }

      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }

      v12 = OPENSSL_realloc(*result, v11);
      if (!v12)
      {
        goto LABEL_6;
      }

      *v3 = v12;
      *(v3 + 16) = v11;
    }

    if (a2)
    {
      *a2 = *v3 + *(v3 + 8);
    }

    return 1;
  }

  return result;
}

unint64_t *fe_frombytes_strict(unint64_t *result, unsigned int *a2)
{
  v2 = *(a2 + 31);
  if (v2 >> 7 == 1)
  {
    fe_frombytes_strict_cold_2();
  }

  v3 = 0;
  v4 = *(a2 + 30);
  v5 = *(a2 + 6);
  v6 = (*(a2 + 5) << 40) & 0xFFF8FFFFFFFFFFFFLL | ((v5 & 7) << 48) | *a2 | (*(a2 + 4) << 32);
  v7 = *(a2 + 12);
  v8 = *(a2 + 29);
  v9 = *(a2 + 28);
  v10 = *(a2 + 27);
  v11 = *(a2 + 26);
  v12 = *(a2 + 22);
  v13 = ((v7 & 0x3F) << 45) | (*(a2 + 11) << 37) | (*(a2 + 10) << 29) | (*(a2 + 9) << 21) | (*(a2 + 8) << 13) | (32 * *(a2 + 7)) | (v5 >> 3);
  v14 = a2[4];
  v15 = ((v14 & 0x1FFFFFF) << 26) | (*(a2 + 15) << 18) | (*(a2 + 14) << 10) | (4 * *(a2 + 13)) | (v7 >> 6);
  v16 = ((v12 & 0xFFFFFFF) << 23) | (*(a2 + 21) << 15) | (*(a2 + 20) << 7) | (v14 >> 25);
  *result = v6;
  result[1] = v13;
  result[2] = v15;
  result[3] = v16;
  result[4] = (v2 << 44) | (v4 << 36) | (v8 << 28) | (v9 << 20) | (v10 << 12) | (16 * v11) | (v12 >> 28);
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_frombytes_strict_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

int64x2_t *fe_sub(int64x2_t *result, int64x2_t *a2, int64x2_t *a3)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2->i64[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_sub_cold_3();
    }
  }

  for (j = 0; j != 5; ++j)
  {
    if (a3->i64[j] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_sub_cold_2();
    }
  }

  v5 = 0;
  v6 = a2[2].i64[0] - a3[2].i64[0] + 0xFFFFFFFFFFFFELL;
  v7 = vaddq_s64(vsubq_s64(a2[1], a3[1]), vdupq_n_s64(0xFFFFFFFFFFFFEuLL));
  *result = vaddq_s64(vsubq_s64(*a2, *a3), xmmword_1A90B20A0);
  result[1] = v7;
  result[2].i64[0] = v6;
  do
  {
    if (result->i64[v5] >= 0x1A666666666665uLL)
    {
      fe_sub_cold_1();
    }

    ++v5;
  }

  while (v5 != 5);
  return result;
}

int64x2_t *fe_add(int64x2_t *result, int64x2_t *a2, int64x2_t *a3)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2->i64[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_add_cold_3();
    }
  }

  for (j = 0; j != 5; ++j)
  {
    if (a3->i64[j] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_add_cold_2();
    }
  }

  v5 = 0;
  v6 = a3[2].i64[0] + a2[2].i64[0];
  v7 = vaddq_s64(a3[1], a2[1]);
  *result = vaddq_s64(*a3, *a2);
  result[1] = v7;
  result[2].i64[0] = v6;
  do
  {
    if (result->i64[v5] >= 0x1A666666666665uLL)
    {
      fe_add_cold_1();
    }

    ++v5;
  }

  while (v5 != 5);
  return result;
}

uint64_t *fe_mul_impl(uint64_t *result, unint64_t *a2, unint64_t *a3)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665)
    {
      fe_mul_impl_cold_3();
    }
  }

  for (j = 0; j != 5; ++j)
  {
    if (a3[j] >= 0x1A666666666665)
    {
      fe_mul_impl_cold_2();
    }
  }

  v5 = 0;
  v6 = a2[4];
  v8 = a3[3];
  v7 = a3[4];
  v9 = 19 * v7;
  v11 = a3[1];
  v10 = a3[2];
  v12 = *a3;
  v13 = 19 * v11 * v6;
  v14 = a2[2];
  v15 = a2[3];
  v16 = v15 * 19 * v10;
  v17 = __CFADD__(v16, v13);
  v18 = v16 + v13;
  v19 = *a2;
  v20 = a2[1];
  v22 = __PAIR128__(((19 * v11 * v6) >> 64) + v17 + ((v15 * (19 * v10)) >> 64), v18) + v14 * (19 * v8) + v20 * (19 * v7) + v19 * v12;
  v23 = v15 * (19 * v7) + 19 * v8 * v6;
  v25 = (v15 * (19 * v8) + 19 * v10 * v6 + v14 * (19 * v7) + v12 * v20 + v19 * v11) >> 64;
  v24 = v15 * 19 * v8 + 19 * v10 * v6 + v14 * 19 * v7 + v12 * v20 + v19 * v11;
  v26 = v22 >> 51;
  v17 = __CFADD__(v24, v26);
  v27 = v24 + v26;
  if (v17)
  {
    ++v25;
  }

  v29 = (v23 + v20 * v11 + v12 * v14 + v19 * v10) >> 64;
  v28 = v23 + v20 * v11 + v12 * v14 + v19 * v10;
  v30 = (v9 * v6) >> 64;
  v31 = v9 * v6;
  *(&v33 + 1) = v25;
  *&v33 = v27;
  v32 = v33 >> 51;
  v17 = __CFADD__(v28, v32);
  v34 = v28 + v32;
  if (v17)
  {
    ++v29;
  }

  *(&v36 + 1) = v29;
  *&v36 = v34;
  v35 = v36 >> 51;
  v38 = (v14 * v11 + __PAIR128__(v30, v31) + v20 * v10 + v12 * v15 + v19 * v8) >> 64;
  v37 = v14 * v11 + v31 + v20 * v10 + v12 * v15 + v19 * v8;
  v17 = __CFADD__(v37, v35);
  v39 = v37 + v35;
  if (v17)
  {
    ++v38;
  }

  v41 = v14 * v10 + v15 * v11 + v20 * v8 + v12 * v6 + v19 * v7;
  v40 = *(&v41 + 1);
  *(&v43 + 1) = v38;
  *&v43 = v39;
  v42 = v43 >> 51;
  v17 = __CFADD__(v41, v42);
  v44 = v41 + v42;
  if (v17)
  {
    v40 = *(&v41 + 1) + 1;
  }

  *(&v45 + 1) = v40;
  *&v45 = v44;
  v46 = (v22 & 0x7FFFFFFFFFFFFLL) + 19 * (v45 >> 51);
  v47 = (v27 & 0x7FFFFFFFFFFFFLL) + (v46 >> 51);
  *result = v46 & 0x7FFFFFFFFFFFFLL;
  result[1] = v47 & 0x7FFFFFFFFFFFFLL;
  result[2] = (v34 & 0x7FFFFFFFFFFFFLL) + (v47 >> 51);
  result[3] = v39 & 0x7FFFFFFFFFFFFLL;
  result[4] = v44 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v5] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_mul_impl_cold_1();
    }

    ++v5;
  }

  while (v5 != 5);
  return result;
}

uint64_t *fe_sq_tl(uint64_t *result, unint64_t *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665)
    {
      fe_sq_tl_cold_2();
    }
  }

  v3 = 0;
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = 2 * v6;
  v8 = *a2;
  v9 = a2[1];
  v11 = (v6 * (38 * v4)) >> 64;
  v12 = v6 * 38 * v4;
  v13 = v9 * (38 * v4) + v6 * (38 * v5) + v8 * v8;
  v14 = (v9 * (2 * v5) + v6 * v6) >> 64;
  v15 = v9 * 2 * v5 + v6 * v6;
  v16 = (v8 * (2 * v5)) >> 64;
  v17 = v8 * 2 * v5;
  v18 = __PAIR128__(v14, v15) + v8 * (2 * v4);
  v19 = (v8 * v7) >> 64;
  v20 = (v8 * (2 * v9)) >> 64;
  v21 = v8 * 2 * v9;
  v22 = v8 * v7;
  v24 = v9 * v7 + 19 * v4 * v4 + __PAIR128__(v16, v17);
  v23 = *(&v24 + 1);
  v26 = v9 * v9 + v5 * 38 * v4 + v22;
  v25 = (v9 * v9 + v5 * (38 * v4) + __PAIR128__(v19, v22)) >> 64;
  v28 = __PAIR128__(v11, v12) + 19 * v5 * v5 + __PAIR128__(v20, v21);
  v27 = *(&v28 + 1);
  v29 = v13 >> 51;
  if (__CFADD__(v28, v29))
  {
    v27 = *(&v28 + 1) + 1;
  }

  *(&v31 + 1) = v27;
  *&v31 = v28 + v29;
  v30 = v31 >> 51;
  if (__CFADD__(v26, v30))
  {
    ++v25;
  }

  *(&v33 + 1) = v25;
  *&v33 = v26 + v30;
  v32 = v33 >> 51;
  v34 = __CFADD__(v24, v32);
  v35 = v24 + v32;
  if (v34)
  {
    v23 = *(&v24 + 1) + 1;
  }

  *(&v37 + 1) = v23;
  *&v37 = v35;
  v36 = v37 >> 51;
  v34 = __CFADD__(v18, v36);
  v38 = v18 + v36;
  if (v34)
  {
    v39 = *(&v18 + 1) + 1;
  }

  else
  {
    v39 = *(&v18 + 1);
  }

  *(&v40 + 1) = v39;
  *&v40 = v38;
  v41 = (v13 & 0x7FFFFFFFFFFFFLL) + 19 * (v40 >> 51);
  v42 = ((v28 + v29) & 0x7FFFFFFFFFFFFLL) + (v41 >> 51);
  *result = v41 & 0x7FFFFFFFFFFFFLL;
  result[1] = v42 & 0x7FFFFFFFFFFFFLL;
  result[2] = ((v26 + v30) & 0x7FFFFFFFFFFFFLL) + (v42 >> 51);
  result[3] = v35 & 0x7FFFFFFFFFFFFLL;
  result[4] = v38 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_sq_tl_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

uint64_t *fe_sq_tt(uint64_t *result, unint64_t *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665)
    {
      fe_sq_tt_cold_2();
    }
  }

  v3 = 0;
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = 2 * v6;
  v8 = *a2;
  v9 = a2[1];
  v11 = (v6 * (38 * v4)) >> 64;
  v12 = v6 * 38 * v4;
  v13 = v9 * (38 * v4) + v6 * (38 * v5) + v8 * v8;
  v14 = (v9 * (2 * v5) + v6 * v6) >> 64;
  v15 = v9 * 2 * v5 + v6 * v6;
  v16 = (v8 * (2 * v5)) >> 64;
  v17 = v8 * 2 * v5;
  v18 = __PAIR128__(v14, v15) + v8 * (2 * v4);
  v19 = (v8 * v7) >> 64;
  v20 = (v8 * (2 * v9)) >> 64;
  v21 = v8 * 2 * v9;
  v22 = v8 * v7;
  v24 = v9 * v7 + 19 * v4 * v4 + __PAIR128__(v16, v17);
  v23 = *(&v24 + 1);
  v26 = v9 * v9 + v5 * 38 * v4 + v22;
  v25 = (v9 * v9 + v5 * (38 * v4) + __PAIR128__(v19, v22)) >> 64;
  v28 = __PAIR128__(v11, v12) + 19 * v5 * v5 + __PAIR128__(v20, v21);
  v27 = *(&v28 + 1);
  v29 = v13 >> 51;
  if (__CFADD__(v28, v29))
  {
    v27 = *(&v28 + 1) + 1;
  }

  *(&v31 + 1) = v27;
  *&v31 = v28 + v29;
  v30 = v31 >> 51;
  if (__CFADD__(v26, v30))
  {
    ++v25;
  }

  *(&v33 + 1) = v25;
  *&v33 = v26 + v30;
  v32 = v33 >> 51;
  v34 = __CFADD__(v24, v32);
  v35 = v24 + v32;
  if (v34)
  {
    v23 = *(&v24 + 1) + 1;
  }

  *(&v37 + 1) = v23;
  *&v37 = v35;
  v36 = v37 >> 51;
  v34 = __CFADD__(v18, v36);
  v38 = v18 + v36;
  if (v34)
  {
    v39 = *(&v18 + 1) + 1;
  }

  else
  {
    v39 = *(&v18 + 1);
  }

  *(&v40 + 1) = v39;
  *&v40 = v38;
  v41 = (v13 & 0x7FFFFFFFFFFFFLL) + 19 * (v40 >> 51);
  v42 = ((v28 + v29) & 0x7FFFFFFFFFFFFLL) + (v41 >> 51);
  *result = v41 & 0x7FFFFFFFFFFFFLL;
  result[1] = v42 & 0x7FFFFFFFFFFFFLL;
  result[2] = ((v26 + v30) & 0x7FFFFFFFFFFFFLL) + (v42 >> 51);
  result[3] = v35 & 0x7FFFFFFFFFFFFLL;
  result[4] = v38 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_sq_tt_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

_BYTE *fe_tobytes(_BYTE *result, void *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_tobytes_cold_1();
    }
  }

  v3 = *a2 - 0x7FFFFFFFFFFEDLL;
  v4 = a2[1] - -(v3 >> 51) - 0x7FFFFFFFFFFFFLL;
  v5 = a2[2] - -(v4 >> 51) - 0x7FFFFFFFFFFFFLL;
  v6 = a2[3] - -(v5 >> 51) - 0x7FFFFFFFFFFFFLL;
  v7 = v3 & 0x7FFFFFFFFFFFFLL;
  v8 = v4 & 0x7FFFFFFFFFFFFLL;
  v9 = v5 & 0x7FFFFFFFFFFFFLL;
  v10 = v6 & 0x7FFFFFFFFFFFFLL;
  v11 = a2[4] - -(v6 >> 51) - 0x7FFFFFFFFFFFFLL;
  if ((v11 & 0x7F8000000000000) != 0)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = (v12 & 0x7FFFFFFFFFFEDLL) + v7;
  result[1] = BYTE1(v13);
  result[2] = BYTE2(v13);
  result[3] = ((v12 & 0xFFFFFFED) + v7) >> 24;
  result[4] = BYTE4(v13);
  result[5] = BYTE5(v13);
  v14 = (v12 & 0x7FFFFFFFFFFFFLL) + v8 + (v13 >> 51);
  *result = v13;
  result[6] = BYTE6(v13) & 7 | (8 * (v12 + v8 + (v13 >> 51)));
  result[7] = v14 >> 5;
  result[8] = v14 >> 13;
  result[9] = v14 >> 21;
  result[10] = v14 >> 29;
  result[11] = v14 >> 37;
  v15 = v9 + (v12 & 0x7FFFFFFFFFFFFLL) + (v14 >> 51);
  result[12] = (v14 >> 45) & 0x3F | ((v9 + v12 + (v14 >> 51)) << 6);
  result[13] = v15 >> 2;
  result[14] = v15 >> 10;
  result[15] = v15 >> 18;
  result[16] = v15 >> 26;
  result[17] = v15 >> 34;
  result[18] = v15 >> 42;
  v16 = v10 + (v12 & 0x7FFFFFFFFFFFFLL) + (v15 >> 51);
  result[19] = ((v15 & 0x4000000000000) != 0) | (2 * (v10 + v12 + (v15 >> 51)));
  result[20] = v16 >> 7;
  result[21] = v16 >> 15;
  result[22] = v16 >> 23;
  result[23] = v16 >> 31;
  result[24] = v16 >> 39;
  v17 = v11 + v12 + (v16 >> 51);
  result[25] = (v16 >> 47) & 0xF | (16 * v17);
  result[26] = v17 >> 4;
  result[27] = v17 >> 12;
  result[28] = v17 >> 20;
  result[29] = v17 >> 28;
  result[30] = v17 >> 36;
  result[31] = (v17 >> 44) & 0x7F;
  return result;
}

uint64_t cbb_add_child(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (*a1)
  {
    cbb_add_child_cold_1();
  }

  v4 = a4;
  if (a3 != 1 && a4)
  {
    cbb_add_child_cold_2();
  }

  v8 = (a1 + 16);
  if (*(a1 + 8))
  {
    v8 = *v8;
  }

  v9 = v8[1];
  v11 = 0xAAAAAAAAAAAAAAAALL;
  result = cbb_buffer_reserve(v8, &v11, a3);
  if (result)
  {
    v8[1] += a3;
    if (a3)
    {
      bzero(v11, a3);
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    result = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = a3;
    *(a2 + 33) = *(a2 + 33) & 0xFE | v4 & 1;
    *a1 = a2;
  }

  return result;
}

uint64_t CBB_add_space(uint64_t a1, void *a2, uint64_t a3)
{
  result = CBB_flush(a1);
  if (result)
  {
    v7 = *(a1 + 8);
    v8 = (a1 + 16);
    if (v7)
    {
      v8 = *v8;
    }

    result = cbb_buffer_reserve(v8, a2, a3);
    if (result)
    {
      v8[1] += a3;
      return 1;
    }
  }

  return result;
}

int64x2_t *ge_p2_dbl(uint64_t a1, uint64_t a2)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v4;
  v13[1] = v4;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v4;
  v11[1] = v4;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = v4;
  v9[1] = v4;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v4;
  v7[1] = v4;
  fe_sq_tt(v13[0].i64, a2);
  fe_sq_tt(v11[0].i64, (a2 + 40));
  fe_sq_tt(v9[0].i64, (a2 + 80));
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v5;
  v15[1] = v5;
  fe_add(v15, v9, v9);
  fe_carry(v9, v15);
  fe_add((a1 + 40), a2, (a2 + 40));
  fe_sq_tl(v7[0].i64, (a1 + 40));
  fe_add((a1 + 40), v11, v13);
  fe_sub((a1 + 80), v11, v13);
  fe_carry(v11, (a1 + 40));
  fe_sub(a1, v7, v11);
  fe_carry(v11, (a1 + 80));
  return fe_sub((a1 + 120), v9, v11);
}

uint64_t *x25519_ge_p1p1_to_p2(uint64_t *a1, unint64_t *a2)
{
  fe_mul_impl(a1, a2, a2 + 15);
  fe_mul_impl(a1 + 5, a2 + 5, a2 + 10);

  return fe_mul_impl(a1 + 10, a2 + 10, a2 + 15);
}

unint64_t *fe_carry(unint64_t *result, void *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2[i] >= 0x1A666666666665uLL)
    {
      fe_carry_cold_2();
    }
  }

  v3 = 0;
  v4 = a2[1] + (*a2 >> 51);
  v5 = a2[2] + (v4 >> 51);
  v6 = a2[3] + (v5 >> 51);
  v7 = a2[4] + (v6 >> 51);
  v8 = (*a2 & 0x7FFFFFFFFFFFFLL) + 19 * (v7 >> 51);
  v9 = (v4 & 0x7FFFFFFFFFFFFLL) + (v8 >> 51);
  *result = v8 & 0x7FFFFFFFFFFFFLL;
  result[1] = v9 & 0x7FFFFFFFFFFFFLL;
  result[2] = (v5 & 0x7FFFFFFFFFFFFLL) + (v9 >> 51);
  result[3] = v6 & 0x7FFFFFFFFFFFFLL;
  result[4] = v7 & 0x7FFFFFFFFFFFFLL;
  do
  {
    if (result[v3] >= 0x8CCCCCCCCCCCDLL)
    {
      fe_carry_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

uint64_t cmov(uint64_t result, uint64_t a2, unsigned int a3)
{
  for (i = 0; i != 40; i += 8)
  {
    *(result + i) = *(a2 + i) & -a3 | *(result + i) & (a3 - 1);
  }

  for (j = 0; j != 40; j += 8)
  {
    *(result + 40 + j) = *(a2 + 40 + j) & -a3 | *(result + 40 + j) & (a3 - 1);
  }

  for (k = 0; k != 40; k += 8)
  {
    *(result + 80 + k) = *(a2 + 80 + k) & -a3 | *(result + 80 + k) & (a3 - 1);
  }

  return result;
}

int64x2_t *fe_neg(int64x2_t *result, int64x2_t *a2)
{
  for (i = 0; i != 5; ++i)
  {
    if (a2->i64[i] >= 0x8CCCCCCCCCCCDuLL)
    {
      fe_neg_cold_2();
    }
  }

  v3 = 0;
  v4 = 0xFFFFFFFFFFFFELL - a2[2].i64[0];
  v5 = vsubq_s64(vdupq_n_s64(0xFFFFFFFFFFFFEuLL), a2[1]);
  *result = vsubq_s64(xmmword_1A90B20A0, *a2);
  result[1] = v5;
  result[2].i64[0] = v4;
  do
  {
    if (result->i64[v3] >= 0x1A666666666665uLL)
    {
      fe_neg_cold_1();
    }

    ++v3;
  }

  while (v3 != 5);
  return result;
}

BOOL bssl::anonymous namespace::X25519KeyShare::Generate(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[0] = v3;
  v6[1] = v3;
  X25519_keypair(v6, (a1 + 8));
  result = CBB_add_bytes(a2, v6, 0x20uLL) != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bssl::tls_init_message(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (CBB_init(a2, 0x40uLL) && CBB_add_u8(a2, a4) && CBB_add_u24_length_prefixed(a2, a3))
  {
    return 1;
  }

  ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 176);
  CBB_cleanup(a2);
  return 0;
}

_BYTE *X25519_public_from_private(_BYTE *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  v17 = *a2;
  v18 = v3;
  v17.i8[0] &= 0xF8u;
  HIBYTE(v18) = HIBYTE(v3) & 0x3F | 0x40;
  v4.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v4.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v16[3] = v4;
  v16[4] = v4;
  v16[1] = v4;
  v16[2] = v4;
  v15[2] = v4;
  v16[0] = v4;
  v15[0] = v4;
  v15[1] = v4;
  v14[0] = v4;
  v14[1] = v4;
  x25519_ge_scalarmult_base(v14, &v17);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v5.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v5;
  v12[1] = v5;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v5;
  v10[1] = v5;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v5;
  v8[1] = v5;
  fe_add(v12, v16, (v15 + 8));
  fe_sub(v10, v16, (v15 + 8));
  fe_loose_invert(v8, v10);
  fe_mul_impl(v8, v12, v8);
  result = fe_tobytes(a1, v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *x25519_ge_p1p1_to_p3(uint64_t *a1, unint64_t *a2)
{
  fe_mul_impl(a1, a2, a2 + 15);
  fe_mul_impl(a1 + 5, a2 + 5, a2 + 10);
  fe_mul_impl(a1 + 10, a2 + 10, a2 + 15);

  return fe_mul_impl(a1 + 15, a2, a2 + 5);
}

uint64_t *x25519_ge_scalarmult_base(uint64_t a1, int8x16_t *a2)
{
  v3 = 0;
  v41 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[2] = v4;
  v40 = v4;
  v39[0] = v4;
  v39[1] = v4;
  v5.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v5.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v6 = *a2++;
    v42.val[0] = vandq_s8(v6, v5);
    v42.val[1] = vshrq_n_u8(v6, 4uLL);
    v7 = &v39[v3];
    vst2q_s8(v7, v42);
    v3 += 2;
  }

  while (v3 != 4);
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v39 + v8) + v9;
    v9 = (v10 + 8) << 24 >> 28;
    *(v39 + v8++) = v10 - ((v10 + 8) & 0xF0);
  }

  while (v8 != 63);
  v11 = 0;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[8] = v12;
  v30[9] = v12;
  v30[6] = v12;
  v30[7] = v12;
  v30[4] = v12;
  v30[5] = v12;
  v30[2] = v12;
  v30[3] = v12;
  v30[0] = v12;
  v30[1] = v12;
  v26[0] = v12;
  v26[1] = v12;
  v26[2] = v12;
  v26[3] = v12;
  v26[4] = v12;
  v26[5] = v12;
  v26[6] = v12;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v40) += v9;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v13 = 1;
  *(a1 + 40) = 1;
  *(a1 + 80) = 0u;
  v14 = (a1 + 80);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  do
  {
    table_select(v26, v11, *(v39 + v13));
    ge_madd(v30, a1, v26);
    x25519_ge_p1p1_to_p3(a1, v30);
    ++v11;
    v15 = v13 >= 0x3E;
    v13 += 2;
  }

  while (!v15);
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[5] = v16;
  v28[6] = v16;
  v28[3] = v16;
  v28[4] = v16;
  v28[1] = v16;
  v28[2] = v16;
  v28[0] = v16;
  v17 = *(a1 + 16);
  v31[0] = *a1;
  v31[1] = v17;
  v18 = *(a1 + 32);
  v19 = *(a1 + 56);
  v33 = *(a1 + 40);
  v34 = v19;
  v20 = *(a1 + 72);
  v32 = v18;
  v35 = v20;
  v21 = *(a1 + 96);
  v36 = *v14;
  v37 = v21;
  v38 = *(a1 + 112);
  ge_p2_dbl(v30, v31);
  x25519_ge_p1p1_to_p2(v28, v30);
  ge_p2_dbl(v30, v28);
  x25519_ge_p1p1_to_p2(v28, v30);
  ge_p2_dbl(v30, v28);
  x25519_ge_p1p1_to_p2(v28, v30);
  ge_p2_dbl(v30, v28);
  x25519_ge_p1p1_to_p3(a1, v30);
  v22 = 0;
  v23 = 0;
  do
  {
    table_select(v26, v22, *(v39 + v23));
    ge_madd(v30, a1, v26);
    result = x25519_ge_p1p1_to_p3(a1, v30);
    ++v22;
    v15 = v23 >= 0x3E;
    v23 += 2;
  }

  while (!v15);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

int64x2_t *ge_madd(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v6.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v12[0] = v6;
  v12[1] = v6;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v6;
  v10[1] = v6;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v6;
  v8[1] = v6;
  fe_add(a1, (a2 + 40), a2);
  fe_sub((a1 + 40), (a2 + 40), a2);
  fe_mul_impl(v10[0].i64, a1, a3);
  fe_mul_impl(v12[0].i64, (a1 + 40), a3 + 5);
  fe_mul_impl(v8[0].i64, a3 + 10, (a2 + 120));
  fe_add((a1 + 120), (a2 + 80), (a2 + 80));
  fe_sub(a1, v10, v12);
  fe_add((a1 + 40), v10, v12);
  fe_carry(v10, (a1 + 120));
  fe_add((a1 + 80), v10, v8);
  return fe_sub((a1 + 120), v10, v8);
}

uint64_t table_select(uint64_t a1, int a2, int a3)
{
  v4 = 0;
  v42 = *MEMORY[0x1E69E9840];
  memset(v41, 0, sizeof(v41));
  v40 = 0u;
  v39 = ((a3 - 1) & ~a3) < 0;
  v41[15] = v39;
  v6 = &k25519Precomp + 768 * a2;
  do
  {
    v7 = &k25519Precomp + 768 * a2 + 96 * v4;
    if (&v42 > v7 && v7 + 96 > &v39)
    {
      table_select_cold_1();
    }

    v9 = 0;
    v10 = vdupq_n_s8(((++v4 ^ (a3 - 2 * ((a3 >> 31) & a3))) - 1) >> 63);
    do
    {
      *(&v39 + v9) = veorq_s8(vandq_s8(*&v6[v9], v10), *(&v39 + v9));
      v9 += 16;
    }

    while (v9 != 96);
    v6 += 96;
  }

  while (v4 != 8);
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v11.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v11.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v36 = v11;
  v37 = v11;
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v33 = v11;
  v34 = v11;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v30 = v11;
  v31 = v11;
  fe_frombytes_strict(&v36, &v39);
  fe_frombytes_strict(&v33, &v41[15]);
  fe_frombytes_strict(&v30, &v41[47]);
  v12 = v37;
  v13 = v36;
  v14 = v37;
  *a1 = v36;
  *(a1 + 16) = v12;
  v15 = v34;
  *(a1 + 40) = v33;
  v16 = v33;
  v17 = v34;
  *(a1 + 56) = v15;
  v18 = v31;
  *(a1 + 80) = v30;
  *(a1 + 96) = v18;
  v23[0] = v16;
  v23[1] = v17;
  v15.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v15.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v28[0] = v15;
  v28[1] = v15;
  v19 = v38;
  *(a1 + 32) = v38;
  v20 = v35;
  *(a1 + 72) = v35;
  *(a1 + 112) = v32;
  v24 = v20;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v25 = v13;
  v26 = v14;
  v27 = v19;
  fe_neg(v28, &v30);
  result = cmov(a1, v23, (a3 >> 7) & 1);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *X25519_keypair(_BYTE *a1, unsigned __int8 *buf)
{
  RAND_bytes(buf, 32);
  *buf |= 7u;
  buf[31] = buf[31] & 0x3F | 0x80;

  return X25519_public_from_private(a1, buf);
}

uint64_t bssl::tls_add_message(bssl *this, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*(this + 21) || **(*(this + 6) + 272))
  {
    while (1)
    {
      if (!v5)
      {
        goto LABEL_30;
      }

      v6 = *(this + 6);
      v9 = *(v6 + 232);
      v8 = (v6 + 232);
      result = v9;
      v10 = *(this + 8);
      if (!v9)
      {
        break;
      }

      if (*result < v10)
      {
        goto LABEL_8;
      }

      result = bssl::tls_flush_pending_hs_data(this, a2);
      if (!result)
      {
        return result;
      }

      v11 = *(this + 6);
      v12 = *(v11 + 232);
      v8 = (v11 + 232);
      result = v12;
      if (v12)
      {
LABEL_8:
        v13 = 0;
        v14 = *result;
      }

      else
      {
        v14 = 0;
        v13 = 1;
      }

      v15 = *(this + 8) - v14;
      if (!v15)
      {
LABEL_35:
        bssl::tls_add_message();
      }

      if (v5 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v5;
      }

      v17 = (v4 + v16);
      v5 -= v16;
      if (v13)
      {
        goto LABEL_21;
      }

      if (!result)
      {
        return result;
      }

LABEL_22:
      result = BUF_MEM_append(result, v4, v16);
      v4 = v17;
      if (!result)
      {
        return result;
      }
    }

    if (!*(this + 8))
    {
      goto LABEL_35;
    }

    if (v5 >= v10)
    {
      v16 = *(this + 8);
    }

    else
    {
      v16 = v5;
    }

    v17 = (v4 + v16);
    v5 -= v16;
LABEL_21:
    v18 = BUF_MEM_new();
    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v8, v18);
    result = *(*(this + 6) + 232);
    if (!result)
    {
      return result;
    }

    goto LABEL_22;
  }

  while (v5)
  {
    if (v5 >= *(this + 8))
    {
      v19 = *(this + 8);
    }

    else
    {
      v19 = v5;
    }

    v20 = (v4 + v19);
    v5 -= v19;
    v21 = bssl::add_record_to_flight(this, 0x16, v4, v19);
    v4 = v20;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_30:
  bssl::ssl_do_msg_callback(this, 1, 22, *a2, a2[1]);
  v22 = *(*(this + 6) + 280);
  if (!v22)
  {
    return 1;
  }

  result = bssl::SSLTranscript::Update(v22 + 424, *a2, a2[1]);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t CBB_add_bytes(uint64_t a1, const void *a2, size_t a3)
{
  __dst = 0xAAAAAAAAAAAAAAAALL;
  result = CBB_add_space(a1, &__dst, a3);
  if (result)
  {
    if (a3)
    {
      memcpy(__dst, a2, a3);
    }

    return 1;
  }

  return result;
}

BOOL bssl::CBBFinishArray(uint64_t a1, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v3 = CBB_finish(a1, &v8, &v7);
  if (v3)
  {
    v5 = v7;
    v4 = v8;
    OPENSSL_free(*a2);
    *a2 = v4;
    *(a2 + 8) = v5;
  }

  else
  {
    ERR_put_error(16, 0, 68, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/ssl_lib.cc", 204);
  }

  return v3 != 0;
}

uint64_t bssl::tls_flush_flight(BIO **this, ssl_st *a2)
{
  if (!bssl::tls_flush_pending_hs_data(this, a2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = this[21];
  if (v4)
  {
    if (LODWORD(this[6][1].prev_bio))
    {
      v5 = 194;
      v6 = 291;
LABEL_12:
      ERR_put_error(16, 0, v5, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v6);
      return 0xFFFFFFFFLL;
    }

    if (!(*&v4->init)(this))
    {
      v5 = 298;
      v6 = 296;
      goto LABEL_12;
    }
  }

  v7 = this[6];
  cb_arg = v7[2].cb_arg;
  if (!cb_arg)
  {
    return 1;
  }

  if (LODWORD(v7[1].prev_bio))
  {
    v5 = 194;
    v6 = 306;
    goto LABEL_12;
  }

  if (*cb_arg >> 31)
  {
    v5 = 68;
    v6 = 312;
    goto LABEL_12;
  }

  if (WORD2(v7[1].method))
  {
    result = bssl::ssl_write_buffer_flush(this, v3);
    if (result <= 0)
    {
      HIDWORD(this[6][1].num_read) = 3;
      return result;
    }
  }

  v10 = this[4];
  if (!v10)
  {
    v5 = 119;
    v6 = 327;
    goto LABEL_12;
  }

  v11 = this[6];
  init = v11[2].init;
  v13 = v11[2].cb_arg;
  v14 = *v13;
  if (*v13 <= init)
  {
LABEL_21:
    v16 = BIO_flush(v10);
    v17 = this[6];
    if (v16 <= 0)
    {
      HIDWORD(v17[1].num_read) = 3;
      return 0xFFFFFFFFLL;
    }

    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](&v17[2].cb_arg, 0);
    this[6][2].init = 0;
    return 1;
  }

  while (1)
  {
    result = BIO_write(this[4], (*(v13 + 1) + init), v14 - init);
    v15 = this[6];
    if (result <= 0)
    {
      break;
    }

    init = (v15[2].init + result);
    v15[2].init = init;
    v13 = v15[2].cb_arg;
    v14 = *v13;
    if (*v13 <= init)
    {
      v10 = this[4];
      goto LABEL_21;
    }
  }

  HIDWORD(v15[1].num_read) = 3;
  return result;
}

uint64_t CBB_finish(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8))
  {
    ERR_put_error(14, 0, 66, "/Library/Caches/com.apple.xbs/Sources/boringssl/crypto/bytestring/cbb.c", 127);
    return 0;
  }

  result = CBB_flush(a1);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = 0;
      if (!a2 || !a3)
      {
        return result;
      }
    }

    else if (!a2)
    {
      goto LABEL_10;
    }

    *a2 = *(a1 + 16);
LABEL_10:
    if (a3)
    {
      *a3 = *(a1 + 24);
    }

    *(a1 + 16) = 0;
    CBB_cleanup(a1);
    return 1;
  }

  return result;
}

void nw_protocol_boringssl_write_bytes_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_16_0(&dword_1A8FF5000, v1, v2, "%{public}s(%d) %{public}s[%p] no output handler available", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_39();
  v0 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::add_record_to_flight(bssl *a1, ssl_st *a2, unint64_t a3, const unsigned __int8 *a4)
{
  v4 = *(a1 + 6);
  if (*(v4 + 232))
  {
    bssl::add_record_to_flight();
  }

  if (*(v4 + 248))
  {
    bssl::add_record_to_flight();
  }

  v10 = *(v4 + 240);
  v9 = (v4 + 240);
  if (!v10)
  {
    v11 = BUF_MEM_new();
    std::unique_ptr<buf_mem_st,bssl::internal::Deleter>::reset[abi:ne200100](v9, v11);
    if (!*(*(a1 + 6) + 240))
    {
      return 0;
    }
  }

  v12 = SSL_max_seal_overhead(a1);
  v13 = &a4[v12];
  v14 = __CFADD__(v12, a4);
  v15 = *(*(a1 + 6) + 240);
  v16 = &v13[*v15];
  v17 = __CFADD__(*v15, v13);
  if (v14 || v17)
  {
    ERR_put_error(16, 0, 69, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", 154);
    return 0;
  }

  *v19 = 0xAAAAAAAAAAAAAAAALL;
  result = BUF_MEM_reserve(v15, v16);
  if (result)
  {
    result = bssl::tls_seal_record(a1, (*(*(*(a1 + 6) + 240) + 8) + **(*(a1 + 6) + 240)), v19, v13, a2, a3, a4);
    if (result)
    {
      **(*(a1 + 6) + 240) += *v19;
      return 1;
    }
  }

  return result;
}

void nw_protocol_boringssl_read_bytes_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  if (g_boringssl_log)
  {
    v0 = OUTLINED_FUNCTION_20();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_13_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_10_0();
      _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Cu);
    }
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t bssl::ssl_open_handshake(void *a1, void *a2, _BYTE *a3)
{
  *a2 = 0;
  v4 = a1[6];
  if (*(v4 + 172) == 2)
  {
    ERR_restore_state(*(v4 + 184));
    *a3 = 0;
  }

  else
  {
    result = (*(*a1 + 48))(a1);
    if (result != 4)
    {
      return result;
    }

    v7 = a1[6];
    *(v7 + 172) = 2;
    v8 = ERR_save_state();
    std::unique_ptr<err_save_state_st,bssl::internal::Deleter>::reset[abi:ne200100]((v7 + 184), v8);
  }

  return 4;
}

id OUTLINED_FUNCTION_16()
{
  v3 = (v0 + *v1);

  return objc_loadWeakRetained(v3);
}

void OUTLINED_FUNCTION_16_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

uint64_t bssl::tls_open_handshake(uint64_t a1, unsigned __int8 **a2, ssl_st *a3, char *__s2, unint64_t a5)
{
  *a2 = 0;
  if ((*(a1 + 180) & 1) == 0 || (v10 = *(a1 + 48), v11 = *(v10 + 222), (v11 & 2) != 0))
  {
LABEL_19:
    v20 = -86;
    v18 = 0;
    v19 = 0;
    result = bssl::tls_open_record(a1, &v20, &v18, a2, a3, __s2, a5);
    if (result)
    {
      return result;
    }

    if ((*(a1 + 180) & 1) != 0 || v20 != 23)
    {
      if (v20 == 22)
      {
        if (bssl::tls_append_handshake_data(a1, v18, v19))
        {
          return 0;
        }

        v17 = 80;
        goto LABEL_29;
      }
    }

    else if (!**(*(a1 + 48) + 264))
    {
      v15 = 281;
      v16 = 619;
LABEL_28:
      ERR_put_error(16, 0, v15, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v16);
      v17 = 10;
LABEL_29:
      LOBYTE(a3->version) = v17;
      return 4;
    }

    v15 = 225;
    v16 = 625;
    goto LABEL_28;
  }

  if (a5 <= 4)
  {
    *a2 = 5;
    return 2;
  }

  if (!strncmp("GET ", __s2, 4uLL) || !strncmp("POST ", __s2, 5uLL) || !strncmp("HEAD ", __s2, 5uLL) || !strncmp("PUT ", __s2, 4uLL))
  {
    v13 = 156;
    v14 = 581;
LABEL_17:
    ERR_put_error(16, 0, v13, "/Library/Caches/com.apple.xbs/Sources/boringssl/ssl/s3_both.cc", v14);
    LOBYTE(a3->version) = 0;
    return 4;
  }

  if (!strncmp("CONNE", __s2, 5uLL))
  {
    v13 = 155;
    v14 = 586;
    goto LABEL_17;
  }

  if ((*__s2 & 0x80000000) == 0 || __s2[2] != 1 || __s2[3] != 3)
  {
    *(v10 + 222) = v11 | 2;
    goto LABEL_19;
  }

  result = bssl::read_v2_client_hello(a1, a2, __s2, a5);
  if (result)
  {
    if (result == 4)
    {
      LOBYTE(a3->version) = 0;
    }
  }

  else
  {
    *(*(a1 + 48) + 222) |= 2u;
  }

  return result;
}