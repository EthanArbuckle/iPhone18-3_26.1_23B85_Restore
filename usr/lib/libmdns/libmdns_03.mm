void _mdns_querier_send_query(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 + 32) + 100) - 1) >= 0x20)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << (*(*(a2 + 32) + 100) - 1);
  }

  if (*(a2 + 88) == 1 && *(a2 + 90) == 1)
  {
    *(a1 + 216) &= ~v3;
    if (*(a2 + 89) != 1 || (*(a1 + 220) & v3) == 0)
    {
      _mdns_querier_send_query_immediate(a1, a2);
      *(a1 + 220) |= v3;
    }
  }

  else
  {
    *(a1 + 216) |= v3;
  }
}

void _mdns_querier_send_query_immediate(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x29EDCA608];
  if (*(a2 + 88) == 1)
  {
    v4 = *(a1 + 96);
    v5 = *(v4 + 64);
    v6 = *(v4 + 24);
    *(a2 + 64) = mach_continuous_time();
    v7 = *(*(a2 + 16) + 80);
    if (v7)
    {
      v7(a2, v6, v5);
    }
  }

  atomic_fetch_add((a1 + 208), 1u);
  if (*(a1 + 128))
  {
    v8 = *(a1 + 128);
  }

  else
  {
    v8 = "";
  }

  v9 = *(*(a1 + 96) + 40);
  v10 = *(a1 + 72);
  v11 = 148;
  if (*(a2 + 89))
  {
    v11 = 152;
  }

  v12 = *(*(v10 + 16) + v11);
  interface_log_string = _mdns_resolver_get_interface_log_string(v10);
  v14 = *(a1 + 96);
  if (v9 < 0xC)
  {
    if (*(a1 + 255) == 1)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v22 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v23 = *(a1 + 208);
      v24 = *(a2 + 32);
      v25 = *(*(a1 + 96) + 32);
      v74 = 136448259;
      v75 = v8;
      v76 = 2048;
      v77 = v9;
      v78 = 1024;
      v79 = v23;
      v80 = 2112;
      v81 = v24;
      v82 = 1024;
      v83 = v12;
      v84 = 2082;
      v85 = interface_log_string;
      v86 = 1040;
      *v87 = v9;
      *&v87[4] = 2098;
      *&v87[6] = v25;
      *&v87[14] = 2117;
      *&v87[16] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %{sensitive}@";
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v22 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_31;
      }

      v32 = *(a1 + 208);
      v33 = *(a2 + 32);
      v34 = *(*(a1 + 96) + 32);
      v74 = 136448258;
      v75 = v8;
      v76 = 2048;
      v77 = v9;
      v78 = 1024;
      v79 = v32;
      v80 = 2112;
      v81 = v33;
      v82 = 1024;
      v83 = v12;
      v84 = 2082;
      v85 = interface_log_string;
      v86 = 1040;
      *v87 = v9;
      *&v87[4] = 2098;
      *&v87[6] = v34;
      *&v87[14] = 2112;
      *&v87[16] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %@";
    }

    v30 = v22;
    v31 = 80;
    goto LABEL_30;
  }

  v15 = *(v14 + 32);
  if (*(a1 + 255) == 1)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 208);
      v18 = *(a2 + 32);
      v19 = bswap32(*v15);
      v20 = bswap64(*(v15 + 4));
      v74 = 136448259;
      v75 = v8;
      v76 = 2048;
      v77 = v9;
      v78 = 1024;
      v79 = v17;
      v80 = 2112;
      v81 = v18;
      v82 = 1024;
      v83 = v12;
      v84 = 2082;
      v85 = interface_log_string;
      v86 = 2048;
      *v87 = v19;
      *&v87[8] = 2048;
      *&v87[10] = v20;
      *&v87[18] = 2117;
      *&v87[20] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %{sensitive}@";
LABEL_24:
      v30 = v16;
      v31 = 84;
LABEL_30:
      _os_log_impl(&dword_2990ED000, v30, OS_LOG_TYPE_DEFAULT, v21, &v74, v31);
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 208);
      v27 = *(a2 + 32);
      v28 = bswap32(*v15);
      v29 = bswap64(*(v15 + 4));
      v74 = 136448258;
      v75 = v8;
      v76 = 2048;
      v77 = v9;
      v78 = 1024;
      v79 = v26;
      v80 = 2112;
      v81 = v27;
      v82 = 1024;
      v83 = v12;
      v84 = 2082;
      v85 = interface_log_string;
      v86 = 2048;
      *v87 = v28;
      *&v87[8] = 2048;
      *&v87[10] = v29;
      *&v87[18] = 2112;
      *&v87[20] = v14;
      v21 = "%{public}sSent %zu-byte query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %@";
      goto LABEL_24;
    }
  }

LABEL_31:
  if (!*(*(a1 + 72) + 128))
  {
    goto LABEL_38;
  }

  v35 = *(a2 + 32);
  if (*(v35 + 107))
  {
    goto LABEL_38;
  }

  v36 = *(a1 + 96);
  if ((*(v36 + 64) & 0xFFFE) != 0x40)
  {
    goto LABEL_38;
  }

  v37 = (*(v35 + 100) - 1) >= 0x20 ? 0 : 1 << (*(v35 + 100) - 1);
  if ((v37 & *(a1 + 200)) != 0)
  {
    goto LABEL_38;
  }

  v39 = *(v35 + 64);
  if (v39)
  {
    if (!_pqw_info_can_accept_qname(v39, *(*(v36 + 56) + 24)))
    {
      goto LABEL_38;
    }
  }

  v40 = *(a1 + 192);
  if (v40)
  {
    goto LABEL_61;
  }

  v41 = *(v35 + 104);
  if (!v41)
  {
    if (nw_endpoint_get_type(*(v35 + 48)) == nw_endpoint_type_address)
    {
      if (nw_endpoint_get_address(*(v35 + 48))->sa_family == 30)
      {
        v41 = 28;
      }

      else
      {
        v41 = 1;
      }
    }

    else
    {
      v41 = 1;
    }

    *(v35 + 104) = v41;
  }

  v42 = mdns_query_message_create();
  if (!v42)
  {
LABEL_92:
    *(a1 + 192) = 0;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v72 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v73 = *(a1 + 128);
      if (!v73)
      {
        v73 = "";
      }

      v74 = 136446210;
      v75 = v73;
      _os_log_error_impl(&dword_2990ED000, v72, OS_LOG_TYPE_ERROR, "%{public}sFailed to create test query", &v74, 0xCu);
    }

    goto LABEL_38;
  }

  v40 = v42;
  mdns_query_message_set_qname(v42, *(v36 + 56));
  if ((*(v40 + 70) & 0x20) == 0)
  {
    *(v40 + 64) = v41;
    *(v40 + 66) = *(v36 + 66);
  }

  v43 = arc4random();
  if ((*(v40 + 70) & 0x20) == 0)
  {
    v44 = -2 - v43 % 0xFFFF;
    if (v43 % 0xFFFF == 65534)
    {
      LOWORD(v44) = 1;
    }

    if (*(v36 + 68) == (v43 % 0xFFFF + 1))
    {
      v45 = v44;
    }

    else
    {
      v45 = v43 % 0xFFFF + 1;
    }

    *(v40 + 68) = v45;
  }

  if (mdns_query_message_construct(v40))
  {
    os_release(v40);
    goto LABEL_92;
  }

  *(a1 + 192) = v40;
LABEL_61:
  if (*(a2 + 88) == 1)
  {
    v46 = *(v40 + 24);
    v47 = *(v40 + 64);
    *(a2 + 64) = mach_continuous_time();
    v48 = *(*(a2 + 16) + 80);
    if (v48)
    {
      v48(a2, v46, v47);
    }
  }

  v49 = *(a1 + 246);
  if (v49 != 255)
  {
    *(a1 + 246) = v49 + 1;
  }

  v50 = *(a1 + 192);
  if (v50)
  {
    v51 = *(v50 + 40);
    if (*(a1 + 255) == 1)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v52 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 128))
        {
          v53 = *(a1 + 128);
        }

        else
        {
          v53 = "";
        }

        v54 = *(a1 + 246);
        v55 = *(a2 + 32);
        v56 = *(a1 + 72);
        v57 = 148;
        if (*(a2 + 89))
        {
          v57 = 152;
        }

        v58 = *(*(v56 + 16) + v57);
        v59 = _mdns_resolver_get_interface_log_string(v56);
        v60 = 12;
        v61 = *(*(a1 + 192) + 32);
        if (v51 < 0xC)
        {
          v60 = v51;
        }

        v74 = 136448259;
        v75 = v53;
        v76 = 2048;
        v77 = v51;
        v78 = 1024;
        v79 = v54;
        v80 = 2112;
        v81 = v55;
        v82 = 1024;
        v83 = v58;
        v84 = 2082;
        v85 = v59;
        v86 = 1040;
        *v87 = v60;
        *&v87[4] = 2098;
        *&v87[6] = v61;
        *&v87[14] = 2117;
        *&v87[16] = v50;
        v62 = "%{public}sSent %zu-byte test query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %{sensitive}@";
LABEL_90:
        _os_log_impl(&dword_2990ED000, v52, OS_LOG_TYPE_DEFAULT, v62, &v74, 0x50u);
      }
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v52 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 128))
        {
          v63 = *(a1 + 128);
        }

        else
        {
          v63 = "";
        }

        v64 = *(a1 + 246);
        v65 = *(a2 + 32);
        v66 = *(a1 + 72);
        v67 = 148;
        if (*(a2 + 89))
        {
          v67 = 152;
        }

        v68 = *(*(v66 + 16) + v67);
        v69 = _mdns_resolver_get_interface_log_string(v66);
        v70 = 12;
        v71 = *(*(a1 + 192) + 32);
        if (v51 < 0xC)
        {
          v70 = v51;
        }

        v74 = 136448258;
        v75 = v63;
        v76 = 2048;
        v77 = v51;
        v78 = 1024;
        v79 = v64;
        v80 = 2112;
        v81 = v65;
        v82 = 1024;
        v83 = v68;
        v84 = 2082;
        v85 = v69;
        v86 = 1040;
        *v87 = v70;
        *&v87[4] = 2098;
        *&v87[6] = v71;
        *&v87[14] = 2112;
        *&v87[16] = v50;
        v62 = "%{public}sSent %zu-byte test query #%u to %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %@";
        goto LABEL_90;
      }
    }
  }

LABEL_38:
  _mdns_resolver_start_pending_queriers(*(a1 + 72));
  v38 = *MEMORY[0x29EDCA608];
}

const char *_mdns_resolver_get_interface_log_string(uint64_t a1)
{
  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  if (!v1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      name = nw_interface_get_name(v4);
      v4 = *(a1 + 48);
      if (v4)
      {
        LODWORD(v4) = nw_interface_get_index(v4);
      }
    }

    else
    {
      name = "any";
    }

    v6 = "";
    if (name)
    {
      v6 = name;
    }

    asprintf(v2, "%s/%u", v6, v4);
    v1 = *v2;
  }

  if (v1)
  {
    return v1;
  }

  else
  {
    return "???";
  }
}

BOOL _pqw_info_can_accept_qname(uint64_t *a1, unsigned __int8 *a2)
{
  if (*(a1 + 2) >= *(a1 + 3))
  {
    return 0;
  }

  v3 = a1;
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    if (DomainNameEqual(v3[1], a2))
    {
      return 0;
    }
  }

  return result;
}

void _mdns_resolver_start_pending_queriers(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 96);
    if (v2)
    {
LABEL_7:
      dispatch_source_merge_data(v2, 1uLL);
      return;
    }

    if (_mdns_resolver_queue_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
    }

    v3 = dispatch_source_create(MEMORY[0x29EDCA590], 0, 0, _mdns_resolver_queue_s_queue);
    *(a1 + 96) = v3;
    if (v3)
    {
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = ___mdns_resolver_start_pending_queriers_block_invoke;
      handler[3] = &__block_descriptor_tmp_121_1356;
      handler[4] = a1;
      dispatch_source_set_event_handler(v3, handler);
      dispatch_activate(*(a1 + 96));
      v2 = *(a1 + 96);
      goto LABEL_7;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v4 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2990ED000, v4, OS_LOG_TYPE_ERROR, "Failed to create pending querier starter GCD source", buf, 2u);
    }
  }
}

void ___mdns_resolver_start_pending_queriers_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v4 = *(v1 + 40);
  v2 = (v1 + 40);
  v3 = v4;
  if (v4)
  {
    do
    {
      *v2 = *(v3 + 64);
      *(v3 + 64) = 0;
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
      {
        v7 = *(v3 + 128);
        if (!v7)
        {
          v7 = "";
        }

        *buf = 136446210;
        v12 = v7;
        _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_INFO, "%{public}sStarting pending querier due to observed traffic activity", buf, 0xCu);
      }

      _mdns_resolver_start_querier(*(a1 + 32), v3);
      os_release(v3);
      v8 = *(a1 + 32);
      v9 = *(v8 + 40);
      v2 = (v8 + 40);
      v3 = v9;
    }

    while (v9);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void _mdns_querier_session_receive(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = mdns_message_create_with_dispatch_data(a2);
  if (v5)
  {
    v6 = v5;
    v31 = 0;
    v7 = *(a1 + 89);
    if (*(a1 + 89))
    {
      v8 = 0;
    }

    else
    {
      v8 = &v31 + 1;
    }

    v9 = v7 | *(*(*(a3 + 72) + 16) + 161) ^ 1;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = &v31;
    }

    v30 = 0;
    is_response_acceptable = _mdns_querier_is_response_acceptable(a3, v5, v8, v10, &v30);
    if (*(a3 + 128))
    {
      v12 = *(a3 + 128);
    }

    else
    {
      v12 = "";
    }

    _mdns_resolver_log_receive(*(a3 + 72), a1, v6, is_response_acceptable, v12, *(a3 + 255));
    v13 = *(a1 + 32);
    if (is_response_acceptable)
    {
      v14 = *(a3 + 72);
      v15 = *(a1 + 56);
      v16 = (*(*(a3 + 16) + 96))(a3);
      _mdns_resolver_note_responsiveness(v14, v13, v7, v15, v16);
      if (v30 > 9u || ((1 << v30) & 0x209) == 0)
      {
        _mdns_querier_handle_bad_rcode(a3, v6, v30, v13);
        goto LABEL_45;
      }

      if ((v7 & 1) != 0 || HIBYTE(v31) != 1)
      {
        _mdns_querier_conclude_ex(a3, 1, 0, v6);
        goto LABEL_45;
      }

      *(a3 + 250) = HIBYTE(v31);
    }

    else
    {
      if ((v9 & 1) != 0 || v31 != 1)
      {
        v20 = *(a3 + 72);
        if (*(v20 + 128) && (v21 = *(a3 + 192)) != 0 && (is_query_response = _mdns_message_is_query_response_ex(*(v6 + 32), *(v6 + 40), v21, 0, 0, 1), v20 = *(a3 + 72), is_query_response))
        {
          if ((*(v13 + 100) - 1) >= 0x20)
          {
            v23 = 0;
          }

          else
          {
            v23 = 1 << (*(v13 + 100) - 1);
          }

          *(a3 + 200) |= v23;
          _mdns_resolver_note_responsiveness(v20, v13, v7, *(a1 + 56), *(*(a3 + 192) + 64));
        }

        else if (*(*(v20 + 16) + 144) == 1 && (*(v13 + 112) & 1) == 0)
        {
          v24 = (*(*(a3 + 16) + 96))(a3);
          v25 = _mdns_qtype_is_problematic;
          v26 = v24 == 1 || v24 == 28;
          if (v26 || (v25 = _mdns_qtype_is_address_type, (v24 & 0xFFFE) == 0x40))
          {
            v27 = v25;
            *buf = 0;
            if (_mdns_message_is_query_response_ex(*(v6 + 32), *(v6 + 40), *(a3 + 96), 0, buf, 0))
            {
              if ((v27)(*buf))
              {
                *(v13 + 112) = 1;
              }
            }
          }
        }

        goto LABEL_45;
      }

      *(a3 + 250) = 2;
      v17 = *(a3 + 72);
      if (mdns_mach_ticks_per_second_s_once != -1)
      {
        dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
      }

      v18 = mdns_mach_ticks_per_second_s_ticks_per_second;
      *(v17 + 88) = mach_continuous_time() + 10 * v18;
      *(v17 + 134) = 1;
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v19 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v33 = 10;
        _os_log_impl(&dword_2990ED000, v19, OS_LOG_TYPE_INFO, "Got suspicious response, entering suspicious mode for %d seconds", buf, 8u);
      }
    }

    _mdns_resolver_deregister_querier(*(a3 + 72), a3);
    _mdns_resolver_register_querier_ex(*(a3 + 72), a3, 1);
LABEL_45:
    os_release(v6);
    v28 = *MEMORY[0x29EDCA608];
    return;
  }

  v29 = *MEMORY[0x29EDCA608];

  _mdns_querier_conclude_ex(a3, 5, -6729, 0);
}

uint64_t _mdns_querier_is_response_acceptable(uint64_t a1, uint64_t a2, BOOL *a3, _BYTE *a4, _WORD *a5)
{
  v7 = *(a2 + 40);
  if (v7 < 0xC)
  {
    result = 0;
LABEL_21:
    v16 = 0;
    if (!a4)
    {
      return result;
    }

    goto LABEL_18;
  }

  v17 = 0;
  v11 = *(a2 + 32);
  result = _mdns_message_is_query_response_ex(v11, v7, *(a1 + 96), &v17, 0, 0);
  if (!result)
  {
    goto LABEL_21;
  }

  v13 = *(a1 + 96);
  if (v17 == *(v13 + 68))
  {
    v14 = *(v11 + 3);
    if (a3)
    {
      v15 = (*(v11 + 2) & 2) != 0 && ((*(v13 + 70) & 4) != 0 || !__rev16(*(v11 + 6)) || !__rev16(*(v11 + 8)) && !__rev16(*(v11 + 10)));
      *a3 = v15;
    }

    if (a5)
    {
      *a5 = v14 & 0xF;
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = 1;
  if (a4)
  {
LABEL_18:
    *a4 = v16 & (result ^ 1);
  }

  return result;
}

void _mdns_resolver_log_receive(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, int a6)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = "";
  }

  v11 = *(a3 + 40);
  v12 = 148;
  if (*(a2 + 89))
  {
    v12 = 152;
  }

  v13 = *(*(a1 + 16) + v12);
  interface_log_string = _mdns_resolver_get_interface_log_string(a1);
  if (v11 < 0xC)
  {
    if (a6)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v21 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v22 = *(a2 + 32);
      v23 = *(a3 + 32);
      v32 = 136448259;
      v33 = v10;
      v34 = 1024;
      v35 = a4;
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = v22;
      v40 = 1024;
      v41 = v13;
      v42 = 2082;
      v43 = interface_log_string;
      v44 = 1040;
      *v45 = v11;
      *&v45[4] = 2098;
      *&v45[6] = v23;
      *&v45[14] = 2117;
      *&v45[16] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %{sensitive}@";
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v21 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v29 = *(a2 + 32);
      v30 = *(a3 + 32);
      v32 = 136448258;
      v33 = v10;
      v34 = 1024;
      v35 = a4;
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = v29;
      v40 = 1024;
      v41 = v13;
      v42 = 2082;
      v43 = interface_log_string;
      v44 = 1040;
      *v45 = v11;
      *&v45[4] = 2098;
      *&v45[6] = v30;
      *&v45[14] = 2112;
      *&v45[16] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{public,mdns:dnshdr}.*P, %@";
    }

    v27 = v21;
    v28 = 80;
    goto LABEL_27;
  }

  v15 = *(a3 + 32);
  if (a6)
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a2 + 32);
      v18 = bswap32(*v15);
      v19 = bswap64(*(v15 + 4));
      v32 = 136448259;
      v33 = v10;
      v34 = 1024;
      v35 = a4;
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = v17;
      v40 = 1024;
      v41 = v13;
      v42 = 2082;
      v43 = interface_log_string;
      v44 = 2048;
      *v45 = v18;
      *&v45[8] = 2048;
      *&v45[10] = v19;
      *&v45[18] = 2117;
      *&v45[20] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %{sensitive}@";
LABEL_21:
      v27 = v16;
      v28 = 84;
LABEL_27:
      _os_log_impl(&dword_2990ED000, v27, OS_LOG_TYPE_DEFAULT, v20, &v32, v28);
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v16 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a2 + 32);
      v25 = bswap32(*v15);
      v26 = bswap64(*(v15 + 4));
      v32 = 136448258;
      v33 = v10;
      v34 = 1024;
      v35 = a4;
      v36 = 2048;
      v37 = v11;
      v38 = 2112;
      v39 = v24;
      v40 = 1024;
      v41 = v13;
      v42 = 2082;
      v43 = interface_log_string;
      v44 = 2048;
      *v45 = v25;
      *&v45[8] = 2048;
      *&v45[10] = v26;
      *&v45[18] = 2112;
      *&v45[20] = a3;
      v20 = "%{public}sReceived %{mdns:acceptable}d %zu-byte response from %@ over %{mdns:protocol}d via %{public}s -- %{mdns:dns.idflags}08lX, counts: %{mdns:dns.counts}016llX, %@";
      goto LABEL_21;
    }
  }

LABEL_28:
  v31 = *MEMORY[0x29EDCA608];
}

void _mdns_resolver_note_responsiveness(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a4 - *(a2 + 80) >= 1)
  {
    *(a2 + 80) = a4;
  }

  if ((a5 & 0xFFFFFFFE) == 0x40 && (*(a2 + 107) & 1) == 0)
  {
    *(a2 + 107) = 1;
  }

  _mdns_resolver_unpenalize_server(a1, a2, 1);
  if (*(a2 + 109) == 1)
  {
    *(a2 + 109) = 0;
    if (*(a1 + 132) == 1 && nw_endpoint_get_type(*(a2 + 48)) == nw_endpoint_type_address)
    {
      address = nw_endpoint_get_address(*(a2 + 48));
      _mdns_symptoms_report_dns_server_symptom(413698, address);
    }
  }

  if (!a3)
  {
    if (!*(a2 + 40))
    {
      v9 = *(a1 + 124);
      if (v9 / 0xA + v9 <= v9)
      {
        v10 = *(a1 + 124);
      }

      else
      {
        v10 = v9 / 0xA + v9;
      }

      oneshot_timer = _mdns_resolver_create_oneshot_timer(v10, 5u);
      *(a2 + 40) = oneshot_timer;
      if (oneshot_timer)
      {
        v12 = mach_continuous_time();
        v13 = *(a2 + 40);
        v22 = MEMORY[0x29EDCA5F8];
        *&v23 = 0x40000000;
        *(&v23 + 1) = ___mdns_resolver_schedule_fast_recovery_check_block_invoke;
        v24 = &__block_descriptor_tmp_120_1364;
        v25 = a2;
        v26 = a1;
        v27 = v12;
        dispatch_source_set_event_handler(v13, &v22);
        dispatch_activate(*(a2 + 40));
      }

      else
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v21 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v22) = 0;
          _os_log_error_impl(&dword_2990ED000, v21, OS_LOG_TYPE_ERROR, "Failed to create fast recovery timer", &v22, 2u);
        }
      }
    }

    goto LABEL_39;
  }

  if (*(*(a1 + 16) + 158) != 1)
  {
    goto LABEL_39;
  }

  if (*(a2 + 110) == 1)
  {
    *(a2 + 96) = 0;
    *(a2 + 110) = 0;
  }

  else
  {
    v14 = *(a2 + 96);
    *(a2 + 96) = 0;
    *(a2 + 110) = 0;
    if (v14 < 3)
    {
      goto LABEL_25;
    }
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v15 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*(a1 + 16) + 152);
    LODWORD(v22) = 67109378;
    HIDWORD(v22) = v16;
    LOWORD(v23) = 2112;
    *(&v23 + 2) = a2;
    _os_log_impl(&dword_2990ED000, v15, OS_LOG_TYPE_DEFAULT, "Cleared stream problems with %{mdns:protocol}d server %@", &v22, 0x12u);
  }

LABEL_25:
  if (*(a1 + 139) == 1)
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      while (*(v17 + 106) - 1 > 3 || (*(v17 + 110) & 1) != 0 || *(v17 + 96) >= 3u)
      {
        v17 = *(v17 + 24);
        if (!v17)
        {
          goto LABEL_39;
        }
      }

      *(a1 + 139) = 0;
      v18 = *(a1 + 104);
      if (v18)
      {
        dispatch_source_cancel(*(a1 + 104));
        dispatch_release(v18);
        *(a1 + 104) = 0;
      }

      v19 = *(a1 + 112);
      if (v19)
      {
        mdns_client_invalidate(v19);
        os_release(*(a1 + 112));
        *(a1 + 112) = 0;
      }

      _mdns_resolver_generate_connection_event(a1);
      os_retain(a1);
      if (_mdns_resolver_queue_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
      }

      v22 = MEMORY[0x29EDCA5F8];
      *&v23 = 0x40000000;
      *(&v23 + 1) = ___mdns_resolver_start_serverless_queries_async_block_invoke;
      v24 = &__block_descriptor_tmp_119_1362;
      v25 = a1;
      dispatch_async(_mdns_resolver_queue_s_queue, &v22);
    }
  }

LABEL_39:
  _mdns_resolver_start_pending_queriers(a1);
  v20 = *MEMORY[0x29EDCA608];
}

void _mdns_querier_handle_bad_rcode(uint64_t a1, void *object, int a3, uint64_t a4)
{
  if ((*(a4 + 100) - 1) >= 0x20)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << (*(a4 + 100) - 1);
  }

  *(a1 + 224) |= v8;
  v9 = *(a1 + 244);
  v10 = *(a1 + 144);
  if (v9 < 0)
  {
    if (v10)
    {
      os_release(v10);
      *(a1 + 144) = 0;
    }

    *(a1 + 244) = 0;
  }

  else if (v10 && (a3 == 5 || v9 != 5))
  {
    goto LABEL_15;
  }

  os_retain(object);
  v11 = *(a1 + 144);
  if (v11)
  {
    os_release(v11);
  }

  *(a1 + 144) = object;
  *(a1 + 244) = a3;
LABEL_15:
  if (a3 == 5)
  {
    _mdns_resolver_penalize_server_ex(*(a1 + 72), a4, 0, 0, 0);
  }

  if (_mdns_resolver_get_server(*(a1 + 72), *(a1 + 224)))
  {
    if (*(a1 + 80) == a4)
    {
      *(a1 + 80) = 0;
      *(a1 + 247) = 0;

      _mdns_querier_initiate_send(a1);
    }
  }

  else
  {
    v12 = *(a1 + 144);
    *(a1 + 144) = 0;
    _mdns_querier_conclude_ex(a1, 1, 0, v12);

    os_release(v12);
  }
}

uint64_t _mdns_message_is_query_response_ex(char *a1, unint64_t a2, uint64_t a3, _WORD *a4, _WORD *a5, char a6)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a2 < 0xC)
  {
    goto LABEL_18;
  }

  v10 = __rev16(*a1);
  if (!a4 && v10 != *(a3 + 68))
  {
    goto LABEL_18;
  }

  if ((a1[2] & 0xF8) != 0x80)
  {
    goto LABEL_18;
  }

  if (__rev16(*(a1 + 2)) != 1)
  {
    goto LABEL_18;
  }

  v13 = 0;
  if (DNSMessageExtractQuestion(a1, a2, a1 + 12, v14, &v13 + 1, &v13, 0))
  {
    goto LABEL_18;
  }

  if ((a6 & 1) == 0)
  {
    result = DomainNameEqual(v14, *(*(a3 + 56) + 24));
    if (!result)
    {
      goto LABEL_17;
    }
  }

  if (!a5 && HIWORD(v13) != *(a3 + 64) || v13 != *(a3 + 66))
  {
LABEL_18:
    result = 0;
    goto LABEL_17;
  }

  if (a4)
  {
    *a4 = v10;
  }

  if (a5)
  {
    *a5 = HIWORD(v13);
  }

  result = 1;
LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void _mdns_resolver_unpenalize_server(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(a2 + 108) == 1)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = v5;
      v5 = *(v5 + 24);
      if (v5)
      {
        v7 = v5 == a2;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (v5)
    {
      *(v6 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 108) = 0;
      if (a3)
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v8 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v12 = 138412290;
        v13 = a2;
        v9 = "Unpenalizing responsive server %@";
      }

      else
      {
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v8 = _mdns_resolver_log_s_log;
        if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v12 = 138412290;
        v13 = a2;
        v9 = "Unpenalizing server %@";
      }

      _os_log_impl(&dword_2990ED000, v8, OS_LOG_TYPE_INFO, v9, &v12, 0xCu);
      do
      {
LABEL_19:
        v10 = v4;
        v4 = *(v4 + 24);
      }

      while (v4 && (*(v4 + 108) & 1) == 0 && *(v4 + 100) <= *(a2 + 100));
      *(a2 + 24) = v4;
      *(v10 + 24) = a2;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void ___mdns_resolver_start_serverless_queries_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 136) & 1) == 0)
  {
    v3 = v2;
    while (1)
    {
      v3 = *(v3 + 24);
      if (!v3)
      {
        break;
      }

      if (*(v3 + 106) - 1 <= 3)
      {
        v4 = *(v2 + 32);
        if (v4)
        {
          do
          {
            if (!*(v4 + 80))
            {
              *(v4 + 247) = 0;
              if (*(v4 + 251))
              {
                v5 = 2000;
              }

              else
              {
                v5 = *(*(v4 + 72) + 124);
              }

              *(v4 + 204) = v5;
              _mdns_querier_initiate_send(v4);
            }

            v4 = *(v4 + 64);
          }

          while (v4);
          v2 = *(a1 + 32);
        }

        break;
      }
    }
  }

  os_release(v2);
}

void ___mdns_resolver_schedule_fast_recovery_check_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (v3)
  {
    dispatch_source_cancel(*(v2 + 40));
    dispatch_release(v3);
    *(a1[4] + 40) = 0;
    v2 = a1[4];
  }

  v4 = a1[5];
  v5 = a1[6];

  _mdns_resolver_handle_revived_server(v4, v2, 0, v5);
}

void _mdns_resolver_handle_revived_server(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 136) & 1) == 0 && *(a2 + 106) - 5 >= 0xFFFFFFFC)
  {
    v5 = (*(a2 + 100) - 1) >= 0x20 ? 0 : 1 << (*(a2 + 100) - 1);
    for (i = *(a1 + 32); i; i = *(i + 64))
    {
      if ((*(i + 224) & v5) == 0)
      {
        v8 = *(i + 80);
        if (*(i + 251))
        {
          if (!v8)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if ((a3 & 1) == 0)
          {
            if ((*(a2 + 107) & 1) == 0 && ((*(*(i + 16) + 96))(i) & 0xFFFE) == 0x40)
            {
              continue;
            }

            v9 = *(i + 112);
            if (v9)
            {
              while (v9[4] != a2)
              {
                v9 = v9[3];
                if (!v9)
                {
                  goto LABEL_19;
                }
              }

              if (v9[8] - a4 > 0)
              {
                continue;
              }
            }
          }

LABEL_19:
          if (!v8 || v8 == a2 || (*(v8 + 109) & 1) != 0)
          {
LABEL_22:
            *(i + 212) &= ~v5;
            if (_mdns_resolver_log_s_once != -1)
            {
              dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
            }

            v10 = _mdns_resolver_log_s_log;
            if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
            {
              v11 = *(i + 128);
              if (!v11)
              {
                v11 = "";
              }

              *buf = 136446210;
              v16 = v11;
              _os_log_impl(&dword_2990ED000, v10, OS_LOG_TYPE_INFO, "%{public}sRestarting querier", buf, 0xCu);
            }

            *(i + 80) = 0;
            *(i + 247) = 0;
            if (*(i + 251))
            {
              v12 = 2000;
            }

            else
            {
              v12 = *(*(i + 72) + 124);
            }

            *(i + 204) = v12;
            _mdns_querier_initiate_send(i);
          }
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void _mdns_querier_session_handle_event(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v8 = _mdns_resolver_log_s_log;
  if (a3)
  {
    v9 = a2 == 3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v10 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v10))
  {
    v11 = *(a4 + 128);
    if (!v11)
    {
      v11 = "";
    }

    v27 = 136446722;
    v28 = v11;
    v29 = 1024;
    v30 = a2;
    v31 = 2048;
    v32 = a3;
    _os_log_impl(&dword_2990ED000, v8, v10, "%{public}sQuerier session event -- type: %{mdns:session_event}d, error: %{mdns:err}ld", &v27, 0x1Cu);
  }

  if ((a2 - 3) < 2)
  {
    v12 = *(a1 + 89);
    v13 = 112;
    if (*(a1 + 89))
    {
      v13 = 120;
    }

    v14 = (a4 + v13);
    do
    {
      v15 = v14;
      v16 = *v14;
      v14 = (*v14 + 24);
      if (v16)
      {
        v17 = v16 == a1;
      }

      else
      {
        v17 = 1;
      }
    }

    while (!v17);
    if (!v16)
    {
      goto LABEL_46;
    }

    *v15 = *(a1 + 24);
    *(a1 + 24) = 0;
    _mdns_session_invalidate(a1);
    os_release(a1);
    if (!v12)
    {
      goto LABEL_46;
    }

    v18 = *(a1 + 32);
    if (a2 == 3)
    {
      if (a3)
      {
        v19 = *(a4 + 72);
        _mdns_resolver_generate_error_event(v19, a3);
      }

      else
      {
        if (*(a4 + 249) == 3)
        {
          goto LABEL_45;
        }

        v19 = *(a4 + 72);
      }

      if (*(a4 + 128))
      {
        v23 = *(a4 + 128);
      }

      else
      {
        v23 = "";
      }

      v24 = _mdns_resolver_handle_stream_error(v19, v18, v23);
      v25 = *(v19 + 140);
      _mdns_resolver_penalize_server_ex(v19, v18, 0, 0, 0);
      if (v25 == 1 && (v24 & 1) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_45:
    _mdns_querier_handle_stream_termination(a4, v18);
    goto LABEL_46;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      _mdns_querier_send_query(a4, a1);
    }

    goto LABEL_46;
  }

  if (*(a1 + 89) == 1)
  {
    v20 = *(a4 + 72);
    v21 = *(a4 + 128) ? *(a4 + 128) : "";
    v22 = _mdns_resolver_handle_stream_lateness(*(a4 + 72), *(a1 + 32), *(a1 + 56), v21);
    if (*(v20 + 140) == 1)
    {
      if (v22)
      {
LABEL_44:
        _mdns_querier_conclude_ex(a4, 6, 0, 0);
      }
    }
  }

LABEL_46:
  v26 = *MEMORY[0x29EDCA608];
}

void _mdns_resolver_generate_error_event(NSObject **a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "error_code", a2);
  _mdns_resolver_generate_event(a1, 3, v4);
  if (v4)
  {

    xpc_release(v4);
  }
}

uint64_t _mdns_resolver_handle_stream_error(uint64_t a1, uint64_t a2, const char *a3)
{
  if (*(*(a1 + 16) + 158) == 1)
  {
    v6 = mach_continuous_time();
    v7 = v6 - *(a2 + 88);
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
    }

    if (v7 >= mdns_mach_ticks_per_second_s_ticks_per_second)
    {
      v8 = *(a2 + 110);
      v9 = *(a2 + 96);
      *(a2 + 88) = v6;
      if (v9 == -1 || (*(a2 + 96) = v9 + 1, v9 > 1))
      {
        if ((((v9 > 2) | v8) ^ 1))
        {
          _mdns_resolver_log_server_problems(a1, a2, a3);
        }
      }
    }

    _mdns_resolver_check_for_problematic_servers(a1);
  }

  return *(a1 + 139);
}

void _mdns_querier_handle_stream_termination(int8x8_t *a1, uint64_t a2)
{
  v3 = *(a2 + 100) - 1;
  if (v3 < 0x20)
  {
    v4 = ~(1 << v3);
  }

  else
  {
    v4 = -1;
  }

  a1[27] = vand_s8(vdup_n_s32(v4), a1[27]);
  v5 = a1[10];
  if (*&v5 != a2)
  {
    if (*&v5 || *&a1[13])
    {
      return;
    }

    goto LABEL_14;
  }

  eligible_server = _mdns_querier_get_eligible_server(a1);
  if (eligible_server)
  {
    if (*(eligible_server + 108))
    {
      v7 = 0;
    }

    else
    {
      v7 = eligible_server;
    }
  }

  else
  {
    v7 = 0;
  }

  _mdns_querier_set_current_server(a1, v7);
  if (a1[10])
  {
LABEL_14:

    _mdns_querier_initiate_send(a1);
  }
}

uint64_t _mdns_resolver_handle_stream_lateness(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (*(*(a1 + 16) + 158) == 1 && a3 - *(a2 + 80) >= 1)
  {
    if (*(a2 + 110) == 1)
    {
      *(a2 + 110) = 1;
    }

    else
    {
      v5 = *(a2 + 96);
      *(a2 + 110) = 1;
      if (v5 <= 2)
      {
        _mdns_resolver_log_server_problems(a1, a2, a4);
      }
    }

    _mdns_resolver_check_for_problematic_servers(a1);
  }

  return *(a1 + 139);
}

void _mdns_resolver_log_server_problems(uint64_t a1, uint64_t a2, const char *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v8 = "";
    v9 = *(*(a1 + 16) + 152);
    if (a3)
    {
      v8 = a3;
    }

    v10 = *(a2 + 110);
    v11 = *(a2 + 96);
    v12 = 136447234;
    v13 = v8;
    v14 = 1024;
    v15 = v9;
    v16 = 2112;
    v17 = a2;
    v18 = 1024;
    v19 = v10;
    v20 = 1024;
    v21 = v11;
    _os_log_error_impl(&dword_2990ED000, v6, OS_LOG_TYPE_ERROR, "%{public}sHaving stream problems with %{mdns:protocol}d server %@ -- lateness: %{BOOL}d, error count: %u", &v12, 0x28u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_session_activate_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(result + 40);
  if (v3)
  {
    dispatch_source_cancel(*(result + 40));
    dispatch_release(v3);
    *(*(a1 + 32) + 40) = 0;
    result = *(a1 + 32);
  }

  if (*(result + 88) == 1)
  {
    v4 = **(result + 72);
    if (v4)
    {
      v5 = *(result + 48);

      return v4(result, 2, 0, v5);
    }
  }

  return result;
}

void _mdns_common_session_terminate_async(void *a1, int a2)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___mdns_common_session_terminate_async_block_invoke;
  v4[3] = &__block_descriptor_tmp_115_1380;
  v4[4] = a1;
  v5 = a2;
  dispatch_async(_mdns_resolver_queue_s_queue, v4);
}

void ___mdns_common_session_terminate_async_block_invoke(uint64_t a1)
{
  _mdns_common_session_finish(*(a1 + 32), 3, *(a1 + 40));
  v2 = *(a1 + 32);

  os_release(v2);
}

void _mdns_common_session_finish(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 88) != 3)
  {
    _mdns_session_invalidate_internal(a1);
    *(a1 + 88) = 3;
    v6 = **(a1 + 72);
    if (v6)
    {
      v7 = *(a1 + 48);

      v6(a1, a2, a3, v7);
    }
  }
}

void _mdns_resolver_session_receive(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v5 = mdns_message_create_with_dispatch_data(a2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(a3 + 32);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = 0;
  do
  {
    while (1)
    {
      v9 = v7;
      v7 = *(v7 + 64);
      v16 = 0;
      if (_mdns_querier_is_response_acceptable(v9, v6, 0, 0, &v16))
      {
        break;
      }

LABEL_15:
      if (!v7)
      {
        goto LABEL_18;
      }
    }

    if ((v8 & 1) == 0)
    {
      if (*(v9 + 128))
      {
        v10 = *(v9 + 128);
      }

      else
      {
        v10 = "";
      }

      _mdns_resolver_log_receive(a3, a1, v6, 1, v10, *(v9 + 255));
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 89);
    v13 = *(a1 + 56);
    v14 = (*(*(v9 + 16) + 96))(v9);
    _mdns_resolver_note_responsiveness(a3, v11, v12, v13, v14);
    if (v16 <= 9u && ((1 << v16) & 0x209) != 0)
    {
      v8 = 1;
      _mdns_querier_conclude_ex(v9, 1, 0, v6);
      goto LABEL_15;
    }

    _mdns_querier_handle_bad_rcode(v9, v6, v16, *(a1 + 32));
    v8 = 1;
  }

  while (v7);
LABEL_18:
  if ((v8 & 1) == 0)
  {
LABEL_19:
    _mdns_resolver_log_receive(a3, a1, v6, 0, 0, 0);
  }

  os_release(v6);
}

void _mdns_resolver_session_handle_event(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v8 = _mdns_resolver_log_s_log;
  if (a3)
  {
    v9 = a2 == 3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v10 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v10))
  {
    v17[0] = 67109376;
    v17[1] = a2;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&dword_2990ED000, v8, v10, "Resolver session event -- type: %{mdns:session_event}d, error: %{mdns:err}ld", v17, 0x12u);
  }

  if ((a2 - 3) < 2)
  {
    v11 = a4;
    do
    {
      v11 = *(v11 + 24);
      if (!v11)
      {
        goto LABEL_38;
      }

      v12 = *(v11 + 32);
    }

    while (v12 != a1);
    if (a1)
    {
      _mdns_session_invalidate(v12);
      os_release(*(v11 + 32));
      *(v11 + 32) = 0;
    }

    if (a2 == 3)
    {
      if (a3)
      {
        _mdns_resolver_generate_error_event(a4, a3);
LABEL_23:
        _mdns_resolver_handle_stream_error(a4, v11, 0);
        _mdns_resolver_penalize_server_ex(a4, v11, 0, 0, 0);
        goto LABEL_34;
      }

      if (!*(a1 + 84))
      {
        goto LABEL_23;
      }
    }

LABEL_34:
    for (i = *(a4 + 32); i; i = i[8])
    {
      if (i[31].i8[3] == 1)
      {
        _mdns_querier_handle_stream_termination(i, v11);
      }
    }

    goto LABEL_38;
  }

  if (a2 == 1)
  {
    if ((*(*(a1 + 32) + 100) - 1) >= 0x20)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1 << (*(*(a1 + 32) + 100) - 1);
    }

    for (j = *(a4 + 32); j; j = *(j + 64))
    {
      if (*(j + 251) == 1 && (*(j + 216) & v13) != 0)
      {
        _mdns_querier_send_query(j, a1);
      }
    }
  }

  else if (a2 == 2)
  {
    _mdns_resolver_handle_stream_lateness(a4, *(a1 + 32), *(a1 + 56), 0);
  }

LABEL_38:
  v16 = *MEMORY[0x29EDCA608];
}

void _mdns_url_session_send(uint64_t a1, NSObject *a2, int a3)
{
  v147 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v74 = *(a1 + 112);
    LODWORD(applier) = 138412290;
    *(&applier + 4) = v74;
    _os_log_debug_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEBUG, "Sending message on URL %@", &applier, 0xCu);
  }

  v7 = *(a1 + 184);
  if (!v7)
  {
    v117 = 0;
    v119 = 0;
    v9 = 0;
LABEL_49:
    os_retain(a1);
    v41 = *(*(a1 + 32) + 48);
    url = nw_endpoint_get_url(*(a1 + 112));
    size = *(v7 + 192);
    v127[0] = MEMORY[0x29EDCA5F8];
    v127[1] = 0x40000000;
    v127[2] = ___mdns_url_session_send_block_invoke_110;
    v127[3] = &__block_descriptor_tmp_112;
    v127[4] = a1;
    v128 = v9;
    v126 = v41;
    v124 = a2;
    v43 = v127;
    context = objc_autoreleasePoolPush();
    if (v9)
    {
      v44 = objc_alloc(MEMORY[0x29EDB84F8]);
      v45 = objc_alloc(MEMORY[0x29EDB8E70]);
      v46 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:url];
      v47 = [v45 initWithString:v46];
      v48 = [v44 initWithURL:v47];

      [v48 setHTTPMethod:@"POST"];
      [v48 setHTTPBody:v124];
      v49 = @"application/oblivious-dns-message";
    }

    else
    {
      v50 = [v124 base64EncodedStringWithOptions:0];
      v51 = [v50 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

      v52 = [v51 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

      v53 = [v52 stringByReplacingOccurrencesOfString:@"=" withString:&stru_2A1F31250];

      v54 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s?dns=%@", url, v53];
      v55 = objc_alloc(MEMORY[0x29EDB84F8]);
      v56 = a3;
      v57 = [objc_alloc(MEMORY[0x29EDB8E70]) initWithString:v54];
      v48 = [v55 initWithURL:v57];

      a3 = v56;
      [v48 setHTTPMethod:@"GET"];

      v49 = @"application/dns-message";
    }

    v58 = v49;
    [v48 setValue:v58 forHTTPHeaderField:@"accept"];
    [v48 setValue:v58 forHTTPHeaderField:@"content-type"];
    v59 = nw_endpoint_copy_interface();
    v60 = v59;
    if (v59)
    {
      v61 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:nw_interface_get_name(v59)];
      [v48 setBoundInterfaceIdentifier:v61];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v143 = 0x3032000000;
    v144 = __Block_byref_object_copy__731;
    v145 = __Block_byref_object_dispose__732;
    v146 = 0;
    if (a3 == 1 || a3 == 28)
    {
      v62 = nw_activity_create();
      v63 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v62;

      if (*(*(&buf + 1) + 40))
      {
        nw_activity_activate();
      }
    }

    *&applier = MEMORY[0x29EDCA5F8];
    *(&applier + 1) = 3221225472;
    v134 = __http_task_create_dns_query_block_invoke;
    v135 = &unk_29EF097D8;
    p_buf = &buf;
    v64 = v48;
    v136 = v64;
    v65 = v43;
    v137 = v65;
    v66 = _http_task_create_data_task(v64, &applier);
    [v66 set_hostOverride:v126];
    if (v66 && *(*(&buf + 1) + 40))
    {
      [v66 set_nw_activity:?];
    }

    if (size)
    {
      v67 = [v66 _effectiveConfiguration];
      v68 = [objc_alloc(MEMORY[0x29EDB8518]) _initWithConfiguration:v67];
      v69 = *MEMORY[0x29EDB8520];
      v139 = size;
      v140 = v69;
      v70 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v139 count:1];
      v141 = v70;
      v71 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
      [v68 set_socketStreamProperties:v71];

      [v66 _adoptEffectiveConfiguration:v68];
    }

    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(context);

    *(a1 + 144) = v66;
    if (v66)
    {
      v72 = objc_autoreleasePoolPush();
      [v66 resume];
      objc_autoreleasePoolPop(v72);
      options = v117;
      v15 = v119;
      if (!v117)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    os_release(a1);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    options = v117;
    v15 = v119;
    v113 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LOWORD(applier) = 0;
      _os_log_error_impl(&dword_2990ED000, v113, OS_LOG_TYPE_ERROR, "Failed to create HTTP task", &applier, 2u);
    }

    goto LABEL_84;
  }

  v125 = a3;
  v8 = *(v7 + 168);
  v9 = v8 != 0;
  if (!v8)
  {
    options = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  length = xpc_data_get_length(*(v7 + 168));
  bytes_ptr = xpc_data_get_bytes_ptr(*(v7 + 168));
  if (nw_http_oblivious_config_is_valid())
  {
    *&applier = 0;
    if (nw_endpoint_get_port(*(a1 + 112)) == 443)
    {
      nw_endpoint_get_hostname(*(a1 + 112));
      v12 = *(a1 + 112);
      nw_endpoint_get_url_path();
      asprintf(&applier, "/dns-query?targethost=%s&targetpath=%s");
    }

    else
    {
      nw_endpoint_get_hostname(*(a1 + 112));
      v19 = *(a1 + 112);
      nw_endpoint_get_url_path();
      asprintf(&applier, "/dns-query?targethost=%s:%u&targetpath=%s");
    }

    options = nw_oblivious_http_create_options();
    if (applier)
    {
      free(applier);
      *&applier = 0;
    }

    if (options)
    {
      v15 = 0;
      v14 = 1;
      goto LABEL_28;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v79 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
LABEL_83:
      options = 0;
      v15 = 0;
LABEL_84:
      v80 = -6700;
      goto LABEL_85;
    }

    LOWORD(buf) = 0;
    v81 = "Failed to create oblivious http options";
    p_applier = &buf;
LABEL_88:
    _os_log_error_impl(&dword_2990ED000, v79, OS_LOG_TYPE_ERROR, v81, p_applier, 2u);
    goto LABEL_83;
  }

  if (!a2 || !bytes_ptr)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v17 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    LOWORD(buf) = 0;
    v18 = "Parameters are NULL";
LABEL_105:
    v90 = v17;
    v91 = 2;
    goto LABEL_106;
  }

  if (length <= 1)
  {
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v16 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    LODWORD(buf) = 134217984;
    *(&buf + 4) = length;
    _os_log_error_impl(&dword_2990ED000, v16, OS_LOG_TYPE_ERROR, "Config length is too short: %zu", &buf, 0xCu);
LABEL_76:
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

LABEL_78:
    v17 = _mdns_crypto_log_s_log;
    if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
LABEL_79:
      v78 = _mdns_resolver_log_s_once;
LABEL_80:
      if (v78 != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v79 = _mdns_resolver_log_s_log;
      if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      LOWORD(applier) = 0;
      v81 = "Failed to create oblivious request";
      p_applier = &applier;
      goto LABEL_88;
    }

    LOWORD(buf) = 0;
    v18 = "Failed to parse supported config";
    goto LABEL_105;
  }

  v75 = bswap32(*bytes_ptr) >> 16;
  if (length - 2 == v75)
  {
    ++bytes_ptr;
    while (!mdns_odoh_config_is_valid_inner(bytes_ptr, v75))
    {
      if (v75 >= 4)
      {
        v76 = bswap32(bytes_ptr[1]) >> 16;
        bytes_ptr = (bytes_ptr + v76);
        v77 = v75 > v76;
        v75 -= v76;
        if (v77)
        {
          continue;
        }
      }

      goto LABEL_76;
    }

    if (!bytes_ptr)
    {
      goto LABEL_76;
    }
  }

  else if (!mdns_odoh_config_is_valid_inner(bytes_ptr, length))
  {
    goto LABEL_76;
  }

  cchpke_params_x25519_AESGCM128_HKDF_SHA256();
  v83 = cchpke_params_sizeof_kdf_hash();
  v84 = ccsha256_di();
  if (!v83)
  {
    goto LABEL_138;
  }

  LODWORD(length) = v84;
  v85 = bytes_ptr[5];
  v86 = malloc_type_calloc(1uLL, v83, 0xC4C2E807uLL);
  if (!v86)
  {
    goto LABEL_138;
  }

  v87 = v86;
  v88 = cchkdf_extract();
  if (v88)
  {
    LODWORD(length) = v88;
    free(v87);
    if (_mdns_crypto_log_s_once == -1)
    {
LABEL_94:
      v89 = _mdns_crypto_log_s_log;
      if (!os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      LODWORD(buf) = 67109120;
      DWORD1(buf) = length;
      v18 = "Extract error: %d";
      v90 = v89;
      v91 = 8;
LABEL_106:
      _os_log_error_impl(&dword_2990ED000, v90, OS_LOG_TYPE_ERROR, v18, &buf, v91);
      goto LABEL_79;
    }

LABEL_139:
    dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    goto LABEL_94;
  }

  v116 = dispatch_data_get_size(a2);
  v115 = arc4random_uniform(0x10u);
  sizea = v116 + v115 + 4;
  length = cchpke_params_sizeof_aead_tag();
  v92 = cchpke_params_sizeof_kem_enc();
  v93 = &length[v92 + sizea];
  if (&v93[v83] == -5)
  {
    goto LABEL_138;
  }

  v118 = sizea + length + v92;
  LODWORD(length) = 1;
  v114 = &v93[v83 + 5];
  v94 = malloc_type_calloc(1uLL, v114, 0x1F966E85uLL);
  if (!v94)
  {
    goto LABEL_138;
  }

  *v94 = 1;
  *(v94 + 1) = bswap32(v83) >> 16;
  v95 = v94;
  v96 = cchkdf_expand();
  free(v87);
  if (v96)
  {
    v97 = v95;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v98 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v96;
      _os_log_error_impl(&dword_2990ED000, v98, OS_LOG_TYPE_ERROR, "Expand error: %d", &buf, 8u);
    }

    v99 = v97;
    goto LABEL_122;
  }

  contexta = v95;
  length = &v95[v83 + 3];
  *length = bswap32(v118) >> 16;
  v100 = malloc_type_calloc(1uLL, 0x60uLL, 0x51C97C44uLL);
  if (!v100)
  {
    goto LABEL_138;
  }

  v101 = v100;
  LODWORD(v141) = 0;
  ccrng();
  v102 = bswap32(bytes_ptr[5]);
  v103 = cchpke_initiator_setup();
  if (v103)
  {
    v104 = v103;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v105 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v104;
      _os_log_error_impl(&dword_2990ED000, v105, OS_LOG_TYPE_ERROR, "Setup error: %d", &buf, 8u);
    }

LABEL_121:
    free(contexta);
    v99 = v101;
LABEL_122:
    free(v99);
    goto LABEL_79;
  }

  LODWORD(length) = v116 + v115 + 4;
  if (v116 + v115 == -4 || (v106 = malloc_type_calloc(1uLL, sizea, 0xB757762EuLL)) == 0)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v107 = v106;
  *v106 = bswap32(v116) >> 16;
  *(v106 + v116 + 2) = bswap32(v115) >> 16;
  *&applier = MEMORY[0x29EDCA5F8];
  *(&applier + 1) = 0x40000000;
  v134 = __mdns_encrypt_oblivious_request_block_invoke;
  v135 = &__block_descriptor_tmp_25;
  v136 = v106 + 1;
  dispatch_data_apply(a2, &applier);
  v108 = cchpke_initiator_encrypt();
  if (v108)
  {
    v109 = v108;
    if (_mdns_crypto_log_s_once != -1)
    {
      dispatch_once(&_mdns_crypto_log_s_once, &__block_literal_global_22);
    }

    v110 = _mdns_crypto_log_s_log;
    if (os_log_type_enabled(_mdns_crypto_log_s_log, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v109;
      _os_log_error_impl(&dword_2990ED000, v110, OS_LOG_TYPE_ERROR, "Encrypt error: %d", &buf, 8u);
    }

    free(v107);
    goto LABEL_121;
  }

  *(a1 + 152) = v101;
  *(a1 + 160) = 96;
  *(a1 + 168) = v107;
  *(a1 + 176) = sizea;
  v111 = dispatch_data_create(v95, v114, 0, *MEMORY[0x29EDCA558]);
  v78 = _mdns_resolver_log_s_once;
  if (!v111)
  {
    goto LABEL_80;
  }

  v15 = v111;
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v112 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(applier) = 0;
    _os_log_debug_impl(&dword_2990ED000, v112, OS_LOG_TYPE_DEBUG, "Created oblivious request", &applier, 2u);
  }

  options = 0;
  v14 = 0;
  a2 = v15;
LABEL_28:
  if (!*(v7 + 176))
  {
    v117 = options;
    v119 = v15;
    a3 = v125;
    goto LABEL_49;
  }

  v20 = *(a1 + 120);
  nw_parameters_clear_custom_proxy_configs();
  v21 = *(a1 + 120);
  v22 = *(v7 + 176);
  nw_parameters_add_custom_proxy_config();
  if (options)
  {
    v23 = nw_parameters_copy_default_protocol_stack(*(a1 + 120));
    nw_protocol_stack_clear_application_protocols(v23);
    nw_protocol_stack_append_application_protocol();
    if (v23)
    {
      nw_release(v23);
    }
  }

  v24 = nw_connection_create(*(a1 + 112), *(a1 + 120));
  *(a1 + 128) = v24;
  if (!v24)
  {
    v80 = -6729;
LABEL_85:
    _mdns_common_session_terminate_async(a1, v80);
    if (!options)
    {
      goto LABEL_66;
    }

LABEL_65:
    nw_release(options);
    goto LABEL_66;
  }

  os_retain(a1);
  v25 = *(a1 + 128);
  v26 = options;
  v27 = v15;
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  nw_connection_set_queue(v25, _mdns_resolver_queue_s_queue);
  v28 = *(a1 + 128);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___mdns_url_session_send_block_invoke;
  handler[3] = &__block_descriptor_tmp_97;
  handler[4] = a1;
  nw_connection_set_state_changed_handler(v28, handler);
  v30 = MEMORY[0x29C299270](v29);
  if (v8)
  {
    v31 = "Oblivious Message";
  }

  else
  {
    v31 = "HTTP Message";
  }

  v32 = *MEMORY[0x29EDBB850];
  nw_http_fields_set_value_by_name();
  v33 = *MEMORY[0x29EDBB860];
  nw_http_fields_set_value_by_name();
  v34 = dispatch_data_get_size(a2);
  snprintf(&applier, 0x80uLL, "%zu", v34);
  v35 = *MEMORY[0x29EDBB858];
  nw_http_fields_set_value_by_name();
  v36 = *MEMORY[0x29EDBB870];
  nw_endpoint_get_url(*(a1 + 112));
  v37 = nw_http_request_create_from_url();
  nw_http_request_set_header_fields();
  metadata_for_request = nw_http_create_metadata_for_request();
  if (v37)
  {
    nw_release(v37);
  }

  v39 = nw_content_context_create(v31);
  nw_content_context_set_metadata_for_protocol(v39, metadata_for_request);
  if (metadata_for_request)
  {
    nw_release(metadata_for_request);
  }

  v15 = v27;
  if (v30)
  {
    nw_release(v30);
  }

  nw_content_context_set_is_final(v39, 1);
  nw_connection_send(*(a1 + 128), a2, v39, 1, *MEMORY[0x29EDBB828]);
  options = v26;
  if (v39)
  {
    nw_release(v39);
  }

  nw_connection_start(*(a1 + 128));
  *(a1 + 136) = _mdns_create_and_start_connection_activity(*(a1 + 128), v125);
  v40 = *(a1 + 128);
  completion[0] = MEMORY[0x29EDCA5F8];
  completion[1] = 0x40000000;
  completion[2] = ___mdns_url_session_send_block_invoke_102;
  completion[3] = &__block_descriptor_tmp_109_1394;
  completion[4] = a1;
  v130 = v8 != 0;
  v131 = v14;
  nw_connection_receive_message(v40, completion);
  if (v26)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v15)
  {
    dispatch_release(v15);
  }

  v73 = *MEMORY[0x29EDCA608];
}

void ___mdns_url_session_send_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  if (!*(v5 + 128))
  {
    if (a2 != 5)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v7 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v9 = nw_connection_state_to_string();
    v10 = *(*(a1 + 32) + 128);
    v11 = 136315650;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = a3;
    _os_log_debug_impl(&dword_2990ED000, v7, OS_LOG_TYPE_DEBUG, "Connection state changed to %s for connection %@ error %@", &v11, 0x20u);
  }

  switch(a2)
  {
    case 3:
      _mdns_url_session_handle_connection_no_longer_pending(*(a1 + 32));
      break;
    case 4:
      _mdns_common_session_finish(*(a1 + 32), 3, 4294960543);
      break;
    case 5:
      v5 = *(a1 + 32);
LABEL_10:
      _mdns_url_session_handle_connection_no_longer_pending(v5);
      os_release(*(a1 + 32));
      break;
  }

LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
}

uint64_t _mdns_create_and_start_connection_activity(uint64_t a1, int a2)
{
  if (a2 != 1 && a2 != 28)
  {
    return 0;
  }

  v2 = nw_activity_create();
  if (v2)
  {
    nw_connection_start_activity();
  }

  return v2;
}

void ___mdns_url_session_send_block_invoke_102(uint64_t a1, uint64_t error_code, NSObject *a3, uint64_t a4, NSObject *a5)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!*(*(a1 + 32) + 128))
  {
    goto LABEL_67;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v9 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v33) = 134217984;
    *(&v33 + 4) = error_code;
    _os_log_debug_impl(&dword_2990ED000, v9, OS_LOG_TYPE_DEBUG, "Received data %p", &v33, 0xCu);
  }

  *&v33 = 0;
  *(&v33 + 1) = &v33;
  v34 = 0x2000000000;
  v35 = 0;
  if (a3)
  {
    v10 = nw_protocol_copy_http_definition();
    a3 = nw_content_context_copy_protocol_metadata(a3, v10);
    if (v10)
    {
      nw_release(v10);
    }

    if (a3)
    {
      v11 = nw_http_metadata_copy_response();
      nw_release(a3);
      if (v11)
      {
        LODWORD(a3) = nw_http_response_get_status_code();
        v12 = nw_http_response_copy_header_fields();
        nw_http_fields_access_value_by_name();
        if (v12)
        {
          nw_release(v12);
        }

        nw_release(v11);
      }

      else
      {
        LODWORD(a3) = 0;
      }
    }
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v13 = _mdns_resolver_log_s_log;
  if (a3 != 200 || error_code == 0)
  {
    v15 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v15 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(_mdns_resolver_log_s_log, v15))
  {
    v16 = "";
    if (!error_code)
    {
      v16 = "out";
    }

    *buf = 67109378;
    LODWORD(v32[0]) = a3;
    WORD2(v32[0]) = 2082;
    *(v32 + 6) = v16;
    _os_log_impl(&dword_2990ED000, v13, v15, "Received HTTP status %u with%{public}s body", buf, 0x12u);
  }

  if (error_code)
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 41))
      {
        v17 = 0;
      }

      else
      {
        error_code = mdns_decrypt_oblivious_response(error_code, *(*(a1 + 32) + 152), *(*(a1 + 32) + 160), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176));
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v20 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v32[0] = error_code;
          _os_log_debug_impl(&dword_2990ED000, v20, OS_LOG_TYPE_DEBUG, "Decrypted %@", buf, 0xCu);
        }

        v17 = error_code;
        if (!error_code)
        {
          v18 = 0;
          v24 = 0;
          error_code = 4294960520;
          goto LABEL_48;
        }
      }

      v21 = *(*(&v33 + 1) + 24);
      if (v21)
      {
        _mdns_https_resolver_set_client_address(*(*(a1 + 32) + 184), v21);
      }

      v22 = *(a1 + 32);
      v23 = *(v22 + 184);
      if ((*(v23 + 230) & 1) == 0)
      {
        *(v23 + 230) = 1;
        _mdns_resolver_generate_error_event(v23, 0);
        v22 = *(a1 + 32);
      }

      _mdns_common_session_invoke_receive(v22, error_code);
      if (v17)
      {
        dispatch_release(v17);
      }
    }

    else
    {
      v19 = *(*(&v33 + 1) + 24);
      if (v19)
      {
        _mdns_https_resolver_set_client_address(*(*(a1 + 32) + 184), v19);
      }

      _mdns_common_session_invoke_receive(*(a1 + 32), error_code);
    }

    error_code = 0;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v24 = 1;
LABEL_48:
  v25 = *(*(&v33 + 1) + 24);
  if (v25)
  {
    nw_release(v25);
    *(*(&v33 + 1) + 24) = 0;
  }

  v26 = *(a1 + 32);
  if (*(v26 + 136))
  {
    v27 = *(v26 + 128);
    nw_connection_end_activity();
    nw_activity_complete_with_reason();
    v28 = *(*(a1 + 32) + 136);
    if (v28)
    {
      nw_release(v28);
      *(*(a1 + 32) + 136) = 0;
    }
  }

  if (v18)
  {
    v29 = v24 ^ 1;
    if (!a5)
    {
      v29 = 1;
    }

    if ((v29 & 1) == 0)
    {
      error_code = nw_error_get_error_code(a5);
    }
  }

  else
  {
    if (a3 == 401)
    {
      error_code = 4294960520;
    }

    else if (a3)
    {
      error_code = 4294960560;
    }

    else if (a5)
    {
      error_code = nw_error_get_error_code(a5);
    }

    else
    {
      error_code = 4294960543;
    }

    *(*(*(a1 + 32) + 184) + 230) = 0;
  }

  _mdns_common_session_finish(*(a1 + 32), 3, error_code);
  _Block_object_dispose(&v33, 8);
LABEL_67:
  v30 = *MEMORY[0x29EDCA608];
}

void ___mdns_url_session_send_block_invoke_110(uint64_t a1, NSObject *a2, int a3, uint64_t a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (*(v4 + 144))
  {
    v9 = *(a1 + 40);
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v10 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = a2;
      _os_log_debug_impl(&dword_2990ED000, v10, OS_LOG_TYPE_DEBUG, "Received response %@", &v16, 0xCu);
      if (a2)
      {
LABEL_6:
        if (v9)
        {
          a2 = mdns_decrypt_oblivious_response(a2, *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176));
          if (_mdns_resolver_log_s_once != -1)
          {
            dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
          }

          v11 = _mdns_resolver_log_s_log;
          if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
          {
            v16 = 138412290;
            v17 = a2;
            _os_log_debug_impl(&dword_2990ED000, v11, OS_LOG_TYPE_DEBUG, "Decrypted response %@", &v16, 0xCu);
          }

          v12 = a2;
          if (!a2)
          {
            if (a3 == 401)
            {
              a4 = 4294960520;
            }

            else
            {
              a4 = 4294960519;
            }

LABEL_29:
            _mdns_common_session_finish(*(a1 + 32), 3, a4);
            v4 = *(a1 + 32);
            goto LABEL_30;
          }
        }

        else
        {
          v12 = 0;
        }

        _mdns_common_session_invoke_receive(v4, a2);
        if (!a4)
        {
LABEL_27:
          if (v12)
          {
            dispatch_release(v12);
          }

          goto LABEL_29;
        }

LABEL_20:
        if (_mdns_resolver_log_s_once != -1)
        {
          dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
        }

        v13 = _mdns_resolver_log_s_log;
        if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v16 = 138412290;
          v17 = a4;
          _os_log_error_impl(&dword_2990ED000, v13, OS_LOG_TYPE_ERROR, "Got error %@", &v16, 0xCu);
        }

        Code = CFErrorGetCode(a4);
        if (Code)
        {
          a4 = Code;
        }

        else
        {
          a4 = 4294960596;
        }

        goto LABEL_27;
      }
    }

    else if (a2)
    {
      goto LABEL_6;
    }

    v12 = 0;
    if (!a4)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_30:
  os_release(v4);
  v15 = *MEMORY[0x29EDCA608];
}

void _mdns_common_session_invoke_receive(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      dispatch_source_cancel(*(a1 + 40));
      dispatch_release(v4);
      *(a1 + 40) = 0;
    }

    v5 = *(a1 + 84);
    if (v5 != -1)
    {
      *(a1 + 84) = v5 + 1;
    }

    v6 = *(*(a1 + 72) + 8);
    if (v6)
    {
      v7 = *(a1 + 48);

      v6(a1, a2, v7);
    }
  }
}

void ___mdns_url_session_send_block_invoke_104(uint64_t a1, char *hostname)
{
  v8 = *MEMORY[0x29EDCA608];
  *(*(*(a1 + 32) + 8) + 24) = nw_endpoint_create_host(hostname, "0");
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v3 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_2990ED000, v3, OS_LOG_TYPE_DEBUG, "Received client address %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x29EDCA608];
}

const sockaddr *_mdns_https_resolver_set_client_address(uint64_t a1, nw_endpoint_t endpoint)
{
  *(a1 + 200) = 0;
  v2 = (a1 + 200);
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  result = nw_endpoint_get_address(endpoint);
  if (result)
  {
    sa_family = result->sa_family;
    if (sa_family == 30)
    {
      v5 = *result;
      *&v2->sa_data[10] = *&result->sa_data[10];
    }

    else
    {
      if (sa_family != 2)
      {
        return result;
      }

      v5 = *result;
    }

    *v2 = v5;
  }

  return result;
}

void _mdns_url_session_handle_connection_no_longer_pending(uint64_t a1)
{
  if (*(a1 + 192) == 1)
  {
    v1 = --g_pending_odoh_connection_count;
    *(a1 + 192) = 0;
    v2 = g_pending_odoh_sessions;
    if (g_pending_odoh_sessions)
    {
      v3 = v1 > 9;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      g_pending_odoh_sessions = *(g_pending_odoh_sessions + 104);
      *(v2 + 104) = 0;
      _mdns_url_session_activate_for_odoh(v2);

      os_release(v2);
    }
  }
}

void _mdns_url_session_activate_for_odoh(_BYTE *object)
{
  v9 = *MEMORY[0x29EDCA608];
  object[192] = 1;
  ++g_pending_odoh_connection_count;
  v2 = &g_active_odoh_sessions;
  do
  {
    v3 = v2;
    v4 = *v2;
    v2 = (*v2 + 104);
  }

  while (v4);
  *v3 = object;
  os_retain(object);
  *(object + 12) = mach_continuous_time();
  ++g_active_odoh_session_count;
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v5 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = g_active_odoh_session_count;
    _os_log_debug_impl(&dword_2990ED000, v5, OS_LOG_TYPE_DEBUG, "Active ODoH session count increase: %zu", &v7, 0xCu);
  }

  _mdns_common_session_make_ready_async(object);
  v6 = *MEMORY[0x29EDCA608];
}

void _mdns_common_session_make_ready_async(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___mdns_common_session_make_ready_async_block_invoke;
  block[3] = &__block_descriptor_tmp_93_1410;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void ___mdns_common_session_make_ready_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88) == 1 && (*(v2 + 90) & 1) == 0)
  {
    *(v2 + 90) = 1;
    v3 = **(v2 + 72);
    if (v3)
    {
      v3(v2, 1, 0, *(v2 + 48));
      v2 = *(a1 + 32);
    }
  }

  os_release(v2);
}

void _mdns_url_session_invalidate(void *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = a1[16];
  if (v2)
  {
    if (a1[17])
    {
      v3 = a1[17];
      nw_connection_end_activity();
      nw_activity_complete_with_reason();
      v2 = a1[16];
    }

    nw_connection_cancel(v2);
    v4 = a1[16];
    if (v4)
    {
      nw_release(v4);
      a1[16] = 0;
    }
  }

  v5 = a1[17];
  if (v5)
  {
    nw_release(v5);
    a1[17] = 0;
  }

  v6 = a1[18];
  if (v6)
  {
    http_task_cancel(v6);
    a1[18] = 0;
  }

  _mdns_url_session_forget_crypto(a1);
  _mdns_url_session_handle_connection_no_longer_pending(a1);
  v7 = &g_active_odoh_sessions;
  do
  {
    v8 = v7;
    v9 = *v7;
    v7 = (*v7 + 104);
    if (v9)
    {
      v10 = v9 == a1;
    }

    else
    {
      v10 = 1;
    }
  }

  while (!v10);
  if (v9)
  {
    *v8 = a1[13];
    a1[13] = 0;
    os_release(a1);
    --g_active_odoh_session_count;
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v11 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v20 = 134217984;
      v21 = g_active_odoh_session_count;
      _os_log_debug_impl(&dword_2990ED000, v11, OS_LOG_TYPE_DEBUG, "Active ODoH session count decrease: %zu", &v20, 0xCu);
    }

    v12 = g_active_odoh_session_interrupt_timer;
    if (g_active_odoh_session_interrupt_timer)
    {
      dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
      dispatch_release(v12);
      g_active_odoh_session_interrupt_timer = 0;
    }

    if (g_pending_odoh_sessions)
    {
      _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session();
    }
  }

  else
  {
    v13 = &g_pending_odoh_sessions;
    do
    {
      v14 = v13;
      v15 = *v13;
      v13 = (*v13 + 104);
      if (v15)
      {
        v16 = v15 == a1;
      }

      else
      {
        v16 = 1;
      }
    }

    while (!v16);
    if (v15)
    {
      *v14 = a1[13];
      a1[13] = 0;
      os_release(a1);
    }

    if (!g_pending_odoh_sessions)
    {
      v17 = g_active_odoh_session_interrupt_timer;
      if (g_active_odoh_session_interrupt_timer)
      {
        dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
        dispatch_release(v17);
        g_active_odoh_session_interrupt_timer = 0;
      }
    }
  }

  v18 = a1[23];
  if (v18)
  {
    os_release(v18);
    a1[23] = 0;
  }

  v19 = *MEMORY[0x29EDCA608];
}

void _mdns_url_session_forget_crypto(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    memset_s(v2, a1[20], 0, a1[20]);
    v3 = a1[19];
    if (v3)
    {
      free(v3);
      a1[19] = 0;
    }
  }

  a1[20] = 0;
  v4 = a1[21];
  if (v4)
  {
    memset_s(v4, a1[22], 0, a1[22]);
    v5 = a1[21];
    if (v5)
    {
      free(v5);
      a1[21] = 0;
    }
  }

  a1[22] = 0;
}

void _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session()
{
  v0 = g_active_odoh_sessions;
  if (g_active_odoh_sessions)
  {
    v1 = g_active_odoh_session_interrupt_timer == 0;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    v2 = mach_continuous_time() - v0[12];
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
    }

    if (v2 / mdns_mach_ticks_per_second_s_ticks_per_second > 9)
    {
      v3 = 0;
    }

    else
    {
      v3 = 10000 - (1000 * (v2 % mdns_mach_ticks_per_second_s_ticks_per_second) / mdns_mach_ticks_per_second_s_ticks_per_second + 1000 * (v2 / mdns_mach_ticks_per_second_s_ticks_per_second));
    }

    g_active_odoh_session_interrupt_timer = _mdns_resolver_create_oneshot_timer(v3, 5u);
    if (g_active_odoh_session_interrupt_timer)
    {
      os_retain(v0);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 0x40000000;
      handler[2] = ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke;
      handler[3] = &__block_descriptor_tmp_91_1412;
      handler[4] = v0;
      dispatch_source_set_event_handler(g_active_odoh_session_interrupt_timer, handler);
      v4[0] = MEMORY[0x29EDCA5F8];
      v4[1] = 0x40000000;
      v4[2] = ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke_2;
      v4[3] = &__block_descriptor_tmp_92;
      v4[4] = v0;
      dispatch_source_set_cancel_handler(g_active_odoh_session_interrupt_timer, v4);
      dispatch_activate(g_active_odoh_session_interrupt_timer);
    }
  }
}

void ___mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session_block_invoke(uint64_t a1)
{
  v2 = g_active_odoh_session_interrupt_timer;
  if (g_active_odoh_session_interrupt_timer)
  {
    dispatch_source_cancel(g_active_odoh_session_interrupt_timer);
    dispatch_release(v2);
    g_active_odoh_session_interrupt_timer = 0;
  }

  v3 = *(a1 + 32);

  _mdns_common_session_finish(v3, 4, 0);
}

uint64_t _mdns_url_session_activate(void *a1)
{
  if (*(a1[23] + 176))
  {
    if (g_pending_odoh_connection_count >= 0xA)
    {
      v1 = &g_pending_odoh_sessions;
      do
      {
        v2 = v1;
        v3 = *v1;
        v1 = (*v1 + 104);
      }

      while (v3);
      *v2 = a1;
      os_retain(a1);
      _mdns_url_session_schedule_interrupt_for_oldest_active_odoh_session();
    }

    else
    {
      _mdns_url_session_activate_for_odoh(a1);
    }
  }

  else
  {
    _mdns_common_session_make_ready_async(a1);
  }

  return 0;
}

uint64_t _mdns_url_session_initialize(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  if (*(a2[2] + 144) == 4)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 184) = v4;
  if (v4)
  {
    os_retain(v4);
    v5 = *(a2[2] + 112);
    if (v5)
    {
      v6 = v5(a2, &v16);
      result = v16;
      if (!v16)
      {
        v8 = nw_parameters_copy_url_endpoint();
        *(a1 + 112) = v8;
        if (v8)
        {
          v9 = MEMORY[0x29C2993D0](v6);
          *(a1 + 120) = v9;
          v10 = nw_parameters_copy_default_protocol_stack(v9);
          nw_protocol_stack_clear_application_protocols(v10);
          if (v10)
          {
            nw_release(v10);
          }

          v11 = *(a1 + 120);
          nw_parameters_set_metadata();
          nw_parameters_set_fast_open_enabled(*(a1 + 120), 1);
          result = v16;
        }

        else
        {
          result = 4294960567;
        }
      }
    }

    else
    {
      result = 4294960561;
    }
  }

  else
  {
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v13 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_FAULT))
    {
      v14 = *(a2[2] + 144);
      if (v14 > 4)
      {
        v15 = "<INVALID RESOLVER TYPE>";
      }

      else
      {
        v15 = off_29EF0A2F8[v14];
      }

      *buf = 136446210;
      v18 = v15;
      _os_log_fault_impl(&dword_2990ED000, v13, OS_LOG_TYPE_FAULT, "Trying to initialize an mdns_url_session using a non-https resolver of type %{public}s", buf, 0xCu);
    }

    result = 4294960540;
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void _mdns_url_session_finalize(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    nw_release(v2);
    a1[14] = 0;
  }

  v3 = a1[15];
  if (v3)
  {
    nw_release(v3);
    a1[15] = 0;
  }

  _mdns_url_session_forget_crypto(a1);
  v4 = a1[23];
  if (v4)
  {
    os_release(v4);
    a1[23] = 0;
  }
}

void _mdns_udp_socket_session_send(uint64_t a1, dispatch_data_t data)
{
  v15 = *MEMORY[0x29EDCA608];
  v9 = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(data, &buffer_ptr, &v9);
  if (v3)
  {
    v4 = v3;
    if (sendto(*(a1 + 136), buffer_ptr, v9, 0, (a1 + 104), *(a1 + 132)) < 0)
    {
      if (*__error())
      {
        v5 = *__error();
        if (!v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v5 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v6 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        *buf = 138412546;
        v12 = v8;
        v13 = 1024;
        v14 = v5;
        _os_log_error_impl(&dword_2990ED000, v6, OS_LOG_TYPE_ERROR, "sending to %@ failed: %{darwin.errno}d", buf, 0x12u);
      }
    }

LABEL_11:
    dispatch_release(v4);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void _mdns_udp_socket_session_invalidate(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 96));
    dispatch_release(v1);
    *(a1 + 96) = 0;
  }
}

uint64_t _mdns_udp_socket_session_activate(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v3 = dispatch_source_create(MEMORY[0x29EDCA5B8], v2, 0, _mdns_resolver_queue_s_queue);
  *(a1 + 96) = v3;
  if (!v3)
  {
    return 4294960567;
  }

  os_retain(a1);
  dispatch_set_context(*(a1 + 96), a1);
  dispatch_source_set_event_handler_f(*(a1 + 96), _mdns_udp_socket_session_read_handler);
  dispatch_source_set_cancel_handler_f(*(a1 + 96), _mdns_udp_socket_session_cancel_handler);
  dispatch_activate(*(a1 + 96));
  return 0;
}

void _mdns_udp_socket_session_cancel_handler(_DWORD *object)
{
  v2 = object[34];
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
    object[34] = -1;
  }

  os_release(object);
}

void _mdns_udp_socket_session_read_handler(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  *&v11.sa_len = 0;
  *&v11.sa_data[6] = 0;
  v13 = 0;
  v12 = 0;
  v10 = 28;
  v2 = recvfrom(*(a1 + 136), buffer, 0x200uLL, 0, &v11, &v10);
  if (v2 < 0)
  {
    if (*__error())
    {
      v3 = *__error();
      if (!v3)
      {
        goto LABEL_4;
      }

      if (v3 == 35)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v3 = 4294960596;
    }

    _mdns_common_session_finish(a1, 3, v3);
    goto LABEL_25;
  }

LABEL_4:
  if (*(a1 + 105) == 2)
  {
    if (*(a1 + 108) != *&v11.sa_data[2])
    {
      goto LABEL_25;
    }

    v4 = *(a1 + 106);
    v5 = *v11.sa_data;
    goto LABEL_7;
  }

  v6 = *(a1 + 112) == *&v11.sa_data[6] && *(a1 + 120) == v12;
  if (!v6 || *(a1 + 106) != *v11.sa_data)
  {
    goto LABEL_25;
  }

  if (*(a1 + 112) == 254 && (*(a1 + 113) & 0xC0) == 0x80)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      v5 = v13;
LABEL_7:
      if (v4 != v5)
      {
        goto LABEL_25;
      }
    }
  }

  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v7 = dispatch_data_create(buffer, v2, _mdns_resolver_queue_s_queue, 0);
  if (v7)
  {
    v8 = v7;
    _mdns_common_session_invoke_receive(a1, v7);
    dispatch_release(v8);
  }

LABEL_25:
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t _mdns_udp_socket_session_initialize(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _BYTE *a5)
{
  v59 = *MEMORY[0x29EDCA608];
  address = nw_endpoint_get_address(*(*(a1 + 32) + 48));
  sa_family = address->sa_family;
  if (sa_family != 30 && sa_family != 2)
  {
    v16 = 4294960540;
    goto LABEL_137;
  }

  v12 = address;
  v55[0] = 0;
  v55[1] = 0;
  if (sa_family == 30)
  {
    if (*&address->sa_data[6] || *&address->sa_data[10])
    {
      goto LABEL_9;
    }

    v35 = *&address[1].sa_len;
    if (v35)
    {
      if (v35 == -65536)
      {
        v36 = *&address[1].sa_data[2];
LABEL_139:
        LOWORD(v55[0]) = 528;
        WORD1(v55[0]) = *address->sa_data;
        HIDWORD(v55[0]) = v36;
        v12 = v55;
        sa_family = 2;
        goto LABEL_10;
      }
    }

    else
    {
      v36 = *&address[1].sa_data[2];
      if ((v36 | 0x1000000) != 0x1000000)
      {
        goto LABEL_139;
      }
    }

LABEL_9:
    sa_family = 30;
  }

LABEL_10:
  if (sa_family == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 30;
  }

  v14 = socket(v13, 2, 17);
  if (v14 < 0)
  {
    if (*__error())
    {
      v16 = *__error();
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 4294960596;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v33 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v54[0].val[0] = 134217984;
      *&v54[0].val[1] = v16;
      _os_log_error_impl(&dword_2990ED000, v33, OS_LOG_TYPE_ERROR, "Failed to create UDP socket: %{darwin.errno}ld", v54, 0xCu);
    }

    goto LABEL_137;
  }

LABEL_16:
  v53 = 1;
  if (sa_family == 2)
  {
    if (!setsockopt(v14, 0xFFFF, 4226, &v53, 4u))
    {
      goto LABEL_43;
    }

    if (*__error())
    {
      v15 = *__error();
      if (!v15)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v15 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v34 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v54[0].val[0] = 67109120;
      v54[0].val[1] = v15;
      _os_log_error_impl(&dword_2990ED000, v34, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_RANDOMPORT failed %{darwin.errno}d", v54, 8u);
    }
  }

  else
  {
    v51 = a4;
    v52 = v12;
    v17 = a5;
    v18 = 0;
    *&v54[0].val[2] = 0;
    *&v54[0].val[4] = 0;
    v54[0].val[6] = 0;
    *v54[0].val = 7708;
    *&v54[0].val[2] = *MEMORY[0x29EDCA680];
    while (1)
    {
      v19 = arc4random() | 0xFFFFC000;
      HIWORD(v54[0].val[0]) = bswap32(v19) >> 16;
      if (!bind(v14, v54, 0x1Cu))
      {
        v20 = 0;
        goto LABEL_32;
      }

      if (!*__error())
      {
        break;
      }

      v20 = *__error();
      v21 = v18 + 1;
      if (v20 != 48 || v18++ >= 0x270F)
      {
        goto LABEL_33;
      }
    }

    v20 = -6700;
LABEL_32:
    v21 = v18 + 1;
LABEL_33:
    if (v20)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v23 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *v57 = v20;
        *&v57[8] = 1024;
        v58 = v21;
        _os_log_error_impl(&dword_2990ED000, v23, OS_LOG_TYPE_ERROR, "Binding IPv6 socket to random port failed -- error: %{mdns:err}ld, tries: %d", buf, 0x12u);
      }
    }

    else
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v24 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *v57 = v19;
        *&v57[4] = 1024;
        *&v57[6] = v21;
        _os_log_debug_impl(&dword_2990ED000, v24, OS_LOG_TYPE_DEBUG, "Binding IPv6 socket to random port succeeded -- port: %u, tries: %d", buf, 0xEu);
      }
    }

    a5 = v17;
    a4 = v51;
    v12 = v52;
  }

LABEL_43:
  if (!setsockopt(v14, 0xFFFF, 4130, &v53, 4u))
  {
    goto LABEL_52;
  }

  if (*__error())
  {
    v25 = *__error();
    if (!v25)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v25 = -6700;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v26 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v54[0].val[0] = 67109120;
    v54[0].val[1] = v25;
    _os_log_error_impl(&dword_2990ED000, v26, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_NOSIGPIPE failed %{darwin.errno}d", v54, 8u);
  }

LABEL_52:
  if (setsockopt(v14, 0xFFFF, 0x10000, &v53, 4u))
  {
    if (*__error())
    {
      v27 = *__error();
      if (!v27)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v27 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v28 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v54[0].val[0] = 67109120;
      v54[0].val[1] = v27;
      _os_log_error_impl(&dword_2990ED000, v28, OS_LOG_TYPE_ERROR, "setsockopt() for SOL_SOCKET/SO_NOWAKEFROMSLEEP failed %{darwin.errno}d", v54, 8u);
    }
  }

LABEL_61:
  v29 = fcntl(v14, 3, 0);
  if (fcntl(v14, 4, v29 | 4u) == -1 && *__error())
  {
    __error();
  }

  v30 = *(a2 + 48);
  if (v30)
  {
    *buf = nw_interface_get_index(v30);
    if (sa_family == 2)
    {
      if (!setsockopt(v14, 0, 25, buf, 4u))
      {
        goto LABEL_96;
      }

      if (*__error())
      {
        v31 = *__error();
        if (!v31)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v31 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v37 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v54[0].val[0] = 67109120;
        v54[0].val[1] = v31;
        v38 = "setsockopt() for IPPROTO_IP/IP_BOUND_IF failed %{darwin.errno}d";
        goto LABEL_141;
      }
    }

    else
    {
      if (!setsockopt(v14, 41, 125, buf, 4u))
      {
        goto LABEL_96;
      }

      if (*__error())
      {
        v32 = *__error();
        if (!v32)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v32 = -6700;
      }

      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v37 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v54[0].val[0] = 67109120;
        v54[0].val[1] = v32;
        v38 = "setsockopt() for IPPROTO_IPV6/IPV6_BOUND_IF failed %{darwin.errno}d";
LABEL_141:
        _os_log_error_impl(&dword_2990ED000, v37, OS_LOG_TYPE_ERROR, v38, v54, 8u);
        if (!a4)
        {
          goto LABEL_126;
        }

        goto LABEL_97;
      }
    }
  }

LABEL_96:
  if (!a4)
  {
    goto LABEL_126;
  }

LABEL_97:
  v39 = a4[4];
  if (v39 == 3)
  {
    v42 = *(*a4 + 40);
    *v54[0].val = *(*a4 + 24);
    *&v54[0].val[4] = v42;
    *buf = audit_token_to_pid(v54);
    if (!setsockopt(v14, 0xFFFF, 4359, buf, 4u))
    {
      goto LABEL_126;
    }

    if (*__error())
    {
      v43 = *__error();
      if (!v43)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v43 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v54[0].val[0] = 67109120;
    v54[0].val[1] = v43;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED failed %{darwin.errno}d";
    goto LABEL_144;
  }

  if (v39 == 2)
  {
    if (!setsockopt(v14, 0xFFFF, 4360, a4, 0x10u))
    {
      goto LABEL_126;
    }

    if (*__error())
    {
      v41 = *__error();
      if (!v41)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v41 = -6700;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v54[0].val[0] = 67109120;
    v54[0].val[1] = v41;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED_UUID failed %{darwin.errno}d";
LABEL_144:
    _os_log_error_impl(&dword_2990ED000, v44, OS_LOG_TYPE_ERROR, v45, v54, 8u);
    goto LABEL_126;
  }

  if (v39 != 1 || !setsockopt(v14, 0xFFFF, 4359, a4, 4u))
  {
    goto LABEL_126;
  }

  if (!*__error())
  {
    v40 = -6700;
LABEL_123:
    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v44 = _mdns_resolver_log_s_log;
    if (!os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_126;
    }

    v54[0].val[0] = 67109120;
    v54[0].val[1] = v40;
    v45 = "setsockopt() for SOL_SOCKET/SO_DELEGATED failed %{darwin.errno}d";
    goto LABEL_144;
  }

  v40 = *__error();
  if (v40)
  {
    goto LABEL_123;
  }

LABEL_126:
  if (!a5)
  {
LABEL_133:
    if (sa_family == 2)
    {
      v48 = 16;
    }

    else
    {
      v48 = 28;
    }

    memcpy((a1 + 104), v12, v48);
    v16 = 0;
    *(a1 + 132) = v48;
    *(a1 + 136) = v14;
    goto LABEL_137;
  }

  v46 = DomainNameToString(a5, 0, v54, 0);
  if (!v46)
  {
    if ((ne_session_set_socket_attributes() & 1) == 0)
    {
      if (_mdns_resolver_log_s_once != -1)
      {
        dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
      }

      v47 = _mdns_resolver_log_s_log;
      if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v57 = v54;
        _os_log_error_impl(&dword_2990ED000, v47, OS_LOG_TYPE_ERROR, "ne_session_set_socket_attributes() failed for '%s'", buf, 0xCu);
      }
    }

    goto LABEL_133;
  }

  v16 = v46;
  if ((v14 & 0x80000000) == 0)
  {
    close(v14);
  }

LABEL_137:
  v49 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t _mdns_udp_socket_session_finalize(uint64_t a1)
{
  result = *(a1 + 136);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    *(a1 + 136) = -1;
  }

  return result;
}

void _mdns_connection_session_send(uint64_t a1, NSObject *a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v6 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 96);
    *buf = 138412290;
    v14 = v11;
    _os_log_debug_impl(&dword_2990ED000, v6, OS_LOG_TYPE_DEBUG, "Sending message on connection %@", buf, 0xCu);
  }

  started = _mdns_create_and_start_connection_activity(*(a1 + 96), a3);
  v8 = *(a1 + 96);
  v9 = *MEMORY[0x29EDBB830];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___mdns_connection_session_send_block_invoke;
  v12[3] = &__block_descriptor_tmp_80_1438;
  v12[4] = started;
  v12[5] = a1;
  nw_connection_send(v8, a2, v9, 1, v12);
  v10 = *MEMORY[0x29EDCA608];
}

void ___mdns_connection_session_send_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(*(a1 + 40) + 96))
    {
      nw_connection_end_activity();
      v4 = *(a1 + 32);
    }

    nw_release(v4);
  }

  if (a2)
  {
    v5 = *(a1 + 40);
    if (*(v5 + 96))
    {

      _mdns_common_session_finish(v5, 3, 4294960543);
    }
  }
}

void _mdns_connection_session_invalidate(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    nw_connection_cancel(v2);
    v3 = *(a1 + 96);
    if (v3)
    {
      nw_release(v3);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t _mdns_connection_session_activate(nw_connection_t *a1)
{
  os_retain(a1);
  v2 = a1[12];
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  nw_connection_set_queue(v2, _mdns_resolver_queue_s_queue);
  v3 = a1[12];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___mdns_connection_session_activate_block_invoke;
  v6[3] = &__block_descriptor_tmp_76_1440;
  v6[4] = a1;
  nw_connection_set_state_changed_handler(v3, v6);
  nw_connection_start(a1[12]);
  v4 = a1[12];
  completion[0] = MEMORY[0x29EDCA5F8];
  completion[1] = 0x40000000;
  completion[2] = ___mdns_connection_session_schedule_receive_block_invoke;
  completion[3] = &__block_descriptor_tmp_78;
  completion[4] = a1;
  nw_connection_receive_message(v4, completion);
  return 0;
}

void ___mdns_connection_session_activate_block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (!v4[12])
  {
    if (a2 != 5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v5 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_DEBUG))
  {
    v9 = nw_connection_state_to_string();
    v10 = *(*(a1 + 32) + 96);
    v11 = 136315394;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_debug_impl(&dword_2990ED000, v5, OS_LOG_TYPE_DEBUG, "Connection state changed to %s for connection %@", &v11, 0x16u);
  }

  switch(a2)
  {
    case 3:
      v6 = *(a1 + 32);
      if (*(v6 + 88) == 1 && (*(v6 + 90) & 1) == 0)
      {
        *(v6 + 90) = 1;
        v7 = **(v6 + 72);
        if (v7)
        {
          v7(v6, 1, 0, *(v6 + 48));
        }
      }

      break;
    case 4:
      _mdns_common_session_finish(*(a1 + 32), 3, 4294960543);
      break;
    case 5:
      v4 = *(a1 + 32);
LABEL_10:
      os_release(v4);
      break;
  }

LABEL_16:
  v8 = *MEMORY[0x29EDCA608];
}

void ___mdns_connection_session_schedule_receive_block_invoke(uint64_t a1, uint64_t a2, nw_content_context_t context, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  if (*(v6 + 96))
  {
    if (a2)
    {
      _mdns_common_session_invoke_receive(v6, a2);
    }

    if (context)
    {
      is_final = nw_content_context_get_is_final(context);
    }

    else
    {
      is_final = 0;
    }

    v10 = *(a1 + 32);
    if (a5 || is_final)
    {
      if (a5)
      {
        v12 = 4294960543;
      }

      else
      {
        v12 = 0;
      }

      _mdns_common_session_finish(v10, 3, v12);
    }

    else
    {
      v11 = *(v10 + 96);
      completion[0] = MEMORY[0x29EDCA5F8];
      completion[1] = 0x40000000;
      completion[2] = ___mdns_connection_session_schedule_receive_block_invoke;
      completion[3] = &__block_descriptor_tmp_78;
      completion[4] = v10;
      nw_connection_receive_message(v11, completion);
    }
  }
}

uint64_t _mdns_connection_session_initialize(uint64_t a1, uint64_t a2, int a3, NSObject *a4, _BYTE *a5)
{
  v36 = *MEMORY[0x29EDCA608];
  v34 = 0;
  v8 = *(a2 + 16);
  if ((*(v8 + 158) & 1) != 0 || a3)
  {
    v13 = *(v8 + 112);
    if (v13)
    {
      v14 = v13(a2, &v34);
      if (v34)
      {
        goto LABEL_42;
      }

      v12 = v14;
      v11 = 1;
      goto LABEL_9;
    }

LABEL_16:
    v18 = -6735;
LABEL_17:
    v34 = v18;
    goto LABEL_42;
  }

  v9 = *(v8 + 104);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9(a2, &v34);
  v11 = v34;
  if (v34)
  {
    goto LABEL_42;
  }

  v12 = v10;
LABEL_9:
  *(a1 + 104) = v11;
  if (!a4)
  {
    goto LABEL_23;
  }

  if ((LODWORD(a4[2].isa) - 1) > 2)
  {
    a4 = 0;
    goto LABEL_23;
  }

  v15 = MEMORY[0x29C2993D0](v12);
  if (!v15)
  {
    v18 = -6729;
    goto LABEL_17;
  }

  v12 = v15;
  isa = a4[2].isa;
  switch(isa)
  {
    case 3u:
      v19 = *(a4->isa + 40);
      *buf = *(a4->isa + 24);
      *&buf[16] = v19;
      nw_parameters_set_source_application();
      break;
    case 2u:
      nw_parameters_set_e_proc_uuid();
      break;
    case 1u:
      isa_low = LODWORD(a4->isa);
      nw_parameters_set_pid();
      break;
  }

  a4 = v12;
LABEL_23:
  v20 = *(a1 + 32);
  v21 = *(v20 + 48);
  if (a5)
  {
    address = nw_endpoint_get_address(*(v20 + 48));
    v23 = nw_endpoint_create_address(address);
    if (v23)
    {
      v24 = v23;
      v25 = DomainNameToString(a5, 0, buf, 0);
      if (v25)
      {
        v29 = v25;
      }

      else
      {
        nw_endpoint_get_port(v24);
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
        if (host_with_numeric_port)
        {
          v27 = host_with_numeric_port;
          nw_endpoint_set_parent_endpoint();
          nw_release(v27);
          v21 = v24;
          goto LABEL_37;
        }

        v29 = -6729;
      }

      nw_release(v24);
      v28 = v29;
    }

    else
    {
      v28 = -6729;
    }

    if (_mdns_resolver_log_s_once != -1)
    {
      dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
    }

    v30 = _mdns_resolver_log_s_log;
    if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      _os_log_error_impl(&dword_2990ED000, v30, OS_LOG_TYPE_ERROR, "Failed to create domain-attributed endpoint for %@: %{mdns:err}ld", buf, 0x16u);
    }
  }

  v24 = 0;
LABEL_37:
  v31 = nw_connection_create(v21, v12);
  *(a1 + 96) = v31;
  if (v31)
  {
    if (!a4)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v34 = -6729;
  if (a4)
  {
LABEL_39:
    nw_release(a4);
  }

LABEL_40:
  if (v24)
  {
    nw_release(v24);
  }

LABEL_42:
  result = v34;
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void ___mdns_querier_conclude_async_block_invoke(uint64_t a1)
{
  _mdns_querier_conclude_ex(*(a1 + 32), *(a1 + 40), 0, 0);
  v2 = *(a1 + 32);

  os_release(v2);
}

void _mdns_querier_set_query(uint64_t a1, void *a2, __int16 a3, __int16 a4)
{
  mdns_query_message_set_qname(*(a1 + 96), a2);
  v7 = *(a1 + 96);
  if ((*(v7 + 70) & 0x20) == 0)
  {
    *(v7 + 64) = a3;
    *(v7 + 66) = a4;
  }
}

uint64_t _mdns_querier_get_internal_queue()
{
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  return _mdns_resolver_queue_s_queue;
}

void _mdns_querier_finalize(void *a1)
{
  a1[10] = 0;
  v2 = a1[9];
  if (v2)
  {
    os_release(v2);
    a1[9] = 0;
  }

  v3 = a1[11];
  if (v3)
  {
    _Block_release(v3);
    a1[11] = 0;
  }

  v4 = a1[12];
  if (v4)
  {
    os_release(v4);
    a1[12] = 0;
  }

  v5 = a1[16];
  if (v5)
  {
    free(v5);
    a1[16] = 0;
  }

  v6 = a1[17];
  if (v6)
  {
    os_release(v6);
    a1[17] = 0;
  }

  v7 = a1[20];
  if (v7)
  {
    os_release(v7);
    a1[20] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    os_release(v8);
    a1[24] = 0;
  }

  _mdns_querier_clear_delegation(a1);
}

void _mdns_querier_clear_delegation(uint64_t a1)
{
  v2 = *(a1 + 184);
  switch(v2)
  {
    case 3:
      v3 = *(a1 + 168);
      if (v3)
      {
        os_release(v3);
        *(a1 + 168) = 0;
      }

      break;
    case 2:
      uuid_clear((a1 + 168));
      break;
    case 1:
      *(a1 + 168) = 0;
      break;
  }

  *(a1 + 184) = 0;
}

void *_mdns_querier_copy_description(void *a1, int a2, char a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    goto LABEL_18;
  }

  if (mdns_string_builder_append_description(v7, *(a1[12] + 56), a3))
  {
    goto LABEL_18;
  }

  if (DNSRecordTypeValueToString(*(a1[12] + 64)) ? mdns_string_builder_append_formatted(v7, " %s") : mdns_string_builder_append_formatted(v7, " TYPE%u"))
  {
    goto LABEL_18;
  }

  v10 = *(a1[12] + 66);
  v11 = "ANY";
  if (v10 != 255)
  {
    v11 = 0;
  }

  if (v10 == 1)
  {
    v11 = "IN";
  }

  if (v11)
  {
    appended = mdns_string_builder_append_formatted(v7, " %s");
  }

  else
  {
    v14 = *(a1[12] + 66);
    appended = mdns_string_builder_append_formatted(v7, " CLASS%u");
  }

  if (appended)
  {
LABEL_18:
    v9 = 0;
  }

  else
  {
    v9 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v9;
}

void mdns_resolver_invalidate(void *a1)
{
  os_retain(a1);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_resolver_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_4_1461;
  block[4] = a1;
  dispatch_async(_mdns_resolver_queue_s_queue, block);
}

void __mdns_resolver_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 136) & 1) == 0)
  {
    *(v2 + 136) = 1;
    v3 = *(v2 + 104);
    if (v3)
    {
      dispatch_source_cancel(*(v2 + 104));
      dispatch_release(v3);
      *(v2 + 104) = 0;
    }

    v4 = *(v2 + 112);
    if (v4)
    {
      mdns_client_invalidate(v4);
      os_release(*(v2 + 112));
      *(v2 + 112) = 0;
    }

    while (1)
    {
      v8 = *(v2 + 24);
      if (!v8)
      {
        break;
      }

      *(v2 + 24) = *(v8 + 24);
      if (*(v8 + 56))
      {
        nw_path_evaluator_cancel();
        v5 = *(v8 + 56);
        if (v5)
        {
          nw_release(v5);
          *(v8 + 56) = 0;
        }
      }

      v6 = *(v8 + 32);
      if (v6)
      {
        _mdns_session_invalidate(v6);
        os_release(*(v8 + 32));
        *(v8 + 32) = 0;
      }

      v7 = *(v8 + 40);
      if (v7)
      {
        dispatch_source_cancel(*(v8 + 40));
        dispatch_release(v7);
        *(v8 + 40) = 0;
      }
    }

    _mdns_resolver_invalidate_and_forget_queriers((v2 + 32));
    _mdns_resolver_invalidate_and_forget_queriers((v2 + 40));
    v9 = *(v2 + 96);
    if (v9)
    {
      dispatch_source_cancel(*(v2 + 96));
      dispatch_release(v9);
      *(v2 + 96) = 0;
    }

    if (*(v2 + 80))
    {
      os_retain(v2);
      v10 = *(v2 + 72);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___mdns_resolver_invalidate_internal_block_invoke;
      block[3] = &__block_descriptor_tmp_48_1462;
      block[4] = v2;
      dispatch_async(v10, block);
    }
  }

  os_release(*(a1 + 32));
}

void _mdns_resolver_invalidate_and_forget_queriers(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    do
    {
      v2 = v1[8];
      v1[8] = 0;
      _mdns_querier_conclude_ex(v1, 4, 0, 0);
      os_release(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void ___mdns_resolver_invalidate_internal_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 80) + 16))();
  v2 = *(a1 + 32);

  os_release(v2);
}

void __mdns_resolver_prepare_for_system_sleep_block_invoke()
{
  if (_mdns_resolver_log_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_log_s_once, &__block_literal_global_53);
  }

  v0 = _mdns_resolver_log_s_log;
  if (os_log_type_enabled(_mdns_resolver_log_s_log, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_2990ED000, v0, OS_LOG_TYPE_INFO, "Preparing for system sleep", v2, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  _http_task_shared_session_critical_region(&__block_literal_global_759);
  objc_autoreleasePoolPop(v1);
}

uint64_t mdns_querier_set_question(uint64_t result)
{
  if ((*(result + 61) & 1) == 0)
  {
    return (*(*(result + 16) + 56))();
  }

  return result;
}

uint64_t mdns_querier_set_dnssec_ok(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    v2 = *(result + 96);
    if ((*(v2 + 70) & 0x20) == 0)
    {
      if (a2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 0;
      }

      *(v2 + 70) = *(v2 + 70) & 0xDB | v3;
    }
  }

  return result;
}

uint64_t mdns_querier_set_checking_disabled(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    v2 = *(result + 96);
    if ((*(v2 + 70) & 0x20) == 0)
    {
      if (a2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }

      *(v2 + 70) = *(v2 + 70) & 0xDD | v3;
    }
  }

  return result;
}

void mdns_querier_set_delegator_pid(uint64_t a1, int a2)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    _mdns_querier_clear_delegation(a1);
    *(a1 + 184) = 1;
    *(a1 + 168) = a2;
  }
}

void mdns_querier_set_delegator_uuid(uint64_t a1, const unsigned __int8 *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  if ((*(a1 + 61) & 1) == 0)
  {
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, a2);
    _mdns_querier_clear_delegation(a1);
    *(a1 + 184) = 2;
    uuid_copy((a1 + 168), dst);
  }

  v3 = *MEMORY[0x29EDCA608];
}

uint64_t mdns_querier_set_user_id(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 232) = a2;
  }

  return result;
}

void mdns_querier_set_result_handler(uint64_t a1, void *aBlock)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    if (aBlock)
    {
      v3 = _Block_copy(aBlock);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      _Block_release(v4);
    }

    *(a1 + 88) = v3;
  }
}

uint64_t mdns_querier_get_response_ptr(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_querier_get_response_length(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_querier_set_context(uint64_t result, uint64_t a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t mdns_querier_set_context_finalizer(uint64_t result, uint64_t a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t mdns_querier_set_start_time_leeway(uint64_t result, int a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 236) = a2;
  }

  return result;
}

uint64_t mdns_querier_enable_sensitive_logging(uint64_t result, char a2)
{
  if ((*(result + 61) & 1) == 0)
  {
    *(result + 255) = a2;
  }

  return result;
}

uint64_t mdns_security_create_self_signed_certificate(uint64_t a1, uint64_t a2, void *a3, int a4, int *a5)
{
  keys[2] = *MEMORY[0x29EDCA608];
  valuePtr = a4;
  v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *MEMORY[0x29EDBBBF0];
  keys[0] = *MEMORY[0x29EDBBBF8];
  keys[1] = v9;
  values[0] = a3;
  values[1] = v7;
  v10 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFRelease(v8);
  if (!v10)
  {
LABEL_21:
    v16 = 0;
    v12 = -6729;
    goto LABEL_16;
  }

  keys[0] = 0;
  RandomKey = SecKeyCreateRandomKey(v10, keys);
  if (RandomKey)
  {
    v12 = 0;
  }

  else
  {
    if (!keys[0])
    {
      v19 = v10;
LABEL_20:
      CFRelease(v19);
      v16 = 0;
      v12 = -6700;
      goto LABEL_16;
    }

    Code = CFErrorGetCode(keys[0]);
    if (Code)
    {
      v12 = Code;
    }

    else
    {
      v12 = -6700;
    }
  }

  if (keys[0])
  {
    CFRelease(keys[0]);
  }

  CFRelease(v10);
  if (!RandomKey)
  {
    v16 = 0;
    goto LABEL_16;
  }

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (!SelfSignedCertificate)
  {
    v19 = RandomKey;
    goto LABEL_20;
  }

  v15 = SelfSignedCertificate;
  v16 = SecIdentityCreate();
  if (!v16)
  {
    v12 = -6700;
  }

  CFRelease(RandomKey);
  CFRelease(v15);
LABEL_16:
  if (a5)
  {
    *a5 = v12;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t mdns_security_set_per_user_certificate_trust_settings()
{
  if (!SecTrustStoreForDomain())
  {
    return 4294960596;
  }

  return MEMORY[0x2A1C5CBB8]();
}

uint64_t mdns_security_remove_per_user_certificate_trust_settings()
{
  if (!SecTrustStoreForDomain())
  {
    return 4294960596;
  }

  return MEMORY[0x2A1C5CBB0]();
}

os_log_t ___mdns_signed_result_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "signed_result");
  _mdns_signed_result_log_s_log = result;
  return result;
}

uint64_t _mdns_necp_validate_result()
{
  v7 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&_mdns_necp_get_shared_fd_s_lock);
  if (_mdns_necp_get_shared_fd_s_fd < 0)
  {
    _mdns_necp_get_shared_fd_s_fd = necp_open();
    if (_mdns_necp_get_shared_fd_s_fd < 0)
    {
      if (*__error())
      {
        v0 = *__error();
        os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
        if (!v0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
        v0 = 4294960596;
      }

      if (_mdns_signed_result_log_s_once != -1)
      {
        dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_1523);
      }

      v1 = _mdns_signed_result_log_s_log;
      if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v5 = 134217984;
        v6 = v0;
        v2 = "Failed to create NECP file descriptor: %{mdns:err}ld";
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  os_unfair_lock_unlock(&_mdns_necp_get_shared_fd_s_lock);
LABEL_4:
  if (!necp_client_action())
  {
    v0 = 0;
    goto LABEL_21;
  }

  if (*__error())
  {
    v0 = *__error();
    if (!v0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v0 = 4294960596;
  }

  if (_mdns_signed_result_log_s_once != -1)
  {
    dispatch_once(&_mdns_signed_result_log_s_once, &__block_literal_global_1523);
  }

  v1 = _mdns_signed_result_log_s_log;
  if (os_log_type_enabled(_mdns_signed_result_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = v0;
    v2 = "Failed to validate data: %{mdns:err}ld";
LABEL_23:
    _os_log_error_impl(&dword_2990ED000, v1, OS_LOG_TYPE_ERROR, v2, &v5, 0xCu);
  }

LABEL_21:
  v3 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t _mdns_signed_browse_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_browse_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_browse_result_copy_description(void *a1, int a2, int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[4], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, service instance: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 58, *(v8 + 56), a3))
    {
      v9 = 0;
    }

    else
    {
      v9 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t _mdns_string_builder_append_domain_name_string(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a3 > 0x3F0)
  {
    result = mdns_string_builder_append_formatted(a1, "«TOO LONG: %zu chars»");
  }

  else if (a4)
  {
    __memcpy_chk();
    v8[a3] = 0;
    DNSMessagePrintObfuscatedString(v9, 64, v8);
    result = mdns_string_builder_append_formatted(a1, "%s");
  }

  else
  {
    result = mdns_string_builder_append_formatted(a1, "%.*s");
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _mdns_signed_result_compute_txt_rdata_24_bit_hash(int a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 16777619 * ((16777619 * (a1 ^ (a3 >> 8))) ^ a3);
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = *a2++;
      v3 = 16777619 * (v3 ^ v5);
      --v4;
    }

    while (v4);
  }

  return v3 & 0xFFFFFF ^ HIBYTE(v3);
}

unsigned __int8 *mdns_signed_browse_result_create_from_data(uint64_t a1, size_t a2, int *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2 < 0x3A)
  {
    v12 = 0;
    appended = -6743;
  }

  else if (*(a1 + 48) == 5)
  {
    v5 = *(a1 + 56);
    if (a2 - 58 < v5)
    {
      v12 = 0;
      appended = -6750;
    }

    else if (v5 > 0x3F0)
    {
      v12 = 0;
      appended = -6744;
    }

    else
    {
      v7 = *(a1 + 56);
      __memcpy_chk();
      v19[v5] = 0;
      v18[0] = 0;
      appended = DomainNameAppendString(v18, v19, 0);
      if (appended || (appended = _mdns_necp_validate_result()) != 0)
      {
        v12 = 0;
      }

      else
      {
        result = malloc_type_malloc(a2, 0xFE29915uLL);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v10 = result;
        memcpy(result, a1, a2);
        v11 = _os_object_alloc();
        v12 = v11;
        if (v11)
        {
          v13 = &_mdns_signed_browse_result_kind;
          *(v11 + 16) = &_mdns_signed_browse_result_kind;
          do
          {
            v14 = v13[2];
            if (v14)
            {
              v14(v12);
            }

            v13 = *v13;
          }

          while (v13);
          DomainNameDupEx(v18, 0, (v12 + 24), 0);
          v15 = -2128831035;
          for (i = 32; i != 48; ++i)
          {
            v15 = 16777619 * (v15 ^ v10[i]);
          }

          appended = 0;
          *(v12 + 48) = v15;
          *(v12 + 32) = v10;
          *(v12 + 40) = a2;
        }

        else
        {
          free(v10);
          appended = -6728;
        }
      }
    }
  }

  else
  {
    v12 = 0;
    appended = -6756;
  }

  if (a3)
  {
    *a3 = appended;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t mdns_signed_browse_result_contains(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  if (!a3)
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }

  v3 = 0;
  v4 = *(*(a1 + 32) + 52);
  v5 = *(a1 + 48);
  v7 = bswap32(a3);
  do
  {
    LOWORD(v5) = 403 * (v5 ^ *(&v7 + v3++));
  }

  while (v3 != 4);
  if (HIBYTE(v4) != (v5 ^ BYTE1(v5)))
  {
    return 0;
  }

  else
  {
    return DomainNameEqual(*(a1 + 24), a2);
  }
}

BOOL mdns_signed_browse_result_covers_txt_rdata(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    return 0;
  }

  v3 = *(*(a1 + 32) + 52) & 0xFFFFFF;
  return v3 == _mdns_signed_result_compute_txt_rdata_24_bit_hash(*(a1 + 48), a2, a3);
}

uint64_t _mdns_signed_resolve_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return *(a1 + 32);
}

void _mdns_signed_resolve_result_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  a1[5] = 0;
}

void *_mdns_signed_resolve_result_copy_description(void *a1, int a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (!a2 || !mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1))
    {
      v8 = a1[4];
      memset(out, 0, 37);
      uuid_unparse((v8 + 32), out);
      if (!mdns_string_builder_append_formatted(v7, "client ID: %s", out))
      {
        v15[0] = "service instance";
        v15[1] = v8 + 62;
        v16 = *(v8 + 56);
        v17 = 0;
        v18 = 0;
        v19[0] = "hostname";
        v19[1] = v8 + 62 + v16;
        v20 = *(v8 + 60);
        v12 = v15;
        v13 = 1;
        while (1)
        {
          v14 = v13;
          if (mdns_string_builder_append_formatted(v7, ", %s: ", *v12) || _mdns_string_builder_append_domain_name_string(v7, v12[1], *(v12 + 8), a3))
          {
            break;
          }

          v13 = 0;
          v12 = v19;
          if ((v14 & 1) == 0)
          {
            if (mdns_string_builder_append_formatted(v7, ", port: %u", bswap32(*(v8 + 58)) >> 16))
            {
              break;
            }

            v9 = mdns_string_builder_copy_string(v7);
            goto LABEL_6;
          }
        }
      }
    }

    v9 = 0;
LABEL_6:
    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

unsigned __int8 *mdns_signed_resolve_result_create_from_data(uint64_t a1, size_t a2, int *a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a2 - 62;
  if (a2 < 0x3E)
  {
    v16 = 0;
    appended = -6743;
  }

  else if (*(a1 + 48) == 6)
  {
    v6 = *(a1 + 56);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7 && (v9 = *(a1 + 60), v8 >= v9))
    {
      if (v9 > 0x3F0)
      {
        v16 = 0;
        appended = -6744;
      }

      else
      {
        v11 = *(a1 + 60);
        __memcpy_chk();
        v23[v9] = 0;
        v22[0] = 0;
        appended = DomainNameAppendString(v22, v23, 0);
        if (appended || (appended = _mdns_necp_validate_result()) != 0)
        {
          v16 = 0;
        }

        else
        {
          result = malloc_type_malloc(a2, 0xFE29915uLL);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v14 = result;
          memcpy(result, a1, a2);
          v15 = _os_object_alloc();
          v16 = v15;
          if (v15)
          {
            v17 = &_mdns_signed_resolve_result_kind;
            *(v15 + 16) = &_mdns_signed_resolve_result_kind;
            do
            {
              v18 = v17[2];
              if (v18)
              {
                v18(v16);
              }

              v17 = *v17;
            }

            while (v17);
            DomainNameDupEx(v22, 0, (v16 + 24), 0);
            v19 = -2128831035;
            for (i = 32; i != 48; ++i)
            {
              v19 = 16777619 * (v19 ^ v14[i]);
            }

            appended = 0;
            *(v16 + 48) = v19;
            *(v16 + 32) = v14;
            *(v16 + 40) = a2;
          }

          else
          {
            free(v14);
            appended = -6728;
          }
        }
      }
    }

    else
    {
      v16 = 0;
      appended = -6750;
    }
  }

  else
  {
    v16 = 0;
    appended = -6756;
  }

  if (a3)
  {
    *a3 = appended;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v16;
}

BOOL mdns_signed_resolve_result_covers_txt_rdata(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    return 0;
  }

  v3 = *(*(a1 + 32) + 52) & 0xFFFFFF;
  return v3 == _mdns_signed_result_compute_txt_rdata_24_bit_hash(*(a1 + 48), a2, a3);
}

uint64_t _mdns_signed_hostname_result_get_data(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  return *(a1 + 24);
}

void _mdns_signed_hostname_result_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
}

void *_mdns_signed_hostname_result_copy_description(void *a1, int a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(a1[2] + 8), a1) || (v8 = a1[3], memset(out, 0, 37), uuid_unparse((v8 + 32), out), mdns_string_builder_append_formatted(v7, "client ID: %s, hostname: ", out)) || _mdns_string_builder_append_domain_name_string(v7, v8 + 88, *(v8 + 84), a3) || mdns_string_builder_append_formatted(v7, ", address: ") || (v12[0] = *(v8 + 56), *(v12 + 12) = *(v8 + 68), mdns_string_builder_append_sockaddr_description(v7, v12, a3)))
    {
      v9 = 0;
    }

    else
    {
      v9 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

void *mdns_signed_hostname_result_create_from_data(_DWORD *a1, size_t a2, int *a3)
{
  if (a2 < 0x58)
  {
    v8 = 0;
    v6 = -6743;
  }

  else if (a1[12] == 4)
  {
    if (a2 - 88 < a1[21])
    {
      v8 = 0;
      v6 = -6750;
    }

    else
    {
      v6 = _mdns_necp_validate_result();
      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v7 = _os_object_alloc();
        v8 = v7;
        if (v7)
        {
          v9 = &_mdns_signed_hostname_result_kind;
          *(v7 + 16) = &_mdns_signed_hostname_result_kind;
          do
          {
            v10 = v9[2];
            if (v10)
            {
              v10(v8);
            }

            v9 = *v9;
          }

          while (v9);
          result = malloc_type_malloc(a2, 0xFE29915uLL);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v12 = result;
          memcpy(result, a1, a2);
          v6 = 0;
          *(v8 + 24) = v12;
          *(v8 + 32) = a2;
        }

        else
        {
          v6 = -6728;
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v6 = -6756;
  }

  if (a3)
  {
    *a3 = v6;
  }

  return v8;
}

void _mdns_string_builder_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_string_builder_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1) || mdns_string_builder_append_formatted(v5, "capacity: %zu, string length: %zu", a1[4], a1[5]))
  {
    goto LABEL_4;
  }

  v7 = v5[3];
  if (v7)
  {
    v8 = v5[5];
    v9 = v8 + 1;
    if (v8 == -1)
    {
LABEL_4:
      v6 = 0;
LABEL_12:
      os_release(v5);
      return v6;
    }
  }

  else
  {
    v7 = "";
    v9 = 1;
  }

  result = malloc_type_malloc(v9, 0xFE29915uLL);
  if (result)
  {
    v6 = result;
    memcpy(result, v7, v9);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t mdns_string_builder_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_string_builder_kind;
    *(v0 + 16) = &_mdns_string_builder_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  return v1;
}

uint64_t mdns_string_builder_append_formatted(void *a1, char *__format, ...)
{
  va_start(va, __format);
  if (a1[3] || (result = _mdns_string_builder_grow_buffer(a1, a1[4]), !result))
  {
    for (i = 1; ; i = 0)
    {
      v6 = a1[4] - a1[5];
      v7 = vsnprintf((a1[3] + a1[5]), v6, __format, va);
      if ((v7 & 0x80000000) != 0)
      {
        *(a1[3] + a1[5]) = 0;
        return 4294960596;
      }

      v8 = v7;
      if (v6 > v7)
      {
        result = 0;
        a1[5] += v8;
        return result;
      }

      if ((i & 1) == 0)
      {
        break;
      }

      v9 = a1[5];
      v10 = v7 + 1;
      v11 = __CFADD__(v9, v10);
      v12 = v9 + v10;
      if (v11)
      {
        return 4294960567;
      }

      v13 = a1[4];
      if (v13 < 0)
      {
        return 4294960567;
      }

      if (v12 <= 2 * v13)
      {
        v14 = 2 * v13;
      }

      else
      {
        v14 = v12;
      }

      result = _mdns_string_builder_grow_buffer(a1, v14);
      if (result)
      {
        return result;
      }
    }

    return 4294960534;
  }

  return result;
}

uint64_t _mdns_string_builder_grow_buffer(void *a1, unint64_t a2)
{
  if (a1[3] && a1[4] >= a2)
  {
    return 0;
  }

  if (a2 <= 0x40)
  {
    v3 = 64;
  }

  else
  {
    v3 = a2;
  }

  v4 = malloc_good_size(v3);
  if (v4 < v3)
  {
    return 4294960534;
  }

  v5 = v4;
  result = malloc_type_calloc(v4, 1uLL, 0x4B3A0919uLL);
  if (result)
  {
    v7 = result;
    v8 = a1[3];
    if (v8)
    {
      memcpy(result, v8, a1[5] + 1);
      v9 = a1[3];
      if (v9)
      {
        free(v9);
      }
    }

    result = 0;
    a1[3] = v7;
    a1[4] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t mdns_string_builder_append_description(void *a1, uint64_t a2, char a3)
{
  v4 = (a2 + 16);
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = v4[3];
    if (v5)
    {
      v6 = v5(a2, 0, a3 & 1);
      if (v6)
      {
        v7 = v6;
        appended = mdns_string_builder_append_formatted(a1, "%s", v6);
        free(v7);
        return appended;
      }

      return 4294960567;
    }
  }

  return 4294960567;
}

uint64_t mdns_string_builder_append_description_with_prefix(void *a1, const char *a2, uint64_t a3, char a4)
{
  if (!a2 || (result = mdns_string_builder_append_formatted(a1, "%s", a2), !result))
  {

    return mdns_string_builder_append_description(a1, a3, a4);
  }

  return result;
}

uint64_t mdns_string_builder_append_sockaddr_description(void *a1, uint64_t a2, char a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v6 = *(a2 + 1);
  if (v6 != 30)
  {
    if (v6 != 2)
    {
      v12 = *(a2 + 1);
      result = mdns_string_builder_append_formatted(a1, "«UNHANDLED ADDRESS FAMILY: %d»");
      goto LABEL_39;
    }

    if (a3)
    {
      if ((DNSMessagePrintObfuscatedIPv4Address(v13, 64, bswap32(*(a2 + 4))) & 0x80000000) != 0)
      {
        v13[0] = 0;
      }

      result = mdns_string_builder_append_formatted(a1, "<IPv4:%s>");
LABEL_17:
      if (!result)
      {
        if ((a3 & 2) == 0 && *(a2 + 2))
        {
          result = mdns_string_builder_append_formatted(a1, ":%d");
          goto LABEL_39;
        }

LABEL_38:
        result = 0;
        goto LABEL_39;
      }

      goto LABEL_39;
    }

    if (inet_ntop(2, (a2 + 4), v13, 0x10u))
    {
LABEL_5:
      result = mdns_string_builder_append_formatted(a1, "%s");
      goto LABEL_17;
    }

    if (*__error())
    {
      result = *__error();
      if (result)
      {
        goto LABEL_39;
      }

      goto LABEL_5;
    }

LABEL_34:
    result = 4294960596;
    goto LABEL_39;
  }

  if ((a3 & 2) != 0 || !*(a2 + 2))
  {
    v8 = 1;
    if (a3)
    {
LABEL_10:
      if ((DNSMessagePrintObfuscatedIPv6Address(v13, 64, a2 + 8) & 0x80000000) != 0)
      {
        v13[0] = 0;
      }

      result = mdns_string_builder_append_formatted(a1, "<IPv6:%s>");
      goto LABEL_24;
    }
  }

  else
  {
    result = mdns_string_builder_append_formatted(a1, "[");
    if (result)
    {
      goto LABEL_39;
    }

    v8 = 0;
    if (a3)
    {
      goto LABEL_10;
    }
  }

  if (!inet_ntop(30, (a2 + 8), v13, 0x2Eu))
  {
    if (!*__error())
    {
      goto LABEL_34;
    }

    result = *__error();
    if (result)
    {
      goto LABEL_39;
    }
  }

  result = mdns_string_builder_append_formatted(a1, "%s");
LABEL_24:
  if (!result)
  {
    v9 = *(a2 + 24);
    if (!v9 || (!if_indextoname(v9, v13) ? (v10 = *(a2 + 24), result = mdns_string_builder_append_formatted(a1, "%%%u")) : (result = mdns_string_builder_append_formatted(a1, "%%%s")), !result))
    {
      if ((v8 & 1) == 0)
      {
        result = mdns_string_builder_append_formatted(a1, "]:%d");
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

LABEL_39:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void *mdns_string_builder_copy_string(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 1;
    if (v2 == -1)
    {
      return 0;
    }
  }

  else
  {
    v1 = "";
    v3 = 1;
  }

  result = malloc_type_malloc(v3, 0xFE29915uLL);
  if (result)
  {

    return memcpy(result, v1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _mdns_symptoms_report_dns_server_symptom(uint64_t a1, uint64_t a2)
{
  if (_mdns_symptoms_get_reporter_s_once != -1)
  {
    dispatch_once(&_mdns_symptoms_get_reporter_s_once, &__block_literal_global_1577);
  }

  result = _mdns_symptoms_get_reporter_s_reporter;
  if (_mdns_symptoms_get_reporter_s_reporter)
  {
    v4 = *(a2 + 1);
    if (v4 == 2 || v4 == 30)
    {
      v5 = symptom_new();
      symptom_set_additional_qualifier();

      return MEMORY[0x2A1C69948](v5);
    }
  }

  return result;
}

void ___mdns_symptoms_get_reporter_block_invoke()
{
  if (MEMORY[0x2A1C7B3F8])
  {
    _mdns_symptoms_get_reporter_s_reporter = symptom_framework_init();
  }
}

os_log_t __mdns_system_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "system");
  mdns_system_log_s_log = result;
  return result;
}

uint64_t mdns_system_set_computer_name_with_utf8_cstring(char *cStr, const __CFString *a2, char a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = 134217984;
  v6 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
  if (!v6)
  {
    v11 = 4294960596;
    goto LABEL_15;
  }

  v7 = v6;
  v16 = 0;
  locked_prefs = _mdns_system_create_locked_prefs(a2, a3 & 1, &v16);
  v15 = locked_prefs;
  if (!v16)
  {
    v9 = locked_prefs;
    if ((a3 & 2) != 0)
    {
      nameEncoding = 0;
      v10 = SCDynamicStoreCopyComputerName(0, &nameEncoding);
      v5 = v10 ? nameEncoding : 134217984;
      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (SCPreferencesSetComputerName(v9, v7, v5))
    {
      v16 = 0;
LABEL_13:
      v16 = _mdns_system_commit_and_apply_prefs(v9);
      goto LABEL_14;
    }

    if (SCError())
    {
      v16 = SCError();
      if (!v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = -6700;
    }

    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v14 = mdns_system_log_s_log;
    if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      nameEncoding = 138412802;
      v18 = v7;
      v19 = 2048;
      v20 = v5;
      v21 = 2048;
      v22 = v16;
      _os_log_error_impl(&dword_2990ED000, v14, OS_LOG_TYPE_ERROR, "SCPreferencesSetComputerName failed -- name: '%@', encoding: 0x%lX, error: %{mdns:err}ld", &nameEncoding, 0x20u);
    }
  }

LABEL_14:
  _mdns_system_unlock_and_forget_prefs(&v15);
  v11 = v16;
  CFRelease(v7);
LABEL_15:
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

const __SCPreferences *_mdns_system_create_locked_prefs(CFStringRef name, Boolean a2, int *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = SCPreferencesCreateWithAuthorization(*MEMORY[0x29EDB8ED8], name, 0, *MEMORY[0x29EDBCC70]);
  if (v5)
  {
    goto LABEL_4;
  }

  if (!SCError())
  {
    v7 = -6700;
LABEL_14:
    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v11 = mdns_system_log_s_log;
    if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      v14 = v7;
      _os_log_error_impl(&dword_2990ED000, v11, OS_LOG_TYPE_ERROR, "SCPreferencesCreateWithAuthorization failed: %{mdns:err}ld", &v13, 0xCu);
    }

    v8 = 0;
    goto LABEL_25;
  }

  v6 = SCError();
  if (v6)
  {
    v7 = v6;
    goto LABEL_14;
  }

LABEL_4:
  if (SCPreferencesLock(v5, a2))
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (SCError())
  {
    v7 = SCError();
    if (!v7)
    {
LABEL_8:
      v8 = 0;
      if (!a3)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = -6700;
  }

  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
  }

  v12 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    v14 = v7;
    _os_log_error_impl(&dword_2990ED000, v12, OS_LOG_TYPE_ERROR, "SCPreferencesLock failed: %{mdns:err}ld", &v13, 0xCu);
  }

  v8 = v5;
LABEL_25:
  v5 = 0;
  if (a3)
  {
LABEL_9:
    *a3 = v7;
  }

LABEL_10:
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t _mdns_system_commit_and_apply_prefs(const __SCPreferences *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!SCPreferencesCommitChanges(a1))
  {
    if (SCError())
    {
      v2 = SCError();
      if (!v2)
      {
        goto LABEL_4;
      }

      v3 = v2;
    }

    else
    {
      v3 = 4294960596;
    }

    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v4 = mdns_system_log_s_log;
    if (!os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v8 = 134217984;
    v9 = v3;
    v5 = "SCPreferencesCommitChanges failed: %{mdns:err}ld";
LABEL_20:
    _os_log_error_impl(&dword_2990ED000, v4, OS_LOG_TYPE_ERROR, v5, &v8, 0xCu);
    goto LABEL_18;
  }

LABEL_4:
  if (SCPreferencesApplyChanges(a1))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if (SCError())
  {
    v3 = SCError();
    if (!v3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v3 = 4294960596;
  }

  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
  }

  v4 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v8 = 134217984;
    v9 = v3;
    v5 = "SCPreferencesApplyChanges failed: %{mdns:err}ld";
    goto LABEL_20;
  }

LABEL_18:
  v6 = *MEMORY[0x29EDCA608];
  return v3;
}

void _mdns_system_unlock_and_forget_prefs(const __SCPreferences **a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    if (!SCPreferencesUnlock(v1))
    {
      if (!SCError())
      {
        v3 = -6700;
        goto LABEL_7;
      }

      v2 = SCError();
      if (v2)
      {
        v3 = v2;
LABEL_7:
        if (mdns_system_log_s_once != -1)
        {
          dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
        }

        v4 = mdns_system_log_s_log;
        if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v6 = 134217984;
          v7 = v3;
          _os_log_error_impl(&dword_2990ED000, v4, OS_LOG_TYPE_ERROR, "SCPreferencesUnlock failed: %{mdns:err}ld", &v6, 0xCu);
        }
      }
    }

    CFRelease(v1);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t mdns_system_set_local_host_name_with_utf8_cstring(char *cStr, const __CFString *a2, Boolean a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u);
  if (!v5)
  {
    v9 = 4294960596;
    goto LABEL_9;
  }

  v6 = v5;
  v14 = 0;
  locked_prefs = _mdns_system_create_locked_prefs(a2, a3, &v14);
  v13 = locked_prefs;
  if (!v14)
  {
    v8 = locked_prefs;
    if (SCPreferencesSetLocalHostName(locked_prefs, v6))
    {
      v14 = 0;
LABEL_7:
      v14 = _mdns_system_commit_and_apply_prefs(v8);
      goto LABEL_8;
    }

    if (SCError())
    {
      v14 = SCError();
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = -6700;
    }

    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
    }

    v12 = mdns_system_log_s_log;
    if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2048;
      v18 = v14;
      _os_log_error_impl(&dword_2990ED000, v12, OS_LOG_TYPE_ERROR, "SCPreferencesSetLocalHostName failed -- name: '%@', error: %{mdns:err}ld", buf, 0x16u);
    }
  }

LABEL_8:
  _mdns_system_unlock_and_forget_prefs(&v13);
  v9 = v14;
  CFRelease(v6);
LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

char *mdns_system_interface_index_to_name(unsigned int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = if_indextoname(a1, v10);
  if (v2)
  {
    result = strdup(v2);
    if (result)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  if (!*__error())
  {
LABEL_7:
    v5 = -6700;
    goto LABEL_8;
  }

  v5 = *__error();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_1595);
  }

  v6 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109376;
    v7[1] = a1;
    v8 = 2048;
    v9 = v5;
    _os_log_error_impl(&dword_2990ED000, v6, OS_LOG_TYPE_ERROR, "if_indextoname() for %u failed: %{darwin.errno}ld", v7, 0x12u);
  }

  result = 0;
LABEL_3:
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_system_pid_to_uuid(int a1, unsigned __int8 *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (proc_pidinfo(a1, 17, 1uLL, v5, 56) == 56)
  {
    if (a2)
    {
      uuid_copy(a2, v5);
    }

    result = 0;
  }

  else
  {
    result = 4294960596;
  }

  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void mdns_system_remove_network_policy(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    [a1 removeAllPolicies];
    [a1 apply];
  }

  objc_autoreleasePoolPop(v2);
}

id mdns_system_add_net_agent_match_domains(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x29EDBB8C0]);
  v27 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:a1];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = a2;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = objc_alloc(MEMORY[0x29EDBB880]);
          v12 = [MEMORY[0x29EDBB8A0] netAgentUUID:{v27, context}];
          v13 = [MEMORY[0x29EDBB890] domain:v10];
          v33 = v13;
          [MEMORY[0x29EDB8D80] arrayWithObjects:&v33 count:1];
          v15 = v14 = v4;
          v16 = [v11 initWithOrder:1 result:v12 conditions:v15];

          v4 = v14;
          [v14 addPolicy:v16];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v17 = objc_alloc(MEMORY[0x29EDBB880]);
  v18 = [MEMORY[0x29EDBB8A0] netAgentUUID:v27];
  v19 = MEMORY[0x29EDBB890];
  v20 = [v27 UUIDString];
  v21 = [v19 domain:v20];
  v32 = v21;
  v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v32 count:1];
  v23 = [v17 initWithOrder:1 result:v18 conditions:v22];

  [v4 addPolicy:v23];
  [v4 setPriority:300];
  [v4 apply];

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t mdns_tcpinfo_get_ipv4(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  *&v11[3] = 0u;
  memset(v10, 0, sizeof(v10));
  WORD2(v10[0]) = 528;
  WORD3(v10[0]) = __rev16(a2);
  DWORD2(v10[0]) = bswap32(a1);
  LOWORD(v11[0]) = 528;
  HIWORD(v11[0]) = __rev16(a4);
  *&v11[1] = bswap32(a3);
  info = _mdns_tcpinfo_get_info(v10, a5);
  if (_mdns_tcpinfo_log_s_once != -1)
  {
    dispatch_once(&_mdns_tcpinfo_log_s_once, &__block_literal_global_1623);
  }

  v6 = _mdns_tcpinfo_log_s_log;
  if (info)
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v7 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_tcpinfo_log_s_log, v7))
  {
    *buf = 67110144;
    v13 = DWORD2(v10[0]);
    v14 = 1024;
    v15 = bswap32(WORD3(v10[0])) >> 16;
    v16 = 1024;
    v17 = v11[1];
    v18 = 1024;
    v19 = bswap32(HIWORD(v11[0])) >> 16;
    v20 = 2048;
    v21 = info;
    _os_log_impl(&dword_2990ED000, v6, v7, "TCP info get -- local: %{network:in_addr}u:%d, remote: %{network:in_addr}u:%d, error: %{mdns:err}ld", buf, 0x24u);
  }

  v8 = *MEMORY[0x29EDCA608];
  return info;
}

uint64_t _mdns_tcpinfo_get_info(_BYTE *a1, void *a2)
{
  *a1 = 6;
  memset(__src, 0, 424);
  v4 = 424;
  if (sysctlbyname("net.inet.tcp.info", __src, &v4, a1, 0x3CuLL) == -1)
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  if (!result)
  {
    memcpy(a2, __src, 0x1A8uLL);
    return 0;
  }

  return result;
}

os_log_t ___mdns_tcpinfo_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "tcpinfo");
  _mdns_tcpinfo_log_s_log = result;
  return result;
}

uint64_t mdns_tcpinfo_get_ipv6(_OWORD *a1, unsigned int a2, _OWORD *a3, unsigned int a4, void *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(v10, 0, 60);
  WORD2(v10[0]) = 7708;
  WORD3(v10[0]) = __rev16(a2);
  *(v10 + 12) = *a1;
  LOWORD(v10[2]) = 7708;
  WORD1(v10[2]) = __rev16(a4);
  *(&v10[2] + 8) = *a3;
  info = _mdns_tcpinfo_get_info(v10, a5);
  if (_mdns_tcpinfo_log_s_once != -1)
  {
    dispatch_once(&_mdns_tcpinfo_log_s_once, &__block_literal_global_1623);
  }

  v6 = _mdns_tcpinfo_log_s_log;
  if (info)
  {
    v7 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v7 = OS_LOG_TYPE_INFO;
  }

  if (os_log_type_enabled(_mdns_tcpinfo_log_s_log, v7))
  {
    *buf = 68159234;
    v12 = 16;
    v13 = 2096;
    v14 = v10 | 0xC;
    v15 = 1024;
    v16 = bswap32(WORD3(v10[0])) >> 16;
    v17 = 1040;
    v18 = 16;
    v19 = 2096;
    v20 = &v10[2] + 8;
    v21 = 1024;
    v22 = bswap32(WORD1(v10[2])) >> 16;
    v23 = 2048;
    v24 = info;
    _os_log_impl(&dword_2990ED000, v6, v7, "TCP info get -- local: %{network:in6_addr}.16P.%d, remote: %{network:in6_addr}.16P.%d, error: %{mdns:err}ld", buf, 0x38u);
  }

  v8 = *MEMORY[0x29EDCA608];
  return info;
}

uint64_t mdns_mach_ticks_per_second()
{
  if (mdns_mach_ticks_per_second_s_once != -1)
  {
    dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_1634);
  }

  return mdns_mach_ticks_per_second_s_ticks_per_second;
}

void __mdns_mach_ticks_per_second_block_invoke()
{
  v12 = *MEMORY[0x29EDCA608];
  v0 = 1000000000;
  info = 0;
  v1 = mach_timebase_info(&info);
  if (v1 || (info.numer ? (v2 = info.denom == 0) : (v2 = 1), v2))
  {
    if (_mdns_ticks_log_s_once != -1)
    {
      dispatch_once(&_mdns_ticks_log_s_once, &__block_literal_global_3);
    }

    v3 = _mdns_ticks_log_s_log;
    if (os_log_type_enabled(_mdns_ticks_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v7 = v1;
      v8 = 1024;
      numer = info.numer;
      v10 = 1024;
      denom = info.denom;
      _os_log_error_impl(&dword_2990ED000, v3, OS_LOG_TYPE_ERROR, "Unexpected results from mach_timebase_info: err %d numer %u denom %u", buf, 0x14u);
    }
  }

  else
  {
    v0 = 1000000000 * info.denom / info.numer;
  }

  mdns_mach_ticks_per_second_s_ticks_per_second = v0;
  v4 = *MEMORY[0x29EDCA608];
}

os_log_t ___mdns_ticks_log_block_invoke()
{
  result = os_log_create("com.apple.mdns", "ticks");
  _mdns_ticks_log_s_log = result;
  return result;
}

const __CFData *mdns_xpc_create_dictionary_from_plist_data(UInt8 *bytes, CFIndex length, int *a3)
{
  v4 = CFDataCreate(0, bytes, length);
  if (v4)
  {
    v5 = CFPropertyListCreateWithData(0, v4, 0, 0, 0);
    CFRelease(v4);
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      if (v6 == CFDictionaryGetTypeID())
      {
        v4 = _CFXPCCreateXPCObjectFromCFObject();
        if (v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = -6700;
        }
      }

      else
      {
        v4 = 0;
        v7 = -6756;
      }
    }

    else
    {
      v4 = 0;
      v7 = -6717;
    }
  }

  else
  {
    v5 = 0;
    v7 = -6728;
  }

  if (a3)
  {
    *a3 = v7;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t mdns_tlv16_get_value(unsigned __int16 *a1, unint64_t a2, int a3, int64_t *a4, unsigned __int16 **a5, void *a6)
{
  if (a1 > a2)
  {
    return 4294960586;
  }

  do
  {
    if ((a2 - a1) < 1)
    {
      return 4294960569;
    }

    if (a2 - a1 < 4)
    {
      return 4294960546;
    }

    v6 = __rev16(a1[1]);
    v7 = a1 + 2;
    if ((a2 - (a1 + 2)) < v6)
    {
      return 4294960546;
    }

    v8 = bswap32(*a1);
    a1 = (v7 + v6);
  }

  while (a3 != HIWORD(v8));
  if (a4)
  {
    *a4 = v6;
  }

  if (a5)
  {
    *a5 = v7;
  }

  v9 = 0;
  if (a6)
  {
    *a6 = a1;
  }

  return v9;
}

uint64_t mdns_tlv16_set(_BYTE *a1, uint64_t a2, __int16 a3, size_t __n, void *__src, void *a6)
{
  v7 = __n;
  if (a2 && a2 - a1 < __n + 4)
  {
    return 4294960533;
  }

  *a1 = HIBYTE(a3);
  a1[1] = a3;
  a1[2] = BYTE1(__n);
  a1[3] = __n;
  v8 = a1 + 4;
  if (__n)
  {
    memcpy(a1 + 4, __src, __n);
  }

  result = 0;
  if (a6)
  {
    *a6 = &v8[v7];
  }

  return result;
}