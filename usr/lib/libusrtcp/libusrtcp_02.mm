uint64_t tcp_usr_send(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (!*a1 || *(v4 + 232) == 3)
  {
    if (a3)
    {
      v5 = *(a3 + 80);
      if (v5)
      {
        v6 = *(a3 + 88);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        v5(a3, 1, v6);
      }

      else
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v27 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v30 = __nwlog_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            _os_log_impl(&dword_1889BA000, v30, OS_LOG_TYPE_ERROR, "%{public}s called with null frame->finalizer, backtrace limit exceeded", buf, 0xCu);
          }
        }

        if (v27)
        {
          free(v27);
        }
      }
    }

    if (v4)
    {
      result = 41;
    }

    else
    {
      result = 54;
    }

    goto LABEL_9;
  }

  if (a4)
  {
    v12 = a4;
    v13 = *(a4 + 1) == 30;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(v4 + 240);
  v15 = nw_tcp_access_globals(a1);
  *buf = 0;
  *&buf[8] = 0;
  microuptime(buf);
  v16 = *&buf[8] / 1000 + 1000 * *buf;
  if (*(v15 + 308) < v16)
  {
    *v15 = *buf;
    *(v15 + 308) = v16;
  }

  v17 = a3;
  if ((*(a1 + 367) & 1) == 0 || (*(a1 + 417) & 0x10) != 0)
  {
    if (a2)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v28 = __nwlog_obj();
  os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "tcp_usr_send";
  v29 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v29);
    v17 = a3;
    if (a2)
    {
LABEL_18:
      if ((*(a1 + 368) & 0x20) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_19:
    *(v17 + 32) = 0;
    *(v17 + 40) = buf;
    *buf = v17;
    *&buf[8] = v17 + 32;
    v18 = *(v17 + 52);
    if (v18)
    {
      v19 = v18 - (*(v17 + 56) + *(v17 + 60));
    }

    else
    {
      v19 = 0;
    }

    sbappendstream((a1 + 384), buf, v19);
    if (v12 && v14[3] <= 1)
    {
      if (v13)
      {
        result = tcp6_connect(v14, v12);
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = tcp_connect(v14, v12);
        if (result)
        {
          goto LABEL_9;
        }
      }

      v14[36] = 4096;
      v14[65] = 4096;
      tcp_mss(v14, 0xFFFFFFFF, 0);
    }

    if ((a2 & 2) != 0)
    {
      *(a1 + 376) |= 0x10u;
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = *(v20 + 16);
        if (v21)
        {
          v21(a1);
        }
      }

      v14 = tcp_usrclosed(v14);
    }

    if (v14)
    {
      if ((a2 & 4) != 0)
      {
        v14[22] |= 0x10000u;
        result = tcp_output(v14);
        v14[22] &= ~0x10000u;
        v22 = *(a1 + 376);
        if ((v22 & 4) != 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        result = tcp_output(v14);
        v22 = *(a1 + 376);
        if ((v22 & 4) != 0)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_9;
    }

LABEL_38:
    result = 0;
    v22 = *(a1 + 376);
    if ((v22 & 4) != 0)
    {
LABEL_41:
      if ((v22 & 0x100) != 0)
      {
        result = 35;
      }

      else
      {
        v23 = result;
        if ((*(a1 + 776) & 2) == 0)
        {
          __nwlog_tcp_log();
          v24 = a1 + 556;
          *buf = 136446466;
          *&buf[4] = "tcp_usr_send";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 556;
          v25 = _os_log_send_and_compose_impl();
          if (__nwlog_fault())
          {
            v26 = __nwlog_tcp_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "tcp_usr_send";
              *&buf[12] = 2082;
              *&buf[14] = v24;
              _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_ERROR, "%{public}s %{public}s NBIO not set, backtrace limit exceeded", buf, 0x16u);
            }
          }

          if (v25)
          {
            free(v25);
          }
        }

        result = v23;
      }
    }

LABEL_9:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t __nw_protocol_tcp_finalize_output_frames_block_invoke(void *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v32 = "__nw_frame_unclaimed_length";
    v17 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v18 = __nwlog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v32 = "__nw_frame_unclaimed_length";
        _os_log_impl(&dword_1889BA000, v18, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v17)
    {
      free(v17);
    }

    goto LABEL_36;
  }

  v4 = *(a2 + 52);
  if (!v4)
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  v5 = v4 - (*(a2 + 56) + *(a2 + 60));
  if (*(*(a1[4] + 8) + 24) == 1 && v4 != *(a2 + 56) + *(a2 + 60))
  {
    v7 = *(a2 + 186);
    v8 = *(*(a1[5] + 8) + 24);
    v9 = (*(*(*(v8 + 8) + 40) + 72))(v8, 0, a2, 0, 0);
    v10 = *(v8 + 368);
    if ((v10 & 0x30) != 0)
    {
      *(v8 + 368) = v10 & 0xFFFFFFCF;
    }

    if (v9 > 0x23 || ((1 << v9) & 0x800000011) == 0)
    {
      v12 = v9;
      v13 = *(*(a1[5] + 8) + 24);
      if (!v13 || (*(v13 + 776) & 2) == 0)
      {
        v14 = __nwlog_tcp_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = (v13 + 556);
          v32 = "nw_protocol_tcp_finalize_output_frames_block_invoke";
          v33 = 2082;
          *buf = 136446978;
          if (!v13)
          {
            v15 = &unk_188A285CF;
          }

          v34 = v15;
          v35 = 1024;
          v36 = v12;
          v37 = 1024;
          v38 = v5;
          _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp_finalize_send error %d for frame of length %u", buf, 0x22u);
        }
      }

      *(*(*(a1[5] + 8) + 24) + 378) = v12;
      user_north_signal_error(*(*(a1[5] + 8) + 24));
      *(*(a1[4] + 8) + 24) = 0;
    }

    if (*(*(a1[4] + 8) + 24) == 1 && v7 < 0)
    {
      v16 = *(*(a1[5] + 8) + 24);
      if (!v16 || (*(v16 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v19 = __nwlog_tcp_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = &unk_188A285CF;
            if (v16)
            {
              v20 = (v16 + 556);
            }

            *buf = 136446466;
            v32 = "nw_protocol_tcp_finalize_output_frames_block_invoke";
            v33 = 2082;
            v34 = v20;
            _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s frame marks connection complete, marking output finished", buf, 0x16u);
          }
        }
      }

      nw_protocol_tcp_output_finished(a1[6]);
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(*(a1[5] + 8) + 24);
  if (!v21 || (*(v21 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v27 = __nwlog_tcp_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = (v21 + 556);
        v32 = "nw_protocol_tcp_finalize_output_frames_block_invoke";
        *buf = 136446722;
        if (!v21)
        {
          v28 = &unk_188A285CF;
        }

        v33 = 2082;
        v34 = v28;
        v35 = 1024;
        v36 = v5;
        _os_log_impl(&dword_1889BA000, v27, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s dropping frame of length %u", buf, 0x1Cu);
      }
    }
  }

  if (a2)
  {
    v22 = *(a2 + 80);
    if (v22)
    {
      v23 = *(a2 + 88);
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v22(a2, 1, v23);
      goto LABEL_43;
    }

    __nwlog_obj();
    *buf = 136446210;
    v32 = "__nw_frame_finalize";
    v26 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_57;
    }

    v29 = __nwlog_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136446210;
    v32 = "__nw_frame_finalize";
    v30 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
    goto LABEL_56;
  }

  __nwlog_obj();
  *buf = 136446210;
  v32 = "__nw_frame_finalize";
  v26 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v29 = __nwlog_obj();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v32 = "__nw_frame_finalize";
      v30 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_56:
      _os_log_impl(&dword_1889BA000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }
  }

LABEL_57:
  if (v26)
  {
    free(v26);
  }

LABEL_43:
  v24 = *MEMORY[0x1E69E9840];
  return 1;
}

BOOL sbappendstream(_DWORD *a1, void *a2, int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_11:
    result = 0;
    goto LABEL_25;
  }

  v3 = a1[8];
  if ((v3 & 0x80) != 0)
  {
    v11 = *a2;
    if (*a2)
    {
      *(v11 + 40) = v34;
      v12 = a2[1];
      v34[0] = v11;
      v34[1] = v12;
      *a2 = 0;
      a2[1] = a2;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ____nw_frame_array_finalize_block_invoke_586;
      *v36 = &__block_descriptor_tmp_12;
      v36[8] = 1;
      do
      {
        v13 = v34[0];
        if (!v34[0])
        {
          break;
        }

        nw_frame_array_remove();
      }

      while (((*&buf[16])(buf, v13) & 1) != 0);
    }

    goto LABEL_11;
  }

  *a1 += a3;
  v4 = *(*(a1 + 6) + 24);
  v5 = a3;
  if ((v3 & 4) != 0)
  {
    if (v4)
    {
      v15 = a1;
      v16 = *(*(a1 + 6) + 24);
      v17 = a2;
      all_stats = nw_protocol_tcp_get_all_stats();
      a2 = v17;
      a3 = v5;
      v19 = all_stats;
      a1 = v15;
      if (v19)
      {
        *(v19 + 92) = *v15;
      }
    }
  }

  else if (v4)
  {
    v6 = a1;
    v7 = *(*(a1 + 6) + 24);
    v8 = a2;
    v9 = nw_protocol_tcp_get_all_stats();
    a2 = v8;
    a3 = v5;
    v10 = v9;
    a1 = v6;
    if (v10)
    {
      *(v10 + 104) = *v6;
    }
  }

  if (*a2)
  {
    v20 = 0;
    v21 = 0;
    v22 = *a2;
    do
    {
      v23 = *(v22 + 52);
      if (v23)
      {
        v23 -= *(v22 + 56) + *(v22 + 60);
      }

      v20 += v23;
      ++v21;
      v22 = *(v22 + 32);
    }

    while (v22);
    v24 = *(a1 + 3);
    *v24 = *a2;
    *(*a2 + 40) = v24;
    *(a1 + 3) = a2[1];
    *a2 = 0;
    a2[1] = a2;
    if (v20 == a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
    if (!a3)
    {
LABEL_21:
      v25 = a1;
      v26 = *(a1 + 6);
      if (!v26 || (*(v26 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v33 = v21;
          v30 = __nwlog_tcp_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            v31 = (v26 + 556);
            v32 = *v25;
            *buf = 136447234;
            *&buf[4] = "sbcompress";
            if (!v26)
            {
              v31 = &unk_188A285CF;
            }

            *&buf[12] = 2082;
            *&buf[14] = v31;
            *&buf[22] = 1024;
            *v36 = v33;
            *&v36[4] = 1024;
            *&v36[6] = v5;
            v37 = 1024;
            v38 = v32;
            _os_log_impl(&dword_1889BA000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s append frame count %u length %u sb_cc %u", buf, 0x28u);
          }
        }
      }

      result = 1;
      goto LABEL_25;
    }
  }

  v28 = v20;
  v29 = __nwlog_obj();
  result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    *&buf[4] = "sbcompress";
    *&buf[12] = 1024;
    *&buf[14] = v5;
    *&buf[18] = 1024;
    *&buf[20] = v28;
    _os_log_impl(&dword_1889BA000, v29, OS_LOG_TYPE_ERROR, "%{public}s len_added %u != len_to_add %u", buf, 0x18u);
    result = 0;
  }

LABEL_25:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_offset_from_latest_tx(uint64_t a1, int a2)
{
  v4 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  v5 = *(a1 + 140);
  if (v5 - *(v4 + 308) <= 0)
  {
    v5 = *(v4 + 308);
  }

  return (v5 + a2 - *(a1 + 64));
}

BOOL nw_protocol_tcp_copy_frame_to_buffer(uint64_t a1, int a2, int a3, char *__dst)
{
  for (i = *MEMORY[0x1E69E9840]; a2 >= 1 && a1; a1 = *(a1 + 32))
  {
    v4 = *(a1 + 52);
    if (v4)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 60);
      v7 = v4 - (v5 + v6);
      if (a2 < v7)
      {
        goto LABEL_13;
      }

      v8 = v5 - v4 + v6;
    }

    else
    {
      v8 = 0;
    }

    a2 += v8;
  }

  if (a2 < 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v46 = "nw_protocol_tcp_copy_frame_to_buffer";
    v10 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v22 = __nwlog_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v46 = "nw_protocol_tcp_copy_frame_to_buffer";
    v23 = "%{public}s source_offset < 0, backtrace limit exceeded";
    goto LABEL_63;
  }

  if (a1)
  {
    v7 = *(a1 + 52);
    if (v7)
    {
      v7 -= *(a1 + 56) + *(a1 + 60);
    }

LABEL_13:
    v9 = v7 - a2;
    if (v7 < a2)
    {
      goto LABEL_14;
    }

    if (a3 < 1)
    {
      goto LABEL_83;
    }

    if (v9 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v9;
    }

    if (v7 == a2)
    {
LABEL_21:
      v12 = __nwlog_obj();
      result = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (!result)
      {
        goto LABEL_84;
      }

      *buf = 136446210;
      v46 = "nw_protocol_tcp_copy_frame_to_buffer";
LABEL_62:
      _os_log_impl(&dword_1889BA000, v12, OS_LOG_TYPE_INFO, "%{public}s source buffer is no longer valid", buf, 0xCu);
      result = 0;
      goto LABEL_84;
    }

    v14 = a3;
    if ((*(a1 + 204) & 2) == 0)
    {
      v15 = *(a1 + 112);
      if (!v15)
      {
        goto LABEL_60;
      }

      if ((*(a1 + 204) & 0x100) != 0)
      {
        if (*MEMORY[0x1E6977EF8])
        {
          v16 = *(a1 + 88);
          v17 = a1;
          v18 = a2;
          v19 = __dst;
          if (!(*MEMORY[0x1E6977EF8])() || (a2 = v18, __dst = v19, a1 = v17, (v15 = *(v17 + 112)) == 0))
          {
LABEL_60:
            v12 = __nwlog_obj();
            result = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
            if (!result)
            {
              goto LABEL_84;
            }

            *buf = 136446210;
            v46 = "nw_protocol_tcp_copy_frame_to_buffer";
            goto LABEL_62;
          }
        }
      }

      v20 = a1;
      v21 = __dst;
      memcpy(__dst, (v15 + *(a1 + 56) + a2), v11);
LABEL_38:
      a3 = v14 - v11;
      v27 = *(v20 + 32);
      if (v27)
      {
        v28 = *(v27 + 52);
        if (v28)
        {
          v28 -= *(v27 + 56) + *(v27 + 60);
        }

        if (a3 >= 1)
        {
          v29 = &v21[v11];
          v30 = MEMORY[0x1E6977EF8];
          while (1)
          {
            v31 = v28 >= a3 ? a3 : v28;
            if (!v28)
            {
              goto LABEL_21;
            }

            v32 = a3;
            if ((*(v27 + 204) & 2) != 0)
            {
              if (!*(v27 + 96))
              {
                goto LABEL_67;
              }

              v34 = *(v27 + 56);
              v35 = nw_dispatch_data_copyout_from_offset();
              if (v35 != v31)
              {
                v37 = v35;
                LODWORD(v11) = v31;
                goto LABEL_70;
              }
            }

            else
            {
              v33 = *(v27 + 112);
              if (!v33)
              {
                goto LABEL_60;
              }

              if ((*(v27 + 204) & 0x100) != 0)
              {
                if (*v30)
                {
                  if (!(*v30)(v27, *(v27 + 88)))
                  {
                    goto LABEL_60;
                  }

                  v33 = *(v27 + 112);
                  if (!v33)
                  {
                    goto LABEL_60;
                  }
                }
              }

              memcpy(v29, (v33 + *(v27 + 56)), v31);
            }

            a3 = v32 - v31;
            v27 = *(v27 + 32);
            if (v27)
            {
              v28 = *(v27 + 52);
              if (v28)
              {
                v28 -= *(v27 + 56) + *(v27 + 60);
              }

              v29 += v31;
              if (a3 > 0)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_83:
      result = a3 == 0;
      goto LABEL_84;
    }

    if (*(a1 + 96))
    {
      v20 = a1;
      v24 = (*(a1 + 56) + a2);
      v25 = *(a1 + 96);
      v21 = __dst;
      v26 = nw_dispatch_data_copyout_from_offset();
      if (v26 == v11)
      {
        goto LABEL_38;
      }

      v37 = v26;
LABEL_70:
      __nwlog_obj();
      *buf = 136446722;
      v46 = "nw_protocol_tcp_copy_frame_to_buffer";
      v47 = 2048;
      v48 = v37;
      v49 = 1024;
      v50 = v11;
      v38 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v40 = __nwlog_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v46 = "nw_protocol_tcp_copy_frame_to_buffer";
          v47 = 2048;
          v48 = v37;
          v49 = 1024;
          v50 = v11;
          _os_log_impl(&dword_1889BA000, v40, OS_LOG_TYPE_ERROR, "%{public}s Copied %zu out of expected %u bytes, backtrace limit exceeded", buf, 0x1Cu);
        }
      }

      if (!v38)
      {
LABEL_82:
        a3 = 1;
        goto LABEL_83;
      }

      v41 = v38;
    }

    else
    {
LABEL_67:
      __nwlog_obj();
      *buf = 136446210;
      v46 = "nw_protocol_tcp_copy_frame_to_buffer";
      v36 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v39 = __nwlog_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v46 = "nw_protocol_tcp_copy_frame_to_buffer";
          _os_log_impl(&dword_1889BA000, v39, OS_LOG_TYPE_ERROR, "%{public}s Failed to extract data from frame, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (!v36)
      {
        goto LABEL_82;
      }

      v41 = v36;
    }

    free(v41);
    goto LABEL_82;
  }

  __nwlog_obj();
  *buf = 136446210;
  v46 = "__nw_frame_unclaimed_length";
  v43 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v44 = __nwlog_obj();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v46 = "__nw_frame_unclaimed_length";
      _os_log_impl(&dword_1889BA000, v44, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v43)
  {
    free(v43);
  }

LABEL_14:
  __nwlog_obj();
  *buf = 136446210;
  v46 = "nw_protocol_tcp_copy_frame_to_buffer";
  v10 = _os_log_send_and_compose_impl();
  if (!__nwlog_fault())
  {
    goto LABEL_64;
  }

  v22 = __nwlog_obj();
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_64;
  }

  *buf = 136446210;
  v46 = "nw_protocol_tcp_copy_frame_to_buffer";
  v23 = "%{public}s invalid source frame, backtrace limit exceeded";
LABEL_63:
  _os_log_impl(&dword_1889BA000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
LABEL_64:
  if (v10)
  {
    free(v10);
  }

  result = 0;
LABEL_84:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_cubic_cwnd_init_or_reset(uint64_t result)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(result + 848);
  if (!v1)
  {
    v18 = result;
    v19 = __nwlog_obj();
    os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    v20 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort();
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v20);
    result = v18;
    v1 = *(v18 + 848);
  }

  *v1 = 0;
  *(*(result + 848) + 4) = 0;
  *(*(result + 848) + 8) = 0;
  *(*(result + 848) + 12) = 0;
  *(*(result + 848) + 16) = 0;
  *(*(result + 848) + 28) = 0;
  v2 = sysctls;
  if (*(sysctls + 280))
  {
    v3 = *(sysctls + 16);
  }

  else
  {
    v3 = 10;
  }

  v4 = *(result + 200);
  *(result + 148) = v4 * v3;
  *(result + 988) = 0;
  *(result + 980) = 0;
  *(result + 972) = 0;
  *(result + 759) = 0;
  *(result + 300) = 0;
  if (*(v2 + 280))
  {
    v5 = *(v2 + 16);
  }

  else
  {
    v5 = 10;
  }

  v6 = (v4 * v5);
  v7 = *(result + 152);
  if (*(*(*(result + 80) + 248) + 24) <= v6 && v7 <= 0x3FFFBFFF)
  {
    v7 = 1073725440;
    *(result + 152) = 1073725440;
  }

  **(result + 848) = v7;
  v8 = *(result + 204);
  v9 = *(result + 148);
  if (v8)
  {
    v10 = 32000 * v9 / v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 << (v9 < *(result + 152));
  v12 = *(*(result + 80) + 2384);
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(*(result + 80) + 2384);
  }

  if (v12 == -1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 >> 12;
  *(result + 472) = v14;
  v16 = *(result + 200);
  if (v16 <= v15)
  {
    v16 = v15;
  }

  *(result + 480) = v16;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void calculate_tcp_clock(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  microuptime(&v3);
  v2 = v4 / 1000 + 1000 * v3;
  if (*(a1 + 308) < v2)
  {
    *a1 = v3;
    *(a1 + 308) = v2;
  }
}

void tcp_input(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, BOOL *a6)
{
  v7 = v6;
  v827 = *MEMORY[0x1E69E9840];
  v13 = nw_frame_array_first();
  v800 = 0;
  v14 = *(a3 + 240);
  v15 = *(a3 + 224);
  v799 = 0;
  v798 = 0;
  memset(v797, 0, sizeof(v797));
  v794 = v13;
  v795 = a6;
  if (v13)
  {
    v16 = *(v13 + 186) & 3;
    goto LABEL_3;
  }

  v781 = v14;
  v118 = a1;
  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_frame_get_ecn_flag";
  v119 = _os_log_send_and_compose_impl();
  LOBYTE(v822) = 16;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault())
  {
    if (v822 == 17)
    {
      v120 = __nwlog_obj();
      v121 = v822;
      if (os_log_type_enabled(v120, v822))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_ecn_flag";
        v122 = "%{public}s called with null frame";
LABEL_218:
        v126 = v120;
        v127 = v121;
LABEL_219:
        _os_log_impl(&dword_1889BA000, v126, v127, v122, buf, 0xCu);
      }
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v124 = __nwlog_obj();
      v125 = os_log_type_enabled(v124, v822);
      if (backtrace_string)
      {
        if (v125)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_get_ecn_flag";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_1889BA000, v124, v822, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_220;
      }

      if (v125)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_ecn_flag";
        v122 = "%{public}s called with null frame, no backtrace";
        v126 = v124;
        v127 = v822;
        goto LABEL_219;
      }
    }

    else
    {
      v120 = __nwlog_obj();
      v121 = v822;
      if (os_log_type_enabled(v120, v822))
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_ecn_flag";
        v122 = "%{public}s called with null frame, backtrace limit exceeded";
        goto LABEL_218;
      }
    }
  }

LABEL_220:
  if (v119)
  {
    free(v119);
  }

  v16 = 0;
  a1 = v118;
  v14 = v781;
  v7 = v6;
LABEL_3:
  v791 = a2;
  if (!a2)
  {
    v790 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  if (*(a2 + 1224) == 255 || *(a2 + 1168) == 255)
  {
    v17 = 1;
  }

  else
  {
    if (*(a2 + 1216) == 3)
    {
      v17 = 0;
      LODWORD(a2) = 0;
      v790 = 1;
      goto LABEL_15;
    }

    v17 = 0;
    if (*(a2 + 1176) == 3)
    {
      v790 = 1;
      LODWORD(a2) = 0;
      goto LABEL_15;
    }
  }

  v790 = 0;
  LODWORD(a2) = *(a2 + 1212) == 2 || *(a2 + 1172) == 2;
LABEL_15:
  v796 = 0;
  v18 = *(a3 + 2380);
  if (a5)
  {
    *a5 = 0;
  }

  v19 = nw_tcp_access_globals(*(*(v14 + 80) + 224));
  do
  {
    v20 = *(a3 + 456);
    if (v20 == 0xFFFF)
    {
      break;
    }

    v21 = *(a3 + 456);
    atomic_compare_exchange_strong_explicit((a3 + 456), &v21, v20 + 1, memory_order_relaxed, memory_order_relaxed);
  }

  while (v21 != v20);
  v22 = v794;
  if (!v794 || !v14)
  {
    goto LABEL_33;
  }

  v23 = *(v794 + 112);
  if (!v23)
  {
LABEL_29:
    if ((*(v22 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v22, *(v22 + 88)) & 1) == 0)
    {
      *(v14 + 1064) = 0;
    }

LABEL_33:
    v34 = *(v14 + 1064);
    if (v34)
    {
      ++*(v34 + 152);
      ++*(v34 + 232);
    }

    in_pcb_checkstate(a3, 2, 1);
    v35 = v795;
    if (v15 && (*(v15 + 776) & 2) != 0)
    {
      goto LABEL_55;
    }

    v36 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_55;
    }

    v37 = &unk_188A285CF;
    if (v15)
    {
      v37 = (v15 + 556);
    }

    *buf = 136446466;
    *&buf[4] = "tcp_input";
    *&buf[12] = 2082;
    *&buf[14] = v37;
    v38 = "%{public}s %{public}s failed to get tcp header";
    v39 = v36;
    v40 = OS_LOG_TYPE_INFO;
LABEL_53:
    v45 = 22;
LABEL_54:
    _os_log_impl(&dword_1889BA000, v39, v40, v38, buf, v45);
LABEL_55:
    v46 = 0;
    goto LABEL_56;
  }

  v785 = v18;
  if ((*(v794 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8])
  {
    v24 = a3;
    v25 = a1;
    v26 = v15;
    v27 = a4;
    v28 = v7;
    v29 = v19;
    v30 = (*MEMORY[0x1E6977EF8])(v794, *(v794 + 88));
    v19 = v29;
    v7 = v28;
    a4 = v27;
    v15 = v26;
    a1 = v25;
    a3 = v24;
    v18 = v785;
    v22 = v794;
    if (v30)
    {
      v31 = *(v794 + 112);
      if (v31)
      {
        v32 = v31 + *(v794 + 56);
        LODWORD(v31) = *(v794 + 56);
        v33 = *(v794 + 52);
        if (!v33)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }
    }

    goto LABEL_29;
  }

  v31 = *(v794 + 56);
  v32 = v23 + v31;
  v33 = *(v794 + 52);
  if (!v33)
  {
LABEL_43:
    v42 = *(v14 + 1064);
    if (v42)
    {
      ++*(v42 + 152);
      ++*(v42 + 368);
    }

    v35 = v795;
    if (v791)
    {
      atomic_fetch_add((v791 + 1016), 1uLL);
    }

    in_pcb_checkstate(a3, 2, 1);
    if (v15 && (*(v15 + 776) & 2) != 0)
    {
      goto LABEL_55;
    }

    v43 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v44 = &unk_188A285CF;
    if (v15)
    {
      v44 = (v15 + 556);
    }

    *buf = 136446466;
    *&buf[4] = "tcp_input";
    *&buf[12] = 2082;
    *&buf[14] = v44;
    v38 = "%{public}s %{public}s buffer smaller than tcp header";
    v39 = v43;
    v40 = OS_LOG_TYPE_ERROR;
    goto LABEL_53;
  }

LABEL_42:
  v41 = v33 - (v31 + *(v22 + 60));
  if (v41 <= 19)
  {
    goto LABEL_43;
  }

  v772 = v17;
  v51 = (*(v32 + 12) >> 2) & 0x3C;
  v52 = *(v32 + 12) >= 0x50u && v41 >= v51;
  if (!v52)
  {
    v53 = *(v14 + 1064);
    if (v53)
    {
      ++*(v53 + 152);
      ++*(v53 + 360);
    }

    v35 = v795;
    if (v791)
    {
      atomic_fetch_add((v791 + 1016), 1uLL);
    }

    in_pcb_checkstate(a3, 2, 1);
    if (v15 && (*(v15 + 776) & 2) != 0)
    {
      goto LABEL_55;
    }

    v54 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    v55 = (v15 + 556);
    *&buf[4] = "tcp_input";
    *buf = 136446722;
    if (!v15)
    {
      v55 = &unk_188A285CF;
    }

    *&buf[12] = 2082;
    *&buf[14] = v55;
    *&buf[22] = 1024;
    *v805 = v51;
    v38 = "%{public}s %{public}s offset does not make any sense: %u";
    v39 = v54;
    v40 = OS_LOG_TYPE_ERROR;
    v45 = 28;
    goto LABEL_54;
  }

  v768 = v32;
  v769 = v19;
  __memcpy_chk();
  if ((*(v794 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v794, *(v794 + 88)) & 1) == 0)
  {
    v35 = v795;
    v128 = v14;
    v129 = *(v14 + 1064);
    if (v129)
    {
      ++*(v129 + 152);
    }

    in_pcb_checkstate(a3, 2, 1);
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      v130 = __nwlog_tcp_log();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        v131 = &unk_188A285CF;
        if (v15)
        {
          v131 = (v15 + 556);
        }

        *buf = 136446466;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v131;
        _os_log_impl(&dword_1889BA000, v130, OS_LOG_TYPE_INFO, "%{public}s %{public}s buffer no longer valid", buf, 0x16u);
      }
    }

    v46 = 0;
    *(v128 + 1064) = 0;
    goto LABEL_56;
  }

  v779 = a1;
  v780 = v14;
  v56 = *a1;
  v784 = v51;
  v771 = v16;
  v767 = a2;
  if (v56)
  {
    v57 = *(v56 + 204);
    if ((v57 & 0x80) == 0)
    {
      v782 = 0;
      LODWORD(v58) = 0;
      v59 = 0;
      v60 = (v15 + 556);
      if (!v15)
      {
        v60 = &unk_188A285CF;
      }

      v777 = v60;
      v61 = 1;
      while (1)
      {
        if ((*(v56 + 204) & 0x80000000) == 0)
        {
          if (v61)
          {
            goto LABEL_105;
          }

          goto LABEL_101;
        }

        if ((v61 & 1) == 0)
        {
          break;
        }

        if (v15 && (*(v15 + 776) & 2) != 0)
        {
          v782 = 1;
LABEL_93:
          v64 = *(v56 + 52);
          if (v64)
          {
            goto LABEL_106;
          }

          goto LABEL_83;
        }

        v63 = __nwlog_tcp_log();
        v782 = 1;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v777;
          v782 = 1;
          _os_log_impl(&dword_1889BA000, v63, OS_LOG_TYPE_INFO, "%{public}s %{public}s first frame is wake packet", buf, 0x16u);
          goto LABEL_93;
        }

LABEL_105:
        v64 = *(v56 + 52);
        if (v64)
        {
LABEL_106:
          v62 = v64 - (*(v56 + 56) + *(v56 + 60));
          goto LABEL_84;
        }

LABEL_83:
        v62 = 0;
LABEL_84:
        v61 = 0;
        v58 = (v62 + v58);
        v56 = *(v56 + 32);
        ++v59;
        if (!v56)
        {
          goto LABEL_254;
        }
      }

      if (!v15 || (*(v15 + 776) & 2) == 0)
      {
        v65 = __nwlog_tcp_log();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v777;
          _os_log_impl(&dword_1889BA000, v65, OS_LOG_TYPE_INFO, "%{public}s %{public}s frame is wake packet", buf, 0x16u);
        }
      }

      *(v56 + 204) &= ~0x8000u;
      if (*v779)
      {
        *(*v779 + 204) |= 0x8000u;
        v782 = 1;
LABEL_101:
        v66 = a4;
        v67 = v15;
        if ((*(v56 + 204) & 0x80) != 0)
        {
          *(v56 + 196) -= v784;
        }

        v68 = *(v56 + 56) + v784;
        v69 = *(v56 + 60);
        if (v68 > *(v56 + 52) - v69)
        {
          v84 = __nwlog_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            v85 = *(v56 + 52);
            *buf = 136446978;
            *&buf[4] = "__nw_frame_claim_internal";
            *&buf[12] = 1024;
            *&buf[14] = v68;
            *&buf[18] = 1024;
            *&buf[20] = v85;
            *v805 = 1024;
            *&v805[2] = v69;
            _os_log_impl(&dword_1889BA000, v84, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
          }

          if (!v15 || (v35 = v795, (*(v15 + 776) & 2) == 0))
          {
            __nwlog_tcp_log();
            v86 = *(v56 + 52);
            if (v86)
            {
              v86 -= *(v56 + 56) + *(v56 + 60);
            }

            *buf = 136446978;
            *&buf[4] = "tcp_compute_segment_length";
            *&buf[12] = 2082;
            *&buf[14] = v777;
            *&buf[22] = 1024;
            *v805 = v86;
            *&v805[4] = 1024;
            *&v805[6] = v784;
            v87 = _os_log_send_and_compose_impl();
            type[0] = OS_LOG_TYPE_ERROR;
            v803 = 0;
            v35 = v795;
            if (__nwlog_fault())
            {
              if (type[0] != OS_LOG_TYPE_FAULT)
              {
                if (v803 == 1)
                {
                  v95 = __nw_create_backtrace_string();
                  v88 = __nwlog_tcp_log();
                  v89 = type[0];
                  v96 = os_log_type_enabled(v88, type[0]);
                  if (v95)
                  {
                    if (v96)
                    {
                      v97 = *(v56 + 52);
                      if (v97)
                      {
                        v97 -= *(v56 + 56) + *(v56 + 60);
                      }

                      *buf = 136447234;
                      *&buf[4] = "tcp_compute_segment_length";
                      *&buf[12] = 2082;
                      *&buf[14] = v777;
                      *&buf[22] = 1024;
                      *v805 = v97;
                      *&v805[4] = 1024;
                      *&v805[6] = v784;
                      v806 = 2082;
                      *v807 = v95;
                      _os_log_impl(&dword_1889BA000, v88, type[0], "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u, dumping backtrace:%{public}s", buf, 0x2Cu);
                    }

                    free(v95);
                    goto LABEL_199;
                  }

                  if (!v96)
                  {
                    goto LABEL_199;
                  }

                  v112 = *(v56 + 52);
                  if (v112)
                  {
                    v112 -= *(v56 + 56) + *(v56 + 60);
                  }

                  *buf = 136446978;
                  *&buf[4] = "tcp_compute_segment_length";
                  *&buf[12] = 2082;
                  *&buf[14] = v777;
                  *&buf[22] = 1024;
                  *v805 = v112;
                  *&v805[4] = 1024;
                  *&v805[6] = v784;
                  v91 = "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u, no backtrace";
                }

                else
                {
                  v88 = __nwlog_tcp_log();
                  v89 = type[0];
                  if (!os_log_type_enabled(v88, type[0]))
                  {
                    goto LABEL_199;
                  }

                  v111 = *(v56 + 52);
                  if (v111)
                  {
                    v111 -= *(v56 + 56) + *(v56 + 60);
                  }

                  *buf = 136446978;
                  *&buf[4] = "tcp_compute_segment_length";
                  *&buf[12] = 2082;
                  *&buf[14] = v777;
                  *&buf[22] = 1024;
                  *v805 = v111;
                  *&v805[4] = 1024;
                  *&v805[6] = v784;
                  v91 = "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u, backtrace limit exceeded";
                }

LABEL_198:
                _os_log_impl(&dword_1889BA000, v88, v89, v91, buf, 0x22u);
                goto LABEL_199;
              }

              v88 = __nwlog_tcp_log();
              v89 = type[0];
              if (os_log_type_enabled(v88, type[0]))
              {
                v90 = *(v56 + 52);
                if (v90)
                {
                  v90 -= *(v56 + 56) + *(v56 + 60);
                }

                *buf = 136446978;
                *&buf[4] = "tcp_compute_segment_length";
                *&buf[12] = 2082;
                *&buf[14] = v777;
                *&buf[22] = 1024;
                *v805 = v90;
                *&v805[4] = 1024;
                *&v805[6] = v784;
                v91 = "%{public}s %{public}s chained frame len %u is smaller than TCP header size %u";
                goto LABEL_198;
              }
            }

LABEL_199:
            if (v87)
            {
              free(v87);
            }
          }

          v113 = *(v780 + 1064);
          if (v113)
          {
            ++*(v113 + 152);
          }

          a1 = v779;
          if (!v67 || (*(v67 + 776) & 2) == 0)
          {
            v114 = __nwlog_tcp_log();
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "tcp_input";
              *&buf[12] = 2082;
              *&buf[14] = v777;
              v115 = "%{public}s %{public}s invalid frame list";
              v116 = v114;
              v117 = OS_LOG_TYPE_ERROR;
              goto LABEL_285;
            }
          }

          goto LABEL_286;
        }

        *(v56 + 56) = v68;
        a4 = v66;
        v18 = v785;
        goto LABEL_105;
      }

      v762 = v7;
      v70 = a4;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_frame_set_is_wake_packet";
      v71 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v803 = 0;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v72 = __nwlog_obj();
          if (os_log_type_enabled(v72, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_is_wake_packet";
            v73 = v72;
            v74 = type[0];
            v75 = "%{public}s called with null frame";
LABEL_121:
            _os_log_impl(&dword_1889BA000, v73, v74, v75, buf, 0xCu);
          }
        }

        else if (v803 == 1)
        {
          v76 = __nw_create_backtrace_string();
          v77 = __nwlog_obj();
          v78 = os_log_type_enabled(v77, type[0]);
          if (v76)
          {
            if (v78)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_set_is_wake_packet";
              *&buf[12] = 2082;
              *&buf[14] = v76;
              _os_log_impl(&dword_1889BA000, v77, type[0], "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v76);
            goto LABEL_122;
          }

          if (v78)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_is_wake_packet";
            v73 = v77;
            v74 = type[0];
            v75 = "%{public}s called with null frame, no backtrace";
            goto LABEL_121;
          }
        }

        else
        {
          v79 = __nwlog_obj();
          if (os_log_type_enabled(v79, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_is_wake_packet";
            v73 = v79;
            v74 = type[0];
            v75 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      if (v71)
      {
        free(v71);
      }

      v782 = 1;
      a4 = v70;
      v7 = v762;
      goto LABEL_101;
    }

    v58 = *(v56 + 196);
    HIDWORD(v800) = *(v56 + 196);
    v35 = v795;
    if ((v57 & 0x40) == 0)
    {
      v59 = *(v56 + 200);
      a1 = v779;
      if (v59)
      {
LABEL_182:
        if (v15 && (*(v15 + 776) & 2) != 0 || !__nwlog_is_datapath_logging_enabled())
        {
          v782 = 0;
        }

        else
        {
          v139 = __nwlog_tcp_log();
          if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
          {
            *&buf[4] = "tcp_compute_segment_length";
            *&buf[12] = 2082;
            v140 = &unk_188A285CF;
            *buf = 136447234;
            if (v15)
            {
              v140 = (v15 + 556);
            }

            *&buf[14] = v140;
            *&buf[22] = 1024;
            LODWORD(v51) = v784;
            *v805 = v784;
            *&v805[4] = 1024;
            *&v805[6] = v58;
            v806 = 1024;
            *v807 = v59;
            _os_log_impl(&dword_1889BA000, v139, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s TCP hlen %d segment length %d on %d buffers", buf, 0x28u);
            v782 = 0;
            a1 = v779;
          }

          else
          {
            v782 = 0;
            a1 = v779;
            LODWORD(v51) = v784;
          }

          v18 = v785;
        }

        goto LABEL_258;
      }

LABEL_162:
      if (v15 && (*(v15 + 776) & 2) != 0)
      {
        v782 = 0;
        v59 = 1;
        a1 = v779;
        v35 = v795;
        LODWORD(v51) = v784;
        goto LABEL_258;
      }

      __nwlog_tcp_log();
      v100 = (v15 + 556);
      if (!v15)
      {
        v100 = &unk_188A285CF;
      }

      *buf = 136446466;
      *&buf[4] = "tcp_compute_segment_length";
      *&buf[12] = 2082;
      v783 = v100;
      *&buf[14] = v100;
      v101 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v803 = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_179;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v102 = __nwlog_tcp_log();
        v103 = type[0];
        if (os_log_type_enabled(v102, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v783;
          v104 = "%{public}s %{public}s Segment count is 0 for single-IP frame";
          v105 = v102;
LABEL_170:
          v106 = v103;
LABEL_178:
          _os_log_impl(&dword_1889BA000, v105, v106, v104, buf, 0x16u);
        }
      }

      else if (v803 == 1)
      {
        v107 = __nw_create_backtrace_string();
        v108 = __nwlog_tcp_log();
        v103 = type[0];
        v109 = os_log_type_enabled(v108, type[0]);
        if (v107)
        {
          if (v109)
          {
            *buf = 136446722;
            *&buf[4] = "tcp_compute_segment_length";
            *&buf[12] = 2082;
            *&buf[14] = v783;
            *&buf[22] = 2082;
            *v805 = v107;
            _os_log_impl(&dword_1889BA000, v108, type[0], "%{public}s %{public}s Segment count is 0 for single-IP frame, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v107);
          goto LABEL_179;
        }

        if (v109)
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v783;
          v104 = "%{public}s %{public}s Segment count is 0 for single-IP frame, no backtrace";
          v105 = v108;
          goto LABEL_170;
        }
      }

      else
      {
        v110 = __nwlog_tcp_log();
        if (os_log_type_enabled(v110, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_compute_segment_length";
          *&buf[12] = 2082;
          *&buf[14] = v783;
          v104 = "%{public}s %{public}s Segment count is 0 for single-IP frame, backtrace limit exceeded";
          v105 = v110;
          v106 = type[0];
          goto LABEL_178;
        }
      }

LABEL_179:
      v35 = v795;
      if (v101)
      {
        free(v101);
      }

      v59 = 1;
      a1 = v779;
      LODWORD(v51) = v784;
      goto LABEL_182;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_get_segment_count";
    v80 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v803 = 0;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v81 = __nwlog_obj();
        v82 = type[0];
        if (!os_log_type_enabled(v81, type[0]))
        {
          goto LABEL_160;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_segment_count";
        v83 = "%{public}s Attempt to get segment-count on a chain-member";
LABEL_158:
        v98 = v81;
        v99 = v82;
LABEL_159:
        _os_log_impl(&dword_1889BA000, v98, v99, v83, buf, 0xCu);
        goto LABEL_160;
      }

      if (v803 != 1)
      {
        v81 = __nwlog_obj();
        v82 = type[0];
        if (!os_log_type_enabled(v81, type[0]))
        {
          goto LABEL_160;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_segment_count";
        v83 = "%{public}s Attempt to get segment-count on a chain-member, backtrace limit exceeded";
        goto LABEL_158;
      }

      v92 = __nw_create_backtrace_string();
      v93 = __nwlog_obj();
      v94 = os_log_type_enabled(v93, type[0]);
      if (v92)
      {
        if (v94)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_get_segment_count";
          *&buf[12] = 2082;
          *&buf[14] = v92;
          _os_log_impl(&dword_1889BA000, v93, type[0], "%{public}s Attempt to get segment-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v92);
        goto LABEL_160;
      }

      if (v94)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_segment_count";
        v83 = "%{public}s Attempt to get segment-count on a chain-member, no backtrace";
        v98 = v93;
        v99 = type[0];
        goto LABEL_159;
      }
    }

LABEL_160:
    if (v80)
    {
      free(v80);
    }

    goto LABEL_162;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "__nw_frame_is_single_ip_aggregate";
  v132 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  v803 = 0;
  if (__nwlog_fault())
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_251;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v135 = "%{public}s called with null frame";
LABEL_249:
      v141 = v133;
      v142 = v134;
LABEL_250:
      _os_log_impl(&dword_1889BA000, v141, v142, v135, buf, 0xCu);
      goto LABEL_251;
    }

    if (v803 != 1)
    {
      v133 = __nwlog_obj();
      v134 = type[0];
      if (!os_log_type_enabled(v133, type[0]))
      {
        goto LABEL_251;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v135 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_249;
    }

    v136 = __nw_create_backtrace_string();
    v137 = __nwlog_obj();
    v138 = os_log_type_enabled(v137, type[0]);
    if (v136)
    {
      if (v138)
      {
        *buf = 136446466;
        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
        *&buf[12] = 2082;
        *&buf[14] = v136;
        _os_log_impl(&dword_1889BA000, v137, type[0], "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v136);
    }

    else if (v138)
    {
      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v135 = "%{public}s called with null frame, no backtrace";
      v141 = v137;
      v142 = type[0];
      goto LABEL_250;
    }
  }

LABEL_251:
  if (v132)
  {
    free(v132);
  }

  v782 = 0;
  v59 = 0;
  v58 = 0;
  v18 = v785;
LABEL_254:
  if (!v15 || (*(v15 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v222 = __nwlog_tcp_log();
      if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
      {
        *&buf[4] = "tcp_compute_segment_length";
        *&buf[12] = 2082;
        v223 = &unk_188A285CF;
        *buf = 136447234;
        if (v15)
        {
          v223 = (v15 + 556);
        }

        *&buf[14] = v223;
        *&buf[22] = 1024;
        *v805 = v784;
        *&v805[4] = 1024;
        *&v805[6] = v58;
        v806 = 1024;
        *v807 = v59;
        _os_log_impl(&dword_1889BA000, v222, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s TCP hlen %d segment length %d on %d buffers", buf, 0x28u);
      }
    }
  }

  HIDWORD(v800) = v58;
  a1 = v779;
  LODWORD(v51) = v784;
  v35 = v795;
LABEL_258:
  v143 = *(v780 + 1064);
  if (v143)
  {
    *(v143 + 152) += v59;
  }

  v778 = v59;
  if (v15 && (*(v15 + 776) & 2) != 0)
  {
    v144 = v771;
    if (tcp_validate_cksum(v794, v58, v780, (v18 >> 1) & 1, v791))
    {
      goto LABEL_265;
    }

    goto LABEL_280;
  }

  v144 = v771;
  if (__nwlog_is_datapath_logging_enabled())
  {
    v204 = __nwlog_tcp_log();
    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
    {
      v205 = (v15 + 556);
      if (!v15)
      {
        v205 = &unk_188A285CF;
      }

      v206 = *(v780 + 12);
      v207 = *(v780 + 120);
      v208 = *(v780 + 92);
      *buf = 136449026;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v205;
      *&buf[22] = 1024;
      *v805 = bswap32(v822) >> 16;
      *&v805[4] = 1024;
      *&v805[6] = bswap32(WORD1(v822)) >> 16;
      v806 = 1024;
      *v807 = v58;
      *&v807[4] = 1024;
      *&v807[6] = BYTE13(v822);
      v808 = 1024;
      v809 = bswap32(DWORD1(v822));
      v810 = 1024;
      v811 = bswap32(DWORD2(v822));
      v812 = 1024;
      v813 = bswap32(HIWORD(v822)) >> 16;
      v814 = 1024;
      v815 = v206;
      v816 = 1024;
      v817 = v207;
      v818 = 1024;
      v819 = v208;
      _os_log_impl(&dword_1889BA000, v204, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s processing an input-frame, %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u", buf, 0x52u);
      LODWORD(v58) = HIDWORD(v800);
      a1 = v779;
    }

    else
    {
      a1 = v779;
    }

    LODWORD(v51) = v784;
    v144 = v771;
    v145 = v794;
  }

  else
  {
    v145 = v794;
  }

  v146 = *(v780 + 80);
  v147 = *(v146 + 2368);
  v148 = *(v146 + 2370);
  v149 = v145;
  if ((validate_tcp_cksum() & 1) == 0)
  {
    if ((*(v149 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v149, *(v149 + 88)) & 1) == 0)
    {
      *(v780 + 1064) = 0;
      if (!v15)
      {
        goto LABEL_281;
      }
    }

    else
    {
      v153 = *(v780 + 1064);
      if (v153)
      {
        ++*(v153 + 320);
      }

      if (v791)
      {
        atomic_fetch_add((v791 + 1016), 1uLL);
      }

      if (!v15)
      {
        goto LABEL_281;
      }
    }

LABEL_280:
    if ((*(v15 + 776) & 2) != 0)
    {
      goto LABEL_286;
    }

LABEL_281:
    v154 = __nwlog_tcp_log();
    if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
    {
      v155 = &unk_188A285CF;
      if (v15)
      {
        v155 = (v15 + 556);
      }

      *buf = 136446466;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v155;
      v115 = "%{public}s %{public}s invalid checksum";
      v116 = v154;
      v117 = OS_LOG_TYPE_INFO;
LABEL_285:
      _os_log_impl(&dword_1889BA000, v116, v117, v115, buf, 0x16u);
    }

LABEL_286:
    in_pcb_checkstate(a3, 2, 1);
    v46 = v782;
    goto LABEL_56;
  }

LABEL_265:
  v786 = v58 - v51;
  HIDWORD(v800) = v58 - v51;
  if (v51 < 0x15)
  {
    v150 = 0;
    v151 = 0;
    v152 = v769;
  }

  else
  {
    v150 = v51 - 20;
    v151 = &v824;
    v152 = v769;
    if ((v51 == 32 || v51 >= 0x21 && !v826) && v824 == 168296705 && (BYTE13(v822) & 2) == 0)
    {
      v150 = 0;
      v151 = 0;
      LODWORD(v797[0]) |= 1u;
      *(v797 + 4) = vrev32_s8(v825);
    }
  }

  v156 = BYTE13(v822);
  if ((~BYTE13(v822) & 3) == 0)
  {
    if (v791)
    {
      atomic_fetch_add((v791 + 1032), 1uLL);
    }

    in_pcb_checkstate(a3, 2, 1);
    v46 = v782;
    v35 = v795;
    goto LABEL_56;
  }

  v763 = v151;
  v761 = v150;
  calculate_tcp_clock(v152);
  if (v791)
  {
    v764 = *(v791 + 1220);
  }

  else
  {
    v764 = 0;
  }

  v157 = v58 - v51;
  if ((BYTE13(v822) & 0x24) != 0)
  {
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      v224 = __nwlog_tcp_log();
      if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
      {
        v225 = (v15 + 556);
        if (!v15)
        {
          v225 = &unk_188A285CF;
        }

        v226 = *(v780 + 12);
        v227 = *(v780 + 120);
        v228 = *(v780 + 92);
        *buf = 136448258;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v225;
        *&buf[22] = 1024;
        *v805 = BYTE13(v822);
        *&v805[4] = 1024;
        *&v805[6] = bswap32(DWORD1(v822));
        v806 = 1024;
        *v807 = bswap32(DWORD2(v822));
        *&v807[4] = 1024;
        *&v807[6] = bswap32(HIWORD(v822)) >> 16;
        v808 = 1024;
        v809 = v226;
        v810 = 1024;
        v811 = v227;
        v812 = 1024;
        v813 = v228;
        v229 = v224;
        v230 = OS_LOG_TYPE_ERROR;
        goto LABEL_520;
      }
    }
  }

  else if ((BYTE13(v822) & 3) != 0 && (!v15 || (*(v15 + 776) & 2) == 0))
  {
    v231 = __nwlog_tcp_log();
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
    {
      v232 = (v15 + 556);
      if (!v15)
      {
        v232 = &unk_188A285CF;
      }

      v233 = *(v780 + 12);
      v234 = *(v780 + 120);
      v235 = *(v780 + 92);
      *buf = 136448258;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v232;
      *&buf[22] = 1024;
      *v805 = BYTE13(v822);
      *&v805[4] = 1024;
      *&v805[6] = bswap32(DWORD1(v822));
      v806 = 1024;
      *v807 = bswap32(DWORD2(v822));
      *&v807[4] = 1024;
      *&v807[6] = bswap32(HIWORD(v822)) >> 16;
      v808 = 1024;
      v809 = v233;
      v810 = 1024;
      v811 = v234;
      v812 = 1024;
      v813 = v235;
      v229 = v231;
      v230 = OS_LOG_TYPE_DEFAULT;
LABEL_520:
      _os_log_impl(&dword_1889BA000, v229, v230, "%{public}s %{public}s flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u", buf, 0x40u);
    }
  }

  tcp_log_packet(v780, &v822);
  if ((*(v794 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v794, *(v794 + 88)) & 1) == 0)
  {
    v35 = v795;
    if (!v15 || (*(v15 + 776) & 2) == 0)
    {
      v748 = __nwlog_tcp_log();
      if (os_log_type_enabled(v748, OS_LOG_TYPE_INFO))
      {
        v749 = &unk_188A285CF;
        if (v15)
        {
          v749 = (v15 + 556);
        }

        *buf = 136446466;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v749;
        _os_log_impl(&dword_1889BA000, v748, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping tcp input frame since frame is no longer valid", buf, 0x16u);
      }
    }

    *(v780 + 1064) = 0;
    in_pcb_checkstate(a3, 2, 1);
    a1 = v779;
    v46 = v782;
    goto LABEL_56;
  }

  *(&v822 + 4) = vrev32_s8(*(&v822 + 4));
  HIWORD(v822) = bswap32(HIWORD(v822)) >> 16;
  v823 = bswap32(v823) >> 16;
  if (&v822 != v768)
  {
    *(v768 + 4) = vrev32_s8(*(v768 + 4));
    *(v768 + 14) = bswap32(*(v768 + 14)) >> 16;
    *(v768 + 18) = bswap32(*(v768 + 18)) >> 16;
  }

  if ((*(a3 + 2373) & 0x40) != 0)
  {
    v764 = *(*(a3 + 440) + 1220);
  }

  (*(*(v15 + 8) + 16))(v15, 1, v7);
  if (in_pcb_checkstate(a3, 2, 1) == 0xFFFF)
  {
    v773 = v156;
    v158 = 0;
    v159 = v780;
LABEL_306:
    v160 = v794;
    goto LABEL_307;
  }

  if (v797[0])
  {
    DWORD2(v797[0]) -= *(v780 + 288);
  }

  if ((v156 & 0x17) == 0 || !*(v780 + 12))
  {
    v46 = v782;
LABEL_1391:
    (*(*(v15 + 8) + 24))(v15, 1, v7);
    v35 = v795;
LABEL_56:
    *v35 = v46 != 0;
    v47 = *a1;
    if (*a1)
    {
      *(v47 + 40) = type;
      v48 = a1[1];
      *type = v47;
      v802 = v48;
      *a1 = 0;
      a1[1] = a1;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
      *v805 = &__block_descriptor_tmp_290;
      v805[8] = 1;
      do
      {
        v49 = *type;
        if (!*type)
        {
          break;
        }

        nw_frame_array_remove();
      }

      while (((*&buf[16])(buf, v49) & 1) != 0);
    }

    goto LABEL_60;
  }

  if (*(v15 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      ++*(all_stats + 16);
    }

    if (*(v15 + 24))
    {
      v166 = nw_protocol_tcp_get_all_stats();
      if (v166)
      {
        *(v166 + 24) += v786;
      }
    }
  }

  v799 = DWORD2(v822);
  v167 = HIWORD(v822);
  if ((v156 & 2) == 0)
  {
    v167 = HIWORD(v822) << *(v780 + 268);
  }

  v758 = v167;
  v168 = *(v15 + 372);
  if ((v168 & 2) != 0)
  {
    *(v15 + 372) = v168 & 0xFFFFFFFD;
    if ((*(v15 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v464 = __nwlog_tcp_log();
        if (os_log_type_enabled(v464, OS_LOG_TYPE_DEBUG))
        {
          v465 = *(v780 + 12);
          *buf = 136446722;
          *&buf[4] = "tcp_input";
          *&buf[12] = 2082;
          *&buf[14] = v15 + 556;
          *&buf[22] = 1024;
          *v805 = v465;
          _os_log_impl(&dword_1889BA000, v464, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{network:tcp_state}d", buf, 0x1Cu);
        }
      }
    }

    if (*(v15 + 24))
    {
      v173 = nw_protocol_tcp_get_all_stats();
      if (v173)
      {
        *(v173 + 136) = 1;
      }
    }

    v169 = v780;
    tcp_set_max_rwinscale(v780, v15);
    v760 = 1;
  }

  else
  {
    v760 = 0;
    v169 = v780;
  }

  (*(*(v15 + 8) + 32))(v15, 0);
  if ((*(v169 + 2096) & 2) != 0)
  {
    *(v169 + 420) &= ~1u;
  }

  v174 = v769;
  if (*(v169 + 12) == 4)
  {
    v175 = *(v169 + 92);
    if (DWORD2(v822) != v175)
    {
      v176 = *(tcp_cc_algo_list[*(v169 + 272)] + 112);
      if (v176)
      {
        v176(v169, (DWORD2(v822) - v175));
        v174 = v769;
      }

      if ((*(v169 + 336) & 4) != 0)
      {
        LODWORD(v177) = (DWORD2(v822) - *(v169 + 92) + (*(v169 + 200) >> 1)) / *(v169 + 200);
        if (v177 <= 1)
        {
          v177 = 1;
        }

        else
        {
          v177 = v177;
        }

        *(v169 + 368) += v177;
      }
    }
  }

  v178 = *(v169 + 2096);
  if ((v156 & 0x80) != 0 && (*(v169 + 2096) & 2) == 0)
  {
    *(v780 + 336) &= ~0x10u;
    ++*(v780 + 344);
  }

  if ((SBYTE13(v822) & 0x80u) == 0)
  {
    v179 = (BYTE13(v822) & 0x40) != 0;
  }

  else
  {
    v179 = (BYTE13(v822) >> 6) | 2;
  }

  v180 = v179 & 0xFFFFFFFB | (4 * (BYTE12(v822) & 1));
  v759 = v7;
  v755 = v180;
  if ((v178 & 2) != 0 && *(v780 + 12) == 4)
  {
    if (v58 == v784 || (v181 = DWORD1(v822), v786 >= 1) && (v189 = *(v780 + 296), DWORD1(v822) - v189 >= 0) && DWORD1(v822) - (v189 + *(v780 + 128)) < 0)
    {
      tcp_input_ip_ecn(v780, a3, v786, v778, v144);
      v174 = v769;
      v181 = DWORD1(v822);
    }

    if (v181 == *(v780 + 112) + 1 && !v180)
    {
      *(v780 + 348) = 6;
    }
  }

  else if (v144 == 3)
  {
    v182 = *(v780 + 12);
    if (v182 != 4)
    {
      v188 = 1;
LABEL_391:
      v756 = v188;
      goto LABEL_392;
    }

    v183 = *(v780 + 336);
    if ((~v183 & 3) == 0 && v786 >= 1)
    {
      v184 = *(v780 + 296);
      if (DWORD1(v822) - v184 >= 0 && DWORD1(v822) - (v184 + *(v780 + 128)) < 0)
      {
        ++*(v780 + 340);
        v185 = *(v780 + 1064);
        if (v185)
        {
          ++*(v185 + 856);
        }

        v186 = *(a3 + 448);
        if (v186)
        {
          v187 = 568;
          if ((*(a3 + 2380) & 2) == 0)
          {
            v187 = 184;
          }

          ++*(v186 + v187);
        }

        a1 = v779;
        *(v780 + 336) = v183 | 0x50;
        v144 = v771;
        v174 = v769;
        v157 = v786;
      }
    }
  }

  v182 = *(v780 + 12);
  if (v182 != 4)
  {
    v188 = v144 == 3;
    goto LABEL_391;
  }

  v190 = *(v780 + 336);
  if (v190)
  {
    if (v144 != 3 && (v156 & 0x80000000) == 0)
    {
      goto LABEL_394;
    }

    *(v780 + 320) = 16;
    *(v780 + 752) = 0;
  }

  if (v144 != 3)
  {
LABEL_394:
    v756 = 0;
    goto LABEL_398;
  }

  if ((~v190 & 3) != 0)
  {
    v193 = *(v780 + 1064);
    if (v193)
    {
      ++*(v193 + 944);
    }
  }

  else if ((v190 & 0x2000) == 0)
  {
    v191 = *(v780 + 737);
    if (**(a3 + 248) <= 0x13uLL)
    {
      *(v780 + 737) = v191 + 1;
      v756 = 1;
LABEL_457:
      v157 = v786;
      goto LABEL_398;
    }

    if (v191 < 0x13)
    {
      a1 = v779;
      *(v780 + 336) = v190 | 0x2000;
      v756 = 1;
      v144 = v771;
      v174 = v769;
      goto LABEL_457;
    }

    tcp_heuristic_ecn_aggressive(v780);
    *(v780 + 336) |= 0x2000u;
    v182 = *(v780 + 12);
    v756 = 1;
    a1 = v779;
    v144 = v771;
    v174 = v769;
    v157 = v786;
LABEL_392:
    v770 = (v174 + 308);
    v192 = v780;
    *(v780 + 164) = *(v174 + 308);
    if (v182 < 4)
    {
      goto LABEL_400;
    }

    goto LABEL_399;
  }

  v756 = 1;
LABEL_398:
  v770 = (v174 + 308);
  v192 = v780;
  *(v780 + 164) = *(v174 + 308);
LABEL_399:
  tcp_keepalive_reset(v192);
  v182 = *(v192 + 12);
LABEL_400:
  if (v182 != 1 && v763)
  {
    tcp_dooptions(v780, v763, v761, &v822, v797);
    v182 = *(v780 + 12);
  }

  v757 = a4;
  if ((v156 & 2) != 0 && v182 == 2)
  {
    if ((v156 & 0x10) != 0 && (DWORD2(v822) - *(v780 + 112) < 1 || DWORD2(v822) - *(v780 + 96) > 0))
    {
LABEL_426:
      v198 = v780;
      *(v780 + 752) = 0;
      goto LABEL_427;
    }

    tcp_finalize_options(v780, v797, v764);
    v182 = *(v780 + 12);
  }

  if ((v156 & 0x7F) != 0x10 || v182 != 4 || (*(v780 + 89) & 8) != 0 || (v797[0] & 1) != 0 && DWORD1(v797[0]) - *(v780 + 284) < 0 || DWORD1(v822) != *(v780 + 120) || *v780)
  {
    goto LABEL_426;
  }

  v194 = *(v780 + 760);
  if (v194 <= 0x28)
  {
    *(v780 + 760) = v194 + v778;
  }

  v195 = *(v780 + 756);
  if (*(v780 + 756) && v786 <= v195)
  {
    if (v786 != v195)
    {
LABEL_421:
      if (v786 < v195 && (v197 = (*(v780 + 758) + v778), *(v780 + 758) += v778, v197 < 0x15))
      {
        a1 = v779;
        v198 = v780;
        *(v780 + 752) = 0;
        v144 = v771;
        v157 = v786;
      }

      else
      {
        v198 = v780;
        *(v780 + 756) = v786;
        *(v780 + 752) = *(nw_tcp_access_globals(*(*(v780 + 80) + 224)) + 308);
        *(v780 + 758) = 0;
        a1 = v779;
        v157 = v786;
        v144 = v771;
      }

      goto LABEL_427;
    }

    v196 = *(v780 + 752);
    if (v196)
    {
      compute_iaj_meat(v780, *v770 - v196);
      v195 = *(v780 + 756);
      goto LABEL_421;
    }
  }

  a1 = v779;
  v198 = v780;
  v157 = v786;
  v144 = v771;
  if (v786 >= v195)
  {
    *(v780 + 756) = v786;
    *(v780 + 752) = *(nw_tcp_access_globals(*(*(v780 + 80) + 224)) + 308);
    *(v780 + 758) = 0;
  }

LABEL_427:
  if (*(v198 + 12) != 4)
  {
    goto LABEL_525;
  }

  if ((v156 & 0xFFFFFFF7) != 0x10)
  {
    goto LABEL_525;
  }

  if ((*(v15 + 376) & 0x20) != 0)
  {
    goto LABEL_525;
  }

  v199 = *(v780 + 88);
  if ((v199 & 0x800) != 0 || (v797[0] & 1) != 0 && DWORD1(v797[0]) - *(v780 + 284) < 0)
  {
    goto LABEL_525;
  }

  if (DWORD1(v822) != *(v780 + 120))
  {
    goto LABEL_525;
  }

  if (!v758)
  {
    goto LABEL_525;
  }

  if (v758 != *(v780 + 144))
  {
    goto LABEL_525;
  }

  v200 = *(v780 + 100);
  if (v200 != *(v780 + 96))
  {
    goto LABEL_525;
  }

  v201 = v15;
  if ((v797[0] & 1) != 0 && DWORD1(v822) - *(v780 + 296) <= 0)
  {
    *(v780 + 292) = *v770;
    *(v780 + 284) = DWORD1(v797[0]);
  }

  v202 = v756 ^ 1;
  if ((*(v780 + 2096) & 2) == 0)
  {
    v202 = 1;
  }

  if ((v202 & 1) == 0)
  {
    *(v780 + 318) += v778;
  }

  v203 = *(v780 + 92);
  if (v58 != v784)
  {
    a1 = v779;
    v144 = v771;
    v157 = v786;
    if (DWORD2(v822) != v203 || *v780 || v786 > tcp_sbspace(v780))
    {
      goto LABEL_525;
    }

    if ((*(v780 + 748) & 0x20) != 0 && *(v780 + 556))
    {
      *(v780 + 604) = 0;
      *(v780 + 572) = 0u;
      *(v780 + 588) = 0u;
      *(v780 + 556) = 0u;
    }

    v209 = *(v780 + 1064);
    if (v209)
    {
      ++v209[69];
    }

    v210 = *(v780 + 120) + v786;
    *(v780 + 120) = v210;
    if (*(v780 + 1924) - v210 < 0)
    {
      *(v780 + 1924) = v210;
      if (v797[0])
      {
        *(v780 + 1928) = DWORD1(v797[0]);
      }
    }

    *(v780 + 104) = DWORD1(v822);
    *(v780 + 136) = v210;
    if (v209)
    {
      v211 = v209[25] + v786;
      v209[24] += v778;
      v209[25] = v211;
    }

    v212 = *(a3 + 248);
    ++*v212;
    if (v772)
    {
      ++**(a3 + 256);
      if (!v790)
      {
        goto LABEL_477;
      }
    }

    else if (!v790)
    {
LABEL_477:
      if (!v767)
      {
        goto LABEL_479;
      }

      goto LABEL_478;
    }

    ++**(a3 + 264);
    if (!v767)
    {
LABEL_479:
      v212[1] += v786;
      if (v772)
      {
        *(*(a3 + 256) + 8) += v786;
        if (!v790)
        {
          goto LABEL_481;
        }
      }

      else if (!v790)
      {
LABEL_481:
        if (!v767)
        {
          goto LABEL_483;
        }

        goto LABEL_482;
      }

      *(*(a3 + 264) + 8) += v786;
      if (!v767)
      {
LABEL_483:
        tcp_compute_rcv_rtt(v780, v797, &v822);
        tcp_sbrcv_grow(v780, v15 + 464, v797, v786);
        if (*(sysctls + 284) == 1 && (~*(v780 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v15 + 369) & 0x40) != 0) && off_1ED4BF6F0)
        {
          off_1ED4BF6F0(v780, &v822, v797, v786);
        }

        v213 = *v779;
        if (*v779)
        {
          if ((*(v213 + 204) & 0x80) != 0)
          {
            v214 = *(v213 + 196);
            v52 = v214 >= v784;
            v215 = v214 - v784;
            if (!v52)
            {
              __nwlog_obj();
              v216 = *(v213 + 196);
              *buf = 136446722;
              *&buf[4] = "__nw_frame_array_claim";
              *&buf[12] = 1024;
              *&buf[14] = v216;
              *&buf[18] = 1024;
              *&buf[20] = v784;
              v217 = _os_log_send_and_compose_impl();
              type[0] = OS_LOG_TYPE_ERROR;
              v803 = 0;
              if (__nwlog_fault())
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v218 = __nwlog_obj();
                  v219 = type[0];
                  if (os_log_type_enabled(v218, type[0]))
                  {
                    v220 = *(v213 + 196);
                    *buf = 136446722;
                    *&buf[4] = "__nw_frame_array_claim";
                    *&buf[12] = 1024;
                    *&buf[14] = v220;
                    *&buf[18] = 1024;
                    *&buf[20] = v784;
                    v221 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_1753:
                    _os_log_impl(&dword_1889BA000, v218, v219, v221, buf, 0x18u);
                  }
                }

                else if (v803 == 1)
                {
                  v625 = __nw_create_backtrace_string();
                  v218 = __nwlog_obj();
                  v219 = type[0];
                  v626 = os_log_type_enabled(v218, type[0]);
                  if (v625)
                  {
                    if (v626)
                    {
                      v627 = *(v213 + 196);
                      *buf = 136446978;
                      *&buf[4] = "__nw_frame_array_claim";
                      *&buf[12] = 1024;
                      *&buf[14] = v627;
                      *&buf[18] = 1024;
                      *&buf[20] = v784;
                      *v805 = 2082;
                      *&v805[2] = v625;
                      _os_log_impl(&dword_1889BA000, v218, v219, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
                    }

                    free(v625);
                    goto LABEL_1754;
                  }

                  if (v626)
                  {
                    v663 = *(v213 + 196);
                    *buf = 136446722;
                    *&buf[4] = "__nw_frame_array_claim";
                    *&buf[12] = 1024;
                    *&buf[14] = v663;
                    *&buf[18] = 1024;
                    *&buf[20] = v784;
                    v221 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
                    goto LABEL_1753;
                  }
                }

                else
                {
                  v218 = __nwlog_obj();
                  v219 = type[0];
                  if (os_log_type_enabled(v218, type[0]))
                  {
                    v648 = *(v213 + 196);
                    *buf = 136446722;
                    *&buf[4] = "__nw_frame_array_claim";
                    *&buf[12] = 1024;
                    *&buf[14] = v648;
                    *&buf[18] = 1024;
                    *&buf[20] = v784;
                    v221 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                    goto LABEL_1753;
                  }
                }
              }

LABEL_1754:
              if (v217)
              {
                free(v217);
              }

              *(v213 + 196) = 0;
              goto LABEL_1757;
            }

            *(v213 + 196) = v215;
          }

LABEL_1165:
          if (!v784)
          {
LABEL_1776:
            if ((*(v201 + 776) & 2) != 0)
            {
LABEL_1778:
              *(v780 + 748) = *(v780 + 748) & 0xFFFFFFEF | (16 * ((BYTE13(v822) >> 3) & 1));
              v675 = HIDWORD(v800);
              v676 = sbappendstream_rcvdemux(v201, v779, SHIDWORD(v800));
              if (v757 && v676)
              {
                *v757 = 1;
              }

              *(v780 + 316) += v778;
              v677 = *(tcp_cc_algo_list[*(v780 + 272)] + 96);
              if (v677 && v677(v780, &v822))
              {
                v678 = *(v780 + 88);
                if ((v678 & 2) == 0)
                {
                  *(v780 + 88) = v678 | 2;
                  *(v780 + 32) = *(nw_tcp_access_globals(*(*(v780 + 80) + 224)) + 308) - *(v780 + 64) + 100;
                }
              }

              else
              {
                *(v780 + 88) |= 1u;
                tcp_output(v780);
              }

              tcp_adaptive_rwtimo_check(v780, v675);
              if (v675 >= 1 && *(v780 + 1001))
              {
                *(v780 + 1001) = 0;
              }

              tcp_check_timer_state(v780);
              (*(*(v201 + 8) + 24))(v201, 1, v759);
              *v795 = 0;
              v679 = *v779;
              if (*v779)
              {
                *(v679 + 40) = type;
                v680 = v779[1];
                *type = v679;
                v802 = v680;
                *v779 = 0;
                v779[1] = v779;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 0x40000000;
                *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
                *v805 = &__block_descriptor_tmp_290;
                v805[8] = 1;
                do
                {
                  v681 = *type;
                  if (!*type)
                  {
                    break;
                  }

                  nw_frame_array_remove();
                }

                while (((*&buf[16])(buf, v681) & 1) != 0);
              }

              goto LABEL_60;
            }

LABEL_1777:
            if (__nwlog_is_datapath_logging_enabled())
            {
              v737 = __nwlog_tcp_log();
              if (os_log_type_enabled(v737, OS_LOG_TYPE_DEBUG))
              {
                v738 = &unk_188A285CF;
                *&buf[4] = "tcp_input";
                *buf = 136446722;
                if (v201)
                {
                  v738 = (v201 + 556);
                }

                *&buf[12] = 2082;
                *&buf[14] = v738;
                *&buf[22] = 1024;
                *v805 = HIDWORD(v800);
                _os_log_impl(&dword_1889BA000, v737, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s queueing frame of length %u - fastpath", buf, 0x1Cu);
              }
            }

            goto LABEL_1778;
          }

LABEL_1757:
          v664 = 0;
          if (v784 && (v665 = *v779) != 0)
          {
            v664 = 0;
            while (1)
            {
              v666 = *(v665 + 52);
              v667 = *(v665 + 56);
              v668 = *(v665 + 60);
              v669 = v666 - (v667 + v668);
              if (v669 >= v784 - v664)
              {
                v669 = v784 - v664;
              }

              v670 = v666 ? v669 : 0;
              v671 = v667 + v670;
              if (v667 + v670 <= v666 - v668)
              {
                *(v665 + 56) = v671;
              }

              else
              {
                v672 = __nwlog_obj();
                if (os_log_type_enabled(v672, OS_LOG_TYPE_ERROR))
                {
                  v673 = *(v665 + 52);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_claim_internal";
                  *&buf[12] = 1024;
                  *&buf[14] = v671;
                  *&buf[18] = 1024;
                  *&buf[20] = v673;
                  *v805 = 1024;
                  *&v805[2] = v668;
                  _os_log_impl(&dword_1889BA000, v672, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                }
              }

              v664 += v670;
              if (v664 == v784)
              {
                break;
              }

              if (v664 < v784)
              {
                v665 = *(v665 + 32);
                if (v665)
                {
                  continue;
                }
              }

              goto LABEL_1772;
            }
          }

          else
          {
LABEL_1772:
            if (v664 != v784)
            {
              v674 = __nwlog_obj();
              if (os_log_type_enabled(v674, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "__nw_frame_array_claim";
                *&buf[12] = 1024;
                *&buf[14] = v664;
                *&buf[18] = 1024;
                *&buf[20] = v784;
                _os_log_impl(&dword_1889BA000, v674, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
              }
            }
          }

          if (!v201)
          {
            goto LABEL_1777;
          }

          goto LABEL_1776;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
        v733 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v803 = 0;
        if (__nwlog_fault())
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v734 = __nwlog_obj();
            v735 = type[0];
            if (!os_log_type_enabled(v734, type[0]))
            {
              goto LABEL_1907;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            v736 = "%{public}s called with null frame";
LABEL_1905:
            v746 = v734;
            v747 = v735;
LABEL_1906:
            _os_log_impl(&dword_1889BA000, v746, v747, v736, buf, 0xCu);
            goto LABEL_1907;
          }

          if (v803 != 1)
          {
            v734 = __nwlog_obj();
            v735 = type[0];
            if (!os_log_type_enabled(v734, type[0]))
            {
              goto LABEL_1907;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            v736 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_1905;
          }

          v741 = __nw_create_backtrace_string();
          v742 = __nwlog_obj();
          v743 = type[0];
          v744 = os_log_type_enabled(v742, type[0]);
          if (v741)
          {
            if (v744)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_is_single_ip_aggregate";
              *&buf[12] = 2082;
              *&buf[14] = v741;
              _os_log_impl(&dword_1889BA000, v742, v743, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v741);
            goto LABEL_1907;
          }

          if (v744)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            v736 = "%{public}s called with null frame, no backtrace";
            v746 = v742;
            v747 = v743;
            goto LABEL_1906;
          }
        }

LABEL_1907:
        if (v733)
        {
          free(v733);
        }

        goto LABEL_1165;
      }

LABEL_482:
      *(*(a3 + 272) + 8) += v786;
      goto LABEL_483;
    }

LABEL_478:
    ++**(a3 + 272);
    goto LABEL_479;
  }

  a1 = v779;
  v144 = v771;
  v157 = v786;
  if (DWORD2(v822) - v200 <= 0 && DWORD2(v822) - v203 >= 1 && (v199 & 0x200000) == 0 && *(v780 + 148) >= *(v780 + 152))
  {
    if ((*(v780 + 748) & 0x20) != 0)
    {
      a1 = v779;
      v144 = v771;
      v157 = v786;
      if (!HIBYTE(v797[0]) && !*(v780 + 536))
      {
        goto LABEL_1135;
      }
    }

    else
    {
      a1 = v779;
      v144 = v771;
      v157 = v786;
      if (*(v780 + 8) < *(v780 + 322))
      {
LABEL_1135:
        v454 = *(v780 + 1064);
        if (v454)
        {
          ++*(v454 + 544);
        }

        tcp_bad_rexmt_check(v780, &v822, v797);
        tcp_compute_rtt(v780, v797, &v822);
        v455 = DWORD2(v822);
        v456 = *(v780 + 92);
        v457 = DWORD2(v822) - v456;
        if (DWORD2(v822) - v456 >= 0)
        {
          goto LABEL_1138;
        }

        v739 = __nwlog_obj();
        os_log_type_enabled(v739, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "tcp_input";
        v740 = _os_log_send_and_compose_impl();
        if (!__nwlog_should_abort())
        {
          free(v740);
          v455 = DWORD2(v822);
          v456 = *(v780 + 92);
          v457 = DWORD2(v822) - v456;
LABEL_1138:
          v458 = *(v780 + 1064);
          if (v458)
          {
            v459.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v459.i64[1] = v457;
            v458[10] = vaddq_s64(v458[10], v459);
          }

          if ((*(v780 + 2096) & 2) != 0 && (*(v780 + 336) & 4) != 0)
          {
            v460 = *(v780 + 200);
            if (v457 / v460 * v460 == v457)
            {
              v461 = v457 / v460;
            }

            else
            {
              v461 = v457 / v460 + 1;
            }

            *(v780 + 308) += v461;
            if (v455 == v456)
            {
              v462 = 0;
              if ((v797[0] & 1) != 0 && DWORD2(v797[0]))
              {
                v462 = DWORD2(v797[0]) - *(v780 + 392) > 0;
              }
            }

            else
            {
              v462 = 0;
            }

            if (v457 > 0 || v462)
            {
              tcp_process_accecn(v780, v797, &v822, v461, v755);
            }
          }

          if ((*(v780 + 748) & 0x20400020) == 0x20000020)
          {
            tcp_segs_doack(v780, DWORD2(v822), v797[0], SDWORD2(v797[0]));
            if (*(v780 + 552) - DWORD2(v822) < 0)
            {
              *(v780 + 552) = DWORD2(v822);
            }
          }

          v632 = *(tcp_cc_algo_list[*(v780 + 272)] + 48);
          if (v632)
          {
            v632(v780, &v822);
          }

          sbdrop((v15 + 384), v457);
          tcp_sbsnd_trim(v15 + 384);
          v633 = *(v780 + 156);
          v634 = DWORD2(v822);
          if (*(v780 + 92) - v633 >= 1 && DWORD2(v822) - v633 <= 0)
          {
            *(v780 + 156) = DWORD2(v822) - 1;
          }

          tcp_update_snd_una(v780, v634);
          *(v780 + 234) = 0;
          *(v780 + 256) = 0;
          *(v780 + 108) = DWORD2(v822);
          if (*(v780 + 8) >= 1)
          {
            *(v780 + 8) = 0;
            *(v780 + 322) = 3;
          }

          *(v780 + 620) = 0;
          if (*(v780 + 92) == *(v780 + 96))
          {
            *(v780 + 16) = 0;
            *(v780 + 24) = 0;
            *(v780 + 2077) &= ~0x80u;
          }

          else if (!*(v780 + 36))
          {
            tcp_set_rto(v780);
          }

          if (*(v780 + 960))
          {
            v635 = *(v780 + 968);
            if (v635 - *(v780 + 96) > 0)
            {
              goto LABEL_1677;
            }

            v636 = *(v780 + 144);
            if (v636 >= *(sysctls + 116))
            {
              v636 = *(sysctls + 116);
            }

            if ((v635 - *(v780 + 92) + v636) < 0)
            {
LABEL_1677:
              tcp_rxtseg_clean(v780);
            }
          }

          if ((*(v780 + 748) & 8) != 0 && *(v780 + 776))
          {
            tcp_bwmeas_check(v780);
          }

          v637 = *(v15 + 32);
          if (v637)
          {
            v638 = *v637;
            if (v638)
            {
              v638(v15);
            }
          }

          if (!*(v15 + 384) && (*(v780 + 88) & 1) == 0 || !tcp_output(v780) || (*(v794 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || ((*MEMORY[0x1E6977EF8])(v794, *(v794 + 88)) & 1) != 0)
          {
            tcp_tfo_rcv_ack(v780, &v822);
            tcp_check_timer_state(v780);
            (*(*(v15 + 8) + 24))(v15, 1, v7);
            v639 = *v779;
            if (*v779)
            {
              *(v639 + 40) = type;
              v640 = v779[1];
              *type = v639;
              v802 = v640;
              *v779 = 0;
              v779[1] = v779;
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
              *v805 = &__block_descriptor_tmp_290;
              v805[8] = 1;
              do
              {
                v641 = *type;
                if (!*type)
                {
                  break;
                }

                nw_frame_array_remove();
              }

              while (((*&buf[16])(buf, v641) & 1) != 0);
            }

            goto LABEL_60;
          }

          if ((*(v15 + 776) & 2) == 0)
          {
            v745 = __nwlog_tcp_log();
            if (os_log_type_enabled(v745, OS_LOG_TYPE_INFO))
            {
              *buf = 136446466;
              *&buf[4] = "tcp_input";
              *&buf[12] = 2082;
              *&buf[14] = v15 + 556;
              _os_log_impl(&dword_1889BA000, v745, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping input packet since frame is no longer valid", buf, 0x16u);
            }
          }

          *(v780 + 1064) = 0;
          goto LABEL_1349;
        }

        goto LABEL_1926;
      }
    }
  }

LABEL_525:
  (*(*(v15 + 8) + 32))(v15, 0);
  v159 = v780;
  v236 = tcp_sbspace(v780);
  v237 = *(v780 + 88);
  if ((v237 & 0x80000) != 0)
  {
    v238 = *(sysctls + 48);
    v239 = v236 >= v238 ? *(sysctls + 48) : v236;
    if (v238 > 0)
    {
      v236 = v239;
    }
  }

  v240 = *(v780 + 120);
  if (v236 <= *(v780 + 124) - v240)
  {
    v241 = *(v780 + 124) - v240;
  }

  else
  {
    v241 = v236;
  }

  *(v780 + 128) = v241;
  v242 = *(v780 + 12);
  v243 = v763;
  if (v242 > 2)
  {
    v773 = v156;
    if (v242 == 3)
    {
      v244 = v767;
      if ((v773 & 0x10) != 0 && (DWORD2(v822) - *(v780 + 92) < 1 || DWORD2(v822) - *(v780 + 96) >= 1))
      {
        v158 = v760;
        if (!v791)
        {
          goto LABEL_306;
        }

        v260 = 1088;
        goto LABEL_711;
      }

      if ((v773 & 2) != 0 && *(v780 + 116) == DWORD1(v822) && (v797[0] & 0x20) == 0)
      {
        *(v780 + 88) = v237 & 0xFFFFFFBF;
      }
    }

    else
    {
      v244 = v767;
      if (v242 == 4 && (v773 & 2) != 0 && v157 <= 0)
      {
        if (!tcp_is_ack_ratelimited(v780))
        {
          v253 = *(v780 + 1064);
          if (v253)
          {
            ++*(v253 + 104);
          }

          goto LABEL_994;
        }

        goto LABEL_1387;
      }
    }
  }

  else
  {
    if (v242 == 1)
    {
      tcp_dooptions(v780, v763, v761, &v822, v797);
      tcp_finalize_options(v780, v797, v764);
      if ((*(v780 + 750) & 0x40) != 0)
      {
        v251 = tcp_tfo_syn(v780, v797);
      }

      else
      {
        v251 = 0;
      }

      v261 = tcp_new_isn(v780);
      v262 = DWORD1(v822);
      *(v780 + 112) = v261;
      *(v780 + 116) = v262;
      *(v780 + 156) = v261;
      *(v780 + 96) = v261;
      *(v780 + 100) = v261;
      *(v780 + 92) = v261;
      if (*(v15 + 24))
      {
        v263 = *(v15 + 24);
        v264 = nw_protocol_tcp_get_all_stats();
        v261 = *(v780 + 92);
        if (v264)
        {
          *(v264 + 108) = *(v780 + 96) - v261;
          v261 = *(v780 + 92);
        }
      }

      v265 = *(v780 + 116) + 1;
      *(v780 + 1924) = v265;
      *(v780 + 120) = v265;
      *(v780 + 124) = v265;
      *(v780 + 156) = v261;
      *(v780 + 144) = v758;
      *(v780 + 260) = v758;
      if (*(v15 + 24))
      {
        v266 = nw_protocol_tcp_get_all_stats();
        if (v266)
        {
          *(v266 + 112) = *(v780 + 144);
        }
      }

      *(v780 + 88) |= 1u;
      *(v780 + 316) = 0;
      *(v780 + 12) = 3;
      if ((*(v15 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v621 = __nwlog_tcp_log();
          if (os_log_type_enabled(v621, OS_LOG_TYPE_DEBUG))
          {
            v622 = tcpstates[*(v780 + 12)];
            *buf = 136446722;
            *&buf[4] = "tcp_input";
            *&buf[12] = 2082;
            *&buf[14] = v15 + 556;
            *&buf[22] = 2082;
            *v805 = v622;
            _os_log_impl(&dword_1889BA000, v621, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
          }
        }
      }

      v267 = v156;
      if (*(v15 + 24))
      {
        v268 = nw_protocol_tcp_get_all_stats();
        if (v268)
        {
          *(v268 + 136) = 3;
        }
      }

      v269 = *(v780 + 672);
      if (!v269)
      {
        v269 = *(sysctls + 184);
      }

      *(v780 + 40) = *(nw_tcp_access_globals(*(*(v780 + 80) + 224)) + 308) + v269 - *(v780 + 64);
      if (!*(a3 + 460))
      {
        v270 = inp_calc_flowhash_flow_hash++;
        *(a3 + 460) = v270;
      }

      *(v15 + 364) &= ~0x40000u;
      v271 = *(v780 + 1064);
      v272 = v267;
      if (v271)
      {
        ++*(v271 + 384);
      }

      v252 = v780;
      tcp_input_process_accecn_syn(v780, (v267 | (BYTE12(v822) << 8)) & 0x1C0, v144);
      v760 = 0;
      v273 = v768;
      goto LABEL_881;
    }

    v773 = v156;
    v244 = v767;
    if (v242 == 2)
    {
      v245 = v773;
      if ((v773 & 0x10) == 0)
      {
        if ((v773 & 6) != 2)
        {
          goto LABEL_1387;
        }

LABEL_539:
        v246 = HIWORD(v822);
        *(v159 + 144) = HIWORD(v822);
        *(v159 + 260) = v246;
        if (*(v15 + 24))
        {
          v247 = nw_protocol_tcp_get_all_stats();
          if (v247)
          {
            *(v247 + 112) = *(v159 + 144);
          }
        }

        v248 = DWORD1(v822);
        v249 = DWORD1(v822) + 1;
        *(v159 + 1924) = DWORD1(v822) + 1;
        *(v159 + 116) = v248;
        *(v159 + 120) = v249;
        *(v159 + 124) = v249;
        if ((v245 & 0x10) == 0)
        {
          *(v159 + 88) |= 1u;
          *(v159 + 28) = 0;
          *(v159 + 12) = 3;
          if ((*(v15 + 776) & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v661 = __nwlog_tcp_log();
              if (os_log_type_enabled(v661, OS_LOG_TYPE_DEBUG))
              {
                v662 = tcpstates[*(v780 + 12)];
                *buf = 136446722;
                *&buf[4] = "tcp_input";
                *&buf[12] = 2082;
                *&buf[14] = v15 + 556;
                *&buf[22] = 2082;
                *v805 = v662;
                _os_log_impl(&dword_1889BA000, v661, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
              }
            }
          }

          if (*(v15 + 24))
          {
            v250 = nw_protocol_tcp_get_all_stats();
            if (v250)
            {
              *(v250 + 136) = 3;
            }
          }

          v251 = 0;
          v252 = v780;
          *(v780 + 748) &= ~0x400000u;
          goto LABEL_880;
        }

        v278 = *(v159 + 1064);
        if (v278)
        {
          ++v278[51];
        }

        if ((v245 & 0xC0) == 0x40)
        {
          v279 = *(v780 + 336);
          *(v780 + 336) = v279 | 2;
          if (v279)
          {
            v280 = *(v780 + 80);
            buf[0] = 1;
            (*(*(v280 + 2280) + 24))(*(v280 + 224), buf);
            v281 = *(v780 + 1064);
            if (v281)
            {
              ++*(v281 + 776);
            }
          }

          v282 = v780;
          v283 = *(v780 + 336);
          if ((v283 & 0x100000) != 0)
          {
            *(v780 + 336) = v283 & 0xFFEFFFFA | 5;
            if (*(v780 + 348) == 2)
            {
              v284 = 3;
LABEL_784:
              *(v282 + 348) = v284;
            }
          }
        }

        else if ((*(v780 + 2096) & 1) != 0 && (v314 = (v773 | (BYTE12(v822) << 8)) & 0x1C0) != 0 && v314 != 448)
        {
          *(v780 + 412) = 5;
          *(v780 + 448) = vdupq_n_s64(1uLL);
          *(v780 + 464) = 0;
          v315 = *(v780 + 336);
          v316 = v315 | 0x400000;
          *(v780 + 336) = v315 | 0x400000;
          v317 = (v314 - 128) >> 6;
          if (v317 > 1)
          {
            if (v317 == 2)
            {
              v316 = v315 & 0xFF9FFFFB | 0x600000;
              *(v780 + 336) = v316;
              *(v780 + 348) = 8;
              if (v278)
              {
                ++v278[104];
              }
            }

            else if (v317 == 4)
            {
              *(v780 + 348) = 8;
              v316 = v315 & 0xFF9FFFFB | 0x600000;
              *(v780 + 336) = v316;
              *(v780 + 148) = 2 * *(v780 + 200);
              if (v278)
              {
                ++v278[105];
              }
            }
          }

          else if (v317)
          {
            if (v317 == 1)
            {
              v316 = v315 & 0xFF9FFFFB | 0x600000;
              *(v780 + 336) = v316;
              *(v780 + 348) = 8;
              if (v278)
              {
                ++v278[103];
              }
            }
          }

          else
          {
            v316 = v315 | 0x600004;
            *(v780 + 336) = v315 | 0x600004;
            *(v780 + 348) = 7;
            if (v278)
            {
              ++v278[102];
            }
          }

          *(v780 + 2096) = *(v780 + 2096) & 0xFD | (2 * ((~v316 & 0x300000) == 0));
          if ((~v316 & 3) == 0)
          {
            v446 = *(v780 + 80);
            buf[0] = 1;
            (*(*(v446 + 2280) + 24))(*(v446 + 224), buf);
            v447 = *(v780 + 1064);
            if (v447)
            {
              ++*(v447 + 776);
            }
          }

          v282 = v780;
          *(v780 + 408) = 5;
          *(v780 + 424) = 1;
          *(v780 + 432) = xmmword_188A18480;
          tcp_input_ip_ecn(v780, a3, v786, v778, v771);
          *(v780 + 336) |= dword_188A184C0[v771];
          if (v797[0])
          {
            if (DWORD2(v797[0]))
            {
              v448 = *(v780 + 392);
              if (!v448 || ((DWORD2(v797[0]) - v448) & 0x80000000) == 0)
              {
                *(v780 + 392) = DWORD2(v797[0]);
              }
            }
          }
        }

        else
        {
          if ((*(v780 + 336) & 0x100001) != 0 && !*(v780 + 234))
          {
            v331 = *(v780 + 80);
            buf[0] = 1;
            (*(*(v331 + 2280) + 24))(*(v331 + 224), buf);
            v332 = *(v780 + 1064);
            if (v332)
            {
              ++*(v332 + 784);
            }
          }

          v333 = *(v780 + 336);
          if ((v333 & 1) != 0 && *(v780 + 234) == 1 || (v333 & 0x100000) != 0 && *(v780 + 234) == 2)
          {
            tcp_heuristic_ecn_loss(v780);
            v333 = *(v780 + 336);
          }

          *(v780 + 336) = v333 & 0xFFFFFFFB;
          if ((v333 & 0x100) != 0 && *(v780 + 234) <= 2u && *(v780 + 348) == 2)
          {
            *(v780 + 348) = 5;
          }

          v282 = v780;
          if (*(v780 + 348) == 2)
          {
            v284 = 4;
            goto LABEL_784;
          }
        }

        v334 = *(v282 + 88);
        if ((~v334 & 0x60) != 0)
        {
          v335 = *(v282 + 269);
        }

        else
        {
          *(v282 + 268) = *(v282 + 271);
          v335 = *(v282 + 270);
          *(v282 + 269) = v335;
        }

        v336 = 0xFFFF << v335;
        if (*(v282 + 128) >= v336)
        {
          v337 = v336;
        }

        else
        {
          v337 = *(v282 + 128);
        }

        if (*(sysctls + 284) == 1 && (v334 & 0x180) == 0x180 && (*(sysctls + 40) == 1 || (*(v15 + 369) & 0x40) != 0))
        {
          if (off_1ED4BF6F8)
          {
            v338 = off_1ED4BF6F8(v780);
            v339 = v337 >= v338 ? v338 : v337;
            if (v338)
            {
              v337 = v339;
            }
          }
        }

        *(v780 + 124) += v337;
        v340 = *(v780 + 92) + 1;
        *(v780 + 92) = v340;
        if (*(v15 + 24))
        {
          v341 = nw_protocol_tcp_get_all_stats();
          v340 = *(v780 + 92);
          if (v341)
          {
            *(v341 + 108) = *(v780 + 96) - v340;
            v340 = *(v780 + 92);
          }
        }

        v342 = v780;
        v343 = *(v780 + 100);
        if (v343 - v340 < 0)
        {
          *(v780 + 100) = v340;
          v343 = v340;
        }

        v344 = DWORD2(v822);
        if (v343 - DWORD2(v822) >= 1)
        {
          if ((*(v780 + 751) & 1) == 0 && (*(v780 + 998) & 0x40) != 0)
          {
            v345 = *(v780 + 96);
            if (v345 == DWORD2(v822) + 1 && v345 > v340 + 1)
            {
              tcp_heuristic_tfo_middlebox(v780);
              *(v15 + 378) = 96;
              user_north_signal_error(v15);
              *(v780 + 998) |= 0x4000u;
              v344 = DWORD2(v822);
            }
          }

          v342 = v780;
          *(v780 + 96) = v344;
          *(v780 + 100) = v344;
        }

        if (*(v15 + 24))
        {
          v346 = nw_protocol_tcp_get_all_stats();
          if (v346)
          {
            *(v346 + 108) = *(v342 + 96) - *(v342 + 92);
          }
        }

        *(v342 + 316) += v778;
        v347 = v756 ^ 1;
        if ((*(v342 + 2096) & 2) == 0)
        {
          v347 = 1;
        }

        if ((v347 & 1) == 0)
        {
          *(v342 + 318) += v778;
        }

        v348 = *(tcp_cc_algo_list[*(v342 + 272)] + 96);
        if (v348)
        {
          v349 = v348(v342, &v822);
          v350 = *(v342 + 88);
          if (v349 && HIDWORD(v800))
          {
            v351 = v780;
            if ((v350 & 2) == 0)
            {
              *(v780 + 88) = v350 | 2;
              *(v780 + 32) = *(nw_tcp_access_globals(*(*(v780 + 80) + 224)) + 308) - *(v780 + 64) + 100;
            }

LABEL_827:
            *(v351 + 172) = *v770;
            tcp_sbrcv_tstmp_check(v351);
            if ((*(v351 + 89) & 8) != 0)
            {
              *(v351 + 12) = 6;
              if ((*(v15 + 776) & 2) == 0)
              {
                if (__nwlog_is_datapath_logging_enabled())
                {
                  v693 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v693, OS_LOG_TYPE_DEBUG))
                  {
                    v694 = tcpstates[*(v780 + 12)];
                    *buf = 136446722;
                    *&buf[4] = "tcp_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v15 + 556;
                    *&buf[22] = 2082;
                    *v805 = v694;
                    _os_log_impl(&dword_1889BA000, v693, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                  }
                }
              }

              if (*(v15 + 24))
              {
                v356 = nw_protocol_tcp_get_all_stats();
                if (v356)
                {
                  *(v356 + 136) = 6;
                }
              }

              *(v780 + 88) &= ~0x800u;
              v773 &= 0xFFFFFFF9;
            }

            else
            {
              *(v351 + 12) = 4;
              if ((*(v15 + 776) & 2) == 0)
              {
                if (__nwlog_is_datapath_logging_enabled())
                {
                  v691 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v691, OS_LOG_TYPE_DEBUG))
                  {
                    v692 = tcpstates[*(v780 + 12)];
                    *buf = 136446722;
                    *&buf[4] = "tcp_input";
                    *&buf[12] = 2082;
                    *&buf[14] = v15 + 556;
                    *&buf[22] = 2082;
                    *v805 = v692;
                    _os_log_impl(&dword_1889BA000, v691, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                  }
                }
              }

              if (*(v15 + 24))
              {
                v352 = nw_protocol_tcp_get_all_stats();
                if (v352)
                {
                  *(v352 + 136) = 4;
                }
              }

              v353 = *(v780 + 668);
              v354 = *(*(v780 + 80) + 224);
              if (!v353 || (*(v354 + 372) & 8) == 0)
              {
                v353 = *(sysctls + 188);
              }

              *(v780 + 40) = *(nw_tcp_access_globals(v354) + 308) + v353 - *(v780 + 64);
              if (*(v15 + 24))
              {
                v355 = nw_protocol_tcp_get_all_stats();
                if (v355)
                {
                  ++*(v355 + 64);
                }
              }
            }

            v252 = v780;
            *(v780 + 320) = 16;
            if ((*(v780 + 996) & 0xC) != 0 || (*(v780 + 998) & 0x40) != 0)
            {
              tcp_tfo_synack(v780, v797);
              v357 = *(v780 + 998);
              if ((v357 & 0x40) == 0 || *(v780 + 92) - DWORD2(v822) >= 0)
              {
                v251 = 1;
                v252 = v780;
LABEL_880:
                v144 = v771;
                v273 = v768;
                v272 = v773;
LABEL_881:
                if (*(v794 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (v366 = (*MEMORY[0x1E6977EF8])(v794, *(v794 + 88)), v273 = v768, (v366))
                {
                  ++DWORD1(v822);
                  if (&v822 != v273)
                  {
                    ++*(v273 + 4);
                  }

                  v367 = HIDWORD(v800);
                  v368 = v252[32];
                  v369 = HIDWORD(v800) - v368;
                  if (SHIDWORD(v800) <= v368)
                  {
                    a1 = v779;
                    goto LABEL_932;
                  }

                  v370 = *v779;
                  v753 = v15;
                  v787 = v251;
                  if (*v779)
                  {
                    v371 = HIDWORD(v800) - v368;
                    if ((*(v370 + 204) & 0x80) != 0)
                    {
                      v372 = *(v370 + 196);
                      if (v369 > v372)
                      {
                        v373 = HIDWORD(v800);
                        v774 = v272;
                        __nwlog_obj();
                        v374 = *(v370 + 196);
                        *buf = 136446722;
                        *&buf[4] = "__nw_frame_array_claim";
                        *&buf[12] = 1024;
                        *&buf[14] = v374;
                        *&buf[18] = 1024;
                        *&buf[20] = v369;
                        v375 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        v803 = 0;
                        if (__nwlog_fault())
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v376 = __nwlog_obj();
                            v377 = type[0];
                            if (os_log_type_enabled(v376, type[0]))
                            {
                              v378 = *(v370 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v378;
                              *&buf[18] = 1024;
                              *&buf[20] = v369;
                              v379 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_905:
                              v385 = v376;
LABEL_906:
                              _os_log_impl(&dword_1889BA000, v385, v377, v379, buf, 0x18u);
                            }
                          }

                          else if (v803 == 1)
                          {
                            v380 = __nw_create_backtrace_string();
                            v381 = __nwlog_obj();
                            v377 = type[0];
                            v382 = os_log_type_enabled(v381, type[0]);
                            if (v380)
                            {
                              if (v382)
                              {
                                v383 = *(v370 + 196);
                                *buf = 136446978;
                                *&buf[4] = "__nw_frame_array_claim";
                                *&buf[12] = 1024;
                                *&buf[14] = v383;
                                *&buf[18] = 1024;
                                *&buf[20] = v369;
                                *v805 = 2082;
                                *&v805[2] = v380;
                                _os_log_impl(&dword_1889BA000, v381, v377, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
                              }

                              free(v380);
                              goto LABEL_907;
                            }

                            if (v382)
                            {
                              v440 = *(v370 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v440;
                              *&buf[18] = 1024;
                              *&buf[20] = v369;
                              v379 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
                              v385 = v381;
                              goto LABEL_906;
                            }
                          }

                          else
                          {
                            v376 = __nwlog_obj();
                            v377 = type[0];
                            if (os_log_type_enabled(v376, type[0]))
                            {
                              v384 = *(v370 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v384;
                              *&buf[18] = 1024;
                              *&buf[20] = v369;
                              v379 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                              goto LABEL_905;
                            }
                          }
                        }

LABEL_907:
                        if (v375)
                        {
                          free(v375);
                        }

                        *(v370 + 196) = 0;
                        v144 = v771;
                        v272 = v774;
                        v367 = v373;
                        v371 = v369;
                        goto LABEL_910;
                      }

                      *(v370 + 196) = v372 - v369;
                    }

LABEL_896:
                    if (v367 == v368)
                    {
LABEL_929:
                      v252 = v780;
                      v367 = *(v780 + 128);
                      HIDWORD(v800) = v367;
                      v272 &= ~1u;
                      v397 = *(v780 + 1064);
                      if (v397)
                      {
                        v398.i64[0] = vdupq_n_s64(1uLL).u64[0];
                        v398.i64[1] = v371;
                        v397[17] = vaddq_s64(v397[17], v398);
                      }

                      a1 = v779;
                      v15 = v753;
                      v251 = v787;
LABEL_932:
                      v399 = DWORD1(v822);
                      v252[26] = DWORD1(v822) - 1;
                      v252[34] = v399;
                      v400 = 0;
                      if ((v272 & 0x10) == 0)
                      {
                        v765 = 0;
LABEL_934:
                        v401 = v758;
                        goto LABEL_1369;
                      }

LABEL_1202:
                      v473 = v252[23];
                      v474 = v252;
                      v475 = DWORD2(v822) - v473;
                      if (DWORD2(v822) - v473 >= 0)
                      {
                        v476 = *(v474 + 133);
                        if (v476)
                        {
                          v477.i64[0] = vdupq_n_s64(1uLL).u64[0];
                          v477.i64[1] = (DWORD2(v822) - v473);
                          v476[10] = vaddq_s64(v476[10], v477);
                        }

                        tcp_bad_rexmt_check(v780, &v822, v797);
                        tcp_compute_rtt(v780, v797, &v822);
                        v478 = 0;
                        *(v780 + 234) = 0;
                        *(v780 + 256) = 0;
                        if (*(v780 + 12) >= 4)
                        {
                          v478 = *(sysctls + 172);
                        }

                        v479 = *(v780 + 236);
                        v480 = (*(v780 + 212) + (*(v780 + 204) >> 3)) >> 2;
                        if (v479 > v480)
                        {
                          v480 = *(v780 + 236);
                        }

                        v481 = v480 + v478;
                        *(v780 + 196) = v481;
                        if (v481 >= v479)
                        {
                          if (v481 < 0xFA01)
                          {
LABEL_1213:
                            v788 = v251;
                            v773 = v272;
                            if (DWORD2(v822) == *(v780 + 96))
                            {
                              *(v780 + 16) = 0;
                              *(v780 + 24) = 0;
                              *(v780 + 2077) &= ~0x80u;
                              v765 = 1;
                            }

                            else
                            {
                              if (!*(v780 + 36))
                              {
                                tcp_set_rto(v780);
                              }

                              v765 = 0;
                            }

                            if (!v475)
                            {
                              v400 = 0;
                              a1 = v779;
LABEL_1368:
                              v7 = v759;
                              v144 = v771;
                              v401 = v758;
                              v251 = v788;
LABEL_1369:
                              v539 = HIDWORD(v800);
                              updated = tcp_update_window(v780, v272, &v822, v401, SHIDWORD(v800));
                              if ((v272 & 0x20) == 0 || !v823 || *(v780 + 12) > 9)
                              {
                                v541 = *(v780 + 120);
                                if (v541 - *(v780 + 136) >= 1)
                                {
                                  *(v780 + 136) = v541;
                                }

LABEL_1379:
                                if (v251)
                                {
                                  soisconnected(v15);
                                  if (a5)
                                  {
                                    *a5 = 1;
                                  }
                                }

                                else if (v400)
                                {
                                  *(v15 + 376) = *(v15 + 376) & 0xDFC1 | 0x2030;
                                  v542 = *(v15 + 32);
                                  if (v542)
                                  {
                                    v543 = *(v542 + 56);
                                    if (v543)
                                    {
                                      v543(v15);
                                    }
                                  }
                                }

                                if (*(a3 + 232) == 3)
                                {
                                  goto LABEL_1387;
                                }

                                if (v539 | v272 & 1)
                                {
                                  v544 = *(v780 + 12);
                                  v545 = v795;
                                  if (v544 <= 9)
                                  {
                                    v754 = v15;
                                    if (v544 <= 3 && (v544 != 3 || (*(v780 + 996) & 2) == 0))
                                    {
                                      v549 = 1;
LABEL_1571:
                                      a1 = v779;
                                      v545 = v795;
                                      v15 = v754;
                                      v7 = v759;
                                      v144 = v771;
                                      goto LABEL_1572;
                                    }

                                    v793 = DWORD1(v822) + v539;
                                    v789 = DWORD1(v822);
                                    if (DWORD1(v822) != *(v780 + 120) || *v780)
                                    {
                                      *type = 0;
                                      if (*(v780 + 1924) - v793 < 0)
                                      {
                                        *(v780 + 1924) = v793;
                                        if (v797[0])
                                        {
                                          *(v780 + 1928) = DWORD1(v797[0]);
                                        }
                                      }

                                      tcp_compute_rcv_rtt(v780, v797, &v822);
                                      tcp_sbrcv_grow(v780, v15 + 464, v797, v539);
                                      if (*(sysctls + 284) == 1 && (~*(v780 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v15 + 369) & 0x40) != 0) && off_1ED4BF6F0)
                                      {
                                        off_1ED4BF6F0(v780, &v822, v797, v539);
                                      }

                                      v546 = tcp_reass(v780, &v800 + 1, v779, v791, v784, v757, type);
                                      if (*type)
                                      {
                                        if ((*(v794 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v794, *(v794 + 88)) & 1) == 0)
                                        {
                                          if (!v15 || (*(v15 + 776) & 2) == 0)
                                          {
                                            v689 = __nwlog_tcp_log();
                                            if (os_log_type_enabled(v689, OS_LOG_TYPE_INFO))
                                            {
                                              v690 = &unk_188A285CF;
                                              if (v15)
                                              {
                                                v690 = (v15 + 556);
                                              }

                                              *buf = 136446466;
                                              *&buf[4] = "tcp_input";
                                              *&buf[12] = 2082;
                                              *&buf[14] = v690;
                                              _os_log_impl(&dword_1889BA000, v689, OS_LOG_TYPE_INFO, "%{public}s %{public}s frame no longer valid", buf, 0x16u);
                                            }
                                          }

                                          *(v780 + 1064) = 0;
                                        }

                                        v46 = 0;
                                        a1 = v779;
                                        v7 = v759;
                                        goto LABEL_1388;
                                      }

                                      v547 = v546;
                                      *(v780 + 88) |= 1u;
                                      v539 = HIDWORD(v800);
                                      if (v800 > 0)
                                      {
                                        v782 = 0;
                                        v548 = 1;
                                        goto LABEL_1565;
                                      }

                                      v782 = 0;
                                      v550 = BYTE13(v822);
LABEL_1415:
                                      if ((v550 & 1) == 0)
                                      {
                                        tcp_adaptive_rwtimo_check(v780, v539);
LABEL_1570:
                                        v549 = (v547 & 1) == 0;
                                        goto LABEL_1571;
                                      }

                                      v548 = 0;
LABEL_1565:
                                      if ((*(v780 + 748) & 0x20) != 0)
                                      {
                                        tcp_update_sack_list(v780, v789, v793 + (BYTE13(v822) & 1));
                                      }

                                      tcp_adaptive_rwtimo_check(v780, v539);
                                      if (v548 && *(v780 + 1001))
                                      {
                                        *(v780 + 1001) = 0;
                                      }

                                      goto LABEL_1570;
                                    }

                                    v551 = *v779;
                                    if (*v779)
                                    {
                                      if ((*(v551 + 204) & 0x80) != 0)
                                      {
                                        v552 = *(v551 + 196);
                                        if (v784 > v552)
                                        {
                                          __nwlog_obj();
                                          v553 = *(v551 + 196);
                                          *buf = 136446722;
                                          *&buf[4] = "__nw_frame_array_claim";
                                          *&buf[12] = 1024;
                                          *&buf[14] = v553;
                                          *&buf[18] = 1024;
                                          *&buf[20] = v784;
                                          v554 = _os_log_send_and_compose_impl();
                                          type[0] = OS_LOG_TYPE_ERROR;
                                          v803 = 0;
                                          if (__nwlog_fault())
                                          {
                                            if (type[0] == OS_LOG_TYPE_FAULT)
                                            {
                                              v555 = __nwlog_obj();
                                              v556 = type[0];
                                              if (os_log_type_enabled(v555, type[0]))
                                              {
                                                v557 = *(v551 + 196);
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v557;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v784;
                                                v558 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_1505:
                                                v586 = v555;
LABEL_1506:
                                                _os_log_impl(&dword_1889BA000, v586, v556, v558, buf, 0x18u);
                                              }
                                            }

                                            else if (v803 == 1)
                                            {
                                              v570 = __nw_create_backtrace_string();
                                              v571 = __nwlog_obj();
                                              v556 = type[0];
                                              v572 = os_log_type_enabled(v571, type[0]);
                                              if (v570)
                                              {
                                                if (v572)
                                                {
                                                  v573 = *(v551 + 196);
                                                  *buf = 136446978;
                                                  *&buf[4] = "__nw_frame_array_claim";
                                                  *&buf[12] = 1024;
                                                  *&buf[14] = v573;
                                                  *&buf[18] = 1024;
                                                  *&buf[20] = v784;
                                                  *v805 = 2082;
                                                  *&v805[2] = v570;
                                                  _os_log_impl(&dword_1889BA000, v571, v556, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
                                                }

                                                free(v570);
                                                goto LABEL_1507;
                                              }

                                              if (v572)
                                              {
                                                v624 = *(v551 + 196);
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v624;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v784;
                                                v558 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
                                                v586 = v571;
                                                goto LABEL_1506;
                                              }
                                            }

                                            else
                                            {
                                              v555 = __nwlog_obj();
                                              v556 = type[0];
                                              if (os_log_type_enabled(v555, type[0]))
                                              {
                                                v585 = *(v551 + 196);
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v585;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v784;
                                                v558 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                                                goto LABEL_1505;
                                              }
                                            }
                                          }

LABEL_1507:
                                          if (v554)
                                          {
                                            free(v554);
                                          }

                                          *(v551 + 196) = 0;
LABEL_1510:
                                          v587 = *v779;
                                          if (*v779)
                                          {
                                            v588 = 0;
                                            while (1)
                                            {
                                              v589 = *(v587 + 52);
                                              v590 = *(v587 + 56);
                                              v591 = *(v587 + 60);
                                              v592 = v589 - (v590 + v591);
                                              if (v592 >= v784 - v588)
                                              {
                                                v592 = v784 - v588;
                                              }

                                              v593 = v589 ? v592 : 0;
                                              v594 = v590 + v593;
                                              if (v590 + v593 <= v589 - v591)
                                              {
                                                *(v587 + 56) = v594;
                                              }

                                              else
                                              {
                                                v595 = __nwlog_obj();
                                                if (os_log_type_enabled(v595, OS_LOG_TYPE_ERROR))
                                                {
                                                  v596 = *(v587 + 52);
                                                  *buf = 136446978;
                                                  *&buf[4] = "__nw_frame_claim_internal";
                                                  *&buf[12] = 1024;
                                                  *&buf[14] = v594;
                                                  *&buf[18] = 1024;
                                                  *&buf[20] = v596;
                                                  *v805 = 1024;
                                                  *&v805[2] = v591;
                                                  _os_log_impl(&dword_1889BA000, v595, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                                                }
                                              }

                                              v588 += v593;
                                              if (v588 == v784)
                                              {
                                                break;
                                              }

                                              if (v588 < v784)
                                              {
                                                v587 = *(v587 + 32);
                                                if (v587)
                                                {
                                                  continue;
                                                }
                                              }

                                              goto LABEL_1526;
                                            }
                                          }

                                          else
                                          {
                                            v588 = 0;
LABEL_1526:
                                            if (v588 != v784)
                                            {
                                              v597 = __nwlog_obj();
                                              if (os_log_type_enabled(v597, OS_LOG_TYPE_ERROR))
                                              {
                                                *buf = 136446722;
                                                *&buf[4] = "__nw_frame_array_claim";
                                                *&buf[12] = 1024;
                                                *&buf[14] = v588;
                                                *&buf[18] = 1024;
                                                *&buf[20] = v784;
                                                _os_log_impl(&dword_1889BA000, v597, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
                                              }
                                            }
                                          }

LABEL_1529:
                                          if (!v754 || (*(v754 + 776) & 2) == 0)
                                          {
                                            if (__nwlog_is_datapath_logging_enabled())
                                            {
                                              v715 = __nwlog_tcp_log();
                                              if (os_log_type_enabled(v715, OS_LOG_TYPE_DEBUG))
                                              {
                                                v716 = (v754 + 556);
                                                *&buf[4] = "tcp_input";
                                                *buf = 136446722;
                                                if (!v754)
                                                {
                                                  v716 = &unk_188A285CF;
                                                }

                                                *&buf[12] = 2082;
                                                *&buf[14] = v716;
                                                *&buf[22] = 1024;
                                                *v805 = v539;
                                                _os_log_impl(&dword_1889BA000, v715, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s queueing frame of length %u - slowpath", buf, 0x1Cu);
                                              }
                                            }
                                          }

                                          *(v780 + 316) += v778;
                                          tcp_compute_rcv_rtt(v780, v797, &v822);
                                          v598 = *(tcp_cc_algo_list[*(v780 + 272)] + 96);
                                          if (v598)
                                          {
                                            v599 = v598(v780, &v822);
                                            v600 = *(v780 + 88);
                                            if (v599)
                                            {
                                              v601 = (*(v780 + 88) & 1) == 0;
                                            }

                                            else
                                            {
                                              v601 = 0;
                                            }

                                            if (v601)
                                            {
                                              if ((v600 & 2) == 0)
                                              {
                                                *(v780 + 88) = v600 | 2;
                                                *(v780 + 32) = *(nw_tcp_access_globals(*(*(v780 + 80) + 224)) + 308) - *(v780 + 64) + 100;
                                              }

LABEL_1542:
                                              v602 = *(v780 + 120) + v539;
                                              *(v780 + 120) = v602;
                                              if (*(v780 + 1924) - v602 < 0)
                                              {
                                                *(v780 + 1924) = v602;
                                                if (v797[0])
                                                {
                                                  *(v780 + 1928) = DWORD1(v797[0]);
                                                }
                                              }

                                              v603 = *(v780 + 1064);
                                              if (v603)
                                              {
                                                v604.i64[0] = vdupq_n_s64(1uLL).u64[0];
                                                v604.i64[1] = v539;
                                                v603[12] = vaddq_s64(v603[12], v604);
                                              }

                                              v547 = BYTE13(v822);
                                              v605 = *(a3 + 248);
                                              ++*v605;
                                              if (v772)
                                              {
                                                ++**(a3 + 256);
                                                if (!v790)
                                                {
                                                  goto LABEL_1549;
                                                }
                                              }

                                              else if (!v790)
                                              {
LABEL_1549:
                                                if (!v767)
                                                {
                                                  goto LABEL_1551;
                                                }

                                                goto LABEL_1550;
                                              }

                                              ++**(a3 + 264);
                                              if (!v767)
                                              {
LABEL_1551:
                                                v605[1] += v539;
                                                if (v772)
                                                {
                                                  *(*(a3 + 256) + 8) += v539;
                                                  if (!v790)
                                                  {
                                                    goto LABEL_1553;
                                                  }
                                                }

                                                else if (!v790)
                                                {
LABEL_1553:
                                                  if (!v767)
                                                  {
                                                    goto LABEL_1555;
                                                  }

                                                  goto LABEL_1554;
                                                }

                                                *(*(a3 + 264) + 8) += v539;
                                                if (!v767)
                                                {
LABEL_1555:
                                                  tcp_sbrcv_grow(v780, v754 + 464, v797, v539);
                                                  if (*(sysctls + 284) == 1 && (~*(v780 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v754 + 369) & 0x40) != 0) && off_1ED4BF6F0)
                                                  {
                                                    off_1ED4BF6F0(v780, &v822, v797, v539);
                                                  }

                                                  v550 = BYTE13(v822);
                                                  *(v780 + 748) = *(v780 + 748) & 0xFFFFFFEF | (16 * ((BYTE13(v822) >> 3) & 1));
                                                  if (v539 >= 1)
                                                  {
                                                    v606 = sbappendstream_rcvdemux(v754, v779, v539);
                                                    v782 = 0;
                                                    v548 = 1;
                                                    if (v757 && v606)
                                                    {
                                                      v782 = 0;
                                                      *v757 = 1;
                                                    }

                                                    goto LABEL_1565;
                                                  }

                                                  goto LABEL_1415;
                                                }

LABEL_1554:
                                                *(*(a3 + 272) + 8) += v539;
                                                goto LABEL_1555;
                                              }

LABEL_1550:
                                              ++**(a3 + 272);
                                              goto LABEL_1551;
                                            }
                                          }

                                          else
                                          {
                                            v600 = *(v780 + 88);
                                          }

                                          *(v780 + 88) = v600 | 1;
                                          goto LABEL_1542;
                                        }

                                        *(v551 + 196) = v552 - v784;
                                      }

LABEL_1437:
                                      if (!v784)
                                      {
                                        goto LABEL_1529;
                                      }

                                      goto LABEL_1510;
                                    }

                                    __nwlog_obj();
                                    *buf = 136446210;
                                    *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                    v711 = _os_log_send_and_compose_impl();
                                    type[0] = OS_LOG_TYPE_ERROR;
                                    v803 = 0;
                                    if (__nwlog_fault())
                                    {
                                      if (type[0] == OS_LOG_TYPE_FAULT)
                                      {
                                        v712 = __nwlog_obj();
                                        v713 = type[0];
                                        if (!os_log_type_enabled(v712, type[0]))
                                        {
                                          goto LABEL_1880;
                                        }

                                        *buf = 136446210;
                                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                        v714 = "%{public}s called with null frame";
LABEL_1878:
                                        v731 = v712;
                                        v732 = v713;
LABEL_1879:
                                        _os_log_impl(&dword_1889BA000, v731, v732, v714, buf, 0xCu);
                                        goto LABEL_1880;
                                      }

                                      if (v803 != 1)
                                      {
                                        v712 = __nwlog_obj();
                                        v713 = type[0];
                                        if (!os_log_type_enabled(v712, type[0]))
                                        {
                                          goto LABEL_1880;
                                        }

                                        *buf = 136446210;
                                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                        v714 = "%{public}s called with null frame, backtrace limit exceeded";
                                        goto LABEL_1878;
                                      }

                                      v719 = __nw_create_backtrace_string();
                                      v720 = __nwlog_obj();
                                      v721 = type[0];
                                      v722 = os_log_type_enabled(v720, type[0]);
                                      if (v719)
                                      {
                                        if (v722)
                                        {
                                          *buf = 136446466;
                                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                          *&buf[12] = 2082;
                                          *&buf[14] = v719;
                                          _os_log_impl(&dword_1889BA000, v720, v721, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                                        }

                                        free(v719);
                                        goto LABEL_1880;
                                      }

                                      if (v722)
                                      {
                                        *buf = 136446210;
                                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                                        v714 = "%{public}s called with null frame, no backtrace";
                                        v731 = v720;
                                        v732 = v721;
                                        goto LABEL_1879;
                                      }
                                    }

LABEL_1880:
                                    if (v711)
                                    {
                                      free(v711);
                                    }

                                    goto LABEL_1437;
                                  }

                                  v549 = 1;
                                }

                                else
                                {
                                  v549 = 1;
                                  v545 = v795;
                                }

LABEL_1572:
                                if ((*(v780 + 2096) & 2) != 0 && (*(v780 + 12) - 4) <= 5)
                                {
                                  v607 = *(v780 + 318);
                                  if (v756 && (v607 += v778, *(v780 + 318) = v607, *(v780 + 400) != 3) || v607 >= 2u && (v607 != 2 || *(v780 + 296) != *(v780 + 120)))
                                  {
                                    *(v780 + 88) |= 1u;
                                  }

                                  *(v780 + 400) = v144;
                                }

                                if (v549)
                                {
                                  goto LABEL_1582;
                                }

                                v612 = *(v780 + 12);
                                if (v612 <= 9)
                                {
                                  *(v15 + 376) |= 0x20u;
                                  v613 = *(v15 + 32);
                                  if (v613)
                                  {
                                    v614 = *(v613 + 40);
                                    if (v614)
                                    {
                                      v614(v15);
                                      v612 = *(v780 + 12);
                                    }
                                  }

                                  *(v780 + 316) += v778;
                                  *(v780 + 88) |= 1u;
                                  ++*(v780 + 120);
                                }

                                if (v612 > 5)
                                {
                                  if (v612 == 6)
                                  {
                                    *(v780 + 12) = 7;
                                    if (!v15 || (*(v15 + 776) & 2) == 0)
                                    {
                                      if (__nwlog_is_datapath_logging_enabled())
                                      {
                                        v699 = __nwlog_tcp_log();
                                        if (os_log_type_enabled(v699, OS_LOG_TYPE_DEBUG))
                                        {
                                          v700 = tcpstates[*(v780 + 12)];
                                          *&buf[4] = "tcp_input";
                                          v701 = &unk_188A285CF;
                                          *buf = 136446722;
                                          if (v15)
                                          {
                                            v701 = (v15 + 556);
                                          }

                                          *&buf[12] = 2082;
                                          *&buf[14] = v701;
                                          *&buf[22] = 2082;
                                          *v805 = v700;
                                          _os_log_impl(&dword_1889BA000, v699, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                        }
                                      }
                                    }

                                    a1 = v779;
                                    v7 = v759;
                                    if (*(v15 + 24))
                                    {
                                      v615 = nw_protocol_tcp_get_all_stats();
                                      if (v615)
                                      {
                                        *(v615 + 136) = 7;
                                      }
                                    }
                                  }

                                  else if (v612 == 9)
                                  {
                                    *(v780 + 12) = 10;
                                    if (!v15 || (*(v15 + 776) & 2) == 0)
                                    {
                                      if (__nwlog_is_datapath_logging_enabled())
                                      {
                                        v702 = __nwlog_tcp_log();
                                        if (os_log_type_enabled(v702, OS_LOG_TYPE_DEBUG))
                                        {
                                          v703 = tcpstates[*(v780 + 12)];
                                          *&buf[4] = "tcp_input";
                                          v704 = &unk_188A285CF;
                                          *buf = 136446722;
                                          if (v15)
                                          {
                                            v704 = (v15 + 556);
                                          }

                                          *&buf[12] = 2082;
                                          *&buf[14] = v704;
                                          *&buf[22] = 2082;
                                          *v805 = v703;
                                          _os_log_impl(&dword_1889BA000, v702, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                        }
                                      }
                                    }

                                    if (*(v15 + 24))
                                    {
                                      v616 = nw_protocol_tcp_get_all_stats();
                                      if (v616)
                                      {
                                        *(v616 + 136) = 10;
                                      }
                                    }

                                    tcp_canceltimers(v780);
                                    v617 = *(v780 + 88);
                                    *(v780 + 88) = v617 | 1;
                                    if ((*(v780 + 749) & 8) != 0)
                                    {
                                      *(v780 + 88) = v617 | 0x8000001;
                                    }

                                    else
                                    {
                                      add_to_time_wait(v780, 2 * *(sysctls + 200));
                                    }

                                    *(v15 + 376) = *(v15 + 376) & 0xDFC1 | 0x2030;
                                    v619 = *(v15 + 32);
                                    a1 = v779;
                                    v7 = v759;
                                    if (v619)
                                    {
                                      v620 = *(v619 + 56);
                                      if (v620)
                                      {
                                        v620(v15);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    a1 = v779;
                                    v7 = v759;
                                    if (v612 == 10)
                                    {
                                      add_to_time_wait(v780, 2 * *(sysctls + 200));
                                    }
                                  }

                                  goto LABEL_1582;
                                }

                                if (v612 == 3)
                                {
                                  *(v780 + 172) = *v770;
                                }

                                else
                                {
                                  a1 = v779;
                                  v7 = v759;
                                  if (v612 != 4)
                                  {
LABEL_1582:
                                    if (v765)
                                    {
                                      v608 = 1;
                                    }

                                    else
                                    {
                                      v608 = updated;
                                    }

                                    if (v608 & 1) != 0 || (*(v780 + 88))
                                    {
                                      tcp_output(v780);
                                    }

                                    tcp_check_timer_state(v780);
                                    (*(*(v15 + 8) + 24))(v15, 1, v7);
                                    *v545 = v782 != 0;
                                    v609 = *a1;
                                    if (*a1)
                                    {
                                      *(v609 + 40) = type;
                                      v610 = a1[1];
                                      *type = v609;
                                      v802 = v610;
                                      *a1 = 0;
                                      a1[1] = a1;
                                      *buf = MEMORY[0x1E69E9820];
                                      *&buf[8] = 0x40000000;
                                      *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
                                      *v805 = &__block_descriptor_tmp_290;
                                      v805[8] = 1;
                                      do
                                      {
                                        v611 = *type;
                                        if (!*type)
                                        {
                                          break;
                                        }

                                        nw_frame_array_remove();
                                      }

                                      while (((*&buf[16])(buf, v611) & 1) != 0);
                                    }

                                    goto LABEL_60;
                                  }
                                }

                                *(v780 + 12) = 5;
                                if (!v15 || (*(v15 + 776) & 2) == 0)
                                {
                                  if (__nwlog_is_datapath_logging_enabled())
                                  {
                                    v686 = __nwlog_tcp_log();
                                    if (os_log_type_enabled(v686, OS_LOG_TYPE_DEBUG))
                                    {
                                      v687 = tcpstates[*(v780 + 12)];
                                      *&buf[4] = "tcp_input";
                                      v688 = &unk_188A285CF;
                                      *buf = 136446722;
                                      if (v15)
                                      {
                                        v688 = (v15 + 556);
                                      }

                                      *&buf[12] = 2082;
                                      *&buf[14] = v688;
                                      *&buf[22] = 2082;
                                      *v805 = v687;
                                      _os_log_impl(&dword_1889BA000, v686, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                    }
                                  }
                                }

                                a1 = v779;
                                v7 = v759;
                                if (*(v15 + 24))
                                {
                                  v618 = nw_protocol_tcp_get_all_stats();
                                  if (v618)
                                  {
                                    *(v618 + 136) = 5;
                                  }
                                }

                                goto LABEL_1582;
                              }

                              if (*(v794 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || ((*MEMORY[0x1E6977EF8])(v794, *(v794 + 88)))
                              {
                                v823 = 0;
                                if (&v822 != v768)
                                {
                                  *(v768 + 18) = 0;
                                }

                                goto LABEL_1379;
                              }

                              v466 = v15;
                              if (v15 && (*(v15 + 776) & 2) != 0 || (v467 = __nwlog_tcp_log(), !os_log_type_enabled(v467, OS_LOG_TYPE_INFO)))
                              {
LABEL_1702:
                                a1 = v779;
                                *(v780 + 1064) = 0;
                                v15 = v466;
                                goto LABEL_984;
                              }

                              v750 = &unk_188A285CF;
                              if (v15)
                              {
                                v750 = (v15 + 556);
                              }

                              *buf = 136446466;
                              *&buf[4] = "tcp_input";
                              *&buf[12] = 2082;
                              *&buf[14] = v750;
LABEL_1701:
                              _os_log_impl(&dword_1889BA000, v467, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping tcp input frame since frame is no longer valid", buf, 0x16u);
                              goto LABEL_1702;
                            }

                            v494 = v780;
                            if ((*(v780 + 748) & 0x20400020) == 0x20000020)
                            {
                              tcp_segs_doack(v780, DWORD2(v822), v797[0], SDWORD2(v797[0]));
                              v495 = *(v780 + 552);
                              v496 = v799;
                              if (v495 - v799 < 0)
                              {
                                *(v780 + 552) = v799;
                                v495 = v496;
                              }

                              v494 = v780;
                              if (v495 - DWORD2(v822) < 0)
                              {
                                *(v780 + 552) = DWORD2(v822);
                              }
                            }

                            if ((*(v494 + 998) & 0x40) != 0 && (*(v494 + 996) & 0x20) == 0 && (BYTE13(v822) & 2) == 0)
                            {
                              *(v494 + 996) |= 0x20u;
                            }

                            if ((*(v494 + 336) & 4) != 0)
                            {
                              if ((v272 & 2) != 0 || (*(v780 + 2096) & 2) == 0)
                              {
                                if ((v272 & 0x40) != 0 && (*(v494 + 336) & 3) == 3)
                                {
                                  v522 = *(v780 + 200);
                                  v523 = v475 / v522 * v522 == v475 ? v475 / v522 : v475 / v522 + 1;
                                  tcp_ece_aggressive_heur(v780, v523);
                                  if ((*(v780 + 90) & 0x20) == 0)
                                  {
                                    tcp_enter_fast_recovery(v780);
                                    *(v780 + 336) |= 0xA8u;
                                    v524 = *(a3 + 448);
                                    if (v524)
                                    {
                                      v525 = 576;
                                      if ((*(a3 + 2380) & 2) == 0)
                                      {
                                        v525 = 192;
                                      }

                                      ++*(v524 + v525);
                                    }

                                    v526 = *(v780 + 1064);
                                    if (v526)
                                    {
                                      ++*(v526 + 864);
                                    }

                                    *(v780 + 376) += v523;
                                  }
                                }
                              }

                              else
                              {
                                v501 = 0;
                                v502 = DWORD2(v822);
                                v503 = *(v780 + 112) + 1;
                                if (DWORD2(v822) == v503)
                                {
                                  v475 = 0;
                                }

                                v504 = *(v780 + 200);
                                if (v475 / v504 * v504 == v475)
                                {
                                  v505 = v475 / v504;
                                }

                                else
                                {
                                  v505 = v475 / v504 + 1;
                                }

                                *(v780 + 308) += v505;
                                if (v502 == v503 && !v800)
                                {
                                  v501 = 0;
                                  if (v797[0])
                                  {
                                    if (DWORD2(v797[0]))
                                    {
                                      v506 = *(v780 + 392);
                                      if (v506)
                                      {
                                        v507 = DWORD2(v797[0]) - v506 <= 0;
                                      }

                                      else
                                      {
                                        v507 = 0;
                                      }

                                      v501 = !v507;
                                    }
                                  }
                                }

                                if (v475 || v800 || v501)
                                {
                                  tcp_process_accecn(v780, v797, &v822, v505, v755);
                                }

                                else
                                {
                                  v475 = 0;
                                }
                              }
                            }

                            if (((v400 | ((*(v780 + 90) & 0x20) >> 5)) & 1) == 0)
                            {
                              v497 = *(tcp_cc_algo_list[*(v780 + 272)] + 56);
                              if (v497)
                              {
                                v497(v780, &v822);
                              }
                            }

                            v498 = *(v15 + 384);
                            if (v475 <= v498)
                            {
                              sbdrop((v15 + 384), v475);
                              tcp_sbsnd_trim(v15 + 384);
                              *(v780 + 144) -= v475;
                              v499 = v15;
                              if (*(v15 + 24))
                              {
                                v508 = nw_protocol_tcp_get_all_stats();
                                if (v508)
                                {
                                  *(v508 + 112) = *(v780 + 144);
                                }
                              }
                            }

                            else
                            {
                              *(v780 + 144) -= v498;
                              v499 = v15;
                              if (*(v15 + 24))
                              {
                                v500 = nw_protocol_tcp_get_all_stats();
                                if (v500)
                                {
                                  *(v500 + 112) = *(v780 + 144);
                                }
                              }

                              sbdrop((v15 + 384), *(v15 + 384));
                            }

                            v509 = *(v780 + 88);
                            v510 = *(v780 + 156);
                            if ((v509 & 0x200000) != 0)
                            {
                              v511 = DWORD2(v822);
                              if (DWORD2(v822) - v510 >= 0)
                              {
                                *(v780 + 88) = v509 & 0xFFDFFFFF;
                                *(v780 + 8) = 0;
                                *(v780 + 322) = 3;
                                *(v780 + 300) = 0;
                                *(v780 + 336) &= ~0x20u;
                                *(v780 + 16) = 0;
                                v512 = *(v780 + 748);
                                *(v780 + 748) = v512 & 0xFFF7FFFF;
                                *(v780 + 992) = 0;
                                *(v780 + 620) = 0;
                                if ((v512 & 0x20400020) == 0x20000020 && (*(v780 + 2077) & 0x1F) != 0)
                                {
                                  *(v780 + 2077) = *(v780 + 2077) & 0xE0 | (*(v780 + 2077) - 1) & 0x1F;
                                }
                              }
                            }

                            else
                            {
                              v511 = DWORD2(v822);
                              if (*(v780 + 92) - v510 >= 1 && DWORD2(v822) - v510 <= 0)
                              {
                                *(v780 + 156) = DWORD2(v822) - 1;
                              }
                            }

                            v201 = v499;
                            tcp_update_snd_una(v780, v511);
                            v513 = *(v780 + 748);
                            v514 = *(v780 + 92);
                            if ((v513 & 0x20) != 0 && v514 - *(v780 + 156) >= 1)
                            {
                              *(v780 + 156) = v514;
                            }

                            if (*(v780 + 100) - v514 < 0)
                            {
                              *(v780 + 100) = v514;
                            }

                            if ((v513 & 0x20400020) == 0x20000020 && tcp_rack_detect_loss_and_arm_timer(v780, 0))
                            {
                              if ((*(v780 + 90) & 0x20) == 0)
                              {
                                tcp_enter_fast_recovery(v780);
                                v515 = *(v780 + 1064);
                                if (v515)
                                {
                                  ++*(v515 + 624);
                                }

                                ++*(v780 + 1016);
                              }

                              tcp_output(v780);
                            }

                            if (*(v780 + 960))
                            {
                              v516 = *(v780 + 968);
                              if (v516 - *(v780 + 96) > 0)
                              {
                                goto LABEL_1293;
                              }

                              v530 = *(v780 + 144);
                              if (v530 >= *(sysctls + 116))
                              {
                                v530 = *(sysctls + 116);
                              }

                              if ((v516 - *(v780 + 92) + v530) < 0)
                              {
LABEL_1293:
                                tcp_rxtseg_clean(v780);
                              }
                            }

                            if ((*(v780 + 748) & 8) != 0 && *(v780 + 776))
                            {
                              tcp_bwmeas_check(v780);
                            }

                            v531 = *(v499 + 32);
                            if (v531)
                            {
                              v532 = *v531;
                              if (v532)
                              {
                                v532(v499);
                              }
                            }

                            v400 = 0;
                            v533 = *(v780 + 12);
                            if (v533 <= 7)
                            {
                              if (v533 == 6)
                              {
                                if (v475 > v498)
                                {
                                  *(v780 + 12) = 9;
                                  if ((*(v201 + 776) & 2) == 0)
                                  {
                                    if (__nwlog_is_datapath_logging_enabled())
                                    {
                                      v707 = __nwlog_tcp_log();
                                      if (os_log_type_enabled(v707, OS_LOG_TYPE_DEBUG))
                                      {
                                        v708 = tcpstates[*(v780 + 12)];
                                        *buf = 136446722;
                                        *&buf[4] = "tcp_input";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v201 + 556;
                                        *&buf[22] = 2082;
                                        *v805 = v708;
                                        _os_log_impl(&dword_1889BA000, v707, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                      }
                                    }
                                  }

                                  if (*(v201 + 24))
                                  {
                                    v535 = nw_protocol_tcp_get_all_stats();
                                    if (v535)
                                    {
                                      *(v535 + 136) = 9;
                                    }
                                  }

                                  if ((*(v201 + 376) & 0x20) == 0)
                                  {
                                    v400 = 0;
LABEL_1361:
                                    v533 = *(v780 + 12);
                                    goto LABEL_1362;
                                  }

                                  tcp_set_finwait_timeout(v780);
                                  goto LABEL_1359;
                                }

LABEL_1350:
                                v400 = 0;
LABEL_1367:
                                a1 = v779;
                                v15 = v201;
                                goto LABEL_1368;
                              }

                              if (v533 == 7)
                              {
                                if (v475 > v498)
                                {
                                  *(v780 + 12) = 10;
                                  if ((*(v201 + 776) & 2) == 0)
                                  {
                                    if (__nwlog_is_datapath_logging_enabled())
                                    {
                                      v705 = __nwlog_tcp_log();
                                      if (os_log_type_enabled(v705, OS_LOG_TYPE_DEBUG))
                                      {
                                        v706 = tcpstates[*(v780 + 12)];
                                        *buf = 136446722;
                                        *&buf[4] = "tcp_input";
                                        *&buf[12] = 2082;
                                        *&buf[14] = v201 + 556;
                                        *&buf[22] = 2082;
                                        *v805 = v706;
                                        _os_log_impl(&dword_1889BA000, v705, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
                                      }
                                    }
                                  }

                                  if (*(v201 + 24))
                                  {
                                    v534 = nw_protocol_tcp_get_all_stats();
                                    if (v534)
                                    {
                                      *(v534 + 136) = 10;
                                    }
                                  }

                                  tcp_canceltimers(v780);
                                  if ((*(v780 + 749) & 8) != 0)
                                  {
                                    v788 = 0;
                                    *(v780 + 88) |= 0x8000000u;
LABEL_1360:
                                    v400 = 1;
                                    goto LABEL_1361;
                                  }

                                  add_to_time_wait(v780, 2 * *(sysctls + 200));
LABEL_1359:
                                  v788 = 0;
                                  goto LABEL_1360;
                                }

                                goto LABEL_1350;
                              }

LABEL_1362:
                              if (v533 == 4 && (*(v780 + 748) & 0x20) != 0)
                              {
                                if (v800)
                                {
                                  if (HIBYTE(v797[0]))
                                  {
                                    if (!*(v780 + 8) && DWORD2(v822) - *(v780 + 92) <= 0)
                                    {
                                      v452 = HIDWORD(v800);
                                      if (!(HIDWORD(v800) | *(v780 + 748) & 0x2000))
                                      {
                                        v559 = *(v780 + 1064);
                                        if (v559)
                                        {
                                          ++*(v559 + 704);
                                        }

                                        v15 = v201;
                                        v401 = v758;
                                        v251 = v788;
                                        goto LABEL_1430;
                                      }
                                    }
                                  }
                                }
                              }

                              goto LABEL_1367;
                            }

                            if (v533 == 8)
                            {
                              if (v475 > v498)
                              {
                                if ((*(v201 + 776) & 2) == 0)
                                {
                                  if (__nwlog_is_datapath_logging_enabled())
                                  {
                                    v709 = __nwlog_tcp_log();
                                    if (os_log_type_enabled(v709, OS_LOG_TYPE_DEBUG))
                                    {
                                      v710 = tcpstates[*(v780 + 12)];
                                      *buf = 136446722;
                                      *&buf[4] = "tcp_input";
                                      *&buf[12] = 2082;
                                      *&buf[14] = v201 + 556;
                                      *&buf[22] = 2082;
                                      *v805 = v710;
                                      _os_log_impl(&dword_1889BA000, v709, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s ourfinisacked t_state %{public}s", buf, 0x20u);
                                    }
                                  }
                                }

                                tcp_close(v780);
LABEL_1349:
                                a1 = v779;
                                v15 = v201;
                                goto LABEL_984;
                              }

                              goto LABEL_1350;
                            }

                            if (v533 != 10)
                            {
                              goto LABEL_1362;
                            }

                            v159 = v780;
                            add_to_time_wait(v780, 2 * *(sysctls + 200));
                            a1 = v779;
                            v15 = v201;
                            goto LABEL_993;
                          }

                          v479 = 64000;
                        }

                        *(v780 + 196) = v479;
                        goto LABEL_1213;
                      }

                      v482 = v367;
                      if (!v15 || (*(v15 + 776) & 2) == 0)
                      {
                        __nwlog_tcp_log();
                        if (v15)
                        {
                          v483 = (v15 + 556);
                        }

                        else
                        {
                          v483 = &unk_188A285CF;
                        }

                        v484 = *(v780 + 12);
                        v485 = *(v780 + 120);
                        v486 = *(v780 + 92);
                        *buf = 136449026;
                        *&buf[4] = "tcp_input";
                        *&buf[12] = 2082;
                        *&buf[14] = v483;
                        *&buf[22] = 1024;
                        *v805 = bswap32(v822) >> 16;
                        *&v805[4] = 1024;
                        *&v805[6] = bswap32(WORD1(v822)) >> 16;
                        v806 = 1024;
                        *v807 = v482;
                        *&v807[4] = 1024;
                        *&v807[6] = BYTE13(v822);
                        v808 = 1024;
                        v809 = bswap32(DWORD1(v822));
                        v810 = 1024;
                        v811 = bswap32(DWORD2(v822));
                        v812 = 1024;
                        v813 = bswap32(HIWORD(v822)) >> 16;
                        v814 = 1024;
                        v815 = v484;
                        v816 = 1024;
                        v817 = v485;
                        v818 = 1024;
                        v819 = v486;
                        v487 = _os_log_send_and_compose_impl();
                        type[0] = OS_LOG_TYPE_ERROR;
                        v803 = 0;
                        if (__nwlog_fault())
                        {
                          if (type[0] == OS_LOG_TYPE_FAULT)
                          {
                            v488 = __nwlog_tcp_log();
                            v489 = type[0];
                            if (!os_log_type_enabled(v488, type[0]))
                            {
                              goto LABEL_1355;
                            }

                            v490 = *(v780 + 12);
                            v491 = *(v780 + 120);
                            v492 = *(v780 + 92);
                            *buf = 136449026;
                            *&buf[4] = "tcp_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v483;
                            *&buf[22] = 1024;
                            *v805 = bswap32(v822) >> 16;
                            *&v805[4] = 1024;
                            *&v805[6] = bswap32(WORD1(v822)) >> 16;
                            v806 = 1024;
                            *v807 = HIDWORD(v800);
                            *&v807[4] = 1024;
                            *&v807[6] = BYTE13(v822);
                            v808 = 1024;
                            v809 = bswap32(DWORD1(v822));
                            v810 = 1024;
                            v811 = bswap32(DWORD2(v822));
                            v812 = 1024;
                            v813 = bswap32(HIWORD(v822)) >> 16;
                            v814 = 1024;
                            v815 = v490;
                            v816 = 1024;
                            v817 = v491;
                            v818 = 1024;
                            v819 = v492;
                            v493 = "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u";
                            goto LABEL_1354;
                          }

                          if (v803 != 1)
                          {
                            v488 = __nwlog_tcp_log();
                            v489 = type[0];
                            a1 = v779;
                            v7 = v759;
                            if (!os_log_type_enabled(v488, type[0]))
                            {
                              goto LABEL_1355;
                            }

                            v527 = *(v780 + 12);
                            v528 = *(v780 + 120);
                            v529 = *(v780 + 92);
                            *buf = 136449026;
                            *&buf[4] = "tcp_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v483;
                            *&buf[22] = 1024;
                            *v805 = bswap32(v822) >> 16;
                            *&v805[4] = 1024;
                            *&v805[6] = bswap32(WORD1(v822)) >> 16;
                            v806 = 1024;
                            *v807 = HIDWORD(v800);
                            *&v807[4] = 1024;
                            *&v807[6] = BYTE13(v822);
                            v808 = 1024;
                            v809 = bswap32(DWORD1(v822));
                            v810 = 1024;
                            v811 = bswap32(DWORD2(v822));
                            v812 = 1024;
                            v813 = bswap32(HIWORD(v822)) >> 16;
                            v814 = 1024;
                            v815 = v527;
                            v816 = 1024;
                            v817 = v528;
                            v818 = 1024;
                            v819 = v529;
                            v493 = "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u, backtrace limit exceeded";
                            goto LABEL_1354;
                          }

                          v517 = __nw_create_backtrace_string();
                          v488 = __nwlog_tcp_log();
                          v489 = type[0];
                          v518 = os_log_type_enabled(v488, type[0]);
                          if (v517)
                          {
                            if (v518)
                            {
                              v519 = *(v780 + 12);
                              v520 = *(v780 + 120);
                              v521 = *(v780 + 92);
                              *buf = 136449282;
                              *&buf[4] = "tcp_input";
                              *&buf[12] = 2082;
                              *&buf[14] = v483;
                              *&buf[22] = 1024;
                              *v805 = bswap32(v822) >> 16;
                              *&v805[4] = 1024;
                              *&v805[6] = bswap32(WORD1(v822)) >> 16;
                              v806 = 1024;
                              *v807 = HIDWORD(v800);
                              *&v807[4] = 1024;
                              *&v807[6] = BYTE13(v822);
                              v808 = 1024;
                              v809 = bswap32(DWORD1(v822));
                              v810 = 1024;
                              v811 = bswap32(DWORD2(v822));
                              v812 = 1024;
                              v813 = bswap32(HIWORD(v822)) >> 16;
                              v814 = 1024;
                              v815 = v519;
                              v816 = 1024;
                              v817 = v520;
                              v818 = 1024;
                              v819 = v521;
                              v820 = 2082;
                              v821 = v517;
                              _os_log_impl(&dword_1889BA000, v488, v489, "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u, dumping backtrace:%{public}s", buf, 0x5Cu);
                            }

                            free(v517);
                            a1 = v779;
                            v7 = v759;
                            goto LABEL_1355;
                          }

                          a1 = v779;
                          v7 = v759;
                          if (v518)
                          {
                            v536 = *(v780 + 12);
                            v537 = *(v780 + 120);
                            v538 = *(v780 + 92);
                            *buf = 136449026;
                            *&buf[4] = "tcp_input";
                            *&buf[12] = 2082;
                            *&buf[14] = v483;
                            *&buf[22] = 1024;
                            *v805 = bswap32(v822) >> 16;
                            *&v805[4] = 1024;
                            *&v805[6] = bswap32(WORD1(v822)) >> 16;
                            v806 = 1024;
                            *v807 = HIDWORD(v800);
                            *&v807[4] = 1024;
                            *&v807[6] = BYTE13(v822);
                            v808 = 1024;
                            v809 = bswap32(DWORD1(v822));
                            v810 = 1024;
                            v811 = bswap32(DWORD2(v822));
                            v812 = 1024;
                            v813 = bswap32(HIWORD(v822)) >> 16;
                            v814 = 1024;
                            v815 = v536;
                            v816 = 1024;
                            v817 = v537;
                            v818 = 1024;
                            v819 = v538;
                            v493 = "%{public}s %{public}s assertion failure SEQ_GEQ(tcp_hdr->th_ack, tp->snd_una) %u:%u tlen %u, flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u, no backtrace";
LABEL_1354:
                            _os_log_impl(&dword_1889BA000, v488, v489, v493, buf, 0x52u);
                          }
                        }

LABEL_1355:
                        if (v487)
                        {
                          free(v487);
                        }
                      }

LABEL_1387:
                      v46 = v782;
                      goto LABEL_1388;
                    }

LABEL_910:
                    v386 = 0;
                    if (v367 == v368 || (v387 = **(v779[1] + 8)) == 0)
                    {
LABEL_926:
                      if (v386 != v371)
                      {
                        v396 = __nwlog_obj();
                        if (os_log_type_enabled(v396, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136446722;
                          *&buf[4] = "__nw_frame_array_claim";
                          *&buf[12] = 1024;
                          *&buf[14] = v386;
                          *&buf[18] = 1024;
                          *&buf[20] = v371;
                          _os_log_impl(&dword_1889BA000, v396, OS_LOG_TYPE_ERROR, "%{public}s end_offset %u != end_bytes %u", buf, 0x18u);
                        }
                      }
                    }

                    else
                    {
                      v386 = 0;
                      v775 = v272;
                      while (1)
                      {
                        v388 = *(v387 + 52);
                        v389 = *(v387 + 56);
                        v390 = *(v387 + 60);
                        v391 = v388 - (v389 + v390);
                        if (v391 >= v371 - v386)
                        {
                          v391 = v371 - v386;
                        }

                        v392 = v388 ? v391 : 0;
                        v393 = v390 + v392;
                        if (v389 <= v388 - (v390 + v392))
                        {
                          *(v387 + 60) = v393;
                        }

                        else
                        {
                          v394 = __nwlog_obj();
                          if (os_log_type_enabled(v394, OS_LOG_TYPE_ERROR))
                          {
                            v395 = *(v387 + 52);
                            *buf = 136446978;
                            *&buf[4] = "__nw_frame_claim_internal";
                            *&buf[12] = 1024;
                            *&buf[14] = v389;
                            *&buf[18] = 1024;
                            *&buf[20] = v395;
                            *v805 = 1024;
                            *&v805[2] = v393;
                            _os_log_impl(&dword_1889BA000, v394, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                          }
                        }

                        v386 += v392;
                        v7 = v759;
                        v272 = v775;
                        if (v386 == v371)
                        {
                          break;
                        }

                        if (*(v387 + 32) != 0 && v386 < v371)
                        {
                          v387 = **(*(v387 + 40) + 8);
                          if (v387)
                          {
                            continue;
                          }
                        }

                        goto LABEL_926;
                      }
                    }

                    goto LABEL_929;
                  }

                  v766 = HIDWORD(v800);
                  v776 = v272;
                  __nwlog_obj();
                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                  v628 = _os_log_send_and_compose_impl();
                  type[0] = OS_LOG_TYPE_ERROR;
                  v803 = 0;
                  if (__nwlog_fault())
                  {
                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v629 = __nwlog_obj();
                      v630 = type[0];
                      if (os_log_type_enabled(v629, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                        v631 = "%{public}s called with null frame";
LABEL_1744:
                        v659 = v629;
                        v660 = v630;
LABEL_1745:
                        _os_log_impl(&dword_1889BA000, v659, v660, v631, buf, 0xCu);
                      }
                    }

                    else if (v803 == 1)
                    {
                      v650 = __nw_create_backtrace_string();
                      v651 = __nwlog_obj();
                      v652 = type[0];
                      v653 = os_log_type_enabled(v651, type[0]);
                      if (v650)
                      {
                        if (v653)
                        {
                          *buf = 136446466;
                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                          *&buf[12] = 2082;
                          *&buf[14] = v650;
                          _os_log_impl(&dword_1889BA000, v651, v652, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                        }

                        free(v650);
                        goto LABEL_1746;
                      }

                      if (v653)
                      {
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                        v631 = "%{public}s called with null frame, no backtrace";
                        v659 = v651;
                        v660 = v652;
                        goto LABEL_1745;
                      }
                    }

                    else
                    {
                      v629 = __nwlog_obj();
                      v630 = type[0];
                      if (os_log_type_enabled(v629, type[0]))
                      {
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                        v631 = "%{public}s called with null frame, backtrace limit exceeded";
                        goto LABEL_1744;
                      }
                    }
                  }

LABEL_1746:
                  if (v628)
                  {
                    free(v628);
                  }

                  v144 = v771;
                  v272 = v776;
                  v367 = v766;
                  v371 = v369;
                  goto LABEL_896;
                }

                v466 = v15;
                if ((*(v15 + 776) & 2) != 0)
                {
                  goto LABEL_1702;
                }

                v467 = __nwlog_tcp_log();
                if (!os_log_type_enabled(v467, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_1702;
                }

LABEL_1700:
                *buf = 136446466;
                *&buf[4] = "tcp_input";
                *&buf[12] = 2082;
                *&buf[14] = v15 + 556;
                goto LABEL_1701;
              }

              *(v780 + 998) = v357 | 0x80;
              v365 = *(v780 + 1064);
              if (v365)
              {
                ++*(v365 + 1128);
              }

              v252 = v780;
              tcp_tfo_rcv_probe(v780, SHIDWORD(v800));
            }

            v251 = 1;
            goto LABEL_880;
          }
        }

        else
        {
          v350 = *(v342 + 88);
        }

        v351 = v780;
        *(v780 + 88) = v350 | 1;
        goto LABEL_827;
      }

      if (DWORD2(v822) - *(v780 + 112) < 1 || DWORD2(v822) - *(v780 + 96) >= 1)
      {
        v160 = v794;
        if (v791)
        {
          v260 = 1088;
          v158 = v760;
          goto LABEL_1001;
        }

LABEL_632:
        v158 = v760;
        goto LABEL_307;
      }

      v275 = v15;
      if ((v773 & 4) == 0)
      {
        a1 = v779;
        v159 = v780;
        v245 = v773;
        if ((v773 & 2) == 0)
        {
          goto LABEL_1387;
        }

        goto LABEL_539;
      }

      if ((*(v780 + 748) & 0x1400000) == 0x400000)
      {
        tcp_heuristic_tfo_rst(v780);
      }

      v320 = *(v780 + 336);
      if ((v320 & 0x8001) == 1 || (v320 & 0x108000) == 0x100000)
      {
        tcp_heuristic_ecn_synrst(v780);
      }

      tcp_drop(v780, 61);
LABEL_768:
      a1 = v779;
      v15 = v275;
LABEL_984:
      v46 = v782;
      v7 = v759;
LABEL_1388:
      v158 = v760;
LABEL_1389:
      if (v158)
      {
        soabort(v15);
      }

      goto LABEL_1391;
    }
  }

  if ((v773 & 4) != 0)
  {
    v258 = *(v780 + 296);
    v158 = v760;
    if (DWORD1(v822) - v258 >= 0 && (DWORD1(v822) - v258 - v241) < 0)
    {
      v259 = v258 - 1;
    }

    else
    {
      if (v241 && v242 < 5)
      {
        goto LABEL_1029;
      }

      v259 = v258 - 1;
      if (DWORD1(v822) != v258 && v259 != DWORD1(v822))
      {
        goto LABEL_1029;
      }
    }

    if (DWORD1(v822) != v258 && v259 != DWORD1(v822))
    {
      v275 = v15;
      v276 = *(v780 + 1064);
      if (v276)
      {
        ++*(v276 + 312);
      }

      if (tcp_is_ack_ratelimited(v780))
      {
        goto LABEL_768;
      }

      v277 = *(v780 + 1064);
      if (v277)
      {
        ++*(v277 + 112);
      }

      a1 = v779;
LABEL_992:
      v159 = v780;
LABEL_993:
      v7 = v759;
LABEL_994:
      v158 = v760;
      v160 = v794;
      goto LABEL_995;
    }

    v275 = v15;
    if (v242 <= 9)
    {
      if (((1 << v242) & 0x260) != 0)
      {
LABEL_751:
        v322 = 54;
        goto LABEL_752;
      }

      if (((1 << v242) & 0x180) != 0)
      {
        if ((*(v15 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v697 = __nwlog_tcp_log();
            if (os_log_type_enabled(v697, OS_LOG_TYPE_DEBUG))
            {
              v698 = tcpstates[*(v780 + 12)];
              *buf = 136446722;
              *&buf[4] = "tcp_input";
              *&buf[12] = 2082;
              *&buf[14] = v15 + 556;
              *&buf[22] = 2082;
              *v805 = v698;
              _os_log_impl(&dword_1889BA000, v697, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s t_state %{public}s", buf, 0x20u);
            }
          }
        }

        tcp_close(v780);
        goto LABEL_768;
      }

      if (v242 == 4)
      {
        if ((~*(v780 + 336) & 3) == 0 || (*(v780 + 2096) & 2) != 0)
        {
          v321 = *(v780 + 92);
          if (v321 == *(v780 + 112) + 1 && *(v780 + 96) - v321 >= 1)
          {
            tcp_heuristic_ecn_droprst(v780);
          }
        }

        goto LABEL_751;
      }
    }

    if (v242 != 3)
    {
      goto LABEL_768;
    }

    if (v791)
    {
      atomic_fetch_add((v791 + 1096), 1uLL);
    }

    v322 = 61;
LABEL_752:
    *(v15 + 378) = v322;
    v323 = *(v15 + 776);
    if (tcp_perf_measurement == 1)
    {
      if ((*(v15 + 776) & 2) != 0)
      {
        goto LABEL_761;
      }

      if (!__nwlog_is_datapath_logging_enabled())
      {
        goto LABEL_761;
      }

      v324 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v324, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_761;
      }

      v325 = tcpstates[*(v780 + 12)];
      *buf = 136446722;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v15 + 556;
      *&buf[22] = 2082;
      *v805 = v325;
      v326 = v324;
      v327 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if ((*(v15 + 776) & 2) != 0)
      {
        goto LABEL_761;
      }

      v328 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v328, OS_LOG_TYPE_INFO))
      {
        goto LABEL_761;
      }

      v329 = tcpstates[*(v780 + 12)];
      *buf = 136446722;
      *&buf[4] = "tcp_input";
      *&buf[12] = 2082;
      *&buf[14] = v15 + 556;
      *&buf[22] = 2082;
      *v805 = v329;
      v326 = v328;
      v327 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1889BA000, v326, v327, "%{public}s %{public}s ECONNRESET t_state %{public}s", buf, 0x20u);
LABEL_761:
    user_north_signal_error(v15);
    v330 = *(v780 + 1064);
    if (v330)
    {
      ++*(v330 + 424);
    }

    tcp_close(v780);
    a1 = v779;
    goto LABEL_984;
  }

  v160 = v794;
  if (v797[0])
  {
    v254 = *(v780 + 284);
    if (v254)
    {
      if (DWORD1(v797[0]) - v254 < 0)
      {
        if (*v770 - *(v780 + 292) >= 2073600001)
        {
          *(v780 + 284) = 0;
          a1 = v779;
          v244 = v767;
          v160 = v794;
          goto LABEL_569;
        }

        v318 = *(v780 + 1064);
        if (v318)
        {
          v319.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v319.i64[1] = SHIDWORD(v800);
          v318[13] = vaddq_s64(v318[13], v319);
          ++*(v780 + 1008);
          ++v318[14].i64[0];
        }

        else
        {
          ++*(v780 + 1008);
        }

        v362 = *(a3 + 248);
        ++*v362;
        if (v772)
        {
          ++**(a3 + 256);
          if (!v790)
          {
            goto LABEL_858;
          }
        }

        else if (!v790)
        {
LABEL_858:
          if (!v767)
          {
            goto LABEL_860;
          }

          goto LABEL_859;
        }

        ++**(a3 + 264);
        if (!v767)
        {
LABEL_860:
          v363 = SHIDWORD(v800);
          v362[1] += SHIDWORD(v800);
          if (v772)
          {
            *(*(a3 + 256) + 8) += v363;
            if (!v790)
            {
              goto LABEL_862;
            }
          }

          else if (!v790)
          {
LABEL_862:
            if (!v767)
            {
LABEL_864:
              *(v780 + 696) += v363;
              if (*(v15 + 24))
              {
                v364 = nw_protocol_tcp_get_all_stats();
                if (v364)
                {
                  *(v364 + 48) += v363;
                }
              }

              v507 = v363 <= 0;
              a1 = v779;
              v159 = v780;
              v158 = v760;
              v160 = v794;
              if (!v507)
              {
                goto LABEL_995;
              }

LABEL_1029:
              v46 = v782;
              goto LABEL_1389;
            }

LABEL_863:
            *(*(a3 + 272) + 8) += v363;
            goto LABEL_864;
          }

          *(*(a3 + 264) + 8) += v363;
          if (!v767)
          {
            goto LABEL_864;
          }

          goto LABEL_863;
        }

LABEL_859:
        ++**(a3 + 272);
        goto LABEL_860;
      }
    }
  }

LABEL_569:
  v255 = v768;
  if (v242 == 3 && DWORD1(v822) - *(v780 + 116) < 0)
  {
    if (v791)
    {
      v260 = 1104;
      v158 = v760;
      goto LABEL_1001;
    }

    goto LABEL_632;
  }

  if ((*(v160 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8])
  {
    if (!(*MEMORY[0x1E6977EF8])(v160, *(v160 + 88)))
    {
      v466 = v15;
      if ((*(v15 + 776) & 2) != 0)
      {
        goto LABEL_1702;
      }

      v467 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v467, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1702;
      }

      goto LABEL_1700;
    }

    v240 = *(v780 + 120);
    v255 = v768;
    v160 = v794;
  }

  v256 = v240 - DWORD1(v822);
  if (v240 - DWORD1(v822) <= 0)
  {
    v274 = HIDWORD(v800);
    v257 = v773;
    goto LABEL_694;
  }

  v257 = v773;
  if ((v773 & 2) != 0)
  {
    v257 = v773 & 0xF9;
    ++DWORD1(v822);
    if (&v822 == v255)
    {
      if (v823 > 1u)
      {
        --v823;
        goto LABEL_648;
      }
    }

    else
    {
      ++*(v255 + 4);
      if (v823 > 1u)
      {
        --v823;
        --*(v255 + 18);
LABEL_648:
        --v256;
        goto LABEL_649;
      }
    }

    v257 = v773 & 0xD9;
    goto LABEL_648;
  }

LABEL_649:
  v285 = HIDWORD(v800);
  if (v256 > SHIDWORD(v800) || (v257 & 1) == 0 && v256 == HIDWORD(v800))
  {
    if ((v773 & 2) != 0)
    {
      if (tcp_is_ack_ratelimited(v780))
      {
LABEL_655:
        v257 &= ~1u;
        if (v256 == 1)
        {
          v286 = *(v15 + 32);
          if (v286)
          {
            v287 = *(v286 + 88);
            if (v287)
            {
              v287(v15, v243, v160);
            }
          }
        }

        v288 = *(v780 + 1064);
        v160 = v794;
        if (!v288)
        {
          v256 = v285;
          goto LABEL_665;
        }

        v289 = v285;
        ++*(v288 + 208);
        v290 = (v288 + 216);
        v256 = v285;
        goto LABEL_664;
      }

      v313 = *(v780 + 1064);
      if (v313)
      {
        ++*(v313 + 104);
      }
    }

    *(v780 + 88) |= 1u;
    goto LABEL_655;
  }

  v291 = *(v780 + 1064);
  if (!v291)
  {
    goto LABEL_665;
  }

  ++*(v291 + 240);
  v289 = v256;
  v290 = (v291 + 248);
LABEL_664:
  *v290 += v289;
LABEL_665:
  if (v256 >= 2)
  {
    v292 = DWORD1(v822);
    *(v780 + 948) = DWORD1(v822);
    *(v780 + 952) = v292 + v256;
    *(v780 + 88) |= 1u;
  }

  v293 = *(a3 + 248);
  ++*v293;
  if (v772)
  {
    ++**(a3 + 256);
    if (!v790)
    {
      goto LABEL_669;
    }
  }

  else if (!v790)
  {
LABEL_669:
    if (!v244)
    {
      goto LABEL_671;
    }

    goto LABEL_670;
  }

  ++**(a3 + 264);
  if (v244)
  {
LABEL_670:
    ++**(a3 + 272);
  }

LABEL_671:
  v293[1] += v256;
  if (v772)
  {
    *(*(a3 + 256) + 8) += v256;
    if (!v790)
    {
      goto LABEL_673;
    }
  }

  else if (!v790)
  {
LABEL_673:
    if (!v244)
    {
      goto LABEL_675;
    }

    goto LABEL_674;
  }

  *(*(a3 + 264) + 8) += v256;
  if (v244)
  {
LABEL_674:
    *(*(a3 + 272) + 8) += v256;
  }

LABEL_675:
  *(v780 + 696) += v256;
  if (*(v15 + 24))
  {
    v294 = nw_protocol_tcp_get_all_stats();
    v160 = v794;
    if (v294)
    {
      *(v294 + 48) += v256;
    }
  }

  if ((*(v160 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v160, *(v160 + 88)) & 1) == 0)
  {
    v466 = v15;
    if ((*(v15 + 776) & 2) != 0)
    {
      goto LABEL_1702;
    }

    v467 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v467, OS_LOG_TYPE_INFO))
    {
      goto LABEL_1702;
    }

    goto LABEL_1700;
  }

  v784 += v256;
  DWORD1(v822) += v256;
  if (&v822 == v768)
  {
    v274 = v285 - v256;
    HIDWORD(v800) = v285 - v256;
    if (v256 >= v823)
    {
      v257 &= ~0x20u;
      v823 = 0;
    }

    else
    {
      v823 -= v256;
    }
  }

  else
  {
    *(v768 + 4) += v256;
    v274 = v285 - v256;
    HIDWORD(v800) = v285 - v256;
    if (v256 >= v823)
    {
      v257 &= ~0x20u;
      v823 = 0;
      *(v768 + 18) = 0;
    }

    else
    {
      v823 -= v256;
      *(v768 + 18) -= v256;
    }
  }

LABEL_694:
  v159 = v780;
  v773 = v257;
  if (v274)
  {
    v295 = *(v15 + 364);
    v296 = (v295 & 0x1000000) == 0 && (*(v15 + 376) & 1) != 0 && *(v780 + 12) > 5;
    if ((v295 & 8) != 0 && *(v780 + 12) > 6)
    {
      v296 = 1;
    }

    if (*(v15 + 376) & 0x20 | v296)
    {
      v304 = *(v780 + 1064);
      if (v304)
      {
        ++*(v304 + 304);
      }

      tcp_close(v780);
      v158 = v760;
      if (!v791)
      {
        goto LABEL_306;
      }

      v260 = 1112;
LABEL_711:
      v160 = v794;
      goto LABEL_1001;
    }
  }

  v297 = DWORD1(v822);
  v298 = *(v780 + 120);
  v299 = *(v780 + 128);
  v300 = v274 + DWORD1(v822) - (v298 + v299);
  v752 = v15;
  if (v300 < 1)
  {
    goto LABEL_968;
  }

  v301 = *(v780 + 1064);
  if (!v301)
  {
    v303 = v274;
    if (v274 > v300)
    {
      goto LABEL_719;
    }

    if (DWORD1(v822) == v298 && !v299)
    {
      a1 = v779;
      *(v780 + 88) |= 1u;
      goto LABEL_719;
    }

LABEL_991:
    a1 = v779;
    v15 = v752;
    goto LABEL_992;
  }

  v302 = v301[35];
  ++v301[34];
  if (v274 > v300)
  {
    v303 = v274;
    v301[35] = v302 + v300;
    goto LABEL_719;
  }

  v301[35] = v302 + v274;
  if (v297 != v298 || v299)
  {
    goto LABEL_991;
  }

  v303 = v274;
  a1 = v779;
  *(v780 + 88) |= 1u;
  ++v301[36];
LABEL_719:
  v305 = *a1;
  if (!*a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_is_single_ip_aggregate";
    v654 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v803 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_1829;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v655 = __nwlog_obj();
      v656 = type[0];
      if (!os_log_type_enabled(v655, type[0]))
      {
        goto LABEL_1829;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v657 = "%{public}s called with null frame";
    }

    else
    {
      if (v803 == 1)
      {
        v682 = __nw_create_backtrace_string();
        v683 = __nwlog_obj();
        v684 = type[0];
        v685 = os_log_type_enabled(v683, type[0]);
        if (v682)
        {
          if (v685)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_is_single_ip_aggregate";
            *&buf[12] = 2082;
            *&buf[14] = v682;
            _os_log_impl(&dword_1889BA000, v683, v684, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v682);
          goto LABEL_1829;
        }

        if (!v685)
        {
LABEL_1829:
          if (v654)
          {
            free(v654);
          }

          goto LABEL_946;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_is_single_ip_aggregate";
        v657 = "%{public}s called with null frame, no backtrace";
        v695 = v683;
        v696 = v684;
LABEL_1828:
        _os_log_impl(&dword_1889BA000, v695, v696, v657, buf, 0xCu);
        goto LABEL_1829;
      }

      v655 = __nwlog_obj();
      v656 = type[0];
      if (!os_log_type_enabled(v655, type[0]))
      {
        goto LABEL_1829;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v657 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    v695 = v655;
    v696 = v656;
    goto LABEL_1828;
  }

  if ((*(v305 + 204) & 0x80) != 0)
  {
    v306 = *(v305 + 196);
    if (v300 <= v306)
    {
      *(v305 + 196) = v306 - v300;
LABEL_946:
      a1 = v779;
      goto LABEL_947;
    }

    __nwlog_obj();
    v307 = *(v305 + 196);
    *buf = 136446722;
    *&buf[4] = "__nw_frame_array_claim";
    *&buf[12] = 1024;
    *&buf[14] = v307;
    *&buf[18] = 1024;
    *&buf[20] = v300;
    v308 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v803 = 0;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v309 = __nwlog_obj();
        v310 = type[0];
        if (os_log_type_enabled(v309, type[0]))
        {
          v311 = *(v305 + 196);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_array_claim";
          *&buf[12] = 1024;
          *&buf[14] = v311;
          *&buf[18] = 1024;
          *&buf[20] = v300;
          v312 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_941:
          v403 = v309;
LABEL_942:
          _os_log_impl(&dword_1889BA000, v403, v310, v312, buf, 0x18u);
        }
      }

      else if (v803 == 1)
      {
        v358 = __nw_create_backtrace_string();
        v359 = __nwlog_obj();
        v310 = type[0];
        v360 = os_log_type_enabled(v359, type[0]);
        if (v358)
        {
          if (v360)
          {
            v361 = *(v305 + 196);
            *buf = 136446978;
            *&buf[4] = "__nw_frame_array_claim";
            *&buf[12] = 1024;
            *&buf[14] = v361;
            *&buf[18] = 1024;
            *&buf[20] = v300;
            *v805 = 2082;
            *&v805[2] = v358;
            _os_log_impl(&dword_1889BA000, v359, v310, "%{public}s Aggregate buffer length: %u sum: %u, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(v358);
          goto LABEL_943;
        }

        if (v360)
        {
          v451 = *(v305 + 196);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_array_claim";
          *&buf[12] = 1024;
          *&buf[14] = v451;
          *&buf[18] = 1024;
          *&buf[20] = v300;
          v312 = "%{public}s Aggregate buffer length: %u sum: %u, no backtrace";
          v403 = v359;
          goto LABEL_942;
        }
      }

      else
      {
        v309 = __nwlog_obj();
        v310 = type[0];
        if (os_log_type_enabled(v309, type[0]))
        {
          v402 = *(v305 + 196);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_array_claim";
          *&buf[12] = 1024;
          *&buf[14] = v402;
          *&buf[18] = 1024;
          *&buf[20] = v300;
          v312 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
          goto LABEL_941;
        }
      }
    }

LABEL_943:
    if (v308)
    {
      free(v308);
    }

    *(v305 + 196) = 0;
    goto LABEL_946;
  }

LABEL_947:
  v404 = **(a1[1] + 8);
  if (v404)
  {
    v405 = 0;
    while (1)
    {
      v406 = *(v404 + 52);
      v407 = *(v404 + 56);
      v408 = *(v404 + 60);
      v409 = v406 - (v407 + v408);
      if (v409 >= v300 - v405)
      {
        v409 = v300 - v405;
      }

      v410 = v406 ? v409 : 0;
      v411 = v408 + v410;
      if (v407 <= v406 - (v408 + v410))
      {
        *(v404 + 60) = v411;
      }

      else
      {
        v412 = __nwlog_obj();
        if (os_log_type_enabled(v412, OS_LOG_TYPE_ERROR))
        {
          v413 = *(v404 + 52);
          *buf = 136446978;
          *&buf[4] = "__nw_frame_claim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v407;
          *&buf[18] = 1024;
          *&buf[20] = v413;
          *v805 = 1024;
          *&v805[2] = v411;
          _os_log_impl(&dword_1889BA000, v412, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
        }
      }

      v405 += v410;
      if (v405 == v300)
      {
        break;
      }

      if (*(v404 + 32) != 0 && v405 < v300)
      {
        v404 = **(*(v404 + 40) + 8);
        if (v404)
        {
          continue;
        }
      }

      goto LABEL_964;
    }
  }

  else
  {
    v405 = 0;
LABEL_964:
    if (v405 != v300)
    {
      v414 = __nwlog_obj();
      if (os_log_type_enabled(v414, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "__nw_frame_array_claim";
        *&buf[12] = 1024;
        *&buf[14] = v405;
        *&buf[18] = 1024;
        *&buf[20] = v300;
        _os_log_impl(&dword_1889BA000, v414, OS_LOG_TYPE_ERROR, "%{public}s end_offset %u != end_bytes %u", buf, 0x18u);
      }
    }
  }

  v274 = v303 - v300;
  HIDWORD(v800) = v303 - v300;
  v257 = v773 & 0xFFFFFFF6;
  v159 = v780;
LABEL_968:
  if (v797[0])
  {
    v415 = *(v159 + 296);
    if (DWORD1(v822) - v415 <= 0 && v415 - ((v257 & 3) != 0) - (DWORD1(v822) + v274) <= 0)
    {
      *(v159 + 292) = *v770;
      *(v159 + 284) = DWORD1(v797[0]);
    }
  }

  if ((v257 & 2) == 0)
  {
    v416 = v274;
    goto LABEL_974;
  }

  if (v274 < 1 || DWORD1(v822) != *(v159 + 116) || *(*(*(v159 + 80) + 248) + 8) >> 31)
  {
    v773 = v257;
    if (tcp_is_ack_ratelimited(v159))
    {
LABEL_983:
      a1 = v779;
      v15 = v752;
      goto LABEL_984;
    }

    v420 = *(v159 + 1064);
    if (v420)
    {
      ++*(v420 + 104);
    }

    goto LABEL_991;
  }

  v416 = v274;
  ++DWORD1(v822);
  v257 &= ~2u;
LABEL_974:
  v417 = *(v159 + 12);
  v773 = v257;
  if ((v257 & 0x10) == 0)
  {
    if (v417 == 3)
    {
      if ((*(v159 + 750) & 0x40) != 0)
      {
        *(v780 + 100) = *(v780 + 92);
        v765 = (BYTE13(v822) >> 1) & 1;
      }

      else
      {
        v765 = 0;
      }

      LOBYTE(v272) = v257;
      v144 = v771;
      tcp_input_process_accecn_syn(v780, (v257 | (BYTE12(v822) << 8)) & 0x1C0, v771);
      v400 = 0;
      v251 = 0;
      a1 = v779;
      v15 = v752;
      v7 = v759;
      goto LABEL_934;
    }

    a1 = v779;
    v15 = v752;
    v7 = v759;
    v158 = v760;
    v160 = v794;
    if (*(v159 + 88))
    {
      goto LABEL_995;
    }

    goto LABEL_1029;
  }

  v418 = 0;
  if ((v417 - 4) < 7)
  {
    goto LABEL_986;
  }

  if (v417 != 3)
  {
    v251 = 0;
    v400 = 0;
    v765 = 0;
    goto LABEL_1463;
  }

  v430 = *(v780 + 1064);
  if (v430)
  {
    ++*(v430 + 408);
  }

  if ((~*(v780 + 88) & 0x60) == 0)
  {
    v431 = *(v780 + 271);
    *(v780 + 268) = v431;
    *(v780 + 269) = *(v780 + 270);
    v432 = HIWORD(v822) << v431;
    *(v780 + 144) = v432;
    v758 = v432;
    *(v780 + 260) = v432;
    if (*(v752 + 24))
    {
      v433 = nw_protocol_tcp_get_all_stats();
      v758 = *(v780 + 144);
      if (v433)
      {
        *(v433 + 112) = v758;
      }
    }
  }

  *(v780 + 172) = *v770;
  tcp_sbrcv_tstmp_check(v780);
  if ((*(v780 + 89) & 8) != 0)
  {
    *(v780 + 12) = 6;
    if (!v752 || (*(v752 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v728 = __nwlog_tcp_log();
        if (os_log_type_enabled(v728, OS_LOG_TYPE_DEBUG))
        {
          v729 = tcpstates[*(v780 + 12)];
          *&buf[4] = "tcp_input";
          v730 = &unk_188A285CF;
          *buf = 136446722;
          if (v752)
          {
            v730 = (v752 + 556);
          }

          *&buf[12] = 2082;
          *&buf[14] = v730;
          *&buf[22] = 2082;
          *v805 = v729;
          _os_log_impl(&dword_1889BA000, v728, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
        }
      }
    }

    if (*(v752 + 24))
    {
      v442 = nw_protocol_tcp_get_all_stats();
      if (v442)
      {
        *(v442 + 136) = 6;
      }
    }

    *(v780 + 88) &= ~0x800u;
  }

  else
  {
    *(v780 + 12) = 4;
    if (!v752 || (*(v752 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v725 = __nwlog_tcp_log();
        if (os_log_type_enabled(v725, OS_LOG_TYPE_DEBUG))
        {
          v726 = tcpstates[*(v780 + 12)];
          *&buf[4] = "tcp_input";
          v727 = &unk_188A285CF;
          *buf = 136446722;
          if (v752)
          {
            v727 = (v752 + 556);
          }

          *&buf[12] = 2082;
          *&buf[14] = v727;
          *&buf[22] = 2082;
          *v805 = v726;
          _os_log_impl(&dword_1889BA000, v725, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", buf, 0x20u);
        }
      }
    }

    if (*(v752 + 24))
    {
      v434 = nw_protocol_tcp_get_all_stats();
      if (v434)
      {
        *(v434 + 136) = 4;
      }
    }

    v435 = *(v780 + 668);
    v436 = *(*(v780 + 80) + 224);
    if (!v435 || (*(v436 + 372) & 8) == 0)
    {
      v435 = *(sysctls + 188);
    }

    *(v780 + 40) = *(nw_tcp_access_globals(v436) + 308) + v435 - *(v780 + 64);
    if (*(v752 + 24))
    {
      v437 = nw_protocol_tcp_get_all_stats();
      if (v437)
      {
        ++*(v437 + 64);
      }
    }
  }

  *(v780 + 320) = 16;
  if (*v780)
  {
    v717 = __nwlog_obj();
    os_log_type_enabled(v717, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "tcp_input";
    v718 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      goto LABEL_1926;
    }

    free(v718);
  }

  *(v780 + 104) = DWORD1(v822) - 1;
  if ((v773 & 0x12) == 0x10)
  {
    v443 = *(v780 + 2096);
    if ((v443 & 2) != 0)
    {
      if (v416 || HIBYTE(v797[0]))
      {
        if (!HIBYTE(v797[0]))
        {
          *(v780 + 412) = 5;
          if (*(v780 + 352) == 5)
          {
            *(v780 + 352) = 8;
          }
        }

        goto LABEL_1183;
      }

      v444 = ((v773 | (BYTE12(v822) << 8)) >> 6) & 7;
      if (v444 <= 2)
      {
        if (!v444)
        {
          v468 = *(v780 + 336);
          *(v780 + 336) = v468 & 0xFFDFFFF1;
          *(v780 + 2096) = v443 & 0xFD;
          if ((v468 & 0x200) != 0 && *(v780 + 234) <= 2u && (*(v780 + 352) & 0xFFFFFFFE) == 4)
          {
            *(v780 + 352) = 6;
          }

          if (*(v780 + 352) != 5)
          {
            goto LABEL_1178;
          }

          v463 = 7;
          goto LABEL_1176;
        }

        if (v444 == 2)
        {
          *(v780 + 412) = 5;
          if (*(v780 + 352) == 5)
          {
            v463 = 8;
LABEL_1176:
            *(v780 + 352) = v463;
          }

LABEL_1178:
          if (v797[0])
          {
            if (DWORD2(v797[0]))
            {
              v469 = *(v780 + 392);
              if (!v469 || ((DWORD2(v797[0]) - v469) & 0x80000000) == 0)
              {
                *(v780 + 392) = DWORD2(v797[0]);
              }
            }
          }

LABEL_1183:
          tcp_input_ip_ecn(v780, a3, v416, v778, v771);
          goto LABEL_1184;
        }
      }

      else
      {
        if (v444 - 3 < 2)
        {
          v445 = v780;
          *(v780 + 412) = 5;
          goto LABEL_1161;
        }

        if (v444 == 6)
        {
          v445 = v780;
          *(v780 + 412) = 6;
          *(v780 + 148) = 2 * *(v780 + 200);
LABEL_1161:
          if (*(v445 + 352) == 5)
          {
            v463 = 9;
            goto LABEL_1176;
          }

          goto LABEL_1178;
        }
      }

      *(v780 + 412) = 5;
      goto LABEL_1178;
    }
  }

LABEL_1184:
  v470 = *(v780 + 996);
  if ((v470 & 2) == 0)
  {
    v418 = 1;
    goto LABEL_1188;
  }

  atomic_fetch_add_explicit(&tcp_tfo_halfcnt, 0xFFFFFFFF, memory_order_relaxed);
  if (tcp_tfo_halfcnt < 0)
  {
    v723 = __nwlog_obj();
    os_log_type_enabled(v723, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "tcp_input";
    v724 = _os_log_send_and_compose_impl();
    if (!__nwlog_should_abort())
    {
      free(v724);
      v470 = *(v780 + 996);
      goto LABEL_1187;
    }

LABEL_1926:
    __break(1u);
LABEL_1927:
    if ((*(v752 + 776) & 2) == 0)
    {
      v751 = __nwlog_tcp_log();
      if (os_log_type_enabled(v751, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        *&buf[4] = "tcp_input";
        *&buf[12] = 2082;
        *&buf[14] = v752 + 556;
        _os_log_impl(&dword_1889BA000, v751, OS_LOG_TYPE_INFO, "%{public}s %{public}s dropping input packet since frame is no longer valid", buf, 0x16u);
      }
    }

    *(v780 + 1064) = 0;
    goto LABEL_983;
  }

LABEL_1187:
  v418 = 0;
  *(v780 + 996) = v470 & 0xFD;
LABEL_1188:
  if (*(v752 + 384))
  {
    v471 = *(v780 + 92) + 1;
    *(v780 + 92) = v471;
    if (*(v752 + 24))
    {
      v472 = nw_protocol_tcp_get_all_stats();
      v471 = *(v780 + 92);
      if (v472)
      {
        *(v472 + 108) = *(v780 + 96) - v471;
        v471 = *(v780 + 92);
      }
    }

    if (*(v780 + 100) - v471 < 0)
    {
      *(v780 + 100) = v471;
    }

    if ((*(v780 + 748) & 0x20) == 0 || !HIBYTE(v797[0]) && !*(v780 + 536))
    {
      goto LABEL_1195;
    }

    v252 = v780;
    tcp_sack_doack(v780, v797, SDWORD2(v822), &v800, &v799);
    goto LABEL_1199;
  }

LABEL_986:
  if (DWORD2(v822) - *(v780 + 96) >= 1)
  {
    v419 = *(v780 + 1064);
    if (v419)
    {
      ++*(v419 + 184);
    }

    goto LABEL_1028;
  }

  v424 = *(v780 + 728);
  v425 = *(v780 + 260);
  if (v424 >= v425)
  {
    v426 = *(v780 + 260);
  }

  else
  {
    v426 = *(v780 + 728);
  }

  if (v424 >= v425)
  {
    LODWORD(v424) = *(v780 + 260);
  }

  if (v426 <= 0x64)
  {
    LODWORD(v424) = 100;
  }

  if (DWORD2(v822) - *(v780 + 92) + v424 >= 0)
  {
    if ((*(v780 + 748) & 0x20) != 0 && HIBYTE(v797[0]))
    {
      v427 = tcp_sack_process_dsack(v780, v797, &v822, &v796);
      v428 = v427;
      if ((*(v780 + 748) & 0x20400020) == 0x20000020)
      {
        if (v427 && !v796)
        {
          *(v780 + 2077) |= 0x40u;
        }

        tcp_rack_update_reordering_window(v780, v799);
      }

      if (v428 && DWORD2(v822) - *(v780 + 92) <= 0 && !HIBYTE(v797[0]))
      {
        tcp_bad_rexmt_check(v780, &v822, v797);
        goto LABEL_983;
      }
    }

    if ((*(v780 + 748) & 0x20) != 0 && (HIBYTE(v797[0]) || *(v780 + 536)))
    {
      tcp_sack_doack(v780, v797, SDWORD2(v822), &v800, &v799);
    }

    tcp_tfo_rcv_ack(v780, &v822);
    if (DWORD2(v822) - *(v780 + 92) <= 0)
    {
      v441 = *(v780 + 748);
      if ((~v441 & 0x20000020) == 0 && (v441 & 0x400000) == 0 && v800 && *(v780 + 552) - v799 < 0)
      {
        *(v780 + 552) = v799;
      }

      if ((*(v780 + 2096) & 2) != 0 && (*(v780 + 336) & 4) != 0 && !v800)
      {
        ++*(v780 + 308);
        if ((v797[0] & 1) != 0 && DWORD2(v797[0]) && DWORD2(v797[0]) - *(v780 + 392) >= 1)
        {
          tcp_process_accecn(v780, v797, &v822, 1u, v755);
        }
      }

      if (v416)
      {
        v400 = 0;
        v765 = 0;
      }

      else
      {
        if (v758 == *(v780 + 144) || (v400 = 0, HIBYTE(v797[0])) && v800)
        {
          if (v773)
          {
            v452 = 0;
            v400 = 0;
            v765 = 0;
            a1 = v779;
            v15 = v752;
            v7 = v759;
            v144 = v771;
            LOBYTE(v272) = v773;
            v401 = v758;
            v251 = v418;
            if (*(v780 + 12) < 10)
            {
              goto LABEL_1369;
            }
          }

          else
          {
            v452 = 0;
            v400 = 0;
            v765 = 0;
            v15 = v752;
            LOBYTE(v272) = v773;
            v401 = v758;
            v251 = v418;
          }

LABEL_1430:
          v758 = v401;
          LOBYTE(v773) = v272;
          v752 = v15;
          v560 = *(v780 + 336);
          if ((v560 & 0x20) != 0)
          {
            v560 &= ~0x20u;
            *(v780 + 336) = v560;
          }

          v561 = *(v780 + 8);
          v562 = *(v780 + 1064);
          if (v562)
          {
            ++*(v562 + 176);
          }

          v563 = *(v780 + 748);
          v564 = v800;
          if ((v563 & 0x20) != 0)
          {
            v565 = v800 / *(v780 + 200);
            if (v565 <= 1)
            {
              v565 = 1;
            }
          }

          else
          {
            v565 = 1;
          }

          *(v780 + 8) = v561 + v565;
          if ((v563 & 0x20400020) != 0x20000020)
          {
            *(v780 + 620) += v564;
          }

          if (v564 && (*(v780 + 2096) & 2) != 0 && (v560 & 4) != 0 && *(v780 + 12) == 4)
          {
            v566 = *(v780 + 200);
            if (v564 / v566 * v566 == v564)
            {
              v567 = v564 / v566;
            }

            else
            {
              v567 = v564 / v566 + 1;
            }

            *(v780 + 308) += v567;
            tcp_process_accecn(v780, v797, &v822, v567, v755);
          }

          if (*(v780 + 276) && *v770 - *(v780 + 280) - 60000 >= 0)
          {
            *(v780 + 276) = 0;
          }

          if ((*(v780 + 90) & 0x20) == 0)
          {
            tcp_early_rexmt_check(v780);
          }

          if ((*(v780 + 748) & 0x20400020) == 0x20000020)
          {
            v568 = tcp_rack_detect_loss_and_arm_timer(v780, *(v780 + 8));
          }

          else
          {
            v568 = 0;
          }

          if (*(v780 + 28))
          {
            v569 = *(v780 + 92);
            if (DWORD2(v822) == v569 || v564)
            {
              v574 = *(v780 + 748);
              if ((v574 & 0x20400020) != 0x20000020 && (v575 = *(v780 + 322), *(v780 + 8) > v575) && v561 >= v575 || (v576 = *(v780 + 88), (v576 & 0x200000) != 0))
              {
                if ((v574 & 0x20) == 0)
                {
                  goto LABEL_1498;
                }

                v583 = *(v780 + 88);
                if ((~v574 & 0x6000) == 0 && (v583 & 0x200000) == 0)
                {
                  goto LABEL_1463;
                }

                if ((v583 & 0x200000) != 0)
                {
                  v649 = *(v780 + 152);
                  if (*(v780 + 100) - *(v780 + 552) + *(v780 + 616) < v649)
                  {
                    if (*(v780 + 148) + *(v780 + 200) < v649)
                    {
                      v649 = *(v780 + 148) + *(v780 + 200);
                    }

                    *(v780 + 148) = v649;
                  }
                }

                else
                {
LABEL_1498:
                  *(v780 + 148) += *(v780 + 200);
                }

                v584 = *(v780 + 144);
              }

              else
              {
                if ((v568 & 1) == 0)
                {
                  v577 = *(v780 + 8);
                  if ((v574 & 0x20400020) == 0x20000020 || v577 < *(v780 + 322))
                  {
                    if (v577 >= 1)
                    {
                      v578 = ~v574 & 0x6000;
                      v579 = (v574 & 0x20) != 0 && v564 == 0;
                      v580 = !v579;
                      if (v578 && v577 < *(v780 + 322) && v580 && v569 - *(v780 + 96) + *(v15 + 384))
                      {
                        v581 = *(v780 + 200) * v577;
                        *(v780 + 148) += v581;
                        v582 = *(v780 + 1064);
                        if (v582)
                        {
                          ++*(v582 + 688);
                        }

                        if (tcp_output(v780) && (*(v794 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v794, *(v794 + 88)) & 1) == 0)
                        {
                          goto LABEL_1927;
                        }

                        *(v780 + 148) -= v581;
                      }
                    }

                    goto LABEL_1463;
                  }
                }

                v623 = *(v780 + 100);
                if ((v574 & 0x20) != 0)
                {
                  if ((v574 & 0x4000) != 0)
                  {
                    goto LABEL_1463;
                  }
                }

                else if (DWORD2(v822) - *(v780 + 156) <= 0)
                {
                  *(v780 + 8) = 0;
                  goto LABEL_1463;
                }

                *(v780 + 156) = *(v780 + 96) + (v576 << 27 >> 31);
                *(v780 + 16) = 0;
                *(v780 + 176) = 0;
                if ((v574 & 0x6020) == 0x2020 && *(v780 + 528) && (*(v780 + 12) | 2) == 6)
                {
                  v642 = *(v780 + 528);
                  *(v780 + 20) = *(nw_tcp_access_globals(*(*(v780 + 80) + 224)) + 308) + v642 - *(v780 + 64);
                  *(v780 + 748) |= 0x4000u;
                  v643 = *(v780 + 1064);
                  if (v643)
                  {
                    ++*(v643 + 984);
                  }

                  goto LABEL_1463;
                }

                tcp_rexmt_save_state(v780);
                v644 = *(tcp_cc_algo_list[*(v780 + 272)] + 64);
                if (v644)
                {
                  v644(v780);
                }

                *(v780 + 88) |= 0x200000u;
                v645 = *(v780 + 80);
                if ((*(v645 + 2375) & 0x40) != 0)
                {
                  inp_reset_fc_state(v645);
                }

                if (*(v780 + 960))
                {
                  tcp_rxtseg_clean(v780);
                }

                *(v780 + 28) = 0;
                if ((*(v780 + 2096) & 2) == 0)
                {
                  v646 = *(v780 + 336);
                  if ((~v646 & 3) == 0)
                  {
                    *(v780 + 336) = v646 | 8;
                  }
                }

                v647 = *(v780 + 748);
                if ((v647 & 0x20) == 0)
                {
                  *(v780 + 100) = DWORD2(v822);
                  *(v780 + 148) = *(v780 + 200);
                  *(v780 + 748) = v647 & 0xFFEFFFDF;
                  if (v758 > *(v780 + 144))
                  {
                    tcp_update_window(v780, v272, &v822, v758, v452);
                  }

                  tcp_output(v780);
                  if ((*(v780 + 750) & 0x10) != 0)
                  {
                    tcp_cc_adjust_nonvalidated_cwnd(v780);
                  }

                  else
                  {
                    *(v780 + 148) = *(v780 + 152) + *(v780 + 8) * *(v780 + 200);
                  }

                  if (v623 - *(v780 + 100) >= 1)
                  {
                    *(v780 + 100) = v623;
                  }

                  goto LABEL_983;
                }

                v658 = *(v780 + 1064);
                if ((v647 & 0x20400000) == 0x20000000)
                {
                  if (v658)
                  {
                    ++*(v658 + 624);
                  }

                  ++*(v780 + 1016);
                }

                else
                {
                  if (v658)
                  {
                    ++*(v658 + 568);
                  }

                  ++*(v780 + 1012);
                }

                *(v780 + 148) = *(v780 + 152);
                *(v780 + 748) = v647 & 0xFFEFFFFF;
                v584 = *(v780 + 144);
              }

              if (v758 > v584)
              {
                tcp_update_window(v780, v272, &v822, v758, v452);
              }

              tcp_output(v780);
              goto LABEL_983;
            }
          }

          *(v780 + 8) = 0;
          *(v780 + 322) = 3;
LABEL_1463:
          a1 = v779;
          v15 = v752;
          v7 = v759;
          v144 = v771;
          LOBYTE(v272) = v773;
          goto LABEL_934;
        }

        v765 = 0;
      }

      a1 = v779;
      v15 = v752;
      v7 = v759;
      v144 = v771;
      LOBYTE(v272) = v773;
      v401 = v758;
      v251 = v418;
      goto LABEL_1369;
    }

    v438 = *(v780 + 88);
    if ((v438 & 0x200000) == 0)
    {
      v439 = *(v780 + 748);
      if ((~v439 & 0x6000) != 0)
      {
        v400 = 0;
        v252 = v780;
        *(v780 + 8) = 0;
        *(v780 + 322) = 3;
        goto LABEL_1200;
      }

      if (DWORD2(v822) - *(v780 + 156) >= 0 || !*(v780 + 536))
      {
        v400 = 0;
        v252 = v780;
        *(v780 + 8) = 0;
        *(v780 + 322) = 3;
        *(v780 + 300) = 0;
        *(v780 + 336) &= ~0x20u;
        *(v780 + 16) = 0;
        *(v780 + 748) = v439 & 0xFFF7BFFF;
        *(v780 + 992) = 0;
        *(v780 + 620) = 0;
LABEL_1200:
        a1 = v779;
        goto LABEL_1201;
      }

LABEL_1195:
      v400 = 0;
      a1 = v779;
      v252 = v780;
LABEL_1201:
      v15 = v752;
      v7 = v759;
      v272 = v773;
      v251 = v418;
      v367 = v416;
      goto LABEL_1202;
    }

    if (DWORD2(v822) - *(v780 + 156) >= 0)
    {
      *(v780 + 88) = v438 & 0xFFDFFFFF;
      *(v780 + 8) = 0;
      *(v780 + 322) = 3;
      *(v780 + 300) = 0;
      *(v780 + 336) &= ~0x20u;
      *(v780 + 16) = 0;
      v449 = *(v780 + 748) & 0xFFF7FFFF;
      *(v780 + 748) = v449;
      *(v780 + 992) = 0;
      *(v780 + 620) = 0;
      v450 = *(tcp_cc_algo_list[*(v780 + 272)] + 72);
      if (v450)
      {
        v450(v780, &v822);
        v449 = *(v780 + 748);
      }

      if ((v449 & 0x20400020) == 0x20000020 && (*(v780 + 2077) & 0x1F) != 0)
      {
        *(v780 + 2077) = *(v780 + 2077) & 0xE0 | (*(v780 + 2077) - 1) & 0x1F;
      }

      v252 = v780;
      *(v780 + 988) = 0;
      *(v780 + 980) = 0;
      *(v780 + 972) = 0;
      *(v780 + 759) = 0;
      v400 = 1;
      goto LABEL_1200;
    }

    if ((*(v780 + 336) & 0x20) != 0)
    {
      goto LABEL_1195;
    }

    v453 = *(v780 + 748);
    if ((v453 & 0x20400020) == 0x20000020)
    {
      goto LABEL_1195;
    }

    v252 = v780;
    if ((v453 & 0x20) != 0)
    {
      tcp_sack_partialack(v780, &v822);
    }

    else
    {
      tcp_newreno_partial_ack(v780, &v822);
    }

LABEL_1199:
    v400 = 0;
    goto LABEL_1200;
  }

LABEL_1028:
  v159 = v780;
  is_ack_ratelimited = tcp_is_ack_ratelimited(v780);
  a1 = v779;
  v15 = v752;
  v7 = v759;
  v158 = v760;
  v160 = v794;
  if (is_ack_ratelimited)
  {
    goto LABEL_1029;
  }

LABEL_995:
  if (*(v159 + 12) == 3 && (v773 & 0x10) != 0 && (*(v159 + 92) - DWORD2(v822) > 0 || DWORD2(v822) - *(v159 + 96) >= 1))
  {
    if (!v791)
    {
      goto LABEL_307;
    }

    v260 = 1104;
LABEL_1001:
    atomic_fetch_add((v791 + v260), 1uLL);
LABEL_307:
    if ((v773 & 4) == 0)
    {
      if ((v773 & 0x10) != 0)
      {
        v163 = DWORD2(v822);
        v162 = v159;
        v161 = 0;
        v164 = 4;
      }

      else
      {
        v161 = HIDWORD(v800) + ((v773 >> 1) & 1) + DWORD1(v822);
        v162 = v159;
        v163 = 0;
        v164 = 20;
      }

      tcp_respond(v162, &v822, v160, v161, v163, v164, 0);
      if (v158)
      {
        soabort(v15);
      }

      (*(*(v15 + 8) + 24))(v15, 1, v7);
      *v795 = v782 != 0;
      v170 = *a1;
      if (*a1)
      {
        *(v170 + 40) = type;
        v171 = a1[1];
        *type = v170;
        v802 = v171;
        *a1 = 0;
        a1[1] = a1;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
        *v805 = &__block_descriptor_tmp_290;
        v805[8] = 1;
        do
        {
          v172 = *type;
          if (!*type)
          {
            break;
          }

          nw_frame_array_remove();
        }

        while (((*&buf[16])(buf, v172) & 1) != 0);
      }

      goto LABEL_60;
    }

    goto LABEL_1029;
  }

  *(v159 + 88) |= 1u;
  tcp_output(v159);
  (*(*(v15 + 8) + 24))(v15, 1, v7);
  *v795 = v782 != 0;
  v421 = *a1;
  if (*a1)
  {
    *(v421 + 40) = type;
    v422 = a1[1];
    *type = v421;
    v802 = v422;
    *a1 = 0;
    a1[1] = a1;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
    *v805 = &__block_descriptor_tmp_290;
    v805[8] = 1;
    do
    {
      v423 = *type;
      if (!*type)
      {
        break;
      }

      nw_frame_array_remove();
    }

    while (((*&buf[16])(buf, v423) & 1) != 0);
  }

LABEL_60:
  v50 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_set_lotimer_index(uint64_t result)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(result + 16);
  v2 = *(result + 20);
  v3 = result + 16;
  v4 = 8 * (v1 == 0);
  v5 = *(result + 24);
  v6 = v2 - 1;
  v7 = v2 != 0;
  if (v2 - 1 >= (v1 - 1))
  {
    v2 = *(result + 16);
  }

  if (v6 < v1 - 1)
  {
    v4 = 1;
  }

  v8 = v2 - 1;
  v9 = (v5 | v1) != 0;
  if (v5 - 1 < (v2 - 1))
  {
    v2 = *(result + 24);
  }

  v10 = v9 || v7;
  if (v5 - 1 < v8)
  {
    v4 = 2;
  }

  v11 = *(result + 28);
  if (v2 - 1 >= v11)
  {
    v12 = *(result + 28);
  }

  else
  {
    v12 = v2;
  }

  if (v2 - 1 >= v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = v4;
  }

  if (v11)
  {
    v2 = v12;
    v10 |= 2u;
    v4 = v13;
  }

  v14 = *(result + 32);
  v15 = *(result + 36);
  if (v2 - 1 >= v14)
  {
    v16 = *(result + 32);
  }

  else
  {
    v16 = v2;
  }

  if (v2 - 1 >= v14)
  {
    v17 = 4;
  }

  else
  {
    v17 = v4;
  }

  if (v14)
  {
    v2 = v16;
    v10 |= 2u;
    v4 = v17;
  }

  if (v2 - 1 >= v15)
  {
    v18 = *(result + 36);
  }

  else
  {
    v18 = v2;
  }

  if (v2 - 1 >= v15)
  {
    v19 = 5;
  }

  else
  {
    v19 = v4;
  }

  if (v15)
  {
    v2 = v18;
    v10 |= 4u;
    v20 = v19;
  }

  else
  {
    v20 = v4;
  }

  v22 = *(result + 40);
  v21 = *(result + 44);
  if (v2 - 1 >= v22)
  {
    v23 = *(result + 40);
  }

  else
  {
    v23 = v2;
  }

  if (v2 - 1 >= v22)
  {
    v24 = 6;
  }

  else
  {
    v24 = v20;
  }

  if (v22)
  {
    v25 = v10 | 4;
  }

  else
  {
    v23 = v2;
    v25 = v10;
  }

  if (v22)
  {
    v26 = v24;
  }

  else
  {
    v26 = v20;
  }

  if (v21)
  {
    v27 = v25 | 4;
    if (v23 - 1 >= v21)
    {
      v26 = 7;
    }

    *(result + 72) = v26;
    *(result + 74) = v27;
    if (v26 == 8)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

  *(result + 72) = v26;
  *(result + 74) = v25;
  if (v26 == 8 || v25 != 0)
  {
    if (v26 != 8)
    {
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  v31 = result;
  v32 = __nwlog_obj();
  os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  v33 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v33);
    result = v31;
    v26 = *(v31 + 72);
    if (v26 != 8)
    {
LABEL_56:
      v29 = *(v3 + 4 * v26) + *(result + 64);
      if (v29 != *(result + 68))
      {
        if (v29 <= 1)
        {
          v29 = 1;
        }

        *(result + 68) = v29;
        result = nw_tcp_access_globals(*(*(result + 80) + 224));
        if (*(result + 280))
        {
          *(result + 302) |= 4u;
        }
      }
    }

LABEL_61:
    v30 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t tcp_getlock(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      *buf = 136446978;
      v13 = "tcp_getlock";
      v14 = 2082;
      v15 = a1 + 556;
      v16 = 2048;
      v17 = a1;
      v18 = 2082;
      *v19 = &unk_188A285CF;
      v3 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v5 = __nwlog_tcp_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v13 = "tcp_getlock";
          v14 = 2082;
          v15 = a1 + 556;
          v16 = 2048;
          v17 = a1;
          v18 = 2082;
          *v19 = &unk_188A285CF;
          v6 = "%{public}s %{public}s tcp_getlock: so=%p NULL so_pcb %{public}s, backtrace limit exceeded";
          v9 = v5;
          v10 = 42;
LABEL_14:
          _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, v6, buf, v10);
        }
      }

LABEL_15:
      if (v3)
      {
        free(v3);
      }
    }

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 360) & 0x80000000) != 0)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v4 = *(a1 + 360);
      *buf = 136447234;
      v13 = "tcp_getlock";
      v14 = 2082;
      v15 = a1 + 556;
      v16 = 2048;
      v17 = a1;
      v18 = 1024;
      *v19 = v4;
      *&v19[4] = 2082;
      *&v19[6] = &unk_188A285CF;
      v3 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v7 = __nwlog_tcp_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *(a1 + 360);
          *buf = 136447234;
          v13 = "tcp_getlock";
          v14 = 2082;
          v15 = a1 + 556;
          v16 = 2048;
          v17 = a1;
          v18 = 1024;
          *v19 = v8;
          *&v19[4] = 2082;
          *&v19[6] = &unk_188A285CF;
          v6 = "%{public}s %{public}s tcp_getlock: so=%p usecount=%x lrh= %{public}s, backtrace limit exceeded";
          v9 = v7;
          v10 = 48;
          goto LABEL_14;
        }
      }

      goto LABEL_15;
    }

    goto LABEL_17;
  }

  result = *a1 + 24;
LABEL_18:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void tcp_compute_rtt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
LABEL_3:
    v6 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    v7 = *(a1 + 176);
    if (v7 && (v8 = *(a3 + 8), v8 - *(a1 + 180) >= 1))
    {
      v9 = *(v6 + 308) - v7;
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      v11 = v8 - *(a1 + 984);
      if (v11 >= 1)
      {
        v12 = *(a1 + 759);
        *(a1 + 972 + 4 * v12) = v11;
        *(a1 + 759) = (v12 + 1) % 3u;
        v13 = *(a1 + 972);
        if (v13 <= *(a1 + 976))
        {
          v13 = *(a1 + 976);
        }

        if (*(a1 + 980) > v13)
        {
          v13 = *(a1 + 980);
        }

        if (*(sysctls + 280))
        {
          v14 = *(sysctls + 16);
        }

        else
        {
          v14 = 10;
        }

        if (v13 <= *(a1 + 200) * v14)
        {
          v13 = 0;
        }

        *(a1 + 988) = v13;
      }

      *(a1 + 176) = 0;
      if ((*a2 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v10 = 0;
      if ((*a2 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v15 = *(a2 + 8);
    if (v15)
    {
      v16 = *(v6 + 308) - v15;
      if (v16 >= 0)
      {
        v17 = *(a3 + 8);
        v18 = a1;
        v10 = v16;
        goto LABEL_27;
      }
    }

LABEL_25:
    if (v10 < 1)
    {
LABEL_28:
      v19 = *MEMORY[0x1E69E9840];
      return;
    }

    v17 = *(a3 + 8);
    v18 = a1;
    v15 = 0;
LABEL_27:
    tcp_xmit_timer(v18, v10, v15, v17);
    goto LABEL_28;
  }

  v20 = __nwlog_obj();
  os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  v21 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v21);
    goto LABEL_3;
  }

  __break(1u);
}

void nw_protocol_tcp_input_available(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_input_available";
    v66 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v77) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_139;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v69 = "%{public}s called with null protocol";
      goto LABEL_138;
    }

    if (v77 != 1)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v69 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_138;
    }

    backtrace_string = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = type[0];
    v71 = os_log_type_enabled(v67, type[0]);
    if (!backtrace_string)
    {
      if (!v71)
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v69 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_138;
    }

    if (v71)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_tcp_input_available";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      _os_log_impl(&dword_1889BA000, v67, type[0], "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_139:
    if (!v66)
    {
      goto LABEL_110;
    }

    goto LABEL_140;
  }

  v1 = nw_protocol_downcast();
  if (!v1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_input_available";
    v66 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v77) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_139;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v69 = "%{public}s called with null tcp";
      goto LABEL_138;
    }

    if (v77 != 1)
    {
      v67 = __nwlog_obj();
      v68 = type[0];
      if (!os_log_type_enabled(v67, type[0]))
      {
        goto LABEL_139;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v69 = "%{public}s called with null tcp, backtrace limit exceeded";
      goto LABEL_138;
    }

    v72 = __nw_create_backtrace_string();
    v67 = __nwlog_obj();
    v68 = type[0];
    v73 = os_log_type_enabled(v67, type[0]);
    if (v72)
    {
      if (v73)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v72;
        _os_log_impl(&dword_1889BA000, v67, type[0], "%{public}s called with null tcp, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v72);
      if (!v66)
      {
        goto LABEL_110;
      }

LABEL_140:
      free(v66);
      goto LABEL_110;
    }

    if (v73)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_tcp_input_available";
      v69 = "%{public}s called with null tcp, no backtrace";
LABEL_138:
      _os_log_impl(&dword_1889BA000, v67, v68, v69, buf, 0xCu);
      goto LABEL_139;
    }

    goto LABEL_139;
  }

  v2 = v1;
  if (*(v1 + 5352))
  {
    v3 = MEMORY[0x1E6977EF0];
    if (*MEMORY[0x1E6977EF0] != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
    }

    v4 = MEMORY[0x1E6977EE8];
    if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
    {
      v74 = *(v2 + 640);
      kdebug_trace();
    }

    v75 = v2 + 556;
    v76 = (v2 + 464);
    v77 = 0;
    v78 = &v77;
    v5 = 0x1ED4BF000uLL;
    while (1)
    {
      nw_protocol_get_output_handler();
      v6 = *(v5 + 2416);
      input_frames = nw_protocol_get_input_frames();
      if (!input_frames)
      {
        goto LABEL_110;
      }

      v8 = input_frames;
      if (*v3 != -1)
      {
        dispatch_once(v3, &__block_literal_global_18);
      }

      if (*v4 == 1 && kdebug_is_enabled())
      {
        v51 = *(v2 + 640);
        nw_frame_array_unclaimed_length();
        v5 = 0x1ED4BF000;
        kdebug_trace();
      }

      v9 = *(v2 + 776);
      if (v8 > *(v5 + 2416))
      {
        if ((*(v2 + 776) & 2) == 0)
        {
          v63 = __nwlog_tcp_log();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = *(v5 + 2416);
            *buf = 136446978;
            *&buf[4] = "nw_protocol_tcp_input_available";
            *&buf[12] = 2082;
            *&buf[14] = v75;
            *&buf[22] = 1024;
            *v83 = v64;
            *&v83[4] = 1024;
            *&v83[6] = v8;
            v59 = "%{public}s %{public}s we asked for maximum %u frames, but got %u";
            v60 = v63;
            v61 = OS_LOG_TYPE_ERROR;
            v62 = 34;
            goto LABEL_109;
          }
        }

        goto LABEL_110;
      }

      if ((*(v2 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v50 = __nwlog_tcp_log();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_input_available";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 556;
            *&buf[22] = 1024;
            *v83 = v8;
            _os_log_impl(&dword_1889BA000, v50, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s input available and we got %d frames", buf, 0x1Cu);
          }
        }
      }

      v10 = *v2;
      if (*v2)
      {
        v11 = *(v2 + 776);
        if ((*(v2 + 364) & 8) == 0)
        {
          if ((*(v2 + 776) & 1) == 0)
          {
            v12 = nw_tcp_access_globals(v2);
            ++*(v12 + 280);
          }

          v13 = v10[30];
          if (*(v13 + 12) == 4 && *(sysctls + 96) >= 1)
          {
            *(v13 + 748) |= 0x2000000u;
          }

          *(v13 + 648) = 0;
          *(v13 + 656) = v13 + 648;
          *(v13 + 664) = 0;
          v14 = v10[28];
          if (!v14 || (*(v14 + 776) & 2) == 0)
          {
            if (__nwlog_is_datapath_logging_enabled())
            {
              v52 = __nwlog_tcp_log();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v53 = (v14 + 556);
                if (!v14)
                {
                  v53 = &unk_188A285CF;
                }

                v54 = "on";
                if ((*(v13 + 748) & 0x2000000) == 0)
                {
                  v54 = "off";
                }

                v55 = tcpstates[*(v13 + 12)];
                v56 = *(sysctls + 96);
                *buf = 136447234;
                *&buf[4] = "tcp_output_batch_acks_begin";
                *&buf[12] = 2082;
                *&buf[14] = v53;
                *&buf[22] = 2082;
                *v83 = v54;
                *&v83[8] = 2082;
                v84 = v55;
                v85 = 1024;
                v86 = v56;
                _os_log_impl(&dword_1889BA000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s t_state %{public}s tcp_packet_chaining %d", buf, 0x30u);
              }
            }
          }

          v15 = v77;
          if (!v77)
          {
            tcp_output_batch_acks_end(v10);
            goto LABEL_67;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          do
          {
            v19 = (v15 + 32);
            v20 = *(v15 + 32);
            v21 = *(v15 + 40);
            v22 = (v20 + 40);
            if (!v20)
            {
              v22 = &v78;
            }

            *v22 = v21;
            *v21 = v20;
            *v19 = 0;
            *(v15 + 40) = buf;
            *buf = v15;
            *&buf[8] = v15 + 32;
            for (i = v77; v77; v19 = v24)
            {
              if ((*(i + 204) & 0x40) == 0)
              {
                break;
              }

              v24 = (i + 32);
              v25 = *(i + 32);
              v26 = *(i + 40);
              v27 = (v25 + 40);
              if (!v25)
              {
                v27 = &v78;
              }

              *v27 = v26;
              *v26 = v25;
              *v24 = 0;
              *(i + 40) = v19;
              *v19 = i;
              *&buf[8] = i + 32;
              i = v77;
            }

            type[0] = OS_LOG_TYPE_DEFAULT;
            v79 = 0;
            tcp_input(buf, v10[56], v10, type, &v79 + 1, &v79);
            v17 |= HIBYTE(v79);
            v16 |= type[0];
            v18 |= v79;
            v15 = v77;
          }

          while (v77);
          tcp_output_batch_acks_end(v10);
          if (v17)
          {
            v29 = *(v2 + 32);
            if (v29)
            {
              v30 = *(v29 + 48);
              if (v30)
              {
                v30(v2);
              }
            }
          }

          if (v18)
          {
            if (*v76)
            {
              if (*(v2 + 480))
              {
                v31 = **(*(v2 + 488) + 8);
                if (v31)
                {
                  if ((*(v2 + 776) & 2) == 0)
                  {
                    v32 = __nwlog_tcp_log();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136446466;
                      *&buf[4] = "tcp_input_carry_wake_packet";
                      *&buf[12] = 2082;
                      *&buf[14] = v2 + 556;
                      _os_log_impl(&dword_1889BA000, v32, OS_LOG_TYPE_INFO, "%{public}s %{public}s found data to carry wake packet", buf, 0x16u);
                    }
                  }

                  *(v31 + 204) |= 0x8000u;
                  if ((v16 & 1) == 0)
                  {
LABEL_67:
                    v3 = MEMORY[0x1E6977EF0];
                    if ((v11 & 1) == 0)
                    {
                      v34 = nw_tcp_access_globals(v2);
                      tcp_coalesce_timer_updates_end(v34);
                    }

LABEL_69:
                    is_empty = nw_frame_array_is_empty();
                    v4 = MEMORY[0x1E6977EE8];
                    v5 = 0x1ED4BF000;
                    if (is_empty)
                    {
                      goto LABEL_87;
                    }

                    __nwlog_obj();
                    *buf = 136446466;
                    *&buf[4] = "tcp_input_available";
                    *&buf[12] = 2048;
                    *&buf[14] = &v77;
                    v36 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    HIBYTE(v79) = 0;
                    if (!__nwlog_fault())
                    {
                      goto LABEL_84;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v37 = __nwlog_obj();
                      v38 = type[0];
                      if (os_log_type_enabled(v37, type[0]))
                      {
                        *buf = 136446466;
                        *&buf[4] = "tcp_input_available";
                        *&buf[12] = 2048;
                        *&buf[14] = &v77;
                        v39 = v37;
                        v40 = v38;
                        v41 = "%{public}s frame_array %p not empty";
                        goto LABEL_83;
                      }

                      goto LABEL_84;
                    }

                    if (HIBYTE(v79) == 1)
                    {
                      v42 = __nw_create_backtrace_string();
                      v43 = __nwlog_obj();
                      v44 = type[0];
                      v45 = os_log_type_enabled(v43, type[0]);
                      if (v42)
                      {
                        if (v45)
                        {
                          *buf = 136446722;
                          *&buf[4] = "tcp_input_available";
                          *&buf[12] = 2048;
                          *&buf[14] = &v77;
                          *&buf[22] = 2082;
                          *v83 = v42;
                          _os_log_impl(&dword_1889BA000, v43, v44, "%{public}s frame_array %p not empty, dumping backtrace:%{public}s", buf, 0x20u);
                        }

                        free(v42);
                        v4 = MEMORY[0x1E6977EE8];
                        goto LABEL_84;
                      }

                      v4 = MEMORY[0x1E6977EE8];
                      if (!v45)
                      {
LABEL_84:
                        if (v36)
                        {
                          free(v36);
                        }

                        v5 = 0x1ED4BF000;
                        goto LABEL_87;
                      }

                      *buf = 136446466;
                      *&buf[4] = "tcp_input_available";
                      *&buf[12] = 2048;
                      *&buf[14] = &v77;
                      v39 = v43;
                      v40 = v44;
                      v41 = "%{public}s frame_array %p not empty, no backtrace";
                    }

                    else
                    {
                      v46 = __nwlog_obj();
                      v47 = type[0];
                      if (!os_log_type_enabled(v46, type[0]))
                      {
                        goto LABEL_84;
                      }

                      *buf = 136446466;
                      *&buf[4] = "tcp_input_available";
                      *&buf[12] = 2048;
                      *&buf[14] = &v77;
                      v39 = v46;
                      v40 = v47;
                      v41 = "%{public}s frame_array %p not empty, backtrace limit exceeded";
                    }

LABEL_83:
                    _os_log_impl(&dword_1889BA000, v39, v40, v41, buf, 0x16u);
                    goto LABEL_84;
                  }

LABEL_66:
                  *(v2 + 776) |= 1u;
                  v3 = MEMORY[0x1E6977EF0];
                  goto LABEL_69;
                }
              }
            }

            if ((*(v2 + 776) & 2) == 0)
            {
              v33 = __nwlog_tcp_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "tcp_input_carry_wake_packet";
                *&buf[12] = 2082;
                *&buf[14] = v2 + 556;
                _os_log_impl(&dword_1889BA000, v33, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s no data to carry wake packet", buf, 0x16u);
              }
            }
          }

          if ((v16 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        if ((*(v2 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v57 = __nwlog_tcp_log();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              *&buf[4] = "tcp_input_available";
              *&buf[12] = 2082;
              *&buf[14] = v2 + 556;
              *&buf[22] = 1024;
              *v83 = 57;
              _os_log_impl(&dword_1889BA000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s defunct socket error (%d)", buf, 0x1Cu);
            }
          }
        }

        v5 = 0x1ED4BF000;
        if (*(v2 + 376) < 0)
        {
          sb_empty_assert(v76, "tcp_input_available");
        }
      }

      else if ((*(v2 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v28 = __nwlog_tcp_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_input_available";
            *&buf[12] = 2082;
            *&buf[14] = v2 + 556;
            _os_log_impl(&dword_1889BA000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s inp == NULL || so->so_pcb == NULL", buf, 0x16u);
          }
        }
      }

LABEL_87:
      v48 = v77;
      if (v77)
      {
        *(v77 + 40) = type;
        *type = v48;
        v81 = v78;
        v77 = 0;
        v78 = &v77;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ____nw_frame_array_finalize_block_invoke_586;
        *v83 = &__block_descriptor_tmp_12;
        v83[8] = 0;
        do
        {
          v49 = *type;
          if (!*type)
          {
            break;
          }

          nw_frame_array_remove();
        }

        while (((*&buf[16])(buf, v49) & 1) != 0);
      }
    }
  }

  if ((*(v1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v58 = __nwlog_tcp_log();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_input_available";
        *&buf[12] = 2082;
        *&buf[14] = v2 + 556;
        v59 = "%{public}s %{public}s skipping";
        v60 = v58;
        v61 = OS_LOG_TYPE_DEBUG;
        v62 = 22;
LABEL_109:
        _os_log_impl(&dword_1889BA000, v60, v61, v59, buf, v62);
      }
    }
  }

LABEL_110:
  v65 = *MEMORY[0x1E69E9840];
}

void tcp_bad_rexmt_check(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 234))
  {
    v5 = *(a1 + 256);
    if (((*(a1 + 2096) & 2) == 0 || !*(a1 + 416)) && ((~*(a1 + 336) & 3) != 0 || (*(a2 + 13) & 0x40) == 0))
    {
      if ((~*(a1 + 88) & 0x180) == 0)
      {
        if (!v5)
        {
          goto LABEL_21;
        }

        if ((*a3 & 1) == 0)
        {
          goto LABEL_21;
        }

        v6 = *(a3 + 8);
        if (!v6 || ((v6 - v5) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_18:
        v10 = *(a1 + 1064);
        if (v10)
        {
          ++*(v10 + 1312);
        }

        tcp_bad_rexmt_restore_state(a1, a2);
        goto LABEL_74;
      }

      if (*(a1 + 234) == 1)
      {
        if (!v5)
        {
          goto LABEL_21;
        }

LABEL_17:
        v7 = *(a1 + 204) >> 6;
        v8 = a2;
        v9 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
        a2 = v8;
        if (*(v9 + 308) - v5 >= v7)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v5 && (*(a1 + 748) & 0x40001000) == 0x40001000)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_21:
  if ((~*(a1 + 748) & 0x40001000) != 0)
  {
    goto LABEL_36;
  }

  v11 = *(a1 + 936);
  if (!v11 || *(a2 + 8) - v11 < 0)
  {
    goto LABEL_36;
  }

  v12 = *(a1 + 944);
  if (((*(a1 + 2096) & 2) == 0 || !*(a1 + 416)) && ((~*(a1 + 336) & 3) != 0 || (*(a2 + 13) & 0x40) == 0))
  {
    if ((~*(a1 + 88) & 0x180) == 0)
    {
      if (!v12)
      {
        goto LABEL_50;
      }

      if ((*a3 & 1) == 0)
      {
        goto LABEL_50;
      }

      v13 = *(a3 + 8);
      if (!v13 || ((v13 - v12) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_36:
      v17 = *(a1 + 960);
      if (v17 && *(a2 + 8) - *(a1 + 156) >= 0)
      {
        v18 = (a1 + 960);
        while ((*(v17 + 10) & 1) != 0)
        {
          v17 = *(v17 + 16);
          if (!v17)
          {
            v19 = *(a1 + 1064);
            if (v19)
            {
              ++*(v19 + 1032);
            }

            tcp_bad_rexmt_restore_state(a1, a2);
            v20 = *(a1 + 960);
            if (v20)
            {
              do
              {
                v23 = *v18;
                if (*v18 == v20)
                {
                  v21 = (a1 + 960);
                }

                else
                {
                  do
                  {
                    v24 = v23;
                    v23 = v23[2];
                  }

                  while (v23 != v20);
                  v21 = v24 + 2;
                }

                v22 = v20[2];
                *v21 = v23[2];
                nw_tcp_access_globals(*(*(a1 + 80) + 224));
                free(v20);
                v20 = v22;
              }

              while (v22);
            }

            *(a1 + 968) = *(a1 + 96);
            goto LABEL_74;
          }
        }
      }

      goto LABEL_74;
    }

    if (v12)
    {
      v14 = *(a1 + 204) >> 6;
      v15 = a2;
      v16 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
      a2 = v15;
      if (*(v16 + 308) - v12 < v14)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_50:
  v25 = *(a1 + 1064);
  if (v25)
  {
    ++*(v25 + 752);
  }

  v26 = *(a1 + 88);
  if ((v26 & 0x200000) == 0)
  {
    v27 = *(tcp_cc_algo_list[*(a1 + 272)] + 64);
    if (v27)
    {
      v27(a1, a2);
      v26 = *(a1 + 88);
    }

    *(a1 + 88) = v26 | 0x200000;
    v28 = *(a1 + 80);
    v29 = *(v28 + 2372);
    if ((v29 & 0x40000000) == 0)
    {
      goto LABEL_64;
    }

    v30 = *(v28 + 224);
    if ((v29 & 0x10000000) != 0)
    {
      *(v28 + 2372) = v29 & 0xAFFFFFFF;
      v32 = (v30 + 364);
      v31 = *(v30 + 364);
    }

    else
    {
      v31 = *(v30 + 364);
      *(v28 + 2372) = v29 & 0xAFFFFFFF;
      if ((v31 & 0x20000) == 0)
      {
LABEL_61:
        v33 = *(v30 + 32);
        if (v33)
        {
          v34 = *v33;
          if (v34)
          {
            v34();
          }
        }

LABEL_64:
        v35 = *(a1 + 960);
        if (v35)
        {
          v36 = (a1 + 960);
          do
          {
            v39 = *v36;
            if (*v36 == v35)
            {
              v37 = (a1 + 960);
            }

            else
            {
              do
              {
                v40 = v39;
                v39 = v39[2];
              }

              while (v39 != v35);
              v37 = v40 + 2;
            }

            v38 = v35[2];
            *v37 = v39[2];
            nw_tcp_access_globals(*(*(a1 + 80) + 224));
            free(v35);
            v35 = v38;
          }

          while (v38);
          v41 = *(a1 + 96);
          *(a1 + 968) = v41;
        }

        else
        {
          v41 = *(a1 + 96);
        }

        v42 = *(a1 + 88);
        *(a1 + 156) = v41 + (v42 << 27 >> 31);
        v43 = *(a1 + 748);
        *(a1 + 28) = 0;
        *(a1 + 176) = 0;
        *(a1 + 148) = *(a1 + 152);
        *(a1 + 88) = v42 & 0xFFDFFFFF;
        *(a1 + 8) = 0;
        *(a1 + 322) = 3;
        *(a1 + 300) = 0;
        *(a1 + 336) &= ~0x20u;
        *(a1 + 16) = 0;
        *(a1 + 748) = v43 & 0xFFE7FFFF;
        *(a1 + 992) = 0;
        *(a1 + 620) = 0;
        goto LABEL_74;
      }

      v32 = (v30 + 364);
    }

    *v32 = v31 & 0xFFFDFFFF;
    goto LABEL_61;
  }

LABEL_74:
  *(a1 + 748) &= ~0x1000u;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0;
  if (*(a1 + 234))
  {
    v44 = *(a1 + 88);
    if ((v44 & 0x20000000) != 0)
    {
      v45 = *(a1 + 692);
      if (~v44 & 0x180) == 0 && v45 != 0 && (*a3)
      {
        v47 = *(a3 + 8);
        if (v47)
        {
          if (v47 - v45 < 0)
          {
            tcp_pmtud_revert_segment_size(a1);
          }
        }
      }
    }
  }

  if (*(a1 + 692))
  {
    *(a1 + 692) = 0;
  }

  *(a1 + 688) = 0;
}