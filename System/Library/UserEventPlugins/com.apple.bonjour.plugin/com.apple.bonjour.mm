void sub_578(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == 2)
  {
    v15 = (a4 + 16);
    v16 = (a4 + 16);
    while (1)
    {
      v16 = *v16;
      if (!v16)
      {
        break;
      }

      if (v16[2] == a2)
      {
        for (i = *v15; i != v16; i = *i)
        {
          v15 = i;
        }

        *v15 = *i;
        v18 = v16[4];
        if (v18)
        {
          for (j = 0; j < v18; ++j)
          {
            v20 = *(v16[5] + 8 * j);
            if (v20)
            {
              dispatch_source_cancel(v20);
              dispatch_release(*(v16[5] + 8 * j));
              v18 = v16[4];
            }
          }
        }

        free(v16[5]);
        dispatch_release(v16[3]);

        free(v16);
        return;
      }
    }

    return;
  }

  if (a1 != 1)
  {
    return;
  }

  v7 = malloc_type_malloc(0x30uLL, 0x10A0040716DF78EuLL);
  *(v7 + 1) = *(a4 + 8);
  *(v7 + 2) = a2;
  snprintf(__str, 0x64uLL, "com.apple.bonjour.registration.token%llu", a2);
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);
  *(v7 + 3) = dispatch_queue_create(__str, v9);
  *(v7 + 4) = 0;
  v10 = (v7 + 32);
  *(v7 + 5) = 0;
  *v7 = *(a4 + 16);
  *(a4 + 16) = v7;
  if (!xpc_dictionary_get_value(a3, "Bonjour"))
  {
    v82 = 0;
    length = 0;
    *v85 = 0;
    v86 = v85;
    v87 = 0x2000000000;
    v88 = 0;
    objects = 0;
    p_objects = &objects;
    v81 = 0x2000000000;
    int64 = xpc_dictionary_get_int64(a3, "Flags");
    v22 = int64;
    if (HIDWORD(int64))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1228();
      }

      v22 = 0;
    }

    v23 = xpc_dictionary_get_int64(a3, "InterfaceIndex");
    v24 = v23;
    if ((v23 - 0x100000000) <= 0xFFFFFFFE7FFFFFFFLL)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_12A4();
      }

      v24 = 0;
    }

    string = xpc_dictionary_get_string(a3, "Name");
    v26 = xpc_dictionary_get_string(a3, "RegistrationType");
    v27 = xpc_dictionary_get_string(a3, "Domain");
    v28 = xpc_dictionary_get_string(a3, "Host");
    v29 = xpc_dictionary_get_int64(a3, "Port");
    v30 = v29;
    if (v29 >= 0x10000)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1320();
      }

      v30 = 0;
    }

    data = xpc_dictionary_get_data(a3, "TXTRecord", &length);
    v32 = length;
    if (length >= 0x10000)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_139C();
      }

      v32 = 0;
      data = 0;
      length = 0;
    }

    v33 = *(v7 + 3);
    *&block.ai_flags = _NSConcreteStackBlock;
    *&block.ai_socktype = 0x40000000;
    *&block.ai_addrlen = sub_EBC;
    block.ai_canonname = &unk_4190;
    block.ai_addr = v85;
    block.ai_next = &objects;
    v76 = v22;
    v77 = v24;
    v69 = string;
    v70 = v26;
    v71 = v27;
    v72 = v28;
    v78 = v30;
    v73 = v32;
    v74 = data;
    v75 = v7;
    dispatch_sync(v33, &block);
    if (*(v86 + 6))
    {
      _os_assumes_log();
    }

    else
    {
      v34 = DNSServiceRefSockFD(p_objects[3]);
      v35 = dispatch_source_create(&_dispatch_source_type_read, v34, 0, *(v7 + 3));
      dispatch_set_context(v35, p_objects[3]);
      dispatch_source_set_event_handler_f(v35, &DNSServiceProcessResult);
      dispatch_source_set_cancel_handler_f(v35, &DNSServiceRefDeallocate);
      dispatch_resume(v35);
      if (v35)
      {
        *(v7 + 4) = 1;
        v36 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
        *(v7 + 5) = v36;
        *v36 = v35;
      }
    }

    _Block_object_dispose(&objects, 8);
    _Block_object_dispose(v85, 8);
    return;
  }

  length = 0;
  value = xpc_dictionary_get_value(a3, "Bonjour");
  v12 = value;
  objects = value;
  if (!value)
  {
    _os_assumes_log();
    goto LABEL_48;
  }

  type = xpc_get_type(value);
  if (type == &_xpc_type_BOOL)
  {
    if (v12 != &_xpc_BOOL_true)
    {
      _os_assumes_log();
    }
  }

  else
  {
    if (type == &_xpc_type_string)
    {
      v14 = xpc_array_create(&objects, 1uLL);
      goto LABEL_47;
    }

    if (type == &_xpc_type_array)
    {
      v14 = xpc_retain(v12);
LABEL_47:
      v12 = v14;
      goto LABEL_48;
    }
  }

  v12 = 0;
LABEL_48:
  memset(&block, 0, sizeof(block));
  v37 = xpc_dictionary_get_value(a3, "SockType");
  objects = v37;
  if (!v37)
  {
    goto LABEL_54;
  }

  if (xpc_get_type(v37) != &_xpc_type_string)
  {
LABEL_50:
    v38 = 0;
    goto LABEL_56;
  }

  string_ptr = xpc_string_get_string_ptr(objects);
  if (!strcasecmp(string_ptr, "stream"))
  {
LABEL_54:
    v41 = 1;
  }

  else
  {
    v40 = xpc_string_get_string_ptr(objects);
    if (strcasecmp(v40, "dgram"))
    {
      goto LABEL_50;
    }

    v41 = 2;
  }

  block.ai_socktype = v41;
  v38 = 1;
LABEL_56:
  v42 = xpc_dictionary_get_value(a3, "SockPassive");
  objects = v42;
  if (v42)
  {
    v43 = 1;
    if (v42 == &_xpc_BOOL_true)
    {
      block.ai_flags = 1;
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
    block.ai_flags = 1;
  }

  v44 = xpc_dictionary_get_value(a3, "SockNodeName");
  objects = v44;
  if (v44 && xpc_get_type(v44) == &_xpc_type_string)
  {
    v45 = xpc_string_get_string_ptr(objects);
  }

  else
  {
    v45 = 0;
  }

  v46 = xpc_dictionary_get_value(a3, "SockServiceName");
  objects = v46;
  if (v46)
  {
    v47 = xpc_get_type(v46);
    if (v47 == &_xpc_type_int64)
    {
      v49 = xpc_int64_get_value(objects);
      v48 = v85;
      snprintf(v85, 0x15uLL, "%lld", v49);
      goto LABEL_70;
    }

    if (v47 == &_xpc_type_string)
    {
      v48 = xpc_string_get_string_ptr(objects);
      goto LABEL_70;
    }
  }

  v48 = 0;
LABEL_70:
  v50 = xpc_dictionary_get_value(a3, "SockFamily");
  objects = v50;
  if (v50 && xpc_get_type(v50) == &_xpc_type_string)
  {
    v51 = xpc_string_get_string_ptr(objects);
    if (!strcasecmp(v51, "IPv4"))
    {
      v53 = 2;
      goto LABEL_76;
    }

    v52 = xpc_string_get_string_ptr(objects);
    if (!strcasecmp(v52, "IPv6"))
    {
      v53 = 30;
LABEL_76:
      block.ai_family = v53;
    }
  }

  v54 = xpc_dictionary_get_value(a3, "SockProtocol");
  objects = v54;
  if (v54 && xpc_get_type(v54) == &_xpc_type_string)
  {
    v55 = xpc_string_get_string_ptr(objects);
    if (!strcasecmp(v55, "TCP"))
    {
      v57 = 6;
    }

    else
    {
      v56 = xpc_string_get_string_ptr(objects);
      if (strcasecmp(v56, "UDP"))
      {
        goto LABEL_84;
      }

      v57 = 17;
    }

    block.ai_protocol = v57;
  }

LABEL_84:
  if (v38)
  {
    if (!v43)
    {
      goto LABEL_86;
    }
  }

  else
  {
    _os_assumes_log();
    if (!v43)
    {
      goto LABEL_86;
    }
  }

  _os_assumes_log();
LABEL_86:
  if (!(v45 | v48))
  {
    _os_assumes_log();
  }

  if (getaddrinfo(v45, v48, &block, &length))
  {
    _os_assumes_log();
    if (v12)
    {
LABEL_114:
      xpc_release(v12);
    }
  }

  else
  {
    v58 = length;
    if (length)
    {
      while (1)
      {
        v59 = *(v58 + 4);
        v60 = v59 == 30 || v59 == 2;
        if (!v60 || (*(v58 + 8) - 1) > 1)
        {
          goto LABEL_108;
        }

        if (v12)
        {
          count = xpc_array_get_count(v12);
          *(v7 + 4) = count;
          *(v7 + 5) = malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL);
          if (!*(v7 + 4))
          {
            goto LABEL_108;
          }

          v62 = 0;
          v63 = 0;
          do
          {
            v64 = xpc_array_get_value(v12, v63);
            if (xpc_get_type(v64) == &_xpc_type_string)
            {
              v65 = xpc_string_get_string_ptr(v64);
              *(*(v7 + 5) + 8 * v63) = sub_F5C(v58, v65, *(v7 + 3));
              if (*(*(v7 + 5) + 8 * v63))
              {
                ++v62;
              }
            }

            else
            {
              _os_assumes_log();
            }

            ++v63;
            v66 = *v10;
          }

          while (v63 < *v10);
        }

        else
        {
          *(v7 + 4) = 1;
          *(v7 + 5) = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
          **(v7 + 5) = sub_F5C(v58, v48, *(v7 + 3));
          v66 = *(v7 + 4);
          v62 = **(v7 + 5) != 0;
        }

        if (v62 == v66)
        {
          if (v62)
          {
            goto LABEL_111;
          }
        }

        else
        {
          _os_assumes_log();
          if (v62)
          {
LABEL_111:
            v67 = length;
            goto LABEL_113;
          }
        }

LABEL_108:
        v58 = *(v58 + 40);
        if (!v58)
        {
          goto LABEL_111;
        }
      }
    }

    v67 = 0;
LABEL_113:
    freeaddrinfo(v67);
    if (v12)
    {
      goto LABEL_114;
    }
  }
}

uint64_t sub_EBC(uint64_t a1)
{
  result = DNSServiceRegister((*(*(a1 + 40) + 8) + 24), *(a1 + 104), *(a1 + 108), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), bswap32(*(a1 + 112)) >> 16, *(a1 + 80), *(a1 + 88), sub_F34, *(a1 + 96));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_F34(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return _os_assumes_log();
  }

  return result;
}

NSObject *sub_F5C(uint64_t a1, const char *a2, NSObject *a3)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 1);
  if (v6 == 2)
  {
    v8 = 16777343;
    v9 = 4;
    goto LABEL_8;
  }

  if (v6 == 30 && !*(v5 + 8) && !*(v5 + 12) && !*(v5 + 16))
  {
    v8 = 0x1000000;
    v9 = 20;
LABEL_8:
    if (*(v5 + v9) == v8)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_11;
  }

  v7 = 0;
LABEL_11:
  if (*(a1 + 8) == 1)
  {
    v10 = "tcp";
  }

  else
  {
    v10 = "udp";
  }

  snprintf(__str, 0xC8uLL, "_%s._%s.", a2, v10);
  v11 = *(*(a1 + 32) + 2);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1190;
  block[3] = &unk_41B8;
  block[4] = &v22;
  block[5] = &v18;
  v16 = v7;
  block[6] = __str;
  v17 = v11;
  dispatch_sync(a3, block);
  if (*(v23 + 6))
  {
    _os_assumes_log();
    v13 = 0;
  }

  else
  {
    v12 = DNSServiceRefSockFD(v19[3]);
    v13 = dispatch_source_create(&_dispatch_source_type_read, v12, 0, a3);
    dispatch_set_context(v13, v19[3]);
    dispatch_source_set_event_handler_f(v13, &DNSServiceProcessResult);
    dispatch_source_set_cancel_handler_f(v13, &DNSServiceRefDeallocate);
    dispatch_resume(v13);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v13;
}

uint64_t sub_1190(uint64_t a1)
{
  result = DNSServiceRegister((*(*(a1 + 40) + 8) + 24), 0, *(a1 + 56), 0, *(a1 + 48), 0, 0, *(a1 + 60), 0, 0, 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_120C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void xpc_event_provider_create()
{
    ;
  }
}