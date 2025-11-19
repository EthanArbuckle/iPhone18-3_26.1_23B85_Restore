uint64_t tcp_ledbat_cwnd_init(uint64_t result)
{
  v1 = *(result + 200);
  v2 = *(result + 204);
  v3 = *(sysctls + 16) * v1;
  *(result + 148) = v3;
  v4 = *(result + 152);
  *(result + 744) = v4;
  if (v2)
  {
    v5 = 32000 * v3 / v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 << (v3 < v4);
  v7 = *(*(result + 80) + 2384);
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(*(result + 80) + 2384);
  }

  if (v7 == -1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  *(result + 472) = v9;
  if (v1 <= (v9 >> 12))
  {
    v1 = v9 >> 12;
  }

  *(result + 480) = v1;
  return result;
}

_DWORD *tcp_rledbat_rwnd_init(_DWORD *result)
{
  result[489] = *(sysctls + 16) * result[50];
  if (!result[490])
  {
    result[490] = 1073725440;
  }

  return result;
}

void nw_protocol_tcp_output_finished(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if (*(v1 + 5352) == 2)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v5 = __nwlog_obj();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            v10 = "nw_protocol_tcp_output_finished";
            _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_DEBUG, "%{public}s ", buf, 0xCu);
          }
        }

        (*(*(*(v2 + 8) + 40) + 80))(v2);
      }

      else if ((*(v1 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v6 = __nwlog_tcp_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v10 = "nw_protocol_tcp_output_finished";
            v11 = 2082;
            v12 = v2 + 556;
            _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
          }
        }
      }

      goto LABEL_8;
    }

    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_protocol_tcp_output_finished";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_protocol_tcp_output_finished";
        v8 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_21;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_protocol_tcp_output_finished";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_protocol_tcp_output_finished";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_21:
        _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    free(v4);
  }

LABEL_8:
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_usr_shutdown(uint64_t a1)
{
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  *(a1 + 376) |= 0x10u;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = a1;
      v4();
      a1 = v5;
    }
  }

  v6 = *(v1 + 240);
  if (!v6)
  {
    return 0;
  }

  v7 = nw_tcp_access_globals(a1);
  v9 = 0;
  v10 = 0;
  microuptime(&v9);
  v8 = v10 / 1000 + 1000 * v9;
  if (*(v7 + 308) < v8)
  {
    *v7 = v9;
    *(v7 + 308) = v8;
  }

  result = tcp_usrclosed(v6);
  if (result)
  {

    return tcp_output(result);
  }

  return result;
}

uint64_t tcp_ledbat_after_timeout(uint64_t result)
{
  if (*(result + 12) >= 4)
  {
    **(result + 848) = 0;
    *(*(result + 848) + 4) = 0;
    *(*(result + 848) + 8) = 0;
    *(*(result + 848) + 12) = 0;
    if ((*(result + 750) & 0x10) != 0)
    {
      v1 = *(result + 96) - *(result + 92);
      v2 = *(result + 988);
      if (v2 <= v1)
      {
        v2 = *(result + 96) - *(result + 92);
      }
    }

    else
    {
      v1 = 0;
      v2 = *(result + 144);
      if (v2 >= *(result + 148))
      {
        v2 = *(result + 148);
      }
    }

    *(result + 992) = v1;
    v3 = *(result + 200);
    v4 = ((v3 >> 1) + (v2 >> 1)) / v3 * v3;
    if (v4 <= 2 * v3)
    {
      v4 = 2 * v3;
    }

    *(result + 152) = v4;
    if (*(result + 744) > v4)
    {
      *(result + 744) = v4;
    }

    v5 = *(result + 80);
    v6 = *(v5 + 224);
    if (v6[97] > v4)
    {
      v7 = v6[104];
      if ((v7 & 0x400) != 0)
      {
        if (v6[105] > v4)
        {
          v8 = *(sysctls + 228);
          if (v8 <= v4)
          {
            v8 = v4;
          }

          v9 = *(sysctls + 116);
          if (v8 < v9)
          {
            v9 = v8;
          }

          v6[105] = v9;
        }

        v6[104] = v7 | 0x800;
      }
    }

    *(result + 148) = v3;
    v10 = *(result + 204);
    if (v10)
    {
      v11 = 32000 * v3 / v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 << (v3 < v4);
    v13 = *(v5 + 2384);
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    if (v13 != -1)
    {
      v12 = v14;
    }

    *(result + 472) = v12;
    if (v3 <= (v12 >> 12))
    {
      v3 = v12 >> 12;
    }

    *(result + 480) = v3;
  }

  return result;
}

_DWORD *tcp_ledbat_congestion_avd(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 8) - result[23];
  if (*(sysctls + 276))
  {
    return ledbat_pp_ack_rcvd(result, v2);
  }

  v3 = result[75] + v2;
  result[75] = v3;
  v4 = result[37];
  v5 = v3 >= v4;
  v6 = v3 - v4;
  if (v6 != 0 && v5)
  {
    result[75] = v6;
    v7 = result[50];
    if (v4 < result[36] && v7 != 0)
    {
      return update_cwnd(result, v7, 1);
    }
  }

  return result;
}

uint64_t tcp_ledbat_init(uint64_t a1)
{
  atomic_fetch_add(dword_1ED4BF720, 1u);
  **(a1 + 848) = 0;
  *(*(a1 + 848) + 4) = 0;
  *(*(a1 + 848) + 8) = 0;
  *(*(a1 + 848) + 12) = 0;
  return 0;
}

uint64_t in_pcbbind(uint64_t a1, _BYTE *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2370) || *(a1 + 492) || a2 && *a2 != 16)
  {
    result = 22;
  }

  else
  {
    result = (*(*(a1 + 2280) + 8))(*(a1 + 224));
    if (!result)
    {
      result = 0;
      *(a1 + 2370) = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t inp_reset_fc_state(uint64_t a1)
{
  result = *(a1 + 224);
  v3 = *(a1 + 2372);
  if ((v3 & 0x10000000) != 0)
  {
    *(a1 + 2372) = v3 & 0xAFFFFFFF;
    *(result + 364) &= ~0x20000u;
LABEL_7:
    v5 = *(result + 32);
    if (v5)
    {
      if (*v5)
      {
        return (*v5)();
      }
    }

    return result;
  }

  v4 = *(result + 364);
  *(a1 + 2372) = v3 & 0xAFFFFFFF;
  if ((v4 & 0x20000) != 0)
  {
    *(result + 364) = v4 & 0xFFFDFFFF;
  }

  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t nw_protocol_tcp_get_frame_count(unsigned int a1, unsigned int a2, int *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    result = (a1 + a2 - 1) / a2;
    if (a3)
    {
      *a3 = a1 % a2;
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v9 = "nw_protocol_tcp_get_frame_count";
    v6 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v9 = "nw_protocol_tcp_get_frame_count";
        _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_ERROR, "%{public}s called with null (buffer_size > 0), backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v6)
    {
      free(v6);
    }

    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_get_malloc_frame(uint64_t a1, unsigned int a2, uint64_t a3, int a4, _DWORD *a5)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_tcp_get_malloc_frame";
    v69 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_101;
    }

    v72 = __nwlog_obj();
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_101;
    }

    *buf = 136446210;
    v75 = "nw_protocol_tcp_get_malloc_frame";
    v73 = "%{public}s called with null ret_frame_array, backtrace limit exceeded";
    goto LABEL_100;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_tcp_get_malloc_frame";
    v69 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_101;
    }

    v72 = __nwlog_obj();
    if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_101;
    }

    *buf = 136446210;
    v75 = "nw_protocol_tcp_get_malloc_frame";
    v73 = "%{public}s called with null (max_frame_count > 0), backtrace limit exceeded";
LABEL_100:
    _os_log_impl(&dword_1889BA000, v72, OS_LOG_TYPE_ERROR, v73, buf, 0xCu);
LABEL_101:
    if (!v69)
    {
      goto LABEL_75;
    }

    v59 = v69;
    goto LABEL_74;
  }

  v8 = nw_tcp_access_globals(a1);
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = v8[18];
  if (v10)
  {
    v11 = (v10 + 16);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = (v12 + 24);
    if (!v12)
    {
      v14 = v8 + 19;
    }

    *v14 = v13;
    *v13 = v12;
    *(v10 + 24) = 0;
    *v11 = 0;
    v15 = v8[21];
    *(v10 + 24) = v15;
    *v15 = v10;
    v8[21] = v11;
    v16 = v8[1];
    if (v16 <= 0)
    {
      v70 = __nwlog_obj();
      os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v75 = "nw_protocol_tcp_get_malloc_frame";
      v71 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort();
      if (result)
      {
        goto LABEL_103;
      }

      free(v71);
      v16 = v9[1];
    }

    v9[1] = v16 - 1;
    if ((*(v10 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (*MEMORY[0x1E6977EF8])(v10, *(v10 + 88)))
    {
      v17 = *(v10 + 112);
      if (v17)
      {
        v18 = *(v10 + 48);
        if (v18 < a2)
        {
          free(v17);
          goto LABEL_15;
        }

        v28 = *(v10 + 64);
        *(v10 + 80) = nw_frame_tcp_finalize;
        *(v10 + 88) = v9;
        *(v10 + 104) = 0;
        *(v10 + 112) = v17;
        *(v10 + 196) = 0;
        *(v10 + 48) = v18;
        *(v10 + 52) = v18;
        *(v10 + 56) = 0;
        *(v10 + 192) = 0;
        *(v10 + 200) = 0;
        *(v10 + 204) &= 0xFFC7u;
        if (v28)
        {
          do
          {
            v29 = *v28;
            v30 = v28[6];
            v31 = *v28;
            if (v30)
            {
              nw_release(v30);
              v28[6] = 0;
              v31 = *v28;
            }

            v32 = v28[1];
            v33 = v31 + 1;
            if (!v31)
            {
              v33 = (v10 + 72);
            }

            *v33 = v32;
            *v32 = v31;
            if (v28 != (v10 + 120))
            {
              free(v28);
            }

            v28 = v29;
          }

          while (v29);
        }

        *(v10 + 64) = 0;
        *(v10 + 72) = v10 + 64;
        v34 = *(v10 + 168);
        if (v34)
        {
          nw_release(v34);
        }

        *(v10 + 184) = 0;
        *(v10 + 168) = 0u;
        *(v10 + 152) = 0u;
        *(v10 + 136) = 0u;
        *(v10 + 120) = 0u;
        *(v10 + 204) &= 0x413Fu;
        *(v10 + 206) &= ~1u;
        *(v10 + 203) = 0;
        v35 = *(v10 + 52);
        v36 = *(v10 + 56) + a2;
        v37 = *(v10 + 60);
        *(v10 + 198) = 0;
        if (v36 <= v35 - v37)
        {
          *(v10 + 56) = v36;
          if (!v35)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v38 = __nwlog_obj();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = *(v10 + 52);
            *buf = 136446978;
            v75 = "__nw_frame_claim_internal";
            v76 = 1024;
            *v77 = v36;
            *&v77[4] = 1024;
            *&v77[6] = v39;
            LOWORD(v78) = 1024;
            *(&v78 + 2) = v37;
            _os_log_impl(&dword_1889BA000, v38, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
          }

          v35 = *(v10 + 52);
          if (!v35)
          {
LABEL_81:
            if ((*(v10 + 204) & 0x80) != 0)
            {
              *(v10 + 196) += a2;
            }

            v62 = *(v10 + 56);
            v54 = v62 >= a2;
            v63 = v62 - a2;
            if (v54)
            {
              *(v10 + 56) = v63;
            }

            else
            {
              v64 = __nwlog_obj();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                v65 = *(v10 + 56);
                *buf = 136446722;
                v75 = "__nw_frame_unclaim_internal";
                v76 = 1024;
                *v77 = a2;
                *&v77[4] = 1024;
                *&v77[6] = v65;
                _os_log_impl(&dword_1889BA000, v64, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", buf, 0x18u);
              }
            }

            v66 = *(v10 + 204) | 1;
            *(v10 + 32) = 0;
            *(v10 + 204) = v66;
            v67 = *(a3 + 8);
            *(v10 + 40) = v67;
            *v67 = v10;
            *(a3 + 8) = v10 + 32;
            result = 1;
            if (!a5)
            {
              goto LABEL_89;
            }

LABEL_88:
            *a5 = 1;
            goto LABEL_89;
          }
        }

        v50 = *(v10 + 56);
        v49 = *(v10 + 60);
        v51 = (v35 - (v49 + v50));
        if (v35 != v49 + v50)
        {
          if (v49)
          {
            v52 = *(v10 + 112);
            if (v52)
            {
              memmove((v52 + v50), (v52 + v50 + v51), v49);
              v35 = *(v10 + 52);
            }
          }

          *(v10 + 52) = v35 - v51;
          if ((*(v10 + 204) & 0x80) != 0)
          {
            v53 = *(v10 + 196);
            v54 = v53 >= v51;
            v55 = v53 - v51;
            *(v10 + 196) = v55;
            if (!v54 || v55 >= 0x10000)
            {
              __nwlog_obj();
              v56 = *(v10 + 196);
              *buf = 136446978;
              v75 = "__nw_frame_collapse";
              v76 = 2082;
              *v77 = "frame->aggregate_buffer_length";
              *&v77[8] = 2048;
              v78 = v51;
              v79 = 2048;
              v80 = v56;
              v57 = _os_log_send_and_compose_impl();
              if (__nwlog_fault())
              {
                v60 = __nwlog_obj();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = *(v10 + 196);
                  *buf = 136446978;
                  v75 = "__nw_frame_collapse";
                  v76 = 2082;
                  *v77 = "frame->aggregate_buffer_length";
                  *&v77[8] = 2048;
                  v78 = v51;
                  v79 = 2048;
                  v80 = v61;
                  _os_log_impl(&dword_1889BA000, v60, OS_LOG_TYPE_ERROR, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded", buf, 0x2Au);
                }
              }

              if (v57)
              {
                free(v57);
              }

              *(v10 + 196) = 0;
            }
          }
        }

        goto LABEL_81;
      }
    }
  }

LABEL_15:
  if (a2 < 1)
  {
    goto LABEL_48;
  }

  v19 = malloc_type_malloc(a2, 0x39E8406DuLL);
  if (v19)
  {
    if (v10)
    {
LABEL_18:
      v20 = *(v10 + 64);
      *(v10 + 80) = nw_frame_tcp_finalize;
      *(v10 + 88) = v9;
      *(v10 + 104) = 0;
      *(v10 + 112) = v19;
      *(v10 + 196) = 0;
      *(v10 + 48) = a2;
      *(v10 + 52) = a2;
      *(v10 + 56) = 0;
      *(v10 + 192) = 0;
      *(v10 + 200) = 0;
      *(v10 + 204) &= 0xFFC7u;
      if (v20)
      {
        do
        {
          v21 = *v20;
          v22 = v20[6];
          v23 = *v20;
          if (v22)
          {
            nw_release(v22);
            v20[6] = 0;
            v23 = *v20;
          }

          v24 = v20[1];
          v25 = v23 + 1;
          if (!v23)
          {
            v25 = (v10 + 72);
          }

          *v25 = v24;
          *v24 = v23;
          if (v20 != (v10 + 120))
          {
            free(v20);
          }

          v20 = v21;
        }

        while (v21);
      }

      *(v10 + 64) = 0;
      *(v10 + 72) = v10 + 64;
      v26 = *(v10 + 168);
      if (v26)
      {
        nw_release(v26);
      }

      *(v10 + 184) = 0;
      *(v10 + 168) = 0u;
      *(v10 + 152) = 0u;
      *(v10 + 136) = 0u;
      *(v10 + 120) = 0u;
      v27 = *(v10 + 204) & 0x413E;
      *(v10 + 206) &= ~1u;
      *(v10 + 203) = 0;
      *(v10 + 198) = 0;
      *(v10 + 204) = v27 | 1;
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v40 = __nwlog_obj();
  os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v75 = "nw_protocol_tcp_get_malloc_frame";
  v41 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v41);
LABEL_48:
    v19 = 0;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_49:
    v43 = nw_frame_create();
    if (v43)
    {
      v10 = v43;
      v44 = *(v43 + 204);
      v45 = (v43 + 208);
      if ((v44 & 4) == 0)
      {
        v45 = 0;
      }

      *v45 |= 4u;
      *(v43 + 204) = v44 | 1;
      *(v43 + 16) = 0;
      v46 = v9[21];
      *(v43 + 24) = v46;
      *v46 = v43;
      v9[21] = v43 + 16;
LABEL_53:
      *(v10 + 32) = 0;
      v47 = *(a3 + 8);
      *(v10 + 40) = v47;
      *v47 = v10;
      *(a3 + 8) = v10 + 32;
      result = 1;
      if (!a5)
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    __nwlog_obj();
    *buf = 136446210;
    v75 = "nw_protocol_tcp_get_malloc_frame";
    v48 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v58 = __nwlog_obj();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v75 = "nw_protocol_tcp_get_malloc_frame";
        _os_log_impl(&dword_1889BA000, v58, OS_LOG_TYPE_ERROR, "%{public}s nw_frame_create failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v48)
    {
      free(v48);
    }

    if (!v19)
    {
LABEL_75:
      result = 0;
LABEL_89:
      v68 = *MEMORY[0x1E69E9840];
      return result;
    }

    v59 = v19;
LABEL_74:
    free(v59);
    goto LABEL_75;
  }

LABEL_103:
  __break(1u);
  return result;
}

uint64_t __nw_protocol_tcp_get_slab_frame_block_invoke(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4)
  {
    *(v4 + 40) = v5;
  }

  else
  {
    *(*(a1[4] + 8) + 32) = v5;
  }

  *v5 = v4;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (((*(a2 + 205) & 1) == 0 || !*MEMORY[0x1E6977EF8] || (*MEMORY[0x1E6977EF8])(a2, *(a2 + 88))) && *(a2 + 112))
  {
    v6 = a1[5];
    nw_mem_buffer_free();
  }

  v7 = a1[6];
  v8 = (a2 + 16);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = (v9 + 24);
  if (!v9)
  {
    v11 = v7 + 29;
  }

  *v11 = v10;
  *v10 = v9;
  *(a2 + 24) = 0;
  *v8 = 0;
  v12 = v7[27];
  *(a2 + 24) = v12;
  *v12 = a2;
  v7[27] = v8;
  v13 = v7[3];
  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v16 = __nwlog_obj();
  os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  v17 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v17);
    v7 = a1[6];
    v13 = v7[3];
LABEL_12:
    v7[3] = v13 + 1;
    v14 = *MEMORY[0x1E69E9840];
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t __nw_frame_tcp_finalize_block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2 < 21)
  {
LABEL_34:
    result = v3 > 20;
    v18 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v5)
  {
    *(v5 + 24) = v6;
  }

  else
  {
    *(*(a1 + 40) + 8) = v6;
  }

  *v6 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *v2 = v3 - 1;
  if (*(a1 + 48) == 1)
  {
    if ((*(a2 + 204) & 2) != 0)
    {
      v9 = *(a2 + 96);
      if (v9)
      {
        nw_release(v9);
        *(a2 + 96) = 0;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v22 = "__nw_frame_set_external_data";
        _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_ERROR, "%{public}s Frame does not use external data", buf, 0xCu);
      }
    }

    goto LABEL_22;
  }

  if (*(a1 + 49) == 1)
  {
    if ((*(a2 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && !(*MEMORY[0x1E6977EF8])(a2, *(a2 + 88)))
    {
      goto LABEL_22;
    }

    v8 = *(a2 + 112);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  if (*(a1 + 50) != 1 || (*(a2 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && !(*MEMORY[0x1E6977EF8])(a2, *(a2 + 88)) || !*(a2 + 112))
  {
    goto LABEL_22;
  }

  v19 = __nwlog_obj();
  os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v22 = "nw_frame_tcp_finalize_block_invoke";
  v20 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    v8 = v20;
LABEL_14:
    free(v8);
LABEL_22:
    v10 = *(a2 + 64);
    *(a2 + 196) = 0;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 204) &= 0xFFC7u;
    if (v10)
    {
      do
      {
        v11 = *v10;
        v12 = v10[6];
        v13 = *v10;
        if (v12)
        {
          nw_release(v12);
          v10[6] = 0;
          v13 = *v10;
        }

        v14 = v10[1];
        v15 = v13 + 1;
        if (!v13)
        {
          v15 = (a2 + 72);
        }

        *v15 = v14;
        *v14 = v13;
        if (v10 != (a2 + 120))
        {
          free(v10);
        }

        v10 = v11;
      }

      while (v11);
    }

    *(a2 + 64) = 0;
    *(a2 + 72) = a2 + 64;
    v16 = *(a2 + 168);
    if (v16)
    {
      nw_release(v16);
    }

    *(a2 + 184) = 0;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 204) &= 0x413Fu;
    *(a2 + 206) &= ~1u;
    *(a2 + 203) = 0;
    *(a2 + 198) = 0;
    nw_release(a2);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t nw_protocol_tcp_copy_frame(uint64_t a1, uint64_t a2, signed int a3)
{
  *&v57[13] = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = &v50;
  if (a3 <= 0)
  {
    __nwlog_obj();
    *buf = 136446466;
    v55 = "nw_protocol_tcp_copy_frame";
    v56 = 1024;
    *v57 = a3;
    v11 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_37;
      }

      *buf = 136446466;
      v55 = "nw_protocol_tcp_copy_frame";
      v56 = 1024;
      *v57 = a3;
      v14 = "%{public}s called with null invalid len %d";
    }

    else if (v52 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v13 = type;
      v17 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446722;
          v55 = "nw_protocol_tcp_copy_frame";
          v56 = 1024;
          *v57 = a3;
          v57[2] = 2082;
          *&v57[3] = backtrace_string;
          _os_log_impl(&dword_1889BA000, v12, v13, "%{public}s called with null invalid len %d, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(backtrace_string);
        goto LABEL_37;
      }

      if (!v17)
      {
        goto LABEL_37;
      }

      *buf = 136446466;
      v55 = "nw_protocol_tcp_copy_frame";
      v56 = 1024;
      *v57 = a3;
      v14 = "%{public}s called with null invalid len %d, no backtrace";
    }

    else
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (!os_log_type_enabled(v12, type))
      {
        goto LABEL_37;
      }

      *buf = 136446466;
      v55 = "nw_protocol_tcp_copy_frame";
      v56 = 1024;
      *v57 = a3;
      v14 = "%{public}s called with null invalid len %d, backtrace limit exceeded";
    }

    v28 = v12;
    v29 = v13;
    v30 = 18;
LABEL_36:
    _os_log_impl(&dword_1889BA000, v28, v29, v14, buf, v30);
    goto LABEL_37;
  }

  if ((nw_protocol_tcp_get_frames(a1, a3, &v50, 1, 0, 0) & 1) == 0)
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v55 = "nw_protocol_tcp_copy_frame";
      _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s failed to get tcp frame array", buf, 0xCu);
    }

    goto LABEL_53;
  }

  v5 = v50;
  if (v50)
  {
    v6 = v50[5];
    if (v6 == &v50)
    {
      v8 = v50 + 4;
      v25 = v50[4];
      if (v25)
      {
        *(v25 + 40) = v6;
        v6 = v5[5];
      }

      else
      {
        v51 = v50[5];
      }

      *v6 = v25;
    }

    else
    {
      v7 = &v51;
      v9 = v50[2];
      v10 = v50[3];
      v8 = v50 + 2;
      if (v9)
      {
        v7 = (v9 + 24);
      }

      *v7 = v10;
      *v10 = v9;
    }

    *v8 = 0;
    v8[1] = 0;
    v31 = v5[14];
    if (v31)
    {
      if ((*(v5 + 102) & 0x100) == 0 || !*MEMORY[0x1E6977EF8])
      {
        goto LABEL_48;
      }

      if ((*MEMORY[0x1E6977EF8])(v5, v5[11]))
      {
        v31 = v5[14];
LABEL_48:
        v32 = (v31 + *(v5 + 14));
        goto LABEL_50;
      }
    }

    v32 = 0;
LABEL_50:
    if (!nw_protocol_tcp_copy_frame_to_buffer(a2, 0, a3, v32))
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  v18 = __nwlog_obj();
  os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v55 = "nw_protocol_tcp_copy_frame";
  v19 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v19);
    __nwlog_obj();
    *buf = 136446210;
    v55 = "__nw_frame_unclaimed_bytes";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v52 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_58;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v55 = "__nw_frame_unclaimed_bytes";
      v24 = "%{public}s called with null frame";
    }

    else if (v52 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v27 = os_log_type_enabled(v22, type);
      if (v26)
      {
        if (v27)
        {
          *buf = 136446466;
          v55 = "__nw_frame_unclaimed_bytes";
          v56 = 2082;
          *v57 = v26;
          _os_log_impl(&dword_1889BA000, v22, v23, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
LABEL_58:
        if (v21)
        {
          free(v21);
        }

        if (!nw_protocol_tcp_copy_frame_to_buffer(a2, 0, a3, 0))
        {
          goto LABEL_104;
        }

LABEL_61:
        if (a2)
        {
          v36 = *(a2 + 204);
          if ((v36 & 0x100) == 0 || !*MEMORY[0x1E6977EF8])
          {
LABEL_66:
            if ((v36 & 0x8000) == 0)
            {
              goto LABEL_54;
            }

            *(a2 + 204) = v36 & 0x7FFF;
            if (v5)
            {
              *(v5 + 102) |= 0x8000u;
              goto LABEL_54;
            }

            __nwlog_obj();
            *buf = 136446210;
            v55 = "__nw_frame_set_is_wake_packet";
            v11 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v52 = 0;
            if (!__nwlog_fault())
            {
              goto LABEL_37;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              v41 = __nwlog_obj();
              v42 = type;
              if (os_log_type_enabled(v41, type))
              {
                *buf = 136446210;
                v55 = "__nw_frame_set_is_wake_packet";
                v14 = "%{public}s called with null frame";
                goto LABEL_118;
              }

LABEL_37:
              if (v11)
              {
                free(v11);
              }

              goto LABEL_53;
            }

            if (v52 != 1)
            {
              v41 = __nwlog_obj();
              v42 = type;
              if (os_log_type_enabled(v41, type))
              {
                *buf = 136446210;
                v55 = "__nw_frame_set_is_wake_packet";
                v14 = "%{public}s called with null frame, backtrace limit exceeded";
                goto LABEL_118;
              }

              goto LABEL_37;
            }

            v45 = __nw_create_backtrace_string();
            v41 = __nwlog_obj();
            v42 = type;
            v48 = os_log_type_enabled(v41, type);
            if (!v45)
            {
              if (v48)
              {
                *buf = 136446210;
                v55 = "__nw_frame_set_is_wake_packet";
                v14 = "%{public}s called with null frame, no backtrace";
                goto LABEL_118;
              }

              goto LABEL_37;
            }

            if (v48)
            {
              *buf = 136446466;
              v55 = "__nw_frame_set_is_wake_packet";
              v56 = 2082;
              *v57 = v45;
              v47 = "%{public}s called with null frame, dumping backtrace:%{public}s";
              goto LABEL_112;
            }

LABEL_113:
            free(v45);
            goto LABEL_37;
          }

          if ((*MEMORY[0x1E6977EF8])(a2, *(a2 + 88)))
          {
            v36 = *(a2 + 204);
            goto LABEL_66;
          }

          goto LABEL_103;
        }

        __nwlog_obj();
        *buf = 136446210;
        v55 = "__nw_frame_check_validity";
        v37 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (__nwlog_fault())
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v38 = __nwlog_obj();
            v39 = type;
            if (!os_log_type_enabled(v38, type))
            {
              goto LABEL_101;
            }

            *buf = 136446210;
            v55 = "__nw_frame_check_validity";
            v40 = "%{public}s called with null frame";
            goto LABEL_100;
          }

          if (v52 != 1)
          {
            v38 = __nwlog_obj();
            v39 = type;
            if (!os_log_type_enabled(v38, type))
            {
              goto LABEL_101;
            }

            *buf = 136446210;
            v55 = "__nw_frame_check_validity";
            v40 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_100;
          }

          v43 = __nw_create_backtrace_string();
          v38 = __nwlog_obj();
          v39 = type;
          v44 = os_log_type_enabled(v38, type);
          if (v43)
          {
            if (v44)
            {
              *buf = 136446466;
              v55 = "__nw_frame_check_validity";
              v56 = 2082;
              *v57 = v43;
              _os_log_impl(&dword_1889BA000, v38, v39, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v43);
            goto LABEL_101;
          }

          if (v44)
          {
            *buf = 136446210;
            v55 = "__nw_frame_check_validity";
            v40 = "%{public}s called with null frame, no backtrace";
LABEL_100:
            _os_log_impl(&dword_1889BA000, v38, v39, v40, buf, 0xCu);
          }
        }

LABEL_101:
        if (v37)
        {
          free(v37);
        }

LABEL_103:
        if (v5)
        {
LABEL_51:
          v33 = v5[10];
          if (v33)
          {
            v34 = v5[11];
            v5[10] = 0;
            v5[11] = 0;
            v33(v5, 0, v34);
LABEL_53:
            v5 = 0;
LABEL_54:
            v35 = *MEMORY[0x1E69E9840];
            return v5;
          }

          __nwlog_obj();
          *buf = 136446210;
          v55 = "__nw_frame_finalize";
          v11 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v52 = 0;
          if (!__nwlog_fault())
          {
            goto LABEL_37;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v41 = __nwlog_obj();
            v42 = type;
            if (os_log_type_enabled(v41, type))
            {
              *buf = 136446210;
              v55 = "__nw_frame_finalize";
              v14 = "%{public}s called with null frame->finalizer";
LABEL_118:
              v28 = v41;
              v29 = v42;
              v30 = 12;
              goto LABEL_36;
            }

            goto LABEL_37;
          }

          if (v52 != 1)
          {
            v41 = __nwlog_obj();
            v42 = type;
            if (os_log_type_enabled(v41, type))
            {
              *buf = 136446210;
              v55 = "__nw_frame_finalize";
              v14 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
              goto LABEL_118;
            }

            goto LABEL_37;
          }

          v45 = __nw_create_backtrace_string();
          v41 = __nwlog_obj();
          v42 = type;
          v46 = os_log_type_enabled(v41, type);
          if (!v45)
          {
            if (v46)
            {
              *buf = 136446210;
              v55 = "__nw_frame_finalize";
              v14 = "%{public}s called with null frame->finalizer, no backtrace";
              goto LABEL_118;
            }

            goto LABEL_37;
          }

          if (v46)
          {
            *buf = 136446466;
            v55 = "__nw_frame_finalize";
            v56 = 2082;
            *v57 = v45;
            v47 = "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s";
LABEL_112:
            _os_log_impl(&dword_1889BA000, v41, v42, v47, buf, 0x16u);
            goto LABEL_113;
          }

          goto LABEL_113;
        }

LABEL_104:
        __nwlog_obj();
        *buf = 136446210;
        v55 = "__nw_frame_finalize";
        v11 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v52 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_37;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v41 = __nwlog_obj();
          v42 = type;
          if (os_log_type_enabled(v41, type))
          {
            *buf = 136446210;
            v55 = "__nw_frame_finalize";
            v14 = "%{public}s called with null frame";
            goto LABEL_118;
          }

          goto LABEL_37;
        }

        if (v52 != 1)
        {
          v41 = __nwlog_obj();
          v42 = type;
          if (os_log_type_enabled(v41, type))
          {
            *buf = 136446210;
            v55 = "__nw_frame_finalize";
            v14 = "%{public}s called with null frame, backtrace limit exceeded";
            goto LABEL_118;
          }

          goto LABEL_37;
        }

        v45 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v42 = type;
        v49 = os_log_type_enabled(v41, type);
        if (!v45)
        {
          if (v49)
          {
            *buf = 136446210;
            v55 = "__nw_frame_finalize";
            v14 = "%{public}s called with null frame, no backtrace";
            goto LABEL_118;
          }

          goto LABEL_37;
        }

        if (v49)
        {
          *buf = 136446466;
          v55 = "__nw_frame_finalize";
          v56 = 2082;
          *v57 = v45;
          v47 = "%{public}s called with null frame, dumping backtrace:%{public}s";
          goto LABEL_112;
        }

        goto LABEL_113;
      }

      if (!v27)
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v55 = "__nw_frame_unclaimed_bytes";
      v24 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_58;
      }

      *buf = 136446210;
      v55 = "__nw_frame_unclaimed_bytes";
      v24 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v22, v23, v24, buf, 0xCu);
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

_DWORD *tcp_newreno_switch_cc(_DWORD *result)
{
  v1 = result[36];
  v2 = result[37];
  v3 = result[50];
  if (*(sysctls + 280))
  {
    v4 = *(sysctls + 16);
  }

  else
  {
    v4 = 10;
  }

  if (v1 >= v2)
  {
    v1 = result[37];
  }

  v5 = v1 >> (v2 < result[38]);
  v6 = v3 * v4;
  v7 = v5 / v3 * v3;
  if (v6 > v7)
  {
    v7 = v6;
  }

  result[37] = v7;
  result[75] = 0;
  atomic_fetch_add(dword_1EE3E1970, 1u);
  return result;
}

uint64_t tcp_newreno_after_timeout(uint64_t result)
{
  if (*(result + 12) >= 4)
  {
    v1 = *(result + 144);
    if (v1 >= *(result + 148))
    {
      v1 = *(result + 148);
    }

    v2 = v1 >> 1;
    v3 = *(result + 200);
    v4 = v2 / v3;
    if (v4 <= 2)
    {
      v4 = 2;
    }

    v5 = v4 * v3;
    *(result + 148) = v3;
    *(result + 152) = v4 * v3;
    v6 = *(result + 80);
    v7 = *(v6 + 224);
    if (v7[97] > v5)
    {
      v8 = v7[104];
      if ((v8 & 0x400) != 0)
      {
        if (v7[105] > v5)
        {
          v9 = *(sysctls + 228);
          if (v9 <= v5)
          {
            v9 = v5;
          }

          v10 = *(sysctls + 116);
          if (v9 < v10)
          {
            v10 = v9;
          }

          v7[105] = v10;
        }

        v7[104] = v8 | 0x800;
      }
    }

    v11 = *(result + 204);
    if (v11)
    {
      v12 = 32000 * v3 / v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 << (v3 < v5);
    v14 = *(v6 + 2384);
    if (v14 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (v14 == -1)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    *(result + 472) = v16;
    if (v3 <= (v16 >> 12))
    {
      v3 = v16 >> 12;
    }

    *(result + 480) = v3;
  }

  return result;
}

uint64_t tcp_newreno_post_fr(uint64_t result, uint64_t a2)
{
  v2 = (result + 92);
  if (a2)
  {
    v2 = (a2 + 8);
  }

  v3 = *(result + 96) - *v2;
  v4 = *(result + 152);
  v5 = v4;
  if (v3 < v4)
  {
    v6 = *(result + 200);
    if (v3 <= v6)
    {
      v3 = *(result + 200);
    }

    v5 = v3 + v6;
  }

  *(result + 148) = v5;
  *(result + 300) = 0;
  v8 = *(result + 204);
  if (v8)
  {
    v9 = 32000 * v5 / v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 << (v5 < v4);
  v7 = *(result + 80);
  v11 = *(v7 + 2384);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v7 + 2384);
  }

  if (v11 != -1)
  {
    v10 = v12;
  }

  v13 = v10 >> 12;
  *(result + 472) = v10;
  v14 = *(result + 200);
  if (v14 <= v13)
  {
    v14 = v13;
  }

  *(result + 480) = v14;
  return result;
}

uint64_t tcp_newreno_pre_fr(uint64_t result)
{
  v1 = *(result + 144);
  if (v1 >= *(result + 148))
  {
    v1 = *(result + 148);
  }

  v2 = *(result + 200);
  v3 = (v1 >> 1) / v2;
  if (v3 <= 2)
  {
    v3 = 2;
  }

  v4 = v3 * v2;
  *(result + 152) = v4;
  v5 = *(*(result + 80) + 224);
  if (v5[97] > v4)
  {
    v6 = v5[104];
    if ((v6 & 0x400) != 0)
    {
      if (v5[105] > v4)
      {
        if (*(sysctls + 228) > v4)
        {
          v4 = *(sysctls + 228);
        }

        if (v4 >= *(sysctls + 116))
        {
          v4 = *(sysctls + 116);
        }

        v5[105] = v4;
      }

      v5[104] = v6 | 0x800;
    }
  }

  return result;
}

uint64_t tcp_newreno_ack_rcvd(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = *(a2 + 8) - *(result + 92);
  v5 = *(result + 148);
  v4 = *(result + 152);
  if (v5 >= v4)
  {
    v6 = *(result + 300) + v3;
    *(result + 300) = v6;
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (v7)
    {
      *(result + 300) = v8;
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else if (v3 >= v2 << (*(result + 100) == *(result + 96)))
  {
    v3 = v2 << (*(result + 100) == *(result + 96));
  }

  v9 = v3 + v5;
  v10 = 0xFFFF << *(result + 268);
  if (v9 < v10)
  {
    v10 = v9;
  }

  *(result + 148) = v10;
  v11 = *(result + 204);
  if (v11)
  {
    v12 = 32000 * v10 / v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 << (v10 < v4);
  v14 = *(*(result + 80) + 2384);
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = *(*(result + 80) + 2384);
  }

  if (v14 != -1)
  {
    v13 = v15;
  }

  *(result + 472) = v13;
  if (v2 <= (v13 >> 12))
  {
    v2 = v13 >> 12;
  }

  *(result + 480) = v2;
  return result;
}

uint64_t tcp_newreno_congestion_avd(uint64_t result, uint64_t a2)
{
  v2 = *(result + 148);
  if (v2 < *(result + 144))
  {
    v3 = *(result + 300) + *(a2 + 8) - *(result + 92);
    *(result + 300) = v3;
    v4 = v3 >= v2;
    v5 = v3 - v2;
    if (v5 != 0 && v4)
    {
      *(result + 300) = v5;
      v2 += *(result + 200);
      *(result + 148) = v2;
    }
  }

  v6 = *(result + 204);
  if (v6)
  {
    v7 = 32000 * v2 / v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 << (v2 < *(result + 152));
  v9 = *(*(result + 80) + 2384);
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(*(result + 80) + 2384);
  }

  if (v9 != -1)
  {
    v8 = v10;
  }

  v11 = v8 >> 12;
  *(result + 472) = v8;
  v12 = *(result + 200);
  if (v12 <= v11)
  {
    v12 = v11;
  }

  *(result + 480) = v12;
  return result;
}

uint64_t tcp_newreno_cwnd_init_or_reset(uint64_t result)
{
  if (*(sysctls + 280))
  {
    v1 = *(sysctls + 16);
  }

  else
  {
    v1 = 10;
  }

  v2 = *(result + 200);
  v3 = *(result + 204);
  v4 = v2 * v1;
  *(result + 148) = v2 * v1;
  if (v3)
  {
    v5 = 32000 * v4 / v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 << (v4 < *(result + 152));
  v7 = *(*(result + 80) + 2384);
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(*(result + 80) + 2384);
  }

  if (v7 == -1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  *(result + 472) = v9;
  if (v2 <= (v9 >> 12))
  {
    v2 = v9 >> 12;
  }

  *(result + 480) = v2;
  return result;
}

uint64_t tcp_rledbat_switch_to(uint64_t result)
{
  v1 = result;
  *(result + 1932) = 0;
  *(result + 1936) = 0;
  *(result + 1948) = 0;
  *(result + 1964) = 0;
  v2 = *(result + 1956);
  if (v2)
  {
    if (v2 >> 17)
    {
      v3 = v2 >> 1;
    }

    else
    {
      v3 = 0xFFFF;
    }
  }

  else
  {
    result = tcp_sbspace(result);
    v4 = v1[31] - v1[30];
    if (result > v4)
    {
      v4 = result;
    }

    v3 = v4 >> 1;
  }

  v5 = v1[50];
  v6 = (v3 + (v5 >> 1)) / v5 * v5;
  v7 = v5 * *(sysctls + 16);
  if (v6 <= v7)
  {
    v6 = v7;
  }

  v1[489] = v6;
  v8 = v1[490];
  if (v8 >= 0x3FFFC000)
  {
    v9 = 1073725440;
  }

  else
  {
    v9 = v1[490];
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1073725440;
  }

  v1[490] = v10;
  return result;
}

double tcp_rledbat_after_idle(uint64_t a1)
{
  *(a1 + 1932) = 0;
  result = 0.0;
  *(a1 + 1936) = 0;
  *(a1 + 1948) = 0;
  *(a1 + 1964) = 0;
  *(a1 + 1956) = *(sysctls + 16) * *(a1 + 200);
  return result;
}

double tcp_rledbat_init(uint64_t a1)
{
  atomic_fetch_add(dword_1ED4BF6D0, 1u);
  *(a1 + 1932) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 1948) = 0;
  *(a1 + 1956) = *(sysctls + 16) * *(a1 + 200);
  *&result = 1073725440;
  *(a1 + 1960) = 1073725440;
  return result;
}

void user_north_signal_error(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (*(a1 + 376))
      {
        if ((*(a1 + 776) & 2) == 0)
        {
          v4 = __nwlog_tcp_log();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            v6 = 136446722;
            v7 = "user_north_signal_error";
            v8 = 2082;
            v9 = a1 + 556;
            v10 = 2048;
            v11 = a1;
            _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping so %p SS_NOFDREF", &v6, 0x20u);
          }
        }
      }

      else
      {
        v3 = *(v2 + 120);
        if (v3)
        {
          v3(a1, *(a1 + 378));
        }
      }

      *(a1 + 378) = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t nw_tcp_access_context(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v8 = "nw_tcp_access_context";
    v4 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_14;
    }

    v5 = __nwlog_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136446210;
    v8 = "nw_tcp_access_context";
    v6 = "%{public}s called with null so, backtrace limit exceeded";
    goto LABEL_13;
  }

  v1 = *(a1 + 40);
  if (v1)
  {
    result = *(v1 + 5328);
    goto LABEL_4;
  }

  __nwlog_obj();
  *buf = 136446210;
  v8 = "nw_tcp_access_context";
  v4 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v8 = "nw_tcp_access_context";
      v6 = "%{public}s called with null tcp, backtrace limit exceeded";
LABEL_13:
      _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
    }
  }

LABEL_14:
  if (v4)
  {
    free(v4);
  }

  result = 0;
LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_tcp_destroy_globals(void *a1)
{
  v2 = a1[4];
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_9;
  }

  do
  {
    v6 = *v2;
    if (*v2 == v3)
    {
      v4 = v2;
    }

    else
    {
      do
      {
        v4 = v6;
        v6 = *v6;
      }

      while (v6 != v3);
    }

    v5 = *v3;
    *v4 = *v6;
    free(v3);
    v3 = v5;
  }

  while (v5);
  v2 = a1[4];
  if (v2)
  {
LABEL_9:
    free(v2);
    a1[4] = 0;
  }

  if (a1[11])
  {
    nw_queue_cancel_source();
    a1[11] = 0;
  }

  if (a1[12])
  {
    nw_queue_cancel_source();
    a1[12] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    free(v7);
    a1[9] = 0;
  }

  nw_tcp_release_frame_array();
  nw_tcp_release_frame_array();
  nw_tcp_release_frame_array();
  nw_tcp_release_frame_array();
  nw_tcp_release_frame_array();
  nw_tcp_release_frame_array();
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v8 = *(a1 + 324);
  if (v8)
  {
    free(v8);
    *(a1 + 324) = 0;
  }

  v9 = a1[30];
  if (v9)
  {
    nw_release(v9);
    a1[30] = 0;
  }
}

uint64_t nw_tcp_release_frame_array()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E6977EF8];
  while (1)
  {
    result = nw_frame_array_is_empty();
    if (result)
    {
      break;
    }

    v2 = nw_frame_array_first();
    nw_frame_array_remove();
    if (v2)
    {
      v3 = (v2 + 104);
      v4 = *(v2 + 204);
      if ((v4 & 2) != 0)
      {
        v12 = *(v2 + 96);
        if (v12)
        {
          nw_release(v12);
          *(v2 + 96) = 0;
        }

        *(v2 + 52) = 0;
        *(v2 + 56) = 0;
        *(v2 + 196) = 0;
      }

      else
      {
        if (*(v2 + 104))
        {
          if (((*(v2 + 204) & 0x100) == 0 || !*v0 || (*v0)(v2, *(v2 + 88))) && *(v2 + 112))
          {
            nw_mem_buffer_free();
          }

          v6 = v2 + 64;
          v5 = *(v2 + 64);
          *(v2 + 196) = 0;
          *(v2 + 192) = 0;
          *(v2 + 200) = 0;
          *(v2 + 48) = 0;
          *(v2 + 56) = 0;
          *(v2 + 80) = 0;
          *(v2 + 88) = 0;
          *v3 = 0;
          *(v2 + 112) = 0;
          *(v2 + 204) &= 0xFFC7u;
          if (v5)
          {
            do
            {
              v7 = *v5;
              v8 = v5[6];
              v9 = *v5;
              if (v8)
              {
                nw_release(v8);
                v5[6] = 0;
                v9 = *v5;
              }

              v10 = v5[1];
              v11 = v9 + 1;
              if (!v9)
              {
                v11 = (v2 + 72);
              }

              *v11 = v10;
              *v10 = v9;
              if (v5 != (v2 + 120))
              {
                free(v5);
              }

              v5 = v7;
            }

            while (v7);
          }
        }

        else
        {
          if ((v4 & 1) == 0)
          {
            goto LABEL_3;
          }

          if ((*(v2 + 204) & 0x100) == 0 || !*v0 || (*v0)(v2, *(v2 + 88)))
          {
            v13 = *(v2 + 112);
            if (v13)
            {
              free(v13);
            }
          }

          v6 = v2 + 64;
          v14 = *(v2 + 64);
          *(v2 + 196) = 0;
          *(v2 + 192) = 0;
          *(v2 + 200) = 0;
          *(v2 + 48) = 0;
          *(v2 + 56) = 0;
          *(v2 + 80) = 0;
          *(v2 + 88) = 0;
          *v3 = 0;
          *(v2 + 112) = 0;
          *(v2 + 204) &= 0xFFC7u;
          if (v14)
          {
            do
            {
              v15 = *v14;
              v16 = v14[6];
              v17 = *v14;
              if (v16)
              {
                nw_release(v16);
                v14[6] = 0;
                v17 = *v14;
              }

              v18 = v14[1];
              v19 = v17 + 1;
              if (!v17)
              {
                v19 = (v2 + 72);
              }

              *v19 = v18;
              *v18 = v17;
              if (v14 != (v2 + 120))
              {
                free(v14);
              }

              v14 = v15;
            }

            while (v15);
          }
        }

        *(v2 + 64) = 0;
        *(v2 + 72) = v6;
        v20 = *(v2 + 168);
        if (v20)
        {
          nw_release(v20);
        }

        *(v2 + 184) = 0;
        *(v2 + 168) = 0u;
        *(v2 + 152) = 0u;
        *(v2 + 136) = 0u;
        *(v2 + 120) = 0u;
        *(v2 + 204) &= 0x413Fu;
        *(v2 + 206) &= ~1u;
        *(v2 + 203) = 0;
        *(v2 + 198) = 0;
      }

LABEL_3:
      nw_release(v2);
    }

    else
    {
      __nwlog_obj();
      *buf = 136446210;
      v29 = "__nw_frame_buffer_get_manager";
      v21 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v22 = __nwlog_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v29 = "__nw_frame_buffer_get_manager";
          _os_log_impl(&dword_1889BA000, v22, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (v21)
      {
        free(v21);
      }

      __nwlog_obj();
      *buf = 136446210;
      v29 = "__nw_frame_uses_external_data";
      v23 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v24 = __nwlog_obj();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v29 = "__nw_frame_uses_external_data";
          _os_log_impl(&dword_1889BA000, v24, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (v23)
      {
        free(v23);
      }

      __nwlog_obj();
      *buf = 136446210;
      v29 = "__nw_frame_buffer_used_malloc";
      v25 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v26 = __nwlog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v29 = "__nw_frame_buffer_used_malloc";
          _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (v25)
      {
        free(v25);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_set_max_pacing_rate(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 5392));
    (*(*(a1 + 8) + 16))(a1, 1, v2);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v5 = *(a1 + 8);
      v6 = **(v5 + 8);
      if ((v6 == 30 || v6 == 2) && a2 != 0)
      {
        *(*a1 + 2384) = a2;
        (*(v5 + 24))(a1, 1, v2);
        v10 = 0;
LABEL_19:
        os_unfair_lock_unlock((a1 + 5392));
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 8);
    }

    (*(v5 + 24))(a1, 1, v2);
    __nwlog_obj();
    *buf = 136446722;
    v17 = "nw_protocol_tcp_set_max_pacing_rate";
    v18 = 2082;
    v19 = a1 + 556;
    v20 = 1024;
    v21 = 22;
    v9 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v17 = "nw_protocol_tcp_set_max_pacing_rate";
        v18 = 2082;
        v19 = a1 + 556;
        v20 = 1024;
        v21 = 22;
        _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp_set_max_pacing_rate failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
      }
    }

    if (v9)
    {
      free(v9);
    }

    v10 = 22;
    goto LABEL_19;
  }

  __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_protocol_tcp_set_max_pacing_rate";
  v14 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v17 = "nw_protocol_tcp_set_max_pacing_rate";
      _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v14)
  {
    free(v14);
  }

  v10 = 22;
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t nw_protocol_tcp_set_no_push(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 5392));
    *type = a2;
    *buf = 0x600000001;
    *&buf[8] = 4;
    *&buf[16] = type;
    v18 = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v2);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v5 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v5 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v2);
    if (!v5)
    {
      goto LABEL_16;
    }

    __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_protocol_tcp_set_no_push";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    *&buf[22] = 1024;
    LODWORD(v18) = v5;
    v6 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type[0];
        if (!os_log_type_enabled(v7, type[0]))
        {
          goto LABEL_14;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_set_no_push";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v18) = v5;
        v9 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d";
      }

      else
      {
        v7 = __nwlog_obj();
        v8 = type[0];
        if (!os_log_type_enabled(v7, type[0]))
        {
          goto LABEL_14;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_set_no_push";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v18) = v5;
        v9 = "%{public}s %{public}s tcp_set_no_push failed %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v7, v8, v9, buf, 0x1Cu);
    }

LABEL_14:
    if (v6)
    {
      free(v6);
    }

LABEL_16:
    os_unfair_lock_unlock((a1 + 5392));
    goto LABEL_17;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_set_no_push";
  v12 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  if (__nwlog_fault())
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_no_push";
        v15 = "%{public}s called with null handle";
LABEL_24:
        _os_log_impl(&dword_1889BA000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_no_push";
        v15 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_24;
      }
    }
  }

  if (v12)
  {
    free(v12);
  }

  v5 = 22;
LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t nw_protocol_tcp_set_no_delay(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 5392));
    *type = a2;
    *buf = 0x600000001;
    *&buf[8] = 1;
    *&buf[16] = type;
    v18 = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v2);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v5 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v5 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v2);
    if (!v5)
    {
      goto LABEL_16;
    }

    __nwlog_obj();
    *buf = 136446722;
    *&buf[4] = "nw_protocol_tcp_set_no_delay";
    *&buf[12] = 2082;
    *&buf[14] = a1 + 556;
    *&buf[22] = 1024;
    LODWORD(v18) = v5;
    v6 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v7 = __nwlog_obj();
        v8 = type[0];
        if (!os_log_type_enabled(v7, type[0]))
        {
          goto LABEL_14;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_set_no_delay";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v18) = v5;
        v9 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d";
      }

      else
      {
        v7 = __nwlog_obj();
        v8 = type[0];
        if (!os_log_type_enabled(v7, type[0]))
        {
          goto LABEL_14;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_set_no_delay";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v18) = v5;
        v9 = "%{public}s %{public}s tcp_set_no_delay failed %{darwin.errno}d, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v7, v8, v9, buf, 0x1Cu);
    }

LABEL_14:
    if (v6)
    {
      free(v6);
    }

LABEL_16:
    os_unfair_lock_unlock((a1 + 5392));
    goto LABEL_17;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_set_no_delay";
  v12 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  if (__nwlog_fault())
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_no_delay";
        v15 = "%{public}s called with null handle";
LABEL_24:
        _os_log_impl(&dword_1889BA000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type[0];
      if (os_log_type_enabled(v13, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_set_no_delay";
        v15 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_24;
      }
    }
  }

  if (v12)
  {
    free(v12);
  }

  v5 = 22;
LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t nw_protocol_tcp_reset_keepalives(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 5392));
    (*(*(a1 + 8) + 16))(a1, 1, v5);
    if ((~*(a1 + 376) & 0x30) == 0 && (*(a1 + 365) & 0x20) == 0)
    {
      (*(*(a1 + 8) + 24))(a1, 1, v5);
      __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_reset_keepalives";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      LODWORD(v29) = 22;
      v11 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v12 = __nwlog_obj();
          v13 = type[0];
          if (os_log_type_enabled(v12, type[0]))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_reset_keepalives";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 556;
            *&buf[22] = 1024;
            LODWORD(v29) = 22;
            v14 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d";
LABEL_45:
            _os_log_impl(&dword_1889BA000, v12, v13, v14, buf, 0x1Cu);
          }
        }

        else
        {
          v12 = __nwlog_obj();
          v13 = type[0];
          if (os_log_type_enabled(v12, type[0]))
          {
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_reset_keepalives";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 556;
            *&buf[22] = 1024;
            LODWORD(v29) = 22;
            v14 = "%{public}s %{public}s tcp_set_keepalive failed %{darwin.errno}d, backtrace limit exceeded";
            goto LABEL_45;
          }
        }
      }

      if (v11)
      {
        free(v11);
      }

      v16 = 22;
LABEL_54:
      os_unfair_lock_unlock((a1 + 5392));
      goto LABEL_55;
    }

    if (a2)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 372) = *(a1 + 372) & 0xFFFFFFF7 | v15;
    (*(*(a1 + 8) + 24))(a1, 1, v5);
    *type = a4;
    *buf = 0x600000001;
    *&buf[8] = 16;
    *&buf[16] = type;
    v29 = 4;
    (*(*(a1 + 8) + 16))(a1, 1, v5);
    if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
    {
      v16 = tcp_ctloutput(a1, buf);
    }

    else
    {
      v16 = 22;
    }

    (*(*(a1 + 8) + 24))(a1, 1, v5);
    if (v16)
    {
      __nwlog_obj();
      *buf = 136446722;
      *&buf[4] = "nw_protocol_tcp_reset_keepalives";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 556;
      *&buf[22] = 1024;
      LODWORD(v29) = v16;
      v17 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      if (!__nwlog_fault())
      {
        goto LABEL_52;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v19 = type[0];
        if (!os_log_type_enabled(v18, type[0]))
        {
          goto LABEL_52;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_reset_keepalives";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v29) = v16;
        v20 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d";
      }

      else
      {
        v18 = __nwlog_obj();
        v19 = type[0];
        if (!os_log_type_enabled(v18, type[0]))
        {
          goto LABEL_52;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_reset_keepalives";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v29) = v16;
        v20 = "%{public}s %{public}s tcp_set_keepalive_idle_time failed %{darwin.errno}d, backtrace limit exceeded";
      }
    }

    else
    {
      *type = a5;
      *buf = 0x600000001;
      *&buf[8] = 257;
      *&buf[16] = type;
      v29 = 4;
      (*(*(a1 + 8) + 16))(a1, 1, v5);
      if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
      {
        v16 = tcp_ctloutput(a1, buf);
      }

      else
      {
        v16 = 22;
      }

      (*(*(a1 + 8) + 24))(a1, 1, v5);
      if (v16)
      {
        __nwlog_obj();
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_reset_keepalives";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v29) = v16;
        v17 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        if (!__nwlog_fault())
        {
          goto LABEL_52;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v18 = __nwlog_obj();
          v19 = type[0];
          if (!os_log_type_enabled(v18, type[0]))
          {
            goto LABEL_52;
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_reset_keepalives";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 556;
          *&buf[22] = 1024;
          LODWORD(v29) = v16;
          v20 = "%{public}s %{public}s tcp_set_keepalive_interval failed %{darwin.errno}d";
        }

        else
        {
          v18 = __nwlog_obj();
          v19 = type[0];
          if (!os_log_type_enabled(v18, type[0]))
          {
            goto LABEL_52;
          }

          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_reset_keepalives";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 556;
          *&buf[22] = 1024;
          LODWORD(v29) = v16;
          v20 = "%{public}s %{public}s tcp_set_keepalive_interval failed %{darwin.errno}d, backtrace limit exceeded";
        }
      }

      else
      {
        *type = a3;
        *buf = 0x600000001;
        *&buf[8] = 258;
        *&buf[16] = type;
        v29 = 4;
        (*(*(a1 + 8) + 16))(a1, 1, v5);
        if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
        {
          v16 = tcp_ctloutput(a1, buf);
        }

        else
        {
          v16 = 22;
        }

        (*(*(a1 + 8) + 24))(a1, 1, v5);
        if (!v16)
        {
          goto LABEL_54;
        }

        __nwlog_obj();
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_reset_keepalives";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v29) = v16;
        v17 = _os_log_send_and_compose_impl();
        if (!__nwlog_fault() || (v18 = __nwlog_obj(), v19 = OS_LOG_TYPE_ERROR, !os_log_type_enabled(v18, OS_LOG_TYPE_ERROR)))
        {
LABEL_52:
          if (v17)
          {
            free(v17);
          }

          goto LABEL_54;
        }

        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_reset_keepalives";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 556;
        *&buf[22] = 1024;
        LODWORD(v29) = v16;
        v20 = "%{public}s %{public}s tcp_setsockopt TCP_KEEPCNT failed %{darwin.errno}d, backtrace limit exceeded";
      }
    }

    _os_log_impl(&dword_1889BA000, v18, v19, v20, buf, 0x1Cu);
    goto LABEL_52;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_reset_keepalives";
  v23 = _os_log_send_and_compose_impl();
  type[0] = OS_LOG_TYPE_ERROR;
  if (__nwlog_fault())
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (os_log_type_enabled(v24, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_reset_keepalives";
        v26 = "%{public}s called with null handle";
LABEL_62:
        _os_log_impl(&dword_1889BA000, v24, v25, v26, buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v25 = type[0];
      if (os_log_type_enabled(v24, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_reset_keepalives";
        v26 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_62;
      }
    }
  }

  if (v23)
  {
    free(v23);
  }

  v16 = 22;
LABEL_55:
  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t nw_protocol_tcp_get_send_buffer_size(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 5416);
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v6 = "nw_protocol_tcp_get_send_buffer_size";
    v3 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v6 = "nw_protocol_tcp_get_send_buffer_size";
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v3)
    {
      free(v3);
    }

    result = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_get_receive_buffer_size(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 5420);
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v6 = "nw_protocol_tcp_get_receive_buffer_size";
    v3 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v6 = "nw_protocol_tcp_get_receive_buffer_size";
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s called with null handle, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v3)
    {
      free(v3);
    }

    result = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_tcp_error(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = nw_protocol_downcast();
    if (v4)
    {
      v5 = v4;
      if ((*(v4 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v8 = __nwlog_tcp_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v12 = "nw_protocol_tcp_error";
            v13 = 2082;
            v14 = v5 + 556;
            v15 = 1024;
            v16 = a3;
            _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s called with error: %d", buf, 0x1Cu);
          }
        }
      }

      nw_protocol_get_input_handler();
      nw_protocol_error_quiet();
      goto LABEL_6;
    }

    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_tcp_error";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "nw_protocol_tcp_error";
        v10 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_tcp_error";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "nw_protocol_tcp_error";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_17:
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_tcp_reset(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_tcp_reset";
    v8 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_22;
    }

    v9 = __nwlog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446210;
    v12 = "nw_protocol_tcp_reset";
    v10 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_21;
  }

  v3 = nw_protocol_downcast();
  if (v3)
  {
    v4 = v3;
    if ((*(v3 + 5352) - 1) <= 1)
    {
      *(v3 + 5436) |= 2u;
      *(v3 + 5352) = 3;
      if ((*(v3 + 776) & 2) == 0)
      {
        v5 = __nwlog_tcp_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v12 = "nw_protocol_tcp_reset";
          v13 = 2082;
          v14 = v4 + 556;
          _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s force closing tcp", buf, 0x16u);
        }
      }

      (*(*(v4 + 8) + 16))(v4, 1, v1);
      if ((~*(v4 + 376) & 0x30) != 0 || (*(v4 + 365) & 0x20) != 0)
      {
        *(v4 + 16) = 0;
        *(v4 + 372) |= 0x80u;
      }

      (*(*(v4 + 8) + 24))(v4, 1, v1);
      tcp_close_locked(v4);
    }

    *(v4 + 5436) &= 0xFFFFFFDD;
    *(v4 + 5352) = 0;
    bzero(v4, 0x310uLL);
    bzero((v4 + 800), 0x11A0uLL);
    nw_protocol_tcp_initialize(a1);
    result = 1;
    goto LABEL_12;
  }

  __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_protocol_tcp_reset";
  v8 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v12 = "nw_protocol_tcp_reset";
      v10 = "%{public}s called with null tcp, backtrace limit exceeded";
LABEL_21:
      _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
    }
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  result = 0;
LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL nw_protocol_tcp_initialize_inbound(uint64_t a1, nw_endpoint_t endpoint)
{
  v18 = *MEMORY[0x1E69E9840];
  address = nw_endpoint_get_address(endpoint);
  sa_family = address->sa_family;
  if (sa_family == 30)
  {
    *(a1 + 1264) = *&address->sa_data[6];
    *(a1 + 3168) = *address->sa_data;
    *(a1 + 3212) = 1;
    v6 = tcp_rtlookup6(a1 + 800, 0);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (sa_family != 2)
  {
    v9 = __nwlog_obj();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_25;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_initialize_inbound";
    v11 = "%{public}s Invalid address family";
    goto LABEL_14;
  }

  *(a1 + 1276) = *&address->sa_data[2];
  *(a1 + 3168) = *address->sa_data;
  *(a1 + 3212) = 1;
  v6 = tcp_rtlookup(a1 + 800, 0);
  if (!v6)
  {
LABEL_10:
    v9 = __nwlog_obj();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_25;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_initialize_inbound";
    v11 = "%{public}s tcp_rtlookup[6] failed";
LABEL_14:
    _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    result = 0;
    goto LABEL_25;
  }

LABEL_4:
  *(a1 + 1248) = *(v6 + 216);
  *(v6 + 1624) |= 0x2000000u;
  nw_protocol_upcast();
  nw_protocol_get_input_handler();
  if (nw_protocol_get_parameters())
  {
    v7 = nw_parameters_copy_protocol_options_legacy();
    v15 = MEMORY[0x18CFDD0B0]();
    if (v15)
    {
      *buf = 0x600000001;
      *&buf[8] = 32;
      *&buf[16] = &v15;
      v17 = 4;
      (*(*(a1 + 8) + 16))(a1, 1, v2);
      if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
      {
        v8 = tcp_ctloutput(a1, buf);
      }

      else
      {
        v8 = 22;
      }

      (*(*(a1 + 8) + 24))(a1, 1, v2);
      if (v8)
      {
        __nwlog_obj();
        *buf = 136446466;
        *&buf[4] = "nw_protocol_tcp_initialize_inbound";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        v12 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v13 = __nwlog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_initialize_inbound";
            *&buf[12] = 1024;
            *&buf[14] = v8;
            _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s tcp_setsockopt TCP_CONNECTIONTIMEOUT failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x12u);
          }
        }

        if (v12)
        {
          free(v12);
        }
      }
    }

    if (v7)
    {
      nw_release(v7);
    }
  }

  result = 1;
LABEL_25:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_proto_tcp_tfo_update_cache(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_proto_tcp_tfo_update_cache";
    v5 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_proto_tcp_tfo_update_cache";
        v7 = "%{public}s called with null so, backtrace limit exceeded";
LABEL_21:
        _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
      }
    }

LABEL_22:
    if (v5)
    {
      free(v5);
    }

    goto LABEL_24;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_proto_tcp_tfo_update_cache";
    v5 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_proto_tcp_tfo_update_cache";
        v7 = "%{public}s called with null tfo_cache_buffer, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  v2 = *(a1 + 40);
  if (!v2 || ((*(a2 + 17) & 9) != 0 || !*(a2 + 16) ? (v3 = *(v2 + 5436) | 0x10000) : (v3 = *(v2 + 5436) & 0xFFFEFFFF), (*(v2 + 5436) = v3, !*(v2 + 5336)) || !*(v2 + 5344)))
  {
LABEL_24:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEDD3E90]();
}

uint64_t nw_proto_tcp_tfo_cookie_len(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v8 = "nw_proto_tcp_tfo_cookie_len";
    v3 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v8 = "nw_proto_tcp_tfo_cookie_len";
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s called with null so, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v3)
    {
      free(v3);
    }

    goto LABEL_13;
  }

  v1 = *(a1 + 40);
  if (!v1 || !*(v1 + 5336) || !*(v1 + 5344))
  {
LABEL_13:
    v5 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEDD3E80]();
}

uint64_t nw_proto_tcp_tfo_get_cookie(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_proto_tcp_tfo_get_cookie";
    v5 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_23;
    }

    v6 = __nwlog_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136446210;
    v11 = "nw_proto_tcp_tfo_get_cookie";
    v7 = "%{public}s called with null so, backtrace limit exceeded";
LABEL_22:
    _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
    goto LABEL_23;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_proto_tcp_tfo_get_cookie";
    v5 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_23;
    }

    v6 = __nwlog_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 136446210;
    v11 = "nw_proto_tcp_tfo_get_cookie";
    v7 = "%{public}s called with null cookie, backtrace limit exceeded";
    goto LABEL_22;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_proto_tcp_tfo_get_cookie";
    v5 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_proto_tcp_tfo_get_cookie";
        v7 = "%{public}s called with null len, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:
    if (v5)
    {
      free(v5);
    }

    goto LABEL_25;
  }

  v3 = *(a1 + 40);
  if (!v3 || !*(v3 + 5336) || !*(v3 + 5344))
  {
LABEL_25:
    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEDD3E78]();
}

uint64_t nw_proto_tcp_tfo_enabled(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *(a1 + 40);
    if (v1 && *(v1 + 5336) && *(v1 + 5344))
    {
      result = nw_path_flow_registration_fast_open_blocked() ^ 1;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v7 = "nw_proto_tcp_tfo_enabled";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v7 = "nw_proto_tcp_tfo_enabled";
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, "%{public}s called with null so, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v4)
    {
      free(v4);
    }

    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_protocol_tcp_signal_error(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if ((*(a1 + 776) & 2) == 0)
  {
    v5 = __nwlog_tcp_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136446722;
      v10 = "nw_protocol_tcp_signal_error";
      v11 = 2082;
      v12 = a1 + 556;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_INFO, "%{public}s %{public}s tcp signal error: %d", buf, 0x1Cu);
    }
  }

  nw_protocol_upcast();
  nw_protocol_retain();
  v6 = *(v4 + 5328);
  result = nw_queue_context_async();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __nw_protocol_tcp_signal_error_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 5436) & 2) != 0)
  {
    v5 = *(a1 + 40);
    if (!v5 || (*(v5 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v9 = __nwlog_tcp_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = &unk_188A285CF;
          if (v5)
          {
            v10 = (v5 + 556);
          }

          v11 = 136446466;
          v12 = "nw_protocol_tcp_signal_error_block_invoke";
          v13 = 2082;
          v14 = v10;
          _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v11, 0x16u);
        }
      }
    }
  }

  else
  {
    v2 = *(a1 + 48);
    nw_protocol_get_input_handler();
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    nw_protocol_error_quiet();
  }

  v6 = *(a1 + 48);
  result = nw_protocol_release();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __nw_protocol_tcp_wake_keepalive_block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v11 = __nwlog_tcp_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = &unk_188A285CF;
        if (v2)
        {
          v12 = (v2 + 556);
        }

        v13 = 136446466;
        v14 = "nw_protocol_tcp_wake_keepalive_block_invoke";
        v15 = 2082;
        v16 = v12;
        _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s keepalive", &v13, 0x16u);
      }
    }
  }

  if (*(a1[5] + 5352) < 3u)
  {
    v6 = a1[6];
    nw_protocol_get_input_handler();
    v7 = a1[6];
    nw_protocol_notify_quiet();
  }

  else
  {
    v3 = a1[4];
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v13 = 136446466;
          v14 = "nw_protocol_tcp_wake_keepalive_block_invoke";
          v15 = 2082;
          v16 = v5;
          _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v13, 0x16u);
        }
      }
    }
  }

  v8 = a1[6];
  result = nw_protocol_release();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_tcp_wake_write_timeout(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 5352) <= 2u && (v3 = *(v2 + 5436), (v3 & 0x80) != 0))
  {
    *(v2 + 5436) = v3 | 0x80000;
    nw_protocol_upcast();
    nw_protocol_retain();
    v5 = *(v2 + 5328);
    nw_queue_context_async();
  }

  else if ((*(a1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v4 = __nwlog_tcp_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v8 = "nw_protocol_tcp_wake_write_timeout";
        v9 = 2082;
        v10 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __nw_protocol_tcp_wake_write_timeout_block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v11 = __nwlog_tcp_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = &unk_188A285CF;
        if (v2)
        {
          v12 = (v2 + 556);
        }

        v13 = 136446466;
        v14 = "nw_protocol_tcp_wake_write_timeout_block_invoke";
        v15 = 2082;
        v16 = v12;
        _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s write timeout", &v13, 0x16u);
      }
    }
  }

  if (*(a1[5] + 5352) < 3u)
  {
    v6 = a1[6];
    nw_protocol_get_input_handler();
    v7 = a1[6];
    nw_protocol_notify_quiet();
  }

  else
  {
    v3 = a1[4];
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v13 = 136446466;
          v14 = "nw_protocol_tcp_wake_write_timeout_block_invoke";
          v15 = 2082;
          v16 = v5;
          _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v13, 0x16u);
        }
      }
    }
  }

  v8 = a1[6];
  result = nw_protocol_release();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_tcp_wake_read_timeout(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 5352) <= 2u && (v3 = *(v2 + 5436), (v3 & 0x40) != 0))
  {
    *(v2 + 5436) = v3 | 0x100000;
    nw_protocol_upcast();
    nw_protocol_retain();
    v5 = *(v2 + 5328);
    nw_queue_context_async();
  }

  else if ((*(a1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v4 = __nwlog_tcp_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v8 = "nw_protocol_tcp_wake_read_timeout";
        v9 = 2082;
        v10 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __nw_protocol_tcp_wake_read_timeout_block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v11 = __nwlog_tcp_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = &unk_188A285CF;
        if (v2)
        {
          v12 = (v2 + 556);
        }

        v13 = 136446466;
        v14 = "nw_protocol_tcp_wake_read_timeout_block_invoke";
        v15 = 2082;
        v16 = v12;
        _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s read timeout", &v13, 0x16u);
      }
    }
  }

  if (*(a1[5] + 5352) < 3u)
  {
    v6 = a1[6];
    nw_protocol_get_input_handler();
    v7 = a1[6];
    nw_protocol_notify_quiet();
  }

  else
  {
    v3 = a1[4];
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v13 = 136446466;
          v14 = "nw_protocol_tcp_wake_read_timeout_block_invoke";
          v15 = 2082;
          v16 = v5;
          _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v13, 0x16u);
        }
      }
    }
  }

  v8 = a1[6];
  result = nw_protocol_release();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ____nw_signpost_is_enabled_block_invoke()
{
  v0 = *MEMORY[0x1E6977F48];
  result = networkd_settings_get_BOOL();
  *MEMORY[0x1E6977EE8] = result;
  return result;
}

void nw_protocol_tcp_link_state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_tcp_link_state";
    v22 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_61;
    }

    v26 = __nwlog_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v42 = "nw_protocol_tcp_link_state";
    v27 = "%{public}s called with null link_info, backtrace limit exceeded";
LABEL_60:
    _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
    goto LABEL_61;
  }

  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_tcp_link_state";
    v22 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_61;
    }

    v26 = __nwlog_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *buf = 136446210;
    v42 = "nw_protocol_tcp_link_state";
    v27 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_60;
  }

  v4 = nw_protocol_downcast();
  if (!v4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v42 = "nw_protocol_tcp_link_state";
    v22 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v42 = "nw_protocol_tcp_link_state";
        v27 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_60;
      }
    }

LABEL_61:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_17;
  }

  v5 = v4;
  if (*(v4 + 5352) != 2)
  {
    if ((*(v4 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v38 = __nwlog_tcp_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v42 = "nw_protocol_tcp_link_state";
          v43 = 2082;
          v44 = (v5 + 556);
          _os_log_impl(&dword_1889BA000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
        }
      }
    }

    goto LABEL_17;
  }

  v6 = *v4;
  flow_control_status = nw_link_get_flow_control_status();
  if (flow_control_status == 1)
  {
    v14 = *(*v5 + 240);
    v15 = *(v14 + 80);
    while (1)
    {
      v16 = *(v15 + 456);
      if (v16 == 0xFFFF)
      {
        break;
      }

      v17 = *(v15 + 456);
      atomic_compare_exchange_strong_explicit((v15 + 456), &v17, v16 + 1, memory_order_relaxed, memory_order_relaxed);
      if (v17 == v16)
      {
        if ((*(v14 + 90) & 0x820) == 0 && *(v14 + 12) == 4 && *(v14 + 96) - *(v14 + 92) >= 1)
        {
          v18 = *(v15 + 2372);
          *(v15 + 2372) = v18 & 0xAFFFFFFF | 0x40000000;
          if ((v18 & 0x50000000) == 0)
          {
            v19 = *(tcp_cc_algo_list[*(*(v15 + 240) + 272)] + 64);
            if (v19)
            {
              v20 = v15;
              v19(*(v15 + 240));
              v15 = v20;
            }
          }
        }

        v21 = *MEMORY[0x1E69E9840];

        in_pcb_checkstate(v15, 2, 0);
        return;
      }
    }

    goto LABEL_17;
  }

  if (flow_control_status)
  {
LABEL_17:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  v8 = *(v6 + 224);
  do
  {
    v9 = *(v6 + 456);
    if (v9 == 0xFFFF)
    {
      __nwlog_obj();
      *buf = 136446210;
      v42 = "inp_fc_feedback";
      v22 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v26 = __nwlog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v42 = "inp_fc_feedback";
          v27 = "%{public}s failed to acquire inpcb reference, backtrace limit exceeded";
          goto LABEL_60;
        }
      }

      goto LABEL_61;
    }

    v10 = *(v6 + 456);
    atomic_compare_exchange_strong_explicit((v6 + 456), &v10, v9 + 1, memory_order_relaxed, memory_order_relaxed);
  }

  while (v10 != v9);
  if (v8)
  {
    (*(*(v8 + 8) + 16))(v8, 1, v3);
    goto LABEL_12;
  }

  v39 = __nwlog_obj();
  os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v42 = "inp_fc_feedback";
  v40 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v40);
    (*(MEMORY[8] + 16))(0, 1, v3);
LABEL_12:
    if (in_pcb_checkstate(v6, 2, 1) == 0xFFFF)
    {
      __nwlog_obj();
      *buf = 136446210;
      v42 = "inp_fc_feedback";
      v12 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v37 = __nwlog_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v42 = "inp_fc_feedback";
          _os_log_impl(&dword_1889BA000, v37, OS_LOG_TYPE_ERROR, "%{public}s failed to release inpcb reference, backtrace limit exceeded", buf, 0xCu);
        }
      }

      if (v12)
      {
        free(v12);
      }

      goto LABEL_65;
    }

    v23 = *(v6 + 2372);
    if ((v23 & 0x50000000) == 0)
    {
LABEL_65:
      (*(*(v8 + 8) + 24))(v8, 1, v3);
      goto LABEL_17;
    }

    v24 = *(v6 + 224);
    if ((v23 & 0x10000000) != 0)
    {
      *(v6 + 2372) = v23 & 0xAFFFFFFF;
      *(v24 + 364) &= ~0x20000u;
    }

    else
    {
      v25 = *(v24 + 364);
      *(v6 + 2372) = v23 & 0xAFFFFFFF;
      if ((v25 & 0x20000) != 0)
      {
        *(v24 + 364) = v25 & 0xFFFDFFFF;
      }

      if ((v23 & 0x40000000) == 0)
      {
        goto LABEL_44;
      }
    }

    v28 = *(v24 + 32);
    if (v28)
    {
      v29 = *v28;
      if (v29)
      {
        v29(v24, v11);
      }
    }

LABEL_44:
    v30 = *(v6 + 240);
    v31 = *(v6 + 448);
    v32 = *(tcp_cc_algo_list[*(v30 + 272)] + 72);
    if (v32)
    {
      v32(*(v6 + 240), 0);
    }

    *(v30 + 300) = 0;
    if (*(v30 + 234) && v31 && (*(v31 + 1224) == 255 || *(v31 + 1168) == 255))
    {
      v33 = *(v6 + 224);
      if (!v33 || (*(v33 + 776) & 2) == 0)
      {
        v34 = __nwlog_tcp_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = (v33 + 556);
          v36 = *(v30 + 234);
          v42 = "inp_fc_unthrottle_tcp";
          *buf = 136446722;
          if (!v33)
          {
            v35 = &unk_188A285CF;
          }

          v43 = 2082;
          v44 = v35;
          v45 = 1024;
          v46 = v36;
          _os_log_impl(&dword_1889BA000, v34, OS_LOG_TYPE_INFO, "%{public}s %{public}s inp_fc_unthrottle_tcp keep rxmit state t_rxtshift %d", buf, 0x1Cu);
        }
      }
    }

    else
    {
      *(v30 + 234) = 0;
      *(v30 + 256) = 0;
    }

    *(v30 + 748) &= ~0x100000u;
    tcp_output(v30);
    goto LABEL_65;
  }

  __break(1u);
}

void nw_protocol_tcp_output_available(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if ((*(v1 + 5352) | 4) == 4 || (*(v1 + 5436) & 0x20) != 0)
      {
        if ((*(v1 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v5 = __nwlog_tcp_log();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v10 = "nw_protocol_tcp_output_available";
              v11 = 2082;
              v12 = v2 + 556;
              _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
            }
          }
        }
      }

      else if (*(*v1 + 460))
      {
        if ((*(v1 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v8 = __nwlog_tcp_log();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v10 = "nw_protocol_tcp_output_available";
              v11 = 2082;
              v12 = v2 + 556;
              _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s restarting TCP output on output available", buf, 0x16u);
            }
          }
        }

        tcp_output(*(*v2 + 240));
      }

      goto LABEL_6;
    }

    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_protocol_tcp_output_available";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_protocol_tcp_output_available";
        v7 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_24;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_protocol_tcp_output_available";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_protocol_tcp_output_available";
        v7 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_24:
        _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0xCu);
      }
    }
  }

  if (v4)
  {
    free(v4);
  }

LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_tcp_replace_input_handler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v7 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_18;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v11 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_38:
    v12 = v15;
    v13 = 12;
    goto LABEL_17;
  }

  v5 = nw_protocol_downcast();
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v7 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_18;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v11 = "%{public}s called with null tcp, backtrace limit exceeded";
    goto LABEL_38;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v7 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_18;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v11 = "%{public}s called with null old_input_handler, backtrace limit exceeded";
    goto LABEL_38;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v7 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_18;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136446210;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v11 = "%{public}s called with null new_input_handler, backtrace limit exceeded";
    goto LABEL_38;
  }

  v6 = v5;
  if (nw_protocol_get_input_handler() != a2)
  {
    __nwlog_obj();
    *buf = 136446722;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v18 = 2048;
    input_handler = nw_protocol_get_input_handler();
    v20 = 2048;
    v21 = a2;
    v7 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_18;
    }

    v10 = __nwlog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136446722;
    v17 = "nw_protocol_tcp_replace_input_handler";
    v18 = 2048;
    input_handler = nw_protocol_get_input_handler();
    v20 = 2048;
    v21 = a2;
    v11 = "%{public}s Old input handler does not match (%p != %p), backtrace limit exceeded";
    v12 = v10;
    v13 = 32;
LABEL_17:
    _os_log_impl(&dword_1889BA000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
LABEL_18:
    if (v7)
    {
      free(v7);
    }

    result = 0;
    goto LABEL_21;
  }

  nw_protocol_set_input_handler();
  if (!nw_protocol_get_output_handler())
  {
    nw_protocol_set_output_handler();
  }

  if (nw_protocol_supports_external_data_is_valid() && nw_protocol_supports_external_data())
  {
    v8 = *(v6 + 5436) | 0x1000;
  }

  else
  {
    v8 = *(v6 + 5436) & 0xFFFFEFFF;
  }

  *(v6 + 5436) = v8;
  result = 1;
LABEL_21:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL tcp_rst_rlc_compress(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  if (!*(sysctls + 324) || (*(a2 + 13) & 4) == 0)
  {
LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  v7 = *(a1 + 80);
  memset(&v29[4], 0, 32);
  v8 = *(v4 + 308);
  HIDWORD(v9) = *a2;
  LODWORD(v9) = *a2;
  *v29 = v9 >> 16;
  if ((*(v7 + 2380) & 2) != 0)
  {
    *&v29[20] = *(v7 + 480);
    *&v29[4] = *(v7 + 464);
    if (!*(sysctls + 332))
    {
      goto LABEL_10;
    }

LABEL_9:
    if ((v8 - *(v4 + 332)) >= *(sysctls + 328))
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  *&v29[32] = *(v7 + 492);
  *&v29[16] = *(v7 + 476);
  if (*(sysctls + 332))
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = *(v4 + 324);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = *(v10 + 8);
  if (*v29 == v11 && *&v29[8] == v12 && *&v29[16] == v13 && *&v29[24] == v14 && *&v29[32] == v15)
  {
    ++*(v4 + 320);
    v28 = *(a1 + 1064);
    if (v28)
    {
      ++*(v28 + 1704);
    }

    result = 1;
    goto LABEL_4;
  }

LABEL_23:
  v20 = *(v4 + 320);
  v21 = *(v4 + 324);
  v22 = v21[1];
  v23 = *v21;
  *(v21 + 8) = *&v29[32];
  *v21 = *v29;
  *(v21 + 1) = *&v29[16];
  *(v4 + 332) = v8;
  *(v4 + 320) = 0;
  v24 = *(a1 + 1064);
  if (v24)
  {
    ++*(v24 + 1712);
  }

  result = 0;
  if (*(sysctls + 336) && v20)
  {
    v25 = *(v7 + 224);
    if (!v25 || (*(v25 + 776) & 2) == 0)
    {
      v26 = __nwlog_tcp_log();
      result = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        goto LABEL_4;
      }

      v31 = "tcp_rst_rlc_compress";
      v27 = (v25 + 556);
      v32 = 2082;
      *buf = 136447234;
      if (!v25)
      {
        v27 = &unk_188A285CF;
      }

      v33 = v27;
      v34 = 1024;
      v35 = v20;
      v36 = 1024;
      v37 = __rev16(v22);
      v38 = 1024;
      v39 = __rev16(v23);
      _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s RST RLC compression: compressed %u RST segments [%hu:%hu]", buf, 0x28u);
    }

    goto LABEL_3;
  }

LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void tcp_tfo_gen_cookie(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 2380);
  *(&dataIn + 4) = 0;
  HIDWORD(dataIn) = 0;
  *a2 = 0;
  a2[1] = 0;
  if ((v3 & 2) != 0)
  {
    dataIn = *(a1 + 464);
  }

  else
  {
    LODWORD(dataIn) = *(a1 + 476);
  }

  v4 = nw_tcp_access_globals(*(a1 + 224));
  dataOutMoved = 0;
  if (CCCryptorUpdate(*(v4 + 80), &dataIn, 0x10uLL, a2, 0x10uLL, &dataOutMoved))
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v14 = "aes_encrypt_cbc";
      v6 = "%{public}s CCCryptorUpdate";
      v7 = v5;
      v8 = 12;
LABEL_10:
      _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    }
  }

  else if (dataOutMoved != 16)
  {
    v9 = __nwlog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "aes_encrypt_cbc";
      v15 = 2048;
      v16 = dataOutMoved;
      v6 = "%{public}s out_moved is %lu";
      v7 = v9;
      v8 = 22;
      goto LABEL_10;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t ____nw_signpost_is_enabled_block_invoke_98()
{
  v0 = *MEMORY[0x1E6977F48];
  result = networkd_settings_get_BOOL();
  *MEMORY[0x1E6977EE8] = result;
  return result;
}

void tcp_drop(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 80) + 224);
  if (*(a1 + 12) < 3)
  {
    v8 = *(a1 + 1064);
    if (!v8)
    {
      goto LABEL_13;
    }

    v7 = (v8 + 456);
    goto LABEL_12;
  }

  *(a1 + 12) = 0;
  if (!v4 || (*(v4 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v11 = __nwlog_tcp_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = tcpstates[*(a1 + 12)];
        v15 = "tcp_drop";
        v13 = &unk_188A285CF;
        v14 = 136446722;
        if (v4)
        {
          v13 = (v4 + 556);
        }

        v16 = 2082;
        v17 = v13;
        v18 = 2082;
        v19 = v12;
        _os_log_impl(&dword_1889BA000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{public}s", &v14, 0x20u);
      }
    }
  }

  if (*(v4 + 24))
  {
    all_stats = nw_protocol_tcp_get_all_stats();
    if (all_stats)
    {
      *(all_stats + 136) = 0;
    }
  }

  tcp_output(a1);
  v6 = *(a1 + 1064);
  if (v6)
  {
    v7 = (v6 + 424);
LABEL_12:
    ++*v7;
  }

LABEL_13:
  if (a2 == 60)
  {
    v9 = *(a1 + 264);
    if (!v9)
    {
      LOWORD(v9) = 60;
    }

    *(v4 + 378) = v9;
    goto LABEL_18;
  }

  *(v4 + 378) = a2;
  if (a2)
  {
LABEL_18:
    user_north_signal_error(v4);
  }

  tcp_close(a1);
  v10 = *MEMORY[0x1E69E9840];
}

void socket_post_kev_msg_closed()
{
  v5 = *MEMORY[0x1E69E9840];
  __nwlog_obj();
  *buf = 136446210;
  v4 = "socket_post_kev_msg_closed";
  v0 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v1 = __nwlog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v4 = "socket_post_kev_msg_closed";
      _os_log_impl(&dword_1889BA000, v1, OS_LOG_TYPE_ERROR, "%{public}s currently not supported, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v0)
  {
    free(v0);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void *tcp_seg_sent_tree_head_RB_REMOVE(unint64_t *a1, void *a2)
{
  v2 = a2[5];
  if (!a2[4])
  {
    v5 = a2[6] & 0xFFFFFFFFFFFFFFFELL;
    v17 = a2[6] & 1;
    if (!v2)
    {
      if (!v5)
      {
LABEL_37:
        v18 = a1;
        goto LABEL_38;
      }

LABEL_29:
      v18 = (v5 + 32);
      if (*(v5 + 32) != a2)
      {
        v18 = (v5 + 40);
      }

LABEL_38:
      *v18 = v2;
      if (!v17)
      {
        goto LABEL_41;
      }

      return a2;
    }

LABEL_33:
    if (*(v2 + 48))
    {
      v19 = v5 + 1;
    }

    else
    {
      v19 = v5;
    }

    *(v2 + 48) = v19;
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  if (!v2)
  {
    v5 = a2[6] & 0xFFFFFFFFFFFFFFFELL;
    v17 = a2[6] & 1;
    v2 = a2[4];
    goto LABEL_33;
  }

  do
  {
    v3 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  v2 = *(v3 + 40);
  v4 = *(v3 + 48);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if (v2)
  {
    if (*(v2 + 48))
    {
      v6 = v4 | 1;
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v2 + 48) = v6;
  }

  v7 = a1;
  if (v5)
  {
    v7 = (v5 + 32);
    if (*(v5 + 32) != v3)
    {
      v7 = (v5 + 40);
    }
  }

  v8 = v4 & 1;
  *v7 = v2;
  if ((*(v3 + 48) & 0xFFFFFFFFFFFFFFFELL) == a2)
  {
    v5 = v3;
  }

  v9 = a2[6];
  *(v3 + 32) = *(a2 + 2);
  *(v3 + 48) = v9;
  v10 = a1;
  v11 = a2[6] & 0xFFFFFFFFFFFFFFFELL;
  if (v11)
  {
    v13 = *(v11 + 32);
    v12 = (v11 + 32);
    if (v13 == a2)
    {
      v10 = v12;
    }

    else
    {
      v10 = v12 + 1;
    }
  }

  *v10 = v3;
  v15 = a2[4];
  v14 = a2[5];
  if (*(v15 + 48))
  {
    v16 = v3 | 1;
  }

  else
  {
    v16 = v3;
  }

  *(v15 + 48) = v16;
  if (v14)
  {
    if (*(v14 + 48))
    {
      v3 |= 1uLL;
    }

    *(v14 + 48) = v3;
  }

  if (v8)
  {
    return a2;
  }

LABEL_41:
  while (1)
  {
    v20 = v2;
    v2 = v5;
    if (v20)
    {
      v21 = v20[6];
      if (v21)
      {
        break;
      }
    }

    v22 = *a1;
    if (v20 == *a1)
    {
      goto LABEL_127;
    }

    v23 = *(v2 + 32);
    if (v23 == v20)
    {
      v23 = *(v2 + 40);
      v30 = *(v23 + 48);
      if (v30)
      {
        *(v23 + 48) = v30 & 0xFFFFFFFFFFFFFFFELL;
        v31 = *(v2 + 48) | 1;
        v32 = *(v23 + 32);
        *(v2 + 40) = v32;
        *(v2 + 48) = v31;
        if (v32)
        {
          if (v32[6])
          {
            v33 = v2 | 1;
          }

          else
          {
            v33 = v2;
          }

          v32[6] = v33;
          v31 = *(v2 + 48);
        }

        *(v23 + 48) = v31 & 0xFFFFFFFFFFFFFFFELL | *(v23 + 48) & 1;
        if ((v31 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v34 = *(v2 + 48);
          v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
          if (v2 == *((v34 & 0xFFFFFFFFFFFFFFFELL) + 32))
          {
            *(v35 + 32) = v23;
          }

          else
          {
            *(v35 + 40) = v23;
            v32 = *(v2 + 40);
          }
        }

        else
        {
          *a1 = v23;
          v34 = *(v2 + 48);
          v22 = v23;
        }

        *(v23 + 32) = v2;
        if (v34)
        {
          v23 |= 1uLL;
        }

        *(v2 + 48) = v23;
        v23 = v32;
      }

      v40 = *(v23 + 32);
      if (v40)
      {
        v41 = *(v40 + 48);
        if (v41)
        {
          v42 = *(v23 + 40);
          if (!v42 || (*(v42 + 48) & 1) == 0)
          {
            *(v40 + 48) = v41 & 0xFFFFFFFFFFFFFFFELL;
            v48 = *(v23 + 48) | 1;
            *(v23 + 48) = v48;
            v49 = *(v40 + 40);
            *(v23 + 32) = v49;
            if (v49)
            {
              if (*(v49 + 48))
              {
                v50 = v23 | 1;
              }

              else
              {
                v50 = v23;
              }

              *(v49 + 48) = v50;
              v48 = *(v23 + 48);
            }

            *(v40 + 48) = v48 & 0xFFFFFFFFFFFFFFFELL | *(v40 + 48) & 1;
            if ((v48 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v51 = *(v23 + 48);
              v52 = v51 & 0xFFFFFFFFFFFFFFFELL;
              if (v23 == *((v51 & 0xFFFFFFFFFFFFFFFELL) + 32))
              {
                *(v52 + 32) = v40;
              }

              else
              {
                *(v52 + 40) = v40;
              }
            }

            else
            {
              *a1 = v40;
              v51 = *(v23 + 48);
              v22 = v40;
            }

            *(v40 + 40) = v23;
            if (v51)
            {
              v40 |= 1uLL;
            }

            *(v23 + 48) = v40;
            v23 = *(v2 + 40);
            v42 = *(v23 + 40);
          }

LABEL_136:
          *(v23 + 48) = *(v23 + 48) & 0xFFFFFFFFFFFFFFFELL | *(v2 + 48) & 1;
          *(v2 + 48) &= ~1uLL;
          if (v42)
          {
            *(v42 + 48) &= ~1uLL;
          }

          v53 = (v23 + 32);
          v54 = *(v23 + 32);
          *(v2 + 40) = v54;
          if (v54)
          {
            goto LABEL_115;
          }

          goto LABEL_119;
        }
      }

      v42 = *(v23 + 40);
      if (v42 && (*(v42 + 48) & 1) != 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v24 = *(v23 + 48);
      if (v24)
      {
        *(v23 + 48) = v24 & 0xFFFFFFFFFFFFFFFELL;
        v25 = *(v2 + 48) | 1;
        *(v2 + 48) = v25;
        v26 = *(v23 + 40);
        *(v2 + 32) = v26;
        if (v26)
        {
          if (v26[6])
          {
            v27 = v2 | 1;
          }

          else
          {
            v27 = v2;
          }

          v26[6] = v27;
          v25 = *(v2 + 48);
        }

        *(v23 + 48) = v25 & 0xFFFFFFFFFFFFFFFELL | *(v23 + 48) & 1;
        if ((v25 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v28 = *(v2 + 48);
          v29 = v28 & 0xFFFFFFFFFFFFFFFELL;
          if (v2 == *((v28 & 0xFFFFFFFFFFFFFFFELL) + 32))
          {
            *(v29 + 32) = v23;
            v26 = *(v2 + 32);
          }

          else
          {
            *(v29 + 40) = v23;
          }
        }

        else
        {
          *a1 = v23;
          v28 = *(v2 + 48);
          v22 = v23;
        }

        *(v23 + 40) = v2;
        if (v28)
        {
          v23 |= 1uLL;
        }

        *(v2 + 48) = v23;
        v23 = v26;
      }

      v36 = *(v23 + 32);
      if (v36)
      {
        v37 = *(v36 + 48);
        if (v37)
        {
          goto LABEL_85;
        }
      }

      v38 = *(v23 + 40);
      if (v38)
      {
        v39 = *(v38 + 48);
        if (v39)
        {
          if (!v36)
          {
            goto LABEL_88;
          }

          v37 = *(v36 + 48);
LABEL_85:
          if ((v37 & 1) == 0)
          {
            v38 = *(v23 + 40);
            if (v38)
            {
              v39 = *(v38 + 48);
LABEL_88:
              *(v38 + 48) = v39 & 0xFFFFFFFFFFFFFFFELL;
            }

            v43 = *(v23 + 48) | 1;
            v44 = *(v38 + 32);
            *(v23 + 40) = v44;
            *(v23 + 48) = v43;
            if (v44)
            {
              if (*(v44 + 48))
              {
                v45 = v23 | 1;
              }

              else
              {
                v45 = v23;
              }

              *(v44 + 48) = v45;
              v43 = *(v23 + 48);
            }

            *(v38 + 48) = v43 & 0xFFFFFFFFFFFFFFFELL | *(v38 + 48) & 1;
            if ((v43 & 0xFFFFFFFFFFFFFFFELL) != 0)
            {
              v46 = *(v23 + 48);
              v47 = v46 & 0xFFFFFFFFFFFFFFFELL;
              if (v23 == *((v46 & 0xFFFFFFFFFFFFFFFELL) + 32))
              {
                *(v47 + 32) = v38;
              }

              else
              {
                *(v47 + 40) = v38;
              }
            }

            else
            {
              *a1 = v38;
              v46 = *(v23 + 48);
              v22 = v38;
            }

            *(v38 + 32) = v23;
            if (v46)
            {
              v38 |= 1uLL;
            }

            *(v23 + 48) = v38;
            v23 = *(v2 + 32);
            v36 = *(v23 + 32);
          }

          *(v23 + 48) = *(v23 + 48) & 0xFFFFFFFFFFFFFFFELL | *(v2 + 48) & 1;
          *(v2 + 48) &= ~1uLL;
          if (v36)
          {
            *(v36 + 48) &= ~1uLL;
          }

          v53 = (v23 + 40);
          v54 = *(v23 + 40);
          *(v2 + 32) = v54;
          if (v54)
          {
LABEL_115:
            if (*(v54 + 48))
            {
              v55 = v2 | 1;
            }

            else
            {
              v55 = v2;
            }

            *(v54 + 48) = v55;
          }

LABEL_119:
          v56 = *(v2 + 48);
          *(v23 + 48) = v56 & 0xFFFFFFFFFFFFFFFELL | *(v23 + 48) & 1;
          if ((v56 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v57 = *(v2 + 48);
            v58 = v57 & 0xFFFFFFFFFFFFFFFELL;
            if (v2 == *((v57 & 0xFFFFFFFFFFFFFFFELL) + 32))
            {
              *(v58 + 32) = v23;
            }

            else
            {
              *(v58 + 40) = v23;
            }
          }

          else
          {
            *a1 = v23;
            v57 = *(v2 + 48);
            v22 = v23;
          }

          *v53 = v2;
          if (v57)
          {
            v23 |= 1uLL;
          }

          *(v2 + 48) = v23;
          v20 = v22;
LABEL_127:
          if (!v20)
          {
            return a2;
          }

          v21 = v20[6];
          break;
        }
      }
    }

    *(v23 + 48) |= 1uLL;
    v5 = *(v2 + 48) & 0xFFFFFFFFFFFFFFFELL;
  }

  v20[6] = v21 & 0xFFFFFFFFFFFFFFFELL;
  return a2;
}

uint64_t ____nw_frame_array_finalize_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a2 + 80);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 88);
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v2(a2, v3, v4);
      goto LABEL_4;
    }

    __nwlog_obj();
    *buf = 136446210;
    v11 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "__nw_frame_finalize";
        v9 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_13;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "__nw_frame_finalize";
        v9 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_13:
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

void tcp_rxtseg_clean(uint64_t a1)
{
  v2 = *(a1 + 960);
  if (v2)
  {
    v3 = (a1 + 960);
    do
    {
      v6 = *v3;
      if (*v3 == v2)
      {
        v4 = (a1 + 960);
      }

      else
      {
        do
        {
          v7 = v6;
          v6 = v6[2];
        }

        while (v6 != v2);
        v4 = v7 + 2;
      }

      v5 = v2[2];
      *v4 = v6[2];
      nw_tcp_access_globals(*(*(a1 + 80) + 224));
      free(v2);
      v2 = v5;
    }

    while (v5);
  }

  *(a1 + 968) = *(a1 + 96);
}

uint64_t tcp_next_mtu(int a1, int a2)
{
  if (a1 > 65534)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v2 = 0;
      goto LABEL_28;
    }

    return 0;
  }

  if (a1 > 31999)
  {
    v3 = 0;
    v2 = 1;
  }

  else if (a1 > 17913)
  {
    v3 = 0;
    v2 = 2;
  }

  else if (a1 > 8165)
  {
    v3 = 0;
    v2 = 3;
  }

  else if (a1 > 4351)
  {
    v3 = 0;
    v2 = 4;
  }

  else if (a1 > 2001)
  {
    v3 = 0;
    v2 = 5;
  }

  else if (a1 > 1491)
  {
    v3 = 0;
    v2 = 6;
  }

  else if (a1 > 1005)
  {
    v3 = 0;
    v2 = 7;
  }

  else if (a1 > 507)
  {
    v3 = 0;
    v2 = 8;
  }

  else if (a1 > 295)
  {
    v3 = 0;
    v2 = 9;
  }

  else
  {
    v3 = a1 < 68;
    v2 = 10;
    if (a1 < 68)
    {
      v2 = 11;
    }
  }

  if (a2 < 0)
  {
    v7 = v2 - 1;
    return tcp_next_mtu_mtutab[v7];
  }

  if (v3)
  {
    return 0;
  }

LABEL_28:
  v5 = tcp_next_mtu_mtutab[v2];
  v6 = v5 < a1;
  result = v5;
  if (!v6)
  {
    v7 = v2 + 1;
    return tcp_next_mtu_mtutab[v7];
  }

  return result;
}

void tcp_handle_msgsize(uint64_t a1, unsigned int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 1624) & 0x2000001) == 1)
  {
    v2 = *(a1 + 1632);
    if (v2 && (*(v2 + 73) & 1) == 0)
    {
      if (!a2)
      {
        v3 = *(v2 + 48);
        if (v3 <= 65534)
        {
          if (v3 > 31999)
          {
            v4 = 1;
          }

          else if (v3 > 17913)
          {
            v4 = 2;
          }

          else if (v3 > 8165)
          {
            v4 = 3;
          }

          else if (v3 > 4351)
          {
            v4 = 4;
          }

          else if (v3 > 2001)
          {
            v4 = 5;
          }

          else if (v3 > 1491)
          {
            v4 = 6;
          }

          else if (v3 > 1005)
          {
            v4 = 7;
          }

          else if (v3 > 507)
          {
            v4 = 8;
          }

          else if (v3 > 295)
          {
            v4 = 9;
          }

          else
          {
            if (v3 < 68)
            {
LABEL_39:
              *(v2 + 73) = 1;
              goto LABEL_13;
            }

            v4 = 10;
          }
        }

        else
        {
          v4 = 0;
        }

        a2 = tcp_next_mtu_mtutab[v4];
        if (a2 >= v3)
        {
          a2 = tcp_next_mtu_mtutab[v4 + 1];
        }
      }

      v8 = *(sysctls + 160) + 40;
      if (v8 <= 0x128)
      {
        v8 = 296;
      }

      if (a2 < v8)
      {
        goto LABEL_39;
      }

      if (*(v2 + 48) > a2)
      {
        *(v2 + 48) = a2;
        v9 = a2;
        if (__nwlog_is_datapath_logging_enabled())
        {
          v10 = __nwlog_obj();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446466;
            v12 = "tcp_handle_msgsize";
            v13 = 1024;
            LODWORD(v14) = v9;
            _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_DEBUG, "%{public}s MTU reduced to %d\n", buf, 0x12u);
          }
        }
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "tcp_handle_msgsize";
    v5 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v6 = __nwlog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "tcp_handle_msgsize";
        _os_log_impl(&dword_1889BA000, v6, OS_LOG_TYPE_ERROR, "%{public}s TCP route unusable, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v5)
    {
      free(v5);
    }
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
}

void tcp_drop_syn_sent(uint64_t a1, int a2)
{
  v2 = *(a1 + 240);
  if (v2)
  {
    if (*(v2 + 12) == 2)
    {
      tcp_drop(v2, a2);
    }
  }
}

void *tcp_mtudisc(void *result)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = result[28];
  if (*(v1 + 376) < 0 || (v2 = result[30]) == 0 || !*(v2 + 12))
  {
LABEL_41:
    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = *(*(v2 + 80) + 2380);
  if ((v3 & 2) != 0)
  {
    v4 = -60;
  }

  else
  {
    v4 = -40;
  }

  if ((*(*(v2 + 80) + 2380) & 2) != 0)
  {
    result = tcp_rtlookup6(result, 0);
    if (!result)
    {
      goto LABEL_38;
    }
  }

  else
  {
    result = tcp_rtlookup(result, 0);
    if (!result)
    {
      goto LABEL_38;
    }
  }

  v5 = result[204];
  if (!v5 || (v6 = *(v5 + 48)) == 0)
  {
LABEL_38:
    v13 = 148;
    if ((v3 & 2) == 0)
    {
      v13 = 144;
    }

    v14 = *(sysctls + v13);
    *(v2 + 200) = v14;
    *(v2 + 160) = v14;
    goto LABEL_41;
  }

  v7 = *(v5 + 52);
  if (v6 >= *(result[27] + 1188))
  {
    v6 = *(result[27] + 1188);
  }

  v8 = v6 + v4;
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (*(v2 + 160) <= v10)
  {
    goto LABEL_41;
  }

  *(v2 + 160) = v10;
  if ((*(v2 + 88) & 0x188) == 0x180)
  {
    v10 -= 12;
  }

  if (*(v1 + 388) < v10)
  {
    v10 = *(v1 + 388);
  }

  *(v2 + 200) = v10;
  if (v10)
  {
    goto LABEL_27;
  }

  v18 = v1;
  v16 = __nwlog_obj();
  os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  v17 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v17);
    v1 = v18;
LABEL_27:
    v11 = *(tcp_cc_algo_list[*(v2 + 272)] + 40);
    if (v11)
    {
      v11(v2);
    }

    if (*(sysctls + 284) == 1 && (~*(v2 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v1 + 369) & 0x40) != 0) && off_1ED4BF6E8)
    {
      off_1ED4BF6E8(v2);
    }

    v12 = *(v2 + 1064);
    if (v12)
    {
      ++*(v12 + 40);
    }

    *(v2 + 176) = 0;
    *(v2 + 100) = *(v2 + 92);
    result = tcp_output(v2);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void tcp_notify(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 232) == 3)
  {
    goto LABEL_14;
  }

  v2 = *(a1 + 240);
  if (v2)
  {
LABEL_4:
    v3 = *(v2 + 12);
    if (v3 == 4)
    {
      if ((a2 - 51) <= 0xE && ((1 << (a2 - 51)) & 0x6001) != 0)
      {
        if (*(a1 + 496))
        {
          *(a1 + 496) = 0;
        }

        goto LABEL_14;
      }
    }

    else if (v3 <= 3 && *(v2 + 234) >= 4u && *(v2 + 264))
    {
      tcp_drop(v2, a2);
LABEL_14:
      v4 = *MEMORY[0x1E69E9840];
      return;
    }

    *(v2 + 264) = a2;
    goto LABEL_14;
  }

  v5 = a1;
  v6 = a2;
  v7 = __nwlog_obj();
  os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  v8 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v8);
    a2 = v6;
    a1 = v5;
    v2 = 0;
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t tcp_set_max_rwinscale(uint64_t result, uint64_t a2)
{
  v2 = *(result + 270);
  if (*(sysctls + 180) > v2)
  {
    LOBYTE(v2) = *(sysctls + 180);
  }

  v3 = (sysctls + 72);
  if ((*(a2 + 497) & 2) != 0)
  {
    v3 = (a2 + 468);
  }

  v4 = *v3;
  v5 = v2;
  v6 = 0x10000 << v2;
  if (v5 <= 0xD && v6 < v4)
  {
    do
    {
      v8 = v5 + 1;
      if (v5 > 0xC)
      {
        break;
      }

      v9 = 0x20000 << v5++;
    }

    while (v9 < v4);
  }

  else
  {
    v8 = v5;
  }

  if (v8 >= 0xE)
  {
    v10 = 14;
  }

  else
  {
    v10 = v8;
  }

  *(result + 270) = v10;
  return result;
}

uint64_t tcp_seg_sent_tree_head_RB_INSERT_COLOR(uint64_t result, unint64_t a2)
{
  v2 = *(a2 + 48);
  while (1)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) == 0)
    {
      break;
    }

    v6 = v5[6];
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 32);
    if (v8 == v5)
    {
      v13 = v7[5];
      if (!v13 || (v14 = *(v13 + 48), (v14 & 1) == 0))
      {
        v15 = v5[5];
        if (v15 == a2)
        {
          v20 = *(v15 + 32);
          v5[5] = v20;
          if (v20)
          {
            v21 = v2 | 1;
            if ((*(v20 + 48) & 1) == 0)
            {
              v21 = v5;
            }

            *(v20 + 48) = v21;
            v22 = v5[6];
          }

          else
          {
            v22 = v6;
          }

          *(v15 + 48) = v22 & 0xFFFFFFFFFFFFFFFELL | *(v15 + 48) & 1;
          if ((v22 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v29 = v5[6];
            v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v29 & 0xFFFFFFFFFFFFFFFELL) + 32) == v5)
            {
              *(v30 + 32) = v15;
            }

            else
            {
              *(v30 + 40) = v15;
            }
          }

          else
          {
            *result = v15;
            v29 = v5[6];
          }

          *(v15 + 32) = v5;
          if (v29)
          {
            v15 = a2 | 1;
          }

          v5[6] = v15;
          v8 = v7[4];
          v16 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
          v12 = v5;
        }

        else
        {
          v16 = v6 & 0xFFFFFFFFFFFFFFFELL;
          v12 = a2;
          a2 = v5;
        }

        *(a2 + 48) = v16;
        v31 = v7[6] | 1;
        v7[6] = v31;
        v32 = *(v8 + 40);
        v7[4] = v32;
        if (v32)
        {
          if ((*(v32 + 48) & 1) == 0)
          {
            v6 &= ~1uLL;
          }

          *(v32 + 48) = v6;
          v31 = v7[6];
        }

        *(v8 + 48) = v31 & 0xFFFFFFFFFFFFFFFELL | *(v8 + 48) & 1;
        if ((v31 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v33 = v7[6];
          v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
          if (*((v33 & 0xFFFFFFFFFFFFFFFELL) + 32) == v7)
          {
            *(v34 + 32) = v8;
          }

          else
          {
            *(v34 + 40) = v8;
          }
        }

        else
        {
          *result = v8;
          v33 = v7[6];
        }

        *(v8 + 40) = v7;
        if (v33)
        {
          v4 = v8 | 1;
        }

        else
        {
          v4 = v8;
        }

        goto LABEL_6;
      }

      *(v13 + 48) = v14 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      if (!v8 || (v9 = *(v8 + 48), (v9 & 1) == 0))
      {
        v10 = v5[4];
        if (v10 == a2)
        {
          v17 = *(v10 + 40);
          v5[4] = v17;
          if (v17)
          {
            v18 = v2 | 1;
            if ((*(v17 + 48) & 1) == 0)
            {
              v18 = v5;
            }

            *(v17 + 48) = v18;
            v19 = v5[6];
          }

          else
          {
            v19 = v6;
          }

          *(v10 + 48) = v19 & 0xFFFFFFFFFFFFFFFELL | *(v10 + 48) & 1;
          if ((v19 & 0xFFFFFFFFFFFFFFFELL) != 0)
          {
            v23 = v5[6];
            v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
            if (*((v23 & 0xFFFFFFFFFFFFFFFELL) + 32) == v5)
            {
              *(v24 + 32) = v10;
            }

            else
            {
              *(v24 + 40) = v10;
            }
          }

          else
          {
            *result = v10;
            v23 = v5[6];
          }

          *(v10 + 40) = v5;
          if (v23)
          {
            v10 = a2 | 1;
          }

          v5[6] = v10;
          v11 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
          v12 = v5;
        }

        else
        {
          v11 = v6 & 0xFFFFFFFFFFFFFFFELL;
          v12 = a2;
          a2 = v2 & 0xFFFFFFFFFFFFFFFELL;
        }

        *(a2 + 48) = v11;
        v25 = v7[5];
        v26 = v7[6] | 1;
        v27 = *(v25 + 32);
        v7[5] = v27;
        v7[6] = v26;
        if (v27)
        {
          if ((*(v27 + 48) & 1) == 0)
          {
            v6 &= ~1uLL;
          }

          *(v27 + 48) = v6;
          v26 = v7[6];
        }

        *(v25 + 48) = v26 & 0xFFFFFFFFFFFFFFFELL | *(v25 + 48) & 1;
        if ((v26 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          v3 = v7[6];
          v28 = v3 & 0xFFFFFFFFFFFFFFFELL;
          if (*((v3 & 0xFFFFFFFFFFFFFFFELL) + 32) == v7)
          {
            *(v28 + 32) = v25;
          }

          else
          {
            *(v28 + 40) = v25;
          }
        }

        else
        {
          *result = v25;
          v3 = v7[6];
        }

        *(v25 + 32) = v7;
        if (v3)
        {
          v4 = v25 | 1;
        }

        else
        {
          v4 = v25;
        }

LABEL_6:
        v7[6] = v4;
        goto LABEL_7;
      }

      *(v8 + 48) = v9 & 0xFFFFFFFFFFFFFFFELL;
    }

    v5[6] &= ~1uLL;
    v7[6] |= 1uLL;
    v12 = v6 & 0xFFFFFFFFFFFFFFFELL;
LABEL_7:
    v2 = *(v12 + 48);
    a2 = v12;
  }

  *(*result + 48) &= ~1uLL;
  return result;
}

uint64_t tcp_seg_len(int *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  result = (v2 - *a1);
  if (v2 - v3 < 0)
  {
    __nwlog_obj();
    v6 = *a1;
    v5 = a1[1];
    *buf = 136446722;
    v13 = "tcp_seg_len";
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *a1;
        v9 = a1[1];
        *buf = 136446722;
        v13 = "tcp_seg_len";
        v14 = 1024;
        v15 = v9;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, "%{public}s segment end(%u) can't be smaller than segment start(%u), backtrace limit exceeded", buf, 0x18u);
      }
    }

    if (v7)
    {
      free(v7);
    }

    result = (a1[1] - *a1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_process_rxmt_segs_after_rto(uint64_t result, int *a2, int a3, int a4, char a5)
{
  v7 = a2;
  v8 = result;
  v9 = *a2;
  if (*a2 - a3 <= 0)
  {
    v12 = a2[1];
LABEL_23:
    *v7 = v9;
    v7[1] = v12;
    v7[2] = a4;
    if (v9 - *(v8 + 2068) < 0)
    {
      *(v8 + 2068) = v9;
    }

    v20 = *(v7 + 12) | a5;
    *(v7 + 12) = v20;
    if ((v20 & 4) != 0)
    {
      result = tcp_seg_len(v7);
      *(v8 + 2084) += result;
    }

    v21 = *(v8 + 2077);
    if ((v21 & 0x80000000) == 0)
    {
      *(v8 + 2077) = v21 | (32 * a5) & 0x80;
    }

    v22 = *(v8 + 1992);
    if (v22 == v7)
    {
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v25 = v24;
      if (v23)
      {
        *(v23 + 24) = v24;
        v25 = *(v8 + 2000);
      }

      *v24 = v23;
      *(v22 + 16) = 0;
      *(v22 + 24) = v25;
      *v25 = v22;
      *(v8 + 2000) = v22 + 16;
    }
  }

  else
  {
    v11 = (32 * a5) & 0x80;
    v12 = a2[1];
    while (1)
    {
      *v7 = v9;
      v7[1] = v12;
      v7[2] = a4;
      if (v9 - *(v8 + 2068) < 0)
      {
        *(v8 + 2068) = v9;
      }

      v13 = *(v7 + 12) | a5;
      *(v7 + 12) = v13;
      if ((v13 & 4) != 0)
      {
        result = tcp_seg_len(v7);
        *(v8 + 2084) += result;
      }

      v14 = *(v8 + 2077);
      if ((v14 & 0x80000000) == 0)
      {
        *(v8 + 2077) = v14 | v11;
      }

      v15 = *(v8 + 1992);
      if (v15 == v7)
      {
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        v18 = v17;
        if (v16)
        {
          *(v16 + 24) = v17;
          v18 = *(v8 + 2000);
        }

        *v17 = v16;
        *(v15 + 16) = 0;
        *(v15 + 24) = v18;
        *v18 = v15;
        *(v8 + 2000) = v15 + 16;
      }

      if (!*(v8 + 2008))
      {
        break;
      }

      v12 = *v7;
      v7 = *(v8 + 2008);
      while (1)
      {
        while (1)
        {
          v19 = v7[1];
          if (v12 - v19 >= 0)
          {
            break;
          }

          v7 = *(v7 + 4);
          if (!v7)
          {
            return result;
          }
        }

        if (v12 == v19)
        {
          break;
        }

        v7 = *(v7 + 5);
        if (!v7)
        {
          return result;
        }
      }

      v9 = *v7;
      if (*v7 - a3 <= 0)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

unint64_t tcp_seg_rto_insert_end(uint64_t a1, int a2, int a3, int a4, char a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 2032);
  if (v7)
  {
    v8 = *(v7 + 72);
    v9 = *(v7 + 80);
    v10 = (a1 + 2040);
    if (v8)
    {
      v10 = (v8 + 80);
    }

    *v10 = v9;
    *v9 = v8;
    --*(a1 + 2048);
  }

  else
  {
    v11 = a2;
    v12 = a4;
    v13 = a3;
    v14 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    v15 = malloc_type_malloc(**(v14 + 64), 0x6223832DuLL);
    a3 = v13;
    a4 = v12;
    a2 = v11;
    v7 = v15;
    if (!v15)
    {
      v31 = __nwlog_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = 136446210;
        v33 = "tcp_rack_free_and_disable";
        _os_log_impl(&dword_1889BA000, v31, OS_LOG_TYPE_DEBUG, "%{public}s not enough memory to allocate segment, disabling RACK", &v32, 0xCu);
      }

      tcp_segs_sent_clean(a1, 1);
      v7 = 0;
      *(a1 + 748) &= ~0x20000000u;
      goto LABEL_28;
    }
  }

  *(v7 + 12) = 0u;
  v16 = (v7 + 12);
  *(v7 + 72) = 0u;
  *(v7 + 60) = 0u;
  *(v7 + 44) = 0u;
  *(v7 + 28) = 0u;
  *v7 = a2;
  *(v7 + 4) = a3;
  *(v7 + 8) = a4;
  if (a2 - *(a1 + 2068) >= 0)
  {
    *v16 = a5;
    if ((a5 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    *(a1 + 2084) += tcp_seg_len(v7);
    v17 = *(a1 + 2077);
    if (v17 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a1 + 2068) = a2;
  *v16 = a5;
  if ((a5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v17 = *(a1 + 2077);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_9:
    *(a1 + 2077) = v17 | (32 * a5) & 0x80;
  }

LABEL_10:
  v18 = *(a1 + 2008);
  if (v18)
  {
    v19 = *(v7 + 4);
    while (1)
    {
      while (1)
      {
        v20 = v18;
        v21 = *(v18 + 4);
        v22 = v19 - v21;
        if (v19 - v21 >= 0)
        {
          break;
        }

        v18 = *(v20 + 32);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      if (v19 == v21)
      {
        break;
      }

      v18 = *(v20 + 40);
      if (!v18)
      {
LABEL_16:
        v23 = v22 >> 31;
        goto LABEL_21;
      }
    }

    v28 = __nwlog_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = *v20;
      v30 = *(v20 + 4);
      v32 = 136446978;
      v33 = "tcp_seg_rto_insert_end";
      v34 = 2048;
      v35 = v20;
      v36 = 1024;
      v37 = v29;
      v38 = 1024;
      v39 = v30;
      _os_log_impl(&dword_1889BA000, v28, OS_LOG_TYPE_ERROR, "%{public}s segment %p[%u %u) was not inserted in the RB tree", &v32, 0x22u);
    }
  }

  else
  {
    v20 = 0;
    v23 = 0;
LABEL_21:
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 48) = v20 | 1;
    if (v23)
    {
      v24 = (v20 + 32);
    }

    else
    {
      v24 = (v20 + 40);
    }

    if (!v20)
    {
      v24 = (a1 + 2008);
    }

    *v24 = v7;
    tcp_seg_sent_tree_head_RB_INSERT_COLOR(a1 + 2008, v7);
  }

  *(v7 + 16) = 0;
  v25 = *(a1 + 2000);
  *(v7 + 24) = v25;
  *v25 = v7;
  *(a1 + 2000) = v7 + 16;
LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t tcp_segs_doack(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (*(result + 1992))
  {
    v4 = result;
    v5 = (a3 << 31 >> 31) & a4;
    if (*(result + 2077) < 0 || (v6 = **(*(result + 2000) + 8), v7 = *(v6 + 4), a2 - v7 < 0))
    {
      if (*(result + 2008))
      {
        v16 = *(result + 2008);
        do
        {
          while (1)
          {
            v17 = *(v16 + 4);
            if (a2 - v17 >= 0)
            {
              break;
            }

            v16 = *(v16 + 32);
            if (!v16)
            {
              goto LABEL_25;
            }
          }

          if (a2 == v17)
          {
            v26 = *(v16 + 8);
            v24 = *(v16 + 12);
            v28 = a2;
            tcp_seg_collect_acked(result, *(result + 2008), a2);
            tcp_seg_delete_acked(v4, v26, v5);
            result = nw_tcp_access_globals(*(*(v4 + 80) + 224));
            v25 = *(result + 308);
            v11 = v25 - v26;
            if (v25 == v26)
            {
              v11 = 1;
            }

            if ((v24 & 8) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_47;
          }

          v16 = *(v16 + 40);
        }

        while (v16);
LABEL_25:
        v18 = *(result + 2008);
        do
        {
          v19 = v18;
          v18 = *(v18 + 32);
        }

        while (v18);
        while (1)
        {
          v20 = *(v19 + 40);
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *(v20 + 32);
            }

            while (v20);
          }

          else
          {
            v21 = *(v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
            if (!v21 || *(v21 + 32) != v19)
            {
              v22 = v19;
              do
              {
                v21 = *(v22 + 48) & 0xFFFFFFFFFFFFFFFELL;
                if (!v21)
                {
                  break;
                }

                v23 = v22 == *(v21 + 40);
                v22 = *(v22 + 48) & 0xFFFFFFFFFFFFFFFELL;
              }

              while (v23);
            }
          }

          if (a2 - *(v19 + 4) < 0 && a2 - *v19 >= 1)
          {
            break;
          }

          v19 = v21;
          if (!v21)
          {
            return result;
          }
        }

        v26 = *(v19 + 8);
        v27 = *(v19 + 12);
        v28 = a2;
        tcp_seg_collect_acked(result, *(result + 2008), a2);
        tcp_seg_delete_acked(v4, v26, v5);
        *v19 = v28;
        result = nw_tcp_access_globals(*(*(v4 + 80) + 224));
        v25 = *(result + 308);
        v11 = v25 - v26;
        if (v25 == v26)
        {
          v11 = 1;
        }

        if ((v27 & 8) == 0)
        {
          goto LABEL_53;
        }

LABEL_47:
        if (v5 && (((v5 - v26) & 0x80000000) != 0 || v5 - v25 > 0))
        {
          return result;
        }

        v29 = *(*(v4 + 80) + 496);
        if (v29)
        {
          v30 = *(v29 + 1632);
          if (v30)
          {
            if (v11 < *(v30 + 40))
            {
              return result;
            }
          }
        }

LABEL_53:
        v31 = *(v4 + 2056);
        if (v31 < v26 || v31 == v26 && v28 - *(v4 + 2060) >= 1)
        {
          *(v4 + 2077) |= 0x20u;
          *(v4 + 2056) = v26;
          *(v4 + 2060) = v28;
          goto LABEL_57;
        }
      }
    }

    else
    {
      v8 = *(v6 + 8);
      v9 = *(v6 + 12);
      tcp_segs_sent_clean(result, 0);
      result = nw_tcp_access_globals(*(*(v4 + 80) + 224));
      v10 = *(result + 308);
      v11 = v10 - v8;
      if (v10 == v8)
      {
        v11 = 1;
      }

      if ((v9 & 8) == 0 || (!v5 || ((v5 - v8) & 0x80000000) == 0 && v5 - v10 <= 0) && ((v12 = *(*(v4 + 80) + 496)) == 0 || (v13 = *(v12 + 1632)) == 0 || v11 >= *(v13 + 40)))
      {
        v14 = *(v4 + 2056);
        if (v14 < v8 || (v14 == v8 ? (v15 = v7 - *(v4 + 2060) < 1) : (v15 = 1), !v15))
        {
          *(v4 + 2077) |= 0x20u;
          *(v4 + 2056) = v8;
          *(v4 + 2060) = v7;
LABEL_57:
          *(v4 + 2064) = v11;
          *(v4 + 24) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t tcp_seg_collect_acked(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    while (1)
    {
      v3 = *(a2 + 32);
      if (a3 - *(a2 + 4) >= 0)
      {
        break;
      }

      a2 = *(a2 + 32);
      if (!v3)
      {
        return result;
      }
    }

    v4 = result;
    v5 = a2;
    tcp_seg_collect_acked_subtree(result, *(a2 + 32));
    result = tcp_seg_collect_acked(v4, v5[5], a3);
    v5[7] = 0;
    v7 = *(v4 + 2024);
    v5[8] = v7;
    *v7 = v5;
    *(v4 + 2024) = v5 + 7;
  }

  return result;
}

void tcp_seg_delete_acked(uint64_t a1, unsigned int a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 2016);
  if (v3)
  {
    v42 = (a1 + 2000);
    v43 = (a1 + 2024);
    while (1)
    {
      v7 = *(v3 + 56);
      v8 = *(v3 + 8);
      if (v8 > a2)
      {
        v9 = *(v3 + 4);
        v10 = *(v3 + 12);
        v11 = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
        v12 = v11 - v8;
        if (v11 == v8)
        {
          v12 = 1;
        }

        if ((v10 & 8) == 0 || (!a3 || ((a3 - v8) & 0x80000000) == 0 && a3 - v11 <= 0) && ((v13 = *(*(a1 + 80) + 496)) == 0 || (v14 = *(v13 + 1632)) == 0 || v12 >= *(v14 + 40)))
        {
          v15 = *(a1 + 2056);
          if (v15 < v8 || v15 == v8 && v9 - *(a1 + 2060) >= 1)
          {
            *(a1 + 2077) |= 0x20u;
            *(a1 + 2056) = v8;
            *(a1 + 2060) = v9;
            *(a1 + 2064) = v12;
            *(a1 + 24) = 0;
          }
        }
      }

      if (*(v3 + 4) - *(a1 + 552) < 0 && (*(v3 + 12) & 9) == 0)
      {
        ++*(a1 + 1024);
      }

      v16 = tcp_seg_len(v3);
      v17 = v16;
      v18 = *(v3 + 12);
      if ((v18 & 2) != 0)
      {
        v19 = *(a1 + 2080);
        if (v19 < v16)
        {
          __nwlog_obj();
          v20 = *(a1 + 2080);
          *buf = 136446722;
          v45 = "tcp_seg_delete_acked";
          v46 = 1024;
          v47 = v20;
          v48 = 1024;
          v49 = v17;
          v21 = _os_log_send_and_compose_impl();
          if (__nwlog_fault())
          {
            v22 = __nwlog_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = *(a1 + 2080);
              *buf = 136446722;
              v45 = "tcp_seg_delete_acked";
              v46 = 1024;
              v47 = v23;
              v48 = 1024;
              v49 = v17;
              _os_log_impl(&dword_1889BA000, v22, OS_LOG_TYPE_ERROR, "%{public}s bytes_lost (%u) can't be smaller than already lost segment length (%u), backtrace limit exceeded", buf, 0x18u);
            }
          }

          if (v21)
          {
            free(v21);
          }

          v19 = *(a1 + 2080);
          v18 = *(v3 + 12);
        }

        *(a1 + 2080) = v19 - v17;
        if ((v18 & 4) != 0)
        {
LABEL_33:
          v24 = *(a1 + 2084);
          if (v24 < v17)
          {
            __nwlog_obj();
            v25 = *(a1 + 2084);
            *buf = 136446722;
            v45 = "tcp_seg_delete_acked";
            v46 = 1024;
            v47 = v25;
            v48 = 1024;
            v49 = v17;
            v26 = _os_log_send_and_compose_impl();
            if (__nwlog_fault())
            {
              v27 = __nwlog_obj();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = *(a1 + 2084);
                *buf = 136446722;
                v45 = "tcp_seg_delete_acked";
                v46 = 1024;
                v47 = v28;
                v48 = 1024;
                v49 = v17;
                _os_log_impl(&dword_1889BA000, v27, OS_LOG_TYPE_ERROR, "%{public}s bytes_retransmitted (%u) can't be smaller than already retransmited segment length (%u), backtrace limit exceeded", buf, 0x18u);
              }
            }

            if (v26)
            {
              free(v26);
            }

            v24 = *(a1 + 2084);
            v18 = *(v3 + 12);
          }

          *(a1 + 2084) = v24 - v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_41:
          v29 = *(a1 + 2088);
          if (v29 < v17)
          {
            __nwlog_obj();
            v30 = *(a1 + 2088);
            *buf = 136446722;
            v45 = "tcp_seg_delete_acked";
            v46 = 1024;
            v47 = v30;
            v48 = 1024;
            v49 = v17;
            v31 = _os_log_send_and_compose_impl();
            if (__nwlog_fault())
            {
              v32 = __nwlog_obj();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = *(a1 + 2088);
                *buf = 136446722;
                v45 = "tcp_seg_delete_acked";
                v46 = 1024;
                v47 = v33;
                v48 = 1024;
                v49 = v17;
                _os_log_impl(&dword_1889BA000, v32, OS_LOG_TYPE_ERROR, "%{public}s bytes_sacked (%u) can't be smaller than already SACKed segment length (%u), backtrace limit exceeded", buf, 0x18u);
              }
            }

            if (v31)
            {
              free(v31);
            }

            v29 = *(a1 + 2088);
          }

          *(a1 + 2088) = v29 - v17;
          goto LABEL_49;
        }
      }

      else if ((*(v3 + 12) & 4) != 0)
      {
        goto LABEL_33;
      }

      if (v18)
      {
        goto LABEL_41;
      }

LABEL_49:
      v34 = *(v3 + 56);
      v35 = *(v3 + 64);
      v36 = (v34 + 64);
      if (!v34)
      {
        v36 = v43;
      }

      *v36 = v35;
      *v35 = v34;
      v37 = *(v3 + 16);
      v38 = *(v3 + 24);
      v39 = (v37 + 24);
      if (!v37)
      {
        v39 = v42;
      }

      *v39 = v38;
      *v38 = v37;
      tcp_seg_sent_tree_head_RB_REMOVE((a1 + 2008), v3);
      if (*(a1 + 2048) >= 0x40u)
      {
        nw_tcp_access_globals(*(*(a1 + 80) + 224));
        free(v3);
        v3 = v7;
        if (!v7)
        {
          break;
        }
      }

      else
      {
        *(v3 + 80) = 0;
        *(v3 + 48) = 0u;
        *(v3 + 64) = 0u;
        *(v3 + 16) = 0u;
        *(v3 + 32) = 0u;
        *v3 = 0u;
        v40 = *(a1 + 2040);
        *(v3 + 80) = v40;
        *v40 = v3;
        *(a1 + 2040) = v3 + 72;
        ++*(a1 + 2048);
        v3 = v7;
        if (!v7)
        {
          break;
        }
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_seg_collect_acked_subtree(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    tcp_seg_collect_acked_subtree(result, a2[4]);
    result = tcp_seg_collect_acked_subtree(v2, a2[5]);
    a2[7] = 0;
    v4 = *(v2 + 2024);
    a2[8] = v4;
    *v4 = a2;
    *(v2 + 2024) = a2 + 7;
  }

  return result;
}

unint64_t tcp_segs_dosack_matched(unint64_t result, int *a2, int a3, int a4, _DWORD *a5)
{
  v8 = a2;
  v9 = result;
  v10 = *a2;
  if (*a2 == a3)
  {
LABEL_25:
    v21 = *(v8 + 12);
    result = tcp_seg_mark_sacked(v9, v8, a5);
    if (!result)
    {
      return result;
    }

    goto LABEL_26;
  }

  while (1)
  {
    v11 = *(v8 + 12);
    if (a3 - v10 >= 1)
    {
      break;
    }

    result = tcp_seg_mark_sacked(v9, v8, a5);
    if (result)
    {
      v13 = *(v8 + 4);
      v12 = *(v8 + 8);
      result = nw_tcp_access_globals(*(*(v9 + 80) + 224));
      v14 = *(result + 308);
      v15 = v14 - v12;
      if (v14 == v12)
      {
        v15 = 1;
      }

      if ((v11 & 8) == 0 || (!a4 || ((a4 - v12) & 0x80000000) == 0 && a4 - v14 <= 0) && ((v16 = *(*(v9 + 80) + 496)) == 0 || (v17 = *(v16 + 1632)) == 0 || v15 >= *(v17 + 40)))
      {
        v18 = *(v9 + 2056);
        if (v18 < v12 || v18 == v12 && v13 - *(v9 + 2060) >= 1)
        {
          *(v9 + 2077) |= 0x20u;
          *(v9 + 2056) = v12;
          *(v9 + 2060) = v13;
          *(v9 + 2064) = v15;
          *(v9 + 24) = 0;
        }
      }
    }

    if (!*(v9 + 2008))
    {
      return result;
    }

    v19 = *v8;
    v8 = *(v9 + 2008);
    while (1)
    {
      while (1)
      {
        v20 = *(v8 + 4);
        if (v19 - v20 >= 0)
        {
          break;
        }

        v8 = *(v8 + 32);
        if (!v8)
        {
          return result;
        }
      }

      if (v19 == v20)
      {
        break;
      }

      v8 = *(v8 + 40);
      if (!v8)
      {
        return result;
      }
    }

    v10 = *v8;
    if (*v8 == a3)
    {
      goto LABEL_25;
    }
  }

  if ((*(v8 + 12) & 1) == 0)
  {
    result = tcp_seg_sent_insert_before(v9, v8, v10, a3, *(v8 + 8), *(v8 + 12));
    if (result)
    {
      *v8 = a3;
      v21 = *(v8 + 12);
      result = tcp_seg_mark_sacked(v9, v8, a5);
      if (result)
      {
LABEL_26:
        v24 = v8 + 4;
        v22 = *(v8 + 4);
        v23 = *(v24 + 4);
        result = nw_tcp_access_globals(*(*(v9 + 80) + 224));
        v25 = *(result + 308);
        v26 = v25 - v23;
        if (v25 == v23)
        {
          v26 = 1;
        }

        if ((v21 & 8) == 0 || (!a4 || ((a4 - v23) & 0x80000000) == 0 && a4 - v25 <= 0) && ((v27 = *(*(v9 + 80) + 496)) == 0 || (v28 = *(v27 + 1632)) == 0 || v26 >= *(v28 + 40)))
        {
          v29 = *(v9 + 2056);
          if (v29 < v23 || v29 == v23 && v22 - *(v9 + 2060) >= 1)
          {
            *(v9 + 2077) |= 0x20u;
            *(v9 + 2056) = v23;
            *(v9 + 2060) = v22;
            *(v9 + 2064) = v26;
            *(v9 + 24) = 0;
          }
        }
      }
    }
  }

  return result;
}

unint64_t tcp_seg_sent_insert_before(uint64_t a1, uint64_t a2, int a3, int a4, int a5, char a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 2032);
  if (v9)
  {
    v10 = *(v9 + 72);
    v11 = *(v9 + 80);
    v12 = (a1 + 2040);
    if (v10)
    {
      v12 = (v10 + 80);
    }

    *v12 = v11;
    *v11 = v10;
    --*(a1 + 2048);
  }

  else
  {
    v13 = a3;
    v14 = a5;
    v15 = a4;
    v16 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    v17 = malloc_type_malloc(**(v16 + 64), 0x6223832DuLL);
    a4 = v15;
    a5 = v14;
    a3 = v13;
    v9 = v17;
    if (!v17)
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = 136446210;
        v35 = "tcp_rack_free_and_disable";
        _os_log_impl(&dword_1889BA000, v33, OS_LOG_TYPE_DEBUG, "%{public}s not enough memory to allocate segment, disabling RACK", &v34, 0xCu);
      }

      tcp_segs_sent_clean(a1, 1);
      v9 = 0;
      *(a1 + 748) &= ~0x20000000u;
      goto LABEL_28;
    }
  }

  *(v9 + 12) = 0u;
  v18 = (v9 + 12);
  *(v9 + 72) = 0u;
  *(v9 + 60) = 0u;
  *(v9 + 44) = 0u;
  *(v9 + 28) = 0u;
  *v9 = a3;
  *(v9 + 4) = a4;
  *(v9 + 8) = a5;
  if (a3 - *(a1 + 2068) >= 0)
  {
    *v18 = a6;
    if ((a6 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    *(a1 + 2084) += tcp_seg_len(v9);
    v19 = *(a1 + 2077);
    if (v19 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *(a1 + 2068) = a3;
  *v18 = a6;
  if ((a6 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v19 = *(a1 + 2077);
  if ((v19 & 0x80000000) == 0)
  {
LABEL_9:
    *(a1 + 2077) = v19 | (32 * a6) & 0x80;
  }

LABEL_10:
  v20 = *(a1 + 2008);
  if (v20)
  {
    v21 = *(v9 + 4);
    while (1)
    {
      while (1)
      {
        v22 = v20;
        v23 = *(v20 + 4);
        v24 = v21 - v23;
        if (v21 - v23 >= 0)
        {
          break;
        }

        v20 = *(v22 + 32);
        if (!v20)
        {
          goto LABEL_16;
        }
      }

      if (v21 == v23)
      {
        break;
      }

      v20 = *(v22 + 40);
      if (!v20)
      {
LABEL_16:
        v25 = v24 >> 31;
        goto LABEL_21;
      }
    }

    v30 = __nwlog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *v22;
      v32 = *(v22 + 4);
      v34 = 136446978;
      v35 = "tcp_seg_sent_insert_before";
      v36 = 2048;
      v37 = v22;
      v38 = 1024;
      v39 = v31;
      v40 = 1024;
      v41 = v32;
      _os_log_impl(&dword_1889BA000, v30, OS_LOG_TYPE_ERROR, "%{public}s segment %p[%u %u) was not inserted in the RB tree", &v34, 0x22u);
    }
  }

  else
  {
    v22 = 0;
    v25 = 0;
LABEL_21:
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = v22 | 1;
    if (v25)
    {
      v26 = (v22 + 32);
    }

    else
    {
      v26 = (v22 + 40);
    }

    if (!v22)
    {
      v26 = (a1 + 2008);
    }

    *v26 = v9;
    tcp_seg_sent_tree_head_RB_INSERT_COLOR(a1 + 2008, v9);
  }

  v27 = *(a2 + 24);
  *(v9 + 24) = v27;
  *(v9 + 16) = a2;
  *v27 = v9;
  *(a2 + 24) = v9 + 16;
LABEL_28:
  v28 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL tcp_seg_mark_sacked(_DWORD *a1, uint64_t a2, _DWORD *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 12);
  if ((v3 & 1) == 0)
  {
    v7 = tcp_seg_len(a2);
    v8 = v7;
    v9 = *(a2 + 12);
    if (*(a2 + 4) - a1[138] < 0 && (*(a2 + 12) & 9) == 0)
    {
      ++a1[256];
    }

    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        *(a2 + 12) = v9 & 0xF9;
        v13 = a1[520];
        if (v13 < v7 || (v14 = a1[521], v14 < v7))
        {
          __nwlog_obj();
          v15 = a1[520];
          v16 = a1[521];
          *buf = 136446978;
          v26 = "tcp_seg_mark_sacked";
          v27 = 1024;
          v28 = v15;
          v29 = 1024;
          v30 = v16;
          v31 = 1024;
          LODWORD(v32) = v8;
          v17 = _os_log_send_and_compose_impl();
          if (__nwlog_fault())
          {
            v18 = __nwlog_obj();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = a1[520];
              v20 = a1[521];
              *buf = 136446978;
              v26 = "tcp_seg_mark_sacked";
              v27 = 1024;
              v28 = v19;
              v29 = 1024;
              v30 = v20;
              v31 = 1024;
              LODWORD(v32) = v8;
              _os_log_impl(&dword_1889BA000, v18, OS_LOG_TYPE_ERROR, "%{public}s bytes_lost (%u) and/or bytes_retransmitted (%u) can't be smaller than already lost/retransmitted segment length (%u), backtrace limit exceeded", buf, 0x1Eu);
            }
          }

          if (v17)
          {
            free(v17);
          }

          v13 = a1[520];
          v14 = a1[521];
        }

        a1[520] = v13 - v8;
        a1[521] = v14 - v8;
      }
    }

    else if ((v9 & 2) != 0)
    {
      *(a2 + 12) = v9 & 0xF9;
      v10 = a1[520];
      if (v10 < v7)
      {
        __nwlog_obj();
        v11 = a1[520];
        *buf = 136446722;
        v26 = "tcp_seg_mark_sacked";
        v27 = 1024;
        v28 = v11;
        v29 = 1024;
        v30 = v8;
        v12 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v21 = __nwlog_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = a1[520];
            *buf = 136446722;
            v26 = "tcp_seg_mark_sacked";
            v27 = 1024;
            v28 = v22;
            v29 = 1024;
            v30 = v8;
            _os_log_impl(&dword_1889BA000, v21, OS_LOG_TYPE_ERROR, "%{public}s bytes_lost (%u) can't be smaller than already lost segment length (%u), backtrace limit exceeded", buf, 0x18u);
          }
        }

        if (v12)
        {
          free(v12);
        }

        v10 = a1[520];
      }

      a1[520] = v10 - v8;
    }

    *a3 += v8;
    *(a2 + 12) |= 1u;
    a1[522] += v8;
  }

  result = (v3 & 1) == 0;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void tcp_segs_clear_sacked(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  for (i = *(a1 + 1992); i; i = *(i + 16))
  {
    v4 = tcp_seg_len(i);
    if (*(i + 12))
    {
      v5 = v4;
      *(i + 12) &= ~1u;
      v3 = *(a1 + 2088);
      if (v3 < v4)
      {
        __nwlog_obj();
        v6 = *(a1 + 2088);
        *buf = 136446722;
        v12 = "tcp_segs_clear_sacked";
        v13 = 1024;
        v14 = v6;
        v15 = 1024;
        v16 = v5;
        v7 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v8 = __nwlog_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = *(a1 + 2088);
            *buf = 136446722;
            v12 = "tcp_segs_clear_sacked";
            v13 = 1024;
            v14 = v9;
            v15 = 1024;
            v16 = v5;
            _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, "%{public}s bytes_sacked (%u) can't be smaller than already SACKed segment length (%u), backtrace limit exceeded", buf, 0x18u);
          }
        }

        if (v7)
        {
          free(v7);
        }

        v3 = *(a1 + 2088);
      }

      *(a1 + 2088) = v3 - v5;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void tcp_mark_seg_lost(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = tcp_seg_len(a2);
  v5 = *(a2 + 12);
  if ((v5 & 2) != 0)
  {
    if ((*(a2 + 12) & 4) != 0)
    {
      *(a2 + 12) = v5 & 0xFB;
      v6 = *(a1 + 2084);
      v7 = v6 >= v4;
      v8 = v6 - v4;
      if (v7)
      {
        *(a1 + 2084) = v8;
      }

      else
      {
        v9 = v4;
        __nwlog_obj();
        v10 = *(a1 + 2084);
        *buf = 136446722;
        v17 = "tcp_mark_seg_lost";
        v18 = 1024;
        v19 = v10;
        v20 = 1024;
        v11 = v9;
        v21 = v9;
        v12 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v13 = __nwlog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 2084);
            *buf = 136446722;
            v17 = "tcp_mark_seg_lost";
            v18 = 1024;
            v19 = v14;
            v20 = 1024;
            v21 = v11;
            _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_ERROR, "%{public}s bytes_retransmitted (%u) can't be smaller than retransmited segment length (%u), backtrace limit exceeded", buf, 0x18u);
          }
        }

        if (v12)
        {
          free(v12);
        }
      }
    }
  }

  else
  {
    *(a2 + 12) = v5 | 2;
    *(a1 + 2080) += v4;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void tcp_add_notify_ack_marker(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 80) + 224);
  v5 = malloc_type_malloc(0x10uLL, 0xAD18A0F0uLL);
  if (!v5)
  {
    v6 = __nwlog_obj();
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
LABEL_13:
      __break(1u);
      return;
    }

    free(v7);
  }

  v5[1] = a2;
  v8 = *(v4 + 384) + *(a1 + 92);
  *v5 = v8;
  v9 = (a1 + 1040);
  v10 = *(a1 + 1040);
  if (v10)
  {
    do
    {
      v12 = *v10;
      v11 = (v10 + 2);
      if (v8 - v12 > 0)
      {
        v9 = v11;
        goto LABEL_11;
      }

      v10 = *v11;
    }

    while (v10);
    v13 = __nwlog_obj();
    os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    v14 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      goto LABEL_13;
    }

    free(v14);
LABEL_11:
    v15 = *v9;
  }

  else
  {
    v15 = 0;
  }

  *(v5 + 1) = v15;
  *v9 = v5;
  ++*(a1 + 736);
  v16 = *MEMORY[0x1E69E9840];
}

void *tcp_get_notify_ack_ids(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 1040);
  if (result)
  {
    v5 = 0;
    v6 = (a1 + 1040);
    v7 = a2 + 8;
    do
    {
      if (v5 >= *(a2 + 4) || *(a1 + 92) - *result < 0)
      {
        break;
      }

      v9 = result[1];
      *(v7 + 4 * v5) = *(result + 1);
      v10 = *v6;
      if (*v6 == result)
      {
        v8 = (a1 + 1040);
      }

      else
      {
        do
        {
          v11 = v10;
          v10 = v10[1];
        }

        while (v10 != result);
        v8 = v11 + 1;
      }

      ++v5;
      *v8 = v10[1];
      free(result);
      --*(a1 + 736);
      result = v9;
    }

    while (v9);
  }

  return result;
}

uint64_t tcp_validate_cksum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 80);
  v9 = *(v8 + 2368);
  v10 = *(v8 + 2370);
  result = validate_tcp_cksum();
  if ((result & 1) == 0)
  {
    if ((*(a1 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && (v12 = result, v13 = (*MEMORY[0x1E6977EF8])(a1, *(a1 + 88)), result = v12, (v13 & 1) == 0))
    {
      *(a3 + 1064) = 0;
    }

    else
    {
      v14 = *(a3 + 1064);
      if (v14)
      {
        ++*(v14 + 320);
      }

      if (a5)
      {
        atomic_fetch_add((a5 + 1016), 1uLL);
      }
    }
  }

  return result;
}

uint64_t tcp_prague_switch_cc(uint64_t a1)
{
  result = tcp_prague_cwnd_init_or_reset(a1);
  atomic_fetch_add(dword_1EE3E18F0, 1u);
  return result;
}

uint64_t tcp_prague_cwnd_init_or_reset(uint64_t result)
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

  *(result + 496) = 0;
  *v1 = 0;
  *(*(result + 848) + 2) = 0;
  *(*(result + 848) + 40) = 0x100000;
  *(*(result + 848) + 76) = 0;
  *(*(result + 848) + 52) = 0;
  *(*(result + 848) + 56) = 0;
  *(*(result + 848) + 48) = 0;
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

  *(*(result + 848) + 48) = v7;
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

void tcp_prague_process_ecn(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 848);
  v11 = *(v10 + 12);
  if (v11 <= a4 && *(v10 + 4) <= a5)
  {
    if (v11 >= a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  __nwlog_obj();
  v12 = *(a1 + 848);
  v13 = *(v12 + 12);
  LODWORD(v12) = *(v12 + 4);
  *buf = 136447234;
  v55 = "tcp_prague_process_ecn";
  v56 = 1024;
  v57 = a4;
  v58 = 1024;
  v59 = v13;
  v60 = 1024;
  v61 = a5;
  v62 = 1024;
  v63 = v12;
  v14 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v41 = __nwlog_obj();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = *(a1 + 848);
      v43 = *(v42 + 12);
      LODWORD(v42) = *(v42 + 4);
      *buf = 136447234;
      v55 = "tcp_prague_process_ecn";
      v56 = 1024;
      v57 = a4;
      v58 = 1024;
      v59 = v43;
      v60 = 1024;
      v61 = a5;
      v62 = 1024;
      v63 = v42;
      _os_log_impl(&dword_1889BA000, v41, OS_LOG_TYPE_ERROR, "%{public}s new CE count (%u) can't be less than current CE count (%u)OR newly ACKed (%u) can't be less that current ACKed (%u), backtrace limit exceeded", buf, 0x24u);
    }
  }

  if (v14)
  {
    free(v14);
  }

  v10 = *(a1 + 848);
  if (*(v10 + 12) < a4)
  {
LABEL_6:
    *(v10 + 28) |= 1u;
    v10 = *(a1 + 848);
  }

LABEL_7:
  v15 = *(v10 + 4);
  v16 = a5 >= v15;
  v17 = a5 - v15;
  if (v17 != 0 && v16)
  {
    v18 = *(v10 + 20);
    if (v18)
    {
      v19 = *(a2 + 8) - v18 <= 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v53 = __nwlog_obj();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v55 = "prague_update_alpha";
          _os_log_impl(&dword_1889BA000, v53, OS_LOG_TYPE_DEBUG, "%{public}s one RTT hasn't elapsed, not updating alpha", buf, 0xCu);
        }
      }
    }

    else if (*(v10 + 28))
    {
      v20 = *(v10 + 8);
      v16 = a4 >= v20;
      v21 = a4 - v20;
      v19 = v21 != 0 && v16;
      v22 = v21 << 20;
      if (!v19)
      {
        v22 = 0;
      }

      v23 = *(v10 + 32) - (*(v10 + 32) >> 4) + v22 / v17;
      if (v23 >= 0x1000000)
      {
        v23 = 0x1000000;
      }

      *(v10 + 32) = v23;
      *(*(a1 + 848) + 20) = *(a1 + 100);
      *(*(a1 + 848) + 8) = a4;
      *(*(a1 + 848) + 4) = a5;
    }
  }

  if (*(*(a1 + 848) + 12) != a4)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v51 = __nwlog_obj();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        v52 = a4 - *(*(a1 + 848) + 12);
        *buf = 136446466;
        v55 = "tcp_prague_process_ecn";
        v56 = 1024;
        v57 = v52;
        _os_log_impl(&dword_1889BA000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %u packets were newly CE marked", buf, 0x12u);
      }
    }

    v24 = *(a1 + 848);
    v25 = *(v24 + 16);
    v16 = v25 >= a3;
    v26 = v25 - a3;
    if (!v16)
    {
      v26 = 0;
    }

    *(v24 + 16) = v26;
    *(*(a1 + 848) + 12) = a4;
    v27 = *(a1 + 204);
    v28 = ((((v27 >> 5) * (v27 >> 5)) << 20) | 0x138u) / 0x271uLL;
    if ((v27 >> 5) > 0x19)
    {
      v28 = 0x100000;
    }

    if (v27 >= 0x20)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0x100000;
    }

    *(*(a1 + 848) + 40) = v29;
    v30 = *(a1 + 848);
    v31 = *(v30 + 24);
    if (v31 && *(a2 + 8) - v31 <= 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v32 = __nwlog_obj();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          v55 = "tcp_prague_process_ecn";
          _os_log_impl(&dword_1889BA000, v32, OS_LOG_TYPE_DEBUG, "%{public}s one RTT hasn't elapsed, not doing CWR", buf, 0xCu);
        }
      }
    }

    else
    {
      if ((*(v30 + 28) & 2) != 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v40 = __nwlog_obj();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            v55 = "prague_cwr";
            _os_log_impl(&dword_1889BA000, v40, OS_LOG_TYPE_DEBUG, "%{public}s currently in loss recovery, no need to do CWR", buf, 0xCu);
          }
        }
      }

      else
      {
        ++*(v30 + 2);
        v33 = *(a1 + 848);
        v34 = *(a1 + 148) - (((*(v33 + 32) >> 4) * *(a1 + 148)) >> 21);
        *(a1 + 148) = v34;
        v35 = *(a1 + 200);
        if (!*(v33 + 16))
        {
          v34 = (v34 + (v35 >> 1)) / v35 * v35;
          *(a1 + 148) = v34;
        }

        v36 = 2 * v35;
        if (v34 < v36)
        {
          *(a1 + 148) = v36;
          v34 = v36;
        }

        *(a1 + 152) = v34;
        *(v33 + 28) |= 4u;
        v37 = *(a1 + 204);
        v38 = *(a1 + 148);
        if (v37)
        {
          v39 = 32000 * v38 / v37;
        }

        else
        {
          v39 = 0;
        }

        v44 = v39 << (v38 < *(a1 + 152));
        v45 = *(*(a1 + 80) + 2384);
        if (v45 >= v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = *(*(a1 + 80) + 2384);
        }

        if (v45 == -1)
        {
          v47 = v44;
        }

        else
        {
          v47 = v46;
        }

        v48 = v47 >> 12;
        *(a1 + 472) = v47;
        v49 = *(a1 + 200);
        if (v49 <= v48)
        {
          v49 = v48;
        }

        *(a1 + 480) = v49;
      }

      *(*(a1 + 848) + 24) = *(a1 + 100);
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

void tcp_prague_after_timeout(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 848))
  {
    v10 = __nwlog_obj();
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v11 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      __break(1u);
      return;
    }

    free(v11);
  }

  if (*(a1 + 12) > 3 || *(a1 + 96) - *(a1 + 92) >= 2)
  {
    if ((*(a1 + 90) & 0x20) == 0)
    {
      *(a1 + 496) = 0;
      **(a1 + 848) = 0;
      *(*(a1 + 848) + 2) = 0;
      *(*(a1 + 848) + 40) = 0x100000;
      *(*(a1 + 848) + 76) = 0;
      *(*(a1 + 848) + 52) = 0;
      *(*(a1 + 848) + 56) = 0;
      *(*(a1 + 848) + 48) = 0;
      tcp_prague_pre_fr(a1);
    }

    v2 = *(a1 + 200);
    v3 = *(a1 + 204);
    *(a1 + 148) = v2;
    if (v3)
    {
      v4 = 32000 * v2 / v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 << (v2 < *(a1 + 152));
    v6 = *(*(a1 + 80) + 2384);
    if (v6 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = *(*(a1 + 80) + 2384);
    }

    if (v6 == -1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    *(a1 + 472) = v8;
    if (v2 <= (v8 >> 12))
    {
      v2 = v8 >> 12;
    }

    *(a1 + 480) = v2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_prague_pre_fr(uint64_t a1)
{
  *(*(a1 + 848) + 52) = 0;
  if ((*(a1 + 750) & 0x10) != 0)
  {
    result = tcp_flight_size(a1);
    v3 = *(a1 + 988);
    if (v3 <= result)
    {
      v3 = result;
    }
  }

  else
  {
    result = 0;
    v3 = *(a1 + 148);
  }

  *(a1 + 992) = result;
  v4 = *(a1 + 848);
  v5 = v3;
  if (v3 < *(v4 + 48))
  {
    v3 = (v3 * 0.85);
  }

  *(v4 + 48) = v3;
  v6 = *(a1 + 200);
  v7 = ((v5 * 0.7) + (v6 >> 1)) / v6 * v6;
  v8 = 2 * v6;
  if (v7 > v8)
  {
    v8 = v7;
  }

  *(a1 + 152) = v8;
  v9 = *(*(a1 + 80) + 224);
  if (v9[97] > v8)
  {
    v10 = v9[104];
    if ((v10 & 0x400) != 0)
    {
      if (v9[105] > v8)
      {
        if (*(sysctls + 228) > v8)
        {
          v8 = *(sysctls + 228);
        }

        if (v8 >= *(sysctls + 116))
        {
          v8 = *(sysctls + 116);
        }

        v9[105] = v8;
      }

      v9[104] = v10 | 0x800;
    }
  }

  ++**(a1 + 848);
  *(*(a1 + 848) + 28) |= 2u;
  *(*(a1 + 848) + 28) &= ~4u;
  return result;
}

uint64_t tcp_prague_post_fr(uint64_t result)
{
  v1 = *(result + 152);
  *(result + 148) = v1;
  v2 = *(result + 204);
  if (v2)
  {
    v3 = 32000 * v1 / v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*(result + 80) + 2384);
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = *(*(result + 80) + 2384);
  }

  if (v4 == -1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6 >> 12;
  *(result + 472) = v6;
  v8 = *(result + 200);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  *(result + 480) = v8;
  *(*(result + 848) + 60) = 0;
  *(*(result + 848) + 64) = 0;
  *(*(result + 848) + 28) &= ~2u;
  return result;
}

uint64_t tcp_prague_ack_rcvd(uint64_t result, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(result + 80);
  v3 = *(v2 + 224);
  v4 = *(v2 + 2384);
  if (v4 == -1 || (v5 = *(result + 204), !v5) || v4 >= (32000 * *(result + 148) / v5) >> 1)
  {
    v6 = *(result + 988);
    if (v6)
    {
      v7 = *(result + 148);
      if (v6 < v7 >> 1 && (!v3 || *(v3 + 384) <= v7))
      {
        *(result + 748) |= 0x100000u;
        goto LABEL_43;
      }
    }

    v8 = *(result + 748);
    *(result + 748) = v8 & 0xFFEFFFFF;
    v9 = *(result + 848);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(result + 148);
      if (v11 >= *(result + 152))
      {
        if ((*(v9 + 28) & 4) == 0)
        {
          if (v4 == -1 || (v13 = *(result + 204), !v13) || v4 >= (32000 * v11 / v13) >> 1)
          {
            if (v6 && v6 < v11 >> 1 && (!v3 || *(v3 + 384) <= v11))
            {
              *(result + 748) = v8 | 0x100000;
            }

            else
            {
              *(result + 748) = v8 & 0xFFEFFFFF;
              *(result + 300) += v10;
              v15 = *(result + 204);
              v16 = result;
              v17 = nw_tcp_access_globals(v3);
              result = v16;
              v11 = *(v16 + 848);
              if (*(v11 + 52))
              {
                v18 = a2;
              }

              else
              {
                *(v11 + 52) = *(v17 + 308);
                v32 = *(v16 + 848);
                if (!*(v32 + 52))
                {
                  *(v32 + 52) = 1;
                  v32 = *(v16 + 848);
                }

                v33 = *(v16 + 148);
                v34 = *(v32 + 48);
                v35 = v34 >= v33;
                v36 = v34 - v33;
                if (v36 != 0 && v35)
                {
                  v37 = cbrtf((v36 / 0.4) / *(v16 + 200));
                  result = v16;
                  *(v32 + 76) = v37 * 1000.0;
                  v39 = *(v16 + 848);
                  v38 = *(v39 + 48);
                }

                else
                {
                  *(v32 + 76) = 0;
                  v38 = *(v16 + 148);
                  *(*(v16 + 848) + 48) = v38;
                  v39 = *(v16 + 848);
                }

                v18 = a2;
                *(v39 + 56) = v38;
                v11 = *(result + 848);
              }

              v40 = v15 >> 5;
              v41 = *(v11 + 56);
              if (!v41)
              {
                __nwlog_obj();
                *buf = 136446210;
                v63 = "cubic_target";
                v42 = _os_log_send_and_compose_impl();
                if (__nwlog_fault())
                {
                  v43 = __nwlog_obj();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446210;
                    v63 = "cubic_target";
                    _os_log_impl(&dword_1889BA000, v43, OS_LOG_TYPE_ERROR, "%{public}s Prague CC: Cubic origin point should be greater than 0, backtrace limit exceeded", buf, 0xCu);
                  }
                }

                if (v42)
                {
                  free(v42);
                }

                result = v16;
                v11 = *(v16 + 848);
                v41 = *(v11 + 56);
                v18 = a2;
              }

              v44 = ((*(v17 + 308) - *(v11 + 52) + v40) - *(v11 + 76)) / 1000.0;
              v45 = (((v44 * (v44 * v44)) * 0.4) * *(result + 200)) + v41;
              v46 = v45 & ~(v45 >> 31);
              v47 = *(result + 148);
              v48 = v47;
              if (v46 >= v47)
              {
                v48 = (v47 * 1.5);
                if (v46 < v48)
                {
                  v48 = v45 & ~(v45 >> 31);
                }
              }

              if (!*(v11 + 60))
              {
                *(v11 + 60) = v47;
                *(*(result + 848) + 64) = *(v18 + 8) - *(result + 92);
                v11 = *(result + 848);
              }

              *(v11 + 64) += *(v18 + 8) - *(result + 92);
              v49 = *(result + 848);
              v50 = (v49 + 64);
              v51 = *(v49 + 64);
              for (LODWORD(v11) = *(result + 148); v51 >= v11; LODWORD(v11) = *(result + 148))
              {
                *v50 = v51 - v11;
                v11 = *(result + 848);
                v52 = *(v11 + 60);
                if (v52 >= *(v11 + 48))
                {
                  v53 = 1.0;
                }

                else
                {
                  v53 = 0.52941;
                }

                *(v11 + 60) = v52 + (v53 * *(result + 200));
                v49 = *(result + 848);
                v50 = (v49 + 64);
                v51 = *(v49 + 64);
              }

              v54 = *(result + 200);
              v55 = (*(v49 + 60) + (v54 >> 1)) / v54 * v54;
              v35 = v48 >= v11;
              v56 = v48 - v11;
              if (v56 != 0 && v35)
              {
                v57 = v54 * v11 / v56;
              }

              else
              {
                v57 = 0;
              }

              v35 = v55 >= v11;
              v58 = v55 - v11;
              if (v58 != 0 && v35)
              {
                v59 = v54 * v11 / v58;
                if (v59 < v57)
                {
                  v57 = v59;
                }
              }

              if (v57)
              {
                v60 = *(result + 300);
                if (v57 <= v60)
                {
                  *(result + 300) = v60 - v57;
                  v61 = v54 + v11;
                  LODWORD(v11) = 0xFFFF << *(result + 268);
                  if (v61 < v11)
                  {
                    LODWORD(v11) = v61;
                  }
                }
              }
            }
          }

          goto LABEL_29;
        }

        v19 = *(result + 300) + v10;
        *(result + 300) = v19;
        v20 = (v11 << 20) / *(v9 + 40);
        if (v20 > v19)
        {
LABEL_29:
          v22 = *(result + 200);
          v23 = *(result + 204);
          v24 = (v11 + (v22 >> 1)) / v22 * v22;
          v25 = 2 * v22;
          if (v24 > 2 * v22)
          {
            v25 = v24;
          }

          *(result + 148) = v25;
          if (v23)
          {
            v26 = 32000 * v25 / v23;
          }

          else
          {
            v26 = 0;
          }

          v27 = v26 << (v25 < *(result + 152));
          v28 = *(*(result + 80) + 2384);
          if (v28 >= v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = *(*(result + 80) + 2384);
          }

          if (v28 == -1)
          {
            v30 = v27;
          }

          else
          {
            v30 = v29;
          }

          *(result + 472) = v30;
          if (v22 <= (v30 >> 12))
          {
            v22 = v30 >> 12;
          }

          *(result + 480) = v22;
          goto LABEL_43;
        }

        *(result + 300) = v19 - v20;
        v21 = *(result + 200);
      }

      else
      {
        if (*(sysctls + 280))
        {
          v12 = *(sysctls + 16);
        }

        else
        {
          v12 = 10;
        }

        v21 = *(result + 200) * v12;
        if (v10 < v21)
        {
          v21 = *(v9 + 16);
        }
      }

      LODWORD(v11) = v21 + v11;
      goto LABEL_29;
    }
  }

LABEL_43:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_prague_init(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(dword_1EE3E18F0, 1u);
  v1 = *(a1 + 848);
  if (v1)
  {
    goto LABEL_2;
  }

  v4 = a1;
  v5 = __nwlog_obj();
  os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  v6 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v6);
    a1 = v4;
    v1 = *(v4 + 848);
LABEL_2:
    *(v1 + 32) = 0x1000000;
    *(a1 + 496) = 0;
    **(a1 + 848) = 0;
    *(*(a1 + 848) + 2) = 0;
    *(*(a1 + 848) + 40) = 0x100000;
    *(*(a1 + 848) + 76) = 0;
    *(*(a1 + 848) + 52) = 0;
    *(*(a1 + 848) + 56) = 0;
    *(*(a1 + 848) + 48) = 0;
    v2 = *MEMORY[0x1E69E9840];
    return 0;
  }

  __break(1u);
  return result;
}

void tcp_enter_fast_recovery(uint64_t a1)
{
  v2 = *(tcp_cc_algo_list[*(a1 + 272)] + 64);
  if (v2)
  {
    v2(a1);
  }

  *(a1 + 88) |= 0x200000u;
  v3 = *(a1 + 80);
  v4 = *(v3 + 2372);
  if ((v4 & 0x40000000) != 0)
  {
    v5 = *(v3 + 224);
    if ((v4 & 0x10000000) != 0)
    {
      *(v3 + 2372) = v4 & 0xAFFFFFFF;
      v7 = (v5 + 364);
      v6 = *(v5 + 364);
    }

    else
    {
      v6 = *(v5 + 364);
      *(v3 + 2372) = v4 & 0xAFFFFFFF;
      if ((v6 & 0x20000) == 0)
      {
LABEL_9:
        v8 = *(v5 + 32);
        if (v8)
        {
          v9 = *v8;
          if (v9)
          {
            v9();
          }
        }

        goto LABEL_12;
      }

      v7 = (v5 + 364);
    }

    *v7 = v6 & 0xFFFDFFFF;
    goto LABEL_9;
  }

LABEL_12:
  v10 = *(a1 + 960);
  if (v10)
  {
    v11 = (a1 + 960);
    do
    {
      v14 = *v11;
      if (*v11 == v10)
      {
        v12 = (a1 + 960);
      }

      else
      {
        do
        {
          v15 = v14;
          v14 = v14[2];
        }

        while (v14 != v10);
        v12 = v15 + 2;
      }

      v13 = v10[2];
      *v12 = v14[2];
      nw_tcp_access_globals(*(*(a1 + 80) + 224));
      free(v10);
      v10 = v13;
    }

    while (v13);
    v16 = *(a1 + 96);
    *(a1 + 968) = v16;
  }

  else
  {
    v16 = *(a1 + 96);
  }

  *(a1 + 156) = v16 + ((*(a1 + 88) << 27) >> 31);
  *(a1 + 748) &= ~0x100000u;
  *(a1 + 28) = 0;
  *(a1 + 16) = 0;
  *(a1 + 176) = 0;
  *(a1 + 148) = *(a1 + 152);
}

uint64_t tcp_input_ip_ecn(uint64_t result, uint64_t a2, unsigned int a3, int a4, int a5)
{
  if (a5 != 3)
  {
    if (a5 == 2)
    {
      *(result + 336) |= 0x1000000u;
      v5 = (result + 432);
    }

    else
    {
      if (a5 != 1)
      {
        return result;
      }

      *(result + 336) |= 0x800000u;
      v5 = (result + 424);
    }

    goto LABEL_13;
  }

  *(result + 408) += a4;
  *(result + 440) += a3;
  ++*(result + 340);
  v6 = *(result + 1064);
  if (v6)
  {
    ++*(v6 + 856);
  }

  v7 = *(a2 + 448);
  if (v7)
  {
    v8 = (v7 + 184);
    v5 = (v7 + 568);
    if ((*(a2 + 2380) & 2) == 0)
    {
      v5 = v8;
    }

    a3 = 1;
LABEL_13:
    *v5 += a3;
  }

  return result;
}

void tcp_process_accecn(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 420))
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v25 = __nwlog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = 136446210;
        v27 = "tcp_process_accecn";
        _os_log_impl(&dword_1889BA000, v25, OS_LOG_TYPE_DEBUG, "%{public}s already processed AccECN field/options for this ACK", &v26, 0xCu);
      }
    }
  }

  else
  {
    v5 = *(a1 + 464);
    v6 = *(a2 + 32);
    if (!*(a2 + 32))
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v9 = 448;
    if (!*(a2 + 48))
    {
      v9 = 456;
    }

    *(a1 + v9) += (((*v7 << 16) | (v7[1] << 8) | v7[2]) - *(a1 + v9)) & 0xFFFFFF;
    if (v6 != 1)
    {
      v10 = v5 + ((((v7[3] << 16) | (v7[4] << 8) | v7[5]) - v5) & 0xFFFFFF);
      *(a1 + 464) = v10;
      if (v6 >= 3)
      {
        v21 = (v7[6] << 16) | (v7[7] << 8);
        v22 = v7[8];
        v23 = v8 == 0;
        v24 = 456;
        if (v23)
        {
          v24 = 448;
        }

        *(a1 + v24) += ((v21 | v22) - *(a1 + v24)) & 0xFFFFFF;
      }
    }

    else
    {
LABEL_6:
      v10 = v5;
    }

    v11 = *(a1 + 412);
    v12 = (a5 - v11) & 7;
    if (a4 >= 8)
    {
      v13 = v10 - v5;
      if (v13)
      {
        if (v13 >= (*(a1 + 200) * (a4 - ((a4 - (a5 - v11)) & 7))) >> 1)
        {
          v12 = a4 - ((a4 - (a5 - v11)) & 7);
        }
      }
    }

    *(a1 + 412) = v12 + v11;
    *(a1 + 416) = v12;
    if (*a2)
    {
      v14 = *(a2 + 8);
      if (v14)
      {
        if (v14 - *(a1 + 392) >= 0)
        {
          *(a1 + 392) = v14;
        }
      }
    }

    if (v12)
    {
      *(a1 + 336) |= 0x20u;
      *(a1 + 304) += v12;
      v15 = *(a1 + 1064);
      if (v15)
      {
        *(v15 + 880) += v12;
      }

      *(a1 + 376) = v12 + v11 - 5;
    }

    v16 = *(tcp_cc_algo_list[*(a1 + 272)] + 104);
    if (v16)
    {
      v17 = *(a1 + 304);
      v18 = *(a1 + 308);
      v19 = a1;
      v16();
      a1 = v19;
    }

    *(a1 + 420) |= 1u;
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t ____nw_frame_array_finalize_block_invoke_289(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a2 + 80);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 88);
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v2(a2, v3, v4);
      goto LABEL_4;
    }

    __nwlog_obj();
    *buf = 136446210;
    v11 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "__nw_frame_finalize";
        v9 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_13;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "__nw_frame_finalize";
        v9 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_13:
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t tcp_tfo_syn(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if ((*a2 & 0xC00) == 0 || (*(sysctls + 156) & 1) == 0)
  {
LABEL_3:
    result = 0;
    goto LABEL_4;
  }

  if ((*a2 & 0x800) != 0)
  {
    *(a1 + 996) |= 1u;
    *(a1 + 998) |= 2u;
    v9 = *(a1 + 1064);
    if (v9)
    {
      result = 0;
      ++*(v9 + 1088);
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  tcp_tfo_gen_cookie(*(a1 + 80), __s1);
  v6 = *(a2 + 24);
  v7 = *v6++;
  *(a2 + 24) = v6;
  if (memcmp(__s1, v6, (v7 - 2)))
  {
    *(a1 + 996) |= 1u;
    *(a1 + 998) |= 8u;
    v8 = *(a1 + 1064);
    if (v8)
    {
      result = 0;
      ++*(v8 + 1096);
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = atomic_fetch_add_explicit(&tcp_tfo_halfcnt, 1u, memory_order_relaxed) + 1;
  if (v10 >= *(sysctls + 152))
  {
    result = 0;
    atomic_fetch_add_explicit(&tcp_tfo_halfcnt, 0xFFFFFFFF, memory_order_relaxed);
  }

  else
  {
    *(a1 + 996) |= 2u;
    *(a1 + 998) |= 1u;
    v11 = *(a1 + 1064);
    if (v11)
    {
      ++*(v11 + 1080);
    }

    result = 1;
  }

LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

int64x2_t *tcp_input_process_accecn_syn(int64x2_t *result, int a2, int a3)
{
  if (a2 == 448)
  {
    if ((result[131].i8[0] & 1) == 0)
    {
      result[21].i32[0] |= 6u;
      return result;
    }

LABEL_9:
    result[21].i32[0] |= dword_188A184C0[a3] | 0x200000;
    result[26].i64[1] = 1;
    result[27].i64[0] = 1;
    result[28] = vdupq_n_s64(1uLL);
    v3 = 5;
    goto LABEL_10;
  }

  if (a2 == 192)
  {
    result[21].i32[0] |= 6u;
    v3 = 4;
    goto LABEL_10;
  }

  if (a2)
  {
    if ((result[131].i8[0] & 1) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v3 = 3;
LABEL_10:
  result[22].i32[0] = v3;
  return result;
}

uint64_t tcp_tfo_synack(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 1) & 4) == 0)
  {
    v3 = *(a1 + 996);
    if ((*(a1 + 751) & 1) == 0 && (*(a1 + 996) & 0x10) != 0)
    {
      *(a1 + 998) |= 0x100u;
      v4 = *(a1 + 1064);
      if (v4)
      {
        ++*(v4 + 1136);
      }

      v5 = *(a1 + 80);
      v6 = *(v5 + 224);
      if (tcp_perf_measurement == 1)
      {
        if (!v6 || (*(v6 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v7 = __nwlog_tcp_log();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              v8 = &unk_188A285CF;
              if (v6)
              {
                v8 = (v6 + 556);
              }

              *buf = 136446466;
              *&buf[4] = "tcp_heuristic_tfo_loss";
              *&buf[12] = 2082;
              *&buf[14] = v8;
              v9 = v7;
              v10 = OS_LOG_TYPE_DEBUG;
LABEL_40:
              _os_log_impl(&dword_1889BA000, v9, v10, "%{public}s %{public}s ", buf, 0x16u);
            }
          }
        }
      }

      else if (!v6 || (*(v6 + 776) & 2) == 0)
      {
        v24 = __nwlog_tcp_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = &unk_188A285CF;
          if (v6)
          {
            v25 = (v6 + 556);
          }

          *buf = 136446466;
          *&buf[4] = "tcp_heuristic_tfo_loss";
          *&buf[12] = 2082;
          *&buf[14] = v25;
          v9 = v24;
          v10 = OS_LOG_TYPE_INFO;
          goto LABEL_40;
        }
      }

      memset(buf, 0, 18);
      v26 = *(a1 + 998);
      if ((v26 & 0x40) != 0)
      {
        buf[17] = 2;
        v27 = 18;
        if ((v26 & 0x10) == 0)
        {
LABEL_46:
          result = (*(*(v5 + 2280) + 56))(*(*(a1 + 80) + 224), buf);
          goto LABEL_47;
        }
      }

      else
      {
        v27 = 16;
        if ((v26 & 0x10) == 0)
        {
          goto LABEL_46;
        }
      }

      buf[17] = v27;
      goto LABEL_46;
    }

    v17 = *(a1 + 998);
    if ((*(a1 + 996) & 4) != 0)
    {
      v17 |= 0x400u;
      *(a1 + 998) = v17;
      v18 = *(a1 + 1064);
      if (v18)
      {
        ++*(v18 + 1160);
      }
    }

    v19 = *(a1 + 80);
    memset(buf, 0, 18);
    if ((v17 & 0x40) != 0)
    {
      buf[17] = 1;
      v20 = 9;
      if ((v17 & 0x10) == 0)
      {
LABEL_33:
        result = (*(*(v19 + 2280) + 56))(*(v19 + 224), buf);
        goto LABEL_47;
      }
    }

    else
    {
      v20 = 8;
      if ((v17 & 0x10) == 0)
      {
        goto LABEL_33;
      }
    }

    buf[17] = v20;
    goto LABEL_33;
  }

  v11 = *(a2 + 24);
  v12 = *v11 - 2;
  if (v12 < 0x11)
  {
LABEL_15:
    *(a2 + 24) = v11 + 1;
    v13 = *(a1 + 80);
    memset(buf, 0, 18);
    __memcpy_chk();
    buf[16] = v12;
    (*(*(v13 + 2280) + 56))(*(v13 + 224), buf);
    v14 = *(a1 + 80);
    memset(buf, 0, 18);
    v15 = *(a1 + 998);
    if ((v15 & 0x40) != 0)
    {
      buf[17] = 1;
      v16 = 9;
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v16 = 8;
      if ((v15 & 0x10) == 0)
      {
LABEL_26:
        result = (*(*(v14 + 2280) + 56))(*(v14 + 224), buf);
        v22 = *(a1 + 998);
        *(a1 + 998) = v22 | 0x20;
        v23 = *(a1 + 1064);
        if (v23)
        {
          ++*(v23 + 1112);
          if ((*(a1 + 996) & 8) != 0)
          {
            ++*(v23 + 1152);
LABEL_30:
            *(a1 + 998) = v22 | 0x220;
          }
        }

        else if ((*(a1 + 996) & 8) != 0)
        {
          goto LABEL_30;
        }

LABEL_47:
        v28 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    buf[17] = v16;
    goto LABEL_26;
  }

  v29 = a2;
  v30 = __nwlog_obj();
  os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "tcp_tfo_synack";
  v31 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v31);
    a2 = v29;
    v11 = *(v29 + 24);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}