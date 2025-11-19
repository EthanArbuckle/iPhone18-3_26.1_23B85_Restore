uint64_t ___mdns_dns_service_manager_process_ddr_response_block_invoke(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "dot"))
  {
    v4 = 2;
    goto LABEL_7;
  }

  if (*__s1 == 104 && __s1[1] == 50 && !__s1[2])
  {
    v4 = 3;
LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  return 1;
}

BOOL ___mdns_dns_service_get_discovered_alt_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96))
  {
    if (*(a2 + 281) == *(a1 + 48))
    {
      provider_name = nw_resolver_config_get_provider_name();
      if (!strcasecmp(provider_name, *(a1 + 40)))
      {
        *(*(*(a1 + 32) + 8) + 24) = a2;
      }
    }
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t _mdns_dns_service_manager_add_pending_alt(CFArrayRef *a1, uint64_t a2, const void *a3)
{
  Mutable = *(a2 + 152);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
    *(a2 + 152) = Mutable;
    if (!Mutable)
    {
      return 4294960567;
    }
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___mdns_dns_service_array_contains_service_block_invoke;
  v9[3] = &__block_descriptor_tmp_145;
  v9[4] = a3;
  result = mdns_cfarray_enumerate(Mutable, v9);
  if (result)
  {
    v8 = *(a2 + 152);
    _mdns_dns_service_increment_use_count(a3);
    CFArrayAppendValue(v8, a3);
    _mdns_dns_service_manager_update_interface_properties_for_service(a1, a3);
    return 0;
  }

  return result;
}

const char *_mdns_dns_service_create_discovered_alt(uint64_t a1, void *a2, unsigned int a3, int a4, uint64_t a5, _DWORD *a6)
{
  result = nw_resolver_config_get_provider_name();
  if (a5)
  {
    if (!result || (result = strdup(result)) == 0)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    nw_resolver_config_set_provider_name();
  }

  else
  {
    v13 = 0;
  }

  v30 = 0;
  v14 = _mdns_dns_service_create_from_resolver_config(a2, 4, *(a1 + 280), &v30);
  v15 = v14;
  if (!v30)
  {
    *(v14 + 136) = a1;
    os_retain(a1);
    *(v15 + 276) = *(a1 + 276) & 0xE;
    *(v15 + 278) = a3;
    if (v13)
    {
      *(v15 + 176) = v13;
    }

    if (a4)
    {
      v16 = *(v15 + 80);
      if (v16)
      {
        CFRelease(v16);
        *(v15 + 80) = 0;
      }

      v17 = *(a1 + 80);
      if (v17)
      {
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          v19 = Count;
          v20 = 0;
          v21 = __rev16(a3);
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v20);
            v23 = ValueAtIndex;
            v24 = *(ValueAtIndex + 25);
            if (v24 == 30)
            {
              break;
            }

            if (v24 == 2)
            {
              v25 = ValueAtIndex[7];
              v26 = _mdns_address_new();
              if (!v26)
              {
                goto LABEL_24;
              }

              v27 = v26;
              *(v26 + 24) = 528;
              *(v26 + 26) = v21;
              *(v26 + 28) = v25;
LABEL_21:
              _mdns_dns_service_append_address(v15, v27);
              os_release(v27);
            }

LABEL_22:
            if (v19 == ++v20)
            {
              goto LABEL_25;
            }
          }

          v28 = ValueAtIndex[12];
          v29 = _mdns_address_new();
          if (!v29)
          {
LABEL_24:
            _mdns_dns_service_append_address(v15, 0);
            goto LABEL_22;
          }

          v27 = v29;
          *(v29 + 24) = 7708;
          *(v29 + 26) = v21;
          *(v29 + 32) = *(v23 + 2);
          *(v29 + 48) = v28;
          goto LABEL_21;
        }
      }
    }

LABEL_25:
    v13 = 0;
  }

  if (a6)
  {
    *a6 = v30;
  }

  if (v13)
  {
    free(v13);
  }

  return v15;
}

void ___mdns_dns_service_manager_register_discovered_service_block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  if (*(v6 + 276))
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v10 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1 + 32) + 24);
      *buf = 134217984;
      v20 = v11;
      v12 = "Service became defunct before discovered child service could be validated -- service id: %llu";
      v13 = v10;
      v14 = 12;
LABEL_19:
      _os_log_impl(&dword_2990ED000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
    }

LABEL_20:
    nw_release(*(a1 + 40));
    if (!a4)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(a4);
    goto LABEL_22;
  }

  if (!a2)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v15 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = "Failed to validate discovered service, ignoring";
      v13 = v15;
      v14 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v18 = 0;
  v7 = _mdns_dns_service_create_discovered_alt(v6, *(a1 + 40), *(a1 + 56), a3, a4, &v18);
  if (!v7)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v17 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = v18;
      _os_log_error_impl(&dword_2990ED000, v17, OS_LOG_TYPE_ERROR, "Failed to create discovered DNS service -- error: %{mdns:err}ld", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v8 = v7;
  v18 = _mdns_dns_service_manager_add_pending_alt(*(a1 + 48), *(a1 + 32), v7);
  if (!v18)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v9 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_2990ED000, v9, OS_LOG_TYPE_INFO, "Registered discovered service -- %@", buf, 0xCu);
    }
  }

  nw_release(*(a1 + 40));
  os_release(v8);
  if (a4)
  {
    goto LABEL_21;
  }

LABEL_22:
  v16 = *MEMORY[0x29EDCA608];
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke(uint64_t a1, id a2)
{
  v3 = a2;
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sec_protocol_options_set_tls_server_name(v3, *(a1 + 56));
  sec_protocol_options_set_peer_authentication_required(v4, 1);
  v5 = *(a1 + 64);
  if (v5 == 2)
  {
    v6 = "dot";
LABEL_6:
    sec_protocol_options_add_tls_application_protocol(v4, v6);
    goto LABEL_7;
  }

  if ((v5 - 3) <= 1)
  {
    v6 = "h2";
    goto LABEL_6;
  }

LABEL_7:
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2;
  v8[3] = &unk_29EF089E0;
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v7;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  sec_protocol_options_set_verify_block(v4, v8, _mdns_dns_service_queue_s_queue);
  sec_release(v4);
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_231(uint64_t a1, int a2)
{
  if (*(*(a1 + 96) + 208))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (nw_array_contains_object())
    {
      if (a2 <= 3)
      {
        if (a2 != 1)
        {
          if (a2 == 3)
          {
            v5 = *(*(*(a1 + 32) + 8) + 24);
            if (_mdns_dns_service_queue_s_once != -1)
            {
              v16 = *(*(*(a1 + 32) + 8) + 24);
              dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
              v5 = v16;
            }

            v17[0] = MEMORY[0x29EDCA5F8];
            v17[1] = 0x40000000;
            v17[2] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2_232;
            v17[3] = &unk_29EF08A30;
            v21 = *(a1 + 96);
            v22 = *(a1 + 112);
            v6 = *(a1 + 48);
            v18 = *(a1 + 32);
            v19 = v6;
            v20 = *(a1 + 64);
            nw_connection_access_establishment_report(v5, _mdns_dns_service_queue_s_queue, v17);
          }

          return;
        }

        goto LABEL_21;
      }

      if (a2 == 4)
      {
LABEL_21:
        v14 = *(*(*(a1 + 32) + 8) + 24);
        v15 = *(*(a1 + 96) + 208);

        _mdns_dns_service_forget_ddr_connection(v15, v14);
        return;
      }
    }
  }

  if (a2 == 5)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = *(*(*(a1 + 64) + 8) + 24);
    v9 = *(*(*(a1 + 72) + 8) + 24);
    (*(*(*(*(a1 + 80) + 8) + 40) + 16))();
    v10 = *(*(*(a1 + 80) + 8) + 40);
    if (v10)
    {
      _Block_release(v10);
      *(*(*(a1 + 80) + 8) + 40) = 0;
    }

    dispatch_group_leave(*(a1 + 104));
    v11 = *(*(*(a1 + 32) + 8) + 24);
    if (v11)
    {
      nw_release(v11);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    os_release(*(a1 + 96));
    v12 = *(*(*(a1 + 48) + 8) + 24);
    if (v12)
    {
      CFRelease(v12);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v13 = *(*(*(a1 + 56) + 8) + 24);
    if (v13)
    {
      CFRelease(v13);
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    *(*(*(a1 + 88) + 8) + 24) = 1;
  }
}

void ___mdns_dns_service_manager_process_ddr_response_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 152))
  {
    Count = CFArrayGetCount(*(v2 + 152));
    v2 = *(a1 + 32);
    if (Count >= 1)
    {
      *(v2 + 287) = 1;
      if (*(*(a1 + 40) + 96))
      {
        dispatch_source_merge_data(*(*(a1 + 40) + 96), 1uLL);
        v2 = *(a1 + 32);
      }
    }
  }

  os_release(v2);
  os_release(*(a1 + 40));
  v4 = *(a1 + 48);
  if (v4)
  {

    dispatch_release(v4);
  }
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2_232(uint64_t a1, char *a2)
{
  v2 = a1;
  v54 = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 80) + 208))
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (nw_array_contains_object())
    {
      v41 = *(v2 + 10);
      v5 = *(v41 + 136);
      if (!v5 || !*(v5 + 96))
      {
        v5 = *(v2 + 10);
      }

      v6 = *(*(v2 + 8) + 8);
      LODWORD(v7) = *(v2 + 88);
      v8 = *(*(*(v2 + 6) + 8) + 24);
      v38 = *(*(v2 + 9) + 8);
      v9 = *(v5 + 160);
      if (!v9 || ((v10 = *(*(*(v2 + 7) + 8) + 24), string_ptr = xpc_string_get_string_ptr(v9), v10) ? (v12 = string_ptr == 0) : (v12 = 1), v12))
      {
        v39 = 0;
      }

      else
      {
        sa_family = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], string_ptr, 0x8000100u);
        v55.length = CFArrayGetCount(v10);
        v55.location = 0;
        v14 = CFArrayContainsValue(v10, v55, sa_family);
        v39 = v14 != 0;
        if (v14)
        {
          if (_mdns_dns_service_log_s_once != -1)
          {
            goto LABEL_75;
          }

          goto LABEL_15;
        }

LABEL_17:
        if (sa_family)
        {
          CFRelease(sa_family);
        }
      }

      v16 = *(v41 + 80);
      if (v16)
      {
        Count = CFArrayGetCount(v16);
        if (Count >= 1)
        {
          v34 = v6;
          v35 = a2;
          v36 = v2;
          v17 = 0;
          v37 = v7 - 3;
          v2 = "0";
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v41 + 80), v17);
            if (v8)
            {
              v19 = ValueAtIndex;
              v20 = CFArrayGetCount(v8);
              if (v20 >= 1)
              {
                break;
              }
            }

            v27 = 0;
LABEL_56:
            if (++v17 >= Count || (v27 & 1) != 0)
            {
              a2 = v35;
              v2 = v36;
              v6 = v34;
              goto LABEL_61;
            }
          }

          v21 = v20;
          v7 = 1;
          while (1)
          {
            v22 = CFArrayGetValueAtIndex(v8, v7 - 1);
            v23 = mdns_cfstring_to_utf8_cstring(v22);
            if (v23)
            {
              break;
            }

            v27 = 0;
LABEL_50:
            if (v7++ >= v21)
            {
              goto LABEL_56;
            }
          }

          a2 = v23;
          host = nw_endpoint_create_host(v23, "0");
          if (!host)
          {
            v27 = 0;
            goto LABEL_49;
          }

          v6 = host;
          if (nw_endpoint_get_type(host) == nw_endpoint_type_address)
          {
            address = nw_endpoint_get_address(v6);
            sa_family = address->sa_family;
            if (__PAIR64__(sa_family, address->sa_len) == __PAIR64__(*(v19 + 25), *(v19 + 24)))
            {
              if (sa_family == 30)
              {
                if (*&address->sa_data[6] == v19[4] && *&address[1].sa_len == v19[5])
                {
                  goto LABEL_32;
                }
              }

              else if (sa_family == 2 && *&address->sa_data[2] == *(v19 + 7))
              {
LABEL_32:
                if (_mdns_dns_service_log_s_once != -1)
                {
                  dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
                }

                v26 = _mdns_dns_service_log_s_log;
                if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v6;
                  _os_log_impl(&dword_2990ED000, v26, OS_LOG_TYPE_INFO, "Discovered service verified, address %{public}@ in certificate", &buf, 0xCu);
                }

                if (!v39 && !*(v38 + 24))
                {
                  if (v37 <= 1 && sa_family == 30)
                  {
                    asprintf((v38 + 24), "[%s]", a2);
                  }

                  else
                  {
                    v30 = strdup(a2);
                    if (!v30)
                    {
                      __break(1u);
LABEL_75:
                      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
LABEL_15:
                      v15 = _mdns_dns_service_log_s_log;
                      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf) = 138543362;
                        *(&buf + 4) = sa_family;
                        _os_log_impl(&dword_2990ED000, v15, OS_LOG_TYPE_INFO, "Discovered service verified, name %{public}@ in certificate", &buf, 0xCu);
                      }

                      goto LABEL_17;
                    }

                    *(v38 + 24) = v30;
                  }
                }

                v27 = 1;
                goto LABEL_48;
              }
            }
          }

          v27 = 0;
LABEL_48:
          nw_release(v6);
LABEL_49:
          free(a2);
          if (v27)
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }
      }

      else
      {
        Count = 0;
      }

      v27 = 0;
LABEL_61:
      v42 = 0;
      v43 = &v42;
      v44 = 0x2000000000;
      v45 = 0;
      if (a2)
      {
        *&buf = MEMORY[0x29EDCA5F8];
        *(&buf + 1) = 0x40000000;
        v49 = ___mdns_dns_server_validate_discovered_service_connection_block_invoke;
        v50 = &unk_29EF08AA8;
        v51 = &v42;
        v52 = Count;
        v53 = v41;
        nw_establishment_report_enumerate_resolution_reports(a2, &buf);
      }

      if ((v39 | v27))
      {
        v31 = 1;
      }

      else if (v43[3])
      {
        v31 = 1;
        LOBYTE(v6[3].isa) = 1;
      }

      else
      {
        if (_mdns_dns_service_log_s_once != -1)
        {
          dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
        }

        v32 = _mdns_dns_service_log_s_log;
        if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *v46 = 138412290;
          v47 = v41;
          _os_log_error_impl(&dword_2990ED000, v32, OS_LOG_TYPE_ERROR, "Discovered service could not be verified for %@", v46, 0xCu);
        }

        v31 = 0;
      }

      _Block_object_dispose(&v42, 8);
      *(*(*(v2 + 5) + 8) + 24) = v31;
      _mdns_dns_service_forget_ddr_connection(*(*(v2 + 10) + 208), *(*(*(v2 + 4) + 8) + 24));
    }
  }

  v33 = *MEMORY[0x29EDCA608];
}

void _mdns_dns_service_forget_ddr_connection(uint64_t a1, NSObject *a2)
{
  if (a1 && nw_array_remove_object())
  {

    nw_connection_cancel(a2);
  }
}

BOOL ___mdns_dns_server_validate_discovered_service_connection_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  nw_resolution_report_enumerate_endpoints();
  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

BOOL ___mdns_dns_server_validate_discovered_service_connection_block_invoke_2(void *a1, nw_endpoint_t endpoint)
{
  v17 = *MEMORY[0x29EDCA608];
  if (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address)
  {
    address = nw_endpoint_get_address(endpoint);
    LOBYTE(v5) = *(*(a1[4] + 8) + 24);
    if ((v5 & 1) == 0)
    {
      if (a1[5] < 1)
      {
LABEL_21:
        LOBYTE(v5) = 0;
      }

      else
      {
        v6 = address;
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1[6] + 80), v7);
          sa_family = v6->sa_family;
          if (sa_family == *(ValueAtIndex + 25) && sa_family == 2 && v6->sa_len == *(ValueAtIndex + 24))
          {
            v11 = *&v6->sa_data[2];
            if (v11 == ValueAtIndex[7] && (vmaxv_u16(vmovn_s32(vceqq_s32(vandq_s8(vdupq_n_s32(bswap32(v11)), xmmword_299124750), xmmword_299124760))) & 1) != 0)
            {
              *(*(a1[4] + 8) + 24) = 1;
              if (_mdns_dns_service_log_s_once != -1)
              {
                dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
              }

              v12 = _mdns_dns_service_log_s_log;
              if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v16 = endpoint;
                _os_log_impl(&dword_2990ED000, v12, OS_LOG_TYPE_INFO, "Discovered service verified, private address %{public}@ used", buf, 0xCu);
              }
            }
          }

          v5 = *(*(a1[4] + 8) + 24);
          if (v5 == 1)
          {
            break;
          }

          if (++v7 >= a1[5])
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v5) = *(*(a1[4] + 8) + 24);
  }

  v13 = *MEMORY[0x29EDCA608];
  return (v5 & 1) == 0;
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_2(uint64_t a1, int a2, sec_trust_t trust, void (**a4)(void, void))
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = sec_trust_copy_ref(trust);
  v7 = _Block_copy(a4);
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___mdns_dns_service_manager_probe_discovered_service_block_invoke_3;
  v12[3] = &unk_29EF089B8;
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v12[4] = v7;
  v8 = SecTrustEvaluateAsyncWithError(v6, _mdns_dns_service_queue_s_queue, v12);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v9 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 56);
      *buf = 136315394;
      v16 = v11;
      v17 = 2048;
      v18 = v8;
      _os_log_error_impl(&dword_2990ED000, v9, OS_LOG_TYPE_ERROR, "Failed to start asynchronous trust evaluation -- provider name: %s, error: %{mdns:err}ld", buf, 0x16u);
    }

    a4[2](a4, 0);
    if (v7)
    {
      _Block_release(v7);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___mdns_dns_service_manager_probe_discovered_service_block_invoke_3(void *a1, SecTrustRef trust, int a3, uint64_t a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    if (a3)
    {
      v5 = SecTrustCopyCertificateChain(trust);
      if (v5)
      {
        v6 = v5;
        if (CFArrayGetCount(v5) >= 1)
        {
          CFArrayGetValueAtIndex(v6, 0);
          v7 = *(*(a1[6] + 8) + 24);
          if (v7)
          {
            CFRelease(v7);
            *(*(a1[6] + 8) + 24) = 0;
          }

          v8 = *(*(a1[7] + 8) + 24);
          if (v8)
          {
            CFRelease(v8);
            *(*(a1[7] + 8) + 24) = 0;
          }

          *(*(a1[6] + 8) + 24) = SecCertificateCopyIPAddresses();
          *(*(a1[7] + 8) + 24) = SecCertificateCopyDNSNames();
        }

        CFRelease(v6);
      }
    }

    else
    {
      if (_mdns_dns_service_log_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
      }

      v10 = _mdns_dns_service_log_s_log;
      if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = a4;
        _os_log_error_impl(&dword_2990ED000, v10, OS_LOG_TYPE_ERROR, "Asynchronous trust evaluation failed: %@", &v13, 0xCu);
      }
    }
  }

  (*(a1[4] + 16))();
  v11 = a1[4];
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_dns_service_manager_get_service_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (!v4 || ((*(v4 + 16))(v4, a2) & 1) == 0)
  {
    if (_mdns_dns_service_scope_id_match(a2, *(a1 + 64)))
    {
      v9 = 0;
      v5 = _mdns_dns_service_handles_domain_name(a2, *(a1 + 72), &v9);
      if ((v5 & 0x80000000) == 0)
      {
        v6 = *(*(*(a1 + 40) + 8) + 24);
        if (v5 > v6)
        {
          v7 = v9;
LABEL_7:
          *(*(*(a1 + 56) + 8) + 24) = a2;
          *(*(*(a1 + 40) + 8) + 24) = v5;
          *(*(*(a1 + 48) + 8) + 24) = v7;
          return 1;
        }

        if (v5 == v6)
        {
          v7 = v9;
          if (v9 < *(*(*(a1 + 48) + 8) + 24))
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t _mdns_dns_service_get_preferred_encrypted_alt(uint64_t a1, char a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = 0;
  v3 = *(a1 + 144);
  if (v3 && *(a1 + 281) - 2 >= 4)
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 0x40000000;
    v6[2] = ___mdns_dns_service_get_preferred_encrypted_alt_block_invoke;
    v6[3] = &unk_29EF085A8;
    v7 = a2;
    v6[4] = v8;
    v6[5] = &v10;
    mdns_cfarray_enumerate(v3, v6);
    v4 = v11[3];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
  return v4;
}

BOOL ___mdns_dns_service_get_preferred_encrypted_alt_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 276) & 0x801) != 0)
  {
    return 1;
  }

  if (*(a2 + 96))
  {
    v5 = nw_resolver_config_get_class() == 4;
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 48) != v5)
  {
    return 1;
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  if ((v6 - 3) >= 2)
  {
    v7 = *(a2 + 281);
    if ((v7 - 3) < 2 || v7 == 2 && (v8 = v6 == 2, v6 = 2, !v8))
    {
      *(*(*(a1 + 40) + 8) + 24) = a2;
      *(*(*(a1 + 32) + 8) + 24) = v7;
      v6 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  return (v6 - 5) < 0xFFFFFFFE;
}

uint64_t _mdns_dns_service_handles_domain_name(uint64_t a1, _BYTE *a2, _DWORD *a3)
{
  v5 = (a1 + 88);
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = *a2;
    if (*a2)
    {
      v7 = 0;
      v8 = a2;
      while (v6 <= 0x3F)
      {
        v8 += v6 + 1;
        if (v8 - a2 > 255)
        {
          break;
        }

        ++v7;
        v6 = *v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      v7 = -1;
    }

    else
    {
      v7 = 0;
    }

LABEL_10:
    v9 = v5[1];
    v10 = *(v9 + 48);
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (v12 < 0 == v11)
    {
      if (!v10)
      {
        break;
      }

      v13 = a2;
      if (v12 >= 1)
      {
        v13 = a2;
        do
        {
          if (!*v13)
          {
            break;
          }

          v13 += *v13 + 1;
          --v12;
        }

        while (v12);
      }

      if (DomainNameEqual(v13, *(v9 + 24)))
      {
        break;
      }
    }
  }

  if (a3)
  {
    *a3 = *(v5 + 4);
  }

  return v10;
}

uint64_t mdns_dns_service_manager_get_unscoped_native_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_get_unscoped_native_service_block_invoke;
  block[3] = &unk_29EF07EF0;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_get_unscoped_native_service_block_invoke(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = a1[5];
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = a1[6];
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    service = _mdns_dns_service_manager_get_service(v3, v4, v8, 0);
    result = _mdns_dns_service_manager_prepare_service(a1[5], service);
  }

  *(*(a1[4] + 8) + 24) = result;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_service_manager_get_interface_scoped_native_service(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_get_interface_scoped_native_service_block_invoke;
  v8[3] = &unk_29EF07F18;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __mdns_dns_service_manager_get_interface_scoped_native_service_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v10 = 0;
    v11 = 0x100000000;
    v9 = v5;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v9, 0);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_service_manager_get_unscoped_system_service(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = __mdns_dns_service_manager_get_unscoped_system_service_with_options_block_invoke;
  v6[3] = &unk_29EF07F40;
  v6[4] = &v8;
  v6[5] = a1;
  v6[6] = a2;
  v7 = 0;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v6);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_get_unscoped_system_service_with_options_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    service = _mdns_dns_service_manager_get_service(v3, v4, v9, v5);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_service_manager_get_interface_scoped_system_service(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_get_interface_scoped_system_service_with_options_block_invoke;
  v8[3] = &unk_29EF07F68;
  v8[4] = &v11;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  v10 = 0;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __mdns_dns_service_manager_get_interface_scoped_system_service_with_options_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 48);
    v6 = *(a1 + 56);
    v5 = *(a1 + 60);
    v11 = 0;
    v12 = 0x100000000;
    v10 = v6;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v10, v5);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_service_manager_get_service_scoped_system_service(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_get_service_scoped_system_service_block_invoke;
  v8[3] = &unk_29EF07F90;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __mdns_dns_service_manager_get_service_scoped_system_service_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v10 = 0;
    v11 = 0x200000000;
    v9 = v5;
    service = _mdns_dns_service_manager_get_service(v3, v4, &v9, 0);
    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t mdns_dns_service_manager_get_custom_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_get_custom_service_block_invoke;
  block[3] = &unk_29EF07FB8;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_get_custom_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    service_by_id = _mdns_dns_service_manager_get_service_by_id(*(v2 + 56), *(a1 + 48));
    if (service_by_id)
    {
      service_by_id = _mdns_dns_service_manager_get_usable_service_instance(*(a1 + 40), service_by_id, 0);
    }

    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), service_by_id);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFArray *_mdns_dns_service_manager_get_usable_service_instance(CFArrayRef *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 256);
  if (a3)
  {
    v6 = v5 == a3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v5 && (v7 & 1) != 0)
  {
    return 0;
  }

  if ((v7 & 1) == 0 && (*(a2 + 276) & 1) == 0)
  {
    return a2;
  }

  if (v5)
  {
    v9 = *(a2 + 256);
  }

  else
  {
    v9 = a3;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___mdns_dns_service_get_variant_for_interface_block_invoke;
  v17[3] = &unk_29EF08660;
  v18 = v9;
  v17[4] = &v19;
  v10 = *(a2 + 128);
  if (v10)
  {
    mdns_cfarray_enumerate(v10, v17);
    Mutable = v20[3];
    _Block_object_dispose(&v19, 8);
    if (Mutable)
    {
      return Mutable;
    }
  }

  else
  {
    _Block_object_dispose(&v19, 8);
  }

  LODWORD(v17[0]) = 0;
  v11 = _mdns_dns_service_create(*(a2 + 281), *(a2 + 282), *(a2 + 280), v17);
  v12 = v11;
  if (!LODWORD(v17[0]))
  {
    *(v11 + 136) = a2;
    os_retain(a2);
    *(v12 + 256) = v9;
    *(v12 + 276) = *(a2 + 276) & 6;
    v13 = *(a2 + 80);
    *(v12 + 80) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    v14 = *(a2 + 96);
    *(v12 + 96) = v14;
    if (v14)
    {
      nw_retain(v14);
    }

    v15 = *(v12 + 256);
    if (v15)
    {
      *(v12 + 104) = mdns_system_interface_index_to_name(v15);
    }

    goto LABEL_26;
  }

  if (!v11)
  {
    return 0;
  }

LABEL_26:
  Mutable = *(a2 + 128);
  if (Mutable || (Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks), (*(a2 + 128) = Mutable) != 0))
  {
    _mdns_dns_service_increment_use_count(v12);
    CFArrayAppendValue(Mutable, v12);
    _mdns_dns_service_manager_update_interface_properties_for_service(a1, v12);
    Mutable = v12;
  }

  os_release(v12);
  return Mutable;
}

BOOL ___mdns_dns_service_get_variant_for_interface_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 256) == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

uint64_t mdns_dns_service_manager_get_uuid_scoped_service(uint64_t a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = __mdns_dns_service_manager_get_uuid_scoped_service_block_invoke;
  v8[3] = &unk_29EF07FE0;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v8);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __mdns_dns_service_manager_get_uuid_scoped_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
    goto LABEL_7;
  }

  v3 = *(a1 + 48);
  service_by_uuid = _mdns_dns_service_manager_get_service_by_uuid(*(v2 + 48), v3);
  if (service_by_uuid)
  {
    usable_service_instance = service_by_uuid;
LABEL_5:
    usable_service_instance = _mdns_dns_service_manager_get_usable_service_instance(*(a1 + 40), usable_service_instance, *(a1 + 56));
    goto LABEL_6;
  }

  usable_service_instance = _mdns_dns_service_manager_get_service_by_uuid(*(v2 + 40), v3);
  if (usable_service_instance)
  {
    goto LABEL_5;
  }

LABEL_6:
  result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), usable_service_instance);
LABEL_7:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t mdns_dns_service_manager_get_discovered_service(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_get_discovered_service_block_invoke;
  block[3] = &unk_29EF08008;
  block[4] = &v7;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_get_discovered_service_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 131))
  {
    result = 0;
  }

  else
  {
    v3 = *(a1 + 48);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2000000000;
    v11 = -1;
    v4 = *(v2 + 48);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___mdns_dns_service_manager_get_discovered_service_block_invoke;
    v9[3] = &unk_29EF08470;
    v9[5] = &v12;
    v9[6] = v3;
    v9[4] = v10;
    mdns_cfarray_enumerate(v4, v9);
    if (v13[3])
    {
      v5 = mach_continuous_approximate_time();
      v6 = v13[3];
      *(v6 + 32) = v5;
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(v10, 8);
    _Block_object_dispose(&v12, 8);
    if (v6)
    {
      usable_service_instance = _mdns_dns_service_manager_get_usable_service_instance(*(a1 + 40), v6, 0);
    }

    else
    {
      usable_service_instance = 0;
    }

    result = _mdns_dns_service_manager_prepare_service(*(a1 + 40), usable_service_instance);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___mdns_dns_service_manager_get_discovered_service_block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = _mdns_dns_service_handles_domain_name(a2, *(a1 + 48), 0);
  if (a2[12] && v4 > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  v5 = a2[5];
  if (v5 && v5 < mach_continuous_time())
  {
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v6 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v7 = a2[6];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_2990ED000, v6, OS_LOG_TYPE_INFO, "DoH resolver for %@ has passed expiration", &v11, 0xCu);
    }

    a2[5] = 0;
    while (1)
    {
      v8 = a2[11];
      if (!v8)
      {
        break;
      }

      a2[11] = *v8;
      _domain_item_free(v8);
    }

    _mdns_dns_service_manager_fetch_doh_pvd(a2);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 1;
}

void mdns_dns_service_manager_apply_pending_updates(uint64_t a1)
{
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_apply_pending_updates_block_invoke;
  block[3] = &__block_descriptor_tmp_41;
  block[4] = a1;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
}

void __mdns_dns_service_manager_apply_pending_updates_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if ((*(v2 + 131) & 1) == 0)
  {
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 0x40000000;
    v31 = ___mdns_dns_service_manager_remove_unused_services_block_invoke;
    v32 = &__block_descriptor_tmp_104;
    v33 = v2;
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 0x40000000;
    v36 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v37 = &unk_29EF08AF0;
    v38 = &v29;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v2, &v34);
    v3 = *(a1 + 32);
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 0x40000000;
    v36 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v37 = &unk_29EF08AF0;
    v38 = &__block_literal_global_139;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v3, &v34);
    v4 = *(a1 + 32);
    v20 = MEMORY[0x29EDCA5F8];
    v21 = 0x40000000;
    v22 = ___mdns_dns_service_manager_handle_pending_alts_block_invoke;
    v23 = &__block_descriptor_tmp_144;
    v24 = v4;
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 0x40000000;
    v31 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v32 = &unk_29EF08B18;
    v33 = &v20;
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 0x40000000;
    v36 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v37 = &unk_29EF08AF0;
    v38 = &v29;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v4, &v34);
    v5 = *(a1 + 32);
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 0x40000000;
    v31 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v32 = &unk_29EF08B18;
    v33 = &__block_literal_global_107;
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 0x40000000;
    v36 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v37 = &unk_29EF08AF0;
    v38 = &v29;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v5, &v34);
    _mdns_dns_service_manager_remove_unneeded_interface_monitors(*(a1 + 32));
    v6 = *(a1 + 32);
    v20 = MEMORY[0x29EDCA5F8];
    v21 = 0x40000000;
    v22 = ___mdns_dns_service_manager_update_interface_properties_block_invoke;
    v23 = &__block_descriptor_tmp_124;
    v24 = v6;
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 0x40000000;
    v31 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v32 = &unk_29EF08B18;
    v33 = &v20;
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 0x40000000;
    v36 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v37 = &unk_29EF08AF0;
    v38 = &v29;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v6, &v34);
    v7 = *(a1 + 32);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = 0;
    v20 = MEMORY[0x29EDCA5F8];
    v21 = 0x40000000;
    v22 = ___mdns_dns_service_manager_update_policies_block_invoke;
    v23 = &unk_29EF085F8;
    v24 = &v25;
    v29 = MEMORY[0x29EDCA5F8];
    v30 = 0x40000000;
    v31 = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v32 = &unk_29EF08B18;
    v33 = &v20;
    v34 = MEMORY[0x29EDCA5F8];
    v35 = 0x40000000;
    v36 = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v37 = &unk_29EF08AF0;
    v38 = &v29;
    _mdns_dns_service_manager_enumerate_all_service_array_pointers(v7, &v34);
    v8 = *(v7 + 112);
    if (*(v26 + 24) == 1)
    {
      if (!v8)
      {
        v9 = objc_autoreleasePoolPush();
        if (objc_opt_class())
        {
          v10 = [objc_alloc(MEMORY[0x29EDBB8C0]) initFromPrivilegedProcess];
          [v10 setPriority:500];
          if (__isPlatformVersionAtLeast(2, 19, 0, 0))
          {
            v11 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:nw_proxy_config_get_agent_domain()];
            v12 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];
            v13 = [MEMORY[0x29EDBB8A0] removeNetworkAgentDomain:v11 agentType:v12];
            v14 = objc_alloc(MEMORY[0x29EDBB880]);
            v15 = [MEMORY[0x29EDBB890] allInterfaces];
            v34 = v15;
            v16 = [MEMORY[0x29EDBB890] flowRemoteAddressEmpty];
            v35 = v16;
            v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v34 count:2];
            v18 = [v14 initWithOrder:0 result:v13 conditions:v17];
            [v10 addPolicy:v18];
          }

          [v10 apply];
        }

        else
        {
          v10 = 0;
        }

        objc_autoreleasePoolPop(v9);
        goto LABEL_11;
      }
    }

    else if (v8)
    {
      mdns_system_remove_network_policy(v8);
      v10 = 0;
LABEL_11:
      *(v7 + 112) = v10;
    }

    _Block_object_dispose(&v25, 8);
  }

  v19 = *MEMORY[0x29EDCA608];
}

uint64_t ___mdns_dns_service_manager_remove_unused_services_block_invoke(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count - 1 >= 0)
  {
    v5 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, --v5);
      if (!ValueAtIndex[66])
      {
        _mdns_dns_service_manager_terminate_service(*(a1 + 32), ValueAtIndex);
        CFArrayRemoveValueAtIndex(theArray, v5);
      }
    }

    while (v5 > 0);
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_handle_pending_alts_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 287) == 1)
  {
    v11[8] = v2;
    v11[9] = v3;
    *(a2 + 287) = 0;
    v6 = *(a2 + 152);
    if (v6)
    {
      if (CFArrayGetCount(v6) >= 1)
      {
        v11[0] = MEMORY[0x29EDCA5F8];
        v11[1] = 0x40000000;
        v11[2] = ___mdns_dns_service_manager_handle_pending_alts_block_invoke_2;
        v11[3] = &__block_descriptor_tmp_143;
        v7 = *(a1 + 32);
        v11[4] = a2;
        v11[5] = v7;
        v8 = *(a2 + 144);
        if (v8)
        {
          mdns_cfarray_enumerate(v8, v11);
          v9 = *(a2 + 144);
          if (v9)
          {
            CFRelease(v9);
          }
        }

        *(a2 + 144) = *(a2 + 152);
        *(a2 + 152) = 0;
      }
    }
  }

  return 1;
}

BOOL ___mdns_dns_service_manager_update_policies_block_invoke(uint64_t a1, uint64_t a2)
{
  preferred_encrypted_alt = _mdns_dns_service_get_preferred_encrypted_alt(a2, 1);
  if (preferred_encrypted_alt)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return preferred_encrypted_alt == 0;
}

uint64_t ___mdns_dns_service_manager_update_service_usability_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 276);
  if (*(a2 + 283) == 1)
  {
    if ((*(a2 + 276) & 0x800) == 0)
    {
      v3 = v2 | 0x800;
LABEL_6:
      *(a2 + 276) = v3;
    }
  }

  else if ((*(a2 + 276) & 0x800) != 0)
  {
    v3 = v2 & 0xF7FF;
    goto LABEL_6;
  }

  return 1;
}

uint64_t ___mdns_dns_service_manager_handle_pending_alts_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 152);
  *&v9 = MEMORY[0x29EDCA5F8];
  *(&v9 + 1) = 0x40000000;
  v10 = ___mdns_dns_service_array_contains_service_block_invoke;
  v11 = &__block_descriptor_tmp_145;
  v12 = a2;
  if (mdns_cfarray_enumerate(v4, &v9))
  {
    _mdns_dns_service_manager_terminate_service(*(a1 + 40), a2);
    if (_mdns_dns_service_log_s_once != -1)
    {
      dispatch_once(&_mdns_dns_service_log_s_once, &__block_literal_global_66);
    }

    v5 = _mdns_dns_service_log_s_log;
    if (os_log_type_enabled(_mdns_dns_service_log_s_log, OS_LOG_TYPE_INFO))
    {
      v6 = *(a2 + 24);
      LODWORD(v9) = 134217984;
      *(&v9 + 4) = v6;
      _os_log_impl(&dword_2990ED000, v5, OS_LOG_TYPE_INFO, "Deregistered discovered service -- id: %llu", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t ___mdns_dns_service_manager_handle_network_changes_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 286) == 1)
  {
    *(a2 + 286) = 0;
    _mdns_dns_service_make_defunct(a2);
  }

  v3 = *(a2 + 128);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count - 1 >= 0)
    {
      v5 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 128), --v5);
        if (ValueAtIndex[286] == 1)
        {
          ValueAtIndex[286] = 0;
          _mdns_dns_service_make_defunct(ValueAtIndex);
          CFArrayRemoveValueAtIndex(*(a2 + 128), v5);
        }
      }

      while (v5 > 0);
    }
  }

  return 1;
}

uint64_t mdns_dns_service_manager_enumerate(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = __mdns_dns_service_manager_enumerate_block_invoke;
  block[3] = &unk_29EF08050;
  block[5] = &v7;
  block[6] = a1;
  block[4] = a2;
  dispatch_sync(_mdns_dns_service_queue_s_queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __mdns_dns_service_manager_enumerate_block_invoke(void *a1)
{
  result = a1[6];
  if (*(result + 131) == 1)
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  else
  {
    v3 = a1[4];
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___mdns_dns_service_manager_enumerate_all_services_block_invoke;
    v4[3] = &unk_29EF08B18;
    v4[4] = v3;
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v5[3] = &unk_29EF08AF0;
    v5[4] = v4;
    result = _mdns_dns_service_manager_enumerate_all_service_array_pointers(result, v5);
    *(*(a1[5] + 8) + 24) = result;
  }

  return result;
}

uint64_t mdns_dns_service_manager_get_count(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (_mdns_dns_service_queue_s_once != -1)
  {
    dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
  }

  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = __mdns_dns_service_manager_get_count_block_invoke;
  v4[3] = &unk_29EF080C8;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(_mdns_dns_service_queue_s_queue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __mdns_dns_service_manager_get_count_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if ((*(result + 131) & 1) == 0)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = __mdns_dns_service_manager_get_count_block_invoke_2;
    v3[3] = &unk_29EF080A0;
    v3[4] = *(a1 + 32);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___mdns_dns_service_manager_enumerate_all_service_arrays_block_invoke;
    v4[3] = &unk_29EF08AF0;
    v4[4] = v3;
    return _mdns_dns_service_manager_enumerate_all_service_array_pointers(result, v4);
  }

  return result;
}

uint64_t __mdns_dns_service_manager_get_count_block_invoke_2(uint64_t a1, const __CFArray *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = __mdns_dns_service_manager_get_count_block_invoke_3;
  v3[3] = &unk_29EF08078;
  v3[4] = *(a1 + 32);
  mdns_cfarray_enumerate(a2, v3);
  return 1;
}

uint64_t __mdns_dns_service_manager_get_count_block_invoke_3(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  v4 = *(a2 + 128);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) += Count;
    }
  }

  v6 = *(a2 + 144);
  if (v6)
  {
    v7 = CFArrayGetCount(v6);
    if (v7 >= 1)
    {
      *(*(*(a1 + 32) + 8) + 24) += v7;
    }
  }

  return 1;
}

void mdns_dns_service_manager_handle_sleep(uint64_t a1)
{
  mdns_dns_service_manager_enumerate(a1, &__block_literal_global_50);
  if (_mdns_resolver_queue_s_once != -1)
  {
    dispatch_once(&_mdns_resolver_queue_s_once, &__block_literal_global_144);
  }

  v1 = _mdns_resolver_queue_s_queue;

  dispatch_async(v1, &__block_literal_global_1465);
}

uint64_t __mdns_dns_service_manager_handle_sleep_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 281) - 2 <= 2)
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      mdns_resolver_invalidate(v3);
      os_release(*(a2 + 64));
      *(a2 + 64) = 0;
      *(a2 + 285) = 1;
    }
  }

  return 1;
}

uint64_t mdns_dns_service_manager_handle_wake(uint64_t a1)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = __mdns_dns_service_manager_handle_wake_block_invoke;
  v2[3] = &__block_descriptor_tmp_51;
  v2[4] = a1;
  return mdns_dns_service_manager_enumerate(a1, v2);
}

uint64_t __mdns_dns_service_manager_handle_wake_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 285) == 1)
  {
    _mdns_dns_service_manager_prepare_service(*(a1 + 32), a2);
    *(a2 + 285) = 0;
  }

  return 1;
}

void *mdns_dns_service_create_querier(uint64_t a1, int *a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return mdns_resolver_create_querier(v2, a2);
  }

  if (a2)
  {
    *a2 = -6720;
  }

  return 0;
}

uint64_t mdns_dns_service_get_id(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t mdns_dns_service_get_resolver_type(uint64_t a1)
{
  if ((*(a1 + 281) - 1) > 3u)
  {
    return 0;
  }

  else
  {
    return dword_299124770[(*(a1 + 281) - 1)];
  }
}

uint64_t mdns_dns_service_allows_failover(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return nw_resolver_config_get_allow_failover();
  }

  return result;
}

void _mdns_dns_service_definition_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
    a1[5] = 0;
  }
}

void *_mdns_dns_service_definition_copy_description(uint64_t a1, int a2, char a3)
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v32 + 6) = appended;
      if (appended)
      {
        goto LABEL_20;
      }
    }

    v9 = *(a1 + 40);
    if (!v9)
    {
      v9 = "";
    }

    v10 = mdns_string_builder_append_formatted(v7, "interface: %s/%u, interface scope: ", v9, *(a1 + 48));
    *(v32 + 6) = v10;
    if (v10)
    {
      goto LABEL_20;
    }

    v11 = *(a1 + 52);
    if (v11 == 2)
    {
      v12 = mdns_string_builder_append_formatted(v7, "unscoped+scoped");
    }

    else if (v11 == 1)
    {
      v12 = mdns_string_builder_append_formatted(v7, "scoped", v21);
    }

    else if (*(a1 + 52))
    {
      v22 = *(a1 + 52);
      v12 = mdns_string_builder_append_formatted(v7, "«INVALID %d»");
    }

    else
    {
      v12 = mdns_string_builder_append_formatted(v7, "unscoped", v21);
    }

    *(v32 + 6) = v12;
    if (v12)
    {
      goto LABEL_20;
    }

    v14 = mdns_string_builder_append_formatted(v7, ", addresses: {");
    *(v32 + 6) = v14;
    if (v14)
    {
      goto LABEL_20;
    }

    v28[3] = 0;
    v15 = *(a1 + 24);
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 0x40000000;
    v25[2] = ___mdns_dns_service_definition_copy_description_block_invoke;
    v25[3] = &unk_29EF08BD0;
    v25[4] = &v31;
    v25[5] = &v27;
    v25[6] = v7;
    v26 = a3;
    mdns_cfarray_enumerate(v15, v25);
    if (*(v32 + 6))
    {
      goto LABEL_20;
    }

    v16 = mdns_string_builder_append_formatted(v7, "}");
    *(v32 + 6) = v16;
    if (v16)
    {
      goto LABEL_20;
    }

    v17 = mdns_string_builder_append_formatted(v7, ", domains: {");
    *(v32 + 6) = v17;
    if (v17)
    {
      goto LABEL_20;
    }

    v28[3] = 0;
    v19 = *(a1 + 32);
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 0x40000000;
    v23[2] = ___mdns_dns_service_definition_copy_description_block_invoke_2;
    v23[3] = &unk_29EF08BF8;
    v23[4] = &v31;
    v23[5] = &v27;
    v23[6] = v7;
    v24 = a3;
    mdns_cfset_enumerate(v19, v23);
    if (*(v32 + 6) || (v20 = mdns_string_builder_append_formatted(v7, "}"), (*(v32 + 6) = v20) != 0))
    {
LABEL_20:
      v13 = 0;
    }

    else
    {
      v13 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  return v13;
}

BOOL ___mdns_dns_service_definition_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

BOOL ___mdns_dns_service_definition_copy_description_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void *mdns_dns_service_definition_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_dns_service_definition_kind;
    *(v0 + 16) = &_mdns_dns_service_definition_kind;
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
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, &mdns_cfarray_callbacks);
    v1[3] = Mutable;
    if (!Mutable || (v6 = CFSetCreateMutable(v4, 0, &mdns_domain_name_cf_set_callbacks), (v1[4] = v6) == 0))
    {
      os_release(v1);
      return 0;
    }
  }

  return v1;
}

void mdns_dns_service_definition_set_interface_index(uint64_t a1, unsigned int a2, char a3)
{
  *(a1 + 52) = a3;
  if (*(a1 + 48) != a2)
  {
    *(a1 + 48) = a2;
    v4 = *(a1 + 40);
    if (v4)
    {
      free(v4);
      *(a1 + 40) = 0;
      a2 = *(a1 + 48);
    }
  }

  if (a2)
  {
    if (!*(a1 + 40))
    {
      *(a1 + 40) = mdns_system_interface_index_to_name(a2);
    }
  }

  else
  {
    *(a1 + 52) = 0;
  }
}

id _mdns_heuristics_log()
{
  if (_mdns_heuristics_log_s_once != -1)
  {
    dispatch_once(&_mdns_heuristics_log_s_once, &__block_literal_global_43);
  }

  v1 = _mdns_heuristics_log_s_log;

  return v1;
}

uint64_t ___mdns_heuristics_log_block_invoke()
{
  _mdns_heuristics_log_s_log = os_log_create("com.apple.mdns", "heuristics");

  return MEMORY[0x2A1C71028]();
}

id getHeuristicsQueue()
{
  if (getHeuristicsQueue_onceToken != -1)
  {
    dispatch_once(&getHeuristicsQueue_onceToken, &__block_literal_global_47);
  }

  v1 = getHeuristicsQueue_queue;

  return v1;
}

void __dns_heuristics_report_resolution_failure_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = _mdns_heuristics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_2990ED000, v2, OS_LOG_TYPE_DEFAULT, "dns_heuristics_report_resolution_failure %@ %d", &v7, 0x12u);
  }

  v5 = objc_autoreleasePoolPush();
  [DNSHeuristics reportResolutionFailure:*(a1 + 32) isTimeout:*(a1 + 40)];
  objc_autoreleasePoolPop(v5);
  v6 = *MEMORY[0x29EDCA608];
}

uint64_t __getHeuristicsQueue_block_invoke()
{
  getHeuristicsQueue_queue = dispatch_queue_create("DNSHeuristicsQueue", 0);

  return MEMORY[0x2A1C71028]();
}

void __dns_heuristics_report_resolution_success_block_invoke()
{
  v0 = _mdns_heuristics_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2990ED000, v0, OS_LOG_TYPE_DEFAULT, "dns_heuristics_report_resolution_success", v2, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  [DNSHeuristics updateHeuristicState:1 isTimeout:0];
  objc_autoreleasePoolPop(v1);
}

uint64_t DNSMessageExtractDomainName(unint64_t a1, uint64_t a2, char *__src, char *__dst, void *a5)
{
  if (__dst)
  {
    v6 = __dst + 256;
  }

  else
  {
    v6 = 0;
  }

  result = 4294960586;
  if (__src < a1)
  {
    return result;
  }

  v8 = a1 + a2;
  if (a1 + a2 <= __src)
  {
    return result;
  }

  v10 = __dst;
  v11 = *__src;
  if (*__src)
  {
    v12 = 0;
    do
    {
      if (v11 > 0x3F)
      {
        if ((~v11 & 0xC0) != 0)
        {
          return 4294960554;
        }

        if ((v8 - __src) < 2)
        {
          return 4294960546;
        }

        if (!v12)
        {
          v12 = __src + 2;
          if (!v10)
          {
            goto LABEL_23;
          }
        }

        __src = (a1 + (__src[1] | ((v11 & 0x3F) << 8)));
        if (__src >= v8)
        {
          return 4294960546;
        }

        v11 = *__src;
        if (v11 > 0xBF)
        {
          return 4294960554;
        }
      }

      else
      {
        v13 = &__src[v11 + 1];
        if (v13 >= v8)
        {
          return 4294960546;
        }

        if (v10)
        {
          v14 = v11 + 1;
          if (v6 - v10 <= v14)
          {
            return 4294960545;
          }

          memcpy(v10, __src, v11 + 1);
          v10 += v14;
        }

        v11 = *v13;
        __src = v13;
      }
    }

    while (v11);
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v12 = 0;
  if (__dst)
  {
LABEL_22:
    *v10 = 0;
  }

LABEL_23:
  result = 0;
  if (a5)
  {
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = __src + 1;
    }

    *a5 = v15;
  }

  return result;
}

uint64_t DNSMessageExtractDomainNameString(unint64_t a1, uint64_t a2, char *a3, unsigned __int8 *a4, void *a5)
{
  v11 = *MEMORY[0x29EDCA608];
  v9 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, __dst, &v9);
  if (!result)
  {
    result = DomainNameToString(__dst, 0, a4, 0);
    if (a5)
    {
      if (!result)
      {
        *a5 = v9;
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DomainNameToString(_BYTE *a1, unint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (a2 && (a2 - a1) < 1)
  {
    return 4294960546;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1;
    do
    {
      if (v4 > 0x3F)
      {
        return 4294960554;
      }

      v6 = v4 + 1;
      v7 = &v5[v6];
      if (&v5[v6] - a1 > 255)
      {
        return 4294960554;
      }

      if (a2 && v7 >= a2)
      {
        return 4294960546;
      }

      v8 = v5 + 1;
      if (v5 + 1 < v7)
      {
        for (i = v6 - 1; i; --i)
        {
          v10 = *v8;
          if ((*v8 - 32) > 0x5E)
          {
            if ((*v8 & 0x80) == 0)
            {
              *a3 = 92;
              if (v10 <= 0x63u)
              {
                v12 = 48;
              }

              else
              {
                v12 = 49;
              }

              a3[1] = v12;
              if (v10 >= 0x64u)
              {
                v13 = v10 / 0xAu - 10;
              }

              else
              {
                v13 = v10 / 0xAu;
              }

              a3[2] = v13 + 48;
              a3[3] = (v10 % 0xAu) | 0x30;
              a3 += 4;
              goto LABEL_26;
            }
          }

          else if (*v8 - 32 <= 0x3C && ((1 << (v10 - 32)) & 0x1000000000004001) != 0)
          {
            *a3++ = 92;
          }

          *a3++ = v10;
LABEL_26:
          ++v8;
        }
      }

      *a3++ = 46;
      v4 = *v7;
      v5 = v7;
    }

    while (*v7);
    if (v7 != a1)
    {
      goto LABEL_30;
    }
  }

  *a3++ = 46;
  v7 = a1;
LABEL_30:
  *a3 = 0;
  result = 0;
  if (a4)
  {
    *a4 = v7 + 1;
  }

  return result;
}

uint64_t DNSMessageExtractQuestion(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, void *a7)
{
  v14 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v14);
  if (!result)
  {
    v13 = v14;
    if (a1 + a2 - v14 < 4)
    {
      return 4294960546;
    }

    else
    {
      if (a5)
      {
        *a5 = bswap32(*v14) >> 16;
      }

      if (a6)
      {
        *a6 = bswap32(v13[1]) >> 16;
      }

      result = 0;
      if (a7)
      {
        *a7 = v13 + 2;
      }
    }
  }

  return result;
}

uint64_t _DNSMessageExtractRecordEx(unint64_t a1, uint64_t a2, char *a3, char *a4, _WORD *a5, _WORD *a6, _DWORD *a7, unsigned __int16 **a8, unint64_t *a9, char *__dst, unint64_t a11, size_t *a12, unint64_t *a13, void *a14)
{
  v97 = *MEMORY[0x29EDCA608];
  v93 = 0;
  result = DNSMessageExtractDomainName(a1, a2, a3, a4, &v93);
  if (!result)
  {
    v20 = v93;
    if (a1 + a2 - v93 < 0xA || (v21 = (v93 + 10), v22 = __rev16(*(v93 + 4)), a1 + a2 - (v93 + 10) < v22))
    {
      result = 4294960546;
    }

    else
    {
      v23 = a13;
      v24 = __rev16(*v93);
      if (a11 || a13)
      {
        v94 = 0;
        v91 = v24;
        v30 = v21 + v22;
        switch(v24)
        {
          case 2u:
          case 3u:
          case 4u:
          case 5u:
          case 7u:
          case 8u:
          case 9u:
          case 0xCu:
          case 0x27u:
            result = DNSMessageExtractDomainName(a1, a2, v93 + 10, __src, &v94);
            if (!result)
            {
              if (v94 != v30)
              {
                goto LABEL_102;
              }

              v31 = __src[0];
              v32 = __src;
              if (__src[0])
              {
                do
                {
                  v33 = &v32[v31];
                  v34 = v33[1];
                  v32 = v33 + 1;
                  v31 = v34;
                }

                while (v34);
              }

              v26 = v32 - __src + 1;
              if (v26 < a11)
              {
                v25 = v32 - __src + 1;
              }

              else
              {
                v25 = a11;
              }

              memcpy(__dst, __src, v25);
              v23 = a13;
              goto LABEL_61;
            }

            break;
          case 6u:
            v90 = a5;
            result = DNSMessageExtractDomainName(a1, a2, v93 + 10, __src, &v94);
            if (!result)
            {
              result = DNSMessageExtractDomainName(a1, a2, v94, v95, &v94);
              if (!result)
              {
                if (v30 - v94 != 20)
                {
                  goto LABEL_102;
                }

                v70 = __src[0];
                v71 = __src;
                if (__src[0])
                {
                  do
                  {
                    v72 = &v71[v70];
                    v73 = v72[1];
                    v71 = v72 + 1;
                    v70 = v73;
                  }

                  while (v73);
                }

                v86 = &__dst[a11];
                v88 = v94;
                v74 = v71 - __src;
                v75 = v95[0];
                v89 = a8;
                v76 = v95;
                if (v95[0])
                {
                  do
                  {
                    v77 = &v76[v75];
                    v78 = v77[1];
                    v76 = v77 + 1;
                    v75 = v78;
                  }

                  while (v78);
                }

                v85 = v76 - v95;
                v79 = v76 - v95 + 1;
                v26 = v74 + v79 + 21;
                if (v74 + 1 >= a11)
                {
                  v80 = a11;
                }

                else
                {
                  v80 = v74 + 1;
                }

                memcpy(__dst, __src, v80);
                v81 = &__dst[v80];
                if (a11 - v80 >= v79)
                {
                  v82 = v85 + 1;
                }

                else
                {
                  v82 = a11 - v80;
                }

                memcpy(v81, v95, v82);
                v83 = &v81[v82];
                if ((v86 - v83) >= 0x14)
                {
                  v84 = 20;
                }

                else
                {
                  v84 = v86 - v83;
                }

                memcpy(v83, v88, v84);
                v25 = &v83[v84] - __dst;
                goto LABEL_60;
              }
            }

            break;
          case 0xEu:
          case 0x11u:
          case 0x1Au:
            v90 = a5;
            result = DNSMessageExtractDomainName(a1, a2, v93 + 10, __src, &v94);
            if (!result)
            {
              result = DNSMessageExtractDomainName(a1, a2, v94, v95, &v94);
              if (!result)
              {
                if (v94 != v30)
                {
                  goto LABEL_102;
                }

                v48 = __src[0];
                v49 = __src;
                if (__src[0])
                {
                  do
                  {
                    v50 = &v49[v48];
                    v51 = v50[1];
                    v49 = v50 + 1;
                    v48 = v51;
                  }

                  while (v51);
                }

                v52 = v49 - __src + 1;
                v53 = v95[0];
                v89 = a8;
                v54 = v95;
                if (v95[0])
                {
                  do
                  {
                    v55 = &v54[v53];
                    v56 = v55[1];
                    v54 = v55 + 1;
                    v53 = v56;
                  }

                  while (v56);
                }

                v57 = v54 - v95;
                v58 = v54 - v95 + 1;
                v26 = v58 + v52;
                if (v52 >= a11)
                {
                  v44 = a11;
                }

                else
                {
                  v44 = v49 - __src + 1;
                }

                memcpy(__dst, __src, v44);
                if (a11 - v44 >= v58)
                {
                  v45 = v57 + 1;
                }

                else
                {
                  v45 = a11 - v44;
                }

                v46 = &__dst[v44];
                v47 = v95;
                goto LABEL_59;
              }
            }

            break;
          case 0xFu:
          case 0x12u:
          case 0x15u:
          case 0x24u:
            v90 = a5;
            if (v22 < 3)
            {
              goto LABEL_102;
            }

            v35 = __dst;
            result = DNSMessageExtractDomainName(a1, a2, v93 + 12, __src, &v94);
            if (!result)
            {
              if (v94 != v30)
              {
                goto LABEL_102;
              }

              v36 = __src[0];
              v89 = a8;
              v37 = __src;
              if (__src[0])
              {
                do
                {
                  v38 = &v37[v36];
                  v39 = v38[1];
                  v37 = v38 + 1;
                  v36 = v39;
                }

                while (v39);
              }

              v40 = v37 - __src;
              v41 = v37 - __src + 1;
              v26 = v37 - __src + 3;
              v42 = a11 >= 2;
              v43 = 2;
              goto LABEL_38;
            }

            break;
          case 0x21u:
            v90 = a5;
            if (v22 < 7)
            {
              goto LABEL_102;
            }

            v35 = __dst;
            result = DNSMessageExtractDomainName(a1, a2, v93 + 16, __src, &v94);
            if (!result)
            {
              if (v94 != v30)
              {
                goto LABEL_102;
              }

              v59 = __src[0];
              v89 = a8;
              v60 = __src;
              if (__src[0])
              {
                do
                {
                  v61 = &v60[v59];
                  v62 = v61[1];
                  v60 = v61 + 1;
                  v59 = v62;
                }

                while (v62);
              }

              v40 = v60 - __src;
              v41 = v60 - __src + 1;
              v26 = v60 - __src + 7;
              v42 = a11 >= 6;
              v43 = 6;
LABEL_38:
              if (v42)
              {
                v44 = v43;
              }

              else
              {
                v44 = a11;
              }

              memcpy(v35, v20 + 10, v44);
              if (a11 - v44 >= v41)
              {
                v45 = v40 + 1;
              }

              else
              {
                v45 = a11 - v44;
              }

              v46 = &v35[v44];
              v47 = __src;
LABEL_59:
              memcpy(v46, v47, v45);
              v25 = v45 + v44;
              goto LABEL_60;
            }

            break;
          case 0x2Fu:
            v90 = a5;
            result = DNSMessageExtractDomainName(a1, a2, v93 + 10, __src, &v94);
            if (!result)
            {
              if (v94 <= v30)
              {
                v63 = __src[0];
                v89 = a8;
                v64 = __src;
                if (__src[0])
                {
                  do
                  {
                    v65 = &v64[v63];
                    v66 = v65[1];
                    v64 = v65 + 1;
                    v63 = v66;
                  }

                  while (v66);
                }

                v67 = v30 - v94;
                v26 = v64 - __src + 1 + v30 - v94;
                if (v64 - __src + 1 < a11)
                {
                  v68 = v64 - __src + 1;
                }

                else
                {
                  v68 = a11;
                }

                v87 = v94;
                memcpy(__dst, __src, v68);
                if (a11 - v68 >= v67)
                {
                  v69 = v67;
                }

                else
                {
                  v69 = a11 - v68;
                }

                memcpy(&__dst[v68], v87, v69);
                v25 = v69 + v68;
LABEL_60:
                a8 = v89;
                a5 = v90;
                goto LABEL_61;
              }

LABEL_102:
              result = 4294960554;
            }

            break;
          default:
            if (a11 >= v22)
            {
              v25 = v22;
            }

            else
            {
              v25 = a11;
            }

            memcpy(__dst, v93 + 10, v25);
            v26 = v22;
LABEL_61:
            v28 = a7;
            v27 = a6;
            LOWORD(v24) = v91;
            if (!a5)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v28 = a7;
        v27 = a6;
        if (a5)
        {
LABEL_7:
          *a5 = v24;
        }

LABEL_8:
        if (v27)
        {
          *v27 = bswap32(*(v20 + 1)) >> 16;
        }

        if (v28)
        {
          *v28 = bswap32(*(v20 + 1));
        }

        if (a8)
        {
          *a8 = v21;
        }

        if (a9)
        {
          *a9 = v22;
        }

        if (a12)
        {
          *a12 = v25;
        }

        if (v23)
        {
          *v23 = v26;
        }

        result = 0;
        if (a14)
        {
          *a14 = v21 + v22;
        }
      }
    }
  }

  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DomainNameLength(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1;
  if (*a1)
  {
    v2 = a1;
    do
    {
      v3 = &v2[v1];
      v4 = v3[1];
      v2 = v3 + 1;
      v1 = v4;
    }

    while (v4);
  }

  return v2 - a1 + 1;
}

uint64_t DNSMessageGetAnswerSection(unint64_t a1, unint64_t a2, char **a3)
{
  if (a2 < 0xC)
  {
    return 4294960553;
  }

  v12[7] = v3;
  v12[8] = v4;
  v7 = __rev16(*(a1 + 4));
  v8 = (a1 + 12);
  if (v7)
  {
    v10 = a1 + a2;
    while (1)
    {
      v12[0] = 0;
      result = DNSMessageExtractDomainName(a1, a2, v8, 0, v12);
      if (result)
      {
        break;
      }

      if (v10 - v12[0] <= 3)
      {
        return 4294960546;
      }

      v8 = (v12[0] + 4);
      if (!--v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  return result;
}

uint64_t DNSMessageGetOptRecord(unsigned __int16 *a1, unint64_t a2, char **a3, void *a4)
{
  *v17 = 0;
  result = DNSMessageGetAnswerSection(a1, a2, v17);
  if (!result)
  {
    v9 = __rev16(a1[4]) + (bswap32(a1[3]) >> 16);
    if (v9)
    {
      while (1)
      {
        v16 = 0;
        LODWORD(result) = _DNSMessageExtractRecordEx(a1, a2, *v17, 0, &v16, 0, 0, 0, 0, 0, 0, 0, 0, v17);
        if (result || v16 == 41)
        {
          break;
        }

        if (!--v9)
        {
          goto LABEL_6;
        }
      }

      if (v16 == 41)
      {
        v14 = -6742;
      }

      else
      {
        v14 = 0;
      }

      if (result)
      {
        return result;
      }

      else
      {
        return v14;
      }
    }

    else
    {
LABEL_6:
      v10 = __rev16(a1[5]);
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          v15 = 0;
          v13 = *v17;
          result = _DNSMessageExtractRecordEx(a1, a2, *v17, 0, &v15, 0, 0, 0, 0, 0, 0, 0, 0, v17);
          if (result)
          {
            break;
          }

          if (v15 == 41)
          {
            if (v12 || *v13)
            {
              return 4294960554;
            }

            v11 = *v17 - v13;
            v12 = v13;
          }

          else
          {
            v13 = v12;
          }

          if (!--v10)
          {
            if (!a3)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
        v13 = 0;
        v11 = 0;
        if (a3)
        {
LABEL_16:
          *a3 = v13;
        }

LABEL_17:
        result = 0;
        if (a4)
        {
          *a4 = v11;
        }
      }
    }
  }

  return result;
}

uint64_t DNSMessageWriteQuery(__int16 a1, __int16 a2, _BYTE *__src, __int16 a4, __int16 a5, uint64_t a6, void *a7)
{
  *(a6 + 10) = 0;
  *(a6 + 6) = 0;
  *a6 = HIBYTE(a1);
  *(a6 + 1) = a1;
  *(a6 + 2) = HIBYTE(a2);
  *(a6 + 3) = a2;
  *(a6 + 4) = 256;
  v11 = *__src;
  v12 = __src;
  if (*__src)
  {
    v12 = __src;
    do
    {
      v13 = &v12[v11];
      v14 = v13[1];
      v12 = v13 + 1;
      v11 = v14;
    }

    while (v14);
  }

  v15 = v12 - __src + 1;
  if (v15 > 0x100)
  {
    return 4294960553;
  }

  memcpy((a6 + 12), __src, v12 - __src + 1);
  v16 = (a6 + 12 + v15);
  *v16 = HIBYTE(a4);
  v16[1] = a4;
  v16[2] = HIBYTE(a5);
  v16[3] = a5;
  result = 0;
  if (a7)
  {
    *a7 = v15 + 16;
  }

  return result;
}

char *DNSMessageCollapse(unint64_t a1, unint64_t a2, void *a3, uint64_t *a4)
{
  v56 = *MEMORY[0x29EDCA608];
  *v52 = 0;
  v51 = 0;
  if (a2 < 0xC)
  {
LABEL_68:
    v21 = 0;
    v36 = 0;
    DomainName = -6743;
  }

  else if (__rev16(*(a1 + 4)) == 1)
  {
    *v52 = a1 + 12;
    DomainName = DNSMessageExtractQuestion(a1, a2, (a1 + 12), __src, &v51 + 1, &v51, v52);
    if (DomainName)
    {
LABEL_57:
      v21 = 0;
      v36 = 0;
      goto LABEL_61;
    }

    if (v51 == 1)
    {
      v9 = __src[0];
      v10 = __src;
      if (__src[0])
      {
        do
        {
          v11 = &v10[v9];
          v12 = v11[1];
          v10 = v11 + 1;
          v9 = v12;
        }

        while (v12);
      }

      v13 = v10 - __src;
      __n = v10 - __src + 1;
      v41 = *v52;
      __memcpy_chk();
      v14 = __rev16(*(a1 + 6));
      if (v14)
      {
        v15 = 0;
        v43 = -1;
LABEL_9:
        v16 = 0;
        *v52 = v41;
        v17 = 1;
        while (1)
        {
          v50 = 0;
          LODWORD(v48) = 0;
          LOWORD(v47) = 0;
          v49 = 0;
          DomainName = _DNSMessageExtractRecordEx(a1, a2, *v52, v53, &v47, &v49, &v48, &v50, 0, 0, 0, 0, 0, v52);
          if (DomainName)
          {
            goto LABEL_57;
          }

          if (v47 == 5 && v49 == v51 && DomainNameEqual(v53, __dst))
          {
            DomainName = DNSMessageExtractDomainName(a1, a2, v50, __dst, 0);
            if (DomainName)
            {
              goto LABEL_57;
            }

            v17 = 0;
            v18 = v43;
            if (v43 >= v48)
            {
              v18 = v48;
            }

            v43 = v18;
            if (++v16 == v14)
            {
              goto LABEL_22;
            }
          }

          else if (v14 == ++v16)
          {
            if (v17)
            {
              goto LABEL_25;
            }

LABEL_22:
            if (++v15 != v14)
            {
              goto LABEL_9;
            }

            goto LABEL_25;
          }
        }
      }

      v43 = -1;
LABEL_25:
      v39 = a4;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      size = v13 + 17;
      v22 = 1;
      a4 = &v48;
      while (1)
      {
        v42 = v22;
        *v52 = v41;
        if (v14)
        {
          break;
        }

        v45 = 0;
        if (v21)
        {
          goto LABEL_52;
        }

LABEL_45:
        if (!size || (v30 = malloc_type_calloc(1uLL, size, 0x56016498uLL)) == 0)
        {
          __break(1u);
          goto LABEL_68;
        }

        v21 = v30;
        if (size < 0xC)
        {
          goto LABEL_66;
        }

        v31 = *a1;
        *(v30 + 2) = *(a1 + 4);
        *v30 = v31;
        *(v30 + 6) = 0;
        *(v30 + 5) = 0;
        if (size - 12 < __n)
        {
          goto LABEL_66;
        }

        v19 = &v30[size];
        v32 = v30 + 12;
        memcpy(v30 + 12, __src, __n);
        v33 = &v32[__n];
        if ((v19 - &v32[__n]) < 4)
        {
          goto LABEL_66;
        }

        v22 = 0;
        v34 = BYTE2(v51);
        v35 = v51;
        *v33 = HIBYTE(v51);
        v33[1] = v34;
        v33[2] = HIBYTE(v35);
        v33[3] = v35;
        v20 = v33 + 4;
        *(v21 + 2) = 256;
        if ((v42 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v45 = 0;
      v23 = v14;
      do
      {
        v50 = 0;
        v48 = 0;
        v47 = 0;
        v49 = 0;
        v46 = 0;
        v24 = *v52;
        DomainName = _DNSMessageExtractRecordEx(a1, a2, *v52, v53, &v49, &v46, &v47, 0, 0, 0, 0, 0, &v48, v52);
        if (DomainName)
        {
          goto LABEL_59;
        }

        if (v49 == HIWORD(v51) && v46 == v51 && DomainNameEqual(v53, __dst))
        {
          if (v21)
          {
            if (v19 - v20 < 2)
            {
              goto LABEL_58;
            }

            *v20 = 3264;
            if ((v19 - v20 - 2) < 0xA)
            {
              goto LABEL_58;
            }

            v25 = v47;
            if (v47 >= v43)
            {
              v25 = v43;
            }

            v47 = v25;
            v26 = v49;
            v27 = v46;
            v28 = v48;
            v20[2] = HIBYTE(v49);
            v20[3] = v26;
            v20[4] = HIBYTE(v27);
            v20[5] = v27;
            v20[6] = HIBYTE(v25);
            v20[7] = BYTE2(v25);
            v20[8] = BYTE1(v25);
            v20[9] = v25;
            v20[10] = HIBYTE(v28);
            v20[11] = v28;
            v29 = v20 + 12;
            if (v19 - v29 < v48)
            {
LABEL_58:
              DomainName = -6762;
LABEL_59:
              v36 = 0;
              goto LABEL_60;
            }

            DomainName = _DNSMessageExtractRecordEx(a1, a2, v24, 0, 0, 0, 0, 0, 0, v29, v48, &v50, 0, 0);
            if (DomainName)
            {
              goto LABEL_59;
            }

            v20 = &v50[v29];
            ++v45;
          }

          else
          {
            size += v48 + 12;
          }
        }

        --v23;
      }

      while (v23);
      if (!v21)
      {
        goto LABEL_45;
      }

LABEL_52:
      if (size >= 0xC)
      {
        *(v21 + 3) = bswap32(v45) >> 16;
LABEL_54:
        v36 = v21;
        a4 = v39;
        v21 = 0;
        DomainName = 0;
        if (a3)
        {
          *a3 = v20 - v36;
        }

        goto LABEL_61;
      }

LABEL_66:
      v36 = 0;
      DomainName = -6762;
LABEL_60:
      a4 = v39;
    }

    else
    {
      v21 = 0;
      v36 = 0;
      DomainName = -6756;
    }
  }

  else
  {
    v21 = 0;
    v36 = 0;
    DomainName = -6764;
  }

LABEL_61:
  if (a4)
  {
    *a4 = DomainName;
  }

  if (v21)
  {
    free(v21);
  }

  v37 = *MEMORY[0x29EDCA608];
  return v36;
}

uint64_t DomainNameEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  while (1)
  {
    v4 = *v3;
    if (v3 != v2 && (v4 != *v2 || mdns_memcmp_us_ascii_case_insensitive(v3 + 1, v2 + 1, *v3)))
    {
      break;
    }

    v3 += v4 + 1;
    v2 += v4 + 1;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t DomainNameAppendDomainName(_BYTE *a1, _BYTE *a2, void *a3)
{
  v5 = *a1;
  v6 = a1;
  if (*a1)
  {
    v6 = a1;
    do
    {
      v7 = &v6[v5];
      v8 = v7[1];
      v6 = v7 + 1;
      v5 = v8;
    }

    while (v8);
  }

  v9 = v6 - a1;
  v10 = *a2;
  v11 = a2;
  if (*a2)
  {
    v11 = a2;
    do
    {
      v12 = &v11[v10];
      v13 = v12[1];
      v11 = v12 + 1;
      v10 = v13;
    }

    while (v13);
  }

  result = 4294960553;
  if (v9 <= 0x100)
  {
    v15 = v11 - a2 + 1;
    if (v15 <= 0x100)
    {
      v16 = v15 + v9;
      if (v15 + v9 <= 0x100)
      {
        memcpy(&a1[v9], a2, v15);
        result = 0;
        if (a3)
        {
          *a3 = &a1[v16];
        }
      }
    }
  }

  return result;
}

uint64_t DomainNameAppendString(_BYTE *a1, char *a2, void *a3)
{
  v3 = a1;
  while (*v3)
  {
    v3 += *v3 + 1;
    if (v3 >= a1 + 256)
    {
      return 4294960554;
    }
  }

  v5 = *a2;
  if (*a2)
  {
    if (v5 != 46)
    {
      goto LABEL_9;
    }

    if (a2[1])
    {
      LOBYTE(v5) = 46;
LABEL_9:
      v6 = (a1 + 255);
      do
      {
        if ((v3 + 64) >= v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = v3 + 64;
        }

        v8 = v3 + 1;
        v9 = v3 + 1;
        v10 = a2;
        do
        {
          a2 = (v10 + 1);
          if (v5 == 92)
          {
            v11 = *a2;
            if (!*a2)
            {
              return 4294960546;
            }

            LOBYTE(v5) = *a2;
            a2 = (v10 + 2);
            if (v11 - 48 <= 9)
            {
              v12 = *a2;
              if ((v12 - 48) <= 9)
              {
                v13 = v10[3];
                if ((v13 - 48) <= 9)
                {
                  v14 = 100 * v11 + 10 * v12 + v13;
                  v15 = (v10 + 4);
                  if (v14 < 5584)
                  {
                    a2 = v15;
                    LOBYTE(v5) = v14 + 48;
                  }
                }
              }
            }
          }

          else if (v5 == 46)
          {
            break;
          }

          if (v9 >= v7)
          {
            return 4294960545;
          }

          *v9++ = v5;
          LOBYTE(v5) = *a2;
          v10 = a2;
        }

        while (*a2);
        if (v9 == v8)
        {
          return 4294960554;
        }

        *v3 = v9 - v8;
        *v9 = 0;
        LOBYTE(v5) = *a2;
        v3 = v9;
      }

      while (*a2);
      goto LABEL_29;
    }
  }

  v9 = v3;
LABEL_29:
  result = 0;
  if (a3)
  {
    *a3 = v9 + 1;
  }

  return result;
}

_BYTE *DomainNameDupEx(_BYTE *result, int a2, unsigned __int8 **a3, size_t *a4)
{
  v7 = result;
  v8 = *result;
  v9 = result;
  if (*result)
  {
    v9 = result;
    do
    {
      v10 = &v9[v8];
      v11 = v10[1];
      v9 = v10 + 1;
      v8 = v11;
    }

    while (v11);
  }

  v12 = v9 - result + 1;
  if (v9 - result == -1 || (result = malloc_type_malloc(v9 - result + 1, 0x1F4B2FEBuLL)) == 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    memcpy(result, v7, v12);
    if (a2)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v13;
        do
        {
          v16 = v15 + 1;
          v17 = v16;
          v18 = v14;
          do
          {
            v19 = *v17;
            if ((v19 - 65) < 0x1A)
            {
              LOBYTE(v19) = v19 + 32;
            }

            *v17++ = v19;
            --v18;
          }

          while (v18);
          v15 = &v16[v14];
          v14 = *v15;
        }

        while (*v15);
      }
    }

    *a3 = v13;
    if (a4)
    {
      *a4 = v12;
    }

    return 0;
  }

  return result;
}

BOOL DomainLabelEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *a1;
  return v2 == *a2 && mdns_memcmp_us_ascii_case_insensitive(a1 + 1, a2 + 1, v2) == 0;
}

uint64_t DomainNameLabelCount(uint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = v2;
  while (v1 <= 0x3F)
  {
    v3 += v1 + 1;
    if (&v3[-v2] > 255)
    {
      break;
    }

    result = (result + 1);
    v1 = *v3;
    if (!*v3)
    {
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

const char *DNSRecordTypeValueToString(int a1)
{
  if (a1 > 248)
  {
    switch(a1)
    {
      case 249:
        result = "TKEY";
        break;
      case 250:
        result = "TSIG";
        break;
      case 251:
        result = "IXFR";
        break;
      case 252:
        result = "AXFR";
        break;
      case 253:
        result = "MAILB";
        break;
      case 254:
        result = "MAILA";
        break;
      case 255:
        result = "ANY";
        break;
      case 256:
        result = "URI";
        break;
      case 257:
        result = "CAA";
        break;
      case 258:
        result = "AVC";
        break;
      case 259:
        result = "DOA";
        break;
      case 260:
        result = "AMTRELAY";
        break;
      case 261:
        result = "RESINFO";
        break;
      case 262:
        result = "WALLET";
        break;
      case 263:
        result = "CLA";
        break;
      case 264:
        result = "IPN";
        break;
      default:
        if (a1 == 0x8000)
        {
          result = "TA";
        }

        else if (a1 == 32769)
        {
          result = "DLV";
        }

        else
        {
LABEL_101:
          result = 0;
        }

        break;
    }
  }

  else
  {
    result = "Reserved";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "A";
        break;
      case 2:
        result = "NS";
        break;
      case 3:
        result = "MD";
        break;
      case 4:
        result = "MF";
        break;
      case 5:
        result = "CNAME";
        break;
      case 6:
        result = "SOA";
        break;
      case 7:
        result = "MB";
        break;
      case 8:
        result = "MG";
        break;
      case 9:
        result = "MR";
        break;
      case 10:
        result = "NULL";
        break;
      case 11:
        result = "WKS";
        break;
      case 12:
        result = "PTR";
        break;
      case 13:
        result = "HINFO";
        break;
      case 14:
        result = "MINFO";
        break;
      case 15:
        result = "MX";
        break;
      case 16:
        result = "TXT";
        break;
      case 17:
        result = "RP";
        break;
      case 18:
        result = "AFSDB";
        break;
      case 19:
        result = "X25";
        break;
      case 20:
        result = "ISDN";
        break;
      case 21:
        result = "RT";
        break;
      case 22:
        result = "NSAP";
        break;
      case 23:
        result = "NSAP-PTR";
        break;
      case 24:
        result = "SIG";
        break;
      case 25:
        result = "KEY";
        break;
      case 26:
        result = "PX";
        break;
      case 27:
        result = "GPOS";
        break;
      case 28:
        result = "AAAA";
        break;
      case 29:
        result = "LOC";
        break;
      case 30:
        result = "NXT";
        break;
      case 31:
        result = "EID";
        break;
      case 32:
        result = "NIMLOC";
        break;
      case 33:
        result = "SRV";
        break;
      case 34:
        result = "ATMA";
        break;
      case 35:
        result = "NAPTR";
        break;
      case 36:
        result = "KX";
        break;
      case 37:
        result = "CERT";
        break;
      case 38:
        result = "A6";
        break;
      case 39:
        result = "DNAME";
        break;
      case 40:
        result = "SINK";
        break;
      case 41:
        result = "OPT";
        break;
      case 42:
        result = "APL";
        break;
      case 43:
        result = "DS";
        break;
      case 44:
        result = "SSHFP";
        break;
      case 45:
        result = "IPSECKEY";
        break;
      case 46:
        result = "RRSIG";
        break;
      case 47:
        result = "NSEC";
        break;
      case 48:
        result = "DNSKEY";
        break;
      case 49:
        result = "DHCID";
        break;
      case 50:
        result = "NSEC3";
        break;
      case 51:
        result = "NSEC3PARAM";
        break;
      case 52:
        result = "TLSA";
        break;
      case 53:
        result = "SMIMEA";
        break;
      case 55:
        result = "HIP";
        break;
      case 56:
        result = "NINFO";
        break;
      case 57:
        result = "RKEY";
        break;
      case 58:
        result = "TALINK";
        break;
      case 59:
        result = "CDS";
        break;
      case 60:
        result = "CDNSKEY";
        break;
      case 61:
        result = "OPENPGPKEY";
        break;
      case 62:
        result = "CSYNC";
        break;
      case 63:
        result = "ZONEMD";
        break;
      case 64:
        result = "SVCB";
        break;
      case 65:
        result = "HTTPS";
        break;
      case 66:
        result = "DSYNC";
        break;
      case 99:
        result = "SPF";
        break;
      case 100:
        result = "UINFO";
        break;
      case 101:
        result = "UID";
        break;
      case 102:
        result = "GID";
        break;
      case 103:
        result = "UNSPEC";
        break;
      case 104:
        result = "NID";
        break;
      case 105:
        result = "L32";
        break;
      case 106:
        result = "L64";
        break;
      case 107:
        result = "LP";
        break;
      case 108:
        result = "EUI48";
        break;
      case 109:
        result = "EUI64";
        break;
      case 128:
        result = "NXNAME";
        break;
      default:
        goto LABEL_101;
    }
  }

  return result;
}

unsigned __int16 *DNSRecordTypeStringToValue(const void *a1)
{
  result = bsearch(a1, &DNSRecordTypeStringToValue_sTable, 0x60uLL, 0x10uLL, _DNSRecordTypeStringToValueCmp);
  if (result)
  {
    return result[4];
  }

  return result;
}

const char *DNSRCodeToString(int a1)
{
  result = "NoError";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "FormErr";
      break;
    case 2:
      result = "ServFail";
      break;
    case 3:
      result = "NXDomain";
      break;
    case 4:
      result = "NotImp";
      break;
    case 5:
      result = "Refused";
      break;
    case 6:
      result = "YXDomain";
      break;
    case 7:
      result = "YXRRSet";
      break;
    case 8:
      result = "NXRRSet";
      break;
    case 9:
      result = "NotAuth";
      break;
    case 10:
      result = "NotZone";
      break;
    case 11:
      result = "DSOTYPENI";
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      goto LABEL_5;
    case 16:
      result = "BADVERS";
      break;
    case 17:
      result = "BADKEY";
      break;
    case 18:
      result = "BADTIME";
      break;
    case 19:
      result = "BADMODE";
      break;
    case 20:
      result = "BADNAME";
      break;
    case 21:
      result = "BADALG";
      break;
    case 22:
      result = "BADTRUNC";
      break;
    case 23:
      result = "BADCOOKIE";
      break;
    default:
      if (a1 == 0xFFFF)
      {
        result = "Reserved";
      }

      else
      {
LABEL_5:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t DNSRCodeFromString(const void *a1)
{
  v1 = bsearch(a1, &DNSRCodeFromString_sTable, 0x15uLL, 0x10uLL, _DNSRCodeFromStringCmp);
  if (v1)
  {
    return v1[2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DNSMessageToString(unsigned __int16 *a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  __src[127] = *MEMORY[0x29EDCA608];
  v116 = 0;
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global_363);
  }

  v119 = 0;
  memset(v118, 0, sizeof(v118));
  *v117 = 0;
  v115 = 0;
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_663;
  }

  _GetCUSymAddr_DataBuffer_Init_sAddr(v118, v129, 512, -1);
  if (a2 >= 0xC)
  {
    v103 = a4;
    v8 = (*(a1 + 2) >> 3) & 0xF;
    v9 = *(a1 + 5);
    v106 = *(a1 + 4);
    v10 = v9 | (v106 << 8);
    v100 = *(a1 + 6);
    v101 = *(a1 + 7);
    v105 = _byteswap_ushort(a1[3]);
    v104 = __rev16(a1[4]);
    v102 = __rev16(a1[5]);
    v11 = "";
    v109 = a2;
    v114 = a1;
    if ((a3 & 0x20) == 0)
    {
      v112 = *(a1 + 5);
      v12 = *(a1 + 2) << 8;
      v13 = *(a1 + 3) | (*(a1 + 2) << 8);
      v14 = __rev16(*a1);
      if ((a3 & 4) != 0)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v16 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v19 = 81;
        if (v12 < 0)
        {
          v19 = 82;
        }

        v96 = v13;
        v97 = v19;
        v95 = v14;
        v18 = "id: 0x%04X (%u), flags: 0x%04X (%c/";
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "ID:               0x%04X (%u)\n", v14, v14);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v16 = _GetCUSymAddr_DataBuffer_AppendF_sAddr;
        v17 = 81;
        if (v12 < 0)
        {
          v17 = 82;
        }

        v95 = v17;
        v18 = "Flags:            0x%04X %c/";
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = v16(v118, v18);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v99 = v10;
      if (v8 > 6 || v8 == 3)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v20 = v8;
        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "OPCODE%d");
      }

      else
      {
        v21 = _DNSOpCodeToString_sNames[v8];
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        v20 = v8;
        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
      }

      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v22 = &word_29EF093C8;
      v23 = 7;
      do
      {
        if ((*v22 & v13) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", %s", *(v22 - 1));
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }
        }

        v22 += 8;
        --v23;
      }

      while (v23);
      v24 = DNSRCodeToString(v13 & 0xF);
      if (v24)
      {
        v25 = v24;
        LODWORD(v8) = v20;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        v9 = v112;
        v10 = v99;
        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", %s", v25);
        a2 = v109;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }
      }

      else
      {
        LODWORD(v8) = v20;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        v10 = v99;
        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", RCODE%d", v13 & 0xF);
        v9 = v112;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }
      }

      if ((a3 & 4) != 0)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ")");
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        if ((a3 & 0x40) != 0)
        {
          goto LABEL_647;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_663;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, ", counts: %u/%u/%u/%u", v10, v105, v104, v102);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        v11 = ", ";
        if ((a3 & 0x10) != 0)
        {
          goto LABEL_647;
        }

        goto LABEL_76;
      }

      if ((a3 & 0x40) != 0)
      {
        goto LABEL_647;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Question count:   %u\n", v10);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Answer count:     %u\n", v105);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Authority count:  %u\n", v104);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_663;
      }

      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "Additional count: %u\n", v102);
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v11 = "";
    }

    if ((a3 & 0x10) != 0)
    {
      goto LABEL_647;
    }

LABEL_76:
    v110 = v11;
    v98 = v8;
    v113 = (a3 >> 3) & 1;
    v26 = v114;
    *v117 = v114 + 12;
    if (v10)
    {
      v27 = 0;
      v28 = 0;
      v107 = (v106 << 8) + v9;
      v29 = v127;
      while (1)
      {
        LOWORD(__src[0]) = 0;
        LOWORD(v130[0]) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = DNSMessageExtractQuestion(v26, a2, *v117, v29, __src, v130, v117);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          break;
        }

        v30 = SLOWORD(v130[0]) < 0;
        if (a3)
        {
          LOWORD(v130[0]) &= ~0x8000u;
        }

        v31 = a3 & v30;
        if ((a3 & 4) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v110);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (v28 && (DomainNameEqual(v29, v28) & 1) != 0)
          {
            v32 = v29;
            v29 = v28;
          }

          else
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v29, 0, v128, 0);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }

            if (v113 && _NameIsPrivate(v128))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s ");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s ");
            }

            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }

            if (v29 == v127)
            {
              v32 = v126;
            }

            else
            {
              v32 = v127;
            }

            *v32 = 0;
          }

          v36 = "ANY";
          if (LOWORD(v130[0]) != 255)
          {
            v36 = 0;
          }

          if (LOWORD(v130[0]) == 1)
          {
            v37 = "IN";
          }

          else
          {
            v37 = v36;
          }

          if (v37)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v37);
            a2 = v109;
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            a2 = v109;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "CLASS%u", LOWORD(v130[0]));
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          if (a3)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v38 = "QM";
            if (v31)
            {
              v38 = "QU";
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v38);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          v39 = DNSRecordTypeValueToString(LOWORD(__src[0]));
          if (v39)
          {
            v40 = v39;
            v26 = v114;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = v40;
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s?");
          }

          else
          {
            v26 = v114;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = LOWORD(__src[0]);
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u?");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v28 = v29;
          v110 = ", ";
        }

        else
        {
          if (!v27)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nQUESTION SECTION\n");
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              break;
            }
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v29, 0, v128, 0);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (v113 && _NameIsPrivate(v128))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~-30s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%-30s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v33 = "QM";
          if (v31)
          {
            v33 = "QU";
          }

          if ((a3 & 1) == 0)
          {
            v33 = "";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %2s", v33);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v34 = "ANY";
          if (LOWORD(v130[0]) != 255)
          {
            v34 = 0;
          }

          if (LOWORD(v130[0]) == 1)
          {
            v35 = "IN";
          }

          else
          {
            v35 = v34;
          }

          v26 = v114;
          if (v35)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }

          v41 = DNSRecordTypeValueToString(LOWORD(__src[0]));
          if (v41)
          {
            v42 = v41;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = v42;
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %-5s\n");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = LOWORD(__src[0]);
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u\n");
          }

          v32 = v29;
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            break;
          }
        }

        ++v27;
        v29 = v32;
        if (v107 == v27)
        {
          goto LABEL_202;
        }
      }

LABEL_655:
      v76 = CUSymAddr_DataBuffer_AppendF_sAddr;
      goto LABEL_656;
    }

    v28 = 0;
    v32 = v127;
LABEL_202:
    if (v102 + v104 + v105)
    {
      for (i = 0; i < v102 + v104 + v105; ++i)
      {
        __src[0] = 0;
        v130[0] = 0;
        LODWORD(v125) = 0;
        LOWORD(v124) = 0;
        LOWORD(v123) = 0;
        CUSymAddr_DataBuffer_AppendF_sAddr = _DNSMessageExtractRecordEx(v26, a2, *v117, v32, &v124, &v123, &v125, __src, v130, 0, 0, 0, 0, v117);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v32, 0, v128, 0);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        v44 = v123 < 0;
        if (a3)
        {
          LOWORD(v123) = v123 & 0x7FFF;
        }

        v45 = a3 & v44;
        if ((a3 & 4) != 0)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v110);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (v28 && (DomainNameEqual(v32, v28) & 1) != 0)
          {
            v46 = v32;
            v32 = v28;
          }

          else
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameToString(v32, 0, v128, 0);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v113 && _NameIsPrivate(v128))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s ");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s ");
            }

            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v32 == v127)
            {
              v46 = v126;
            }

            else
            {
              v46 = v127;
            }

            *v46 = 0;
          }

          if (v124 == 41)
          {
            if (v45)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "CF ");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            v26 = v114;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "OPT %u", v123);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v125)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0x%08X");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0");
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%u", v125);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }

            if (v45)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CF");
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            v47 = "ANY";
            if (v123 != 255)
            {
              v47 = 0;
            }

            if (v123 == 1)
            {
              v48 = "IN";
            }

            else
            {
              v48 = v47;
            }

            if (v48)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v48);
              v26 = v114;
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              v26 = v114;
              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v123);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_655;
              }
            }

            if (DNSRecordTypeValueToString(v124))
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_663;
              }

              CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
            }
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v28 = v32;
          v110 = ", ";
          if ((a3 & 2) == 0)
          {
            goto LABEL_367;
          }

          goto LABEL_368;
        }

        if (!v105 || i)
        {
          if (v104 && ((v100 << 8) + v101) == i)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nAUTHORITY SECTION\n");
          }

          else
          {
            if (v104 + v105 != i)
            {
              goto LABEL_285;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nADDITIONAL SECTION\n");
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\nANSWER SECTION\n");
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

LABEL_285:
        if (v124 == 41)
        {
          if (v113 && _NameIsPrivate(v128))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v49 = "";
          if (v45)
          {
            v49 = " CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s OPT %u", v49, v123);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v26 = v114;
          if (v125)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0x%08X");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0");
          }
        }

        else
        {
          if (v113)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~-42s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%-42s");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v50 = "";
          if (v45)
          {
            v50 = "CF";
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %6u %2s", v125, v50);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v51 = "ANY";
          if (v123 != 255)
          {
            v51 = 0;
          }

          if (v123 == 1)
          {
            v52 = "IN";
          }

          else
          {
            v52 = v51;
          }

          if (v52)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v52);
            v26 = v114;
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            v26 = v114;
            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v123);
            if (CUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_655;
            }
          }

          if (DNSRecordTypeValueToString(v124))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %-5s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
          }
        }

        v46 = v32;
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

        if ((a3 & 2) == 0)
        {
LABEL_367:
          DNSRecordDataToStringEx(__src[0], v130[0], v124, v26, a2, v113, &v116);
        }

LABEL_368:
        if (v116)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v116);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (v116)
          {
            free(v116);
            v116 = 0;
          }
        }

        else
        {
          if (v113)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v94 = v130[0];
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_663;
            }

            v95 = v130[0];
            v96 = v130[0];
            v94 = __src[0];
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %#H");
          }

          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }
        }

        if ((a3 & 4) != 0)
        {
          if (v124 == 5)
          {
            DomainName = DNSMessageExtractDomainName(v26, a2, __src[0], v46, 0);
            v54 = v127;
            if (v46 == v127)
            {
              v54 = v126;
            }

            if (!DomainName)
            {
              v28 = v46;
              v46 = v54;
            }

            *v46 = 0;
          }
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n");
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }
        }

        v32 = v46;
      }
    }

    if (v98 != 6)
    {
      goto LABEL_647;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    v55 = v114;
    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "[");
      if (CUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_655;
      }

      v56 = v114 + a2;
      v57 = *v117;
      if (*v117 < v114 + a2)
      {
        if ((a3 >> 2))
        {
          v58 = "";
        }

        else
        {
          v58 = "\n\t";
        }

        if ((a3 >> 2))
        {
          v59 = ", ";
        }

        else
        {
          v59 = ",\n\t";
        }

        v108 = v59;
        v111 = v114 + a2;
        do
        {
          if (v57 < v55)
          {
            v76 = 4294960586;
            goto LABEL_656;
          }

          if (v56 - v57 < 4 || (v60 = __rev16(*(v57 + 1)), v61 = v57 + 4, (v56 - (v57 + 4)) < v60))
          {
LABEL_664:
            v76 = 4294960546;
            goto LABEL_656;
          }

          v62 = *v57;
          v63 = &v61[v60];
          *v117 = &v61[v60];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s", v58);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v64 = __rev16(v62);
          if (v64 > 63)
          {
            v65 = v109;
            if (v64 <= 65)
            {
              if (v64 == 64)
              {
                v66 = "SUBSCRIBE";
              }

              else
              {
                v66 = "PUSH";
              }

              goto LABEL_443;
            }

            if (v64 == 66)
            {
              v66 = "UNSUBSCRIBE";
              goto LABEL_443;
            }

            if (v64 == 67)
            {
              v66 = "RECONFIRM";
              goto LABEL_443;
            }
          }

          else
          {
            v65 = v109;
            if (v64 > 1)
            {
              if (v64 == 2)
              {
                v66 = "Retry Delay";
                goto LABEL_443;
              }

              if (v64 == 3)
              {
                v66 = "Encryption Padding";
                goto LABEL_443;
              }
            }

            else
            {
              v66 = "Reserved";
              if (!v64)
              {
                goto LABEL_443;
              }

              if (v64 == 1)
              {
                v66 = "KeepAlive";
LABEL_443:
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_663;
                }

                v94 = v66;
                CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s: ");
                goto LABEL_447;
              }
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_663;
          }

          v94 = v64;
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "DSO-TYPE%u: ");
LABEL_447:
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          v124 = 0;
          v125 = (v57 + 4);
          if (v64 > 65)
          {
            if (v64 == 66)
            {
              if (v60 != 2)
              {
                goto LABEL_666;
              }

              v75 = *(v57 + 2);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              v55 = v114;
              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%u", __rev16(v75));
LABEL_543:
                v76 = v67;
                goto LABEL_631;
              }

              goto LABEL_636;
            }

            if (v64 != 67)
            {
              goto LABEL_525;
            }

            v55 = v114;
            v67 = DNSMessageExtractDomainNameString(v114, v65, v57 + 4, __src, &v125);
            if (v67)
            {
              goto LABEL_543;
            }

            v72 = v125;
            if (v63 - v125 >= 4)
            {
              v125 += 4;
              if (!v113 || !_NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_636;
                }

                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
LABEL_548:
                if (v73)
                {
                  goto LABEL_584;
                }

                v77 = __rev16(*(v72 + 1));
                v78 = "ANY";
                if (v77 != 255)
                {
                  v78 = 0;
                }

                if (v77 == 1)
                {
                  v79 = "IN";
                }

                else
                {
                  v79 = v78;
                }

                if (v79)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  v55 = v114;
                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_636;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v79);
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v77);
                  v55 = v114;
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                v83 = __rev16(*v72);
                v84 = DNSRecordTypeValueToString(v83);
                if (v84)
                {
                  v85 = v84;
                  v86 = v109;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v94 = v85;
                  v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                }

                else
                {
                  v86 = v109;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v94 = v83;
                  v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
                }

                if (v73)
                {
                  goto LABEL_584;
                }

                v90 = v125;
                v91 = v63 - v125;
                DNSRecordDataToStringEx(v125, v63 - v125, v83, v114, v86, v113, &v124);
                if (v124)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  v55 = v114;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v124);
                    if (v67)
                    {
                      goto LABEL_543;
                    }

                    if (v124)
                    {
                      free(v124);
                      v124 = 0;
                    }

LABEL_630:
                    v76 = 0;
                    goto LABEL_631;
                  }
                }

                else if (v113)
                {
                  v55 = v114;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v94 = v91;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
                    goto LABEL_629;
                  }
                }

                else
                {
                  v55 = v114;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v95 = v91;
                    v96 = v91;
                    v94 = v90;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " '%H'");
                    goto LABEL_629;
                  }
                }

                goto LABEL_636;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
                goto LABEL_548;
              }

              goto LABEL_636;
            }

LABEL_637:
            v76 = 4294960546;
          }

          else
          {
            if (v64 != 64)
            {
              if (v64 == 65)
              {
                if (v63 <= v61)
                {
                  goto LABEL_664;
                }

                v55 = v114;
                while (1)
                {
                  v122 = 0;
                  v123 = 0;
                  v120 = 0;
                  v121 = 0;
                  v67 = _DNSMessageExtractRecordEx(v114, v65, v61, v130, &v120 + 1, &v120, &v121, &v123, &v122, 0, 0, 0, 0, &v125);
                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  if (v125 > v63)
                  {
                    goto LABEL_637;
                  }

                  v67 = DomainNameToString(v130, 0, __src, 0);
                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  if (v113 && _NameIsPrivate(__src))
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = __src;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = __src;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
                  }

                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_636;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " 0x%08X", v121);
                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  v68 = "ANY";
                  if (v120 != 255)
                  {
                    v68 = 0;
                  }

                  if (v120 == 1)
                  {
                    v69 = "IN";
                  }

                  else
                  {
                    v69 = v68;
                  }

                  if (v69)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = v69;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = v120;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u");
                  }

                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  v70 = DNSRecordTypeValueToString(HIWORD(v120));
                  if (v70)
                  {
                    v71 = v70;
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = v71;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                  }

                  else
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v94 = HIWORD(v120);
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
                  }

                  if (v67)
                  {
                    goto LABEL_543;
                  }

                  DNSRecordDataToStringEx(v123, v122, HIWORD(v120), v114, v65, v113, &v124);
                  if (v124)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_636;
                    }

                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v124);
                    if (v67)
                    {
                      goto LABEL_543;
                    }

                    if (v124)
                    {
                      free(v124);
                      v124 = 0;
                    }
                  }

                  else
                  {
                    if (v113)
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_636;
                      }

                      v94 = v122;
                      v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " [%zu B]");
                    }

                    else
                    {
                      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                      {
                        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                      }

                      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                      {
                        goto LABEL_636;
                      }

                      v95 = v122;
                      v96 = v122;
                      v94 = v123;
                      v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %#H");
                    }

                    if (v67)
                    {
                      goto LABEL_543;
                    }
                  }

                  v61 = v125;
                  if (v125 >= v63)
                  {
                    goto LABEL_630;
                  }
                }
              }

LABEL_525:
              if (v113)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_638;
                }

                v94 = v60;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "[%u B]");
LABEL_584:
                v76 = v73;
              }

              else
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  v95 = v60;
                  v96 = v60;
                  v94 = (v57 + 4);
                  v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "'%H'");
                  goto LABEL_584;
                }

LABEL_638:
                v76 = 4294960561;
              }

              v55 = v114;
              goto LABEL_631;
            }

            v55 = v114;
            v67 = DNSMessageExtractDomainNameString(v114, v65, v57 + 4, __src, &v125);
            if (v67)
            {
              goto LABEL_543;
            }

            v74 = v125;
            if (v63 - v125 == 4)
            {
              if (!v113 || !_NameIsPrivate(__src))
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_636;
                }

                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%s");
LABEL_564:
                if (v73)
                {
                  goto LABEL_584;
                }

                v80 = __rev16(*(v74 + 1));
                v81 = "ANY";
                if (v80 != 255)
                {
                  v81 = 0;
                }

                if (v80 == 1)
                {
                  v82 = "IN";
                }

                else
                {
                  v82 = v81;
                }

                if (v82)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  v55 = v114;
                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_636;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s", v82);
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_638;
                  }

                  v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " CLASS%u", v80);
                  v55 = v114;
                  if (v67)
                  {
                    goto LABEL_543;
                  }
                }

                v87 = __rev16(*v74);
                v88 = DNSRecordTypeValueToString(v87);
                if (v88)
                {
                  v89 = v88;
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v94 = v89;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " %s");
                    goto LABEL_629;
                  }
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    v94 = v87;
                    v67 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, " TYPE%u");
LABEL_629:
                    if (v67)
                    {
                      goto LABEL_543;
                    }

                    goto LABEL_630;
                  }
                }

                goto LABEL_636;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                v94 = __src;
                v73 = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "%~s");
                goto LABEL_564;
              }

LABEL_636:
              v76 = 4294960561;
              goto LABEL_631;
            }

            v76 = 4294960553;
          }

LABEL_631:
          if (v124)
          {
            free(v124);
          }

          if (v76)
          {
            goto LABEL_656;
          }

          v57 = *v117;
          v58 = v108;
          v56 = v111;
        }

        while (*v117 < v111);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        if ((a3 >> 2))
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "]", v94, v95, v96, v97);
        }

        else
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v118, "\n]", v94, v95, v96, v97);
        }

        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_655;
        }

LABEL_647:
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v118, "", 1);
          if (CUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_655;
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
          }

          if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
          {
            CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Detach_sAddr(v118, v103, &v115);
            goto LABEL_655;
          }
        }
      }
    }

LABEL_663:
    v76 = 4294960561;
    goto LABEL_656;
  }

LABEL_666:
  v76 = 4294960553;
LABEL_656:
  if (v116)
  {
    free(v116);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v118);
  }

  v92 = *MEMORY[0x29EDCA608];
  return v76;
}

uint64_t _NameIsPrivate(const char *a1)
{
  result = strcasecmp(a1, ".");
  if (result)
  {
    return strcasecmp(a1, "ipv4only.arpa.") != 0;
  }

  return result;
}

uint64_t DNSRecordDataToStringEx(unsigned __int8 *a1, unint64_t a2, int a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v108[127] = *MEMORY[0x29EDCA608];
  if (_GetCUSymAddr_DataBuffer_Init_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Init_sOnce, &__block_literal_global_363);
  }

  v104 = 0;
  *v105 = 0;
  memset(v103, 0, sizeof(v103));
  v102 = 0;
  if (!_GetCUSymAddr_DataBuffer_Init_sAddr)
  {
    goto LABEL_466;
  }

  v97 = a7;
  v13 = &a1[a2];
  _GetCUSymAddr_DataBuffer_Init_sAddr(v103, v107, 256, -1);
  CUSymAddr_DataBuffer_AppendF_sAddr = 4294960582;
  if (a3 > 32)
  {
    if (a3 <= 46)
    {
      if (a3 <= 40)
      {
        if (a3 == 33)
        {
          if (a2 < 7)
          {
            goto LABEL_469;
          }

          if (a4)
          {
            DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1 + 6, v108, 0);
            if (DomainNameString)
            {
              goto LABEL_443;
            }
          }

          else
          {
            DomainNameString = DomainNameToString(a1 + 6, &a1[a2], v108, 0);
            if (DomainNameString)
            {
              goto LABEL_443;
            }
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u ", __rev16(*a1), __rev16(*(a1 + 1)), __rev16(*(a1 + 2)));
          if (!DomainNameString)
          {
            goto LABEL_388;
          }

          goto LABEL_443;
        }

        if (a3 != 35)
        {
          goto LABEL_444;
        }

        v34 = 1;
        *v105 = a1;
        while (1)
        {
          v35 = v34;
          if (*v105 > v13)
          {
            break;
          }

          if (v13 - *v105 < 2)
          {
            goto LABEL_464;
          }

          v36 = **v105;
          *v105 += 2;
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          v37 = __rev16(v36);
          if (v35)
          {
            v38 = "";
          }

          else
          {
            v38 = " ";
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s%u", v38, v37);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          v34 = 0;
          if ((v35 & 1) == 0)
          {
            v87 = 3;
            while (*v105 <= v13)
            {
              if (v13 == *v105)
              {
                goto LABEL_464;
              }

              v89 = (*v105 + 1);
              v88 = **v105;
              if (*v105 + 1 > v13)
              {
                break;
              }

              if (v13 - v89 < v88)
              {
                goto LABEL_464;
              }

              *v105 = &v89[v88];
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " ");
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              DomainNameString = _AppendEscapedASCIIString(v103, v89, *v105, "");
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "");
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              if (!--v87)
              {
                DomainNameString = DomainNameToString(*v105, v13, v108, v105);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }

                goto LABEL_433;
              }
            }

            break;
          }
        }
      }

      else
      {
        if (a3 != 41)
        {
          if (a3 == 43)
          {
            if (a2 >= 4)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
              if (DomainNameString)
              {
                goto LABEL_443;
              }

              if (a2 != 4)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %.4H", a1 + 4, a2 - 4, a2 - 4);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }
              }

              goto LABEL_435;
            }

            goto LABEL_469;
          }

          if (a3 != 46)
          {
            goto LABEL_444;
          }

          v100 = 0;
          v101 = 0;
          v99 = 0;
          if (a2 < 0x13)
          {
            goto LABEL_469;
          }

          if (DNSRecordTypeValueToString(__rev16(*a1)))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            v92 = __rev16(*a1);
            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "TYPE%u");
          }

          if (!DomainNameString)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u %u %u", a1[2], a1[3], bswap32(*(a1 + 1)));
            if (!DomainNameString)
            {
              v100 = 0;
              v101 = 0;
              v99 = 0;
              if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
              }

              if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
              {
                goto LABEL_466;
              }

              _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 2)) + 0xE77934880, &v101 + 4, &v101, &v100 + 4, &v100, &v99 + 4, &v99);
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u%02u%02u%02u%02u%02u", HIDWORD(v101), v101, HIDWORD(v100), v100, HIDWORD(v99), v99);
              if (!DomainNameString)
              {
                if (_GetCUSymAddr_SecondsToYMD_HMS_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_SecondsToYMD_HMS_sOnce, &__block_literal_global_257);
                }

                if (!_GetCUSymAddr_SecondsToYMD_HMS_sAddr)
                {
                  goto LABEL_466;
                }

                _GetCUSymAddr_SecondsToYMD_HMS_sAddr(bswap32(*(a1 + 3)) + 0xE77934880, &v101 + 4, &v101, &v100 + 4, &v100, &v99 + 4, &v99);
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u%02u%02u%02u%02u%02u", HIDWORD(v101), v101, HIDWORD(v100), v100, HIDWORD(v99), v99);
                if (!DomainNameString)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u", __rev16(*(a1 + 8)));
                  if (DomainNameString)
                  {
                    goto LABEL_443;
                  }

                  *v105 = a1 + 18;
                  DomainNameString = DomainNameToString(a1 + 18, v13, v108, v105);
                  if (DomainNameString)
                  {
                    goto LABEL_443;
                  }

                  DomainNameString = _AppendDomainNameStringEx(v103, " ", a6, v108);
                  if (DomainNameString)
                  {
                    goto LABEL_443;
                  }

                  *v106 = 0;
                  if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253_399);
                  }

                  if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v105, v13 - *v105, 0, v106, 0);
                  if (!DomainNameString)
                  {
                    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                    {
                      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                    }

                    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %s", *v106);
                    }

                    else
                    {
                      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960561;
                    }

                    v72 = *v106;
                    if (*v106)
                    {
LABEL_241:
                      free(v72);
                    }

LABEL_242:
                    if (CUSymAddr_DataBuffer_AppendF_sAddr)
                    {
                      goto LABEL_444;
                    }

                    goto LABEL_435;
                  }
                }
              }
            }
          }

          goto LABEL_443;
        }

        if (v13 >= a1)
        {
          v73 = "";
          while (1)
          {
            if (a1 >= v13)
            {
              goto LABEL_435;
            }

            if (v13 - a1 < 4)
            {
              goto LABEL_464;
            }

            v74 = a1 + 4;
            v75 = __rev16(*(a1 + 1));
            if (v13 - (a1 + 4) < v75)
            {
              goto LABEL_464;
            }

            v76 = *a1;
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s{", v73);
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v77 = __rev16(v76);
            if (v77 == 12)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "Padding");
            }

            else if (v77 == 15)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "EDE");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "CODE%u");
            }

            if (DomainNameString)
            {
              goto LABEL_443;
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, ", ");
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v78 = &v74[v75];
            if (v77 != 15 || !v75)
            {
              break;
            }

            if (v75 < 2)
            {
              goto LABEL_464;
            }

            v79 = *(a1 + 2);
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            v80 = __rev16(v79);
            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "code: %u", v80);
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v81 = (v78 - (a1 + 6));
            if (v81 | v80)
            {
              if (v80 <= 0x18)
              {
                v82 = off_29EF095A0[v80];
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " (%s)", v82);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }
              }

              if (v81)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, ", extra-text: ");
                if (DomainNameString)
                {
                  goto LABEL_443;
                }

                if (a6)
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "«REDACTED»");
                }

                else
                {
                  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                  {
                    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                  }

                  if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                  {
                    goto LABEL_466;
                  }

                  DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "'%.*s'");
                }

LABEL_337:
                if (DomainNameString)
                {
                  goto LABEL_443;
                }
              }
            }

            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "}");
            a1 = v78;
            v73 = ", ";
            if (DomainNameString)
            {
              goto LABEL_443;
            }
          }

          if (a6)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "[%u B]");
          }

          else if (v77 == 12 && v75 && !*v74 && !memcmp(a1 + 4, a1 + 5, v75 - 1))
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "<%u zero bytes>");
          }

          else
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "'%H'");
          }

          goto LABEL_337;
        }
      }

LABEL_465:
      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960586;
      goto LABEL_444;
    }

    if (a3 <= 63)
    {
      if (a3 == 47)
      {
        if (a4)
        {
          DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v108, v105);
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }

        else
        {
          DomainNameString = DomainNameToString(a1, &a1[a2], v108, v105);
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }

        if (*v105 < v13)
        {
          DomainNameString = _AppendDomainNameStringEx(v103, 0, a6, v108);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          v21 = *v105;
LABEL_375:
          DomainNameString = _DNSRecordDataAppendTypeBitMap(v103, v21, v13);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          goto LABEL_435;
        }

        goto LABEL_469;
      }

      if (a3 == 48)
      {
        goto LABEL_227;
      }

      if (a3 != 50)
      {
        goto LABEL_444;
      }

      if (a2 < 5)
      {
        goto LABEL_469;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_466;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u", *a1, a1[1], __rev16(*(a1 + 1)));
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      *v105 = a1 + 4;
      if ((a2 - 4) < 1)
      {
        goto LABEL_469;
      }

      *v105 = a1 + 5;
      v16 = a1[4];
      if (a2 - 5 < v16)
      {
        goto LABEL_469;
      }

      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_466;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %.4H", *v105, v16, v16);
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      v17 = (*v105 + v16);
      *v105 = v17;
      if ((v13 - v17) < 1)
      {
        goto LABEL_469;
      }

      v18 = (v17 + 1);
      *v105 = v17 + 1;
      v19 = *v17;
      if (v13 - (v17 + 1) < v19)
      {
        goto LABEL_469;
      }

      if (*v17)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " ");
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        v18 = *v105;
      }

      v20 = v18 + v19;
      while (1)
      {
        v21 = *v105;
        v22 = v20 - *v105;
        if (v20 == *v105)
        {
          goto LABEL_375;
        }

        if (v22 > 2)
        {
          if (v22 == 4)
          {
            v27 = 0;
            goto LABEL_64;
          }

          if (v22 != 3)
          {
            goto LABEL_61;
          }

          v26 = *(*v105 + 2);
          v24 = (v26 << 16) | (*(*v105 + 1) << 24);
          v25 = v24 | (**v105 << 32);
          *v105 += 3;
          BYTE4(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[2 * (v26 & 0xF)];
          v23 = 5;
        }

        else
        {
          if (v22 == 1)
          {
            v28 = 0;
            v25 = **v105 << 32;
            ++*v105;
            goto LABEL_74;
          }

          if (v22 != 2)
          {
LABEL_61:
            v27 = *(*v105 + 4);
LABEL_64:
            v29 = *(*v105 + 3);
            v30 = v27 | (v29 << 8);
            v24 = (*(*v105 + 1) << 24) | (*(*v105 + 2) << 16) | v30;
            v25 = v24 | (**v105 << 32);
            if (v22 >= 5)
            {
              v31 = 5;
            }

            else
            {
              v31 = v20 - *v105;
            }

            *v105 += v31;
            if (v22 == 4)
            {
              v23 = 7;
            }

            else
            {
              HIBYTE(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v27 & 0x1F];
              v23 = 8;
            }

            v32 = DNSRecordDataToStringEx_kBase32ExtendedHex[(v29 >> 2) & 0x1F];
            BYTE6(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v30 >> 5) & 0x1F];
            BYTE5(v108[0]) = v32;
            BYTE4(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 15) & 0x1F];
            goto LABEL_71;
          }

          v23 = 0;
          v24 = *(*v105 + 1) << 24;
          v25 = v24 | (**v105 << 32);
          *v105 += 2;
        }

LABEL_71:
        BYTE3(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 20) & 0x1F];
        BYTE2(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v24 >> 25) & 0x1F];
        if (v23)
        {
          v28 = v23;
        }

        else
        {
          v28 = 4;
        }

LABEL_74:
        BYTE1(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[(v25 >> 30) & 0x1F];
        LOBYTE(v108[0]) = DNSRecordDataToStringEx_kBase32ExtendedHex[v25 >> 35];
        if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
        }

        if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
        {
          goto LABEL_466;
        }

        if (v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = 2;
        }

        CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_Append_sAddr(v103, v108, v33);
        if (CUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_444;
        }
      }
    }

    if ((a3 - 64) >= 2)
    {
      goto LABEL_444;
    }

    if (v13 < a1)
    {
      goto LABEL_465;
    }

    if (a2 < 2)
    {
      goto LABEL_469;
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_466;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u", __rev16(*a1));
    if (DomainNameString)
    {
      goto LABEL_443;
    }

    *v106 = a1 + 2;
    DomainNameString = DomainNameToString(a1 + 2, v13, v108, v106);
    if (DomainNameString)
    {
      goto LABEL_443;
    }

    DomainNameString = _AppendDomainNameStringEx(v103, " ", a6, v108);
    if (DomainNameString)
    {
      goto LABEL_443;
    }

    while (1)
    {
      v42 = *v106;
      if (*v106 >= v13)
      {
        goto LABEL_435;
      }

      if (v13 - *v106 < 4)
      {
        goto LABEL_464;
      }

      v43 = __rev16(**v106);
      v44 = *(*v106 + 2);
      v45 = _DNSSVCBKeyToString(v43);
      if (v45)
      {
        v46 = v45;
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        v90 = v46;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %s=");
      }

      else
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        v90 = v43;
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " key%u=");
      }

      if (DomainNameString)
      {
        goto LABEL_443;
      }

      v47 = __rev16(v44);
      v48 = v42 + 4;
      *v106 = v42 + 4;
      if (v13 - (v42 + 4) < v47)
      {
LABEL_464:
        CUSymAddr_DataBuffer_AppendF_sAddr = 4294960546;
        goto LABEL_444;
      }

      if (v43 > 4)
      {
        if (v43 > 32766)
        {
          if (v43 != 0x7FFF)
          {
            if (v43 == 32769)
            {
LABEL_163:
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              v90 = *v106;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%.4H");
LABEL_218:
              if (DomainNameString)
              {
                goto LABEL_443;
              }
            }

            else
            {
LABEL_213:
              if (a6)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                v90 = v47;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "<%u redacted bytes>");
                goto LABEL_218;
              }

              DomainNameString = _AppendEscapedASCIIString(v103, v42 + 4, &v48[v47], "");
              if (DomainNameString)
              {
                goto LABEL_443;
              }
            }

            *v106 += v47;
            goto LABEL_220;
          }

          v67 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v68 = 0;
            v69 = 1;
            do
            {
              if ((v69 & 1) == 0)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s", v68);
                if (DomainNameString)
                {
                  goto LABEL_443;
                }

                v48 = *v106;
              }

              v70 = *v48;
              if (v70 > 2)
              {
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                v90 = v70;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "sla%u");
              }

              else
              {
                v71 = off_29EF09588[*v48];
                if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
                {
                  dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
                }

                if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
                {
                  goto LABEL_466;
                }

                v90 = v71;
                DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s");
              }

              if (DomainNameString)
              {
                goto LABEL_443;
              }

              v69 = 0;
              v48 = (*v106 + 1);
              *v106 = v48;
              v68 = ",";
            }

            while (v48 < v67);
          }
        }

        else
        {
          if (v43 == 5)
          {
            goto LABEL_163;
          }

          if (v43 != 6)
          {
            goto LABEL_213;
          }

          if ((v47 & 0xF) != 0)
          {
            goto LABEL_469;
          }

          v55 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v56 = "";
            v57 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_AppendF_sAddr = _AppendIPv6Address(v103, v56, v57, a6);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_444;
              }

              v57 = *v106 + 16;
              *v106 = v57;
              if (v57 >= v55)
              {
                break;
              }

              v56 = ",";
            }
          }
        }
      }

      else if (v43 > 2)
      {
        if (v43 == 3)
        {
          if (v47 != 2)
          {
            goto LABEL_469;
          }

          v66 = *(v42 + 2);
          *v106 = &v48[v47];
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u", __rev16(v66));
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }

        else
        {
          if ((v47 & 3) != 0)
          {
            goto LABEL_469;
          }

          v58 = &v48[v47];
          if (v48 < &v48[v47])
          {
            v59 = "";
            v60 = (v42 + 4);
            while (1)
            {
              CUSymAddr_DataBuffer_AppendF_sAddr = _AppendIPv4Address(v103, v59, v60, a6);
              if (CUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_444;
              }

              v60 = (*v106 + 4);
              *v106 = v60;
              if (v60 >= v58)
              {
                break;
              }

              v59 = ",";
            }
          }
        }
      }

      else if (v43)
      {
        if (v43 != 1)
        {
          goto LABEL_213;
        }

        v49 = 0;
        v50 = &v48[v47];
        v51 = 1;
        while (*v106 < v50)
        {
          v53 = (*v106 + 1);
          v52 = **v106;
          if (*v106 + 1 > v50)
          {
            goto LABEL_465;
          }

          if (v50 - v53 < v52)
          {
            goto LABEL_464;
          }

          v54 = &v53[v52];
          *v106 = &v53[v52];
          if ((v51 & 1) == 0)
          {
            if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
            {
              dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
            }

            if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
            {
              goto LABEL_466;
            }

            DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s", v49);
            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v54 = *v106;
          }

          DomainNameString = _AppendEscapedASCIIString(v103, v53, v54, ",");
          v51 = 0;
          v49 = ",";
          if (DomainNameString)
          {
            goto LABEL_443;
          }
        }
      }

      else
      {
        if (v47)
        {
          goto LABEL_469;
        }

        v61 = &v48[v47];
        if (v48 < v61)
        {
          v62 = 0;
          v63 = 1;
          do
          {
            v64 = __rev16(*v48);
            *v106 = v48 + 2;
            v65 = _DNSSVCBKeyToString(v64);
            if ((v63 & 1) == 0)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s", v62);
              if (DomainNameString)
              {
                goto LABEL_443;
              }
            }

            if (v65)
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              v90 = v65;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%s");
            }

            else
            {
              if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
              {
                dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
              }

              if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
              {
                goto LABEL_466;
              }

              v90 = v64;
              DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "key%u");
            }

            if (DomainNameString)
            {
              goto LABEL_443;
            }

            v63 = 0;
            v48 = *v106;
            v62 = ",";
          }

          while (*v106 < v61);
        }
      }

LABEL_220:
      if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
      }

      if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
      {
        goto LABEL_466;
      }

      DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "", v90);
      if (DomainNameString)
      {
        goto LABEL_443;
      }
    }
  }

  if (a3 > 12)
  {
    if (a3 > 15)
    {
      if (a3 != 16)
      {
        if (a3 != 25)
        {
          if (a3 != 28)
          {
            goto LABEL_444;
          }

          if (a2 != 16)
          {
            goto LABEL_469;
          }

          DomainNameString = _AppendIPv6Address(v103, 0, a1, a6);
          if (DomainNameString)
          {
            goto LABEL_443;
          }

          goto LABEL_435;
        }

LABEL_227:
        if (a2 < 5)
        {
          goto LABEL_469;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u %u %u", __rev16(*a1), a1[2], a1[3]);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        *v105 = a1 + 4;
        v108[0] = 0;
        if (_GetCUSymAddr_Base64EncodeCopyEx_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_Base64EncodeCopyEx_sOnce, &__block_literal_global_253_399);
        }

        if (!_GetCUSymAddr_Base64EncodeCopyEx_sAddr)
        {
          goto LABEL_466;
        }

        DomainNameString = _GetCUSymAddr_Base64EncodeCopyEx_sAddr(*v105, v13 - *v105, 0, v108, 0);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %s", v108[0]);
        }

        else
        {
          CUSymAddr_DataBuffer_AppendF_sAddr = 4294960561;
        }

        v72 = v108[0];
        if (v108[0])
        {
          goto LABEL_241;
        }

        goto LABEL_242;
      }

LABEL_244:
      if (a2)
      {
        if (a6)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "[%zu B]");
        }

        else if (a2 == 1)
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%#H");
        }

        else
        {
          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            goto LABEL_466;
          }

          DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%#{txt}");
        }

LABEL_381:
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        goto LABEL_435;
      }

      goto LABEL_469;
    }

    if (a3 == 13)
    {
      goto LABEL_244;
    }

    if (a3 != 15)
    {
      goto LABEL_444;
    }

    if (a2 < 3)
    {
      goto LABEL_469;
    }

    v41 = *a1;
    v40 = (a1 + 2);
    v39 = v41;
    if (a4)
    {
      DomainNameString = DNSMessageExtractDomainNameString(a4, a5, v40, v108, 0);
      if (DomainNameString)
      {
        goto LABEL_443;
      }
    }

    else
    {
      DomainNameString = DomainNameToString(v40, v13, v108, 0);
      if (DomainNameString)
      {
        goto LABEL_443;
      }
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      goto LABEL_466;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, "%u", __rev16(v39));
    if (!DomainNameString)
    {
LABEL_433:
      v84 = " ";
LABEL_434:
      DomainNameString = _AppendDomainNameStringEx(v103, v84, a6, v108);
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      goto LABEL_435;
    }

LABEL_443:
    CUSymAddr_DataBuffer_AppendF_sAddr = DomainNameString;
    goto LABEL_444;
  }

  if (a3 <= 4)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_444;
      }

LABEL_84:
      if (a4)
      {
        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v108, 0);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

      else
      {
        DomainNameString = DomainNameToString(a1, &a1[a2], v108, 0);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

LABEL_388:
      v84 = 0;
      goto LABEL_434;
    }

    if (a2 != 4)
    {
      goto LABEL_469;
    }

    DomainNameString = _AppendIPv4Address(v103, 0, a1, a6);
    if (DomainNameString)
    {
      goto LABEL_443;
    }

LABEL_435:
    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
    {
      goto LABEL_466;
    }

    DomainNameString = _GetCUSymAddr_DataBuffer_Append_sAddr(v103, "", 1);
    if (!DomainNameString)
    {
      if (_GetCUSymAddr_DataBuffer_Detach_sOnce != -1)
      {
        dispatch_once(&_GetCUSymAddr_DataBuffer_Detach_sOnce, &__block_literal_global_239);
      }

      if (_GetCUSymAddr_DataBuffer_Detach_sAddr)
      {
        DomainNameString = _GetCUSymAddr_DataBuffer_Detach_sAddr(v103, v97, &v102);
        goto LABEL_443;
      }

LABEL_466:
      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960561;
      goto LABEL_444;
    }

    goto LABEL_443;
  }

  switch(a3)
  {
    case 5:
      goto LABEL_84;
    case 6:
      if (a4)
      {
        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, a1, v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        if (*v105 >= v13)
        {
          goto LABEL_469;
        }

        DomainNameString = _AppendDomainNameStringEx(v103, 0, a6, v108);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        DomainNameString = DNSMessageExtractDomainNameString(a4, a5, *v105, v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

      else
      {
        DomainNameString = DomainNameToString(a1, &a1[a2], v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        DomainNameString = _AppendDomainNameStringEx(v103, 0, a6, v108);
        if (DomainNameString)
        {
          goto LABEL_443;
        }

        DomainNameString = DomainNameToString(*v105, &a1[a2], v108, v105);
        if (DomainNameString)
        {
          goto LABEL_443;
        }
      }

      DomainNameString = _AppendDomainNameStringEx(v103, " ", a6, v108);
      if (DomainNameString)
      {
        goto LABEL_443;
      }

      v83 = *v105;
      if (v13 - *v105 == 20)
      {
        if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
        {
          dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
        }

        if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
        {
          goto LABEL_466;
        }

        v95 = bswap32(v83[3]);
        v96 = bswap32(v83[4]);
        v93 = bswap32(v83[1]);
        v94 = bswap32(v83[2]);
        v91 = bswap32(*v83);
        DomainNameString = _GetCUSymAddr_DataBuffer_AppendF_sAddr(v103, " %u %u %u %u %u");
        goto LABEL_381;
      }

LABEL_469:
      CUSymAddr_DataBuffer_AppendF_sAddr = 4294960554;
      break;
    case 12:
      goto LABEL_84;
  }

LABEL_444:
  if (_GetCUSymAddr_DataBuffer_Free_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_Free_sOnce, &__block_literal_global_243);
  }

  if (_GetCUSymAddr_DataBuffer_Free_sAddr)
  {
    _GetCUSymAddr_DataBuffer_Free_sAddr(v103);
  }

  v85 = *MEMORY[0x29EDCA608];
  return CUSymAddr_DataBuffer_AppendF_sAddr;
}

uint64_t _AppendIPv4Address(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (a4)
  {
    v4 = bswap32(*a3);
    if (v4)
    {
      v5 = v4 == 2130706433;
    }

    else
    {
      v5 = 1;
    }

    v6 = !v5;
  }

  else
  {
    v6 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 4, v6);
}

uint64_t _AppendIPv6Address(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    if (*a3 | *(a3 + 7))
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a3 + 15) > 1u;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return _AppendIPAddress(a1, a2, a3, 16, v5);
}

uint64_t _AppendDomainNameStringEx(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  if (a3 && _NameIsPrivate(a4))
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      v5 = "%s%~s";
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, v5);
    }
  }

  else
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      v5 = "%s%s";
      return _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, v5);
    }
  }

  return 4294960561;
}

uint64_t _DNSRecordDataAppendTypeBitMap(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a3 - a2;
  if (a3 - a2 >= 1)
  {
    while (2)
    {
      if (v3 < 3 || (v5 = a2[1], (v5 - 33) < 0xFFFFFFE0) || (v6 = a2 + 2, a3 - (a2 + 2) < v5))
      {
        result = 4294960554;
        goto LABEL_18;
      }

      v14 = a3 - (a2 + 2);
      v15 = a2[1];
      v7 = 0;
      v8 = 8 * v5;
      v9 = *a2 << 8;
      v10 = 1;
      while (1)
      {
        if ((v6[v7 >> 3] >> (~v7 & 7)))
        {
          v11 = DNSRecordTypeValueToString(v9 + v7);
          if (!v11)
          {
            v11 = __str;
            snprintf(__str, 0x20uLL, "TYPE%d", v9 + v7);
          }

          if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
          {
            dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
          }

          if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
          {
            result = 4294960561;
            goto LABEL_18;
          }

          result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, " %s", v11);
          if (result)
          {
            break;
          }
        }

        v10 = ++v7 < v8;
        if (v8 == v7)
        {
          v6 += v15;
          v3 = a3 - v6;
          goto LABEL_16;
        }
      }

      v3 = v14;
      if (v10)
      {
        goto LABEL_18;
      }

LABEL_16:
      a2 = v6;
      if (v3 > 0)
      {
        continue;
      }

      break;
    }
  }

  result = 0;
LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

const char *_DNSSVCBKeyToString(int a1)
{
  if (a1 > 4)
  {
    if (a1 > 32766)
    {
      switch(a1)
      {
        case 32767:
          return "sla";
        case 32768:
          return "dohuri";
        case 32769:
          return "odohconfig";
      }
    }

    else
    {
      switch(a1)
      {
        case 5:
          return "echconfig";
        case 6:
          return "ipv6hint";
        case 7:
          return "dohpath";
      }
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return "mandatory";
    }

    if (a1 == 1)
    {
      return "alpn";
    }

    return 0;
  }

  if (a1 == 2)
  {
    return "no-default-alpn";
  }

  if (a1 == 3)
  {
    return "port";
  }

  return "ipv4hint";
}

uint64_t _AppendEscapedASCIIString(uint64_t a1, unsigned __int8 *a2, unint64_t a3, char *__s)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v6 = a2;
  while (v6 < a3)
  {
    v8 = 0;
    while (1)
    {
      v9 = v6[v8];
      if (v9 == 92 || (v9 - 127) < 0xFFFFFFA1 || __s && strchr(__s, v9))
      {
        break;
      }

      if (a3 - v6 == ++v8)
      {
        v8 = a3 - v6;
        break;
      }
    }

    if (!v8)
    {
      break;
    }

    if (_GetCUSymAddr_DataBuffer_Append_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_Append_sOnce, &__block_literal_global_235);
    }

    if (!_GetCUSymAddr_DataBuffer_Append_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_Append_sAddr(a1, v6, v8);
    if (result)
    {
      return result;
    }

    v6 += v8;
LABEL_27:
    if (v6 >= a3)
    {
      return 0;
    }
  }

  v11 = *v6++;
  if ((v11 - 32) <= 0x5E)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (!_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      return 4294960561;
    }

    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%c");
    goto LABEL_26;
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
  }

  if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
  {
    result = _GetCUSymAddr_DataBuffer_AppendF_sAddr(a1, "\\%03d");
LABEL_26:
    if (result)
    {
      return result;
    }

    goto LABEL_27;
  }

  return 4294960561;
}

uint64_t _AppendIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a4 != 16 && a4 != 4)
  {
    result = 4294960553;
    goto LABEL_17;
  }

  if (!a5)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      result = (_GetCUSymAddr_DataBuffer_AppendF_sAddr)(a1, "%s%.*a");
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    goto LABEL_18;
  }

  result = _GetCUSymAddr_SNPrintF_sAddr(v10, 33, "%.4H", a3, a4, a4);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_DataBuffer_AppendF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_DataBuffer_AppendF_sOnce, &__block_literal_global_224);
    }

    if (_GetCUSymAddr_DataBuffer_AppendF_sAddr)
    {
      result = (_GetCUSymAddr_DataBuffer_AppendF_sAddr)(a1, "%s%~s");
      goto LABEL_17;
    }

LABEL_18:
    result = 4294960561;
  }

LABEL_17:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DNSComputeDNSKeyTag(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + v2);
      if ((v2 & 1) == 0)
      {
        v4 <<= 8;
      }

      v3 += v4;
      ++v2;
    }

    while (a2 != v2);
  }

  else
  {
    v3 = 0;
  }

  return (v3 + HIWORD(v3));
}

uint64_t DNSMessagePrintObfuscatedString(uint64_t a1, uint64_t a2, const char *a3)
{
  if (_NameIsPrivate(a3))
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%~s", a3);
    }
  }

  else
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%s");
    }
  }

  return 4294960561;
}

uint64_t DNSMessagePrintObfuscatedIPv4Address(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = bswap32(a3);
  v7 = a3;
  if (a3 && a3 != 2130706433)
  {
    return _DNSMessagePrintObfuscatedIPAddress(a1, a2, &v6, 4);
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (_GetCUSymAddr_SNPrintF_sAddr)
  {
    return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%#.4a", COERCE_DOUBLE(&v7));
  }

  else
  {
    return 4294960561;
  }
}

uint64_t _DNSMessagePrintObfuscatedIPAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a4 != 16 && a4 != 4)
  {
    result = 4294960553;
    goto LABEL_12;
  }

  if (_GetCUSymAddr_SNPrintF_sOnce != -1)
  {
    dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
  }

  if (!_GetCUSymAddr_SNPrintF_sAddr)
  {
    goto LABEL_13;
  }

  result = _GetCUSymAddr_SNPrintF_sAddr(v10, 33, "%.4H", a3, a4, a4);
  if ((result & 0x80000000) == 0)
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      result = _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%~s", v10);
      goto LABEL_12;
    }

LABEL_13:
    result = 4294960561;
  }

LABEL_12:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t DNSMessagePrintObfuscatedIPv6Address(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a3 | *(a3 + 7))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a3 + 15) >= 2u;
  }

  if (v6)
  {

    return _DNSMessagePrintObfuscatedIPAddress(a1, a2, a3, 16);
  }

  else
  {
    if (_GetCUSymAddr_SNPrintF_sOnce != -1)
    {
      dispatch_once(&_GetCUSymAddr_SNPrintF_sOnce, &__block_literal_global_264);
    }

    if (_GetCUSymAddr_SNPrintF_sAddr)
    {
      return _GetCUSymAddr_SNPrintF_sAddr(a1, a2, "%.16a", *&a3);
    }

    else
    {
      return 4294960561;
    }
  }
}

uint64_t dnssd_svcb_service_name_is_empty(uint64_t a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 2;
  if (a1 == -2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (a1 + a2 > v4)
    {
      v6 = (a1 + 2);
      while (*v6)
      {
        v6 += *v6 + 1;
        if (v6)
        {
          v7 = v6 >= a1 + a2;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          v3 = 0;
          v5 = 0;
          return v3 & v5;
        }
      }

      v8 = (v6 - v4 + 1);
      v5 = v8 < 0x101;
      v3 = v8 == 1;
    }
  }

  return v3 & v5;
}

uint64_t __dnssd_svcb_is_valid_block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    if (a3)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    else if ((a3 & 0x1FFFE) != 0)
    {
      if (((a3 >> 1) & 0xFFFE) != 0)
      {
        v3 = (a3 >> 1);
      }

      else
      {
        v3 = 1;
      }

      do
      {
        v4 = *(*(a1 + 32) + 8);
        if (*(v4 + 24))
        {
          break;
        }

        v5 = bswap32(*a2) >> 16;
        v6 = v5 - 1;
        v7 = v5 - 0x7FFF;
        if (v6 >= 7 && v7 >= 3)
        {
          *(v4 + 24) = 1;
        }

        ++a2;
        --v3;
      }

      while (v3);
    }
  }

  return 0;
}

_WORD *_dnssd_svcb_extract_values(_WORD *result, unint64_t a2, int a3, uint64_t a4)
{
  v4 = a2 - 2;
  if (a2 >= 2)
  {
    if (*result)
    {
      v5 = result + 1;
      if (result != -2 && (result + a2) > v5)
      {
        v8 = result + 1;
        while (*v8)
        {
          v8 += *v8 + 1;
          if (v8)
          {
            v9 = v8 >= result + a2;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            return result;
          }
        }

        v10 = (v8 - v5 + 1);
        if (v10 <= 0x100)
        {
          v11 = (v5 + v10);
          for (i = v4 - v10; i >= 4 && v11 != 0; v11 = (v15 + v14))
          {
            v14 = bswap32(v11[1]) >> 16;
            v9 = i - 4 >= v14;
            i = i - 4 - v14;
            if (!v9)
            {
              break;
            }

            v15 = v11 + 2;
            if (a3 == bswap32(*v11) >> 16)
            {
              result = (*(a4 + 16))(a4, v11 + 2, v14);
              if (!result)
              {
                break;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __dnssd_svcb_get_port_block_invoke(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2 && a3 == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = bswap32(*a2) >> 16;
  }

  return 0;
}