uint64_t nw_protocol_tcp_create()
{
  v13 = *MEMORY[0x1E69E9840];
  if (nw_protocol_tcp_identifier_onceToken != -1)
  {
    dispatch_once(&nw_protocol_tcp_identifier_onceToken, &__block_literal_global);
  }

  if (nw_protocol_tcp_callbacks_onceToken != -1)
  {
    dispatch_once(&nw_protocol_tcp_callbacks_onceToken, &__block_literal_global_10);
  }

  v0 = nw_protocol_new();
  if (v0)
  {
    if (nw_protocol_tcp_initialize_globals_onceToken != -1)
    {
      v6 = v0;
      dispatch_once(&nw_protocol_tcp_initialize_globals_onceToken, &__block_literal_global_36);
      v0 = v6;
    }

    *(v0 + 5392) = 0;
    v1 = v0;
    MEMORY[0x18CFDD2B0](v0 + 5312);
    *(v1 + 5360) = MEMORY[0x18CFDD0A0](v1 + 5312);
    *&buf = nw_protocol_tcp_get_receive_buffer_size;
    *(&buf + 1) = nw_protocol_tcp_get_send_buffer_size;
    v8 = nw_protocol_tcp_reset_keepalives;
    v9 = nw_protocol_tcp_set_no_delay;
    v10 = nw_protocol_tcp_set_no_push;
    v11 = nw_protocol_tcp_set_no_wake_from_sleep;
    v12 = nw_protocol_tcp_set_max_pacing_rate;
    nw_tcp_set_callbacks();
    result = nw_protocol_upcast();
  }

  else
  {
    __nwlog_obj();
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "__nw_protocol_tcp_create";
    v3 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136446210;
        *(&buf + 4) = "__nw_protocol_tcp_create";
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s nw_protocol_tcp_obj_alloc failed, backtrace limit exceeded", &buf, 0xCu);
      }
    }

    if (v3)
    {
      free(v3);
    }

    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL nw_protocol_tcp_add_input_handler(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_tcp_add_input_handler";
    v8 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "nw_protocol_tcp_add_input_handler";
        v10 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_21:
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);
      }
    }

LABEL_22:
    if (v8)
    {
      free(v8);
    }

    goto LABEL_4;
  }

  v2 = nw_protocol_downcast();
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_protocol_tcp_add_input_handler";
    v8 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v9 = __nwlog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v12 = "nw_protocol_tcp_add_input_handler";
        v10 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

  if (*(v2 + 5352))
  {
LABEL_4:
    v3 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v5 = v2;
  nw_protocol_set_input_handler();
  nw_protocol_set_flow_id_from_protocol();
  if (!nw_protocol_get_output_handler())
  {
    nw_protocol_set_output_handler();
  }

  if (nw_protocol_supports_external_data())
  {
    v6 = 4096;
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 5436) = *(v5 + 5436) & 0xFFFFEFFF | v6;
  v7 = *MEMORY[0x1E69E9840];

  return nw_protocol_tcp_initialize(a1);
}

uint64_t tcp_usr_attach(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = **(*(a1 + 8) + 8);
  v3 = nw_tcp_access_globals(a1);
  if (v3)
  {
    v4 = *(v3 + 72);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v58 = __nwlog_obj();
    os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
    LODWORD(v64) = 136446210;
    *(&v64 + 4) = "tcp_attach";
    v59 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort();
    if (result)
    {
      goto LABEL_107;
    }

    free(v59);
    v3 = 0;
    v4 = MEMORY[0x48];
    if (MEMORY[0x48])
    {
      goto LABEL_3;
    }
  }

  v60 = v3;
  v61 = __nwlog_obj();
  os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
  LODWORD(v64) = 136446210;
  *(&v64 + 4) = "tcp_attach";
  v62 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v62);
    v4 = *(v60 + 72);
LABEL_3:
    v5 = nw_tcp_access_globals(a1);
    if (g_tcp_nw_assert_context == 1)
    {
      v6 = *(v5 + 240);
      nw_context_assert_queue();
    }

    v7 = *a1;
    v8 = *a1 + 264;
    *(v7 + 16) = v4;
    *(v7 + 224) = a1;
    v9 = vdupq_n_s64(v7);
    v10 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
    *(v7 + 248) = vnegq_s64(vandq_s8(vsubq_s64(xmmword_188A18490, v9), v10));
    *v8 = vnegq_s64(vandq_s8(vsubq_s64(xmmword_188A184A0, v9), v10));
    v11 = *(v4 + 32);
    v12 = *v11;
    *v7 = *v11;
    if (v12)
    {
      *(v12 + 8) = v7;
    }

    *v11 = v7;
    *(v7 + 8) = v11;
    *(v7 + 2384) = -1;
    if (*(a1 + 388) && *(a1 + 468))
    {
LABEL_9:
      if (*(a1 + 460))
      {
        v13 = *(a1 + 496);
        if ((v13 & 0x200) != 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a1 + 460) = 2048;
        *(a1 + 540) = 2048;
        v13 = *(a1 + 496);
        if ((v13 & 0x200) != 0)
        {
LABEL_12:
          v14 = *(a1 + 416);
          if ((v14 & 0x200) == 0)
          {
            *(a1 + 416) = v14 | 0x400;
          }

          v15 = *(v7 + 2380);
          if (v2 == 30)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v17 = v15 | v16;
          *(v7 + 2380) = v15 | v16;
          __buf = 0;
          v18 = nw_tcp_access_globals(*(v7 + 224));
          v64 = 0uLL;
          microuptime(&v64);
          v19 = SDWORD2(v64) / 1000 + 1000 * v64;
          if (*(v18 + 308) < v19)
          {
            *v18 = v64;
            *(v18 + 308) = v19;
          }

          *(v7 + 4272) = 0;
          *(v7 + 2400) = 0;
          v20 = sysctls;
          v21 = 148;
          if ((v17 & 2) == 0)
          {
            v21 = 144;
          }

          v22 = *(sysctls + v21);
          *(v7 + 2560) = v22;
          *(v7 + 2600) = v22;
          *(v7 + 2488) = 160;
          v23 = *(v7 + 3148);
          *(v7 + 3148) = v23 | 0x20;
          if (*(v20 + 308))
          {
            *(v7 + 3148) = v23 | 0x20000020;
          }

          l4s_enabled = network_config_get_l4s_enabled();
          tcp_developer_l4s = l4s_enabled;
          *(v7 + 2936) = 0;
          *(v7 + 2944) = v7 + 2936;
          *(v7 + 3360) = 0;
          *(v7 + 4392) = 0;
          *(v7 + 4400) = v7 + 4392;
          *(v7 + 4408) = 0u;
          *(v7 + 4424) = v7 + 4416;
          *(v7 + 4432) = 0;
          *(v7 + 4440) = v7 + 4432;
          *(v7 + 3440) = 0;
          *(v7 + 2480) = v7;
          *(v8 + 2340) = xmmword_188A184B0;
          v25 = sysctls;
          *(v7 + 2636) = *(sysctls + 168);
          *(v7 + 2596) = 1000;
          if (v25[5])
          {
            v26 = (v7 + 2672);
            v27 = 1;
            *(v7 + 2672) = 1;
LABEL_68:
            v46 = *(tcp_cc_algo_list[v27] + 24);
            if (v46)
            {
              v46(v7 + 2400);
              v25 = sysctls;
            }

            if (v25[71] == 1 && (v25[10] == 1 || (*(*(v7 + 224) + 369) & 0x40) != 0) && off_1ED4BF6D8)
            {
              off_1ED4BF6D8(v7 + 2400);
              v25 = sysctls;
            }

            v47 = v25[70];
            if (v47)
            {
              v48 = v25[4];
            }

            else
            {
              v48 = 10;
            }

            v49 = *(v7 + 2600);
            *(v7 + 2548) = v49 * v48;
            *(v7 + 2552) = 1073725440;
            *(v7 + 2900) = 1073725440;
            v50 = *(v18 + 308);
            *(v7 + 2564) = v50;
            *(v7 + 2464) = v50;
            *(v7 + 2724) = v25[51];
            *(v7 + 2728) = 0;
            *(v7 + 2722) = 3;
            *(v7 + 4476) = 1;
            *(v7 + 2584) = v50;
            if (v47)
            {
              v51 = v25[4];
            }

            else
            {
              v51 = 10;
            }

            *(v7 + 2592) = v51 * v49;
            *(v7 + 2720) = 16;
            *(v7 + 4488) = 0;
            *(v7 + 4480) = 0;
            *(v7 + 3184) = 0u;
            *(v7 + 3200) = 0u;
            *(v7 + 3216) = 0;
            *(v7 + 3176) = v7 + 3184;
            *(v7 + 3196) = 6;
            *(v7 + 3204) = 6 * v49;
            *(v7 + 3148) |= 8u;
            *(v7 + 3232) = 0u;
            arc4random_buf(&__buf, 4uLL);
            v52 = __buf;
            if (__buf <= 1)
            {
              v53 = 1;
            }

            else
            {
              v53 = __buf;
            }

            *(v7 + 4288) = v53;
            v54 = *(v18 + 308);
            *(v7 + 4292) = v54;
            if (*(sysctls + 272))
            {
              *(v7 + 2688) = v52;
            }

            *(v7 + 2540) = v54;
            *(v7 + 2748) = 0x100000001;
            *(v7 + 3024) = 0;
            *(v7 + 3032) = v7 + 3024;
            *(v7 + 3040) = 0;
            *(v7 + 2712) = 0;
            *(v7 + 2381) = 64;
            *(v7 + 240) = v7 + 2400;
            *(v7 + 3480) = 680;
            *(v7 + 3488) = 0u;
            *(v7 + 2412) = 0;
            if (*(a1 + 24))
            {
              all_stats = nw_protocol_tcp_get_all_stats();
              if (all_stats)
              {
                *(all_stats + 132) = *v26;
              }

              if (*(a1 + 24))
              {
                v56 = nw_protocol_tcp_get_all_stats();
                if (v56)
                {
                  *(v56 + 136) = 0;
                }
              }
            }

            if ((*(a1 + 372) & 0x80) != 0 && !*(a1 + 16))
            {
              result = 0;
              *(a1 + 16) = 120000;
            }

            else
            {
              result = 0;
            }

            goto LABEL_95;
          }

          if (v25[70])
          {
            v27 = 2;
            goto LABEL_66;
          }

          if (*(v7 + 2412) >= 4)
          {
            if (*(v7 + 4496))
            {
LABEL_48:
              v27 = 4;
              goto LABEL_66;
            }

LABEL_65:
            v27 = 3;
LABEL_66:
            *(v7 + 2672) = v27;
            v26 = (v7 + 2672);
            if (!*(v7 + 3248))
            {
              *(v7 + 3248) = v7 + 3256;
              *(v7 + 3256) = 0u;
              *(v7 + 3272) = 0u;
              *(v7 + 3288) = 0u;
              *(v7 + 3304) = 0u;
              *(v7 + 3320) = 0u;
            }

            goto LABEL_68;
          }

          if (l4s_enabled == 2)
          {
            goto LABEL_63;
          }

          v42 = *(v7 + 448);
          if (v42)
          {
            v43 = *(v42 + 1246);
            if (v43 == 2)
            {
LABEL_63:
              LOBYTE(v44) = 0;
              goto LABEL_64;
            }

            LOBYTE(v44) = 1;
            if (l4s_enabled == 1 || v43 == 1)
            {
LABEL_64:
              v45 = *(v7 + 4496) & 0xFE | v44;
              *(v7 + 4496) = v45;
              if (v45)
              {
                goto LABEL_48;
              }

              goto LABEL_65;
            }
          }

          else if (l4s_enabled == 1)
          {
            LOBYTE(v44) = 1;
            goto LABEL_64;
          }

          v44 = v25[78];
          if (v44 != 1)
          {
            v44 = (*(v7 + 3151) >> 3) & 1;
          }

          goto LABEL_64;
        }
      }

      *(a1 + 496) = v13 | 0x400;
      goto LABEL_12;
    }

    v28 = *(sysctls + 228);
    if (v28 > 0x71C71C)
    {
      result = 55;
LABEL_95:
      v57 = *MEMORY[0x1E69E9840];
      return result;
    }

    v30 = *(sysctls + 232);
    *(a1 + 388) = v28;
    v31 = *(*(a1 + 432) + 24);
    if ((*(a1 + 416) & 4) != 0)
    {
      v32 = v28;
      if (v31)
      {
        v34 = nw_protocol_tcp_get_all_stats();
        v32 = *(a1 + 388);
        if (v34)
        {
          *(v34 + 88) = v32;
        }
      }
    }

    else
    {
      v32 = v28;
      if (v31)
      {
        v33 = nw_protocol_tcp_get_all_stats();
        v32 = *(a1 + 388);
        if (v33)
        {
          *(v33 + 100) = v32;
        }
      }
    }

    if (*(a1 + 392) > v32)
    {
      *(a1 + 392) = v32;
    }

    *(a1 + 420) = v28;
    if (v30 > 0x71C71C)
    {
      sbrelease(a1 + 384);
      result = 55;
      goto LABEL_95;
    }

    *(a1 + 468) = v30;
    v35 = *(*(a1 + 512) + 24);
    if ((*(a1 + 496) & 4) != 0)
    {
      v36 = v30;
      if (v35)
      {
        v38 = nw_protocol_tcp_get_all_stats();
        v36 = *(a1 + 468);
        if (v38)
        {
          *(v38 + 88) = v36;
        }
      }
    }

    else
    {
      v36 = v30;
      if (v35)
      {
        v37 = nw_protocol_tcp_get_all_stats();
        v36 = *(a1 + 468);
        if (v37)
        {
          *(v37 + 100) = v36;
        }
      }
    }

    v39 = *(a1 + 472);
    if (v39 <= v36)
    {
      *(a1 + 500) = v30;
      if (!v39)
      {
LABEL_54:
        *(a1 + 472) = 1;
        v40 = *(a1 + 392);
        if (v40)
        {
          goto LABEL_58;
        }

        goto LABEL_55;
      }
    }

    else
    {
      *(a1 + 472) = v36;
      *(a1 + 500) = v30;
      if (!v36)
      {
        goto LABEL_54;
      }
    }

    v40 = *(a1 + 392);
    if (v40)
    {
LABEL_58:
      v41 = *(a1 + 388);
      if (v40 > v41)
      {
        *(a1 + 392) = v41;
      }

      goto LABEL_9;
    }

LABEL_55:
    v40 = 2048;
    *(a1 + 392) = 2048;
    goto LABEL_58;
  }

LABEL_107:
  __break(1u);
  return result;
}

BOOL nw_protocol_tcp_initialize(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = nw_protocol_downcast();
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v16 = "%{public}s called with null tcp, backtrace limit exceeded";
LABEL_63:
    _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    goto LABEL_64;
  }

  v3 = v2;
  _os_feature_enabled_impl();
  nw_protocol_get_input_handler();
  local_endpoint = nw_protocol_get_local_endpoint();
  if (!local_endpoint)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v16 = "%{public}s get_local_endpoint failed, backtrace limit exceeded";
    goto LABEL_63;
  }

  v5 = local_endpoint;
  *(v3 + 5400) = nw_endpoint_copy_address_string(local_endpoint);
  *(v3 + 5428) = nw_endpoint_get_port(v5);
  remote_endpoint = nw_protocol_get_remote_endpoint();
  if (!remote_endpoint)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v16 = "%{public}s get_remote_endpoint failed, backtrace limit exceeded";
    goto LABEL_63;
  }

  v7 = remote_endpoint;
  *(v3 + 5408) = nw_endpoint_copy_address_string(remote_endpoint);
  *(v3 + 5430) = nw_endpoint_get_port(v7);
  address = nw_endpoint_get_address(v5);
  if (!address)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v16 = "%{public}s nw_endpoint_get_address failed, backtrace limit exceeded";
    goto LABEL_63;
  }

  v9 = address;
  v10 = *(v3 + 5336);
  if (v10)
  {
    nw_release(v10);
    *(v3 + 5336) = 0;
  }

  path = nw_protocol_get_path();
  *(v3 + 5336) = path;
  if (path)
  {
    nw_retain(path);
    v12 = *(v3 + 5336);
    if (nw_path_is_viable())
    {
      v13 = 0x2000;
    }

    else
    {
      v13 = 0;
    }

    *(v3 + 5436) = *(v3 + 5436) & 0xFFFFDFFF | v13;
  }

  else
  {
    v17 = __nwlog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v43 = "nw_protocol_tcp_initialize";
      _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_ERROR, "%{public}s Unable to get path from input protocol, will not be able to get stats", buf, 0xCu);
    }
  }

  nw_protocol_get_input_handler();
  if (!nw_protocol_get_parameters())
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_64;
    }

    v15 = __nwlog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v16 = "%{public}s called with null parameters, backtrace limit exceeded";
    goto LABEL_63;
  }

  v18 = nw_parameters_copy_protocol_options_legacy();
  v19 = v3 + 556;
  if (!nw_protocol_options_get_log_id_str() || !nw_protocol_options_get_log_id_str())
  {
    snprintf((v3 + 556), 0x54uLL, "tcp[%llu]", ++tcp_flow_gencnt);
    snprintf((v3 + 4988), 0x54uLL, "tcp[%llu]", tcp_flow_gencnt);
  }

  *(v3 + 640) = nw_protocol_options_get_log_id_num();
  if (v18)
  {
    nw_release(v18);
  }

  if (nw_parameters_get_logging_disabled())
  {
    v20 = 2;
  }

  else
  {
    v20 = 0;
  }

  *(v3 + 776) = *(v3 + 776) & 0xFD | v20;
  if (nw_parameters_get_sensitive_redacted())
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  *(v3 + 776) = *(v3 + 776) & 0xFB | v21;
  v22 = nw_parameters_copy_context();
  if (!v22)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_protocol_tcp_initialize";
    v14 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v43 = "nw_protocol_tcp_initialize";
        v16 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_63;
      }
    }

LABEL_64:
    if (v14)
    {
      v38 = v14;
LABEL_77:
      free(v38);
    }

LABEL_78:
    result = 0;
    goto LABEL_79;
  }

  v23 = v22;
  *(v3 + 5344) = nw_path_copy_flow_registration();
  *(v3 + 5328) = v23;
  v24 = nw_protocol_copy_tcp_definition();
  *(v3 + 5368) = nw_context_get_globals_for_protocol();
  if (nw_context_get_logging_disabled())
  {
    v25 = 0x80;
  }

  else
  {
    v25 = 0;
  }

  *(*(v3 + 5368) + 316) = v25 & 0x80 | *(*(v3 + 5368) + 316) & 0x7F;
  if (v24)
  {
    nw_release(v24);
  }

  *(v3 + 24) = a1;
  *(v3 + 40) = v3;
  sa_family = v9->sa_family;
  if (sa_family == 2)
  {
    v27 = &inetsw;
  }

  else
  {
    if (sa_family != 30)
    {
      v29 = 22;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
LABEL_47:
      **(StatusReg + 8) = v29;
      v31 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      __nwlog_obj();
      *buf = 136446722;
      v43 = "nw_protocol_tcp_initialize";
      v44 = 2082;
      v45 = v3 + 556;
      v46 = 1024;
      LODWORD(v47) = v31;
      v32 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault() || (v34 = __nwlog_obj(), !os_log_type_enabled(v34, OS_LOG_TYPE_ERROR)))
      {
LABEL_75:
        if (v32)
        {
          v38 = v32;
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      *buf = 136446722;
      v43 = "nw_protocol_tcp_initialize";
      v44 = 2082;
      v45 = v19;
      v46 = 1024;
      LODWORD(v47) = v31;
      v35 = "%{public}s %{public}s setup state failed %{darwin.errno}d, backtrace limit exceeded";
      v36 = v34;
      v37 = 28;
LABEL_74:
      _os_log_impl(&dword_1889BA000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      goto LABEL_75;
    }

    v27 = &inet6sw;
  }

  *(v3 + 304) = 0;
  *(v3 + 312) = v3 + 304;
  *(v3 + 320) = 0;
  *(v3 + 328) = v3 + 320;
  *(v3 + 400) = 0;
  *(v3 + 408) = v3 + 400;
  *(v3 + 480) = 0;
  *(v3 + 488) = v3 + 480;
  *(v3 + 360) = 1;
  *(v3 + 496) |= 0x1004u;
  *(v3 + 416) |= 0x1000u;
  *(v3 + 376) |= 0x100u;
  *(v3 + 432) = v3;
  *(v3 + 512) = v3;
  *v3 = v3 + 800;
  *(v3 + 8) = v27;
  v28 = (*(v27[5] + 8))(v3);
  if (v28)
  {
    v29 = v28;
    *(v3 + 376) |= 1u;
    --*(v3 + 360);
    sofreelastref(v3);
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    goto LABEL_47;
  }

  *(v3 + 32) = &nw_proto_north;
  v33 = *v3;
  v33[285] = &nw_proto_south;
  v33[286] = v3;
  v33[287] = v3;
  if ((nw_protocol_tcp_apply_parameters(v3) & 1) == 0)
  {
    if ((*(v3 + 776) & 2) != 0)
    {
      goto LABEL_78;
    }

    __nwlog_tcp_log();
    *buf = 136446466;
    v43 = "nw_protocol_tcp_initialize";
    v44 = 2082;
    v45 = v3 + 556;
    v32 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_75;
    }

    v40 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    v43 = "nw_protocol_tcp_initialize";
    v44 = 2082;
    v45 = v19;
    v35 = "%{public}s %{public}s apply socket parameters failed, backtrace limit exceeded";
    goto LABEL_73;
  }

  if ((*(*(*(v3 + 8) + 40) + 16))(v3, v9))
  {
    if ((*(v3 + 776) & 2) != 0)
    {
      goto LABEL_78;
    }

    __nwlog_tcp_log();
    *buf = 136446466;
    v43 = "nw_protocol_tcp_initialize";
    v44 = 2082;
    v45 = v3 + 556;
    v32 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_75;
    }

    v40 = __nwlog_tcp_log();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    *buf = 136446466;
    v43 = "nw_protocol_tcp_initialize";
    v44 = 2082;
    v45 = v19;
    v35 = "%{public}s %{public}s tcp_bind failed, backtrace limit exceeded";
LABEL_73:
    v36 = v40;
    v37 = 22;
    goto LABEL_74;
  }

  if ((*(v3 + 372) & 2) == 0 || (result = nw_protocol_tcp_initialize_inbound(v3, v7)))
  {
    result = 1;
    *(v3 + 5352) = 1;
    *(v3 + 5436) |= 0x40000u;
  }

LABEL_79:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t nw_tcp_access_globals(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v8 = "nw_tcp_access_globals";
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
    v8 = "nw_tcp_access_globals";
    v6 = "%{public}s called with null so, backtrace limit exceeded";
    goto LABEL_13;
  }

  v1 = *(a1 + 40);
  if (v1)
  {
    result = *(v1 + 5368);
    goto LABEL_4;
  }

  __nwlog_obj();
  *buf = 136446210;
  v8 = "nw_tcp_access_globals";
  v4 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v8 = "nw_tcp_access_globals";
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

uint64_t nw_protocol_tcp_get_all_stats()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = nw_protocol_downcast();
  if (!v0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v7 = "nw_protocol_tcp_get_all_stats";
    v2 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v3 = __nwlog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v7 = "nw_protocol_tcp_get_all_stats";
        _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_ERROR, "%{public}s called with null tcp, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v2)
    {
      free(v2);
    }

    goto LABEL_11;
  }

  if (!*(v0 + 5344))
  {
LABEL_11:
    v4 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v1 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEDD3E68]();
}

uint64_t tcp_cubic_init(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(dword_1ED4BF7B0, 1u);
  tcp_cubic_backoff = 1050253722;
  tcp_cubic_fast_convergence_factor = 1062836634;
  tcp_cubic_beta = 1060320051;
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
    *v1 = 0;
    *(*(a1 + 848) + 4) = 0;
    *(*(a1 + 848) + 8) = 0;
    *(*(a1 + 848) + 12) = 0;
    *(*(a1 + 848) + 16) = 0;
    *(*(a1 + 848) + 28) = 0;
    v2 = *MEMORY[0x1E69E9840];
    return 0;
  }

  __break(1u);
  return result;
}

int *nw_protocol_tcp_identifier()
{
  if (nw_protocol_tcp_identifier_onceToken != -1)
  {
    dispatch_once(&nw_protocol_tcp_identifier_onceToken, &__block_literal_global);
  }

  return &nw_protocol_tcp_identifier_identifier;
}

uint64_t __nw_protocol_tcp_identifier_block_invoke()
{
  dword_1ED4BF94C = 0;
  unk_1ED4BF944 = 0;
  unk_1ED4BF934 = 0u;
  nw_protocol_tcp_identifier_identifier = 7365492;
  qword_1ED4BF950 = 0x100000003;
  return MEMORY[0x1EEDD4758]();
}

void microuptime(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  info = 0;
  v2 = mach_timebase_info(&info);
  if (v2)
  {
    v3 = v2;
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v9 = "microuptime";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, "%{public}s mach_timebase_info returned %u", buf, 0x12u);
    }
  }

  else
  {
    v5 = mach_absolute_time() * info.numer / info.denom;
    *a1 = v5 / 0x3B9ACA00;
    *(a1 + 8) = v5 % 0x3B9ACA00 / 0x3E8;
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_unlock(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 360);
  if (a2)
  {
    *(a1 + 360) = --v3;
  }

  if (v3 < 0)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v5 = *(a1 + 360);
      *buf = 136447234;
      v14 = "tcp_unlock";
      v15 = 2082;
      v16 = a1 + 556;
      v17 = 2048;
      v18 = a1;
      v19 = 1024;
      v20 = v5;
      v21 = 2080;
      v22 = &unk_188A285CF;
      v6 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v8 = __nwlog_tcp_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = *(a1 + 360);
          *buf = 136447234;
          v14 = "tcp_unlock";
          v15 = 2082;
          v16 = a1 + 556;
          v17 = 2048;
          v18 = a1;
          v19 = 1024;
          v20 = v9;
          v21 = 2080;
          v22 = &unk_188A285CF;
          v10 = "%{public}s %{public}s tcp_unlock: so=%p usecount=%x lrh= %s, backtrace limit exceeded";
LABEL_16:
          _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0x30u);
        }
      }

LABEL_17:
      if (v6)
      {
        free(v6);
      }
    }

LABEL_19:
    result = 22;
    goto LABEL_20;
  }

  if (!*a1)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      __nwlog_tcp_log();
      v7 = *(a1 + 360);
      *buf = 136447234;
      v14 = "tcp_unlock";
      v15 = 2082;
      v16 = a1 + 556;
      v17 = 2048;
      v18 = a1;
      v19 = 1024;
      v20 = v7;
      v21 = 2080;
      v22 = &unk_188A285CF;
      v6 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v8 = __nwlog_tcp_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v11 = *(a1 + 360);
          *buf = 136447234;
          v14 = "tcp_unlock";
          v15 = 2082;
          v16 = a1 + 556;
          v17 = 2048;
          v18 = a1;
          v19 = 1024;
          v20 = v11;
          v21 = 2080;
          v22 = &unk_188A285CF;
          v10 = "%{public}s %{public}s tcp_unlock: so=%p NO PCB usecount=%x lrh= %s, backtrace limit exceeded";
          goto LABEL_16;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  result = 0;
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL so_throttle_best_effort(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 552);
  if (!v2 || v2 == 400 || v2 == 300)
  {
    v3 = *(*a1 + 240);
    v4 = nw_tcp_access_globals(a1);
    v8 = *(sysctls + 340) == 1 && ((v5 = *v4, (v6 = *(v3 + 1072)) != 0) ? (v7 = v5 >= 3) : (v7 = 0), v7) && *(v6 + 16) > v5 - 2;
    if (so_throttle_best_effort_old_result != v8 && (*(a1 + 776) & 2) == 0)
    {
      v9 = __nwlog_tcp_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = "off";
        v14 = "so_throttle_best_effort";
        v13 = 136446722;
        if (v8)
        {
          v10 = "on";
        }

        v15 = 2082;
        v16 = a1 + 556;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s throttling is now %s", &v13, 0x20u);
      }
    }

    so_throttle_best_effort_old_result = v8;
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void set_tcp_stream_priority(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(*a1 + 232) != 3)
  {
    v2 = *(*a1 + 240);
    v3 = *(v2 + 272);
    v4 = *(a1 + 368);
    v5 = nw_tcp_access_globals(a1);
    v6 = *v5;
    if (so_throttle_best_effort(a1) || ((v10 = *(a1 + 368), (v10 & 0x2000) != 0) || (v11 = *(a1 + 552), v11 == 200) || v11 == 100) && ((v12 = *(v2 + 1072)) != 0 ? (v13 = v6 >= 3) : (v13 = 0), v13 && *(v12 + 8) > *v5 - 2) || *(a1 + 552) == 100)
    {
      if (v3 != 2)
      {
        tcp_set_new_cc(a1, 2);
      }

      v7 = *(a1 + 368);
      if ((v7 & 0x4000) == 0)
      {
        *(a1 + 368) = v7 | 0x4000;
        if (*(sysctls + 284) == 1)
        {
          v8 = *(*a1 + 240);
          if ((~*(v8 + 88) & 0x180) == 0 && off_1ED4BF708 != 0)
          {
            off_1ED4BF708(v8);
          }
        }
      }
    }

    else
    {
      if ((v10 & 0x4000) != 0)
      {
        *(a1 + 368) = v10 & 0xFFFFBFFF;
      }

      if (v3 == 2)
      {
        if (*(sysctls + 20))
        {
          v14 = a1;
          v15 = 1;
        }

        else if (*(sysctls + 280))
        {
          v14 = a1;
          v15 = 2;
        }

        else
        {
          v14 = a1;
          if (*(*(*a1 + 240) + 2096))
          {
            v15 = 4;
          }

          else
          {
            v15 = 3;
          }
        }

        tcp_set_new_cc(v14, v15);
      }
    }

    v16 = v4 & 0x4000;
    if ((v3 != *(v2 + 272) || v16 != (*(a1 + 368) & 0x4000)) && (*(a1 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v18 = __nwlog_tcp_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = tcp_cc_algo_list[*(v2 + 272)];
          v20 = 136446978;
          v21 = "set_tcp_stream_priority";
          v22 = 2082;
          v23 = a1 + 556;
          v24 = 2082;
          v25 = v19;
          v26 = 1024;
          v27 = v16;
          _os_log_impl(&dword_1889BA000, v18, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s cc_algo %{public}s recvbg %d", &v20, 0x26u);
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_lock(uint64_t *a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 90);
  if (v3 < 0)
  {
    if ((a1[97] & 2) == 0)
    {
      __nwlog_tcp_log();
      v5 = *a1;
      v6 = *(a1 + 90);
      *buf = 136447490;
      v13 = "tcp_lock";
      v14 = 2082;
      v15 = a1 + 556;
      v16 = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = v5;
      v20 = 1024;
      v21 = v6;
      v22 = 2080;
      v23 = &unk_188A285CF;
      v7 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v8 = __nwlog_tcp_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = *a1;
          v10 = *(a1 + 90);
          *buf = 136447490;
          v13 = "tcp_lock";
          v14 = 2082;
          v15 = a1 + 556;
          v16 = 2048;
          v17 = a1;
          v18 = 2048;
          v19 = v9;
          v20 = 1024;
          v21 = v10;
          v22 = 2080;
          v23 = &unk_188A285CF;
          _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp_lock: so=%p so_pcb=%p ref=%x lrh= %s, backtrace limit exceeded", buf, 0x3Au);
        }
      }

      if (v7)
      {
        free(v7);
      }
    }

    result = 22;
  }

  else
  {
    result = 0;
    if (a2)
    {
      *(a1 + 90) = v3 + 1;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_tcp_get_message_properties(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (nw_protocol_downcast())
    {
      if (a3)
      {
        v4 = a3[1] & 0xFFFFFFF8 | 4;
        *a3 = -1;
        a3[1] = v4;
      }

      goto LABEL_5;
    }

    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_protocol_tcp_get_message_properties";
    v6 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_protocol_tcp_get_message_properties";
        v8 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_14;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v10 = "nw_protocol_tcp_get_message_properties";
    v6 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v10 = "nw_protocol_tcp_get_message_properties";
        v8 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_14:
        _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      }
    }
  }

  if (v6)
  {
    free(v6);
  }

LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_output(uint64_t a1)
{
  v988 = *MEMORY[0x1E69E9840];
  v2 = a1 + 560;
  v3 = *(a1 + 80);
  v4 = v3[28];
  v919 = *(v4 + 552);
  v5 = nw_tcp_access_globals(v4);
  v921 = v3[56];
  v922 = *(v3 + 2380) & 2;
  v6 = *(a1 + 88);
  if ((v6 & 0x100000) != 0)
  {
    v938 = (v5 + 308);
LABEL_5:
    v8 = *(v5 + 308) - *(a1 + 164);
    if (*(a1 + 12) <= 3)
    {
      v9 = *(sysctls + 172);
    }

    else
    {
      v9 = 0;
    }

    if (v8 >= *(a1 + 196) + v9)
    {
      v10 = v2;
      v11 = *(a1 + 272);
      v12 = *(tcp_cc_algo_list[*(a1 + 272)] + 80);
      if (v12 && (v11 != 3 && v11 != 4 || v8 > 179999))
      {
        v12(a1);
      }

      v13 = *(a1 + 960);
      if (v13)
      {
        v14 = (a1 + 960);
        do
        {
          v17 = *v14;
          if (*v14 == v13)
          {
            v15 = (a1 + 960);
          }

          else
          {
            do
            {
              v18 = v17;
              v17 = v17[2];
            }

            while (v17 != v13);
            v15 = v18 + 2;
          }

          v16 = v13[2];
          *v15 = v17[2];
          nw_tcp_access_globals(*(*(a1 + 80) + 224));
          free(v13);
          v13 = v16;
        }

        while (v16);
        *(a1 + 968) = *(a1 + 96);
      }

      *(a1 + 320) = 16;
      v6 = *(a1 + 88);
      v7 = 1;
      v2 = v10;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_24;
  }

  v938 = (v5 + 308);
  if (*(a1 + 96) == *(a1 + 92))
  {
    goto LABEL_5;
  }

  v7 = 0;
LABEL_24:
  v920 = 0;
  v916 = 0;
  v19 = 0;
  v928 = 0;
  v915 = 0;
  v911 = 0;
  v20 = 0;
  v929 = 0;
  v21 = v6 & 0xFFEFFFFF;
  v22 = *&v7 & ((v6 & 0x10000u) >> 16);
  if (v22)
  {
    v23 = 0x100000;
  }

  else
  {
    v23 = 0;
  }

  v907 = v22 ^ v7;
  *(a1 + 88) = v21 | v23;
  v945 = (a1 + 100);
  v906 = v2;
  v923 = (v2 + 388);
  if (v922)
  {
    v24 = -40;
  }

  else
  {
    v24 = -20;
  }

  v910 = v24;
  v914 = v4 + 556;
  if (v922)
  {
    v25 = 40;
  }

  else
  {
    v25 = 20;
  }

  if (v922)
  {
    v26 = 56;
  }

  else
  {
    v26 = 36;
  }

  v908 = v26;
  v909 = v25;
  if (v922)
  {
    v27 = 136;
  }

  else
  {
    v27 = 120;
  }

  v28 = (a1 + 624);
  v970 = v3;
  v912 = v27;
  v913 = (a1 + 2008);
  v944 = v4;
  while (1)
  {
    while (1)
    {
      *(a1 + 88) &= ~0x10000000u;
      if (!*(v4 + 24))
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
        v829 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1768;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v830 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v830, info.numer))
          {
            goto LABEL_1768;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v832 = "%{public}s called with null protocol";
LABEL_1766:
          v843 = v830;
          v844 = numer;
LABEL_1767:
          _os_log_impl(&dword_1889BA000, v843, v844, v832, buf, 0xCu);
          goto LABEL_1768;
        }

        if (v981 != OS_LOG_TYPE_INFO)
        {
          v830 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v830, info.numer))
          {
            goto LABEL_1768;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v832 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_1766;
        }

        backtrace_string = __nw_create_backtrace_string();
        v838 = __nwlog_obj();
        v839 = info.numer;
        v840 = os_log_type_enabled(v838, info.numer);
        if (backtrace_string)
        {
          if (v840)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v841 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_1758:
            _os_log_impl(&dword_1889BA000, v838, v839, v841, buf, 0x16u);
          }

LABEL_1759:
          free(backtrace_string);
          goto LABEL_1768;
        }

        if (v840)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v832 = "%{public}s called with null protocol, no backtrace";
LABEL_1817:
          v843 = v838;
          v844 = v839;
          goto LABEL_1767;
        }

LABEL_1768:
        if (v829)
        {
          free(v829);
        }

        v4 = v944;
LABEL_1771:
        if (*(a1 + 12) >= 5)
        {
          v761 = 49;
          tcp_drop(a1, 49);
          goto LABEL_1812;
        }

        if ((*(v4 + 776) & 2) == 0)
        {
          v845 = __nwlog_tcp_log();
          if (os_log_type_enabled(v845, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v914;
            _os_log_impl(&dword_1889BA000, v845, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s path is non-viable, dropping output", buf, 0x16u);
          }
        }

        if (!*(a1 + 28))
        {
          tcp_set_rto(a1);
          if (*(a1 + 36))
          {
            *(a1 + 36) = 0;
            *(a1 + 328) = 0;
            *(a1 + 234) = 0;
            *(a1 + 256) = 0;
          }
        }

        v846 = *v28;
        if (!*v28)
        {
LABEL_1802:
          *(a1 + 624) = 0;
          *(a1 + 632) = v28;
          *(a1 + 640) = 0;
          *(a1 + 312) = 0;
          goto LABEL_1708;
        }

        while (1)
        {
          v847 = v846[10];
          v848 = v846[4];
          v849 = v846[5];
          v850 = (v848 + 40);
          if (!v848)
          {
            v850 = (a1 + 632);
          }

          *v850 = v849;
          *v849 = v848;
          v846[4] = 0;
          v846[5] = 0;
          if (!v847)
          {
            break;
          }

          v851 = v846[11];
          v846[10] = 0;
          v846[11] = 0;
          v847(v846, 0, v851);
LABEL_1784:
          v846 = *v28;
          if (!*v28)
          {
            goto LABEL_1802;
          }
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v852 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        v977 = v852;
        if (__nwlog_fault())
        {
          if (LOBYTE(info.numer) == 17)
          {
            v971 = __nwlog_obj();
            logb = info.numer;
            if (!os_log_type_enabled(v971, info.numer))
            {
              goto LABEL_1800;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v853 = v971;
            v854 = logb;
            v855 = "%{public}s called with null frame->finalizer";
            goto LABEL_1799;
          }

          if (v981 != OS_LOG_TYPE_INFO)
          {
            v972 = __nwlog_obj();
            logd = info.numer;
            if (!os_log_type_enabled(v972, info.numer))
            {
              goto LABEL_1800;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v853 = v972;
            v854 = logd;
            v855 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
            goto LABEL_1799;
          }

          v905 = v28;
          v856 = __nw_create_backtrace_string();
          logc = __nwlog_obj();
          v964 = info.numer;
          v857 = os_log_type_enabled(logc, info.numer);
          if (v856)
          {
            if (v857)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v856;
              _os_log_impl(&dword_1889BA000, logc, v964, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v856);
            v28 = v905;
            goto LABEL_1800;
          }

          v28 = v905;
          if (v857)
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v853 = logc;
            v854 = v964;
            v855 = "%{public}s called with null frame->finalizer, no backtrace";
LABEL_1799:
            _os_log_impl(&dword_1889BA000, v853, v854, v855, buf, 0xCu);
          }
        }

LABEL_1800:
        if (v977)
        {
          free(v977);
        }

        goto LABEL_1784;
      }

      v29 = nw_protocol_downcast();
      if (!v29)
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
        v829 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1768;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v830 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v830, info.numer))
          {
            goto LABEL_1768;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v832 = "%{public}s called with null tcp";
          goto LABEL_1766;
        }

        if (v981 != OS_LOG_TYPE_INFO)
        {
          v830 = __nwlog_obj();
          numer = info.numer;
          if (!os_log_type_enabled(v830, info.numer))
          {
            goto LABEL_1768;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v832 = "%{public}s called with null tcp, backtrace limit exceeded";
          goto LABEL_1766;
        }

        backtrace_string = __nw_create_backtrace_string();
        v838 = __nwlog_obj();
        v839 = info.numer;
        v842 = os_log_type_enabled(v838, info.numer);
        if (backtrace_string)
        {
          if (v842)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            v841 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
            goto LABEL_1758;
          }

          goto LABEL_1759;
        }

        if (v842)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_tcp_get_path_is_viable";
          v832 = "%{public}s called with null tcp, no backtrace";
          goto LABEL_1817;
        }

        goto LABEL_1768;
      }

      if (*(v29 + 5336) && (*(v29 + 5437) & 0x20) == 0)
      {
        goto LABEL_1771;
      }

      v30 = v3[62];
      if (v30)
      {
        v31 = *(v30 + 216);
        v32 = *(a1 + 88);
        *(a1 + 88) = v32 & 0xEFFFFFFF;
        if ((*(*(a1 + 80) + 2380) & 2) != 0)
        {
          if (!v31)
          {
LABEL_65:
            v19 = 0;
            v928 = 0;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_72;
          }

          if ((*(v31 + 1194) & 0x40) == 0)
          {
            goto LABEL_59;
          }

          v33 = 1208;
        }

        else
        {
          if (!v31)
          {
            goto LABEL_65;
          }

          if ((*(v31 + 1194) & 0x20) == 0)
          {
            goto LABEL_59;
          }

          v33 = 1204;
        }

        *(a1 + 88) = v32 | 0x10000000;
        v34 = *(v31 + v33);
        if (v34 >= 0xFFFF)
        {
          v35 = 0xFFFF;
        }

        else
        {
          v35 = *(v31 + v33);
        }

        if (v34)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0xFFFF;
        }

        *(a1 + 684) = v36;
LABEL_59:
        if (*(v31 + 1224) == 255 || *(v31 + 1168) == 255)
        {
          HIDWORD(v928) = 1;
LABEL_62:
          if (*(v31 + 1212) == 2)
          {
            LODWORD(v928) = 0;
            v19 = 1;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }
          }

          else
          {
            LODWORD(v928) = 0;
            v19 = *(v31 + 1172) == 2;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }
          }

          goto LABEL_72;
        }

        if (*(v31 + 1216) != 3)
        {
          v19 = 0;
          if (*(v31 + 1176) == 3)
          {
            v928 = 1;
            v37 = *(a1 + 748);
            if ((v37 & 0x20) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_72;
          }

          HIDWORD(v928) = 0;
          goto LABEL_62;
        }

        v19 = 0;
        v928 = 1;
      }

      v37 = *(a1 + 748);
      if ((v37 & 0x20) == 0)
      {
        goto LABEL_94;
      }

LABEL_72:
      v38 = *(a1 + 100);
      if (v38 - *(a1 + 96) >= 0)
      {
        goto LABEL_94;
      }

      if ((v37 & 0x20400000) != 0x20000000)
      {
        v47 = *(a1 + 536);
        if (v47)
        {
          v48 = *(a1 + 552);
          if (v38 - v48 < 0)
          {
            while (1)
            {
              v64 = v47[1];
              v47 = *(v47 + 2);
              v65 = v38 - v64;
              if (!v47)
              {
                break;
              }

              if (v65 < 0)
              {
                goto LABEL_321;
              }

              v66 = *v47;
              if (v38 - *v47 < 0)
              {
                *v945 = v66;
                v929 = v47[1] - v66;
                goto LABEL_94;
              }
            }

            if ((v65 & 0x80000000) == 0)
            {
              v929 = 0;
              *v945 = v48;
              goto LABEL_94;
            }

LABEL_321:
            v929 = v64 - v38;
            goto LABEL_94;
          }
        }

LABEL_93:
        v929 = 0;
        goto LABEL_94;
      }

      v39 = *(a1 + 148);
      v40 = v39 - tcp_flight_size(a1);
      if (v40 < 1)
      {
        goto LABEL_94;
      }

      v41 = *v913;
      if (!*v913)
      {
        goto LABEL_93;
      }

      do
      {
        v42 = v41;
        v41 = *(v41 + 32);
      }

      while (v41);
      v929 = 0;
      while (1)
      {
        v43 = *(v42 + 4);
        v44 = *v945 - v43;
        if (*(v42 + 12))
        {
          if (v44 < 0 && *v945 - *v42 >= 0)
          {
            *v945 = v43;
          }

          goto LABEL_94;
        }

        if (v44 < 0)
        {
          v929 += tcp_seg_len(v42);
          v45 = *(v42 + 40);
          if (v45)
          {
            do
            {
LABEL_83:
              v46 = v45;
              v45 = *(v45 + 32);
            }

            while (v45);
            goto LABEL_84;
          }
        }

        else
        {
          v45 = *(v42 + 40);
          if (v45)
          {
            goto LABEL_83;
          }
        }

        v46 = *(v42 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v46 || *(v46 + 32) != v42)
        {
          break;
        }

LABEL_84:
        v42 = v46;
        if (v929 >= v40)
        {
          goto LABEL_94;
        }
      }

      while (1)
      {
        v46 = *(v42 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v46)
        {
          break;
        }

        v106 = v42 == *(v46 + 40);
        v42 = *(v42 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v106)
        {
          goto LABEL_84;
        }
      }

LABEL_94:
      v942 = v19;
      if (*(a1 + 144) >= *(a1 + 148))
      {
        v49 = *(a1 + 148);
      }

      else
      {
        v49 = *(a1 + 144);
      }

      v50 = *(a1 + 88);
      v51 = v49;
      if ((v50 & 0x80000) != 0)
      {
        v52 = *(sysctls + 48);
        if (v49 >= v52)
        {
          v53 = *(sysctls + 48);
        }

        else
        {
          v53 = v49;
        }

        if (v52 <= 0)
        {
          v51 = v49;
        }

        else
        {
          v51 = v53;
        }
      }

      v54 = 0;
      v55 = 0;
      v957 = *(a1 + 100) - *(a1 + 92);
      v56 = tcp_outflags[*(a1 + 12)];
      v57 = 1;
      if ((*(a1 + 748) & 0x20) == 0 || (v50 & 0x200000) == 0)
      {
        v939 = 0;
        log = 0;
        v918 = 0;
        v60 = 0;
        v61 = 0;
        goto LABEL_191;
      }

      v973 = v51;
      v58 = v49 - tcp_flight_size(a1);
      if (!((v58 > 0) | v920 & 1))
      {
        v58 = *(a1 + 200);
      }

      v59 = v58 & ~(v58 >> 31);
      if ((*(a1 + 748) & 0x20400020) == 0x20000020)
      {
        v55 = *(a1 + 1992);
        v51 = v973;
        if (v55)
        {
          while ((*(v55 + 12) & 7) != 2)
          {
            v55 = *(v55 + 16);
            if (!v55)
            {
              v54 = 0;
              goto LABEL_151;
            }
          }

          if (v59 >= *(a1 + 200))
          {
            v79 = *(a1 + 200);
          }

          else
          {
            v79 = v58 & ~(v58 >> 31);
          }

          v80 = tcp_seg_len(v55);
          v61 = v79;
          if (v80 <= v79)
          {
            v61 = tcp_seg_len(v55);
          }

          if (v59 < v61)
          {
            v61 = v59;
          }

          if (v61)
          {
            v957 = *v55 - *(a1 + 92);
            v81 = *(a1 + 1064);
            v51 = v973;
            v54 = 0;
            v939 = 0;
            v57 = 0;
            if (v81)
            {
              ++*(v81 + 616);
            }

            v920 = 1;
            log = 1;
            v918 = 1;
            v60 = 1;
          }

          else
          {
            v54 = 0;
            v55 = 0;
            v939 = 0;
            log = 0;
            v918 = 0;
            v60 = 0;
            v920 = 1;
            v57 = 1;
            v51 = v973;
          }
        }

        else
        {
          v54 = 0;
          v939 = 0;
          log = 0;
          v918 = 0;
          v60 = 0;
          v61 = 0;
          v920 = 1;
        }

        goto LABEL_191;
      }

      v62 = *(a1 + 536);
      if (!v62)
      {
        v54 = 0;
        goto LABEL_127;
      }

      v54 = 0;
      while (2)
      {
        v63 = *(v62 + 8);
        if (v63 - *(v62 + 4) >= 0)
        {
          v54 += v63 - *v62;
LABEL_117:
          v62 = *(v62 + 16);
          if (!v62)
          {
            goto LABEL_127;
          }

          continue;
        }

        break;
      }

      if (v63 - *(a1 + 92) < 0)
      {
        goto LABEL_117;
      }

      v54 = v63 + v54 - *v62;
LABEL_127:
      v55 = *(a1 + 608);
      if (v55 && *(v55 + 8) - *(v55 + 4) >= 0)
      {
        while (1)
        {
          v55 = *(v55 + 16);
          if (!v55)
          {
            break;
          }

          if (*(v55 + 8) - *(v55 + 4) < 0)
          {
            *(a1 + 608) = v55;
            break;
          }
        }
      }

      v67 = *(a1 + 616);
      v68 = v54;
      if (v62 == v55)
      {
LABEL_140:
        if (v67 == v54)
        {
          goto LABEL_147;
        }

LABEL_141:
        v72 = *(*(a1 + 80) + 224);
        if (!v72 || (*(v72 + 776) & 2) == 0)
        {
          v73 = __nwlog_tcp_log();
          v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
          v54 = v68;
          if (v74)
          {
            v75 = (v72 + 556);
            *buf = 136446978;
            if (!v72)
            {
              v75 = &unk_188A285CF;
            }

            *&buf[4] = "tcp_sack_output";
            *&buf[12] = 2082;
            *&buf[14] = v75;
            *&buf[22] = 1024;
            *v983 = v68;
            *&v983[4] = 1024;
            *&v983[6] = v67;
            _os_log_impl(&dword_1889BA000, v73, OS_LOG_TYPE_ERROR, "%{public}s %{public}s computed sack_bytes_retransmitted (%d) not the same as cached value (%d)", buf, 0x22u);
            v54 = v68;
          }
        }

        goto LABEL_147;
      }

      v69 = *(*(a1 + 80) + 224);
      if (!v69 || (*(v69 + 776) & 2) == 0)
      {
        v70 = __nwlog_tcp_log();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = (v69 + 556);
          *buf = 136446466;
          if (!v69)
          {
            v71 = &unk_188A285CF;
          }

          *&buf[4] = "tcp_sack_output";
          *&buf[12] = 2082;
          *&buf[14] = v71;
          _os_log_impl(&dword_1889BA000, v70, OS_LOG_TYPE_ERROR, "%{public}s %{public}s computed sack hole not the same as cached value", buf, 0x16u);
        }

        v55 = v62;
        v54 = v68;
        goto LABEL_140;
      }

      v55 = v62;
      if (v67 != v54)
      {
        goto LABEL_141;
      }

LABEL_147:
      if (!v55)
      {
        v939 = 0;
        log = 0;
        v918 = 0;
        v60 = 0;
        v61 = 0;
        v920 = 1;
        v57 = 1;
        v4 = v944;
        v3 = v970;
        v51 = v973;
        goto LABEL_191;
      }

      v76 = *(a1 + 156);
      v77 = *(v55 + 4);
      v78 = *(v55 + 8);
      v4 = v944;
      v3 = v970;
      v51 = v973;
      if (v77 - v76 >= 1)
      {
        if (v78 - v76 >= 0)
        {
          v55 = 0;
LABEL_151:
          v939 = 0;
          log = 0;
          v918 = 0;
          v60 = 0;
          v61 = 0;
LABEL_185:
          v920 = 1;
          v57 = 1;
          goto LABEL_191;
        }

        v77 = *(a1 + 156);
      }

      v61 = v77 - v78;
      if (v59 < v61)
      {
        v61 = v59;
      }

      v939 = v55;
      if (!v61)
      {
        v55 = 0;
        log = 0;
        v918 = 0;
        v60 = 0;
        goto LABEL_185;
      }

      v957 = v78 - *(a1 + 92);
      v82 = *(a1 + 100);
      v83 = v82 - v78;
      v60 = v82 - *(a1 + 96) >= 0 || v83 > 0 || v61 > v929;
      v86 = *(a1 + 1064);
      if (v86)
      {
        v55 = 0;
        v57 = 0;
        LODWORD(v87) = *(a1 + 200);
        if (v61 >= v87)
        {
          v87 = v87;
        }

        else
        {
          v87 = v61;
        }

        v920 = 1;
        v88.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v88.i64[1] = v87;
        v86[36] = vaddq_s64(v86[36], v88);
      }

      else
      {
        v55 = 0;
        v57 = 0;
        v920 = 1;
      }

      log = 1;
      v918 = 1;
LABEL_191:
      v89 = *(a1 + 88);
      v90 = (v89 >> 11) & 1 | v56;
      v91 = *(a1 + 748);
      if ((v91 & 0x8000) != 0)
      {
        if (v51)
        {
          *(a1 + 36) = 0;
          *(a1 + 328) = 0;
          *(a1 + 234) = 0;
          *(a1 + 256) = 0;
        }

        else
        {
          if (v957 < *(v4 + 384))
          {
            v90 = v56 & 0xFE;
          }

          v51 = 1;
        }
      }

      v941 = v54;
      v934 = v57;
      if (v57)
      {
        v92 = (v89 >> 21) & 1;
        if ((v91 & 0x20400020) != 0x20000020)
        {
          LOBYTE(v92) = 0;
        }

        if (!v54 && (v92 & 1) == 0)
        {
          v93 = *(v4 + 384);
          if (v93 >= v51)
          {
            v93 = v51;
          }

          v61 = v93 - v957;
          goto LABEL_219;
        }

        v94 = v55;
        v95 = v28;
        v96 = v51;
        v97 = v60;
        v98 = *(a1 + 148);
        v99 = v98 - tcp_flight_size(a1);
        v100 = v99 & ~(v99 >> 31);
        v101 = *(v4 + 384);
        if (v101 >= *(a1 + 144))
        {
          v101 = *(a1 + 144);
        }

        v102 = v101 - v957;
        if (v102 >= v100)
        {
          v103 = v99 & ~(v99 >> 31);
        }

        else
        {
          v103 = v102;
        }

        if (v102 <= 0)
        {
          v61 = 0;
        }

        else
        {
          v61 = v103;
        }

        if (v61)
        {
          v104 = 1;
        }

        else
        {
          v104 = v99 < 1;
        }

        if (v104)
        {
          v54 = v941;
          v60 = v97;
          v51 = v96;
          v28 = v95;
          v55 = v94;
          goto LABEL_219;
        }

        v128 = *(a1 + 552);
        v129 = *(a1 + 156);
        v54 = v941;
        v60 = v97;
        v61 = 0;
        if (v128 - v129 >= 0 || (v130 = *(a1 + 748), (v130 & 0x80000) != 0))
        {
          v51 = v96;
          v28 = v95;
          v55 = v94;
        }

        else
        {
          v60 = v97;
          v51 = v96;
          v28 = v95;
          v55 = v94;
          if ((v130 & 0x20400020) != 0x20000020)
          {
            v61 = v129 - v128;
            if ((v129 - v128) >= *(a1 + 200))
            {
              v61 = *(a1 + 200);
            }

            if (v61 >= v100)
            {
              v61 = v100;
            }

            v911 = *(a1 + 100);
            v131 = v129 - v61;
            *(a1 + 100) = v129 - v61;
            if ((*(a1 + 88) & 0x10) != 0 && *(a1 + 96) == v129)
            {
              *v945 = --v131;
            }

            v60 = 0;
            v957 = v131 - *(a1 + 92);
            *(a1 + 748) = v130 | 0x80000;
            v916 = 1;
            goto LABEL_219;
          }
        }
      }

      else
      {
LABEL_219:
        if (v61 >= v929)
        {
          v105 = v929;
        }

        else
        {
          v105 = v61;
        }

        v106 = v61 <= 0 || v929 == 0;
        if (!v106)
        {
          v61 = v105;
        }
      }

      if ((v90 & 2) == 0 || (v107 = *(a1 + 100), v108 = *(a1 + 92), v107 - v108 < 1))
      {
        v111 = v61;
        goto LABEL_236;
      }

      v109 = *(a1 + 12);
      if (v109 != 3)
      {
        v90 &= ~2u;
        --v957;
        v111 = v61 + 1;
        if ((v61 & 0x80000000) != 0 || v109 != 2)
        {
          goto LABEL_236;
        }

        if (*(v3 + 2382))
        {
          goto LABEL_1708;
        }

        v693 = *(a1 + 88);
        if (*(a1 + 624))
        {
          v798 = *(a1 + 312);
          if (v54)
          {
            v799 = 1;
          }

          else
          {
            v799 = log;
          }

          *(a1 + 296) = *(a1 + 120);
          *(a1 + 88) = v693 & 0xFFFFFFFC;
          *(a1 + 32) = 0;
          *(a1 + 316) = 0;
          tcp_ip_output_send(v4, a1, v28, v798, v799);
          *(a1 + 624) = 0;
          *(a1 + 632) = v28;
          *(a1 + 640) = 0;
          *(a1 + 312) = 0;
          if (*(v3 + 2382))
          {
            goto LABEL_1708;
          }

          v693 = *(a1 + 88);
        }

        if ((v693 & 0x8000000) == 0)
        {
          goto LABEL_1708;
        }

        goto LABEL_1810;
      }

      v110 = *(a1 + 748);
      if ((v107 != v108 + 1 || (v110 & 0x400000) == 0) && (v110 & 0x400000) != 0)
      {
        v90 &= ~2u;
      }

      --v957;
      v111 = v61 + 1;
LABEL_236:
      if ((v90 & 2) != 0)
      {
        v112 = *(a1 + 748);
        if ((v112 & 0x400000) == 0)
        {
          v90 &= ~1u;
        }

        v111 &= v112 << 9 >> 31;
      }

      if ((v90 & 4) != 0)
      {
        v113 = 0;
      }

      else
      {
        v113 = v111;
      }

      if ((v90 & 2) == 0)
      {
        goto LABEL_277;
      }

      if (*(a1 + 12) > 2)
      {
        goto LABEL_277;
      }

      v114 = *(a1 + 748);
      if ((v114 & 0x400000) == 0)
      {
        goto LABEL_277;
      }

      if ((*(a1 + 88) & 8) != 0)
      {
        goto LABEL_276;
      }

      v115 = *(a1 + 80);
      v116 = *(v115 + 224);
      if ((v114 & 0x1000000) == 0)
      {
        v117 = v60;
        v903 = v28;
        v118 = v51;
        v119 = *(v115 + 224);
        v120 = (*(*(v115 + 2280) + 32))(v119);
        v116 = v119;
        v51 = v118;
        v28 = v903;
        v4 = v944;
        v60 = v117;
        v54 = v941;
        if ((v120 & 1) == 0)
        {
          *(a1 + 998) |= 0x800u;
          v132 = *(a1 + 1064);
          if (v132)
          {
            ++*(v132 + 1168);
          }

LABEL_276:
          v113 = 0;
          *(a1 + 748) &= ~0x400000u;
          goto LABEL_277;
        }
      }

      if (*(v116 + 370))
      {
        goto LABEL_277;
      }

      v956 = v116;
      v121 = v28;
      v122 = v51;
      v974 = v60;
      v123 = *(a1 + 88);
      v124 = *(a1 + 748);
      v125 = (*(*(*(a1 + 80) + 2280) + 48))(*(*(a1 + 80) + 224));
      if (!v125)
      {
        v113 = 0;
        v4 = v944;
        v3 = v970;
        v54 = v941;
        v60 = v974;
        v51 = v122;
        v28 = v121;
        goto LABEL_277;
      }

      if ((v123 & 0x20) != 0)
      {
        v126 = -8;
      }

      else
      {
        v126 = -4;
      }

      if ((v123 & 0x80) != 0)
      {
        v126 -= 12;
      }

      v127 = v126 - ((v124 >> 4) & 2) + 40;
      v4 = v944;
      v3 = v970;
      v54 = v941;
      v60 = v974;
      v51 = v122;
      v28 = v121;
      if (v127 < v125 || v956[96] > (*(a1 + 160) - 40))
      {
        goto LABEL_276;
      }

LABEL_277:
      if (*(a1 + 272) == 4 || v3[298] != -1)
      {
        v133 = *(a1 + 480);
        v134 = !v133 || v113 <= 0;
        v135 = !v134;
        if (v135 && v113 > v133)
        {
          v60 = 1;
          v113 = *(a1 + 480);
        }
      }

      if ((v90 & 2) == 0 && v113 <= 0)
      {
        if (v51)
        {
          v113 = 0;
          goto LABEL_305;
        }

        *(a1 + 28) = 0;
        *(a1 + 16) = 0;
        *(a1 + 234) = 0;
        *(a1 + 256) = 0;
        *(a1 + 100) = *(a1 + 92);
        if (*(a1 + 36))
        {
          v957 = 0;
          v113 = 0;
          goto LABEL_305;
        }

        v136 = *(a1 + 204);
        v137 = *(a1 + 212);
        v975 = v60;
        v904 = v28;
        if (*(a1 + 324) && !*(a1 + 328))
        {
          v139 = v51;
          v140 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
          v51 = v139;
          *(a1 + 328) = *(a1 + 324) + *(v140 + 308);
          v138 = *(a1 + 234);
        }

        else
        {
          v138 = 0;
        }

        v141 = v51;
        v142 = tcp_backoff[v138] * ((v137 + (v136 >> 2)) >> 1);
        *(a1 + 36) = v142;
        if (v142 >> 3 < 0x271)
        {
          v142 = 5000;
          goto LABEL_301;
        }

        if (v142 >= 0xEA61)
        {
          v142 = 60000;
LABEL_301:
          *(a1 + 36) = v142;
        }

        *(a1 + 36) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v142 - *(a1 + 64);
        v143 = *(a1 + 234);
        v957 = 0;
        v113 = 0;
        if (v143 <= 0xB)
        {
          *(a1 + 234) = v143 + 1;
        }

        v54 = v941;
        v60 = v975;
        v51 = v141;
        v28 = v904;
      }

LABEL_305:
      if ((*(v3 + 2375) & 0x50) == 0 && (*(a1 + 90) & 0x20) == 0)
      {
        v144 = *(v4 + 416);
        if ((v144 & 0xC00) == 0x400)
        {
          v145 = *(v4 + 388);
          if (5 * (*(a1 + 144) >> 2) >= v145)
          {
            v146 = *(v4 + 384);
            if (v146 >= 7 * (v145 >> 3) && v51 >= (v146 - *(a1 + 100) + *(a1 + 92)))
            {
              v147 = *(sysctls + 112) + v145;
              if (v147 >= *(sysctls + 116))
              {
                v147 = *(sysctls + 116);
              }

              if (v147 <= 0x71C71C)
              {
                *(v4 + 388) = v147;
                v148 = *(*(v4 + 432) + 24);
                if ((v144 & 4) != 0)
                {
                  if (v148)
                  {
                    v149 = v60;
                    all_stats = nw_protocol_tcp_get_all_stats();
                    v147 = *(v4 + 388);
                    if (all_stats)
                    {
                      *(all_stats + 88) = v147;
                    }

LABEL_328:
                    v54 = v941;
                    v60 = v149;
                  }
                }

                else if (v148)
                {
                  v149 = v60;
                  v150 = nw_protocol_tcp_get_all_stats();
                  v147 = *(v4 + 388);
                  if (v150)
                  {
                    *(v150 + 100) = v147;
                  }

                  goto LABEL_328;
                }

                if (*(v4 + 392) > v147)
                {
                  *(v4 + 392) = v147;
                }

                *(v4 + 420) = *(v4 + 388);
              }
            }
          }
        }
      }

      v152 = *(a1 + 200);
      if (v113 <= v152)
      {
        v153 = 0;
      }

      else if ((*(a1 + 91) & 0x10) != 0 && *(sysctls + 300) && !(*(a1 + 556) | v918 | v54) && !v3[291])
      {
        v60 = 0;
        v153 = 1;
      }

      else
      {
        v153 = 0;
        v60 = 1;
        v113 = *(a1 + 200);
      }

      v154 = *(a1 + 748);
      if (v113 < v152)
      {
        v152 = v113;
      }

      if ((v154 & 0x1000) != 0)
      {
        v153 = 0;
      }

      v943 = v153;
      v976 = v60;
      v155 = (v154 & 0x1000) == 0 && v60;
      v940 = v155;
      if ((v154 & 0x1000) != 0)
      {
        v113 = v152;
      }

      v917 = v939 + 2;
      if ((v154 & 0x20400020) == 0x20000020)
      {
        v156 = v55;
      }

      else
      {
        v156 = v939 + 2;
      }

      if (!log)
      {
        v156 = (a1 + 100);
      }

      if (*v156 + v113 - (*(a1 + 92) + *(v4 + 384)) >= 0)
      {
        v157 = v90;
      }

      else
      {
        v157 = v90 & 0xFFFFFFFE;
      }

      v158 = tcp_sbspace(a1);
      if (v158 < *(v4 + 468) >> 2 && v158 < *(a1 + 200))
      {
        v158 = 0;
      }

      v159 = sysctls;
      if (*(sysctls + 40) == 1 || (*(v4 + 369) & 0x40) != 0)
      {
        v160 = *(sysctls + 284);
        if (v160 && (v160 == 1 && (~*(a1 + 88) & 0x180) == 0 || *(a1 + 12) <= 3))
        {
          if (v158 >= 1)
          {
            if (off_1ED4BF6F8)
            {
              v161 = v158;
              v158 = off_1ED4BF6F8(a1);
              if (v161 < v158)
              {
                v158 = v161;
              }
            }
          }

          goto LABEL_392;
        }

        if (v158 < 1)
        {
          v158 = 0;
          goto LABEL_392;
        }

        if (*(sysctls + 120) != 1 || (~*(a1 + 88) & 0x180) != 0)
        {
          goto LABEL_385;
        }

        v162 = *(a1 + 748);
        if ((v162 & 0x100) != 0)
        {
          goto LABEL_386;
        }

        v163 = *(a1 + 80);
        v164 = *(v163 + 496);
        if (v164 && (v165 = *(v164 + 1632)) != 0 && (v166 = *(v165 + 40)) != 0 && (v167 = *(a1 + 244)) != 0)
        {
          if (v167 <= *(sysctls + 4) + v166)
          {
            goto LABEL_392;
          }

          v168 = *(v163 + 224);
          *(a1 + 748) = v162 | 0x100;
          if (!*(a1 + 1048))
          {
            v169 = v158;
            v170 = nw_tcp_access_globals(v168);
            v158 = v169;
            *(a1 + 1048) = *(v170 + 308);
            v159 = sysctls;
          }

          v171 = *(v168 + 500);
          v172 = *(v159 + 124);
          if (v171 > v172)
          {
            v173 = v171 >> 1;
            if (v173 > v172)
            {
              v172 = v173;
            }

            *(v168 + 500) = v172;
          }
        }

        else
        {
LABEL_385:
          if (*(sysctls + 108) >= *(a1 + 762))
          {
            goto LABEL_392;
          }
        }

LABEL_386:
        v174 = *(a1 + 120);
        v175 = v174 + *(a1 + 200) * *(v159 + 104);
        if (*(a1 + 124) - v175 >= 0)
        {
          v175 = *(a1 + 124);
        }

        v176 = v175 - v174;
        if (v176 >= v158)
        {
          v176 = v158;
        }

        v158 = v176 & ~(v176 >> 31);
      }

LABEL_392:
      v177 = *(a1 + 269);
      v178 = 0xFFFF << v177;
      if (v158 >= 0xFFFF << v177)
      {
        v179 = 0xFFFF << v177;
      }

      else
      {
        v179 = v158;
      }

      if ((*(v4 + 367) & 2) == 0 && v179 <= *(a1 + 124) - *(a1 + 120))
      {
        v179 = *(a1 + 124) - *(a1 + 120);
      }

      v180 = (v179 + ~(-1 << v177)) & (-1 << v177);
      v935 = v180;
      if (!v113)
      {
        goto LABEL_428;
      }

      v181 = *(a1 + 748);
      if ((v181 & 0x8000) != 0)
      {
        goto LABEL_449;
      }

      v183 = *(a1 + 96);
      v182 = *(a1 + 100);
      if (v182 - v183 < 0)
      {
        if ((~v181 & 0x20000020) == 0 && !(v181 & 0x400000 | v918) && v113 >= (v183 - v182))
        {
          v113 = v183 - v182;
        }

        goto LABEL_449;
      }

      if (log)
      {
        goto LABEL_449;
      }

      v184 = *(a1 + 12);
      if ((v181 & 0x400000) == 0 || v184 != 3)
      {
        if (v184 == 4 && (*(v3 + 593) & 0x50000000) != 0)
        {
          v185 = *(a1 + 1064);
          v180 = v935;
          if (v185)
          {
            ++*(v185 + 96);
          }

          goto LABEL_428;
        }

LABEL_415:
        if (v113 >= *(a1 + 200))
        {
          goto LABEL_449;
        }

        v186 = *(a1 + 88);
        if ((v186 & 0x10000) == 0)
        {
          if (v907 & 1 | ((v186 & 0x1000004) != 0))
          {
            if ((v186 & 0x1000) != 0)
            {
              goto LABEL_426;
            }

LABEL_425:
            if (v113 + v957 >= *(v4 + 384))
            {
              goto LABEL_449;
            }
          }

          else
          {
            v187 = *(a1 + 8);
            if (v187 >= 1 && (v186 & 0x1000) == 0 && (*(a1 + 748) & 0x6000) != 0x6000 && v187 < *(a1 + 322))
            {
              goto LABEL_425;
            }
          }
        }

LABEL_426:
        v188 = *(a1 + 260);
        v180 = v935;
        if (v188 && v113 >= v188 / 2)
        {
          goto LABEL_449;
        }

LABEL_428:
        if (v180 >= 1)
        {
          if (v180 < v178)
          {
            v178 = v180;
          }

          v189 = *(a1 + 120);
          v190 = *(a1 + 124) - v189;
          v191 = v178 - v190;
          if (v191 >= 2 * *(a1 + 200))
          {
            if (*(v4 + 464) < *(v4 + 472) && (*(a1 + 296) != v189 || ((v190 & ~(v190 >> 31)) + v191) >> v177 > ((v190 & ~(v190 >> 31)) >> v177)))
            {
              goto LABEL_449;
            }
          }

          else if ((*(a1 + 88) & 2) != 0 && !*(v4 + 464) && *(a1 + 296) != v189 && (*(a1 + 748) & 0x10) != 0)
          {
            goto LABEL_449;
          }

          if (*(v4 + 468) <= 4 * v191)
          {
            goto LABEL_449;
          }
        }

        v192 = *(a1 + 88);
        if (v192)
        {
          if (*(a1 + 320))
          {
            --*(a1 + 320);
          }

          goto LABEL_449;
        }

        if ((v157 & 6) != 0 || (v157 & 1) != 0 && ((v192 & 0x10) == 0 || *(a1 + 100) == *(a1 + 92)))
        {
          goto LABEL_449;
        }

        if ((*(a1 + 748) & 0x20) == 0 || *(a1 + 12) < 4 || *(a1 + 96) - *(a1 + 92) < 1 || *(a1 + 28) || *(a1 + 36))
        {
          if (*(v4 + 384) && !*(a1 + 28) && !*(a1 + 36))
          {
            *(a1 + 234) = 0;
            *(a1 + 256) = 0;
            tcp_setpersist(a1);
          }
        }

        else
        {
          tcp_set_rto(a1);
        }

        if (!*(v3 + 2382))
        {
          v858 = v941 ? 1 : log;
          tcp_ip_output(v4, a1, v28, *(a1 + 312), v858);
          *(a1 + 624) = 0;
          *(a1 + 632) = v28;
          *(a1 + 640) = 0;
          *(a1 + 312) = 0;
          if (!*(v3 + 2382))
          {
            v693 = *(a1 + 88);
            if ((v693 & 0x8000000) != 0)
            {
LABEL_1810:
              *(a1 + 88) = v693 & 0xF7FFFFFF;
              tcp_close(a1);
              goto LABEL_1811;
            }
          }
        }

LABEL_1708:
        tcp_check_timer_state(a1);
LABEL_1811:
        v761 = 0;
        goto LABEL_1812;
      }

      if ((*(a1 + 996) & 2) == 0 || v182 != *(a1 + 112) + 1)
      {
        goto LABEL_415;
      }

LABEL_449:
      if (v113 >= 1)
      {
        *(a1 + 88) = *(a1 + 88) & 0xFEFFFFFF | ((v113 >= *(a1 + 200)) << 24);
      }

      if ((*(a1 + 2096) & 2) != 0 && *(a1 + 12) == 4)
      {
        v193 = *(a1 + 112);
        if (*(a1 + 92) == v193 + 1 && *(a1 + 552) == v193)
        {
          if (*(a1 + 234))
          {
            v194 = *(a1 + 336);
            if ((v194 & 0x2000000) == 0)
            {
              *(a1 + 336) = v194 | 0x2000000;
            }
          }
        }
      }

      v195 = *(a1 + 88);
      if ((v157 & 2) == 0 || (v196 = *(a1 + 112), *(a1 + 100) = v196, *(a1 + 552) = v196, (v195 & 8) != 0))
      {
        v205 = 0;
      }

      else
      {
        __src[0] = 1026;
        v197 = *(a1 + 80);
        v198 = *(v197 + 2380);
        if ((v198 & 2) != 0)
        {
          v199 = -60;
        }

        else
        {
          v199 = -40;
        }

        if ((*(v197 + 2380) & 2) != 0)
        {
          v200 = tcp_rtlookup6(v197, 0);
          if (v200)
          {
            goto LABEL_465;
          }
        }

        else
        {
          v200 = tcp_rtlookup(v197, 0);
          if (v200)
          {
LABEL_465:
            v201 = *(v200 + 216);
            if (*(v201 + 1224) == 23 && *(sysctls + 48) >= 1 && (*(v201 + 1184) - 9601) >> 7 <= 0x39C)
            {
              *(a1 + 88) |= 0x80000u;
            }

            v202 = *(v200 + 1632);
            if (v202 && (v203 = *(v202 + 48)) != 0)
            {
              v204 = *(v201 + 1188);
              if (v203 < v204)
              {
                v204 = v203;
              }
            }

            else
            {
              v204 = *(v201 + 1188);
            }

            v222 = v204 + v199;
            goto LABEL_512;
          }
        }

        v221 = 148;
        if ((v198 & 2) == 0)
        {
          v221 = 144;
        }

        v222 = *(sysctls + v221);
LABEL_512:
        __src[1] = bswap32(v222) >> 16;
        v195 = *(a1 + 88);
        if ((v195 & 0x20) != 0 && ((v157 & 0x10) == 0 || (v195 & 0x40) != 0))
        {
          v987 = bswap32(*(a1 + 270) | 0x1030300);
          v205 = 8;
          if (*(a1 + 2096))
          {
            goto LABEL_523;
          }
        }

        else
        {
          v205 = 4;
          if ((*(a1 + 2096) & 1) == 0)
          {
            goto LABEL_475;
          }

LABEL_523:
          if (*(a1 + 272) == 3)
          {
            if (*(sysctls + 20))
            {
              v228 = v205;
              v229 = v4;
              v230 = 1;
            }

            else if (*(sysctls + 280))
            {
              v228 = v205;
              v229 = v4;
              v230 = 2;
            }

            else
            {
              v228 = v205;
              v229 = v4;
              if (*(*(*v4 + 240) + 2096))
              {
                v230 = 4;
              }

              else
              {
                v230 = 3;
              }
            }

            tcp_set_new_cc(v229, v230);
            v195 = *(a1 + 88);
            v205 = v228;
          }
        }
      }

LABEL_475:
      v206 = 0;
      if ((v157 & 4) == 0 && (v195 & 0x88) == 0x80)
      {
        if ((v157 & 0x10) == 0 || (v195 & 0x100) != 0)
        {
          v207 = (__src + v205);
          v206 = v207 + 1;
          *v207 = 168296705;
          v207[2] = bswap32(*(a1 + 284));
          v205 += 12;
        }

        else
        {
          v206 = 0;
        }
      }

      numer_low = v157 & 2;
      v209 = *(a1 + 748);
      if ((v209 & 0x20) != 0 && (v157 & 2) != 0 && (v195 & 8) == 0 && ((v157 & 0x10) == 0 || (v195 & 0x200) != 0))
      {
        *(__src + v205) = 516;
        v205 += 2;
      }

      *type = v55;
      if ((v209 & 0x400000) != 0)
      {
        if ((v157 & 0x12) == 2 && (v195 & 8) == 0)
        {
          v212 = *(a1 + 80);
          v213 = *(v212 + 224);
          buf[0] = 38 - v205;
          if (*(v213 + 370))
          {
            if (v113 < 1 || (*(a1 + 998) |= 0x40u, (v223 = *(a1 + 1064)) == 0))
            {
              v218 = 0;
              goto LABEL_532;
            }

            v218 = 0;
            v220 = (v223 + 1120);
          }

          else
          {
            v214 = v206;
            v215 = v205;
            v216 = __src + v205;
            v217 = (*(*(v212 + 2280) + 40))(v213, v216 + 2);
            *v216 = 34;
            if (v217)
            {
              v218 = buf[0] + 2;
              v216[1] = buf[0] + 2;
              *(a1 + 996) |= 8u;
              if (v113 >= 1)
              {
                *(a1 + 998) |= 0x40u;
                v219 = *(a1 + 1064);
                v205 = v215;
                v206 = v214;
                if (v219)
                {
                  v220 = (v219 + 1120);
                  goto LABEL_528;
                }

LABEL_531:
                v55 = *type;
LABEL_532:
                v211 = 0;
                v205 += v218;
                v210 = v205 >> 8;
                if ((*(a1 + 748) & 0x20) == 0)
                {
                  goto LABEL_568;
                }

                goto LABEL_533;
              }

LABEL_530:
              v205 = v215;
              v206 = v214;
              goto LABEL_531;
            }

            v218 = 2;
            v216[1] = 2;
            *(a1 + 996) |= 4u;
            *(a1 + 998) |= 0x10u;
            v231 = *(a1 + 1064);
            if (!v231)
            {
              goto LABEL_530;
            }

            v220 = (v231 + 1104);
            v205 = v215;
            v206 = v214;
LABEL_528:
            v55 = *type;
          }

          ++*v220;
          goto LABEL_532;
        }

        if ((v157 & 0x12) == 0x12)
        {
          if (*(a1 + 996))
          {
            v224 = v206;
            v225 = v205;
            tcp_tfo_gen_cookie(*(a1 + 80), buf);
            v226 = __src + v225;
            *v226 = 2594;
            *(v226 + 2) = *buf;
            *(a1 + 998) |= 4u;
            v227 = *(a1 + 1064);
            if (v227)
            {
              ++*(v227 + 1072);
            }

            v210 = 0;
            LOBYTE(v205) = v225 + 10;
            v211 = 1;
            v206 = v224;
            v55 = *type;
            if ((*(a1 + 748) & 0x20) != 0)
            {
              goto LABEL_533;
            }
          }

          else
          {
            v210 = 0;
            v211 = 1;
            if ((v209 & 0x20) != 0)
            {
              goto LABEL_533;
            }
          }
        }

        else
        {
          v211 = 0;
          v210 = 0;
          if ((v209 & 0x20) != 0)
          {
            goto LABEL_533;
          }
        }

LABEL_568:
        v241 = *(a1 + 2096);
        if ((v241 & 2) != 0)
        {
          goto LABEL_549;
        }

LABEL_569:
        v106 = (v241 & 1) == 0;
        v254 = !v211;
        if (v106)
        {
          v254 = 1;
        }

        if (v254)
        {
          goto LABEL_593;
        }

        v242 = *(a1 + 336);
        if ((v242 & 0x200000) == 0 || (v242 & 0x2000000) != 0)
        {
          goto LABEL_593;
        }

LABEL_575:
        v255 = v205 | (v210 << 8);
        if ((40 - v205) <= 1u)
        {
          numer_low = v157;
          v256 = *(*(a1 + 80) + 224);
          if (v256 && (*(v256 + 776) & 2) != 0)
          {
            v157 = numer_low;
            if (v255 >= 0x29)
            {
              goto LABEL_580;
            }
          }

          else
          {
            v257 = v206;
            v258 = v205;
            if (__nwlog_is_datapath_logging_enabled())
            {
              v951 = __nwlog_tcp_log();
              if (os_log_type_enabled(v951, OS_LOG_TYPE_DEBUG))
              {
                v729 = (v256 + 556);
                *buf = 136446466;
                if (!v256)
                {
                  v729 = &unk_188A285CF;
                }

                *&buf[4] = "tcp_add_accecn_option";
                *&buf[12] = 2082;
                *&buf[14] = v729;
                _os_log_impl(&dword_1889BA000, v951, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s not enough space to add any AccECN option", buf, 0x16u);
              }
            }

            v157 = numer_low;
            LOBYTE(v205) = v258;
            v206 = v257;
            v55 = *type;
            if (v255 >= 0x29)
            {
              goto LABEL_580;
            }
          }

          goto LABEL_592;
        }

        v262 = *(a1 + 424);
        v263 = *(a1 + 432);
        if ((v242 & 0x400000 | numer_low || (v242 & 0x1800000) != 0 || *(a1 + 92) == *(a1 + 112) + 1) && (!v211 || !*(a1 + 234)))
        {
          v264 = (__src + v255);
          if ((40 - v205) > 4u)
          {
            if ((40 - v205) > 7u)
            {
              v285 = *(a1 + 440) & 0xFFFFFF;
              if ((40 - v205) > 0xAu)
              {
                v384 = (v242 & 0x800000) == 0;
                if ((v242 & 0x800000) != 0)
                {
                  v385 = *(a1 + 424);
                }

                else
                {
                  v385 = *(a1 + 432);
                }

                if (v384)
                {
                  v386 = -1408565248;
                }

                else
                {
                  v386 = -1375010816;
                }

                if (!v384)
                {
                  v262 = *(a1 + 432);
                }

                *v264 = bswap32((v385 >> 8) | v386);
                v264[1] = bswap32(v285 | (v385 << 24));
                v264[2] = bswap32((v262 << 8) | 1);
                LOBYTE(v205) = v205 + 12;
                if (v255 >= 0x29)
                {
LABEL_580:
                  v259 = v206;
                  v925 = v205;
                  v260 = __nwlog_obj();
                  os_log_type_enabled(v260, OS_LOG_TYPE_ERROR);
                  *buf = 136446210;
                  *&buf[4] = "tcp_output";
                  v261 = _os_log_send_and_compose_impl();
                  v4 = v944;
                  if (!__nwlog_should_abort())
                  {
                    free(v261);
                    LOBYTE(v205) = v925;
                    v206 = v259;
                    v55 = *type;
                    goto LABEL_593;
                  }

                  goto LABEL_1884;
                }
              }

              else
              {
                v286 = (v242 & 0x800000) == 0;
                if ((v242 & 0x800000) != 0)
                {
                  v287 = *(a1 + 424);
                }

                else
                {
                  v287 = *(a1 + 432);
                }

                if (v286)
                {
                  v288 = -1408761856;
                }

                else
                {
                  v288 = -1375207424;
                }

                *v264 = bswap32((v287 >> 8) | v288);
                v264[1] = bswap32(v285 | (v287 << 24));
                LOBYTE(v205) = v205 + 8;
                if (v255 >= 0x29)
                {
                  goto LABEL_580;
                }
              }
            }

            else
            {
              v282 = (v242 & 0x800000) == 0;
              if ((v242 & 0x800000) != 0)
              {
                v283 = *(a1 + 424);
              }

              else
              {
                v283 = *(a1 + 432);
              }

              if (v282)
              {
                v284 = -1408958464;
              }

              else
              {
                v284 = -1375404032;
              }

              *v264 = bswap32((v283 >> 8) | v284);
              *(v264 + 2) = bswap32((v283 << 8) | 1) >> 16;
              LOBYTE(v205) = v205 + 6;
              if (v255 >= 0x29)
              {
                goto LABEL_580;
              }
            }

LABEL_592:
            v4 = v944;
            goto LABEL_593;
          }

          if (numer_low)
          {
            *v264 = 686;
            LOBYTE(v205) = v205 + 2;
            if (v255 >= 0x29)
            {
              goto LABEL_580;
            }

            goto LABEL_592;
          }
        }

        if (v255 >= 0x29)
        {
          goto LABEL_580;
        }

        goto LABEL_592;
      }

      v210 = 0;
      v211 = (~v157 & 0x12) == 0;
      if ((v209 & 0x20) == 0)
      {
        goto LABEL_568;
      }

LABEL_533:
      v232 = *(a1 + 88);
      if ((v232 & 8) != 0 || (v232 & 0x200) == 0 || *(a1 + 12) < 4)
      {
        goto LABEL_568;
      }

      v233 = *(a1 + 556);
      if (v233 <= 0)
      {
        if (!*v923)
        {
          v4 = v944;
          goto LABEL_568;
        }

        if (!*(a1 + 952))
        {
          goto LABEL_548;
        }
      }

      v234 = v205 | (v210 << 8);
      v235 = 38 - v234;
      if ((38 - v234) < 8)
      {
LABEL_548:
        v4 = v944;
        v241 = *(a1 + 2096);
        if ((v241 & 2) != 0)
        {
          goto LABEL_549;
        }

        goto LABEL_569;
      }

      v236 = v235 >> 3;
      if (v235 >= 0x18 && (*(a1 + 2096) & 2) != 0)
      {
        v237 = *(a1 + 336);
        v238 = (v237 & 0x1800000) != 0 && (v237 & 0x2000000) == 0;
        v236 -= v238;
      }

      v239 = *v923;
      LODWORD(v956) = v157;
      if (*v923)
      {
        v240 = *(a1 + 952) != 0;
      }

      else
      {
        v240 = 0;
      }

      v243 = __src + v234;
      v947 = *(a1 + 556);
      v244 = v240 + v233;
      if (v236 >= v244)
      {
        v245 = v244;
      }

      else
      {
        v245 = v236;
      }

      v246 = (2 - v205) & 3;
      if (((2 - v205) & 3) != 0)
      {
        v930 = v206;
        v247 = v205 | (v210 << 8);
        v248 = v245;
        v924 = *v923;
        memset(v243, 1, (2 - v205) & 3);
        v239 = v924;
        v245 = v248;
        LODWORD(v234) = v247;
        v206 = v930;
        v243 = __src + v247 + v246;
      }

      v249 = *(a1 + 1064);
      if (v249)
      {
        ++*(v249 + 600);
      }

      v250 = (8 * v245) | 2;
      *v243 = 5;
      v251 = (v243 + 2);
      v243[1] = (8 * v245) | 2;
      if (v239)
      {
        if (v245 >= 1)
        {
          v252 = *(a1 + 952);
          if (v252)
          {
            v253 = v245-- != 0;
            if ((v245 == 0 || !v253) && v947)
            {
              v245 = 1;
              goto LABEL_898;
            }

            *(v243 + 2) = bswap32(v239);
            *(v243 + 6) = bswap32(v252);
            if (v249)
            {
              ++*(v249 + 1008);
            }

            v251 = (v243 + 10);
            ++*(a1 + 1028);
          }
        }
      }

      if (!v245)
      {
        goto LABEL_906;
      }

LABEL_898:
      if (v947 < v245)
      {
        v927 = v245;
        v933 = v250;
        v750 = v246;
        v952 = v234;
        v4 = v206;
        v751 = __nwlog_obj();
        os_log_type_enabled(v751, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "tcp_output";
        v752 = _os_log_send_and_compose_impl();
        if (!__nwlog_should_abort())
        {
          free(v752);
          v206 = v4;
          v55 = *type;
          LODWORD(v234) = v952;
          v246 = v750;
          v250 = v933;
          v245 = v927;
          if (v927 >= 1)
          {
            goto LABEL_900;
          }

          goto LABEL_906;
        }

LABEL_1884:
        __break(1u);
LABEL_1885:
        *(a1 + 1064) = 0;
        v582 = 6;
LABEL_1886:
        v761 = v582;
        if ((*(v4 + 776) & 2) == 0)
        {
          v889 = __nwlog_tcp_log();
          if (os_log_type_enabled(v889, OS_LOG_TYPE_INFO))
          {
            v890 = strerror(v761);
            *buf = 136446722;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v914;
            *&buf[22] = 2080;
            *v983 = v890;
            _os_log_impl(&dword_1889BA000, v889, OS_LOG_TYPE_INFO, "%{public}s %{public}s failed to finalize tcp checksum, %s", buf, 0x20u);
          }
        }

        v891 = *(v20 + 80);
        v762 = v939;
        if (v891)
        {
          v892 = *(v20 + 88);
          *(v20 + 80) = 0;
          *(v20 + 88) = 0;
          v891(v20, 0, v892);
          if (v761 == 6)
          {
LABEL_1891:
            v691 = 0;
            goto LABEL_1572;
          }

LABEL_1908:
          v691 = *(a1 + 640);
          v761 = 55;
          goto LABEL_1572;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v893 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault())
        {
          if (LOBYTE(info.numer) != 17)
          {
            if (v981 == OS_LOG_TYPE_INFO)
            {
              v897 = __nw_create_backtrace_string();
              v898 = __nwlog_obj();
              v899 = info.numer;
              v900 = os_log_type_enabled(v898, info.numer);
              if (v897)
              {
                if (v900)
                {
                  *buf = 136446466;
                  *&buf[4] = "__nw_frame_finalize";
                  *&buf[12] = 2082;
                  *&buf[14] = v897;
                  _os_log_impl(&dword_1889BA000, v898, v899, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v897);
                goto LABEL_1905;
              }

              if (!v900)
              {
                goto LABEL_1905;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v896 = "%{public}s called with null frame->finalizer, no backtrace";
              v901 = v898;
              v902 = v899;
            }

            else
            {
              v894 = __nwlog_obj();
              v895 = info.numer;
              if (!os_log_type_enabled(v894, info.numer))
              {
                goto LABEL_1905;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v896 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
LABEL_1903:
              v901 = v894;
              v902 = v895;
            }

            _os_log_impl(&dword_1889BA000, v901, v902, v896, buf, 0xCu);
            goto LABEL_1905;
          }

          v894 = __nwlog_obj();
          v895 = info.numer;
          if (os_log_type_enabled(v894, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v896 = "%{public}s called with null frame->finalizer";
            goto LABEL_1903;
          }
        }

LABEL_1905:
        if (v893)
        {
          free(v893);
        }

        numer_low = a1 + 100;
        v762 = v939;
        if (v761 == 6)
        {
          goto LABEL_1891;
        }

        goto LABEL_1908;
      }

      if (v245 >= 1)
      {
LABEL_900:
        v387 = v245;
        if (v245 >= 8 && ((v388 = v906, v251 >= v906 + 8 * v387) || v906 >= &v251[v387]))
        {
          v389 = v387 & 0x7FFFFFF8;
          v397 = &v251[4];
          v398 = v389;
          do
          {
            v399 = vrev32q_s8(v388[1]);
            v400 = v388[2];
            v401 = v388[3];
            v397[-2] = vrev32q_s8(*v388);
            v397[-1] = v399;
            *v397 = vrev32q_s8(v400);
            v397[1] = vrev32q_s8(v401);
            v397 += 4;
            v388 += 4;
            v398 -= 8;
          }

          while (v398);
          if (v389 != v387)
          {
            v251 += v387 & 0x7FFFFFF8;
            goto LABEL_904;
          }
        }

        else
        {
          v389 = 0;
LABEL_904:
          v390 = v387 - v389;
          v391 = (a1 + 560 + 8 * v389);
          do
          {
            v392 = *v391++;
            *v251++ = vrev32_s8(v392);
            --v390;
          }

          while (v390);
        }
      }

LABEL_906:
      v205 = v246 + v234 + v250;
      v210 = v205 >> 8;
      v4 = v944;
      v157 = v956;
      v241 = *(a1 + 2096);
      if ((v241 & 2) == 0)
      {
        goto LABEL_569;
      }

LABEL_549:
      v242 = *(a1 + 336);
      if ((v242 & 0x2000000) == 0)
      {
        goto LABEL_575;
      }

LABEL_593:
      v265 = v205 | (v210 << 8);
      if (v265 <= 0x27)
      {
        v266 = v205 & 3;
        if ((v205 & 3) != 0)
        {
          v267 = 4 - v266;
          v268 = v205;
          v269 = v206;
          bzero(__src + v265, (4 - v266));
          v206 = v269;
          v55 = *type;
          LOBYTE(v205) = v268;
          v210 = 0;
          LOBYTE(v205) = v205 + v267;
        }
      }

      v270 = *(a1 + 2096);
      if ((v270 & 2) != 0 && *(a1 + 12) >= 4 && (*(a1 + 338) & 0x40) == 0)
      {
        v157 = v157 & 0xFFFFFE3F | ((*(a1 + 408) & 7u) << 6);
      }

      v271 = *(a1 + 336);
      v926 = v205;
      if ((v157 & 0x12) != 2)
      {
        if ((v157 & 0x12) == 0x12 && (v271 & 0x1000) != 0)
        {
          if ((v271 & 0x200002) != 0)
          {
            v272 = (v271 & 0x100000) != 0 && *(a1 + 234) < 2u;
            if ((v271 & 0x100001) != 0 && !v272)
            {
              v280 = *(a1 + 1064);
              if (v280)
              {
                ++*(v280 + 848);
                --*(v280 + 808);
                v270 = *(a1 + 2096);
              }

              v273 = v271 | 0x200;
              *(a1 + 336) = v271 | 0x200;
              if ((v270 & 1) == 0)
              {
                v273 = v271 & 0xFFFFFDF1 | 0x200;
                goto LABEL_642;
              }

              goto LABEL_643;
            }

            if ((*(a1 + 2096) & 1) != 0 && (v271 & 0x200000) != 0)
            {
              *(a1 + 408) = 0x500000005;
              *(a1 + 464) = 0;
              *(a1 + 440) = 0;
              if ((v271 & 0x10000) != 0)
              {
                *(a1 + 396) = 128;
                v157 = v157 | 0x80;
                v271 &= ~0x10000u;
                *(a1 + 336) = v271;
                v380 = *(a1 + 1064);
                if (v380)
                {
                  ++*(v380 + 816);
                }
              }

              else if ((v271 & 0x20000) != 0)
              {
                *(a1 + 396) = 192;
                v157 = v157 | 0xC0;
                v271 &= 0xFFFCFFFF;
                v396 = *(a1 + 1064);
                if (v396)
                {
                  ++*(v396 + 824);
                }
              }

              else if ((v271 & 0x40000) != 0)
              {
                *(a1 + 396) = 256;
                v157 = v157 | 0x100;
                v271 &= 0xFFF8FFFF;
                v412 = *(a1 + 1064);
                if (v412)
                {
                  ++*(v412 + 832);
                }
              }

              else
              {
                if ((v271 & 0x80000) == 0)
                {
                  if (*(a1 + 396))
                  {
                    v157 = v157 | *(a1 + 396);
                    goto LABEL_1524;
                  }

                  v932 = v206;
                  if ((*(v4 + 776) & 2) == 0)
                  {
                    __nwlog_tcp_log();
                    v695 = *(a1 + 336);
                    *buf = 136446722;
                    *&buf[4] = "tcp_output";
                    *&buf[12] = 2082;
                    *&buf[14] = v914;
                    *&buf[22] = 1024;
                    *v983 = v695;
                    v696 = _os_log_send_and_compose_impl();
                    LOBYTE(info.numer) = 16;
                    v981 = OS_LOG_TYPE_DEFAULT;
                    v956 = v696;
                    if (!__nwlog_fault())
                    {
                      goto LABEL_1520;
                    }

                    if (LOBYTE(info.numer) != 17)
                    {
                      if (v981 == OS_LOG_TYPE_INFO)
                      {
                        numer_low = __nw_create_backtrace_string();
                        v722 = __nwlog_tcp_log();
                        v723 = info.numer;
                        v950 = v722;
                        v724 = os_log_type_enabled(v722, info.numer);
                        if (numer_low)
                        {
                          if (v724)
                          {
                            v725 = *(a1 + 336);
                            *buf = 136446978;
                            *&buf[4] = "tcp_output";
                            *&buf[12] = 2082;
                            *&buf[14] = v914;
                            *&buf[22] = 1024;
                            *v983 = v725;
                            *&v983[4] = 2082;
                            *&v983[6] = numer_low;
                            _os_log_impl(&dword_1889BA000, v950, v723, "%{public}s %{public}s ECN flags (0x%x) not set correctly, dumping backtrace:%{public}s", buf, 0x26u);
                          }

                          free(numer_low);
                          goto LABEL_1520;
                        }

                        if (!v724)
                        {
                          goto LABEL_1520;
                        }

                        v730 = *(a1 + 336);
                        *buf = 136446722;
                        *&buf[4] = "tcp_output";
                        *&buf[12] = 2082;
                        *&buf[14] = v914;
                        *&buf[22] = 1024;
                        *v983 = v730;
                        v699 = v950;
                        v700 = v723;
                        v701 = "%{public}s %{public}s ECN flags (0x%x) not set correctly, no backtrace";
                      }

                      else
                      {
                        v726 = __nwlog_tcp_log();
                        numer_low = LOBYTE(info.numer);
                        if (!os_log_type_enabled(v726, info.numer))
                        {
                          goto LABEL_1520;
                        }

                        v727 = *(a1 + 336);
                        *buf = 136446722;
                        *&buf[4] = "tcp_output";
                        *&buf[12] = 2082;
                        *&buf[14] = v914;
                        *&buf[22] = 1024;
                        *v983 = v727;
                        v699 = v726;
                        v700 = numer_low;
                        v701 = "%{public}s %{public}s ECN flags (0x%x) not set correctly, backtrace limit exceeded";
                      }

LABEL_1519:
                      _os_log_impl(&dword_1889BA000, v699, v700, v701, buf, 0x1Cu);
                      goto LABEL_1520;
                    }

                    v697 = __nwlog_tcp_log();
                    numer_low = LOBYTE(info.numer);
                    if (os_log_type_enabled(v697, info.numer))
                    {
                      v698 = *(a1 + 336);
                      *buf = 136446722;
                      *&buf[4] = "tcp_output";
                      *&buf[12] = 2082;
                      *&buf[14] = v914;
                      *&buf[22] = 1024;
                      *v983 = v698;
                      v699 = v697;
                      v700 = numer_low;
                      v701 = "%{public}s %{public}s ECN flags (0x%x) not set correctly";
                      goto LABEL_1519;
                    }

LABEL_1520:
                    if (v956)
                    {
                      free(v956);
                    }

                    v271 = *(a1 + 336);
                  }

                  LOBYTE(v205) = v926;
                  v206 = v932;
                  goto LABEL_1524;
                }

                *(a1 + 396) = 384;
                v157 = v157 | 0x180;
                v271 &= 0xFFF0FFFF;
                v416 = *(a1 + 1064);
                if (v416)
                {
                  ++*(v416 + 840);
                }
              }

LABEL_1524:
              v273 = v271 | 0x100000;
              *(a1 + 336) = v271 | 0x100000;
              v731 = *(a1 + 2096);
              if (v731)
              {
                v273 = v271 | 0x100004;
                *(a1 + 336) = v271 | 0x100004;
                *(a1 + 2096) = v731 & 0xFD | (2 * ((~(v271 | 0x100004) & 0x300000) == 0));
              }
            }

            else if ((v271 & 2) != 0)
            {
              v157 = v157 | 0x40;
              v273 = v271 | 5;
              *(a1 + 336) = v271 | 5;
            }

            else
            {
              v273 = *(a1 + 336);
            }

            v732 = *(a1 + 1064);
            if (v732)
            {
              v732[50] = vaddq_s64(v732[50], vdupq_n_s64(1uLL));
            }

            goto LABEL_643;
          }

LABEL_608:
          v273 = *(a1 + 336);
          goto LABEL_643;
        }

LABEL_607:
        if ((*(a1 + 2096) & 2) == 0 || v157 != 16 || v113 || (v271 & 0x400000) == 0)
        {
          goto LABEL_608;
        }

        v274 = v157 & 0xFFFFFE10;
        if ((v271 & 0x10000) != 0)
        {
          v274 = v274 | 0x80;
        }

        else if ((v271 & 0x20000) != 0)
        {
          v274 = v274 | 0xC0;
          v271 &= 0xFFFCFFFF;
        }

        else if ((v271 & 0x40000) != 0)
        {
          v274 = v157 | 0x100;
          v271 &= 0xFFF8FFFF;
        }

        else if ((v271 & 0x80000) != 0)
        {
          v274 = v157 | 0x180;
          v271 &= 0xFFF0FFFF;
        }

        LOBYTE(v273) = v271;
        *(a1 + 336) = v271 & 0xFFBEFFFF;
        v157 = v274;
        goto LABEL_680;
      }

      if ((v271 & 0x1000) == 0)
      {
        goto LABEL_607;
      }

      v275 = (v271 & 0x100000) != 0 && *(a1 + 234) < 2u;
      if ((v271 & 0x100001) == 0 || v275)
      {
        if (*(a1 + 2096))
        {
          v277 = 0x100000;
        }

        else
        {
          v277 = 5;
        }

        if (*(a1 + 2096))
        {
          v278 = 448;
        }

        else
        {
          v278 = 192;
        }

        v279 = *(a1 + 1064);
        if (v279)
        {
          ++*(v279 + 768);
        }

        v157 = v157 | v278;
        v273 = v271 | v277 | 0x4000;
      }

      else
      {
        v276 = *(a1 + 1064);
        if (v276)
        {
          ++*(v276 + 792);
        }

        v273 = v271 & 0xFFFFFEFB | 0x100;
      }

LABEL_642:
      *(a1 + 336) = v273;
LABEL_643:
      if (v113 && (v273 & 8) != 0)
      {
        v281 = log;
        if (*(a1 + 100) - *(a1 + 96) < 0)
        {
          v281 = 1;
        }

        if ((v281 & 1) == 0)
        {
          v157 = v157 | 0x80;
          v273 &= ~8u;
          *(a1 + 336) = v273;
        }
      }

      else
      {
LABEL_680:
        if (!v113 && (v273 & 0x10) != 0)
        {
          v157 = v157 | 0x40;
          v289 = *(a1 + 1064);
          if (v289)
          {
            ++*(v289 + 872);
          }
        }
      }

      v290 = v205 | (v210 << 8);
      *v923 = 0;
      v291 = *(a1 + 160);
      if (v290 + v113 <= v291)
      {
        v295 = v113;
      }

      else
      {
        v157 = v157 & 0xFFFFFFFE;
        if (v943)
        {
          v292 = *(a1 + 684);
          if (!v292)
          {
            v292 = 0xFFFF;
          }

          v293 = v910 - v290 + v292 - 20;
          if (v113 <= v293)
          {
            v294 = v976;
            if ((*(a1 + 89) & 8) != 0)
            {
              v294 = 1;
            }

            v293 = v113;
          }

          else
          {
            v294 = 1;
          }

          v295 = v293 / (v291 - v290) * (v291 - v290);
          if (v293 == v295)
          {
            v296 = v294;
          }

          else
          {
            v296 = 1;
          }
        }

        else
        {
          v295 = v291 - v290;
          v296 = 1;
        }

        v940 = v296;
      }

      v976 = v295;
      *v948 = v290;
      if ((v157 & 2) != 0 || ((*(a1 + 2096) & 2) == 0 || (v273 & 4) == 0) && v970[298] == -1)
      {
        v931 = 0;
        v302 = *v938;
        if ((*v938 - *(a1 + 140)) >= 1)
        {
          goto LABEL_721;
        }

        v302 = *(a1 + 140);
        if (v206)
        {
LABEL_722:
          *v206 = bswap32(v302 + *(a1 + 288));
        }
      }

      else
      {
        v297 = v206;
        info = 0;
        v298 = mach_timebase_info(&info);
        if (v298)
        {
          v299 = v298;
          v300 = __nwlog_obj();
          numer_low = v157;
          if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "microuptime_ns";
            *&buf[12] = 1024;
            *&buf[14] = v299;
            _os_log_impl(&dword_1889BA000, v300, OS_LOG_TYPE_ERROR, "%{public}s mach_timebase_info returned %u", buf, 0x12u);
          }

          v301 = 0;
        }

        else
        {
          numer_low = v157;
          v301 = mach_absolute_time() * info.numer / info.denom;
        }

        v206 = v297;
        v303 = v976 & ~(v976 >> 31);
        v304 = *(a1 + 488);
        if (v304)
        {
          v305 = *(a1 + 484);
          if (v305 < *(a1 + 480))
          {
            *(a1 + 484) = v305 + v303;
            goto LABEL_715;
          }

          v339 = *(a1 + 472);
          if (v339)
          {
            v340 = 1000000000 * v305 / v339;
            if (v340 >= 0xFFFFFFFF)
            {
              v340 = 0xFFFFFFFFLL;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v413 = tcp_cc_algo_list[*(a1 + 272)];
              v414 = *(a1 + 148);
              v415 = *(a1 + 204) >> 5;
              *buf = 136315906;
              *&buf[4] = "tcp_pacer_get_packet_interval";
              *&buf[12] = 2080;
              *&buf[14] = v413;
              *&buf[22] = 1024;
              *v983 = v414;
              *&v983[4] = 1024;
              *&v983[6] = v415;
              _os_log_error_impl(&dword_1889BA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: pacer rate shouldn't be 0, CCA is %s (cwnd=%u, smoothed rtt=%u ms)", buf, 0x22u);
              v340 = 0;
              v304 = *(a1 + 488);
            }

            else
            {
              v340 = 0;
            }

            v206 = v297;
          }

          v55 = *type;
          v304 += v340;
          *(a1 + 488) = v304;
          *(a1 + 484) = v303;
          if (v301 > v304)
          {
            *(a1 + 488) = v301;
            v304 = v301;
          }
        }

        else
        {
          *(a1 + 488) = v301;
          *(a1 + 484) = v303;
          v304 = v301;
LABEL_715:
          v55 = *type;
        }

        if (v301 <= v304)
        {
          v306 = v304;
        }

        else
        {
          v306 = v301;
        }

        v931 = v306;
        v302 = *v938 + (v306 - v301) / 0xF4240u;
        v295 = v976;
        if ((v302 - *(a1 + 140)) <= 0)
        {
          v302 = *(a1 + 140);
          LODWORD(v157) = numer_low;
          LODWORD(v290) = *v948;
          if (v206)
          {
            goto LABEL_722;
          }
        }

        else
        {
          LODWORD(v157) = numer_low;
          LODWORD(v290) = *v948;
LABEL_721:
          *(a1 + 140) = v302;
          if (v206)
          {
            goto LABEL_722;
          }
        }
      }

      v307 = *(a1 + 748);
      if ((v307 & 8) != 0 && (v307 & 4) == 0)
      {
        v308 = *(a1 + 776);
        if (v308)
        {
          v309 = *(v4 + 384) - *(a1 + 96) + *(a1 + 92);
          if (v309 >= *(a1 + 148))
          {
            v309 = *(a1 + 148);
          }

          if (v309 >= *(a1 + 144))
          {
            v309 = *(a1 + 144);
          }

          if (v309 < *(v308 + 20))
          {
            v309 = 0;
          }

          *(v308 + 8) = v309;
          v310 = *(a1 + 776);
          v311 = v310[6];
          v312 = v310[2];
          if (v311)
          {
            if (v312 >= v311)
            {
              v312 = v310[6];
            }

            v310[2] = v312;
          }

          if (v312)
          {
            *(a1 + 748) |= 4u;
            *v310 = *(a1 + 96);
            v310[1] = *v938;
          }
        }
      }

      if (!*(v970 + 115))
      {
        v702 = __nwlog_obj();
        os_log_type_enabled(v702, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "tcp_output";
        v703 = _os_log_send_and_compose_impl();
        if (!__nwlog_should_abort())
        {
          free(v703);
          LODWORD(v290) = *v948;
          goto LABEL_739;
        }

        goto LABEL_1884;
      }

LABEL_739:
      LODWORD(v956) = v157;
      v315 = (v157 & 0xFFFFFFEF) == 0 && *(a1 + 269) != 0 && v113 < 1;
      if (!v315 || (v316 = *v938, (*(sysctls + 260) + *(a1 + 1892) - *v938) >= 0))
      {
        v317 = v290 + 20;
        if (v295)
        {
          goto LABEL_751;
        }

LABEL_782:
        if (*(a1 + 88))
        {
          v327 = *(a1 + 1064);
          if (v327)
          {
            ++*(v327 + 48);
          }
        }

        else
        {
          v326 = *(a1 + 1064);
          if ((v956 & 7) != 0)
          {
            if (v326)
            {
              ++*(v326 + 88);
            }
          }

          else if (v326)
          {
            ++*(v326 + 80);
          }
        }

        if (!v315 || (*(a1 + 751) & 2) == 0 || !*(a1 + 664))
        {
          goto LABEL_969;
        }

        v20 = **(*(a1 + 656) + 8);
        if (v20)
        {
          v367 = *(v20 + 52);
          goto LABEL_860;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_effective_length";
        v740 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1566;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v741 = __nwlog_obj();
          v742 = info.numer;
          if (os_log_type_enabled(v741, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_effective_length";
            v743 = v741;
            v744 = v742;
            v745 = "%{public}s called with null frame";
            goto LABEL_1565;
          }

          goto LABEL_1566;
        }

        if (v981 != OS_LOG_TYPE_INFO)
        {
          v759 = __nwlog_obj();
          v760 = info.numer;
          if (!os_log_type_enabled(v759, info.numer))
          {
            goto LABEL_1566;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_effective_length";
          v743 = v759;
          v744 = v760;
          v745 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_1565:
          _os_log_impl(&dword_1889BA000, v743, v744, v745, buf, 0xCu);
          goto LABEL_1566;
        }

        v753 = __nw_create_backtrace_string();
        v754 = __nwlog_obj();
        v755 = info.numer;
        v756 = os_log_type_enabled(v754, info.numer);
        if (v753)
        {
          if (v756)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_effective_length";
            *&buf[12] = 2082;
            *&buf[14] = v753;
            _os_log_impl(&dword_1889BA000, v754, v755, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v753);
          goto LABEL_1566;
        }

        if (v756)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_effective_length";
          v743 = v754;
          v744 = v755;
          v745 = "%{public}s called with null frame, no backtrace";
          goto LABEL_1565;
        }

LABEL_1566:
        if (v740)
        {
          free(v740);
        }

        v367 = 0;
        v4 = v944;
        v55 = *type;
LABEL_860:
        if (v367 < *(v20 + 56) + v317)
        {
          goto LABEL_969;
        }

        v368 = *(a1 + 1888);
        if ((*(v20 + 204) & 0x40) == 0)
        {
          v369 = *(v20 + 192);
          goto LABEL_958;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_get_compression_generation_count";
        v374 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_955;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v375 = __nwlog_obj();
          v376 = info.numer;
          if (os_log_type_enabled(v375, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_get_compression_generation_count";
            v377 = v375;
            v378 = v376;
            v379 = "%{public}s Attempt to get generation-count on a chain-member";
            goto LABEL_954;
          }

          goto LABEL_955;
        }

        if (v981 != OS_LOG_TYPE_INFO)
        {
          v410 = __nwlog_obj();
          v411 = info.numer;
          if (!os_log_type_enabled(v410, info.numer))
          {
            goto LABEL_955;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_get_compression_generation_count";
          v377 = v410;
          v378 = v411;
          v379 = "%{public}s Attempt to get generation-count on a chain-member, backtrace limit exceeded";
LABEL_954:
          _os_log_impl(&dword_1889BA000, v377, v378, v379, buf, 0xCu);
          goto LABEL_955;
        }

        v393 = __nw_create_backtrace_string();
        v394 = __nwlog_obj();
        v958 = info.numer;
        v395 = os_log_type_enabled(v394, info.numer);
        if (v393)
        {
          if (v395)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_get_compression_generation_count";
            *&buf[12] = 2082;
            *&buf[14] = v393;
            _os_log_impl(&dword_1889BA000, v394, v958, "%{public}s Attempt to get generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v393);
          goto LABEL_955;
        }

        if (v395)
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_get_compression_generation_count";
          v377 = v394;
          v378 = v958;
          v379 = "%{public}s Attempt to get generation-count on a chain-member, no backtrace";
          goto LABEL_954;
        }

LABEL_955:
        if (v374)
        {
          free(v374);
        }

        v369 = 0;
LABEL_958:
        v106 = v368 == v369;
        v4 = v944;
        if (!v106)
        {
LABEL_969:
          v422 = *(v4 + 24);
          v423 = *(v422 + 32);
          *buf = 0;
          *&buf[8] = buf;
          if ((*(*(v423 + 24) + 88))(v423, v422))
          {
            v20 = *buf;
            if (*buf)
            {
              v424 = *(*buf + 40);
              if (v424 == buf)
              {
                v425 = (*buf + 32);
                v434 = *(*buf + 32);
                if (v434)
                {
                  *(v434 + 40) = v424;
                  v424 = *(v20 + 40);
                }

                *v424 = v434;
              }

              else
              {
                v426 = *(*buf + 16);
                v427 = *(*buf + 24);
                v425 = (*buf + 16);
                if (v426)
                {
                  *(v426 + 24) = v427;
                }

                *v427 = v426;
              }

              *v425 = 0;
              v425[1] = 0;
              goto LABEL_983;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_claim_internal";
            v428 = _os_log_send_and_compose_impl();
            LOBYTE(info.numer) = 16;
            v981 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault())
            {
              if (LOBYTE(info.numer) != 17)
              {
                if (v981 == OS_LOG_TYPE_INFO)
                {
                  v454 = __nw_create_backtrace_string();
                  v455 = __nwlog_obj();
                  v456 = info.numer;
                  v457 = os_log_type_enabled(v455, info.numer);
                  if (v454)
                  {
                    if (v457)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_frame_claim_internal";
                      *&buf[12] = 2082;
                      *&buf[14] = v454;
                      _os_log_impl(&dword_1889BA000, v455, v456, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v454);
                    v4 = v944;
                    goto LABEL_1012;
                  }

                  v4 = v944;
                  if (!v457)
                  {
                    goto LABEL_1012;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_claim_internal";
                  v431 = v455;
                  v432 = v456;
                  v433 = "%{public}s called with null frame, no backtrace";
                }

                else
                {
                  v458 = __nwlog_obj();
                  v459 = info.numer;
                  if (!os_log_type_enabled(v458, info.numer))
                  {
                    goto LABEL_1012;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_claim_internal";
                  v431 = v458;
                  v432 = v459;
                  v433 = "%{public}s called with null frame, backtrace limit exceeded";
                }

LABEL_1011:
                _os_log_impl(&dword_1889BA000, v431, v432, v433, buf, 0xCu);
                goto LABEL_1012;
              }

              v429 = __nwlog_obj();
              v430 = info.numer;
              if (os_log_type_enabled(v429, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_claim_internal";
                v431 = v429;
                v432 = v430;
                v433 = "%{public}s called with null frame";
                goto LABEL_1011;
              }
            }

LABEL_1012:
            if (v428)
            {
              free(v428);
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_collapse";
            v460 = _os_log_send_and_compose_impl();
            LOBYTE(info.numer) = 16;
            v981 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault())
            {
              if (LOBYTE(info.numer) != 17)
              {
                if (v981 == OS_LOG_TYPE_INFO)
                {
                  v466 = __nw_create_backtrace_string();
                  v467 = __nwlog_obj();
                  v468 = info.numer;
                  v469 = os_log_type_enabled(v467, info.numer);
                  if (v466)
                  {
                    if (v469)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_frame_collapse";
                      *&buf[12] = 2082;
                      *&buf[14] = v466;
                      _os_log_impl(&dword_1889BA000, v467, v468, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v466);
                    v4 = v944;
                    goto LABEL_1028;
                  }

                  v4 = v944;
                  if (!v469)
                  {
                    goto LABEL_1028;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_collapse";
                  v463 = v467;
                  v464 = v468;
                  v465 = "%{public}s called with null frame, no backtrace";
                }

                else
                {
                  v470 = __nwlog_obj();
                  v471 = info.numer;
                  if (!os_log_type_enabled(v470, info.numer))
                  {
                    goto LABEL_1028;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_collapse";
                  v463 = v470;
                  v464 = v471;
                  v465 = "%{public}s called with null frame, backtrace limit exceeded";
                }

LABEL_1027:
                _os_log_impl(&dword_1889BA000, v463, v464, v465, buf, 0xCu);
                goto LABEL_1028;
              }

              v461 = __nwlog_obj();
              v462 = info.numer;
              if (os_log_type_enabled(v461, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_collapse";
                v463 = v461;
                v464 = v462;
                v465 = "%{public}s called with null frame";
                goto LABEL_1027;
              }
            }

LABEL_1028:
            if (v460)
            {
              free(v460);
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_unclaim_internal";
            v472 = _os_log_send_and_compose_impl();
            LOBYTE(info.numer) = 16;
            v981 = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault())
            {
              if (LOBYTE(info.numer) != 17)
              {
                if (v981 == OS_LOG_TYPE_INFO)
                {
                  v478 = __nw_create_backtrace_string();
                  v479 = __nwlog_obj();
                  v480 = info.numer;
                  v481 = os_log_type_enabled(v479, info.numer);
                  if (v478)
                  {
                    if (v481)
                    {
                      *buf = 136446466;
                      *&buf[4] = "__nw_frame_unclaim_internal";
                      *&buf[12] = 2082;
                      *&buf[14] = v478;
                      _os_log_impl(&dword_1889BA000, v479, v480, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v478);
                    v4 = v944;
                    goto LABEL_1044;
                  }

                  v4 = v944;
                  if (!v481)
                  {
                    goto LABEL_1044;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_unclaim_internal";
                  v475 = v479;
                  v476 = v480;
                  v477 = "%{public}s called with null frame, no backtrace";
                }

                else
                {
                  v482 = __nwlog_obj();
                  v483 = info.numer;
                  if (!os_log_type_enabled(v482, info.numer))
                  {
                    goto LABEL_1044;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_unclaim_internal";
                  v475 = v482;
                  v476 = v483;
                  v477 = "%{public}s called with null frame, backtrace limit exceeded";
                }

LABEL_1043:
                _os_log_impl(&dword_1889BA000, v475, v476, v477, buf, 0xCu);
                goto LABEL_1044;
              }

              v473 = __nwlog_obj();
              v474 = info.numer;
              if (os_log_type_enabled(v473, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_unclaim_internal";
                v475 = v473;
                v476 = v474;
                v477 = "%{public}s called with null frame";
                goto LABEL_1043;
              }
            }

LABEL_1044:
            if (v472)
            {
              free(v472);
            }

            v20 = 0;
            v484 = 1;
            v351 = v956;
            v352 = v976;
            if (!*(v4 + 24))
            {
LABEL_1076:
              if (v20)
              {
                goto LABEL_1077;
              }

              v352 = 0;
LABEL_1613:
              if ((*(v4 + 776) & 2) == 0)
              {
                v785 = __nwlog_tcp_log();
                if (os_log_type_enabled(v785, OS_LOG_TYPE_INFO))
                {
                  *buf = 136446466;
                  *&buf[4] = "tcp_output";
                  *&buf[12] = 2082;
                  *&buf[14] = v914;
                  _os_log_impl(&dword_1889BA000, v785, OS_LOG_TYPE_INFO, "%{public}s %{public}s output buffer is no longer valid", buf, 0x16u);
                }
              }

              v976 = v352;
              LOBYTE(v956) = v351;
              if (v20)
              {
                v786 = *(v20 + 80);
                if (v786)
                {
                  v787 = *(v20 + 88);
                  *(v20 + 80) = 0;
                  *(v20 + 88) = 0;
                  v788 = v20;
                  goto LABEL_1654;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "__nw_frame_finalize";
                v861 = _os_log_send_and_compose_impl();
                LOBYTE(info.numer) = 16;
                v981 = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault())
                {
                  if (LOBYTE(info.numer) == 17)
                  {
                    v865 = __nwlog_obj();
                    v863 = v865;
                    v864 = info.numer;
                    goto LABEL_1832;
                  }

                  if (v981 == OS_LOG_TYPE_INFO)
                  {
                    v867 = __nw_create_backtrace_string();
                    v871 = __nwlog_obj();
                    v869 = v871;
                    v870 = info.numer;
                    goto LABEL_1845;
                  }

                  v876 = __nwlog_obj();
                  v863 = v876;
                  v864 = info.numer;
LABEL_1856:
                  if (os_log_type_enabled(v876, v864))
                  {
                    *buf = 136446210;
                    *&buf[4] = "__nw_frame_finalize";
                    v866 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
LABEL_1858:
                    v877 = v863;
                    v878 = v864;
LABEL_1859:
                    _os_log_impl(&dword_1889BA000, v877, v878, v866, buf, 0xCu);
                  }
                }

LABEL_1860:
                if (v861)
                {
                  free(v861);
                }

LABEL_1655:
                v761 = 6;
                goto LABEL_1656;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v861 = _os_log_send_and_compose_impl();
              LOBYTE(info.numer) = 16;
              v981 = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault())
              {
                goto LABEL_1860;
              }

              if (LOBYTE(info.numer) == 17)
              {
                v862 = __nwlog_obj();
                v863 = v862;
                v864 = info.numer;
                goto LABEL_1827;
              }

              if (v981 == OS_LOG_TYPE_INFO)
              {
                v867 = __nw_create_backtrace_string();
                v868 = __nwlog_obj();
                v869 = v868;
                v870 = info.numer;
                goto LABEL_1840;
              }

              v875 = __nwlog_obj();
              v863 = v875;
              v864 = info.numer;
LABEL_1853:
              if (os_log_type_enabled(v875, v864))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_finalize";
                v866 = "%{public}s called with null frame, backtrace limit exceeded";
                goto LABEL_1858;
              }

              goto LABEL_1860;
            }

LABEL_1069:
            v497 = nw_protocol_tcp_get_all_stats();
            if (v497)
            {
              ++*(v497 + 32);
            }

            if (!*(v4 + 24))
            {
              goto LABEL_1076;
            }

            v498 = nw_protocol_tcp_get_all_stats();
            if (!v498)
            {
              goto LABEL_1076;
            }

            if (!v484)
            {
              v499 = *(v20 + 52);
LABEL_1075:
              *(v498 + 40) += v499;
              goto LABEL_1076;
            }

            v733 = v498;
            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "__nw_frame_effective_length";
            v734 = _os_log_send_and_compose_impl();
            LOBYTE(info.numer) = 16;
            v981 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault())
            {
              goto LABEL_1560;
            }

            if (LOBYTE(info.numer) == 17)
            {
              v735 = __nwlog_obj();
              v736 = info.numer;
              if (os_log_type_enabled(v735, info.numer))
              {
                *buf = 136446210;
                *&buf[4] = "__nw_frame_effective_length";
                v737 = v735;
                v738 = v736;
                v739 = "%{public}s called with null frame";
                goto LABEL_1559;
              }

              goto LABEL_1560;
            }

            if (v981 == OS_LOG_TYPE_INFO)
            {
              v746 = __nw_create_backtrace_string();
              v747 = __nwlog_obj();
              v748 = info.numer;
              v749 = os_log_type_enabled(v747, info.numer);
              if (v746)
              {
                if (v749)
                {
                  *buf = 136446466;
                  *&buf[4] = "__nw_frame_effective_length";
                  *&buf[12] = 2082;
                  *&buf[14] = v746;
                  _os_log_impl(&dword_1889BA000, v747, v748, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v746);
                goto LABEL_1560;
              }

              if (!v749)
              {
LABEL_1560:
                if (v734)
                {
                  free(v734);
                }

                v499 = 0;
                v498 = v733;
                v4 = v944;
                v351 = v956;
                v352 = v976;
                v55 = *type;
                goto LABEL_1075;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_effective_length";
              v737 = v747;
              v738 = v748;
              v739 = "%{public}s called with null frame, no backtrace";
            }

            else
            {
              v757 = __nwlog_obj();
              v758 = info.numer;
              if (!os_log_type_enabled(v757, info.numer))
              {
                goto LABEL_1560;
              }

              *buf = 136446210;
              *&buf[4] = "__nw_frame_effective_length";
              v737 = v757;
              v738 = v758;
              v739 = "%{public}s called with null frame, backtrace limit exceeded";
            }

LABEL_1559:
            _os_log_impl(&dword_1889BA000, v737, v738, v739, buf, 0xCu);
            goto LABEL_1560;
          }

          v976 = 0;
LABEL_1761:
          v761 = 55;
          goto LABEL_1656;
        }

        v417 = *(v20 + 32);
        v418 = *(v20 + 40);
        v419 = (v417 + 40);
        if (!v417)
        {
          v419 = (a1 + 656);
        }

        *v419 = v418;
        *v418 = v417;
        *(v20 + 32) = 0;
        *(v20 + 40) = 0;
        --*(a1 + 664);
        if (*(v944 + 24))
        {
          v420 = nw_protocol_tcp_get_all_stats();
          if (v420)
          {
            --*(v420 + 32);
          }

          if (*(v944 + 24))
          {
            v421 = nw_protocol_tcp_get_all_stats();
            if (v421)
            {
              *(v421 + 40) -= *(v20 + 52);
            }
          }
        }

        ++*(a1 + 1896);
LABEL_983:
        if ((*(v20 + 204) & 0x80) != 0)
        {
          *(v20 + 196) -= v317;
        }

        v435 = *(v20 + 52);
        v436 = *(v20 + 56) + v317;
        v437 = *(v20 + 60);
        if (v436 <= v435 - v437)
        {
          *(v20 + 56) = v436;
          *(v20 + 60) = v437;
        }

        else
        {
          v438 = __nwlog_obj();
          v439 = os_log_type_enabled(v438, OS_LOG_TYPE_ERROR);
          v435 = *(v20 + 52);
          if (v439)
          {
            *buf = 136446978;
            *&buf[4] = "__nw_frame_claim_internal";
            *&buf[12] = 1024;
            *&buf[14] = v436;
            *&buf[18] = 1024;
            *&buf[20] = v435;
            *v983 = 1024;
            *&v983[2] = v437;
            _os_log_impl(&dword_1889BA000, v438, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
            v435 = *(v20 + 52);
          }
        }

        v352 = v976;
        if (v435)
        {
          v441 = *(v20 + 56);
          v440 = *(v20 + 60);
          v442 = (v435 - (v440 + v441));
          if (v435 != v440 + v441)
          {
            if (v440)
            {
              v443 = *(v20 + 112);
              if (v443)
              {
                memmove((v443 + v441), (v443 + v441 + v442), v440);
                v435 = *(v20 + 52);
              }
            }

            *(v20 + 52) = v435 - v442;
            if ((*(v20 + 204) & 0x80) != 0)
            {
              v444 = *(v20 + 196);
              v253 = v444 >= v442;
              v445 = v444 - v442;
              *(v20 + 196) = v445;
              if (!v253 || v445 >= 0x10000)
              {
                __nwlog_obj();
                v446 = *(v20 + 196);
                *buf = 136446978;
                *&buf[4] = "__nw_frame_collapse";
                *&buf[12] = 2082;
                *&buf[14] = "frame->aggregate_buffer_length";
                *&buf[22] = 2048;
                *v983 = v442;
                *&v983[8] = 2048;
                *&v983[10] = v446;
                v447 = _os_log_send_and_compose_impl();
                LOBYTE(info.numer) = 16;
                v981 = OS_LOG_TYPE_DEFAULT;
                if (!__nwlog_fault())
                {
                  goto LABEL_1058;
                }

                if (LOBYTE(info.numer) != 17)
                {
                  if (v981 == OS_LOG_TYPE_INFO)
                  {
                    v485 = __nw_create_backtrace_string();
                    v486 = __nwlog_obj();
                    v959 = info.numer;
                    v487 = os_log_type_enabled(v486, info.numer);
                    if (v485)
                    {
                      if (v487)
                      {
                        v488 = *(v20 + 196);
                        *buf = 136447234;
                        *&buf[4] = "__nw_frame_collapse";
                        *&buf[12] = 2082;
                        *&buf[14] = "frame->aggregate_buffer_length";
                        *&buf[22] = 2048;
                        *v983 = v442;
                        *&v983[8] = 2048;
                        *&v983[10] = v488;
                        *&v983[18] = 2082;
                        *&v983[20] = v485;
                        _os_log_impl(&dword_1889BA000, v486, v959, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                      }

                      free(v485);
                      goto LABEL_1058;
                    }

                    if (!v487)
                    {
                      goto LABEL_1058;
                    }

                    v492 = *(v20 + 196);
                    *buf = 136446978;
                    *&buf[4] = "__nw_frame_collapse";
                    *&buf[12] = 2082;
                    *&buf[14] = "frame->aggregate_buffer_length";
                    *&buf[22] = 2048;
                    *v983 = v442;
                    *&v983[8] = 2048;
                    *&v983[10] = v492;
                    v451 = v486;
                    v452 = v959;
                    v453 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                  }

                  else
                  {
                    v489 = __nwlog_obj();
                    v490 = info.numer;
                    if (!os_log_type_enabled(v489, info.numer))
                    {
                      goto LABEL_1058;
                    }

                    v491 = *(v20 + 196);
                    *buf = 136446978;
                    *&buf[4] = "__nw_frame_collapse";
                    *&buf[12] = 2082;
                    *&buf[14] = "frame->aggregate_buffer_length";
                    *&buf[22] = 2048;
                    *v983 = v442;
                    *&v983[8] = 2048;
                    *&v983[10] = v491;
                    v451 = v489;
                    v452 = v490;
                    v453 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                  }

LABEL_1057:
                  _os_log_impl(&dword_1889BA000, v451, v452, v453, buf, 0x2Au);
                  goto LABEL_1058;
                }

                v448 = __nwlog_obj();
                v449 = info.numer;
                if (os_log_type_enabled(v448, info.numer))
                {
                  v450 = *(v20 + 196);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_collapse";
                  *&buf[12] = 2082;
                  *&buf[14] = "frame->aggregate_buffer_length";
                  *&buf[22] = 2048;
                  *v983 = v442;
                  *&v983[8] = 2048;
                  *&v983[10] = v450;
                  v451 = v448;
                  v452 = v449;
                  v453 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
                  goto LABEL_1057;
                }

LABEL_1058:
                if (v447)
                {
                  free(v447);
                }

                *(v20 + 196) = 0;
                v352 = v976;
              }
            }
          }
        }

        if ((*(v20 + 204) & 0x80) != 0)
        {
          *(v20 + 196) += v317;
        }

        v493 = *(v20 + 56);
        v253 = v493 >= v317;
        v494 = v493 - v317;
        v4 = v944;
        if (v253)
        {
          v484 = 0;
          *(v20 + 56) = v494;
        }

        else
        {
          v495 = __nwlog_obj();
          if (os_log_type_enabled(v495, OS_LOG_TYPE_ERROR))
          {
            v496 = *(v20 + 56);
            *buf = 136446722;
            *&buf[4] = "__nw_frame_unclaim_internal";
            *&buf[12] = 1024;
            *&buf[14] = v317;
            *&buf[18] = 1024;
            *&buf[20] = v496;
            _os_log_impl(&dword_1889BA000, v495, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", buf, 0x18u);
          }

          v484 = 0;
        }

        v351 = v956;
        if (!*(v944 + 24))
        {
          goto LABEL_1076;
        }

        goto LABEL_1069;
      }

      v324 = *(a1 + 1888);
      if ((v324 + 1) > 1)
      {
        v325 = v324 + 1;
      }

      else
      {
        v325 = 1;
      }

      *(a1 + 1888) = v325;
      *(a1 + 1892) = v316;
      v317 = v290 + 20;
      if (!v295)
      {
        goto LABEL_782;
      }

LABEL_751:
      if (!*(a1 + 688) && *(a1 + 100) == *(a1 + 92))
      {
        *(a1 + 688) = v295 + v290;
      }

      if (v295 != 1 || (*(a1 + 748) & 0x8000) == 0)
      {
        v320 = *(a1 + 1064);
        if (((*(a1 + 100) - *(a1 + 96) >= 0) & ~log) != 0)
        {
          if (v320)
          {
            v328.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v328.i64[1] = v295;
            *(v320 + 8) = vaddq_s64(*(v320 + 8), v328);
          }

          v329 = v970[31];
          ++*(v329 + 16);
          if (HIDWORD(v928))
          {
            ++*(v970[32] + 16);
          }

          if (v928)
          {
            ++*(v970[33] + 16);
          }

          if (v942)
          {
            ++*(v970[34] + 16);
          }

          *(v329 + 24) += v295;
          if (HIDWORD(v928))
          {
            *(v970[32] + 24) += v295;
          }

          if (v928)
          {
            *(v970[33] + 24) += v295;
          }

          if (v942)
          {
            *(v970[34] + 24) += v295;
          }

          v319 = (a1 + 360);
          if ((*(a1 + 336) & 4) == 0)
          {
            goto LABEL_804;
          }
        }

        else
        {
          if (v320)
          {
            v321.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v321.i64[1] = v295;
            *(v320 + 24) = vaddq_s64(*(v320 + 24), v321);
          }

          v322 = v970[31];
          ++*(v322 + 16);
          if (HIDWORD(v928))
          {
            ++*(v970[32] + 16);
          }

          if (v928)
          {
            ++*(v970[33] + 16);
          }

          if (v942)
          {
            ++*(v970[34] + 16);
          }

          *(v322 + 24) += v295;
          if (HIDWORD(v928))
          {
            *(v970[32] + 24) += v295;
          }

          if (v928)
          {
            *(v970[33] + 24) += v295;
          }

          if (v942)
          {
            *(v970[34] + 24) += v295;
          }

          *(a1 + 704) += v295;
          ++*(a1 + 712);
          if (*(v4 + 24))
          {
            v323 = nw_protocol_tcp_get_all_stats();
            if (v323)
            {
              *(v323 + 56) += v295;
            }
          }

          v319 = (a1 + 384);
          if ((*(a1 + 336) & 4) == 0)
          {
            goto LABEL_804;
          }
        }

LABEL_803:
        ++*v319;
        goto LABEL_804;
      }

      v318 = *(a1 + 1064);
      if (v318)
      {
        v319 = (v318 + 72);
        goto LABEL_803;
      }

LABEL_804:
      if (!*(v4 + 400) || v957 < 0)
      {
        if (!v20 || (*(v4 + 776) & 2) != 0)
        {
          goto LABEL_1733;
        }

        __nwlog_tcp_log();
        v770 = *(v4 + 384);
        v771 = tcpstates[*(a1 + 12)];
        if (*(v4 + 400))
        {
          v772 = "not";
        }

        else
        {
          v772 = "is";
        }

        *buf = 136447746;
        *&buf[4] = "tcp_output";
        *&buf[12] = 2082;
        *&buf[14] = v914;
        *&buf[22] = 2082;
        *v983 = v772;
        *&v983[8] = 1024;
        *&v983[10] = v770;
        *&v983[14] = 1024;
        *&v983[16] = v957;
        *&v983[20] = 1024;
        *&v983[22] = v295;
        *&v983[26] = 2082;
        v984 = v771;
        v773 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1731;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v774 = __nwlog_tcp_log();
          v775 = info.numer;
          if (os_log_type_enabled(v774, info.numer))
          {
            if (*(v944 + 400))
            {
              v776 = "not";
            }

            else
            {
              v776 = "is";
            }

            v777 = *(v944 + 384);
            v778 = tcpstates[*(a1 + 12)];
            *buf = 136447746;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v914;
            *&buf[22] = 2082;
            *v983 = v776;
            *&v983[8] = 1024;
            *&v983[10] = v777;
            *&v983[14] = 1024;
            *&v983[16] = v957;
            *&v983[20] = 1024;
            *&v983[22] = v976;
            *&v983[26] = 2082;
            v984 = v778;
            v779 = "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s]";
            goto LABEL_1730;
          }

          goto LABEL_1731;
        }

        if (v981 == OS_LOG_TYPE_INFO)
        {
          v793 = __nw_create_backtrace_string();
          v774 = __nwlog_tcp_log();
          v775 = info.numer;
          v794 = os_log_type_enabled(v774, info.numer);
          if (v793)
          {
            if (v794)
            {
              if (*(v944 + 400))
              {
                v795 = "not";
              }

              else
              {
                v795 = "is";
              }

              v796 = *(v944 + 384);
              v797 = tcpstates[*(a1 + 12)];
              *buf = 136448002;
              *&buf[4] = "tcp_output";
              *&buf[12] = 2082;
              *&buf[14] = v914;
              *&buf[22] = 2082;
              *v983 = v795;
              *&v983[8] = 1024;
              *&v983[10] = v796;
              *&v983[14] = 1024;
              *&v983[16] = v957;
              *&v983[20] = 1024;
              *&v983[22] = v976;
              *&v983[26] = 2082;
              v984 = v797;
              LOWORD(v985[0]) = 2082;
              *(v985 + 2) = v793;
              _os_log_impl(&dword_1889BA000, v774, v775, "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s], dumping backtrace:%{public}s", buf, 0x46u);
            }

            free(v793);
            goto LABEL_1731;
          }

          if (!v794)
          {
LABEL_1731:
            if (v773)
            {
              free(v773);
            }

            goto LABEL_1733;
          }

          if (*(v944 + 400))
          {
            v826 = "not";
          }

          else
          {
            v826 = "is";
          }

          v827 = *(v944 + 384);
          v828 = tcpstates[*(a1 + 12)];
          *buf = 136447746;
          *&buf[4] = "tcp_output";
          *&buf[12] = 2082;
          *&buf[14] = v914;
          *&buf[22] = 2082;
          *v983 = v826;
          *&v983[8] = 1024;
          *&v983[10] = v827;
          *&v983[14] = 1024;
          *&v983[16] = v957;
          *&v983[20] = 1024;
          *&v983[22] = v976;
          *&v983[26] = 2082;
          v984 = v828;
          v779 = "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s], no backtrace";
        }

        else
        {
          v774 = __nwlog_tcp_log();
          v775 = info.numer;
          if (!os_log_type_enabled(v774, info.numer))
          {
            goto LABEL_1731;
          }

          if (*(v944 + 400))
          {
            v823 = "not";
          }

          else
          {
            v823 = "is";
          }

          v824 = *(v944 + 384);
          v825 = tcpstates[*(a1 + 12)];
          *buf = 136447746;
          *&buf[4] = "tcp_output";
          *&buf[12] = 2082;
          *&buf[14] = v914;
          *&buf[22] = 2082;
          *v983 = v823;
          *&v983[8] = 1024;
          *&v983[10] = v824;
          *&v983[14] = 1024;
          *&v983[16] = v957;
          *&v983[20] = 1024;
          *&v983[22] = v976;
          *&v983[26] = 2082;
          v984 = v825;
          v779 = "%{public}s %{public}s m is non-NULL but there is nothing to send so_snd.sb_mb %{public}s empty so_snd.sb_cc %u off %d len %d t_state[%{public}s], backtrace limit exceeded";
        }

LABEL_1730:
        _os_log_impl(&dword_1889BA000, v774, v775, v779, buf, 0x3Cu);
        goto LABEL_1731;
      }

      v330 = *(v4 + 24);
      v331 = *(v330 + 32);
      info = 0;
      p_info = &info;
      v332 = v295 + v317;
      if (!(*(*(v331 + 24) + 88))(v331, v330))
      {
        if ((*(v4 + 776) & 2) == 0)
        {
          v833 = __nwlog_tcp_log();
          if (os_log_type_enabled(v833, OS_LOG_TYPE_INFO))
          {
            *buf = 136446978;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v914;
            *&buf[22] = 1024;
            *v983 = v295 + v317;
            *&v983[4] = 1024;
            *&v983[6] = v943;
            _os_log_impl(&dword_1889BA000, v833, OS_LOG_TYPE_INFO, "%{public}s %{public}s no output frames len %d, TSO %d", buf, 0x22u);
            v761 = 55;
            goto LABEL_1656;
          }
        }

        goto LABEL_1761;
      }

      v20 = info;
      if (!*&info)
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_claim_internal";
        v780 = _os_log_send_and_compose_impl();
        v981 = OS_LOG_TYPE_ERROR;
        v980 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_1645;
        }

        if (v981 != OS_LOG_TYPE_FAULT)
        {
          if (v980 == 1)
          {
            v789 = __nw_create_backtrace_string();
            v790 = __nwlog_obj();
            v791 = v981;
            v792 = os_log_type_enabled(v790, v981);
            if (v789)
            {
              if (v792)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_frame_claim_internal";
                *&buf[12] = 2082;
                *&buf[14] = v789;
                _os_log_impl(&dword_1889BA000, v790, v791, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v789);
              goto LABEL_1645;
            }

            if (!v792)
            {
              goto LABEL_1645;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_claim_internal";
            v783 = "%{public}s called with null frame, no backtrace";
            v800 = v790;
            v801 = v791;
          }

          else
          {
            v781 = __nwlog_obj();
            v782 = v981;
            if (!os_log_type_enabled(v781, v981))
            {
              goto LABEL_1645;
            }

            *buf = 136446210;
            *&buf[4] = "__nw_frame_claim_internal";
            v783 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_1643:
            v800 = v781;
            v801 = v782;
          }

          _os_log_impl(&dword_1889BA000, v800, v801, v783, buf, 0xCu);
          goto LABEL_1645;
        }

        v781 = __nwlog_obj();
        v782 = v981;
        if (os_log_type_enabled(v781, v981))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_claim_internal";
          v783 = "%{public}s called with null frame";
          goto LABEL_1643;
        }

LABEL_1645:
        if (v780)
        {
          free(v780);
        }

        v784 = 0;
LABEL_1648:
        if ((*(v4 + 776) & 2) == 0)
        {
          v802 = __nwlog_tcp_log();
          if (os_log_type_enabled(v802, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v914;
            _os_log_impl(&dword_1889BA000, v802, OS_LOG_TYPE_INFO, "%{public}s %{public}s output buffer is no longer valid", buf, 0x16u);
          }
        }

        if (v20)
        {
          v786 = *(v784 + 80);
          if (v786)
          {
            v787 = *(v784 + 88);
            *(v784 + 80) = 0;
            *(v784 + 88) = 0;
            v788 = v784;
LABEL_1654:
            v786(v788, 0, v787);
            goto LABEL_1655;
          }

          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v861 = _os_log_send_and_compose_impl();
          v981 = OS_LOG_TYPE_ERROR;
          v980 = 0;
          if (!__nwlog_fault())
          {
            goto LABEL_1860;
          }

          if (v981 == OS_LOG_TYPE_FAULT)
          {
            v865 = __nwlog_obj();
            v863 = v865;
            v864 = v981;
LABEL_1832:
            if (os_log_type_enabled(v865, v864))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v866 = "%{public}s called with null frame->finalizer";
              goto LABEL_1858;
            }

            goto LABEL_1860;
          }

          if (v980 != 1)
          {
            v876 = __nwlog_obj();
            v863 = v876;
            v864 = v981;
            goto LABEL_1856;
          }

          v867 = __nw_create_backtrace_string();
          v871 = __nwlog_obj();
          v869 = v871;
          v870 = v981;
LABEL_1845:
          v874 = os_log_type_enabled(v871, v870);
          if (v867)
          {
            if (v874)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v867;
              v873 = "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s";
LABEL_1848:
              _os_log_impl(&dword_1889BA000, v869, v870, v873, buf, 0x16u);
            }

            goto LABEL_1849;
          }

          if (!v874)
          {
            goto LABEL_1860;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v866 = "%{public}s called with null frame->finalizer, no backtrace";
        }

        else
        {
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v861 = _os_log_send_and_compose_impl();
          v981 = OS_LOG_TYPE_ERROR;
          v980 = 0;
          if (!__nwlog_fault())
          {
            goto LABEL_1860;
          }

          if (v981 == OS_LOG_TYPE_FAULT)
          {
            v862 = __nwlog_obj();
            v863 = v862;
            v864 = v981;
LABEL_1827:
            if (os_log_type_enabled(v862, v864))
            {
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v866 = "%{public}s called with null frame";
              goto LABEL_1858;
            }

            goto LABEL_1860;
          }

          if (v980 != 1)
          {
            v875 = __nwlog_obj();
            v863 = v875;
            v864 = v981;
            goto LABEL_1853;
          }

          v867 = __nw_create_backtrace_string();
          v868 = __nwlog_obj();
          v869 = v868;
          v870 = v981;
LABEL_1840:
          v872 = os_log_type_enabled(v868, v870);
          if (v867)
          {
            if (v872)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v867;
              v873 = "%{public}s called with null frame, dumping backtrace:%{public}s";
              goto LABEL_1848;
            }

LABEL_1849:
            free(v867);
            goto LABEL_1860;
          }

          if (!v872)
          {
            goto LABEL_1860;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v866 = "%{public}s called with null frame, no backtrace";
        }

        v877 = v869;
        v878 = v870;
        goto LABEL_1859;
      }

      v333 = *(*&info + 40);
      if (v333 == &info)
      {
        v334 = (*&info + 32);
        v338 = *(*&info + 32);
        if (v338)
        {
          *(*&v338 + 40) = v333;
          v333 = *(v20 + 40);
        }

        else
        {
          p_info = *(*&info + 40);
        }

        *v333 = v338;
      }

      else
      {
        v335 = *(*&info + 16);
        v336 = *(*&info + 24);
        v334 = (*&info + 16);
        p_p_info = (*&v335 + 24);
        if (!*&v335)
        {
          p_p_info = &p_info;
        }

        *p_p_info = v336;
        *v336 = v335;
      }

      *v334 = 0;
      v334[1] = 0;
      if ((*(v20 + 204) & 0x80) != 0)
      {
        *(v20 + 196) -= v317;
      }

      v341 = *(v20 + 56) + v317;
      v342 = *(v20 + 60);
      if (v341 <= *(v20 + 52) - v342)
      {
        *(v20 + 56) = v341;
      }

      else
      {
        v343 = __nwlog_obj();
        if (os_log_type_enabled(v343, OS_LOG_TYPE_ERROR))
        {
          v344 = *(v20 + 52);
          *buf = 136446978;
          *&buf[4] = "__nw_frame_claim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v341;
          *&buf[18] = 1024;
          *&buf[20] = v344;
          *v983 = 1024;
          *&v983[2] = v342;
          _os_log_impl(&dword_1889BA000, v343, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
        }
      }

      v345 = *(v20 + 112);
      if (!v345 || (*(v20 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && (!(*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)) || (v345 = *(v20 + 112)) == 0))
      {
        v784 = v20;
        if ((*(v20 + 204) & 0x100) != 0)
        {
          v784 = v20;
          if (*MEMORY[0x1E6977EF8])
          {
            v784 = v20;
            if (((*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)) & 1) == 0)
            {
              *(a1 + 1064) = 0;
              v784 = v20;
            }
          }
        }

        goto LABEL_1648;
      }

      if (!nw_protocol_tcp_copy_frame_to_buffer(*(v4 + 400), v957, v976, (v345 + *(v20 + 56))))
      {
        if ((*(v4 + 776) & 2) == 0)
        {
          v834 = __nwlog_tcp_log();
          if (os_log_type_enabled(v834, OS_LOG_TYPE_INFO))
          {
            *buf = 136446466;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v914;
            _os_log_impl(&dword_1889BA000, v834, OS_LOG_TYPE_INFO, "%{public}s %{public}s copy from snd buffer to channel buffer failed", buf, 0x16u);
          }
        }

        v835 = *(v20 + 80);
        if (v835)
        {
          v836 = *(v20 + 88);
          *(v20 + 80) = 0;
          *(v20 + 88) = 0;
          v835(v20, 0, v836);
          v761 = 55;
          goto LABEL_1656;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v879 = _os_log_send_and_compose_impl();
        v981 = OS_LOG_TYPE_ERROR;
        v980 = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_1880;
        }

        if (v981 == OS_LOG_TYPE_FAULT)
        {
          v880 = __nwlog_obj();
          v881 = v981;
          if (os_log_type_enabled(v880, v981))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_finalize";
            v882 = "%{public}s called with null frame->finalizer";
            goto LABEL_1878;
          }

          goto LABEL_1880;
        }

        if (v980 == 1)
        {
          v883 = __nw_create_backtrace_string();
          v884 = __nwlog_obj();
          v885 = v981;
          v886 = os_log_type_enabled(v884, v981);
          if (v883)
          {
            if (v886)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_finalize";
              *&buf[12] = 2082;
              *&buf[14] = v883;
              _os_log_impl(&dword_1889BA000, v884, v885, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v883);
            goto LABEL_1880;
          }

          if (!v886)
          {
LABEL_1880:
            if (v879)
            {
              free(v879);
            }

            goto LABEL_1761;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v882 = "%{public}s called with null frame->finalizer, no backtrace";
          v887 = v884;
          v888 = v885;
        }

        else
        {
          v880 = __nwlog_obj();
          v881 = v981;
          if (!os_log_type_enabled(v880, v981))
          {
            goto LABEL_1880;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v882 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
LABEL_1878:
          v887 = v880;
          v888 = v881;
        }

        _os_log_impl(&dword_1889BA000, v887, v888, v882, buf, 0xCu);
        goto LABEL_1880;
      }

      if ((*(v20 + 204) & 0x80) != 0)
      {
        *(v20 + 196) -= v976;
      }

      v346 = *(v20 + 52);
      v347 = *(v20 + 56) + v976;
      v348 = *(v20 + 60);
      if (v347 <= v346 - v348)
      {
        *(v20 + 56) = v347;
      }

      else
      {
        v349 = __nwlog_obj();
        v350 = os_log_type_enabled(v349, OS_LOG_TYPE_ERROR);
        v346 = *(v20 + 52);
        if (v350)
        {
          *buf = 136446978;
          *&buf[4] = "__nw_frame_claim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v347;
          *&buf[18] = 1024;
          *&buf[20] = v346;
          *v983 = 1024;
          *&v983[2] = v348;
          _os_log_impl(&dword_1889BA000, v349, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
          v346 = *(v20 + 52);
        }
      }

      v351 = v956;
      v352 = v976;
      if (v346)
      {
        v354 = *(v20 + 56);
        v353 = *(v20 + 60);
        v355 = (v346 - (v353 + v354));
        if (v346 != v353 + v354)
        {
          if (v353)
          {
            v356 = *(v20 + 112);
            if (v356)
            {
              memmove((v356 + v354), (v356 + v354 + v355), v353);
              v346 = *(v20 + 52);
            }
          }

          *(v20 + 52) = v346 - v355;
          if ((*(v20 + 204) & 0x80) != 0)
          {
            v357 = *(v20 + 196);
            v253 = v357 >= v355;
            v358 = v357 - v355;
            *(v20 + 196) = v358;
            if (!v253 || v358 >= 0x10000)
            {
              __nwlog_obj();
              v359 = *(v20 + 196);
              *buf = 136446978;
              *&buf[4] = "__nw_frame_collapse";
              *&buf[12] = 2082;
              *&buf[14] = "frame->aggregate_buffer_length";
              *&buf[22] = 2048;
              *v983 = v355;
              *&v983[8] = 2048;
              *&v983[10] = v359;
              v360 = _os_log_send_and_compose_impl();
              v981 = OS_LOG_TYPE_ERROR;
              v980 = 0;
              if (!__nwlog_fault())
              {
                goto LABEL_924;
              }

              if (v981 != OS_LOG_TYPE_FAULT)
              {
                if (v980 == 1)
                {
                  v370 = __nw_create_backtrace_string();
                  v371 = __nwlog_obj();
                  typea = v981;
                  v372 = os_log_type_enabled(v371, v981);
                  if (v370)
                  {
                    if (v372)
                    {
                      v373 = *(v20 + 196);
                      *buf = 136447234;
                      *&buf[4] = "__nw_frame_collapse";
                      *&buf[12] = 2082;
                      *&buf[14] = "frame->aggregate_buffer_length";
                      *&buf[22] = 2048;
                      *v983 = v355;
                      *&v983[8] = 2048;
                      *&v983[10] = v373;
                      *&v983[18] = 2082;
                      *&v983[20] = v370;
                      _os_log_impl(&dword_1889BA000, v371, typea, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                    }

                    free(v370);
                    goto LABEL_924;
                  }

                  if (!v372)
                  {
                    goto LABEL_924;
                  }

                  v402 = *(v20 + 196);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_collapse";
                  *&buf[12] = 2082;
                  *&buf[14] = "frame->aggregate_buffer_length";
                  *&buf[22] = 2048;
                  *v983 = v355;
                  *&v983[8] = 2048;
                  *&v983[10] = v402;
                  v364 = v371;
                  v365 = typea;
                  v366 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace";
                }

                else
                {
                  v381 = __nwlog_obj();
                  v382 = v981;
                  if (!os_log_type_enabled(v381, v981))
                  {
                    goto LABEL_924;
                  }

                  v383 = *(v20 + 196);
                  *buf = 136446978;
                  *&buf[4] = "__nw_frame_collapse";
                  *&buf[12] = 2082;
                  *&buf[14] = "frame->aggregate_buffer_length";
                  *&buf[22] = 2048;
                  *v983 = v355;
                  *&v983[8] = 2048;
                  *&v983[10] = v383;
                  v364 = v381;
                  v365 = v382;
                  v366 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
                }

LABEL_923:
                _os_log_impl(&dword_1889BA000, v364, v365, v366, buf, 0x2Au);
                goto LABEL_924;
              }

              v361 = __nwlog_obj();
              v362 = v981;
              if (os_log_type_enabled(v361, v981))
              {
                v363 = *(v20 + 196);
                *buf = 136446978;
                *&buf[4] = "__nw_frame_collapse";
                *&buf[12] = 2082;
                *&buf[14] = "frame->aggregate_buffer_length";
                *&buf[22] = 2048;
                *v983 = v355;
                *&v983[8] = 2048;
                *&v983[10] = v363;
                v364 = v361;
                v365 = v362;
                v366 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
                goto LABEL_923;
              }

LABEL_924:
              if (v360)
              {
                free(v360);
              }

              *(v20 + 196) = 0;
              v351 = v956;
              v352 = v976;
            }
          }
        }
      }

      if ((*(v20 + 204) & 0x80) != 0)
      {
        *(v20 + 196) += v332;
      }

      v403 = *(v20 + 56);
      v253 = v403 >= v332;
      v404 = v403 - v332;
      v4 = v944;
      if (v253)
      {
        *(v20 + 56) = v404;
      }

      else
      {
        v405 = __nwlog_obj();
        if (os_log_type_enabled(v405, OS_LOG_TYPE_ERROR))
        {
          v406 = *(v20 + 56);
          *buf = 136446722;
          *&buf[4] = "__nw_frame_unclaim_internal";
          *&buf[12] = 1024;
          *&buf[14] = v332;
          *&buf[18] = 1024;
          *&buf[20] = v406;
          _os_log_impl(&dword_1889BA000, v405, OS_LOG_TYPE_ERROR, "%{public}s Frame cannot unclaim %u start bytes (has %u left)", buf, 0x18u);
        }
      }

      if (*(v944 + 24))
      {
        v407 = nw_protocol_tcp_get_all_stats();
        if (v407)
        {
          ++*(v407 + 32);
        }

        if (*(v944 + 24))
        {
          v408 = nw_protocol_tcp_get_all_stats();
          if (v408)
          {
            *(v408 + 40) += *(v20 + 52);
          }
        }
      }

      if (v352 + v957 == *(v944 + 384) && (v351 & 2) == 0)
      {
        v351 |= 8u;
      }

LABEL_1077:
      v500 = *(v20 + 112);
      if (!v500)
      {
LABEL_1587:
        if ((*(v20 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)) & 1) == 0)
        {
          *(a1 + 1064) = 0;
        }

        goto LABEL_1613;
      }

      v501 = *(v20 + 204);
      if ((v501 & 0x100) == 0 || !*MEMORY[0x1E6977EF8])
      {
        v503 = v500 + *(v20 + 56);
        LODWORD(v956) = v351;
        if (v315)
        {
          goto LABEL_1086;
        }

LABEL_1083:
        if ((v501 & 0x40) == 0)
        {
          *(v20 + 192) = 0;
          goto LABEL_1088;
        }

        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_set_compression_generation_count";
        v504 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        numer_low = a1 + 100;
        if (!__nwlog_fault())
        {
          goto LABEL_1111;
        }

        if (LOBYTE(info.numer) != 17)
        {
          if (v981 == OS_LOG_TYPE_INFO)
          {
            v505 = __nw_create_backtrace_string();
            v506 = __nwlog_obj();
            v507 = info.numer;
            v508 = os_log_type_enabled(v506, info.numer);
            if (v505)
            {
              if (v508)
              {
                *buf = 136446466;
                *&buf[4] = "__nw_frame_set_compression_generation_count";
                *&buf[12] = 2082;
                *&buf[14] = v505;
                _os_log_impl(&dword_1889BA000, v506, v507, "%{public}s Attempt to set generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v505);
              if (!v504)
              {
                goto LABEL_1113;
              }

LABEL_1112:
              free(v504);
LABEL_1113:
              v4 = v944;
              v351 = v956;
              v352 = v976;
              goto LABEL_1114;
            }

LABEL_1108:
            if (v508)
            {
              *buf = 136446210;
              *&buf[4] = "__nw_frame_set_compression_generation_count";
              v511 = v506;
              v512 = v507;
              v513 = "%{public}s Attempt to set generation-count on a chain-member, no backtrace";
LABEL_1110:
              _os_log_impl(&dword_1889BA000, v511, v512, v513, buf, 0xCu);
            }

LABEL_1111:
            if (v504)
            {
              goto LABEL_1112;
            }

            goto LABEL_1113;
          }

LABEL_1106:
          v515 = __nwlog_obj();
          v516 = info.numer;
          if (os_log_type_enabled(v515, info.numer))
          {
            *buf = 136446210;
            *&buf[4] = "__nw_frame_set_compression_generation_count";
            v511 = v515;
            v512 = v516;
            v513 = "%{public}s Attempt to set generation-count on a chain-member, backtrace limit exceeded";
            goto LABEL_1110;
          }

          goto LABEL_1111;
        }

LABEL_1099:
        v509 = __nwlog_obj();
        v510 = info.numer;
        if (os_log_type_enabled(v509, info.numer))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v511 = v509;
          v512 = v510;
          v513 = "%{public}s Attempt to set generation-count on a chain-member";
          goto LABEL_1110;
        }

        goto LABEL_1111;
      }

      if (!(*MEMORY[0x1E6977EF8])(v20, *(v20 + 88)))
      {
        goto LABEL_1587;
      }

      v502 = *(v20 + 112);
      if (!v502)
      {
        goto LABEL_1587;
      }

      v503 = v502 + *(v20 + 56);
      v501 = *(v20 + 204);
      LODWORD(v956) = v351;
      if (!v315)
      {
        goto LABEL_1083;
      }

LABEL_1086:
      if ((v501 & 0x40) != 0)
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_set_compression_generation_count";
        v504 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        numer_low = a1 + 100;
        if (!__nwlog_fault())
        {
          goto LABEL_1111;
        }

        if (LOBYTE(info.numer) != 17)
        {
          if (v981 == OS_LOG_TYPE_INFO)
          {
            v514 = __nw_create_backtrace_string();
            v506 = __nwlog_obj();
            v507 = info.numer;
            v508 = os_log_type_enabled(v506, info.numer);
            if (!v514)
            {
              goto LABEL_1108;
            }

            if (v508)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_set_compression_generation_count";
              *&buf[12] = 2082;
              *&buf[14] = v514;
              _os_log_impl(&dword_1889BA000, v506, v507, "%{public}s Attempt to set generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v514);
            goto LABEL_1111;
          }

          goto LABEL_1106;
        }

        goto LABEL_1099;
      }

      *(v20 + 192) = *(a1 + 1888);
LABEL_1088:
      numer_low = a1 + 100;
LABEL_1114:
      v517 = *(a1 + 80);
      if ((*(v517 + 2380) & 2) != 0)
      {
        v520 = in6_pseudo();
      }

      else
      {
        v518 = *(v517 + 492);
        v519 = *(v517 + 476);
        v520 = in_pseudo();
      }

      *(v503 + 16) = v520;
      HIDWORD(v521) = *(v517 + 2368);
      LODWORD(v521) = HIDWORD(v521);
      *v503 = v521 >> 16;
      *(v503 + 4) = 0;
      *(v503 + 8) = 0;
      *(v503 + 12) = 80;
      *(v503 + 18) = 0;
      v522 = *(a1 + 336);
      if ((*(a1 + 2096) & 2) != 0)
      {
        v524 = *v948;
        if ((v351 & 2) == 0 && (v522 & 4) != 0)
        {
          v525 = 1;
          goto LABEL_1133;
        }
      }

      else
      {
        v523 = (v522 >> 2) & 1;
        if (!v352)
        {
          v523 = 0;
        }

        v524 = *v948;
        if (!v922)
        {
          if (!v523 || v351 & 2 | v918 || *(a1 + 100) - *(a1 + 96) < 0)
          {
            goto LABEL_1134;
          }

LABEL_1132:
          v525 = 2;
LABEL_1133:
          *(v20 + 186) = *(v20 + 186) & 0xFC | v525;
          goto LABEL_1134;
        }

        if (v523)
        {
          v526 = log;
          if (*(a1 + 100) - *(a1 + 96) < 0)
          {
            v526 = 1;
          }

          if ((v526 & 1) == 0)
          {
            goto LABEL_1132;
          }
        }
      }

LABEL_1134:
      if (v931)
      {
        *(v20 + 160) = v931;
      }

      if ((v351 & 1) != 0 && (*(a1 + 88) & 0x10) != 0)
      {
        v527 = *(a1 + 100);
        if (v527 == *(a1 + 96))
        {
          *numer_low = v527 - 1;
        }
      }

      if (!v934)
      {
        v529 = v352 - 1;
        if ((*(a1 + 748) & 0x20400020) == 0x20000020)
        {
          v530 = *v55;
          *(v503 + 4) = bswap32(*v55);
          tcp_rxtseg_insert(a1, v530, v529 + v530);
        }

        else
        {
          v531 = *v917;
          *(v503 + 4) = bswap32(*v917);
          tcp_rxtseg_insert(a1, v531, v529 + v531);
          *v917 += v352;
          v524 = *v948;
          *(a1 + 616) += v352;
        }

LABEL_1146:
        if (v352 >= 1)
        {
          goto LABEL_1147;
        }

        goto LABEL_1154;
      }

      if (v351 & 3 | v352)
      {
        v528 = *(a1 + 96);
        goto LABEL_1149;
      }

      v528 = *(a1 + 96);
      if (!*(a1 + 36))
      {
        *(v503 + 4) = bswap32(v528);
        goto LABEL_1154;
      }

LABEL_1149:
      v532 = *numer_low;
      *(v503 + 4) = bswap32(*numer_low);
      if ((v532 - v528) >= 0)
      {
        goto LABEL_1154;
      }

      if (v352 <= 1 || (*(a1 + 748) & 0x1020) != 0x20)
      {
        goto LABEL_1146;
      }

      tcp_rxtseg_insert(a1, v532, v352 + v532 - 1);
LABEL_1147:
      *(v20 + 186) |= 4u;
LABEL_1154:
      v533 = *(a1 + 120);
      *(v503 + 8) = bswap32(v533);
      *(a1 + 296) = v533;
      if (v524)
      {
        memmove((v503 + 20), __src, v524);
        v534 = ((4 * v926) & 0xF0) + 80;
      }

      else
      {
        v534 = *(v503 + 12);
      }

      *(v503 + 13) = v351;
      *(v503 + 12) = v534 & 0xF0 | BYTE1(v351) & 1;
      v535 = v935 >> *(a1 + 269);
      *(v503 + 14) = bswap32(v535) >> 16;
      *(a1 + 132) = v935;
      if (v935 >= 1)
      {
        v536 = *(a1 + 120) + v935;
        if (*(a1 + 124) - v536 < 0)
        {
          *(a1 + 124) = v536;
        }
      }

      *(a1 + 88) = *(a1 + 88) & 0xFFFBFFFF | ((v535 == 0) << 18);
      v537 = *(a1 + 12);
      if ((v537 - 7) < 2 || v537 != 4 && (v537 == 10 || (v351 & 4) != 0))
      {
        *(v20 + 186) |= 8u;
      }

      v538 = v970[62];
      if (v352 + *v948)
      {
        v539 = *(v503 + 16);
        *(v503 + 16) = in_addword();
      }

      if (!v538 || (v540 = *(v538 + 216)) == 0)
      {
        if ((*(v4 + 776) & 2) != 0)
        {
          goto LABEL_1178;
        }

        v543 = __nwlog_tcp_log();
        if (!os_log_type_enabled(v543, OS_LOG_TYPE_INFO))
        {
          goto LABEL_1178;
        }

        *buf = 136446466;
        *&buf[4] = "tcp_output";
        *&buf[12] = 2082;
        *&buf[14] = v914;
        v544 = v543;
        v545 = OS_LOG_TYPE_INFO;
        v546 = "%{public}s %{public}s route is not usable: no checksum offload";
        v547 = 22;
        goto LABEL_1177;
      }

      v541 = *(v540 + 1192);
      if ((v541 & 0x1000) != 0)
      {
        if ((*(v20 + 204) & 0x100) == 0)
        {
          goto LABEL_1178;
        }

        v559 = *MEMORY[0x1E6977F00];
        if (!*MEMORY[0x1E6977F00])
        {
          goto LABEL_1178;
        }

        *(v20 + 203) |= 1u;
        v548 = 1;
        v560 = v559(v20, 1, v909, v908);
        if (!v560)
        {
          goto LABEL_1179;
        }

        if (v560 == 45)
        {
          goto LABEL_1178;
        }

        if ((*(v4 + 776) & 2) != 0)
        {
          goto LABEL_1178;
        }

        v561 = v560;
        v562 = __nwlog_tcp_log();
        v563 = os_log_type_enabled(v562, OS_LOG_TYPE_ERROR);
        v564 = v561;
        v352 = v976;
        if (!v563)
        {
          goto LABEL_1178;
        }

        *buf = 136446722;
        *&buf[4] = "tcp_output";
        *&buf[12] = 2082;
        *&buf[14] = v914;
        *&buf[22] = 1024;
        *v983 = v564;
        v544 = v562;
        v545 = OS_LOG_TYPE_ERROR;
        v546 = "%{public}s %{public}s set internet checksum offload failed (err %d)";
        v547 = 28;
LABEL_1177:
        _os_log_impl(&dword_1889BA000, v544, v545, v546, buf, v547);
        goto LABEL_1178;
      }

      if (v922)
      {
        if ((((v541 & 0x20) == 0) & ~v943) != 0 || (*(v20 + 204) & 0x100) == 0)
        {
          goto LABEL_1178;
        }

        v542 = *(v20 + 203) | 0x20;
LABEL_1222:
        *(v20 + 203) = v542;
        v548 = 1;
      }

      else
      {
        if ((((v541 & 2) == 0) & ~v943) == 0 && (*(v20 + 204) & 0x100) != 0)
        {
          v542 = *(v20 + 203) | 8;
          goto LABEL_1222;
        }

LABEL_1178:
        v548 = 0;
      }

LABEL_1179:
      LOWORD(v549) = v943;
      if (v943)
      {
        v549 = *(a1 + 160) - *v948;
      }

      *(v20 + 198) = v549;
      *(v20 + 206) = *(v20 + 206) & 0xFB | (2 * v922);
      if ((*(a1 + 749) & 0x80) != 0 && *(a1 + 36))
      {
        v550 = ((v351 >> 1) & 1) + v352;
        if (v351)
        {
          v551 = *(a1 + 88);
          if ((v551 & 0x10) == 0)
          {
            ++v550;
            *(a1 + 88) = v551 | 0x10;
          }
        }

        v552 = *(a1 + 100);
        if (v552 + v550 - *(a1 + 96) >= 1)
        {
          *(a1 + 96) = v552 + v352;
          *(a1 + 168) = *(a1 + 140);
          if (*(v4 + 24))
          {
            v553 = nw_protocol_tcp_get_all_stats();
            if (v553)
            {
              *(v553 + 108) = *(a1 + 96) - *(a1 + 92);
            }
          }
        }

        goto LABEL_1259;
      }

      v554 = *numer_low;
      v555 = *numer_low;
      if ((v351 & 3) != 0)
      {
        v555 = *numer_low;
        if ((v351 & 2) != 0)
        {
          v555 = v554 + 1;
          *numer_low = v554 + 1;
        }

        if (v351)
        {
          v556 = *(a1 + 88);
          if ((v556 & 0x10) == 0)
          {
            *(a1 + 100) = ++v555;
            *(a1 + 88) = v556 | 0x10;
          }
        }
      }

      if ((log & 1) == 0)
      {
        if (v916)
        {
          v557 = v911;
          *(a1 + 100) = v911;
          v558 = *(a1 + 1064);
          if (v558)
          {
            ++*(v558 + 760);
            v557 = v911;
          }
        }

        else
        {
          v557 = v555 + v976;
          *numer_low = v557;
        }

        if (v557 - *(a1 + 96) < 1)
        {
          goto LABEL_1913;
        }

        *(a1 + 96) = v557;
        *(a1 + 168) = *(a1 + 140);
        if (*(v4 + 24))
        {
          v565 = nw_protocol_tcp_get_all_stats();
          if (v565)
          {
            *(v565 + 108) = *(a1 + 96) - *(a1 + 92);
          }
        }

        if (*(a1 + 176))
        {
LABEL_1913:
          if (*(a1 + 28))
          {
LABEL_1218:
            v916 = 0;
            goto LABEL_1239;
          }
        }

        else
        {
          *(a1 + 176) = *(a1 + 140);
          *(a1 + 180) = v554;
          v566 = *(a1 + 1064);
          if (v566)
          {
            ++*(v566 + 472);
          }

          *(a1 + 984) = *(a1 + 92);
          if (*(a1 + 28))
          {
            goto LABEL_1218;
          }
        }

        v916 = 0;
        v555 = *numer_low;
        v352 = v976;
        if (v351)
        {
          goto LABEL_1228;
        }

LABEL_1227:
        if (v555 != *(a1 + 92))
        {
          goto LABEL_1228;
        }

        goto LABEL_1240;
      }

      if (*(a1 + 28))
      {
        goto LABEL_1239;
      }

      v352 = v976;
      if (v555 == *(a1 + 96) && (v351 & 1) == 0)
      {
        goto LABEL_1227;
      }

LABEL_1228:
      if (*(a1 + 36))
      {
        *(a1 + 36) = 0;
        *(a1 + 328) = 0;
        *(a1 + 234) = 0;
        *(a1 + 256) = 0;
      }

      v567 = *(a1 + 80);
      if ((*(sysctls + 316) & 0x10) != 0 && (v568 = *(v567 + 448)) != 0)
      {
        v569 = *(a1 + 196);
        if ((*(v568 + 1202) & 0x80) != 0 && v569 < *(sysctls + 320))
        {
          atomic_fetch_add((v568 + 1152), 1uLL);
          v569 = *(sysctls + 320);
          *(a1 + 196) = v569;
          v567 = *(a1 + 80);
        }
      }

      else
      {
        v569 = *(a1 + 196);
      }

      v570 = nw_tcp_access_globals(*(v567 + 224));
      v571 = *(a1 + 140);
      if (v571 - *(v570 + 308) <= 0)
      {
        v571 = *(v570 + 308);
      }

      *(a1 + 28) = v569 - *(a1 + 64) + v571;
LABEL_1239:
      v352 = v976;
LABEL_1240:
      if (v352)
      {
        if (*(sysctls + 128))
        {
          if (*(a1 + 12) == 4)
          {
            v572 = *(a1 + 748);
            if ((v572 & 0x20) != 0 && (*(a1 + 90) & 0x20) == 0)
            {
              v573 = *(a1 + 100);
              if (v573 == *(a1 + 96))
              {
                v574 = v573 - *(a1 + 92);
                if (v574 >= 1 && (v572 & 0x3000) == 0 && !*(a1 + 234) && ((*(sysctls + 316) & 0x20) == 0 || (v575 = *(*(a1 + 80) + 448)) == 0 || (*(v575 + 1202) & 0x80) == 0))
                {
                  if (v574 <= *(a1 + 200))
                  {
                    v576 = 100;
                  }

                  else
                  {
                    v576 = 2;
                  }

                  if (*(a1 + 196) >= v576 + 2 * (*(a1 + 204) >> 5))
                  {
                    v577 = v576 + 2 * (*(a1 + 204) >> 5);
                  }

                  else
                  {
                    v577 = *(a1 + 196);
                  }

                  *(a1 + 16) = tcp_offset_from_latest_tx(a1, v577);
                }
              }
            }
          }
        }
      }

LABEL_1259:
      if (!v921 || (*(v921 + 1222) & 8) != 0)
      {
        v581 = v919;
        if (v919 > 499)
        {
          if (v919 <= 699)
          {
            if (v919 == 500)
            {
              v581 = 2621728;
              goto LABEL_1273;
            }

            if (v919 == 600)
            {
              v581 = 3146000;
              goto LABEL_1273;
            }
          }

          else
          {
            switch(v919)
            {
              case 700:
                v581 = 3670272;
                goto LABEL_1273;
              case 800:
                v581 = 4194688;
                goto LABEL_1273;
              case 900:
                v581 = 4718992;
                goto LABEL_1273;
            }
          }
        }

        else if (v919 <= 199)
        {
          if (!v919)
          {
            goto LABEL_1273;
          }

          if (v919 == 100)
          {
            v581 = 524432;
            goto LABEL_1273;
          }
        }

        else
        {
          switch(v919)
          {
            case 200:
              v581 = 1048704;
              goto LABEL_1273;
            case 300:
              v581 = 1572880;
              goto LABEL_1273;
            case 400:
              v581 = 2097184;
              goto LABEL_1273;
          }
        }

        v581 = 0;
      }

      else
      {
        if (!v352 && (*(v921 + 1196) & 0x200080) == 0x80)
        {
          v578 = *(*(a1 + 80) + 448);
          if (v578 && (*(v578 + 1202) & 0x80) != 0 && (*(sysctls + 316) & 2) != 0)
          {
            atomic_fetch_add((v921 + 1128), 1uLL);
          }

          else
          {
            v579 = *(v503 + 13);
            if (v579 == 16 && *(a1 + 92) == *(a1 + 96))
            {
              v580 = v915;
              if (!*(a1 + 28))
              {
                v580 = v915 | 2;
              }

              v915 = v580;
            }

            v915 |= (2 * v579) & 4;
          }
        }

        *buf = 0;
        set_frame_service_class(v20, v4, v919, v915, buf);
        v581 = *buf;
      }

LABEL_1273:
      *(v20 + 176) = v581;
      *(a1 + 640) += v352;
      ++*(a1 + 312);
      if (v548)
      {
        goto LABEL_1282;
      }

      v582 = in_finalize_cksum();
      if (v582)
      {
        if ((*(v20 + 204) & 0x100) != 0)
        {
          if (*MEMORY[0x1E6977EF8])
          {
            v583 = v582;
            v584 = (*MEMORY[0x1E6977EF8])(v20, *(v20 + 88));
            v582 = v583;
            if ((v584 & 1) == 0)
            {
              goto LABEL_1885;
            }
          }
        }
      }

      v585 = *(v20 + 52);
      if (v585)
      {
        v586 = (v585 - (*(v20 + 56) + *(v20 + 60)));
        v587 = *(a1 + 1064);
        if (v587)
        {
          goto LABEL_1280;
        }
      }

      else
      {
        v586 = 0;
        v587 = *(a1 + 1064);
        if (v587)
        {
LABEL_1280:
          v588.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v588.i64[1] = v586;
          *(v587 + v912) = vaddq_s64(*(v587 + v912), v588);
        }
      }

      if (v582)
      {
        goto LABEL_1886;
      }

LABEL_1282:
      if ((*(v503 + 13) & 0x24) != 0)
      {
        if ((*(v4 + 776) & 2) == 0)
        {
          v704 = __nwlog_tcp_log();
          if (os_log_type_enabled(v704, OS_LOG_TYPE_ERROR))
          {
            v705 = *(v503 + 13);
            v706 = bswap32(*(v503 + 4));
            v707 = bswap32(*(v503 + 8));
            v708 = bswap32(*(v503 + 14));
            v709 = *(a1 + 12);
            v710 = *(a1 + 120);
            v711 = *(a1 + 92);
            *buf = 136448258;
            *&buf[4] = "tcp_output";
            *&buf[12] = 2082;
            *&buf[14] = v914;
            *&buf[22] = 1024;
            *v983 = v705;
            *&v983[4] = 1024;
            *&v983[6] = v706;
            *&v983[10] = 1024;
            *&v983[12] = v707;
            *&v983[16] = 1024;
            *&v983[18] = HIWORD(v708);
            *&v983[22] = 1024;
            *&v983[24] = v709;
            LOWORD(v984) = 1024;
            *(&v984 + 2) = v710;
            HIWORD(v984) = 1024;
            v985[0] = v711;
            v712 = v704;
            v713 = OS_LOG_TYPE_ERROR;
            goto LABEL_1501;
          }
        }
      }

      else if ((*(v503 + 13) & 3) != 0 && (*(v4 + 776) & 2) == 0)
      {
        v714 = __nwlog_tcp_log();
        if (os_log_type_enabled(v714, OS_LOG_TYPE_DEFAULT))
        {
          v715 = *(v503 + 13);
          v716 = bswap32(*(v503 + 4));
          v717 = bswap32(*(v503 + 8));
          v718 = bswap32(*(v503 + 14));
          v719 = *(a1 + 12);
          v720 = *(a1 + 120);
          v721 = *(a1 + 92);
          *buf = 136448258;
          *&buf[4] = "tcp_output";
          *&buf[12] = 2082;
          *&buf[14] = v914;
          *&buf[22] = 1024;
          *v983 = v715;
          *&v983[4] = 1024;
          *&v983[6] = v716;
          *&v983[10] = 1024;
          *&v983[12] = v717;
          *&v983[16] = 1024;
          *&v983[18] = HIWORD(v718);
          *&v983[22] = 1024;
          *&v983[24] = v719;
          LOWORD(v984) = 1024;
          *(&v984 + 2) = v720;
          HIWORD(v984) = 1024;
          v985[0] = v721;
          v712 = v714;
          v713 = OS_LOG_TYPE_DEFAULT;
LABEL_1501:
          _os_log_impl(&dword_1889BA000, v712, v713, "%{public}s %{public}s flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u", buf, 0x40u);
        }
      }

      v589 = *(v20 + 186);
      tcp_log_packet(a1, v503);
      *(v20 + 32) = 0;
      v590 = *(a1 + 632);
      *(v20 + 40) = v590;
      *v590 = v20;
      *(a1 + 632) = v20 + 32;
      v591 = *(a1 + 748);
      v592 = v941;
      if ((~v591 & 0x20000020) != 0 || !v976 || (v591 & 0x400000) != 0)
      {
        goto LABEL_1432;
      }

      v593 = *(v20 + 186);
      if ((v591 & 0x1000) != 0)
      {
        v594 = (2 * v593) & 8;
      }

      else
      {
        v594 = (v593 << 29 >> 31) & 0xC;
      }

      v595 = bswap32(*(v503 + 4));
      v596 = v595 + v976;
      v597 = *(a1 + 140);
      if (v55)
      {
        v598 = *(v55 + 12) | v594;
        if (*(v55 + 4) == v596)
        {
          if (*v55 != v595)
          {
            v960 = *(a1 + 140);
            __nwlog_obj();
            v599 = *v55;
            *buf = 136446722;
            *&buf[4] = "tcp_seg_sent_insert";
            *&buf[12] = 1024;
            *&buf[14] = v599;
            *&buf[18] = 1024;
            *&buf[20] = v595;
            v600 = _os_log_send_and_compose_impl();
            LOBYTE(info.numer) = 16;
            v981 = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault())
            {
              goto LABEL_1420;
            }

            if (LOBYTE(info.numer) != 17)
            {
              if (v981 == OS_LOG_TYPE_INFO)
              {
                v636 = __nw_create_backtrace_string();
                v637 = __nwlog_obj();
                v949 = info.numer;
                v638 = os_log_type_enabled(v637, info.numer);
                if (v636)
                {
                  if (v638)
                  {
                    v639 = *v55;
                    *buf = 136446978;
                    *&buf[4] = "tcp_seg_sent_insert";
                    *&buf[12] = 1024;
                    *&buf[14] = v639;
                    *&buf[18] = 1024;
                    *&buf[20] = v595;
                    *v983 = 2082;
                    *&v983[2] = v636;
                    _os_log_impl(&dword_1889BA000, v637, v949, "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u), dumping backtrace:%{public}s", buf, 0x22u);
                  }

                  free(v636);
                  goto LABEL_1420;
                }

                if (!v638)
                {
                  goto LABEL_1420;
                }

                v665 = *v55;
                *buf = 136446722;
                *&buf[4] = "tcp_seg_sent_insert";
                *&buf[12] = 1024;
                *&buf[14] = v665;
                *&buf[18] = 1024;
                *&buf[20] = v595;
                v604 = v637;
                v605 = v949;
                v606 = "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u), no backtrace";
              }

              else
              {
                v660 = __nwlog_obj();
                v661 = info.numer;
                if (!os_log_type_enabled(v660, info.numer))
                {
                  goto LABEL_1420;
                }

                v662 = *v55;
                *buf = 136446722;
                *&buf[4] = "tcp_seg_sent_insert";
                *&buf[12] = 1024;
                *&buf[14] = v662;
                *&buf[18] = 1024;
                *&buf[20] = v595;
                v604 = v660;
                v605 = v661;
                v606 = "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u), backtrace limit exceeded";
              }

LABEL_1419:
              _os_log_impl(&dword_1889BA000, v604, v605, v606, buf, 0x18u);
              goto LABEL_1420;
            }

            v601 = __nwlog_obj();
            v602 = info.numer;
            if (os_log_type_enabled(v601, info.numer))
            {
              v603 = *v55;
              *buf = 136446722;
              *&buf[4] = "tcp_seg_sent_insert";
              *&buf[12] = 1024;
              *&buf[14] = v603;
              *&buf[18] = 1024;
              *&buf[20] = v595;
              v604 = v601;
              v605 = v602;
              v606 = "%{public}s Segment start (%u) is not same as retransmitted start sequence number (%u)";
              goto LABEL_1419;
            }

LABEL_1420:
            if (v600)
            {
              free(v600);
            }

            v595 = *v55;
            v596 = *(v55 + 4);
            v592 = v941;
            v597 = v960;
          }

          *v55 = v595;
          *(v55 + 4) = v596;
          *(v55 + 8) = v597;
          if ((v595 - *(a1 + 2068)) < 0)
          {
            *(a1 + 2068) = v595;
          }

          v666 = *(v55 + 12) | v598;
          *(v55 + 12) = v666;
          if ((v666 & 4) != 0)
          {
            v667 = tcp_seg_len(v55);
            v592 = v941;
            *(a1 + 2084) += v667;
          }

          v668 = *(a1 + 2077);
          if ((v668 & 0x80000000) == 0)
          {
            *(a1 + 2077) = v668 | (32 * v598) & 0x80;
          }

          v669 = *(v55 + 16);
          v670 = *(v55 + 24);
          v671 = v670;
          if (v669)
          {
            *(v669 + 24) = v670;
            v671 = *(a1 + 2000);
          }

          *v670 = v669;
          *(v55 + 16) = 0;
          *(v55 + 24) = v671;
          *v671 = v55;
          *(a1 + 2000) = v55 + 16;
          v4 = v944;
          goto LABEL_1432;
        }

        v611 = *(a1 + 2032);
        if (v611)
        {
          v612 = *(v611 + 72);
          v613 = *(v611 + 80);
          v614 = (v612 + 80);
          if (!v612)
          {
            v614 = (a1 + 2040);
          }

          *v614 = v613;
          *v613 = v612;
          --*(a1 + 2048);
LABEL_1353:
          *(v611 + 80) = 0;
          *(v611 + 48) = 0u;
          *(v611 + 64) = 0u;
          *(v611 + 16) = 0u;
          *(v611 + 32) = 0u;
          *v611 = 0u;
          *v55 += v976;
          *v611 = v595;
          *(v611 + 4) = v596;
          *(v611 + 8) = v597;
          if ((v595 - *(a1 + 2068)) >= 0)
          {
            *(v611 + 12) = v598;
            if ((v598 & 4) == 0)
            {
              goto LABEL_1355;
            }

LABEL_1365:
            *(a1 + 2084) += tcp_seg_len(v611);
            v628 = *(a1 + 2077);
            if (v628 < 0)
            {
              goto LABEL_1357;
            }

LABEL_1356:
            *(a1 + 2077) = v628 | (32 * v598) & 0x80;
            goto LABEL_1357;
          }

          *(a1 + 2068) = v595;
          *(v611 + 12) = v598;
          if ((v598 & 4) != 0)
          {
            goto LABEL_1365;
          }

LABEL_1355:
          v628 = *(a1 + 2077);
          if ((v628 & 0x80000000) == 0)
          {
            goto LABEL_1356;
          }

LABEL_1357:
          v629 = *v913;
          if (*v913)
          {
            v630 = *(v611 + 4);
            v4 = v944;
            while (1)
            {
              while (1)
              {
                v631 = v629;
                v632 = *(v629 + 4);
                v633 = v630 - v632;
                if (v630 - v632 >= 0)
                {
                  break;
                }

                v629 = *(v631 + 32);
                if (!v629)
                {
                  goto LABEL_1363;
                }
              }

              if (v630 == v632)
              {
                break;
              }

              v629 = *(v631 + 40);
              if (!v629)
              {
LABEL_1363:
                v634 = v633 >> 31;
                goto LABEL_1368;
              }
            }

            v650 = __nwlog_obj();
            if (os_log_type_enabled(v650, OS_LOG_TYPE_ERROR))
            {
              v651 = *v631;
              v652 = *(v631 + 4);
              *buf = 136446978;
              *&buf[4] = "tcp_seg_sent_insert";
              *&buf[12] = 2048;
              *&buf[14] = v631;
              *&buf[22] = 1024;
              *v983 = v651;
              *&v983[4] = 1024;
              *&v983[6] = v652;
              _os_log_impl(&dword_1889BA000, v650, OS_LOG_TYPE_ERROR, "%{public}s segment %p[%u %u) was not inserted in the RB tree", buf, 0x22u);
            }
          }

          else
          {
            v631 = 0;
            v634 = 0;
            v4 = v944;
LABEL_1368:
            *(v611 + 32) = 0;
            *(v611 + 40) = 0;
            *(v611 + 48) = v631 | 1;
            v635 = (a1 + 2008);
            if (v631)
            {
              if (v634)
              {
                v635 = (v631 + 32);
              }

              else
              {
                v635 = (v631 + 40);
              }
            }

            *v635 = v611;
            tcp_seg_sent_tree_head_RB_INSERT_COLOR(v913, v611);
          }

          *(v611 + 16) = 0;
          v653 = v611 + 16;
          v654 = *(a1 + 2000);
          *(v611 + 24) = v654;
          *v654 = v611;
LABEL_1410:
          *(a1 + 2000) = v653;
        }

        else
        {
          v625 = *(a1 + 140);
          v626 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
          v627 = malloc_type_malloc(**(v626 + 64), 0x6223832DuLL);
          v597 = v625;
          v611 = v627;
          if (v627)
          {
            goto LABEL_1353;
          }

          v656 = __nwlog_obj();
          if (os_log_type_enabled(v656, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446210;
            *&buf[4] = "tcp_rack_free_and_disable";
            _os_log_impl(&dword_1889BA000, v656, OS_LOG_TYPE_DEBUG, "%{public}s not enough memory to allocate segment, disabling RACK", buf, 0xCu);
          }

          tcp_segs_sent_clean(a1, 1);
          *(a1 + 748) &= ~0x20000000u;
          v4 = v944;
        }

LABEL_1411:
        v592 = v941;
        if ((*(v503 + 13) & 4) == 0)
        {
          goto LABEL_1433;
        }

        goto LABEL_1511;
      }

      if (v594 <= 7)
      {
        v607 = *(a1 + 2032);
        if (v607)
        {
          v608 = *(v607 + 72);
          v609 = *(v607 + 80);
          v610 = (v608 + 80);
          if (!v608)
          {
            v610 = (a1 + 2040);
          }

          *v610 = v609;
          *v609 = v608;
          --*(a1 + 2048);
        }

        else
        {
          v640 = *(a1 + 140);
          v641 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
          v642 = malloc_type_malloc(**(v641 + 64), 0x6223832DuLL);
          v597 = v640;
          v607 = v642;
          if (!v642)
          {
            v664 = __nwlog_obj();
            if (os_log_type_enabled(v664, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446210;
              *&buf[4] = "tcp_rack_free_and_disable";
              _os_log_impl(&dword_1889BA000, v664, OS_LOG_TYPE_DEBUG, "%{public}s not enough memory to allocate segment, disabling RACK", buf, 0xCu);
            }

            tcp_segs_sent_clean(a1, 1);
            *(a1 + 748) &= ~0x20000000u;
            goto LABEL_1411;
          }
        }

        *(v607 + 12) = 0u;
        *(v607 + 72) = 0u;
        *(v607 + 60) = 0u;
        *(v607 + 44) = 0u;
        *(v607 + 28) = 0u;
        *v607 = v595;
        *(v607 + 4) = v596;
        *(v607 + 8) = v597;
        if ((v595 - *(a1 + 2068)) < 0)
        {
          *(a1 + 2068) = v595;
        }

        *(v607 + 12) = v594;
        if (v594)
        {
          *(a1 + 2084) += tcp_seg_len(v607);
        }

        v643 = *(a1 + 2077);
        if ((v643 & 0x80000000) == 0)
        {
          *(a1 + 2077) = v643 | (32 * v594);
        }

        v644 = *v913;
        if (*v913)
        {
          v645 = *(v607 + 4);
          while (1)
          {
            while (1)
            {
              v646 = v644;
              v647 = *(v644 + 4);
              v648 = v645 - v647;
              if (v645 - v647 >= 0)
              {
                break;
              }

              v644 = *(v646 + 32);
              if (!v644)
              {
                goto LABEL_1389;
              }
            }

            if (v645 == v647)
            {
              break;
            }

            v644 = *(v646 + 40);
            if (!v644)
            {
LABEL_1389:
              v649 = v648 >> 31;
              goto LABEL_1396;
            }
          }

          v657 = __nwlog_obj();
          if (os_log_type_enabled(v657, OS_LOG_TYPE_ERROR))
          {
            v658 = *v646;
            v659 = *(v646 + 4);
            *buf = 136446978;
            *&buf[4] = "tcp_seg_sent_insert";
            *&buf[12] = 2048;
            *&buf[14] = v646;
            *&buf[22] = 1024;
            *v983 = v658;
            *&v983[4] = 1024;
            *&v983[6] = v659;
            _os_log_impl(&dword_1889BA000, v657, OS_LOG_TYPE_ERROR, "%{public}s segment %p[%u %u) was not inserted in the RB tree", buf, 0x22u);
          }
        }

        else
        {
          v646 = 0;
          v649 = 0;
LABEL_1396:
          *(v607 + 32) = 0;
          *(v607 + 40) = 0;
          *(v607 + 48) = v646 | 1;
          v655 = (a1 + 2008);
          if (v646)
          {
            if (v649)
            {
              v655 = (v646 + 32);
            }

            else
            {
              v655 = (v646 + 40);
            }
          }

          *v655 = v607;
          tcp_seg_sent_tree_head_RB_INSERT_COLOR(v913, v607);
        }

        *(v607 + 16) = 0;
        v653 = v607 + 16;
        v663 = *(a1 + 2000);
        *(v607 + 24) = v663;
        *v663 = v607;
        goto LABEL_1410;
      }

      v615 = *v913;
      if (!*v913)
      {
        goto LABEL_1432;
      }

      v616 = *v913;
      do
      {
        while (1)
        {
          v617 = *(v616 + 4);
          if ((v596 - v617) >= 0)
          {
            break;
          }

          v616 = *(v616 + 32);
          if (!v616)
          {
            goto LABEL_1337;
          }
        }

        if (v596 == v617)
        {
          tcp_process_rxmt_segs_after_rto(a1, v616, v595, v597, v594);
          goto LABEL_1411;
        }

        v616 = *(v616 + 40);
      }

      while (v616);
      do
      {
LABEL_1337:
        v618 = v615;
        v615 = *(v615 + 32);
      }

      while (v615);
LABEL_1346:
      while (2)
      {
        while (2)
        {
          v620 = v618;
          if ((v596 - *(v618 + 4)) < 0 && (v596 - *v618) >= 1)
          {
            v621 = *(a1 + 140);
            inserted = tcp_seg_rto_insert_end(a1, *v618, v595 + v976, v597, *(v618 + 12) | v594);
            v592 = v941;
            if (!inserted)
            {
              goto LABEL_1432;
            }

            v623 = *v620;
            if ((*v620 - v595) >= 1)
            {
              v624 = *v913;
              if (*v913)
              {
                while (1)
                {
                  while (1)
                  {
                    v688 = *(v624 + 4);
                    if (v623 - v688 >= 0)
                    {
                      break;
                    }

                    v624 = *(v624 + 32);
                    if (!v624)
                    {
                      goto LABEL_1510;
                    }
                  }

                  if (v623 == v688)
                  {
                    break;
                  }

                  v624 = *(v624 + 40);
                  if (!v624)
                  {
                    goto LABEL_1510;
                  }
                }

                tcp_process_rxmt_segs_after_rto(a1, v624, v595, v621, v594);
                v592 = v941;
              }
            }

LABEL_1510:
            *v620 = v596;
            if ((*(v503 + 13) & 4) == 0)
            {
              goto LABEL_1433;
            }

            goto LABEL_1511;
          }

          v619 = *(v618 + 40);
          if (v619)
          {
            do
            {
              v618 = v619;
              v619 = *(v619 + 32);
            }

            while (v619);
            continue;
          }

          break;
        }

        v618 = *(v618 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if ((*(v620 + 48) & 0xFFFFFFFFFFFFFFFELL) != 0 && *(v618 + 32) == v620)
        {
          continue;
        }

        break;
      }

      while (1)
      {
        v618 = *(v620 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v618)
        {
          break;
        }

        v106 = v620 == *(v618 + 40);
        v620 = *(v620 + 48) & 0xFFFFFFFFFFFFFFFELL;
        if (!v106)
        {
          goto LABEL_1346;
        }
      }

LABEL_1432:
      if ((*(v503 + 13) & 4) != 0)
      {
LABEL_1511:
        v728 = tcp_rst_rlc_compress(a1, v503);
        v592 = v941;
        if (!v728)
        {
          goto LABEL_1433;
        }

LABEL_1733:
        v761 = 0;
        goto LABEL_1656;
      }

LABEL_1433:
      v672 = *(*(a1 + 80) + 448);
      v3 = v970;
      v19 = v942;
      if (!v672 || (*(v672 + 1202) & 0x80) == 0 || (*(sysctls + 316) & 1) == 0 || !v976 && (*(v503 + 13) & 1) == 0)
      {
        goto LABEL_1446;
      }

      v673 = (*(v503 + 4) << 24) & 0x80000000;
      if ((*(v20 + 186) & 4) == 0 || v673 != *(a1 + 1884))
      {
        break;
      }

      if (v921)
      {
        atomic_fetch_add((v921 + 1136), 1uLL);
      }

      if ((*(v20 + 204) & 0x40) != 0)
      {
        __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "__nw_frame_set_compression_generation_count";
        v676 = _os_log_send_and_compose_impl();
        LOBYTE(info.numer) = 16;
        v981 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault())
        {
          goto LABEL_1473;
        }

        if (LOBYTE(info.numer) == 17)
        {
          v677 = __nwlog_obj();
          v678 = info.numer;
          if (!os_log_type_enabled(v677, info.numer))
          {
            goto LABEL_1473;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v679 = v677;
          v680 = v678;
          v681 = "%{public}s Attempt to set generation-count on a chain-member";
        }

        else if (v981 == OS_LOG_TYPE_INFO)
        {
          v682 = __nw_create_backtrace_string();
          v683 = __nwlog_obj();
          v684 = info.numer;
          v685 = os_log_type_enabled(v683, info.numer);
          if (v682)
          {
            if (v685)
            {
              *buf = 136446466;
              *&buf[4] = "__nw_frame_set_compression_generation_count";
              *&buf[12] = 2082;
              *&buf[14] = v682;
              _os_log_impl(&dword_1889BA000, v683, v684, "%{public}s Attempt to set generation-count on a chain-member, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v682);
LABEL_1473:
            if (v676)
            {
              free(v676);
            }

            v592 = v941;
            v674 = v940;
            if (v940)
            {
              goto LABEL_1447;
            }

            goto LABEL_1476;
          }

          if (!v685)
          {
            goto LABEL_1473;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v679 = v683;
          v680 = v684;
          v681 = "%{public}s Attempt to set generation-count on a chain-member, no backtrace";
        }

        else
        {
          v686 = __nwlog_obj();
          v687 = info.numer;
          if (!os_log_type_enabled(v686, info.numer))
          {
            goto LABEL_1473;
          }

          *buf = 136446210;
          *&buf[4] = "__nw_frame_set_compression_generation_count";
          v679 = v686;
          v680 = v687;
          v681 = "%{public}s Attempt to set generation-count on a chain-member, backtrace limit exceeded";
        }

        _os_log_impl(&dword_1889BA000, v679, v680, v681, buf, 0xCu);
        goto LABEL_1473;
      }

      *(v20 + 192) = v673;
      v674 = v940;
      if (!v940)
      {
        goto LABEL_1476;
      }

LABEL_1447:
      if (*(a1 + 12) != 4 || *(a1 + 148) <= *(a1 + 144) >> 3 || (*(a1 + 88) & 1) != 0 || (*(a1 + 749) & 0x80) != 0 || *(a1 + 312) >= *(sysctls + 96))
      {
        goto LABEL_1476;
      }

      v675 = *(a1 + 1064);
      if (v675)
      {
        ++*v675;
      }
    }

    *(a1 + 1884) = v673;
LABEL_1446:
    v674 = v940;
    if (v940)
    {
      goto LABEL_1447;
    }

LABEL_1476:
    v689 = v592 ? 1 : log;
LABEL_1479:
    if (*(v970 + 2382))
    {
      goto LABEL_1484;
    }

    if (*v28)
    {
      break;
    }

    v693 = *(a1 + 88);
    if ((v693 & 0x8000000) != 0)
    {
      goto LABEL_1810;
    }

LABEL_1484:
    v694 = *(a1 + 1064);
    if (v694)
    {
      ++*v694;
    }

    if (!v674)
    {
      goto LABEL_1708;
    }
  }

  v690 = *(a1 + 312);
  v691 = *(a1 + 640);
  *(a1 + 296) = *(a1 + 120);
  *(a1 + 88) &= 0xFFFFFFFC;
  *(a1 + 32) = 0;
  *(a1 + 316) = 0;
  v692 = tcp_ip_output_send(v4, a1, v28, v690, v689);
  *(a1 + 624) = 0;
  *(a1 + 632) = v28;
  *(a1 + 640) = 0;
  *(a1 + 312) = 0;
  if (!v692)
  {
    goto LABEL_1479;
  }

  v761 = v692;
  if (*(v970 + 2382))
  {
    numer_low = a1 + 100;
    v762 = v939;
    goto LABEL_1572;
  }

  v693 = *(a1 + 88);
  numer_low = a1 + 100;
  v762 = v939;
  if ((v693 & 0x8000000) != 0)
  {
    goto LABEL_1810;
  }

LABEL_1572:
  v763 = *(a1 + 748);
  if ((v763 & 0x8000) != 0)
  {
    if (*(a1 + 36) | v956 & 2)
    {
      goto LABEL_1656;
    }
  }

  else if ((v956 & 2) != 0)
  {
    goto LABEL_1656;
  }

  v106 = (v763 & 0x20400020) == 536870944;
  v764 = log ^ 1;
  v765 = *(a1 + 92);
  if (v106)
  {
    v764 = 1;
  }

  if (v764)
  {
    v769 = *numer_low - v691;
    if (v769 - v765 < 1)
    {
      *numer_low = v765;
    }

    else
    {
      *numer_low = v769;
    }
  }

  else
  {
    v766 = v762[2];
    v767 = v766 - v691;
    v768 = v766 - v765;
    if (v767 - v765 > 0)
    {
      v765 = v767;
      v768 = v691;
    }

    if (v765 - *v762 < 0)
    {
      v765 = *v762;
    }

    v762[2] = v765;
    *(a1 + 616) = (*(a1 + 616) - v768) & ~((*(a1 + 616) - v768) >> 31);
  }

LABEL_1656:
  v803 = *v28;
  if (*v28)
  {
    while (2)
    {
      v804 = v803[5];
      if (v804 == v28)
      {
        v805 = v803 + 4;
        v809 = v803[4];
        if (v809)
        {
          *(v809 + 40) = v804;
          v804 = v803[5];
        }

        else
        {
          *(a1 + 632) = v804;
        }

        *v804 = v809;
      }

      else
      {
        v806 = v803[2];
        v807 = v803[3];
        v805 = v803 + 2;
        v808 = (v806 + 24);
        if (!v806)
        {
          v808 = (a1 + 632);
        }

        *v808 = v807;
        *v807 = v806;
      }

      *v805 = 0;
      v805[1] = 0;
      v810 = v803[10];
      if (v810)
      {
        v811 = v803[11];
        v803[10] = 0;
        v803[11] = 0;
        v810(v803, 0, v811);
        goto LABEL_1667;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "__nw_frame_finalize";
      v812 = _os_log_send_and_compose_impl();
      LOBYTE(info.numer) = 16;
      v981 = OS_LOG_TYPE_DEFAULT;
      loga = v812;
      if (!__nwlog_fault())
      {
        goto LABEL_1683;
      }

      if (LOBYTE(info.numer) == 17)
      {
        v961 = __nwlog_obj();
        v953 = info.numer;
        if (os_log_type_enabled(v961, info.numer))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_finalize";
          v813 = v961;
          v814 = v953;
          v815 = "%{public}s called with null frame->finalizer";
          break;
        }

        goto LABEL_1683;
      }

      if (v981 == OS_LOG_TYPE_INFO)
      {
        v962 = __nw_create_backtrace_string();
        v954 = __nwlog_obj();
        v946 = info.numer;
        v816 = os_log_type_enabled(v954, info.numer);
        v817 = v962;
        if (v962)
        {
          if (v816)
          {
            *buf = 136446466;
            *&buf[4] = "__nw_frame_finalize";
            *&buf[12] = 2082;
            *&buf[14] = v962;
            _os_log_impl(&dword_1889BA000, v954, v946, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
            v817 = v962;
          }

          free(v817);
          goto LABEL_1683;
        }

        if (!v816)
        {
LABEL_1683:
          if (loga)
          {
            free(loga);
          }

LABEL_1667:
          v803 = *v28;
          if (!*v28)
          {
            goto LABEL_1685;
          }

          continue;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v813 = v954;
        v814 = v946;
        v815 = "%{public}s called with null frame->finalizer, no backtrace";
      }

      else
      {
        v963 = __nwlog_obj();
        v955 = info.numer;
        if (!os_log_type_enabled(v963, info.numer))
        {
          goto LABEL_1683;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v813 = v963;
        v814 = v955;
        v815 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
      }

      break;
    }

    _os_log_impl(&dword_1889BA000, v813, v814, v815, buf, 0xCu);
    goto LABEL_1683;
  }

LABEL_1685:
  *(a1 + 624) = 0;
  *(a1 + 632) = v28;
  *(a1 + 640) = 0;
  *(a1 + 312) = 0;
  switch(v761)
  {
    case '(':
      if (v943)
      {
        *(a1 + 88) &= ~0x10000000u;
      }

      tcp_mtudisc(v970);
      goto LABEL_1708;
    case '2':
      if (*(a1 + 12) >= 3)
      {
        *(a1 + 264) = 50;
        v761 = 0;
      }

      break;
    case '7':
      if (!*(a1 + 28) && !*(a1 + 36) && (v956 & 3 | v976 || *(v944 + 384)))
      {
        v818 = *(a1 + 80);
        if ((*(sysctls + 316) & 0x10) != 0 && (v819 = *(v818 + 448)) != 0)
        {
          v820 = *(a1 + 196);
          if ((*(v819 + 1202) & 0x80) != 0 && v820 < *(sysctls + 320))
          {
            atomic_fetch_add((v819 + 1152), 1uLL);
            v820 = *(sysctls + 320);
            *(a1 + 196) = v820;
            v818 = *(a1 + 80);
          }
        }

        else
        {
          v820 = *(a1 + 196);
        }

        v821 = nw_tcp_access_globals(*(v818 + 224));
        v822 = *(a1 + 140);
        if (v822 - *(v821 + 308) <= 0)
        {
          v822 = *(v821 + 308);
        }

        *(a1 + 28) = v820 - *(a1 + 64) + v822;
      }

      *(a1 + 148) = *(a1 + 200);
      *(a1 + 300) = 0;
      goto LABEL_1708;
  }

  tcp_check_timer_state(a1);
LABEL_1812:
  v859 = *MEMORY[0x1E69E9840];
  return v761;
}

uint64_t tcp_sbspace(uint64_t a1)
{
  v1 = *(*(a1 + 80) + 224);
  v2 = v1 + 116;
  v3 = *(a1 + 200);
  v4 = v1[117];
  if (*(sysctls + 40) != 1 && (v1[92] & 0x4000) == 0 && *(sysctls + 68) == 1 && !(*(a1 + 88) & 0x80000 | v1[92] & 0x40))
  {
    v5 = 16 * v3;
    if (v4 - *v2 < 16 * v3)
    {
      v6 = *(sysctls + 72);
      if (v4 < v6)
      {
        v7 = v1[125];
        if (v7 && v4 <= v7 + v5)
        {
          v9 = v4 + v5;
          if (v9 >= v6)
          {
            v10 = *(sysctls + 72);
          }

          else
          {
            v10 = v9;
          }

          v11 = a1;
          sbreserve((v1 + 116), v10);
          a1 = v11;
          v4 = v1[117];
          v3 = *(v11 + 200);
        }
      }
    }
  }

  v12 = (v4 - *v2) & ~((v4 - *v2) >> 31);
  if (v12 >= v3 && (*(a1 + 90) & 8) != 0)
  {
    v13 = *(sysctls + 48);
    if (v12 >= v13)
    {
      v14 = *(sysctls + 48);
    }

    else
    {
      v14 = v12;
    }

    if (v13 <= 0)
    {
      return v12;
    }

    else
    {
      return v14;
    }
  }

  return v12;
}

void nw_protocol_timer_run_inner(uint64_t a1, int64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (g_tcp_nw_assert_context == 1)
  {
    v5 = *(a1 + 240);
    v6 = a2;
    nw_context_assert_queue();
    a2 = v6;
  }

  v7 = 96;
  if (a3)
  {
    v7 = 88;
  }

  v8 = *(a1 + v7);
  if (a2 == -1)
  {
    v13 = *MEMORY[0x1E69E9840];
    v12 = v8;
    v11 = -1;
    goto LABEL_9;
  }

  v9 = dispatch_time(0x8000000000000000, a2);
  if (v9 != -1)
  {
    v10 = *MEMORY[0x1E69E9840];
    v11 = v9;
    v12 = v8;
LABEL_9:

    MEMORY[0x1EEDD4920](v12, v11, -1, 0);
    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_protocol_timer_run_inner";
  v14 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v15 = __nwlog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "nw_protocol_timer_run_inner";
      _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_ERROR, "%{public}s dispatch_time: Integer overflow failed, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v14)
  {
    free(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_log_packet(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 80) + 224);
  if (result && (*(result + 776) & 6) == 0)
  {
    v5 = nw_tcp_access_globals(result);
    v6 = v5;
    v9 = *(a2 + 4);
    v10 = *(a2 + 14);
    v11 = *(a2 + 13);
    if (*(a1 + 1784))
    {
      v7 = *(v5 + 308);
      nw_log_ms_to_delta();
    }

    v8 = *(v6 + 308);
    if (!v8)
    {
      v8 = -1;
    }

    *(a1 + 1784) = v8;
    return nw_log_ring_append();
  }

  return result;
}

uint64_t tcp_ip_output_send(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  v102 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 80);
  v10 = *(v9 + 496);
  v11 = *(v9 + 2372);
  if ((*(a2 + 751) & 2) == 0 || a4 != 1 || *(a2 + 640) || *(a2 + 664) + 1 >= tcp_batch_ack_max)
  {
    goto LABEL_2;
  }

  v15 = *a3;
  if (!*a3)
  {
    goto LABEL_88;
  }

  v16 = v15[14];
  v17 = MEMORY[0x1E6977EF8];
  if (!v16 || (*(v15 + 102) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((v18 = a5, !(*MEMORY[0x1E6977EF8])(*a3, v15[11])) || (a5 = v18, (v16 = v15[14]) == 0)))
  {
    if ((*(v15 + 102) & 0x100) != 0 && *v17 && ((*v17)(v15, v15[11]) & 1) == 0)
    {
      *(a2 + 1064) = 0;
    }

LABEL_88:
    if (!a1 || (*(a1 + 776) & 2) == 0)
    {
      v48 = __nwlog_tcp_log();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v49 = (a1 + 556);
        if (!a1)
        {
          v49 = &unk_188A285CF;
        }

        *buf = 136446466;
        *&buf[4] = "tcp_ip_output_send";
        *&buf[12] = 2082;
        *&buf[14] = v49;
        _os_log_impl(&dword_1889BA000, v48, OS_LOG_TYPE_INFO, "%{public}s %{public}s failed to get tcp buffer in tcp-ip output", buf, 0x16u);
      }
    }

    v50 = *a3;
    if (!*a3)
    {
LABEL_117:
      result = 6;
      goto LABEL_134;
    }

    while (1)
    {
      v51 = v50[10];
      v52 = v50[4];
      v53 = v50[5];
      v54 = (v52 + 40);
      if (!v52)
      {
        v54 = a3 + 1;
      }

      *v54 = v53;
      *v53 = v52;
      v50[4] = 0;
      v50[5] = 0;
      if (!v51)
      {
        break;
      }

      v55 = v50[11];
      v50[10] = 0;
      v50[11] = 0;
      v51(v50, 0, v55);
LABEL_99:
      v50 = *a3;
      if (!*a3)
      {
        goto LABEL_117;
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_finalize";
    v99 = OS_LOG_TYPE_ERROR;
    v98 = 0;
    v92 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      if (v99 == OS_LOG_TYPE_FAULT)
      {
        v89 = __nwlog_obj();
        if (!os_log_type_enabled(v89, v99))
        {
          goto LABEL_115;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v56 = v89;
        v57 = v99;
        v58 = "%{public}s called with null frame->finalizer";
        goto LABEL_114;
      }

      if (v98 != 1)
      {
        v91 = __nwlog_obj();
        if (!os_log_type_enabled(v91, v99))
        {
          goto LABEL_115;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v56 = v91;
        v57 = v99;
        v58 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_114;
      }

      backtrace_string = __nw_create_backtrace_string();
      v87 = __nwlog_obj();
      v59 = os_log_type_enabled(v87, v99);
      v60 = backtrace_string;
      if (backtrace_string)
      {
        if (v59)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_finalize";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_1889BA000, v87, v99, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
          v60 = backtrace_string;
        }

        free(v60);
        goto LABEL_115;
      }

      if (v59)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v56 = v87;
        v57 = v99;
        v58 = "%{public}s called with null frame->finalizer, no backtrace";
LABEL_114:
        _os_log_impl(&dword_1889BA000, v56, v57, v58, buf, 0xCu);
      }
    }

LABEL_115:
    if (v92)
    {
      free(v92);
    }

    goto LABEL_99;
  }

  if ((*(v16 + *(v15 + 14) + 13) & 7) == 0)
  {
    if (*a3)
    {
      v19 = *(a2 + 656);
      *v19 = *a3;
      *(*a3 + 40) = v19;
      *(a2 + 656) = a3[1];
      *a3 = 0;
      a3[1] = a3;
    }

    result = 0;
    ++*(a2 + 664);
    goto LABEL_134;
  }

LABEL_2:
  v12 = *(a2 + 648);
  if (v12)
  {
    if (*a3)
    {
      v13 = *(a2 + 656);
      *v13 = *a3;
      *(*a3 + 40) = v13;
      *(a2 + 656) = a3[1];
      *a3 = 0;
      a3[1] = a3;
      v12 = *(a2 + 648);
      v14 = a3;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = a3[1];
    }

    *v14 = v12;
    *(*(a2 + 648) + 40) = v14;
    a3[1] = *(a2 + 656);
    *(a2 + 648) = 0;
    *(a2 + 656) = a2 + 648;
LABEL_21:
    *(a2 + 664) = 0;
  }

  ++*(v9 + 2382);
  if (*(sysctls + 100) && !*(a1 + 544))
  {
    v21 = 1;
    if (!a5 && *(a2 + 12) == 4 && (*(a2 + 90) & 0x20) == 0 && (*(a1 + 367) & 1) == 0)
    {
      (*(*(a1 + 8) + 24))(a1, 0, v5);
      v21 = 0;
    }
  }

  else
  {
    v21 = 1;
  }

  v22 = *(*(a1 + 24) + 32);
  if (__nwlog_is_datapath_logging_enabled())
  {
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 0x40000000;
    v94 = __tcp_ip_output_send_block_invoke;
    v95 = &__block_descriptor_tmp_487;
    v96 = a2;
    v97 = a1;
    v71 = *a3;
    do
    {
      if (!v71)
      {
        break;
      }

      v72 = *(v71 + 32);
      v73 = (v94)(v93);
      v71 = v72;
    }

    while ((v73 & 1) != 0);
  }

  v23 = MEMORY[0x1E6977EF0];
  if (*MEMORY[0x1E6977EF0] != -1)
  {
    dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_488);
  }

  v24 = MEMORY[0x1E6977EE8];
  if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v101 = 0;
    nw_frame_array_foreach();
    if (*v23 != -1)
    {
      dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_488);
    }

    if (*v24 == 1 && kdebug_is_enabled())
    {
      v77 = *(a1 + 640);
      v78 = *(*&buf[8] + 24);
      nw_frame_array_unclaimed_length();
      v79 = *(a2 + 128);
      kdebug_trace();
    }

    _Block_object_dispose(buf, 8);
  }

  if (((*(*(v22 + 24) + 96))(v22, a3) & 1) == 0)
  {
    v25 = *a3;
    if (!*a3)
    {
      goto LABEL_56;
    }

    while (1)
    {
      v26 = v25[10];
      v27 = v25[4];
      v28 = v25[5];
      v29 = (v27 + 40);
      if (!v27)
      {
        v29 = a3 + 1;
      }

      *v29 = v28;
      *v28 = v27;
      v25[4] = 0;
      v25[5] = 0;
      if (!v26)
      {
        break;
      }

      v30 = v25[11];
      v25[10] = 0;
      v25[11] = 0;
      v26(v25, 0, v30);
LABEL_38:
      v25 = *a3;
      if (!*a3)
      {
        goto LABEL_56;
      }
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_finalize";
    v31 = _os_log_send_and_compose_impl();
    v99 = OS_LOG_TYPE_ERROR;
    v98 = 0;
    v88 = v31;
    if (__nwlog_fault())
    {
      if (v99 == OS_LOG_TYPE_FAULT)
      {
        v84 = __nwlog_obj();
        log = v99;
        if (!os_log_type_enabled(v84, v99))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v32 = v84;
        v33 = log;
        v34 = "%{public}s called with null frame->finalizer";
        goto LABEL_53;
      }

      if (v98 != 1)
      {
        v86 = __nwlog_obj();
        logb = v99;
        if (!os_log_type_enabled(v86, v99))
        {
          goto LABEL_54;
        }

        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v32 = v86;
        v33 = logb;
        v34 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_53;
      }

      v85 = __nw_create_backtrace_string();
      loga = __nwlog_obj();
      type = v99;
      v35 = os_log_type_enabled(loga, v99);
      v36 = v85;
      if (v85)
      {
        if (v35)
        {
          *buf = 136446466;
          *&buf[4] = "__nw_frame_finalize";
          *&buf[12] = 2082;
          *&buf[14] = v85;
          _os_log_impl(&dword_1889BA000, loga, type, "%{public}s called with null frame->finalizer, dumping backtrace:%{public}s", buf, 0x16u);
          v36 = v85;
        }

        free(v36);
        goto LABEL_54;
      }

      if (v35)
      {
        *buf = 136446210;
        *&buf[4] = "__nw_frame_finalize";
        v32 = loga;
        v33 = type;
        v34 = "%{public}s called with null frame->finalizer, no backtrace";
LABEL_53:
        _os_log_impl(&dword_1889BA000, v32, v33, v34, buf, 0xCu);
      }
    }

LABEL_54:
    if (v88)
    {
      free(v88);
    }

    goto LABEL_38;
  }

  if (*(a2 + 12) == 2)
  {
    ++*(a2 + 1876);
  }

LABEL_56:
  if ((v21 & 1) == 0)
  {
    (*(*(a1 + 8) + 16))(a1, 0, v5);
  }

  if ((*(v9 + 2375) & 0x10) != 0)
  {
    if ((v11 & 0x10000000) != 0)
    {
      result = 0;
      goto LABEL_65;
    }

LABEL_63:
    result = 55;
    goto LABEL_65;
  }

  result = 0;
  if ((*(*(v9 + 224) + 366) & 2) != 0 && (v11 & 0x10000000) == 0)
  {
    goto LABEL_63;
  }

LABEL_65:
  v37 = *(v9 + 2382);
  *(v9 + 2382) = v37 - 1;
  if (v37)
  {
    if (!v10)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v74 = result;
  v75 = __nwlog_obj();
  os_log_type_enabled(v75, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "tcp_ip_output_send";
  v76 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v76);
    result = v74;
    if (!v10)
    {
      goto LABEL_70;
    }

LABEL_67:
    v38 = *(v10 + 216);
    if (v38 != *(v9 + 448) && *(a1 + 384))
    {
      v39 = result;
      os_unfair_lock_lock((a2 + 1872));
      *(v9 + 448) = v38;
      os_unfair_lock_unlock((a2 + 1872));
      result = v39;
    }

LABEL_70:
    if (*(a2 + 12) <= 3 && !*(a2 + 234))
    {
      v40 = *(a2 + 80);
      v41 = v40[62];
      if (v41)
      {
        v42 = *(v41 + 1632);
        if (!v42 || (v43 = *(v42 + 64)) == 0 || *(a2 + 1880) == 1)
        {
LABEL_127:
          if ((*(sysctls + 316) & 0x10) != 0 && (v65 = v40[56]) != 0 && (*(v65 + 1202) & 0x80) != 0)
          {
            v66 = result;
            if (*(a2 + 196) < *(sysctls + 320))
            {
              atomic_fetch_add((v65 + 1152), 1uLL);
              *(a2 + 196) = *(sysctls + 320);
              v40 = *(a2 + 80);
            }
          }

          else
          {
            v66 = result;
          }

          v67 = *(a2 + 196);
          v68 = nw_tcp_access_globals(v40[28]);
          v69 = *(a2 + 140);
          if (v69 - *(v68 + 308) <= 0)
          {
            v69 = *(v68 + 308);
          }

          *(a2 + 28) = v67 - *(a2 + 64) + v69;
          result = v66;
          goto LABEL_134;
        }

        *(a2 + 236) = 30;
        v44 = v43 / 0x1F;
        v45 = *(a2 + 1064);
        if (v45)
        {
          ++*(v45 + 1280);
          v46 = *(v42 + 68);
          if (v46)
          {
            v47 = v46 / 0x3E;
            ++*(v45 + 1288);
LABEL_121:
            v62 = v47 + (v44 >> 3);
            v63 = v62 >> 2;
            if (v62 >> 2 <= 0x1E)
            {
              v63 = 30;
            }

            if (v62 <= 0x3E803)
            {
              v64 = v63;
            }

            else
            {
              v64 = 64000;
            }

            *(a2 + 196) = v64;
            goto LABEL_127;
          }
        }

        else
        {
          v61 = *(v42 + 68);
          if (v61)
          {
            v47 = v61 / 0x3E;
            goto LABEL_121;
          }
        }

        v47 = *(a2 + 204) / 2;
        goto LABEL_121;
      }
    }

LABEL_134:
    v70 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}