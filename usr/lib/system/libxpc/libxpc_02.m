uint64_t ___xpc_init_pid_domain_process_initial_images_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  if (_xpc_has_prefix(a2, "/System/Library/Frameworks/"))
  {
    v6 = 32;
  }

  else
  {
    has_prefix = _xpc_has_prefix(a2, "/System/Library/PrivateFrameworks/");
    v6 = 40;
    if (has_prefix)
    {
      v6 = 32;
    }
  }

  xpc_dictionary_set_value(*(a1 + v6), a2, a3);
  return 1;
}

void _xpc_envdict_putenv(void *a1, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (_xpc_has_prefix(a2, "__XPC_"))
  {
    v4 = strchr(a2, 61);
    if (v4)
    {
      v5 = v4;
      memset(v7, 0, sizeof(v7));
      __strlcpy_chk();
      xpc_dictionary_set_string(a1, v7, v5 + 1);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t _libxpc_initializer()
{
  init_port_set[3] = *MEMORY[0x1E69E9840];
  _xpc_ktrace_pid0(687865900);
  _xpc_install_dispatch_hooks();
  v0 = MEMORY[0x1E69E99F0];
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v1 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v1 = _os_alloc_once();
  }

  if (*MEMORY[0x1E69E5908])
  {
    xpc_get_class4NSXPC(OS_xpc_uint64);
    _objc_registerTaggedPointerClass();
    xpc_get_class4NSXPC(OS_xpc_int64);
    _objc_registerTaggedPointerClass();
  }

  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 112) = xpc_array_create(0, 0);
  *(v1 + 104) = 0;
  *(v1 + 41) = 1;
  v2 = getenv("XPC_FLAGS");
  if (!v2)
  {
    v2 = "0x0";
  }

  v3 = strtoll(v2, 0, 16);
  *(v1 + 8) = v3;
  v4 = getenv("XPC_NULL_BOOTSTRAP");
  if (v4 && *v4 == 49 && !v4[1])
  {
    v3 |= 2uLL;
    *(v1 + 8) = v3;
  }

  if ((v3 & 0x4000) != 0)
  {
    *(v1 + 208) = 1;
  }

  v5 = getenv("XPC_SERVICES_UNAVAILABLE");
  if (v5 && *v5 == 49 && !v5[1])
  {
    *(v1 + 8) = v3 | 0x80;
  }

  if (getsectbyname("__TEXT", "__launchd"))
  {
    *v1 = 1;
  }

  else if (getsectbyname("__TEXT", "__xpcproxy"))
  {
    *(v1 + 1) = 1;
  }

  else if (getsectbyname("__TEXT", "__launchctl"))
  {
    *(v1 + 2) = 1;
  }

  else if (*(v1 + 8))
  {
    *(v1 + 3) = 1;
  }

  if (getsectbyname("__TEXT", "__libxpcunittest") && MEMORY[0xFFFFF4084])
  {
    *(v1 + 88) = 1;
  }

  v6 = *(v1 + 8);
  if ((v6 & 2) != 0)
  {
    *(v1 + 4) = 1;
    _xpc_neuter_potential_reentrancy(1);
    v6 = *(v1 + 8);
    if ((v6 & 0x2000) == 0)
    {
LABEL_30:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_31;
      }

LABEL_35:
      xpc_track_activity();
      goto LABEL_36;
    }
  }

  else if ((v6 & 0x2000) == 0)
  {
    goto LABEL_30;
  }

  *(v1 + 192) = 1;
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  if ((v6 & 8) != 0)
  {
    xpc_transactions_enable();
  }

LABEL_36:
  if (getenv("XPC_DEBUG_SERVICES"))
  {
    *(v1 + 40) = 1;
  }

  if ((*v1 & 1) == 0 && (*(v1 + 4) & 1) == 0)
  {
    if (*(v1 + 1) == 1)
    {
      if (*(v0 + 16) == -1)
      {
        v7 = *(v0 + 24);
      }

      else
      {
        v7 = _os_alloc_once();
      }

      init_port_set[0] = 0;
      init_port_setCnt = 0;
      v8 = mach_ports_lookup(*MEMORY[0x1E69E9A60], init_port_set, &init_port_setCnt);
      if (v8)
      {
        _libxpc_initializer_cold_3(v8);
      }

      v9 = init_port_setCnt;
      if (!init_port_setCnt)
      {
        _libxpc_initializer_cold_6();
      }

      v10 = init_port_set[0];
      v11 = *init_port_set[0];
      *(v7 + 16) = *init_port_set[0];
      if ((v11 + 1) <= 1)
      {
        _libxpc_initializer_cold_5();
      }

      if (v9 != 1)
      {
        *(v7 + 20) = v10[1];
      }

      mig_deallocate(v10, 4 * v9);
      if (*(v7 + 9))
      {
        v12 = *(v7 + 16);
        *MEMORY[0x1E69E99F8] = v12;
        _xpc_mach_port_retain_send(v12);
      }

      _xpc_create_bootstrap_pipe();
      goto LABEL_70;
    }

    v13 = *(v0 + 16);
    if (*(v1 + 3) == 1)
    {
      if (v13 == -1)
      {
        v14 = *(v0 + 24);
        v15 = v14;
      }

      else
      {
        v15 = _os_alloc_once();
        v14 = *(v0 + 24);
      }

      v16 = MEMORY[0x1E69E9A60];
      if (!task_get_special_port(*MEMORY[0x1E69E9A60], 4, (v14 + 16)))
      {
        v17 = *(v14 + 16);
        *MEMORY[0x1E69E99F8] = v17;
        _xpc_mach_port_retain_send(v17);
        if ((*(v14 + 8) & 4) != 0)
        {
          init_port_set[0] = 0;
          init_port_setCnt = 0;
          v18 = mach_ports_lookup(*v16, init_port_set, &init_port_setCnt);
          if (v18)
          {
            _libxpc_initializer_cold_3(v18);
          }

          v19 = init_port_set[0];
          if (*init_port_set[0] + 1 >= 2)
          {
            *(v14 + 32) = _xpc_endpoint_create(*init_port_set[0]);
            v19 = init_port_set[0];
          }

          mig_deallocate(v19, 4 * init_port_setCnt);
        }

        _xpc_create_bootstrap_pipe();
        _xpc_collect_environment();
        _xpc_collect_images();
        if ((*(v15 + 16) + 1) <= 1)
        {
          *(v15 + 8) |= 2uLL;
          *(v15 + 4) = 1;
        }

        v20 = 0;
LABEL_69:
        _xpc_early_init(v20);
        goto LABEL_70;
      }

      special_port = _libxpc_initializer_cold_2();
    }

    else
    {
      if (v13 == -1)
      {
        v21 = *(v0 + 24);
        v22 = v21;
      }

      else
      {
        v22 = _os_alloc_once();
        v21 = *(v0 + 24);
      }

      special_port = task_get_special_port(*MEMORY[0x1E69E9A60], 4, (v21 + 16));
      if (!special_port)
      {
        v24 = *(v21 + 16);
        *MEMORY[0x1E69E99F8] = v24;
        _xpc_mach_port_retain_send(v24);
        _xpc_create_bootstrap_pipe();
        _xpc_collect_environment();
        _xpc_collect_images();
        if ((*(v22 + 16) + 1) <= 1)
        {
          *(v22 + 8) |= 2uLL;
          *(v22 + 4) = 1;
        }

        v20 = 1;
        goto LABEL_69;
      }
    }

    _libxpc_initializer_cold_1(special_port);
  }

LABEL_70:
  v25 = getenv("XPC_FLAGS");
  if (v25)
  {
    v26 = v25;
    v27 = *(v1 + 8) & 0x82;
    memset(init_port_set, 0, 24);
    snprintf(init_port_set, 0x18uLL, "0x%llx", v27);
    if (strcmp(init_port_set, v26))
    {
      setenv("XPC_FLAGS", init_port_set, 1);
    }
  }

  *(v1 + 137) = 1;
  result = _xpc_ktrace_pid0(687865904);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xpc_atfork_prepare()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    result = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    result = _os_alloc_once();
  }

  if ((*result & 1) == 0)
  {
    init_port_set = *(result + 16);
    return mach_ports_register(*MEMORY[0x1E69E9A60], &init_port_set, 1u);
  }

  return result;
}

uint64_t xpc_atfork_child()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  *(v0 + 41) = 0;
  init_port_set = 0;
  init_port_setCnt = 0;
  v1 = MEMORY[0x1E69E9A60];
  v2 = mach_ports_lookup(*MEMORY[0x1E69E9A60], &init_port_set, &init_port_setCnt);
  v3 = init_port_setCnt;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = init_port_setCnt == 0;
  }

  if (!v4)
  {
    v5 = init_port_set;
    *(v0 + 16) = *init_port_set;
    mig_deallocate(v5, 4 * v3);
    v6 = *(v0 + 24);
    if (v6)
    {
      xpc_pipe_invalidate(v6);
      xpc_release(*(v0 + 24));
    }

    *(v0 + 24) = xpc_pipe_create_from_port(*(v0 + 16), 4);
  }

  if (getenv("XPC_SERVICE_NAME"))
  {
    setenv("XPC_SERVICE_NAME", "0", 1);
  }

  return task_get_special_port(*v1, 4, MEMORY[0x1E69E99F8]);
}

uint64_t _xpc_is_multithreaded()
{
  if (MEMORY[0x1EEE9AC08])
  {
    return _dispatch_is_multithreaded();
  }

  else
  {
    return 0;
  }
}

int64_t _xpc_bootstrap_services(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", 5uLL);
  v3 = getpid();
  xpc_dictionary_set_uint64(v2, "handle", v3);
  xpc_dictionary_set_value(v2, "paths", a1);
  object = 0;
  v4 = _xpc_domain_routine(800, v2, &object);
  xpc_release(v2);
  if (object)
  {
    xpc_release(object);
  }

  return v4;
}

void _xpc_uncork_domain()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  _xpc_uncork_pid_domain_locked(v0);

  os_unfair_lock_unlock(v0 + 26);
}

void _xpc_uncork_pid_domain_locked(uint64_t a1)
{
  if ((*(a1 + 108) & 1) == 0 && (*(a1 + 4) & 1) == 0 && (*(a1 + 1) & 1) == 0)
  {
    if ((*(a1 + 109) & 1) == 0)
    {
      _xpc_init_pid_domain(a1);
    }

    *(a1 + 108) = 1;
    if ((_xpc_services_unavailable() & 1) == 0)
    {
      v2 = xpc_dictionary_create(0, 0, 0);
      if (xpc_array_get_count(*(a1 + 112)))
      {
        v3 = 0;
        do
        {
          value = xpc_array_get_value(*(a1 + 112), v3);
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 0x40000000;
          applier[2] = ___xpc_uncork_pid_domain_locked_block_invoke;
          applier[3] = &__block_descriptor_tmp_55;
          applier[4] = v2;
          xpc_dictionary_apply(value, applier);
          ++v3;
        }

        while (v3 < xpc_array_get_count(*(a1 + 112)));
      }

      if (xpc_dictionary_get_count(v2))
      {
        _xpc_bootstrap_services(v2);
      }

      xpc_release(v2);
      xpc_release(*(a1 + 112));
      *(a1 + 112) = 0;
      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v5, "type", 5uLL);
      v6 = getpid();
      xpc_dictionary_set_uint64(v5, "handle", v6);
      object = 0;
      _xpc_domain_routine(803, v5, &object);
      if (object)
      {
        xpc_release(object);
      }

      xpc_release(v5);
    }
  }
}

BOOL xpc_is_xpcservice()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if (*(v0 + 3) != 1)
  {
    return 0;
  }

  if (*(v0 + 144) != -1)
  {
    dispatch_once_f((v0 + 144), 0, _fetch_xpcservice_info);
  }

  return *(v0 + 160) != 0;
}

void _fetch_xpcservice_info()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v1, "type", 6uLL);
  xpc_dictionary_set_BOOL(v1, "self", 1);
  xdict = 0;
  v2 = _xpc_service_routine(718, v1, &xdict);
  if (v2)
  {
    _fetch_xpcservice_info_cold_1(v2);
  }

  else
  {
    string = xpc_dictionary_get_string(xdict, "identifier");
    if (string)
    {
      string = _xpc_strdup(string);
    }

    *(v0 + 160) = string;
    value = xpc_dictionary_get_value(xdict, "xpcservice-dict");
    v5 = value;
    if (value)
    {
      xpc_retain(value);
    }

    *(v0 + 152) = v5;
    xpc_release(xdict);
  }

  xpc_release(v1);
}

_xpc_connection_s *xpc_connection_create_bs_service_listener(const char *a1)
{
  service_listener = _xpc_connection_create_service_listener(a1);
  _xpc_register_service_listener_with_handler(service_listener, 0, a1 == 0, 1);
  return service_listener;
}

uint64_t _xpc_connection_create_service_listener(const char *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = _xpc_copy_xpcservice_dictionary();
  if (!v2 || (v3 = v2, xpc_get_type(v2) != OS_xpc_dictionary))
  {
    _xpc_connection_create_service_listener_cold_6();
  }

  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v4 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  if (*(v4 + 144) != -1)
  {
    dispatch_once_f((v4 + 144), 0, _fetch_xpcservice_info);
  }

  v5 = *(v4 + 160);
  if (!v5)
  {
    _xpc_connection_create_service_listener_cold_5();
  }

  v6 = _xpc_strdup(v5);
  if (!v6)
  {
    _xpc_connection_create_service_listener_cold_4();
  }

  v7 = v6;
  if (a1)
  {
    value = xpc_dictionary_get_value(v3, "_AdditionalSubServices");
    if (!value || (v9 = value, xpc_get_type(value) != OS_xpc_dictionary))
    {
      _xpc_connection_create_service_listener_cold_3();
    }

    v10 = xpc_dictionary_get_value(v9, a1);
    if (!v10 || (v11 = v10, xpc_get_type(v10) != OS_xpc_BOOL))
    {
      _xpc_connection_create_service_listener_cold_2();
    }

    if (v11 == &_xpc_BOOL_false)
    {
      _xpc_connection_create_service_listener_cold_1();
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *__str = 0u;
    v16 = 0u;
    snprintf(__str, 0x200uLL, "%s.%s", v7, a1);
    v6 = __str;
  }

  internal_listener = _xpc_connection_create_internal_listener(v6);
  xpc_release(v3);
  free(v7);
  v13 = *MEMORY[0x1E69E9840];
  return internal_listener;
}

void _xpc_register_service_listener_with_handler(xpc_connection_t connection, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___xpc_register_service_listener_with_handler_block_invoke;
    handler[3] = &__block_descriptor_tmp_71;
    handler[4] = connection;
    handler[5] = a2;
    xpc_connection_set_event_handler(connection, handler);
  }

  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v7 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  if (a4 && (*(v7 + 136) & 1) != 0)
  {
    v9 = _xpc_asprintf("must be called before _xpc_start_listeners");
    _xpc_api_misuse(v9);
  }

  if (a3)
  {
    if (*(v7 + 120))
    {
      _xpc_register_service_listener_with_handler_cold_1();
    }

    *(v7 + 120) = xpc_retain(connection);
    if (a4)
    {
      goto LABEL_15;
    }

LABEL_14:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___xpc_register_service_listener_with_handler_block_invoke_2;
    block[3] = &__block_descriptor_tmp_74;
    block[4] = connection;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_15;
  }

  empty = *(v7 + 128);
  if (!empty)
  {
    empty = xpc_array_create_empty();
    *(v7 + 128) = empty;
  }

  xpc_array_append_value(empty, connection);
  if ((a4 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  os_unfair_lock_unlock((v7 + 104));
}

void _xpc_main()
{
  v0 = _xpc_copy_xpcservice_dictionary();
  v1 = v0;
  if (!v0 || xpc_get_type(v0) == OS_xpc_dictionary)
  {
    _xpc_start_listeners();
    _xpc_objc_main(v1);
  }

  qword_1EAF1E800 = "Configuration error: XPCService is not a dictionary.";
  __break(1u);
}

void xpc_handle_service(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v14 = _xpc_asprintf("The evaluator doesn't do anything. Pass NULL.");
    _xpc_api_misuse(v14);
  }

  main = xpc_bundle_create_main();
  info_dictionary = xpc_bundle_get_info_dictionary(main);
  if (!info_dictionary)
  {
    xpc_handle_service_cold_5();
  }

  value = xpc_dictionary_get_value(info_dictionary, "XPCService");
  if (!value || (v8 = value, xpc_get_type(value) != OS_xpc_dictionary))
  {
    xpc_handle_service_cold_4();
  }

  v9 = xpc_dictionary_get_value(v8, "_AdditionalServices");
  if (!v9 || (v10 = v9, xpc_get_type(v9) != OS_xpc_dictionary))
  {
    xpc_handle_service_cold_3();
  }

  v11 = xpc_dictionary_get_value(v10, a1);
  if (!v11 || (v12 = v11, xpc_get_type(v11) != OS_xpc_BOOL))
  {
    xpc_handle_service_cold_2();
  }

  if (v12 == &_xpc_BOOL_false)
  {
    xpc_handle_service_cold_1();
  }

  internal_listener = _xpc_connection_create_internal_listener(a1);
  _xpc_register_service_listener_with_handler(internal_listener, a2, 0, 0);
  xpc_release(internal_listener);

  xpc_release(main);
}

void xpc_handle_subservice(const char *a1, uint64_t a2)
{
  service_listener = _xpc_connection_create_service_listener(a1);
  _xpc_register_service_listener_with_handler(service_listener, a2, 0, 0);

  xpc_release(service_listener);
}

void xpc_main(xpc_connection_handler_t handler)
{
  service_listener = _xpc_connection_create_service_listener(0);
  _xpc_register_service_listener_with_handler(service_listener, handler, 1, 1);
  xpc_release(service_listener);
  _xpc_main();
}

mach_port_context_t _xpc_create_bootstrap_pipe()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  _xpc_mach_port_retain_send(*(v0 + 16));
  result = xpc_pipe_create_from_port(*(v0 + 16), 4);
  *(v0 + 24) = result;
  if (!result)
  {
    _xpc_create_bootstrap_pipe_cold_1();
  }

  return result;
}

void _xpc_collect_environment()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = "HOME";
  v2 = 1u;
  do
  {
    v3 = getenv(v1);
    if (v3)
    {
      xpc_dictionary_set_string(v0, v1, v3);
    }

    v1 = _xpc_interesting_envvars[v2++];
  }

  while (v2 != 8);
  v4 = _NSGetEnviron();
  v5 = **v4;
  if (v5)
  {
    v6 = *v4 + 1;
    do
    {
      _xpc_envdict_putenv(v0, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  _environment = xpc_retain(v0);

  xpc_release(v0);
}

uint64_t _xpc_collect_images()
{
  _xpc_ktrace_pid0(687865908);
  _dyld_register_for_bulk_image_loads();
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  v1 = _xpc_copy_own_bundle();
  v2 = xpc_bundle_copy_services(v1);
  if (v2)
  {
    v3 = v2;
    count = xpc_array_get_count(v2);
    xpc_release(v3);
    if (count)
    {
      empty = xpc_dictionary_create_empty();
      path = xpc_bundle_get_path(v1);
      xpc_dictionary_set_uint64(empty, path, 2uLL);
      xpc_array_set_value(*(v0 + 112), 0xFFFFFFFFFFFFFFFFLL, empty);
      xpc_release(empty);
    }
  }

  xpc_release(v1);
  return _xpc_ktrace_pid0(687865912);
}

void _xpc_early_init(int a1)
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v2 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  if (!a1)
  {
    _xpc_init_pid_domain(v2);
  }

  if (_xpc_is_being_debugged())
  {
    _xpc_uncork_pid_domain_locked(v2);
  }

  os_unfair_lock_unlock((v2 + 104));
}

void _xpc_dyld_image_callback(unsigned int a1, void *a2, const char **a3)
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v6 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  v21 = v6;
  if (*(v6 + 137))
  {
    v7 = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    v8 = _initial_images;
    if (!_initial_images)
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      _initial_images = v8;
    }

    v7 = xpc_retain(v8);
  }

  xdict = v7;
  v9 = getenv("DYLD_IMAGE_SUFFIX");
  v10 = v9;
  if (v9 && !_xpc_equal_strings(v9, "_asan"))
  {
    v11 = 0;
    do
    {
      v12 = v11;
      if (v11 == 3)
      {
        break;
      }

      v13 = _xpc_equal_strings(v10, off_1E74AAD68[v11 + 1]);
      v11 = v12 + 1;
    }

    while (!v13);
    if (v12 >= 3)
    {
      v10 = 0;
    }
  }

  if (_xpc_dyld_image_callback_pred == -1)
  {
    if (!a1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    _xpc_dyld_image_callback_cold_1();
    if (!a1)
    {
      goto LABEL_37;
    }
  }

  v14 = 0;
  v15 = a1;
  do
  {
    if (*a2 != _xpc_dyld_image_callback_executableMH)
    {
      v16 = *a3;
      if (!_xpc_has_prefix(*a3, "/usr/lib") && !_xpc_has_prefix(v16, "/usr/local/lib") && !_xpc_has_suffix(v16, ".dylib"))
      {
        v17 = *a3;
        if (v10 && _xpc_has_suffix(*a3, v10))
        {
          v18 = _xpc_strdup(v17);
          v19 = strlen(v17);
          v18[v19 - strlen(v10)] = 0;
          v17 = v18;
        }

        else
        {
          v18 = 0;
        }

        xpc_dictionary_set_uint64(xdict, v17, 2uLL);
        ++v14;
        free(v18);
      }
    }

    ++a2;
    ++a3;
    --v15;
  }

  while (v15);
  if (v14 && (_xpc_services_unavailable() & 1) == 0 && *(v21 + 137) == 1)
  {
    if (*(MEMORY[0x1E69E99F0] + 16) == -1)
    {
      v20 = *(MEMORY[0x1E69E99F0] + 24);
    }

    else
    {
      v20 = _os_alloc_once();
    }

    os_unfair_lock_lock_with_options();
    if (*(v20 + 108) == 1)
    {
      _xpc_bootstrap_services(xdict);
    }

    else
    {
      xpc_array_set_value(*(v20 + 112), 0xFFFFFFFFFFFFFFFFLL, xdict);
    }

    os_unfair_lock_unlock((v20 + 104));
  }

LABEL_37:

  xpc_release(xdict);
}

uint64_t ___xpc_dyld_image_callback_block_invoke()
{
  result = _dyld_get_prog_image_header();
  _xpc_dyld_image_callback_executableMH = result;
  return result;
}

uint64_t _xpc_copy_own_bundle()
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(buf, 0x400uLL);
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize) || !bufsize)
  {
    _xpc_copy_own_bundle_cold_1(&v2, v4);
  }

  result = xpc_bundle_create(buf, 2u);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *_xpc_init_pid_domain(_BYTE *result)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((result[109] & 1) == 0)
  {
    v1 = result;
    if ((result[4] & 1) == 0 && (result[1] & 1) == 0)
    {
      result[109] = 1;
      _xpc_ktrace_pid0(687865916);
      v2 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v2, "type", 5uLL);
      v3 = getpid();
      xpc_dictionary_set_uint64(v2, "handle", v3);
      _xpc_init_pid_domain_process_initial_images(v1, _initial_images, v2);
      xpc_dictionary_set_value(v2, "environment", _environment);
      v4 = _xpc_copy_own_bundle();
      property = xpc_bundle_get_property(v4, 2);
      if (property)
      {
        xpc_dictionary_set_string(v2, "origin", property);
      }

      xpc_release(v4);
      object = 0;
      v6 = _xpc_domain_routine(802, v2, &object);
      if (object)
      {
        xpc_release(object);
      }

      if (v6 == 32 && (*(v1 + 137) & 1) == 0)
      {
        _xpc_init_pid_domain_cold_1(&v8, v10);
      }

      xpc_release(v2);
      xpc_release(_initial_images);
      _initial_images = 0;
      xpc_release(_environment);
      _environment = 0;
      result = _xpc_ktrace_pid0(687865920);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t _xpc_copy_xpcservice_dictionary()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if (*(v0 + 144) != -1)
  {
    dispatch_once_f((v0 + 144), 0, _fetch_xpcservice_info);
  }

  v1 = *(v0 + 152);
  if (!v1)
  {
    if (*(v0 + 3))
    {
      _xpc_copy_xpcservice_dictionary_cold_2();
    }

    _xpc_copy_xpcservice_dictionary_cold_1();
  }

  return xpc_retain(v1);
}

void ___xpc_register_service_listener_with_handler_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4 = *(a1 + 40);
  if (xpc_get_type(object) == OS_xpc_connection)
  {

    v4(object);
  }

  else
  {
    v3 = xpc_copy_description(object);
    syslog(3, "Bogus event received by listener connection:\n%s", v3);

    free(v3);
  }
}

void _xpc_start_listeners()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  if (*(v0 + 136))
  {
    v8 = _xpc_asprintf("_xpc_start_listeners may only be called once");
    _xpc_api_misuse(v8);
  }

  *(v0 + 136) |= 1u;
  empty = xpc_array_create_empty();
  v2 = *(v0 + 128);
  if (v2)
  {
    count = xpc_array_get_count(*(v0 + 128));
    if (count)
    {
      v4 = count;
      for (i = 0; i != v4; ++i)
      {
        value = xpc_array_get_value(v2, i);
        xpc_array_append_value(empty, value);
      }
    }
  }

  v7 = *(v0 + 120);
  if (v7)
  {
    xpc_array_append_value(empty, v7);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___xpc_start_listeners_block_invoke;
  block[3] = &__block_descriptor_tmp_77;
  block[4] = empty;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  os_unfair_lock_unlock((v0 + 104));
}

void ___xpc_start_listeners_block_invoke(uint64_t a1)
{
  count = xpc_array_get_count(*(a1 + 32));
  if (count)
  {
    v3 = count;
    for (i = 0; i != v3; ++i)
    {
      value = xpc_array_get_value(*(a1 + 32), i);
      _xpc_connection_activate_internal_listener(value);
    }
  }

  v6 = *(a1 + 32);

  xpc_release(v6);
}

uint64_t _xpc_serializer_munmap(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    return _xpc_fd_desc_cold_1();
  }

  return result;
}

size_t _xpc_serializer_debug(uint64_t a1, char *a2, size_t a3)
{
  v6 = *(a1 + 24);
  msg = dispatch_mach_msg_get_msg();
  v8 = *(a1 + 24);
  dispatch_mach_msg_get_msg();
  result = 0;
  if (a3 >= 2)
  {
    if ((*(a1 + 156) & 4) != 0)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    LODWORD(result) = snprintf(a2, a3, ", hdr = %p, hdr size = %lu, graph = %p, graph sz = %lu, out-of-line = %s", msg, 0, *(a1 + 32), *(a1 + 40), v10);
    if (result >= a3)
    {
      return a3 - 1;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void _xpc_serializer_dispose(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    if ((*(a1 + 156) & 2) == 0)
    {
      msg = dispatch_mach_msg_get_msg();
      _xpc_mach_port_cleanup_right(msg->msgh_local_port, (msg->msgh_bits >> 8) & 0x1F);
      mach_msg_destroy(msg);
      v2 = *(a1 + 24);
    }

    dispatch_release(v2);
  }

  _xpc_serializer_cleanup(a1);
}

uint64_t _xpc_serializer_create_for_description()
{
  v0 = _xpc_base_create(OS_xpc_serializer, 136);
  v1 = _xpc_alloc_typed(0x400uLL, 0xB6BD619FuLL);
  *(v0 + 32) = v1;
  *(v0 + 40) = 1024;
  *(v0 + 48) = v1;
  *(v0 + 56) = 1024;
  *(v0 + 64) = _xpc_serializer_free;
  *(v0 + 156) |= 8u;
  return v0;
}

uint64_t _xpc_serializer_create_for_data()
{
  __src = 1108555586;
  v4 = 5;
  v0 = _xpc_base_create(OS_xpc_serializer, 136);
  *(v0 + 40) = 1024;
  v1 = _xpc_alloc_typed(0x400uLL, 0x9B0E3F14uLL);
  *(v0 + 32) = v1;
  v2 = *(v0 + 40);
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 64) = _xpc_serializer_free;
  *(v0 + 156) |= 0x40u;
  _xpc_serializer_append(v0, &__src, 4uLL, 0);
  _xpc_serializer_append(v0, &v4, 4uLL, 0);
  return v0;
}

uint64_t _xpc_serializer_append(uint64_t result, void *__src, size_t __n, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((*(result + 16) & 5) == 1)
  {
    v17 = _xpc_asprintf("Attempt to append to a serializer created from the wire.", __src, __n);
    _xpc_api_misuse(v17);
  }

  if (!__src)
  {
    goto LABEL_12;
  }

  v7 = result;
  v8 = (__n + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4)
  {
    v9 = (__n + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v9 = __n;
  }

  v10 = *(result + 56);
  if (v10 >= v9)
  {
LABEL_9:
    if (a4)
    {
      bzero((*(v7 + 48) + __n), v8 - __n);
    }

    result = memcpy(*(v7 + 48), __src, __n);
    v15 = *(v7 + 56) - v9;
    *(v7 + 48) += v9;
    *(v7 + 56) = v15;
LABEL_12:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  if ((*(result + 156) & 0x48) != 0)
  {
    v11 = *(result + 40);
    v12 = v11 - v10;
    v13 = ((v9 - v10 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 2 * v11;
    v14 = _xpc_realloc_typed(*(result + 32), v11, v13, 0x1CB89060uLL);
    *(v7 + 32) = v14;
    *(v7 + 40) = v13;
    *(v7 + 48) = &v14[v12];
    *(v7 + 56) = v13 - v12;
    goto LABEL_9;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__str = 0u;
  v19 = 0u;
  result = snprintf(__str, 0xA0uLL, "full graph sz = %zu, remaining = %zu, needed = %zu", *(result + 40), v10, v9);
  qword_1EAF1E800 = __str;
  __break(1u);
  return result;
}

uint64_t _xpc_serializer_pack(uint64_t a1, unint64_t a2, unsigned int a3, char a4)
{
  v46 = *MEMORY[0x1E69E9840];
  _xpc_ktrace_pid1(687865860, a2);
  if (_xpc_is_cyclic(a2))
  {
    v39 = _xpc_asprintf("Tried to serialize an object containing a cycle");
    goto LABEL_52;
  }

  v43 = 8;
  v44 = 0;
  v42[0] = a1;
  v42[1] = &v43;
  v42[2] = &v44;
  _xpc_serializer_apply(a2, v42);
  v8 = v43;
  if (12 * v44)
  {
    v9 = 12 * v44 + 28;
  }

  else
  {
    v9 = 24;
  }

  v41 = 0;
  v11 = (a4 & 1) == 0 && (v9 + v43) < 0x3FBD;
  if ((a4 & 2) != 0 || v11)
  {
    *(a1 + 24) = dispatch_mach_msg_create();
    v13 = (v41 + v9);
  }

  else
  {
    v12 = 16;
    if (!v44)
    {
      v12 = 20;
    }

    if ((v9 + v12) > 0x40000)
    {
      _xpc_serializer_pack_cold_1(&v40, v45);
    }

    *(a1 + 24) = dispatch_mach_msg_create();
    *&v45[0] = v8;
    v13 = _xpc_mmap_anon(v45);
    *(a1 + 64) = _xpc_serializer_munmap;
    *(a1 + 156) |= 4u;
  }

  v14 = v44;
  if (v44)
  {
    v15 = 44;
    if ((*(a1 + 156) & 4) == 0)
    {
      v15 = 28;
    }

    *(a1 + 72) = v41 + v15;
    *(a1 + 88) = v14;
  }

  dispatch_set_context(*(a1 + 24), a1);
  *(a1 + 32) = v13;
  *(a1 + 40) = v8;
  *(a1 + 48) = v13;
  *(a1 + 56) = v8;
  if (a3 >= 4)
  {
    _xpc_serializer_pack_cold_3();
  }

  *v13 = dword_1972A7C50[a3];
  v13[1] = 5;
  *(a1 + 48) = v13 + 2;
  *(a1 + 56) = v8 - 8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E69E5910];
    if ((~a2 & 0xC000000000000007) == 0)
    {
      v17 = 0;
    }

    v18 = v17 ^ a2;
    do
    {
      if ((v18 & 7) == *(MEMORY[0x1E69E5900] + v16))
      {
        break;
      }

      ++v16;
    }

    while (v16 != 7);
    v19 = v16 | v18;
    v20 = v16 & 7;
    v21 = (v19 >> 55) + 8;
    if (v20 == 7)
    {
      LODWORD(v20) = v21;
    }

    if (v20 != 12)
    {
      if (v20 == 13)
      {
        extension_vtable = &_OS_xpc_type_int64;
        goto LABEL_39;
      }

      v39 = _xpc_asprintf("Object is not an XPC object");
LABEL_52:
      _xpc_api_misuse(v39);
    }

    extension_vtable = &_OS_xpc_type_uint64;
  }

  else
  {
    Class = object_getClass(a2);
    if (Class < OS_xpc_object || Class > OS_xpc_string_cache || (Class & 7) != 0)
    {
      extension_vtable = _xpc_get_extension_vtable(a2);
    }

    else
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
    }
  }

LABEL_39:
  (*(extension_vtable + 9))(a2, a1);
  v25 = *(a1 + 88);
  v24 = *(a1 + 96);
  if (v24 != v25)
  {
    _xpc_serializer_pack_cold_2(v24, v25, a2);
  }

  v26 = *(a1 + 24);
  msg = dispatch_mach_msg_get_msg();
  *&v45[0] = 0;
  v28 = *(a1 + 24);
  dispatch_mach_msg_get_msg();
  v29 = v45[0];
  v30 = *(a1 + 88) + ((*(a1 + 156) >> 2) & 1);
  if (xpc_get_type(a2) == OS_xpc_dictionary)
  {
    *(a1 + 128) = _xpc_dictionary_extract_importance_voucher(a2);
    transaction = _xpc_dictionary_get_transaction(a2);
    v32 = transaction ? 16 : 0;
    *(a1 + 156) = *(a1 + 156) & 0xEF | v32;
    if (transaction)
    {
      _xpc_dictionary_set_transaction(a2, 0);
    }
  }

  *msg = (v30 != 0) << 31;
  *(msg + 4) = v29;
  *(msg + 8) = xmmword_1972A7D10;
  if (v30)
  {
    *(msg + 24) = v30;
    if ((*(a1 + 156) & 4) != 0)
    {
      *(a1 + 64) = 0;
      v33 = (*(a1 + 40) + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      *(msg + 28) = *(a1 + 32);
      *(msg + 36) = 16777473;
      *(msg + 40) = v33;
    }
  }

  *(a1 + 156) |= 1u;
  v34 = *(a1 + 24);
  v35 = dispatch_mach_msg_get_msg();
  _xpc_ktrace_pid2(687865864, a2, v35);
  v36 = *(a1 + 24);
  result = dispatch_mach_msg_get_msg();
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_serializer_clear_sent_descriptors(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = _xpc_asprintf("Attempt to clear sent descriptors on a serializer created from the wire.");
    goto LABEL_10;
  }

  v1 = *(a1 + 156);
  if ((v1 & 1) == 0)
  {
    v2 = _xpc_asprintf("Attempt to clear sent descriptors on an unpacked serializer.");
LABEL_10:
    _xpc_api_misuse(v2);
  }

  if ((*(a1 + 156) & 4) != 0)
  {
    *(a1 + 64) = 0;
  }

  *(a1 + 156) = v1 | 2;

  _xpc_serializer_cleanup(a1);
}

void _xpc_serializer_cleanup(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    if ((*(a1 + 156) & 0x4C) == 0)
    {
      _xpc_serializer_cleanup_cold_1();
    }

    v2(*(a1 + 32), *(a1 + 40));
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(*(a1 + 80) + 8 * i);
        if (v6)
        {
          _xpc_release(v6);
          v4 = *(a1 + 88);
        }
      }

      v3 = *(a1 + 80);
    }

    free(v3);
    *(a1 + 80) = 0;
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    os_release(v7);
    *(a1 + 128) = 0;
  }

  if ((*(a1 + 156) & 0x10) != 0)
  {
    _xpc_transaction_end();
    *(a1 + 156) &= ~0x10u;
  }
}

uint64_t _xpc_serializer_reap_combined_send_receive(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 156) & 2) == 0)
  {
    _xpc_serializer_reap_combined_send_receive_cold_3(&v4, v5);
  }

  if (*(a1 + 64))
  {
    _xpc_serializer_reap_combined_send_receive_cold_1(&v4, v5);
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    _xpc_serializer_reap_combined_send_receive_cold_2(&v4, v5);
  }

  *(a1 + 24) = 0;
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void _xpc_serializer_destroy(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a1[3] != 1)
  {
    _xpc_serializer_destroy_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x1E69E9840];

  xpc_release(a1);
}

uint64_t _xpc_serializer_append_port(void *a1, void *a2, size_t a3, uint64_t a4, int a5, int a6)
{
  result = _xpc_serializer_append(a1, a2, a3, 1);
  if ((a6 - 16) >= 3)
  {
    if (a6 != 19)
    {
      _xpc_serializer_append_port_cold_2();
    }

    if (!a1[10])
    {
      v11 = a1[11];
      if (v11 >> 61)
      {
        __break(1u);
        return result;
      }

      a1[10] = _xpc_alloc_typed(8 * v11, 0xE147643BuLL);
    }

    result = _xpc_retain(a4);
    *(a1[10] + 8 * a1[12]) = result;
  }

  v12 = a1[12];
  if (v12 >= a1[11])
  {
    _xpc_serializer_append_port_cold_1();
  }

  v13 = a1[9];
  a1[12] = v12 + 1;
  v14 = (v13 + 12 * v12);
  *v14 = a5;
  v14[1] = 0;
  v14[2] = a6 << 16;
  return result;
}

uint64_t _xpc_serializer_pad(uint64_t a1)
{
  v1 = *(a1 + 112) + 1;
  *(a1 + 112) = v1;
  return v1;
}

uint64_t _xpc_serializer_unpad(uint64_t a1)
{
  v1 = *(a1 + 112) - 1;
  *(a1 + 112) = v1;
  return v1;
}

uint64_t _xpc_serializer_get_mach_message_length(uint64_t a1)
{
  v1 = *(a1 + 24);
  dispatch_mach_msg_get_msg();
  return 0;
}

uint64_t _xpc_serializer_reset_mach_message_header(uint64_t a1)
{
  dispatch_release(*(a1 + 24));
  result = dispatch_mach_msg_create();
  *(a1 + 24) = result;
  return result;
}

uint64_t _xpc_connection_reply_callout(uint64_t a1, uint64_t a2)
{
  _xpc_ktrace_pid1(687865937, a2);
  (*(*(a1 + 136) + 16))(*(a1 + 136), a2);
  _xpc_ktrace_pid1(687865938, a2);

  return _os_avoid_tail_call();
}

unsigned int *_xpc_serializer_apply(uint64_t object, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (object < 0)
  {
    v5 = 0;
    v6 = *MEMORY[0x1E69E5910];
    if ((~object & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ object;
    do
    {
      if ((v7 & 7) == *(MEMORY[0x1E69E5900] + v5))
      {
        break;
      }

      ++v5;
    }

    while (v5 != 7);
    v8 = v5 | v7;
    v9 = v5 & 7;
    v10 = ((v8 >> 55) & 0xFE) + 8;
    if (v9 == 7)
    {
      LOWORD(v9) = v10;
    }

    if ((v9 & 0x1FE) != 0xC)
    {
      _xpc_serializer_apply_cold_1();
    }

    v11 = 12;
  }

  else
  {
    v12 = *(object + 16);
    *v4 += *(object + 20) + 4;
    v4 = *(a2 + 16);
    v11 = (v12 >> 1) & 1;
  }

  *v4 += v11;
  if (xpc_get_type(object) == OS_xpc_array)
  {

    return xpc_array_apply_f(object, a2, _xpc_serializer_array_apply);
  }

  else
  {
    result = xpc_get_type(object);
    if (result == OS_xpc_dictionary)
    {

      return xpc_dictionary_apply_f(object, a2, _xpc_serializer_dictionary_apply);
    }
  }

  return result;
}

uint64_t _xpc_serializer_dictionary_apply(const char *a1, void *a2, uint64_t a3)
{
  **(a3 + 8) += (strlen(a1) & 0xFFFFFFFFFFFFFFFCLL) + 4;

  return _xpc_serializer_apply(a2);
}

uint64_t launch_trial_factors_active_reload(xpc_object_t *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  int64 = _launch_trial_factors_routine(1300, v2, &xdict);
  xpc_release(v2);
  if (!int64)
  {
    if (xdict)
    {
      int64 = xpc_dictionary_get_int64(xdict, "reload-error");
      dictionary = xpc_dictionary_get_dictionary(xdict, "errors");
      if (int64)
      {
        *a1 = xpc_retain(dictionary);
      }

      xpc_release(xdict);
    }

    else
    {
      return 118;
    }
  }

  return int64;
}

uint64_t _xpc_mach_send_desc(unsigned int *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v4 = MEMORY[0x1E69E9A60];
  v5 = MEMORY[0x19A8DD090](*MEMORY[0x1E69E9A60], a1[6], 0, &v12);
  if (v5)
  {
    if (v5 == 15)
    {
      v7 = "(none)";
    }

    else if (v5 == 17)
    {
      v6 = MEMORY[0x19A8DD090](*v4, a1[6], 4, &v12);
      v7 = "(invalid)";
      if (!v6)
      {
        v7 = "dead-name";
      }
    }

    else
    {
      v7 = "(invalid)";
    }
  }

  else
  {
    v7 = "send";
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  v8 = snprintf(__str, 0x80uLL, "<%s: %p> { name = %u, right = %s, urefs = %u }", "mach send right", a1, a1[6], v7, v12);
  if (v8 >= 0x7F)
  {
    v9 = 127;
  }

  else
  {
    v9 = v8;
  }

  result = _xpc_serializer_append(a2, __str, (v9 + 1), 0);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_mach_send_serialize(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2 == -2)
  {
    v4 = _xpc_asprintf("Cannot serialize an xpc_mach_send object and use _xpc_mach_send_extract_right at the same time");
    _xpc_api_misuse(v4);
  }

  v5 = 53248;
  return _xpc_serializer_append_port(a2, &v5, 4uLL, a1, v2, 19);
}

uint64_t _xpc_mach_send_deserialize(uint64_t *a1)
{
  v4 = 0;
  if (!_xpc_graph_deserializer_read_port(a1, 17, &v4))
  {
    return 0;
  }

  v1 = v4;
  result = _xpc_base_create(OS_xpc_mach_send, 8);
  v3 = *(result + 16);
  *(result + 24) = v1;
  *(result + 16) = v3 | 3;
  return result;
}

uint64_t _xpc_mach_send_dispose(uint64_t result)
{
  __swp(result, (result + 24));
  if ((result - 1) <= 0xFFFFFFFC)
  {
    result = _xpc_mach_port_release(result);
    if (result)
    {
      return _os_assumes_log();
    }
  }

  return result;
}

uint64_t xpc_mach_send_create_with_disposition(mach_port_name_t name, int a2)
{
  v2 = name;
  if (name - 1 > 0xFFFFFFFD || a2 == 17)
  {
    goto LABEL_13;
  }

  if (a2 == 19)
  {
    send = _xpc_mach_port_retain_send(name);
    if (!send)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a2 != 20)
  {
    v6 = _xpc_asprintf("Invalid disposition");
    _xpc_api_misuse(v6);
  }

  send = _xpc_mach_port_make_send(name);
  if (send)
  {
LABEL_10:
    if (send != 17)
    {
      _os_assumes_log();
    }

    v2 = -1;
  }

LABEL_13:
  result = _xpc_base_create(OS_xpc_mach_send, 8);
  *(result + 16) |= 2u;
  *(result + 24) = v2;
  return result;
}

uint64_t xpc_mach_send_get_right(unsigned int *a1)
{
  if (xpc_get_type(a1) != OS_xpc_mach_send)
  {
    return 0;
  }

  result = a1[6];
  if (result == -2)
  {
    v3 = _xpc_asprintf("Cannot use xpc_mach_send_get_right and _xpc_mach_send_extract_right at the same time");
    _xpc_api_misuse(v3);
  }

  return result;
}

__objc2_class *_xpc_mach_send_extract_right(unsigned int *a1)
{
  result = xpc_get_type(a1);
  if (result != OS_xpc_mach_send)
  {
    return 0;
  }

  __swp(result, a1 + 6);
  if (result == -2)
  {
    v3 = _xpc_asprintf("Cannot call _xpc_mach_send_extract_right twice");
    _xpc_api_misuse(v3);
  }

  return result;
}

uint64_t xpc_mach_send_copy_right(unsigned int *a1)
{
  right = xpc_mach_send_get_right(a1);
  v2 = right;
  if ((right - 1) <= 0xFFFFFFFD)
  {
    v3 = _xpc_mach_port_retain_send(right);
    if (v3 <= 16)
    {
      if (!v3)
      {
        return v2;
      }

      if (v3 == 15)
      {
        xpc_mach_send_copy_right_cold_1();
      }
    }

    else
    {
      if (v3 == 17)
      {
        return 0;
      }

      if (v3 == 19)
      {
        _os_assumes_log();
        return v2;
      }
    }

    _os_assumes_log();
    return 0;
  }

  return v2;
}

xpc_object_t _create_with_format_and_arguments(void *a1, const char *a2, uint64_t a3)
{
  v46 = a3;
  v5 = _xpc_strdup(a2);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2000000000;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2000000000;
  v40 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2000000000;
  v38 = 0;
  v45[3] = v46;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 0x40000000;
  v36[2] = ___create_with_format_and_arguments_block_invoke;
  v36[3] = &unk_1E74AAE10;
  v36[4] = &v41;
  v36[5] = a2;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 0x40000000;
  v35[2] = ___create_with_format_and_arguments_block_invoke_1;
  v35[3] = &unk_1E74AAE38;
  v35[6] = a2;
  v35[7] = v5;
  v35[5] = &v41;
  v35[4] = v36;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 0x40000000;
  v34[2] = ___create_with_format_and_arguments_block_invoke_4;
  v34[3] = &unk_1E74AAE60;
  v34[6] = v5;
  v34[7] = a2;
  v34[5] = &v41;
  v34[4] = v36;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 0x40000000;
  v28 = ___create_with_format_and_arguments_block_invoke_2;
  v29 = &unk_1E74AAE88;
  v32 = &v41;
  v33 = a2;
  v30 = v35;
  v31 = v34;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3002000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3002000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___create_with_format_and_arguments_block_invoke_10;
  v14[3] = &unk_1E74AB040;
  v14[8] = &v21;
  v14[9] = &v15;
  v14[4] = v34;
  v14[5] = v36;
  v14[10] = v45;
  v14[11] = v37;
  v14[12] = v39;
  v14[13] = a2;
  v14[6] = v27;
  v14[7] = &v41;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = ___create_with_format_and_arguments_block_invoke_37;
  v13[3] = &unk_1E74AB068;
  v13[6] = &v41;
  v13[7] = a2;
  v13[4] = v36;
  v13[5] = v14;
  v26 = v13;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___create_with_format_and_arguments_block_invoke_2_40;
  v12[3] = &unk_1E74AB090;
  v12[4] = v27;
  v12[5] = v36;
  v12[11] = v39;
  v12[12] = a2;
  v12[8] = &v21;
  v12[9] = &v15;
  v12[6] = v34;
  v12[7] = &v41;
  v12[10] = v45;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___create_with_format_and_arguments_block_invoke_44;
  v11[3] = &unk_1E74AB0B8;
  v11[6] = &v41;
  v11[7] = a2;
  v11[4] = v36;
  v11[5] = v12;
  v20 = v11;
  ___create_with_format_and_arguments_block_invoke(v36, 0);
  if (a2[v42[3]] == 123)
  {
    if (a1)
    {
      reply = xpc_dictionary_create_reply(a1);
    }

    else
    {
      reply = xpc_dictionary_create(0, 0, 0);
    }

    v7 = reply;
    (*(v16[5] + 16))();
  }

  else
  {
    if (a1)
    {
      v10 = _xpc_asprintf("Reply format must specify a dictionary!");
      _xpc_api_misuse(v10);
    }

    v7 = xpc_array_create(0, 0);
    if (a2[v42[3]] != 91)
    {
      v8 = v28(v27);
      xpc_array_set_string(v7, 0xFFFFFFFFFFFFFFFFLL, v8);
    }

    (*(v22[5] + 16))();
  }

  free(v5);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(v45, 8);
  return v7;
}

uint64_t ___create_with_format_and_arguments_block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 24);
    if (*(*(a1 + 40) + v4) != a2)
    {
      ___create_with_format_and_arguments_block_invoke_cold_1(&v11, v12);
    }

    *(v3 + 24) = v4 + 1;
  }

  v5 = MEMORY[0x1E69E9830];
  while (1)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    v8 = *(*(a1 + 40) + v7);
    if ((v8 & 0x80000000) != 0)
    {
      break;
    }

    result = *(v5 + 4 * v8 + 60) & 0x4000;
    if (!result)
    {
      goto LABEL_10;
    }

LABEL_9:
    *(v6 + 24) = v7 + 1;
  }

  result = __maskrune(v8, 0x4000uLL);
  if (result)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___create_with_format_and_arguments_block_invoke_1(void *a1, unsigned __int8 a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 24);
  if (*(v2 + v4) != a2)
  {
    ___create_with_format_and_arguments_block_invoke_cold_1(&v17, v18);
  }

  *(v3 + 24) = v4 + 1;
  v5 = a1[7];
  v6 = *(a1[5] + 8);
  v9 = *(v6 + 24);
  v7 = (v6 + 24);
  v8 = v9;
  v10 = *(v2 + v9);
  if (!*(v2 + v9) || v10 == a2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v8;
    do
    {
      *v7 = v11 + 1;
      v12 = *(a1[5] + 8);
      v13 = *(v12 + 24);
      v7 = (v12 + 24);
      v11 = v13;
      v14 = *(v2 + v13);
    }

    while (*(v2 + v13) && v14 != a2);
  }

  *(v5 + v11) = 0;
  (*(a1[4] + 16))();
  v15 = *MEMORY[0x1E69E9840];
  return v5 + v8;
}

uint64_t ___create_with_format_and_arguments_block_invoke_4(void *a1)
{
  v2 = a1[6];
  v3 = *(*(a1[5] + 8) + 24);
  v4 = MEMORY[0x1E69E9830];
  for (i = v3; ; i = *(*(a1[5] + 8) + 24))
  {
    v6 = a1[7];
    v7 = *(v6 + i);
    if ((v7 & 0x80000000) != 0)
    {
      if (__maskrune(*(v6 + i), 0x500uLL))
      {
        goto LABEL_8;
      }
    }

    else if ((*(v4 + 4 * v7 + 60) & 0x500) != 0)
    {
      goto LABEL_8;
    }

    if (!v7 || !memchr("!-_;./?", v7, 8uLL))
    {
      break;
    }

LABEL_8:
    ++*(*(a1[5] + 8) + 24);
  }

  *(a1[6] + *(*(a1[5] + 8) + 24)) = 0;
  (*(a1[4] + 16))();
  return v2 + v3;
}

uint64_t ___create_with_format_and_arguments_block_invoke_2(void *a1)
{
  if (v2)
  {
    v3 = *v2;
    v4 = *(a1[4] + 16);
    v5 = a1[4];

    return v4(v5, v3);
  }

  else
  {
    v7 = *(a1[5] + 16);

    return v7();
  }
}

void ___create_with_format_and_arguments_block_invoke_10(void *a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 24);
  v6 = *(a1[13] + v5);
  switch(v6)
  {
    case '%':
      *(v4 + 24) = v5 + 1;
      v8 = a1[4];
      v9 = (*(a1[4] + 16))();
      v10 = strlen(v9);
      if (!v10)
      {
        ___create_with_format_and_arguments_block_invoke_10_cold_1(&v63, v64);
      }

      v11 = v10;
      v12 = *(*(a1[7] + 8) + 24);
      v13 = *(a1[13] + v12);
      if (*(a1[13] + v12))
      {
        if (v13 == 42)
        {
          v14 = 0;
        }

        else
        {
          if (v13 != 43)
          {
            v17 = 0;
            v19 = 1;
LABEL_17:
            v20 = xpc_format_specifiers_lookup(v9, v11);
            if (!v20)
            {
              v31 = _xpc_asprintf("Invalid format specifier!");
              goto LABEL_64;
            }

            v21 = v20[2];
            if (v21 > 5)
            {
              if (v21 <= 7)
              {
                if (v21 == 6)
                {
                  if ((v19 & 1) == 0)
                  {
                    v31 = _xpc_asprintf("Invalid rest suffix for 'fd' format specifier!");
                    goto LABEL_64;
                  }

                  v22 = v47;
                  v23 = v46;
                  v46[0] = MEMORY[0x1E69E9820];
                  v46[1] = 0x40000000;
                  v47[0] = ___create_with_format_and_arguments_block_invoke_6;
                  v47[1] = &unk_1E74AAF78;
                  v24 = a1[11];
                  v47[2] = a1[10];
                  v47[3] = v24;
                  v47[4] = a2;
                }

                else
                {
                  if ((v19 & 1) == 0)
                  {
                    v31 = _xpc_asprintf("Invalid rest suffix for 'int{64}' format specifier!");
                    goto LABEL_64;
                  }

                  v22 = v44;
                  v26 = v20[1] == 2;
                  v23 = v43;
                  v43[0] = MEMORY[0x1E69E9820];
                  v43[1] = 0x40000000;
                  v44[0] = ___create_with_format_and_arguments_block_invoke_7;
                  v44[1] = &unk_1E74AAFA0;
                  v45 = v26;
                  v24 = a1[11];
                  v44[2] = a1[10];
                  v44[3] = v24;
                  v44[4] = a2;
                }

                goto LABEL_42;
              }

              switch(v21)
              {
                case 8:
                  v22 = v40;
                  v23 = v39;
                  v39[0] = MEMORY[0x1E69E9820];
                  v39[1] = 0x40000000;
                  v40[0] = ___create_with_format_and_arguments_block_invoke_8;
                  v40[1] = &unk_1E74AAFC8;
                  v40[2] = a1[10];
                  v42 = a2;
                  v25 = *(a1 + 11);
                  v41 = v25;
                  break;
                case 9:
                  if ((v19 & 1) == 0)
                  {
                    v31 = _xpc_asprintf("Invalid rest suffix for 'uint{64}' format specifier!");
                    goto LABEL_64;
                  }

                  v22 = v37;
                  v30 = v20[1] == 2;
                  v23 = v36;
                  v36[0] = MEMORY[0x1E69E9820];
                  v36[1] = 0x40000000;
                  v37[0] = ___create_with_format_and_arguments_block_invoke_9;
                  v37[1] = &unk_1E74AAFF0;
                  v38 = v30;
                  v24 = a1[11];
                  v37[2] = a1[10];
                  v37[3] = v24;
                  v37[4] = a2;
LABEL_42:
                  *(*(v24 + 8) + 24) = 0;
                  do
                  {
                    (*v22)(v23);
                    if (v19)
                    {
                      goto LABEL_46;
                    }
                  }

                  while (*(*(a1[12] + 8) + 24) != 1);
                  if (*v17 != 43)
                  {
                    goto LABEL_47;
                  }

LABEL_46:
                  if (*(*(a1[11] + 8) + 24))
                  {
                    goto LABEL_47;
                  }

                  v31 = _xpc_asprintf("Missing required format arg!");
LABEL_64:
                  _xpc_api_misuse(v31);
                case 10:
                  v22 = v33;
                  v23 = v32;
                  v32[0] = MEMORY[0x1E69E9820];
                  v32[1] = 0x40000000;
                  v33[0] = ___create_with_format_and_arguments_block_invoke_10;
                  v33[1] = &unk_1E74AB018;
                  v33[2] = a1[10];
                  v35 = a2;
                  v25 = *(a1 + 11);
                  v34 = v25;
                  break;
                default:
LABEL_59:
                  v23 = 0;
                  v24 = a1[11];
                  v22 = 16;
                  goto LABEL_42;
              }
            }

            else
            {
              if (v21 > 2)
              {
                if (v21 != 3)
                {
                  if (v21 == 4)
                  {
                    if ((v19 & 1) == 0)
                    {
                      v31 = _xpc_asprintf("Invalid rest suffix for 'date' format specifier!");
                      goto LABEL_64;
                    }

                    v22 = v51;
                    v23 = v50;
                    v50[0] = MEMORY[0x1E69E9820];
                    v50[1] = 0x40000000;
                    v51[0] = ___create_with_format_and_arguments_block_invoke_4;
                    v51[1] = &unk_1E74AAF28;
                    v24 = a1[11];
                    v51[2] = a1[10];
                    v51[3] = v24;
                    v51[4] = a2;
                  }

                  else
                  {
                    if ((v19 & 1) == 0)
                    {
                      v31 = _xpc_asprintf("Invalid rest suffix for 'double' format specifier!");
                      goto LABEL_64;
                    }

                    v22 = v49;
                    v23 = v48;
                    v48[0] = MEMORY[0x1E69E9820];
                    v48[1] = 0x40000000;
                    v49[0] = ___create_with_format_and_arguments_block_invoke_5;
                    v49[1] = &unk_1E74AAF50;
                    v24 = a1[11];
                    v49[2] = a1[10];
                    v49[3] = v24;
                    v49[4] = a2;
                  }

                  goto LABEL_42;
                }

                v22 = v53;
                v23 = v52;
                v52[0] = MEMORY[0x1E69E9820];
                v52[1] = 0x40000000;
                v53[0] = ___create_with_format_and_arguments_block_invoke_3;
                v53[1] = &unk_1E74AAF00;
                v53[2] = a1[10];
                v55 = a2;
                v25 = *(a1 + 11);
                v54 = v25;
                goto LABEL_41;
              }

              if (v21 != 1)
              {
                if (v21 == 2)
                {
                  if ((v19 & 1) == 0)
                  {
                    v31 = _xpc_asprintf("Invalid rest suffix for 'BOOL' format specifier!");
                    goto LABEL_64;
                  }

                  v22 = v57;
                  v23 = v56;
                  v56[0] = MEMORY[0x1E69E9820];
                  v56[1] = 0x40000000;
                  v57[0] = ___create_with_format_and_arguments_block_invoke_2_18;
                  v57[1] = &unk_1E74AAED8;
                  v57[4] = a2;
                  v24 = a1[11];
                  v57[2] = a1[10];
                  v57[3] = v24;
                  goto LABEL_42;
                }

                goto LABEL_59;
              }

              v22 = v59;
              v27 = v20[1] == 1;
              v23 = v58;
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 0x40000000;
              v59[0] = ___create_with_format_and_arguments_block_invoke_14;
              v59[1] = &unk_1E74AAEB0;
              v59[2] = a1[10];
              v61 = a2;
              v62 = v27;
              v25 = *(a1 + 11);
              v60 = v25;
            }

LABEL_41:
            v24 = v25;
            goto LABEL_42;
          }

          v14 = 1u;
        }
      }

      else
      {
        v14 = 2u;
      }

      v17 = &asc_1972AC5CC[v14];
      v18 = asc_1972AC5CC[v14];
      (*(a1[5] + 16))();
      v19 = 0;
      goto LABEL_17;
    case '{':
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_array_set_value(a2, 0xFFFFFFFFFFFFFFFFLL, v7);
      (*(*(*(a1[9] + 8) + 40) + 16))();
      goto LABEL_6;
    case '[':
      v7 = xpc_array_create(0, 0);
      xpc_array_set_value(a2, 0xFFFFFFFFFFFFFFFFLL, v7);
      (*(*(*(a1[8] + 8) + 40) + 16))();
LABEL_6:
      xpc_release(v7);
      goto LABEL_47;
  }

  v15 = a1[6];
  v16 = (*(a1[6] + 16))();
  xpc_array_set_string(a2, 0xFFFFFFFFFFFFFFFFLL, v16);
LABEL_47:
  v28 = *(a1[13] + *(*(a1[7] + 8) + 24));
  if (v28 > 0x2B)
  {
    if (v28 != 93)
    {
      if (v28 != 44)
      {
        goto LABEL_61;
      }

      (*(a1[5] + 16))();
    }
  }

  else if (*(a1[13] + *(*(a1[7] + 8) + 24)) && v28 != 41)
  {
LABEL_61:
    ___create_with_format_and_arguments_block_invoke_10_cold_2(&v63, v64);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void ___create_with_format_and_arguments_block_invoke_14(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  v4 = *v3;
  if (*v3)
  {
    xpc_array_set_value(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, *v3);
    ++*(*(*(a1 + 40) + 8) + 24);
    if (*(a1 + 64) == 1)
    {

      xpc_release(v4);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void ___create_with_format_and_arguments_block_invoke_2_18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 2;
  xpc_array_set_BOOL(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, *v3 != 0);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void ___create_with_format_and_arguments_block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  v4 = *v3;
  if (*v3)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = v6 + 1;
    xpc_array_set_data(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, v4, *v6);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void ___create_with_format_and_arguments_block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  xpc_array_set_date(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, *v3);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void ___create_with_format_and_arguments_block_invoke_5(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  xpc_array_set_double(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, *v3);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void ___create_with_format_and_arguments_block_invoke_6(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 2;
  xpc_array_set_fd(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, *v3);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void ___create_with_format_and_arguments_block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  if (*(a1 + 56) == 1)
  {
    *(v2 + 24) = v3 + 1;
    v4 = *v3;
  }

  else
  {
    *(v2 + 24) = v3 + 1;
    v4 = *v3;
  }

  xpc_array_set_int64(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, v4);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void ___create_with_format_and_arguments_block_invoke_8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (*v3)
  {
    xpc_array_set_string(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, *v3);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void ___create_with_format_and_arguments_block_invoke_9(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  if (*(a1 + 56) == 1)
  {
    *(v2 + 24) = v3 + 1;
    v4 = *v3;
  }

  else
  {
    *(v2 + 24) = v3 + 1;
    v4 = *v3;
  }

  xpc_array_set_uint64(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, v4);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void ___create_with_format_and_arguments_block_invoke_10(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 24);
  *(v2 + 24) = v3 + 1;
  if (*v3)
  {
    xpc_array_set_uuid(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL, *v3);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t ___create_with_format_and_arguments_block_invoke_37(void *a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  (*(a1[4] + 16))();
  while (*(a1[7] + *(*(a1[6] + 8) + 24)) != a3[1])
  {
    (*(a1[5] + 16))();
  }

  v6 = *(a1[4] + 16);

  return v6();
}

void ___create_with_format_and_arguments_block_invoke_2_40(void *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 24);
  v7 = *(a1[12] + v6);
  switch(v7)
  {
    case '%':
      *(v5 + 24) = v6 + 1;
      v9 = (*(a1[6] + 16))();
      v10 = strlen(v9);
      if (!v10)
      {
        ___create_with_format_and_arguments_block_invoke_10_cold_1(&v50, v51);
      }

      v11 = *(*(a1[7] + 8) + 24);
      v12 = *(a1[12] + v11);
      if (*(a1[12] + v11))
      {
        if (v12 == 42)
        {
          v47 = 0;
        }

        else
        {
          if (v12 != 43)
          {
            v13 = xpc_format_specifiers_lookup(v9, v10);
            if (!v13)
            {
              v49 = _xpc_asprintf("Invalid format specifier!");
              goto LABEL_61;
            }

            v14 = v13[2];
            if (v14 > 5)
            {
              if (v14 <= 7)
              {
                if (v14 == 6)
                {
                  v29 = *(a1[10] + 8);
                  v30 = *(v29 + 24);
                  *(v29 + 24) = v30 + 2;
                  xpc_dictionary_set_fd(a2, v4, *v30);
                }

                else
                {
                  v22 = *(a1[10] + 8);
                  v23 = *(v22 + 24);
                  if (v13[1] == 2)
                  {
                    *(v22 + 24) = v23 + 1;
                    v24 = *v23;
                  }

                  else
                  {
                    *(v22 + 24) = v23 + 1;
                    v24 = *v23;
                  }

                  xpc_dictionary_set_int64(a2, v4, v24);
                }

                goto LABEL_46;
              }

              if (v14 != 8)
              {
                if (v14 == 9)
                {
                  v40 = *(a1[10] + 8);
                  v41 = *(v40 + 24);
                  if (v13[1] == 2)
                  {
                    *(v40 + 24) = v41 + 1;
                    v42 = *v41;
                  }

                  else
                  {
                    *(v40 + 24) = v41 + 1;
                    v42 = *v41;
                  }

                  xpc_dictionary_set_uint64(a2, v4, v42);
                  goto LABEL_46;
                }

                if (v14 == 10)
                {
                  v18 = *(a1[10] + 8);
                  v19 = *(v18 + 24);
                  *(v18 + 24) = v19 + 1;
                  if (!*v19)
                  {
                    goto LABEL_38;
                  }

                  xpc_dictionary_set_uuid(a2, v4, *v19);
                }

LABEL_46:
                if (*(*(a1[11] + 8) + 24) != 1)
                {
                  goto LABEL_47;
                }

                v49 = _xpc_asprintf("Null required format arg!");
LABEL_61:
                _xpc_api_misuse(v49);
              }

              v36 = *(a1[10] + 8);
              v37 = *(v36 + 24);
              *(v36 + 24) = v37 + 1;
              if (*v37)
              {
                xpc_dictionary_set_string(a2, v4, *v37);
                goto LABEL_46;
              }
            }

            else if (v14 <= 2)
            {
              if (v14 != 1)
              {
                if (v14 == 2)
                {
                  v20 = *(a1[10] + 8);
                  v21 = *(v20 + 24);
                  *(v20 + 24) = v21 + 2;
                  xpc_dictionary_set_BOOL(a2, v4, *v21 != 0);
                }

                goto LABEL_46;
              }

              v25 = v13[1];
              v26 = *(a1[10] + 8);
              v27 = *(v26 + 24);
              *(v26 + 24) = v27 + 1;
              v28 = *v27;
              if (*v27)
              {
                xpc_dictionary_set_value(a2, v4, *v27);
                if (v25 == 1)
                {
                  xpc_release(v28);
                }

                goto LABEL_46;
              }
            }

            else
            {
              if (v14 != 3)
              {
                if (v14 == 4)
                {
                  v38 = *(a1[10] + 8);
                  v39 = *(v38 + 24);
                  *(v38 + 24) = v39 + 1;
                  xpc_dictionary_set_date(a2, v4, *v39);
                }

                else
                {
                  v15 = *(a1[10] + 8);
                  v16 = *(v15 + 24);
                  *(v15 + 24) = v16 + 1;
                  xpc_dictionary_set_double(a2, v4, *v16);
                }

                goto LABEL_46;
              }

              v31 = *(a1[10] + 8);
              v32 = *(v31 + 24);
              *(v31 + 24) = v32 + 1;
              v33 = *v32;
              if (*v32)
              {
                v34 = *(a1[10] + 8);
                v35 = *(v34 + 24);
                *(v34 + 24) = v35 + 1;
                xpc_dictionary_set_data(a2, v4, v33, *v35);
                goto LABEL_46;
              }
            }

LABEL_38:
            *(*(a1[11] + 8) + 24) = 1;
            goto LABEL_46;
          }

          v47 = 1u;
        }
      }

      else
      {
        v47 = 2u;
      }

      v48 = asc_1972AC5CC[v47];
      (*(a1[5] + 16))();
      v49 = _xpc_asprintf("Invalid rest suffix in dictionary element format specifier!");
      goto LABEL_61;
    case '{':
      v8 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_value(a2, v4, v8);
      (*(*(*(a1[9] + 8) + 40) + 16))();
      goto LABEL_6;
    case '[':
      v8 = xpc_array_create(0, 0);
      xpc_dictionary_set_value(a2, v4, v8);
      (*(*(*(a1[8] + 8) + 40) + 16))();
LABEL_6:
      xpc_release(v8);
      goto LABEL_47;
  }

  v17 = (*(a1[4] + 16))();
  xpc_dictionary_set_string(a2, v4, v17);
LABEL_47:
  v43 = *(a1[12] + *(*(a1[7] + 8) + 24));
  if (v43 == 44)
  {
    v44 = *(a1[5] + 16);
    v45 = *MEMORY[0x1E69E9840];

    v44();
  }

  else
  {
    if (v43 != 125)
    {
      ___create_with_format_and_arguments_block_invoke_2_40_cold_2(&v50, v51);
    }

    v46 = *MEMORY[0x1E69E9840];
  }
}

uint64_t ___create_with_format_and_arguments_block_invoke_44(void *a1)
{
  (*(a1[4] + 16))();
  while (*(a1[7] + *(*(a1[6] + 8) + 24)) != 125)
  {
    (*(a1[5] + 16))();
  }

  v2 = *(a1[4] + 16);

  return v2();
}

int64_t launch_add_external_service(int a1, const char *a2, void *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "type", 5uLL);
  xpc_dictionary_set_uint64(v6, "handle", a1);
  xpc_dictionary_set_string(v6, "path", a2);
  xpc_dictionary_set_value(v6, "overlay", a3);
  object = 0;
  v7 = _xpc_domain_routine(831, v6, &object);
  if (!v7)
  {
    xpc_release(object);
  }

  xpc_release(v6);
  return v7;
}

void launch_remove_external_service(const char *a1, const char *a2, NSObject *a3, const void *a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "type", 1uLL);
  xpc_dictionary_set_uint64(v8, "handle", 0);
  xpc_dictionary_set_string(v8, "name", a1);
  if (a2)
  {
    xpc_dictionary_set_string(v8, "version", a2);
  }

  v9 = _xpc_mach_port_allocate(0x1001u, 1u, launch_remove_external_service);
  v10 = v9;
  v11 = _xpc_event_routine_async(832, v8, v9);
  if (v11)
  {
    v12 = v11;
    if (_xpc_mach_port_close_recv(v10, 0, launch_remove_external_service))
    {
      _os_assumes_log();
    }

    v13 = _xpc_alloc_typed(0x18uLL, 0x10A00408A00E5F2uLL);
    v13[2] = v12;
    *(v13 + 2) = _xpc_Block_copy_impl(a4);
    dispatch_async_f(a3, v13, _deliver_error);
  }

  else
  {
    v14 = _xpc_alloc_typed(0x18uLL, 0x10A00408A00E5F2uLL);
    v15 = dispatch_source_create(MEMORY[0x1E69E96D8], v10, 0, a3);
    dispatch_set_context(v15, v14);
    *v14 = v15;
    v14[2] = _xpc_Block_copy_impl(a4);
    dispatch_source_set_event_handler_f(v15, _removal_reply_event);
    dispatch_source_set_mandatory_cancel_handler_f();
    dispatch_activate(v15);
  }

  xpc_release(v8);
}

void _deliver_error(uint64_t a1)
{
  v2 = *(a1 + 16);
  v2[2](v2, *(a1 + 8));
  _Block_release(v2);

  free(a1);
}

void _removal_reply_event(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  handle = dispatch_source_get_handle(*a1);
  xdict = 0;
  int64 = xpc_pipe_receive(handle, &xdict, 0);
  if (!int64)
  {
    int64 = xpc_dictionary_get_int64(xdict, "error");
    xpc_release(xdict);
  }

  v3[2](v3, int64);
  dispatch_set_context(v2, v2);
  dispatch_source_cancel(v2);
  _Block_release(v3);
  free(a1);
}

void _removal_reply_cancel(NSObject *a1)
{
  handle = dispatch_source_get_handle(a1);
  if (_xpc_mach_port_close_recv(handle, 0, launch_remove_external_service))
  {
    _os_assumes_log();
  }

  dispatch_release(a1);
}

xpc_object_t launch_copy_extension_properties(uint64_t a1)
{
  v1 = _xpc_connection_copy_attrs(a1, -1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (xpc_dictionary_get_BOOL(v1, "extension"))
  {
    v3 = _translate_attrs(v2);
  }

  else
  {
    v3 = 0;
  }

  xpc_release(v2);
  return v3;
}

xpc_object_t _translate_attrs(void *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  string = xpc_dictionary_get_string(a1, "path");
  if (string)
  {
    xpc_dictionary_set_string(v2, "XPCExtensionPath", string);
  }

  v4 = xpc_dictionary_get_string(a1, "bundle-id");
  if (v4)
  {
    xpc_dictionary_set_string(v2, "XPCExtensionBundleIdentifier", v4);
  }

  v5 = xpc_dictionary_get_string(a1, "version");
  if (v5)
  {
    xpc_dictionary_set_string(v2, "XPCExtensionBundleVersion", v5);
  }

  v6 = xpc_dictionary_get_string(a1, "XPCExtensionHostBundleIdentifier");
  if (v6)
  {
    xpc_dictionary_set_string(v2, "XPCExtensionHostBundleIdentifier", v6);
  }

  int64 = xpc_dictionary_get_int64(a1, "XPCExtensionHostPID");
  if (int64)
  {
    xpc_dictionary_set_int64(v2, "XPCExtensionHostPID", int64);
  }

  v8 = xpc_dictionary_get_int64(a1, "XPCExtensionPID");
  if (v8)
  {
    xpc_dictionary_set_int64(v2, "XPCExtensionPID", v8);
  }

  if (xpc_dictionary_get_BOOL(a1, "XPCExtensionXPCBundle"))
  {
    xpc_dictionary_set_BOOL(v2, "XPCExtensionXPCBundle", 1);
  }

  return v2;
}

xpc_object_t launch_copy_extension_properties_for_pid(int a1)
{
  v1 = _xpc_connection_copy_attrs(0, a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (xpc_dictionary_get_BOOL(v1, "extension"))
  {
    v3 = _translate_attrs(v2);
  }

  else
  {
    v3 = 0;
  }

  xpc_release(v2);
  return v3;
}

xpc_object_t launch_copy_properties_for_pid_4assertiond(int a1)
{
  result = _xpc_connection_copy_attrs(0, a1);
  if (result)
  {
    v2 = result;
    v3 = _translate_attrs(result);
    xpc_release(v2);
    return v3;
  }

  return result;
}

xpc_object_t launch_copy_busy_extension_instances(const char **a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "type", 1uLL);
  xpc_dictionary_set_uint64(v4, "handle", 0);
  for (i = xpc_array_create(0, 0); a2; --a2)
  {
    v6 = *a1++;
    xpc_array_set_string(i, 0xFFFFFFFFFFFFFFFFLL, v6);
  }

  xpc_dictionary_set_value(v4, "names", i);
  xpc_release(i);
  xdict = 0;
  if (_xpc_domain_routine(833, v4, &xdict))
  {
    _os_assumes_log();
    v7 = 0;
  }

  else
  {
    v7 = xpc_array_create(0, 0);
    value = xpc_dictionary_get_value(xdict, "instances");
    if (xpc_array_get_count(value))
    {
      v9 = 0;
      do
      {
        v10 = xpc_array_get_value(value, v9);
        v11 = _translate_attrs(v10);
        xpc_array_append_value(v7, v11);
        xpc_release(v11);
        ++v9;
      }

      while (v9 < xpc_array_get_count(value));
    }

    xpc_release(xdict);
  }

  xpc_release(v4);
  return v7;
}

void launch_extension_check_in_live_4UIKit()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "type", 5uLL);
  v1 = getpid();
  xpc_dictionary_set_uint64(v0, "handle", v1);
  xpc_dictionary_set_BOOL(v0, "self", 1);
  object = 0;
  if (_xpc_service_routine(716, v0, &object))
  {
    _os_assumes_log();
  }

  else
  {
    xpc_release(object);
  }

  xpc_release(v0);
}

uint64_t _xpc_session_get_state(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(a1 + 8);
  os_unfair_lock_opaque = a1[9]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 8);
  return os_unfair_lock_opaque;
}

const char *_xpc_session_string_for_state(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AB228[a1 - 1];
  }
}

char *_xpc_session_common_copy_concise_identifier(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v3 = _xpc_connection_pretty_name(a1);
  }

  else
  {
    v3 = "No Connection";
  }

  return _xpc_asprintf("%s<%s>", a2, v3);
}

char *__cdecl xpc_session_copy_description(xpc_session_t session)
{
  v2 = _xpc_session_get_state(session) - 1;
  if (v2 > 4)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = off_1E74AB228[v2];
  }

  v4 = _xpc_session_common_copy_concise_identifier(*(session + 7), "Session");
  v5 = _xpc_asprintf("%s(%s)", v4, v3);
  free(v4);
  return v5;
}

uint64_t _xpc_session_xref_dispose(os_unfair_lock_s *a1)
{
  result = _xpc_session_get_state(a1);
  if ((result - 6) <= 0xFFFFFFFD)
  {
    v2 = _xpc_asprintf("Session must be canceled before it's disposed");
    _xpc_api_misuse(v2);
  }

  return result;
}

void _xpc_session_dispose(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_dispose_cold_1();
    }

    v2 = _xpc_session_log_handle__log;
    if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "[%p] Disposing of session", buf, 0xCu);
    }
  }

  if (*(a1 + 36) != 5)
  {
    _xpc_session_dispose_cold_2(&v8, buf);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  if (*(a1 + 24))
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  _Block_release(v3);
  *(a1 + 24) = 0;
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  _Block_release(v4);
  *(a1 + 16) = 0;
  v5 = *(a1 + 40);
  if (v5)
  {
    _xpc_session_cancelation_reason_dispose(v5);
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void _xpc_session_cancelation_reason_dispose(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    xpc_release(v2);
  }

  free(a1);
}

NSObject *_xpc_session_common_create_opq(NSObject *a1, char *label)
{
  global_queue = a1;
  if (!a1)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  v5 = dispatch_queue_create_with_target_V2(label, 0, global_queue);
  dispatch_set_context(v5, a1);
  return v5;
}

uint64_t _xpc_session_create_with_connection(_xpc_connection_s *a1, NSObject *a2, char a3, char a4, xpc_object_t *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  xpc_connection_set_target_queue(a1, a2);
  v10 = _xpc_session_alloc(72);
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  *(v10 + 32) = 0x100000000;
  dispatch_retain(a2);
  *(v10 + 64) = a2;
  xpc_retain(a1);
  *(v10 + 56) = a1;
  _xpc_retain(v10);
  *&handler = MEMORY[0x1E69E9820];
  *(&handler + 1) = 0x40000000;
  v18 = ___xpc_session_setup_connection_handlers_block_invoke;
  v19 = &__block_descriptor_tmp_32_0;
  v20 = v10;
  xpc_connection_set_event_handler(a1, &handler);
  if ((a3 & 1) == 0)
  {
    if (*(v10 + 36) != 1)
    {
      _xpc_session_create_with_connection_cold_1(&v16, &handler);
    }

    xpc_connection_activate(*(v10 + 56));
    if (_xpc_connection_is_invalid(*(v10 + 56)))
    {
      v11 = _xpc_session_rich_error_with_cancelation_reason(v10, 3);
      v12 = _xpc_alloc_typed(0x10uLL, 0x1020040D5A9D86FuLL);
      *v12 = 3;
      v12[1] = v11;
      _xpc_session_cancel_with_reason(v10, v12);
      if (a5)
      {
        *a5 = xpc_retain(*(*(v10 + 40) + 8));
      }

      xpc_release(v10);
      v10 = 0;
      goto LABEL_15;
    }

    *(v10 + 36) = 3;
  }

  if (a4)
  {
    *(v10 + 52) |= 1u;
    xpc_retain(v10);
  }

  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_create_with_connection_cold_2();
    }

    v13 = _xpc_session_log_handle__log;
    if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(handler) = 134217984;
      *(&handler + 4) = v10;
      _os_log_impl(&dword_197263000, v13, OS_LOG_TYPE_DEFAULT, "[%p] Session created.", &handler, 0xCu);
    }
  }

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

xpc_session_t xpc_session_create_xpc_service(const char *name, dispatch_queue_t target_queue, xpc_session_create_flags_t flags, xpc_rich_error_t *error_out)
{
  v4 = flags;
  v18 = *MEMORY[0x1E69E9840];
  if ((flags & 2) != 0)
  {
    v13 = _xpc_asprintf("Attempting to set privileged flag on connection to XPC Service.", target_queue);
    _xpc_api_misuse(v13);
  }

  opq = _xpc_session_common_create_opq(target_queue, "com.apple.session.queue");
  v8 = xpc_connection_create(name, opq);
  v9 = _xpc_session_create_with_connection(v8, opq, v4, 0, error_out);
  dispatch_release(opq);
  xpc_release(v8);
  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_dispose_cold_1();
    }

    v10 = _xpc_session_log_handle__log;
    if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218242;
      v15 = v9;
      v16 = 2080;
      v17 = name;
      _os_log_impl(&dword_197263000, v10, OS_LOG_TYPE_DEFAULT, "[%p] Session created with XPC Service: %s", &v14, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

xpc_session_t xpc_session_create_mach_service(const char *mach_service, dispatch_queue_t target_queue, xpc_session_create_flags_t flags, xpc_rich_error_t *error_out)
{
  v5 = flags;
  v17 = *MEMORY[0x1E69E9840];
  opq = _xpc_session_common_create_opq(target_queue, "com.apple.session.queue");
  v8 = xpc_connection_create_mach_service(mach_service, opq, v5 & 2);
  v9 = _xpc_session_create_with_connection(v8, opq, v5, 0, error_out);
  dispatch_release(opq);
  xpc_release(v8);
  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_dispose_cold_1();
    }

    v10 = _xpc_session_log_handle__log;
    if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218242;
      v14 = v9;
      v15 = 2080;
      v16 = mach_service;
      _os_log_impl(&dword_197263000, v10, OS_LOG_TYPE_DEFAULT, "[%p] Session created with Mach Service: %s", &v13, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t xpc_session_create_xpc_endpoint(_xpc_endpoint_s *a1, NSObject *a2, char a3, xpc_object_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  opq = _xpc_session_common_create_opq(a2, "com.apple.session.queue");
  v8 = xpc_connection_create_from_endpoint(a1);
  v9 = _xpc_session_create_with_connection(v8, opq, a3, 0, a4);
  dispatch_release(opq);
  xpc_release(v8);
  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_dispose_cold_1();
    }

    v10 = _xpc_session_log_handle__log;
    if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v9;
      _os_log_impl(&dword_197263000, v10, OS_LOG_TYPE_DEFAULT, "[%p] Session created with Endpoint.", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _xpc_session_create_from_connection_4SWIFT(uint64_t a1, NSObject *a2, unint64_t a3, xpc_object_t *a4)
{
  v4 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v13 = _xpc_asprintf("invalid flags value %llu", a3);
    _xpc_api_misuse(v13);
  }

  v14 = 0;
  opq = _xpc_session_common_create_opq(a2, "com.apple.session.queue");
  connection = _xpc_connection_extract_connection(a1, &v14);
  v9 = _xpc_session_create_with_connection(connection, opq, v4, v14, a4);
  dispatch_release(opq);
  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_create_with_connection_cold_2();
    }

    v10 = _xpc_session_log_handle__log;
    if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v16 = v9;
      v17 = 2048;
      v18 = a1;
      _os_log_impl(&dword_197263000, v10, OS_LOG_TYPE_DEFAULT, "[%p] Session created from connection [%p]", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _xpc_session_extract_connection_4SWIFT(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner((a1 + 32));
  if (*(a1 + 36) != 1)
  {
    state_locked = _xpc_session_get_state_locked(a1);
    v5 = _xpc_session_string_for_state(state_locked);
    v6 = _xpc_asprintf("Session must be inactive to extract the connection, not %s", v5);
    _xpc_api_misuse(v6);
  }

  os_unfair_lock_assert_owner((a1 + 32));
  *(a1 + 36) = 2;
  os_unfair_lock_unlock((a1 + 32));
  xpc_retain(*(a1 + 56));
  *(a1 + 52) |= 2u;
  v2 = *(a1 + 56);

  return _xpc_connection_extract_connection(v2, 0);
}

void xpc_session_set_incoming_message_handler(xpc_session_t session, xpc_session_incoming_message_handler_t handler)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(session + 8);
  if (*(session + 9) != 1)
  {
    state_locked = _xpc_session_get_state_locked(session);
    v9 = _xpc_session_string_for_state(state_locked);
    v10 = _xpc_asprintf("Session must be inactive to set the message handler, not %s", v9);
    _xpc_api_misuse(v10);
  }

  v4 = (session + 24);
  if (*(session + 3))
  {
    v5 = *(session + 3);
  }

  else
  {
    v5 = 0;
  }

  _Block_release(v5);
  *v4 = 0;
  v6 = _xpc_Block_copy_impl(handler);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;

  os_unfair_lock_unlock(session + 8);
}

void xpc_session_set_cancel_handler(xpc_session_t session, xpc_session_cancel_handler_t cancel_handler)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(session + 8);
  if (*(session + 9) != 1)
  {
    state_locked = _xpc_session_get_state_locked(session);
    v9 = _xpc_session_string_for_state(state_locked);
    v10 = _xpc_asprintf("Session must be inactive to set the cancel handler, not %s", v9);
    _xpc_api_misuse(v10);
  }

  v4 = (session + 16);
  if (*(session + 2))
  {
    v5 = *(session + 2);
  }

  else
  {
    v5 = 0;
  }

  _Block_release(v5);
  *v4 = 0;
  v6 = _xpc_Block_copy_impl(cancel_handler);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *v4 = v7;

  os_unfair_lock_unlock(session + 8);
}

void xpc_session_set_target_queue(xpc_session_t session, dispatch_queue_t target_queue)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(session + 8);
  if (*(session + 9) != 1)
  {
    state_locked = _xpc_session_get_state_locked(session);
    v7 = _xpc_session_string_for_state(state_locked);
    v8 = _xpc_asprintf("Session must be inactive to set the cancel handler, not %s", v7);
    _xpc_api_misuse(v8);
  }

  v4 = *(session + 8);
  if (v4)
  {
    dispatch_release(v4);
  }

  opq = _xpc_session_common_create_opq(target_queue, "com.apple.session.queue");
  *(session + 8) = opq;
  xpc_connection_set_target_queue(*(session + 7), opq);

  os_unfair_lock_unlock(session + 8);
}

uint64_t _xpc_session_activate_if_new(os_unfair_lock_s *a1, xpc_object_t *a2)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(a1 + 8);
  os_unfair_lock_opaque = a1[9]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == 1)
  {
    v5 = _xpc_session_activate_locked(a1);
    os_unfair_lock_unlock(a1 + 8);
    if (!v5)
    {
      _xpc_session_activate_handle_error(a1, a2);
    }
  }

  else
  {
    os_unfair_lock_unlock(a1 + 8);
  }

  return os_unfair_lock_opaque;
}

BOOL _xpc_session_activate_locked(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 32));
  *(a1 + 36) = 3;
  xpc_connection_activate(*(a1 + 56));
  is_invalid = _xpc_connection_is_invalid(*(a1 + 56));
  if (!is_invalid && _os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_dispose_cold_1();
    }

    v3 = _xpc_session_log_handle__log;
    if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a1;
      _os_log_impl(&dword_197263000, v3, OS_LOG_TYPE_DEFAULT, "[%p] Session activated", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return !is_invalid;
}

void _xpc_session_activate_handle_error(uint64_t a1, xpc_object_t *a2)
{
  v4 = _xpc_session_rich_error_with_cancelation_reason(a1, 3);
  v5 = _xpc_alloc_typed(0x10uLL, 0x1020040D5A9D86FuLL);
  *v5 = 3;
  v5[1] = v4;
  _xpc_session_cancel_with_reason(a1, v5);
  if (a2)
  {
    os_unfair_lock_lock_with_options();
    os_unfair_lock_assert_owner((a1 + 32));
    v6 = *(a1 + 40);
    os_unfair_lock_unlock((a1 + 32));
    *a2 = xpc_retain(*(v6 + 8));
  }
}

BOOL xpc_session_activate(xpc_session_t session, xpc_rich_error_t *error_out)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(session + 8);
  v4 = *(session + 9);
  if (v4 != 1)
  {
    switch(v4)
    {
      case 3:
        v7 = _xpc_asprintf("Attempting to activate an already active session");
        break;
      case 4:
        v7 = _xpc_asprintf("Attempting to activate a canceling session");
        break;
      case 5:
        v7 = _xpc_asprintf("Attempting to activate a canceled session");
        break;
      default:
        v7 = _xpc_asprintf("Attempting to activate a session in an unknown state");
        break;
    }

    _xpc_api_misuse(v7);
  }

  v5 = _xpc_session_activate_locked(session);
  os_unfair_lock_unlock(session + 8);
  if (!v5)
  {
    _xpc_session_activate_handle_error(session, error_out);
  }

  return v5;
}

void xpc_session_cancel(xpc_session_t session)
{
  if (_xpc_session_get_state(session) == 1)
  {
    v4 = _xpc_asprintf("Attempting to cancel an inactive session");
    _xpc_api_misuse(v4);
  }

  v2 = xpc_rich_error_create("Session manually canceled", 0);
  v3 = _xpc_alloc_typed(0x10uLL, 0x1020040D5A9D86FuLL);
  *v3 = 1;
  v3[1] = v2;

  _xpc_session_cancel_with_reason(session, v3);
}

void _xpc_session_cancel_peer(uint64_t a1, const char *a2)
{
  v3 = _xpc_asprintf("Peer rejected with reason: %s", a2);
  v4 = xpc_rich_error_create(v3, 0);
  free(v3);
  v5 = _xpc_alloc_typed(0x10uLL, 0x1020040D5A9D86FuLL);
  *v5 = 4;
  v5[1] = v4;

  _xpc_session_cancel_with_reason(a1, v5);
}

xpc_rich_error_t xpc_session_send_message(xpc_session_t session, xpc_object_t message)
{
  state = _xpc_session_get_state(session);
  if (state <= 2)
  {
    v6 = _xpc_asprintf("Attempting to send a message using a session that is neither active or canceled.");
    _xpc_api_misuse(v6);
  }

  if ((state & 0x7FFFFFFE) == 4)
  {

    return _xpc_session_message_error_during_cancelation(state);
  }

  else
  {
    xpc_connection_send_message(*(session + 7), message);
    return 0;
  }
}

size_t _xpc_session_message_error_during_cancelation(unsigned int a1)
{
  if (a1 == 4)
  {
    v2 = "Attempting to send message using a session that's canceling";
  }

  else
  {
    if (a1 != 5)
    {
      _xpc_session_message_error_during_cancelation_cold_1(a1);
    }

    v2 = "Attempting to send message using a canceled session";
  }

  return xpc_rich_error_create(v2, 0);
}

xpc_object_t xpc_session_send_message_with_reply_sync(xpc_session_t session, xpc_object_t message, xpc_rich_error_t *error_out)
{
  state = _xpc_session_get_state(session);
  if (state <= 2)
  {
    v12 = _xpc_asprintf("Attempting to send a message using a session that is neither active or canceled.");
    _xpc_api_misuse(v12);
  }

  v7 = state;
  context = dispatch_get_context(*(session + 8));
  if (context)
  {
    dispatch_assert_queue_not_V2(context);
  }

  if ((v7 & 0x7FFFFFFE) == 4)
  {
    if (error_out)
    {
      v9 = _xpc_session_message_error_during_cancelation(v7);
LABEL_7:
      v10 = 0;
      *error_out = v9;
      return v10;
    }

    return 0;
  }

  os_unfair_lock_lock_with_options();
  ++*(session + 12);
  os_unfair_lock_unlock(session + 8);
  v10 = xpc_connection_send_message_with_reply_sync(*(session + 7), message);
  _xpc_session_decrement_inflight_replies(session);
  if (v10 && xpc_get_type(v10) == OS_xpc_error)
  {
    v9 = _xpc_session_cancel_after_reply_error(session, v10);
    if (error_out)
    {
      goto LABEL_7;
    }

    return 0;
  }

  return v10;
}

void _xpc_session_decrement_inflight_replies(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = v2 - 1;
    *(a1 + 48) = v3;
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 36);
  v6 = *(a1 + 64);
  os_unfair_lock_unlock((a1 + 32));
  if (v4 && v5 == 4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___xpc_session_decrement_inflight_replies_block_invoke;
    block[3] = &__block_descriptor_tmp_54;
    block[4] = a1;
    dispatch_async(v6, block);
  }
}

xpc_object_t _xpc_session_cancel_after_reply_error(uint64_t a1, __objc2_class **a2)
{
  if (a2 == &_xpc_error_peer_code_signing_requirement)
  {
    v3 = 5;
  }

  else
  {
    v3 = 2;
  }

  if (a2 == &_xpc_error_connection_invalid)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  v5 = _xpc_session_rich_error_with_cancelation_reason(a1, v4);
  v6 = _xpc_alloc_typed(0x10uLL, 0x1020040D5A9D86FuLL);
  *v6 = v4;
  v6[1] = v5;
  _xpc_session_cancel_with_reason(a1, v6);
  v7 = *(*(a1 + 40) + 8);

  return xpc_retain(v7);
}

void xpc_session_send_message_with_reply_async(xpc_session_t session, xpc_object_t message, xpc_session_reply_handler_t reply_handler)
{
  state = _xpc_session_get_state(session);
  if (state <= 2)
  {
    v11 = _xpc_asprintf("Attempting to send a message using a session that is neither active or canceled.");
    _xpc_api_misuse(v11);
  }

  if ((state & 0x7FFFFFFE) == 4)
  {
    v7 = _xpc_session_message_error_during_cancelation(state);
    v8 = *(session + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __xpc_session_send_message_with_reply_async_block_invoke;
    block[3] = &unk_1E74AB118;
    block[4] = reply_handler;
    block[5] = v7;
    dispatch_async(v8, block);
  }

  else
  {
    _xpc_retain(session);
    os_unfair_lock_lock_with_options();
    ++*(session + 12);
    os_unfair_lock_unlock(session + 8);
    v9 = *(session + 7);
    v10 = *(session + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __xpc_session_send_message_with_reply_async_block_invoke_2;
    v12[3] = &unk_1E74AB140;
    v12[4] = reply_handler;
    v12[5] = session;
    xpc_connection_send_message_with_reply(v9, message, v10, v12);
  }
}

void __xpc_session_send_message_with_reply_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  xpc_release(v3);
}

uint64_t __xpc_session_send_message_with_reply_async_block_invoke_2(uint64_t a1, __objc2_class **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  _xpc_session_decrement_inflight_replies(*(a1 + 40));
  if (xpc_get_type(a2) == OS_xpc_error)
  {
    v4 = _xpc_session_cancel_after_reply_error(*(a1 + 40), a2);
    if (!v4)
    {
      __xpc_session_send_message_with_reply_async_block_invoke_2_cold_1(&v9, v10);
    }

    v5 = v4;
    (*(*(a1 + 32) + 16))();
    xpc_release(v5);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v6 = *(a1 + 40);
  v7 = *MEMORY[0x1E69E9840];

  return _xpc_release(v6);
}

uint64_t xpc_session_set_target_user_session_uid(uint64_t a1, int a2)
{
  _xpc_session_assert_inactive(a1, "set target user session UID");
  v4 = *(a1 + 56);

  return xpc_connection_set_target_user_session_uid(v4, a2);
}

uint64_t _xpc_session_assert_inactive(os_unfair_lock_s *a1, const char *a2)
{
  result = _xpc_session_get_state(a1);
  if (result != 1)
  {
    v4 = _xpc_session_string_for_state(result);
    v5 = _xpc_asprintf("Session must be inactive to %s, but session is %s", a2, v4);
    _xpc_api_misuse(v5);
  }

  return result;
}

void xpc_session_set_instance(uint64_t a1, const unsigned __int8 *a2)
{
  _xpc_session_assert_inactive(a1, "set instance");
  v4 = *(a1 + 56);

  xpc_connection_set_oneshot_instance(v4, a2);
}

void _xpc_session_get_peer_audit_token_4SWIFT(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  xpc_connection_get_audit_token(*(a1 + 56), a2);
}

uint64_t xpc_session_set_peer_requirement(uint64_t a1, void *a2)
{
  _xpc_session_assert_inactive(a1, "set peer requirement");
  v4 = *(a1 + 56);

  return xpc_connection_set_peer_requirement(v4, a2);
}

os_log_t ___xpc_session_log_handle_block_invoke()
{
  result = os_log_create("com.apple.xpc", "session");
  _xpc_session_log_handle__log = result;
  return result;
}

void ___xpc_session_setup_connection_handlers_block_invoke(uint64_t a1, __objc2_class **object)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 36);
  if ((v3 - 4) <= 0xFFFFFFFD)
  {
    if (!_os_trace_lazy_init_completed_4libxpc())
    {
      goto LABEL_43;
    }

    if (_xpc_session_log_handle__once != -1)
    {
      _xpc_session_dispose_cold_1();
    }

    v4 = _xpc_session_log_handle__log;
    if (!os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_43;
    }

    v5 = *(a1 + 32);
    *buf = 134217984;
    *&buf[4] = v5;
    v6 = "[%p] Received event on inactive Session";
    v7 = v4;
    goto LABEL_7;
  }

  if (v3 == 2 && object != &_xpc_error_connection_invalid)
  {
    _os_assumes_log();
  }

  type = xpc_get_type(object);
  v11 = *(a1 + 32);
  if (type == OS_xpc_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {
      if (_os_trace_lazy_init_completed_4libxpc())
      {
        if (_xpc_session_log_handle__once != -1)
        {
          _xpc_session_dispose_cold_1();
        }

        v18 = _xpc_session_log_handle__log;
        if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v11;
          _os_log_impl(&dword_197263000, v18, OS_LOG_TYPE_DEFAULT, "[%p] Connection invalidation received", buf, 0xCu);
        }
      }

      if (*(v11 + 36) == 2)
      {
        v17 = 6;
      }

      else
      {
        v17 = 3;
      }
    }

    else if (object == &_xpc_error_connection_interrupted)
    {
      if (_os_trace_lazy_init_completed_4libxpc())
      {
        if (_xpc_session_log_handle__once != -1)
        {
          _xpc_session_dispose_cold_1();
        }

        v19 = _xpc_session_log_handle__log;
        if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v11;
          _os_log_impl(&dword_197263000, v19, OS_LOG_TYPE_DEFAULT, "[%p] Connection interruption received", buf, 0xCu);
        }
      }

      v17 = 2;
    }

    else
    {
      if (object == &_xpc_error_termination_imminent)
      {
        if (!_os_trace_lazy_init_completed_4libxpc())
        {
          goto LABEL_43;
        }

        if (_xpc_session_log_handle__once != -1)
        {
          _xpc_session_dispose_cold_1();
        }

        v31 = _xpc_session_log_handle__log;
        if (!os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_43;
        }

        *buf = 134217984;
        *&buf[4] = v11;
        v6 = "[%p] Termination imminent. No more messages will be received on this session.";
        v7 = v31;
LABEL_7:
        _os_log_impl(&dword_197263000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
LABEL_43:
        v23 = *MEMORY[0x1E69E9840];
        return;
      }

      if (object != &_xpc_error_peer_code_signing_requirement)
      {
        ___xpc_session_setup_connection_handlers_block_invoke_cold_3();
      }

      if (_os_trace_lazy_init_completed_4libxpc())
      {
        if (_xpc_session_log_handle__once != -1)
        {
          _xpc_session_dispose_cold_1();
        }

        v16 = _xpc_session_log_handle__log;
        if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v11;
          _os_log_impl(&dword_197263000, v16, OS_LOG_TYPE_DEFAULT, "[%p] Peer did not meet the code signing requirement. Cancelling the connection.", buf, 0xCu);
        }
      }

      v17 = 5;
    }

    v20 = *(a1 + 32);
    v21 = _xpc_session_rich_error_with_cancelation_reason(v20, v17);
    v22 = _xpc_alloc_typed(0x10uLL, 0x1020040D5A9D86FuLL);
    *v22 = v17;
    v22[1] = v21;
    _xpc_session_cancel_with_reason(v20, v22);
    goto LABEL_43;
  }

  v12 = *(v11 + 24);
  if (!v12)
  {
    v24 = _xpc_session_common_copy_concise_identifier(*(v11 + 56), "Session");
    *buf = 0u;
    v33 = 0u;
    xpc_dictionary_get_audit_token(object, buf);
    if (_os_trace_lazy_init_completed_4libxpc())
    {
      if (_xpc_session_log_handle__once != -1)
      {
        _xpc_session_create_with_connection_cold_2();
      }

      v25 = _xpc_session_log_handle__log;
      if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_ERROR))
      {
        *v34 = 134218498;
        v35 = v11;
        v36 = 2080;
        *v37 = v24;
        *&v37[8] = 1024;
        *&v37[10] = DWORD1(v33);
        _os_log_impl(&dword_197263000, v25, OS_LOG_TYPE_ERROR, "[%p] Incoming message to %s from PID %d is dropped because incoming message handler isn't set", v34, 0x1Cu);
      }
    }

    v26 = _xpc_asprintf("Incoming message to %s is dropped because incoming message handler isn't set", v24);
    if (os_fault_with_payload() && _os_trace_lazy_init_completed_4libxpc())
    {
      if (_xpc_session_log_handle__once != -1)
      {
        _xpc_session_create_with_connection_cold_2();
      }

      v27 = _xpc_session_log_handle__log;
      if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_ERROR))
      {
        v28 = *__error();
        v29 = __error();
        v30 = xpc_strerror(*v29);
        *v34 = 134218498;
        v35 = v11;
        v36 = 1024;
        *v37 = v28;
        *&v37[4] = 2080;
        *&v37[6] = v30;
        _os_log_impl(&dword_197263000, v27, OS_LOG_TYPE_ERROR, "[%p] Unable to generate a fault: %d - %s", v34, 0x1Cu);
      }
    }

    free(v26);
    free(v24);
    goto LABEL_43;
  }

  v13 = *(v11 + 24);
  v14 = *(v12 + 16);
  v15 = *MEMORY[0x1E69E9840];

  v14(v12, object);
}

size_t _xpc_session_rich_error_with_cancelation_reason(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFFFFFB) - 1 > 1)
  {
    if (a2 == 3)
    {
      v4 = xpc_connection_copy_invalidation_reason(*(a1 + 56));
      v5 = v4;
      v6 = "Unknown";
      if (v4)
      {
        v6 = v4;
      }

      v7 = _xpc_asprintf("%s. Reason: %s", "Underlying connection was invalidated", v6);
      if (v5)
      {
        free(v5);
      }

      v8 = xpc_rich_error_create(v7, 0);
      free(v7);
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a2 - 2) > 4)
    {
      v3 = "Session manually canceled";
    }

    else
    {
      v3 = off_1E74AB250[a2 - 2];
    }

    return xpc_rich_error_create(v3, 0);
  }
}

void _xpc_session_cancel_with_reason(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  if (a2)
  {
    if (*(a1 + 40))
    {
      _xpc_session_cancelation_reason_dispose(a2);
    }

    else
    {
      os_unfair_lock_assert_owner((a1 + 32));
      *(a1 + 40) = a2;
    }
  }

  if (*(a1 + 36) != 5)
  {
    os_unfair_lock_assert_owner((a1 + 32));
    if (*(a1 + 36) != 4)
    {
      os_unfair_lock_assert_owner((a1 + 32));
      *(a1 + 36) = 4;
    }

    os_unfair_lock_assert_owner((a1 + 32));
    if (!*(a1 + 48))
    {
      v4 = *(a1 + 56);
      if (v4 && (*(a1 + 52) & 2) == 0)
      {
        xpc_connection_set_event_handler(v4, &__block_literal_global_47);
        xpc_connection_cancel(*(a1 + 56));
      }

      os_unfair_lock_assert_owner((a1 + 32));
      *(a1 + 36) = 5;
      if (_os_trace_lazy_init_completed_4libxpc())
      {
        if (_xpc_session_log_handle__once != -1)
        {
          _xpc_session_dispose_cold_1();
        }

        v5 = _xpc_session_log_handle__log;
        if (os_log_type_enabled(_xpc_session_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v12) = 134217984;
          *(&v12 + 4) = a1;
          _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, "[%p] Session canceled.", &v12, 0xCu);
        }
      }

      if (*(a1 + 16))
      {
        v6 = *(a1 + 16);
        os_unfair_lock_assert_owner((a1 + 32));
        v7 = *(*(a1 + 40) + 8);
        xpc_retain(v7);
        v8 = *(a1 + 64);
        *&v12 = MEMORY[0x1E69E9820];
        *(&v12 + 1) = 0x40000000;
        v13 = ___xpc_session_call_cancel_handler_block_invoke;
        v14 = &unk_1E74AB1E8;
        v15 = v6;
        v16 = v7;
        dispatch_async(v8, &v12);
      }

      v9 = *(a1 + 52) & 1;
      v10 = *(a1 + 64);
      *&v12 = MEMORY[0x1E69E9820];
      *(&v12 + 1) = 0x40000000;
      v13 = ___xpc_session_complete_cancelation_locked_block_invoke_48;
      v14 = &__block_descriptor_tmp_49;
      v15 = a1;
      LOBYTE(v16) = v9;
      dispatch_async(v10, &v12);
    }
  }

  os_unfair_lock_unlock((a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
}

void ___xpc_session_complete_cancelation_locked_block_invoke_48(uint64_t a1)
{
  _xpc_release(*(a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);

    xpc_release(v2);
  }
}

void ___xpc_session_call_cancel_handler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);

  xpc_release(v3);
}

uint64_t _xpc_endpoint_deserialize(uint64_t *a1)
{
  v4 = 0;
  if (!_xpc_graph_deserializer_read_port(a1, 17, &v4))
  {
    return 0;
  }

  v1 = v4;
  result = _xpc_base_create(OS_xpc_endpoint, 8);
  v3 = *(result + 16);
  *(result + 24) = v1;
  *(result + 16) = v3 | 3;
  return result;
}

uint64_t _xpc_endpoint_dispose(uint64_t a1)
{
  result = *(a1 + 24);
  if ((result + 1) >= 2)
  {
    result = _xpc_mach_port_release(result);
    if (result)
    {
      return _os_assumes_log();
    }
  }

  return result;
}

uint64_t _xpc_endpoint_create(int a1)
{
  result = _xpc_base_create(OS_xpc_endpoint, 8);
  *(result + 16) |= 2u;
  *(result + 24) = a1;
  return result;
}

uint64_t _xpc_endpoint_copy_listener_port(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 - 1) > 0xFFFFFFFD)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = _xpc_mach_port_retain_send(*(a1 + 24));
  if (v2)
  {
    if (v2 != 17)
    {
      _os_assumes_log();
    }

    return 0xFFFFFFFFLL;
  }

  return v1;
}

xpc_endpoint_t xpc_endpoint_create(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v6 = class_getName(OS_xpc_connection);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v6);
    _xpc_api_misuse(v7);
  }

  v2 = _xpc_connection_copy_listener_port(connection);
  result = _xpc_base_create(OS_xpc_endpoint, 8);
  *(result + 4) |= 2u;
  *(result + 6) = v2;
  return result;
}

uint64_t xpc_endpoint_compare(_DWORD *a1, _DWORD *a2)
{
  if (xpc_get_type(a1) != OS_xpc_endpoint)
  {
    v9 = a1;
    goto LABEL_11;
  }

  if (xpc_get_type(a2) != OS_xpc_endpoint)
  {
    v9 = a2;
LABEL_11:
    type = xpc_get_type(v9);
    Name = class_getName(type);
    v12 = class_getName(OS_xpc_endpoint);
    v13 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v12);
    _xpc_api_misuse(v13);
  }

  v4 = a1[6];
  v5 = a2[6];
  v6 = v4 == v5;
  if (v4 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t xpc_endpoint_create_bs_from_port(int a1)
{
  if ((a1 - 1) >= 0xFFFFFFFE)
  {
    v3 = _xpc_asprintf("Cannot create endpoint from invalid mach port.");
    _xpc_api_misuse(v3);
  }

  result = _xpc_base_create(OS_xpc_endpoint, 8);
  *(result + 16) |= 2u;
  *(result + 24) = a1;
  return result;
}

uint64_t xpc_endpoint_create_bs_named(char *a1, int a2, char *a3)
{
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  return _xpc_endpoint_create_bs(a1, 7, 0, 0, v3, a3);
}

uint64_t _xpc_endpoint_create_bs(char *a1, int a2, uint64_t a3, const unsigned __int8 *a4, uint64_t a5, char *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _xpc_endpoint_create_bs_cold_2(&v13, v14);
  }

  if (!a6)
  {
    _xpc_endpoint_create_bs_cold_1(&v13, v14);
  }

  *a6 = 0;
  v7 = 544;
  if (!a4)
  {
    v7 = 512;
  }

  LODWORD(v14[0]) = 0;
  LOBYTE(v13) = 0;
  v8 = _xpc_look_up_endpoint(a1, a2, a3, 0, a4, v7 | a5, 0, v14, &v13);
  result = 0;
  if (v8 > 123)
  {
    if ((v8 - 124) > 0x23 || ((1 << (v8 - 124)) & 0x800200001) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v8)
  {
    if (v8 != 1 && v8 != 3)
    {
LABEL_12:
      _os_assumes_log();
      result = 0;
    }
  }

  else
  {
    v10 = v14[0];
    result = _xpc_base_create(OS_xpc_endpoint, 8);
    *(result + 16) |= 2u;
    *(result + 24) = v10;
    if (v13 == 1)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    *a6 = v11;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xpc_endpoint_create_bs_service(char *a1, const unsigned __int8 *a2, char *a3)
{
  _xpc_uncork_domain();
  v6 = getpid();

  return _xpc_endpoint_create_bs(a1, 5, v6, a2, 0, a3);
}

BOOL xpc_endpoint_get_bs_job_handle(uint64_t a1, _OWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (v2 + 1 < 2)
  {
    goto LABEL_8;
  }

  v4 = xpc_mach_send_create(v2);
  if (!xpc_mach_send_get_right(v4) || xpc_mach_send_get_right(v4) == -1)
  {
    xpc_release(v4);
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v5, "endpoint", v4);
  xpc_release(v4);
  xdict = 0;
  v6 = _launch_job_routine(1012, v5, &xdict);
  v7 = v6 == 0;
  if (v6)
  {
    if (v6 != 113)
    {
      _os_assumes_log();
    }
  }

  else
  {
    if (!xdict)
    {
      xpc_endpoint_get_bs_job_handle_cold_2(&v11, v13);
    }

    uuid = xpc_dictionary_get_uuid(xdict, "job-handle");
    if (!uuid)
    {
      xpc_endpoint_get_bs_job_handle_cold_1(&v11, v13);
    }

    *a2 = *uuid;
    xpc_release(xdict);
  }

  xpc_release(v5);
LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t xpc_endpoint_create_mach_port_4sim(int a1)
{
  if ((a1 - 1) >= 0xFFFFFFFE)
  {
    v3 = _xpc_asprintf("Cannot create endpoint from invalid mach port.");
    _xpc_api_misuse(v3);
  }

  result = _xpc_base_create(OS_xpc_endpoint, 8);
  *(result + 16) |= 2u;
  *(result + 24) = a1;
  return result;
}

uint64_t _xpc_pointer_desc(const void **a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v3 = snprintf(__str, 0x80uLL, "<%s: %p>: %p", "pointer", a1, a1[3]);
  if (v3 >= 0x7F)
  {
    v4 = 127;
  }

  else
  {
    v4 = v3;
  }

  result = _xpc_serializer_append(a2, __str, (v4 + 1), 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xpc_pointer_create(uint64_t a1)
{
  result = _xpc_base_create(OS_xpc_pointer, 8);
  *(result + 24) = a1;
  return result;
}

uint64_t xpc_pointer_get_value(void *a1)
{
  if (xpc_get_type(a1) == OS_xpc_pointer)
  {
    return a1[3];
  }

  else
  {
    return 0;
  }
}

char *__cdecl xpc_listener_copy_description(xpc_listener_t listener)
{
  v2 = _xpc_listener_get_state(listener) - 1;
  if (v2 > 2)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = off_1E74AB2F8[v2];
  }

  v4 = _xpc_session_common_copy_concise_identifier(*(listener + 4), "Listener");
  v5 = _xpc_asprintf("%s(%s)", v4, v3);
  free(v4);
  return v5;
}

uint64_t _xpc_listener_get_state(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(a1 + 6);
  os_unfair_lock_opaque = a1[7]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 6);
  return os_unfair_lock_opaque;
}

const char *_xpc_listener_string_for_state(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74AB2F8[a1 - 1];
  }
}

uint64_t _xpc_listener_xref_dispose(os_unfair_lock_s *a1)
{
  result = _xpc_listener_get_state(a1);
  if (result != 3)
  {
    v2 = _xpc_asprintf("Listener must be canceled before it's disposed");
    _xpc_api_misuse(v2);
  }

  return result;
}

void _xpc_listener_dispose(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_listener_log_handle__once != -1)
    {
      _xpc_listener_dispose_cold_1();
    }

    v2 = _xpc_listener_log_handle__log;
    if (os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "[%p] Disposing of listener", buf, 0xCu);
    }
  }

  if (*(a1 + 28) != 3)
  {
    _xpc_listener_dispose_cold_2(&v6, buf);
  }

  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  _Block_release(v3);
  *(a1 + 16) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

xpc_listener_t xpc_listener_create(const char *service, dispatch_queue_t target_queue, xpc_listener_create_flags_t flags, xpc_listener_incoming_session_handler_t incoming_session_handler, xpc_rich_error_t *error_out)
{
  v7 = flags;
  v21 = *MEMORY[0x1E69E9840];
  opq = _xpc_session_common_create_opq(target_queue, "com.apple.listener.queue");
  listener = xpc_connection_create_listener(service);
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v11 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v11 = _os_alloc_once();
  }

  if ((~v7 & 6) == 0)
  {
    v16 = _xpc_asprintf("Cannot force the listener to be both a MachService and a XPCService");
    _xpc_api_misuse(v16);
  }

  if ((v7 & 2) != 0 || !(v7 & 4 | *(v11 + 8) & 0x8000))
  {
    xpc_connection_set_legacy(listener);
  }

  v12 = _xpc_listener_create_with_connection(listener, opq, v7, incoming_session_handler, error_out);
  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_listener_log_handle__once != -1)
    {
      _xpc_listener_dispose_cold_1();
    }

    v13 = _xpc_listener_log_handle__log;
    if (os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218242;
      v18 = v12;
      v19 = 2080;
      v20 = service;
      _os_log_impl(&dword_197263000, v13, OS_LOG_TYPE_DEFAULT, "[%p] Listener created with name: %s", &v17, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

void *_xpc_listener_create_with_connection(_xpc_connection_s *a1, uint64_t a2, char a3, const void *a4, size_t *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = _xpc_listener_alloc(48);
  v10[3] = 0x100000000;
  v10[4] = a1;
  v10[5] = a2;
  _xpc_listener_set_incoming_session_handler(v10, a4);
  _xpc_retain(v10);
  *&handler = MEMORY[0x1E69E9820];
  *(&handler + 1) = 0x40000000;
  v17 = ___xpc_listener_setup_connection_handlers_block_invoke;
  v18 = &__block_descriptor_tmp_17;
  v19 = v10;
  xpc_connection_set_event_handler(a1, &handler);
  if ((a3 & 1) == 0)
  {
    v15 = 0;
    v11 = _xpc_listener_activate(v10, &v15, a5);
    if (v15 != 1)
    {
      _xpc_listener_create_with_connection_cold_1(&v14, &handler);
    }

    if ((v11 & 1) == 0)
    {
      xpc_release(v10);
      v10 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void *xpc_listener_create_anonymous(NSObject *a1, char a2, const void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  opq = _xpc_session_common_create_opq(a1, "com.apple.listener.queue");
  v6 = xpc_connection_create(0, opq);
  v11 = 0;
  v7 = _xpc_listener_create_with_connection(v6, opq, a2, a3, &v11);
  if (!v7)
  {
    _os_assumes_log();
  }

  if (v11)
  {
    _os_assumes_log();
  }

  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_listener_log_handle__once != -1)
    {
      xpc_listener_create_anonymous_cold_1();
    }

    v8 = _xpc_listener_log_handle__log;
    if (os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = v7;
      _os_log_impl(&dword_197263000, v8, OS_LOG_TYPE_DEFAULT, "[%p] Anonymous listener created", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL xpc_listener_activate(xpc_listener_t listener, xpc_rich_error_t *error_out)
{
  v4 = 0;
  result = _xpc_listener_activate(listener, &v4, error_out);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v3 = _xpc_asprintf("Attempting to activate an already active listener");
    }

    else
    {
      v3 = _xpc_asprintf("Attempting to activate a listener in an unknown state");
    }

    _xpc_api_misuse(v3);
  }

  return result;
}

uint64_t _xpc_listener_activate(uint64_t a1, _DWORD *a2, size_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    _xpc_listener_activate_cold_3(&v15, buf);
  }

  os_unfair_lock_lock_with_options();
  v6 = *(a1 + 28);
  *a2 = v6;
  if (v6 != 1)
  {
    os_unfair_lock_unlock((a1 + 24));
LABEL_13:
    result = 0;
    goto LABEL_20;
  }

  xpc_retain(a1);
  os_unfair_lock_assert_owner((a1 + 24));
  *(a1 + 28) = 2;
  xpc_connection_activate(*(a1 + 32));
  is_invalid = _xpc_connection_is_invalid(*(a1 + 32));
  os_unfair_lock_unlock((a1 + 24));
  if (is_invalid)
  {
    v8 = xpc_connection_copy_invalidation_reason(*(a1 + 32));
    v9 = v8;
    if (a3)
    {
      v10 = _xpc_asprintf("Unable to activate listener: %s", v8);
      *a3 = xpc_rich_error_create(v10, 0);
      free(v10);
    }

    if (_os_trace_lazy_init_completed_4libxpc())
    {
      if (_xpc_listener_log_handle__once != -1)
      {
        _xpc_listener_dispose_cold_1();
      }

      v11 = _xpc_listener_log_handle__log;
      if (os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v17 = a1;
        v18 = 2080;
        v19 = v9;
        _os_log_impl(&dword_197263000, v11, OS_LOG_TYPE_DEFAULT, "[%p] Failed listener activation: %s", buf, 0x16u);
      }
    }

    free(v9);
    xpc_listener_cancel(a1);
    goto LABEL_13;
  }

  if (_os_trace_lazy_init_completed_4libxpc())
  {
    if (_xpc_listener_log_handle__once != -1)
    {
      _xpc_listener_dispose_cold_1();
    }

    v13 = _xpc_listener_log_handle__log;
    if (os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = a1;
      _os_log_impl(&dword_197263000, v13, OS_LOG_TYPE_DEFAULT, "[%p] Listener activated", buf, 0xCu);
    }
  }

  result = 1;
LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void xpc_listener_cancel(xpc_listener_t listener)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v2 = *(listener + 7);
  if (v2 != 3)
  {
    v3 = *(listener + 4);
    if (v3)
    {
      xpc_connection_set_event_handler(v3, &__block_literal_global_22);
      xpc_connection_cancel(*(listener + 4));
    }

    os_unfair_lock_assert_owner(listener + 6);
    *(listener + 7) = 3;
    if (_os_trace_lazy_init_completed_4libxpc())
    {
      if (_xpc_listener_log_handle__once != -1)
      {
        _xpc_listener_dispose_cold_1();
      }

      v4 = _xpc_listener_log_handle__log;
      if (os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v7) = 134217984;
        *(&v7 + 4) = listener;
        _os_log_impl(&dword_197263000, v4, OS_LOG_TYPE_DEFAULT, "[%p] Listener canceled.", &v7, 0xCu);
      }
    }

    if (v2 == 2)
    {
      xpc_release(listener);
    }

    v5 = *(listener + 5);
    *&v7 = MEMORY[0x1E69E9820];
    *(&v7 + 1) = 0x40000000;
    v8 = ___xpc_listener_cancel_locked_block_invoke_23;
    v9 = &__block_descriptor_tmp_24_1;
    v10 = listener;
    dispatch_async(v5, &v7);
  }

  os_unfair_lock_unlock(listener + 6);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t xpc_listener_set_peer_requirement(uint64_t a1, void *a2)
{
  _xpc_listener_assert_inactive(a1, "set peer requirement");
  v4 = *(a1 + 32);

  return xpc_connection_set_peer_requirement(v4, a2);
}

uint64_t _xpc_listener_assert_inactive(os_unfair_lock_s *a1, const char *a2)
{
  result = _xpc_listener_get_state(a1);
  if (result != 1)
  {
    v4 = _xpc_listener_string_for_state(result);
    v5 = _xpc_asprintf("Listener must be inactive to %s, but listener is %s", a2, v4);
    _xpc_api_misuse(v5);
  }

  return result;
}

void *xpc_listener_set_incoming_session_handler(os_unfair_lock_s *a1, const void *a2)
{
  _xpc_listener_assert_inactive(a1, "set incoming session handler");

  return _xpc_listener_set_incoming_session_handler(a1, a2);
}

void *_xpc_listener_set_incoming_session_handler(uint64_t a1, const void *a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  _Block_release(v4);
  *v3 = 0;
  result = _xpc_Block_copy_impl(a2);
  if (result)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  *v3 = v6;
  return result;
}

os_log_t ___xpc_listener_log_handle_block_invoke()
{
  result = os_log_create("com.apple.xpc", "listener");
  _xpc_listener_log_handle__log = result;
  return result;
}

void ___xpc_listener_setup_connection_handlers_block_invoke(uint64_t a1, __objc2_class **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (_xpc_listener_get_state(v3) != 2)
  {
    if (!_os_trace_lazy_init_completed_4libxpc())
    {
      goto LABEL_35;
    }

    if (_xpc_listener_log_handle__once != -1)
    {
      _xpc_listener_dispose_cold_1();
    }

    v7 = _xpc_listener_log_handle__log;
    if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 134217984;
    v27 = v3;
    v8 = "[%p] Received event on inactive Listener";
LABEL_26:
    _os_log_impl(&dword_197263000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    goto LABEL_35;
  }

  if (a2 == &_xpc_error_connection_invalid)
  {
    if (!_os_trace_lazy_init_completed_4libxpc())
    {
      goto LABEL_35;
    }

    if (_xpc_listener_log_handle__once != -1)
    {
      _xpc_listener_dispose_cold_1();
    }

    v7 = _xpc_listener_log_handle__log;
    if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 134217984;
    v27 = v3;
    v8 = "[%p] Connection invalidation received";
    goto LABEL_26;
  }

  if (a2 == &_xpc_error_connection_interrupted)
  {
    if (!_os_trace_lazy_init_completed_4libxpc())
    {
      goto LABEL_35;
    }

    if (_xpc_listener_log_handle__once != -1)
    {
      _xpc_listener_dispose_cold_1();
    }

    v7 = _xpc_listener_log_handle__log;
    if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 134217984;
    v27 = v3;
    v8 = "[%p] Connection interruption received";
    goto LABEL_26;
  }

  if (xpc_get_type(a2) != OS_xpc_connection)
  {
    v4 = xpc_copy_description(a2);
    if (!_os_trace_lazy_init_completed_4libxpc())
    {
      goto LABEL_34;
    }

    if (_xpc_listener_log_handle__once != -1)
    {
      _xpc_listener_dispose_cold_1();
    }

    v5 = _xpc_listener_log_handle__log;
    if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 134218242;
    v27 = v3;
    v28 = 2080;
    v29 = v4;
    v6 = "[%p] Received object of unsupported type: %s";
LABEL_10:
    _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x16u);
LABEL_34:
    free(v4);
    goto LABEL_35;
  }

  if (a2)
  {
    error = 0;
    v9 = _xpc_session_create_with_connection(a2, *(v3 + 40), 1, 1, &error);
    if (error)
    {
      v4 = xpc_rich_error_copy_description(error);
      if (!_os_trace_lazy_init_completed_4libxpc())
      {
        goto LABEL_34;
      }

      if (_xpc_listener_log_handle__once != -1)
      {
        xpc_listener_create_anonymous_cold_1();
      }

      v5 = _xpc_listener_log_handle__log;
      if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      *buf = 134218242;
      v27 = v3;
      v28 = 2080;
      v29 = v4;
      v6 = "[%p] Error creating session for incoming peer: %s";
      goto LABEL_10;
    }

    v11 = *(v3 + 16);
    if (!v11)
    {
      ___xpc_listener_setup_connection_handlers_block_invoke_cold_9();
    }

    v12 = *(v3 + 16);
    (*(v11 + 16))(v11, v9);
    v25 = 0;
    v13 = _xpc_session_activate_if_new(v9, &v25);
    if (v25)
    {
      v14 = xpc_rich_error_copy_description(v25);
      if (_os_trace_lazy_init_completed_4libxpc())
      {
        if (_xpc_listener_log_handle__once != -1)
        {
          xpc_listener_create_anonymous_cold_1();
        }

        v15 = _xpc_listener_log_handle__log;
        if (os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v27 = v3;
          v28 = 2080;
          v29 = v14;
          _os_log_impl(&dword_197263000, v15, OS_LOG_TYPE_DEFAULT, "[%p] Error activating session: %s", buf, 0x16u);
        }
      }

      free(v14);
      goto LABEL_44;
    }

    switch(v13)
    {
      case 1:
LABEL_44:
        xpc_release(v9);
        goto LABEL_35;
      case 5:
        is_extracted = _xpc_session_is_extracted(v9);
        inited = _os_trace_lazy_init_completed_4libxpc();
        if (is_extracted)
        {
          if (!inited)
          {
            goto LABEL_44;
          }

          if (_xpc_listener_log_handle__once != -1)
          {
            xpc_listener_create_anonymous_cold_1();
          }

          v16 = _xpc_listener_log_handle__log;
          if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          *buf = 134217984;
          v27 = v3;
          v17 = "[%p] Peer session extracted";
        }

        else
        {
          if (!inited)
          {
            goto LABEL_44;
          }

          if (_xpc_listener_log_handle__once != -1)
          {
            xpc_listener_create_anonymous_cold_1();
          }

          v16 = _xpc_listener_log_handle__log;
          if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_44;
          }

          *buf = 134217984;
          v27 = v3;
          v17 = "[%p] Peer session rejected";
        }

        break;
      case 3:
        if (!_os_trace_lazy_init_completed_4libxpc())
        {
          goto LABEL_44;
        }

        if (_xpc_listener_log_handle__once != -1)
        {
          xpc_listener_create_anonymous_cold_1();
        }

        v16 = _xpc_listener_log_handle__log;
        if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        *buf = 134217984;
        v27 = v3;
        v17 = "[%p] Peer session explicitly activated";
        break;
      default:
        if (!_os_trace_lazy_init_completed_4libxpc())
        {
          goto LABEL_44;
        }

        if (_xpc_listener_log_handle__once != -1)
        {
          xpc_listener_create_anonymous_cold_1();
        }

        v20 = _xpc_listener_log_handle__log;
        if (!os_log_type_enabled(_xpc_listener_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_44;
        }

        v21 = _xpc_session_string_for_state(v13);
        *buf = 134218242;
        v27 = v3;
        v28 = 2080;
        v29 = v21;
        v17 = "[%p] Unexpected peer session state: %s";
        v22 = v20;
        v23 = 22;
        goto LABEL_70;
    }

    v22 = v16;
    v23 = 12;
LABEL_70:
    _os_log_impl(&dword_197263000, v22, OS_LOG_TYPE_DEFAULT, v17, buf, v23);
    goto LABEL_44;
  }

LABEL_35:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t _xpc_try_mach_port_construct(mach_port_options_ptr_t options, mach_port_context_t context, mach_port_name_t *name)
{
  v6 = MEMORY[0x1E69E9A60];
  do
  {
    v7 = mach_port_construct(*v6, options, context, name);
    v8 = v7;
    v9 = v7 == 6 || v7 == 3;
  }

  while (v9 && _waiting4memory());
  return v8;
}

uint64_t _xpc_mach_port_construct(mach_port_options_t *a1, mach_port_context_t a2)
{
  name = 0;
  v2 = _xpc_try_mach_port_construct(a1, a2, &name);
  if (v2)
  {
    _xpc_mach_port_construct_cold_1(v2);
  }

  return name;
}

uint64_t _xpc_mach_port_allocate(uint32_t a1, mach_port_msgcount_t a2, mach_port_context_t a3)
{
  v4.flags = a1;
  v4.mpl.mpl_qlimit = a2;
  v4.8 = 0uLL;
  return _xpc_mach_port_construct(&v4, a3);
}

uint64_t _xpc_mach_port_try_retain_send(uint64_t name)
{
  v1 = name;
  v2 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1);
  if (v2)
  {
    if (v2 != 15 && v2 != 17)
    {
      _os_assumes_log();
    }

    return 0xFFFFFFFFLL;
  }

  return v1;
}

uint64_t _xpc_mach_port_cleanup_right(mach_port_name_t name, int a2)
{
  if (name - 1 > 0xFFFFFFFD)
  {
    return 0;
  }

  if ((a2 - 17) < 2)
  {
    return mach_port_deallocate(*MEMORY[0x1E69E9A60], name);
  }

  if (a2 == 16)
  {
    return mach_port_destruct(*MEMORY[0x1E69E9A60], name, 0, 0);
  }

  else
  {
    return 0;
  }
}

mach_port_context_t _xpc_mach_port_get_context(mach_port_name_t name)
{
  v6 = *MEMORY[0x1E69E9840];
  context = 0;
  if (mach_port_get_context(*MEMORY[0x1E69E9A60], name, &context))
  {
    _xpc_mach_port_get_context_cold_1(&v3, v5);
  }

  result = context;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_mach_port_setup_port_destroyed(mach_port_name_t name, mach_port_t notify, mach_port_t *previous)
{
  if (notify)
  {
    v3 = 21;
  }

  else
  {
    v3 = 18;
  }

  return mach_port_request_notification(*MEMORY[0x1E69E9A60], name, 69, 0, notify, v3, previous);
}

uint64_t _xpc_mach_port_setup_no_more_senders(mach_port_name_t name, mach_port_t notify, mach_port_t *previous)
{
  if (notify)
  {
    v3 = 21;
  }

  else
  {
    v3 = 18;
  }

  return mach_port_request_notification(*MEMORY[0x1E69E9A60], name, 70, 0, notify, v3, previous);
}

uint64_t _xpc_get_self_audit_token()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if (*(v0 + 41) == 1)
  {
    if (*(v0 + 48) != -1)
    {
      dispatch_once_f((v0 + 48), (v0 + 56), _fetch_self_token);
    }
  }

  else
  {
    _fetch_self_token((v0 + 56));
  }

  return v0 + 56;
}

uint64_t _fetch_self_token(task_info_t task_info_out)
{
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
  {
    _xpc_interface_routine_cold_5();
  }

  v2 = task_info_out[5];
  result = getpid();
  if (v2 != result || !task_info_out[7])
  {
    _xpc_interface_routine_cold_5();
  }

  return result;
}

uint64_t _xpc_fileport_makeport()
{
  LODWORD(result) = fileport_makeport();
  if (result == -1)
  {
    LODWORD(result) = *__error();
  }

  if (result == 35)
  {
    return 12;
  }

  else
  {
    return result;
  }
}

uint64_t _xpc_dictionary_mach_helper(void *a1, const char *a2, const _xpc_type_s *a3, uint64_t (*a4)(xpc_object_t))
{
  if (xpc_get_type(a1) != OS_xpc_error && xpc_get_type(a1) != OS_xpc_dictionary)
  {
    return 0;
  }

  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 0;
  }

  v8 = value;
  if (xpc_get_type(value) != a3)
  {
    return 0;
  }

  return a4(v8);
}

void _xpc_bootout_wait_for_completion_sync(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___xpc_bootout_wait_for_completion_sync_block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  block[4] = v2;
  v4 = xpc_dictionary_copy_mach_send(a1, "monitor");
  if (v4 - 1 >= 0xFFFFFFFE)
  {
    dispatch_async(global_queue, block);
  }

  else
  {
    v5 = v4;
    v6 = dispatch_source_create(MEMORY[0x1E69E96E0], v4, 1uLL, global_queue);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___xpc_bootout_wait_for_completion_block_invoke;
    handler[3] = &unk_1E74AB338;
    handler[4] = block;
    handler[5] = v6;
    dispatch_source_set_event_handler(v6, handler);
    block[5] = MEMORY[0x1E69E9820];
    block[6] = 0x40000000;
    block[7] = ___xpc_bootout_wait_for_completion_block_invoke_2;
    block[8] = &__block_descriptor_tmp_18;
    v8 = v5;
    block[9] = v6;
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(v6);
  }

  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
}

void ___xpc_bootout_wait_for_completion_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  dispatch_source_cancel(v2);
}

void ___xpc_bootout_wait_for_completion_block_invoke_2(uint64_t a1)
{
  if (mach_port_deallocate(*MEMORY[0x1E69E9A60], *(a1 + 40)))
  {
    _os_assumes_log();
  }

  v2 = *(a1 + 32);

  dispatch_release(v2);
}

BOOL OUTLINED_FUNCTION_4_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_5()
{
  v2 = *v0;

  return _os_crash_msg();
}

uint64_t _xpc_dict_copy_sorted_keys(void *a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  empty = xpc_array_create_empty();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = ___xpc_dict_copy_sorted_keys_block_invoke;
  applier[3] = &unk_1E74AB380;
  applier[4] = &v12;
  xpc_dictionary_apply(a1, applier);
  count = xpc_array_get_count(v13[3]);
  do
  {
    if (count < 2)
    {
      break;
    }

    v3 = 0;
    for (i = 1; i != count; ++i)
    {
      value = xpc_array_get_value(v13[3], i - 1);
      v6 = xpc_array_get_value(v13[3], i);
      string_ptr = xpc_string_get_string_ptr(value);
      v8 = xpc_string_get_string_ptr(v6);
      if (strcmp(string_ptr, v8) >= 1)
      {
        xpc_retain(value);
        xpc_array_set_value(v13[3], i - 1, v6);
        xpc_array_set_value(v13[3], i, value);
        xpc_release(value);
        v3 = i;
      }
    }

    count = v3;
  }

  while (v3);
  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

xpc_object_t xpc_create_lwcr_dictionary(int64_t a1, int64_t a2, xpc_object_t object)
{
  if (object && xpc_get_type(object) != OS_xpc_dictionary)
  {
    return 0;
  }

  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "vers", a1);
  xpc_dictionary_set_int64(empty, "comp", 1);
  xpc_dictionary_set_int64(empty, "ccat", a2);
  if (object)
  {
    xpc_dictionary_set_value(empty, "reqs", object);
  }

  return empty;
}

xpc_object_t xpc_create_data_from_lwcr_dictionary(void *a1)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    return 0;
  }

  empty = xpc_array_create_empty();
  if (serialize_xpc_dict(a1, empty))
  {
    v3 = convert_xpc_array_to_ce_elem_array(empty);
    count = xpc_array_get_count(empty);
    ce_element_array_free(v3, count);
    xpc_release(empty);
    return 0;
  }

  if (!empty)
  {
    return 0;
  }

  v7 = convert_xpc_array_to_ce_elem_array(empty);
  v8 = xpc_array_get_count(empty);
  length = 0;
  v5 = 0;
  if (CESizeSerialization(v7, v8, &length) == &Errors)
  {
    v9 = _xpc_alloc_typed(length, 0x62CB2CE0uLL);
    v11 = 1;
    if (CESerializeWithOptions(_CERuntimeImpl, &v11, v7, v8, v9, v9 + length) == &Errors)
    {
      v5 = xpc_data_create(v9, length);
    }

    else
    {
      v5 = 0;
    }

    free(v9);
  }

  v10 = xpc_array_get_count(empty);
  ce_element_array_free(v7, v10);
  xpc_release(empty);
  return v5;
}

size_t convert_xpc_array_to_ce_elem_array(void *a1)
{
  result = xpc_array_get_count(a1);
  if (result >> 59)
  {
    __break(1u);
  }

  else
  {
    v3 = _xpc_alloc_typed(32 * result, 0x14D3B917uLL);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __convert_xpc_array_to_ce_elem_array_block_invoke;
    applier[3] = &__block_descriptor_tmp_12_1;
    applier[4] = v3;
    xpc_array_apply(a1, applier);
    return v3;
  }

  return result;
}

void ce_element_array_free(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1 + 1;
    do
    {
      if (*(v4 - 1) == 3)
      {
        free(*v4);
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  free(a1);
}

xpc_object_t xpc_create_lwcr_query_for_validation_category(int *a1, uint64_t a2)
{
  empty = xpc_array_create_empty();
  for (i = xpc_dictionary_create_empty(); a2; --a2)
  {
    v6 = *a1++;
    xpc_array_set_int64(empty, 0xFFFFFFFFFFFFFFFFLL, v6);
  }

  xpc_dictionary_set_value(i, "$in", empty);
  xpc_release(empty);
  return i;
}

uint64_t serialize_xpc_dict(void *a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 4;
  v4 = _xpc_dict_copy_sorted_keys(a1);
  v14 = 0;
  v15 = 0;
  bytes = 7;
  v13 = 0;
  xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 0x40000000;
  applier[2] = __serialize_xpc_dict_block_invoke;
  applier[3] = &unk_1E74AB3A8;
  applier[5] = a2;
  applier[6] = a1;
  applier[4] = &v8;
  xpc_array_apply(v4, applier);
  xpc_release(v4);
  v5 = *(v9 + 6);
  if (!v5)
  {
    v14 = 0;
    v15 = 0;
    bytes = 8;
    v13 = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    v5 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __serialize_xpc_dict_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v18 = 0;
  v19 = 0;
  bytes = 5;
  v17 = 0;
  xpc_array_set_data(v5, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
  string_ptr = xpc_string_get_string_ptr(a3);
  v13[3] = 0;
  v13[0] = 3;
  v13[1] = _xpc_strdup(string_ptr);
  v13[2] = xpc_string_get_length(a3);
  xpc_array_set_data(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL, v13, 0x20uLL);
  v7 = *(a1 + 48);
  v8 = xpc_string_get_string_ptr(a3);
  value = xpc_dictionary_get_value(v7, v8);
  if (value)
  {
    *(*(*(a1 + 32) + 8) + 24) = serialize_xpc_object(value, *(a1 + 40));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      bytes = 0;
      v17 = 0;
      v14 = 0;
      v15 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        v17 = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        _dyld_get_shared_cache_range();
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      xpc_string_get_string_ptr(a3);
      _os_log_simple();
      result = 0;
    }

    else
    {
      v10 = *(a1 + 40);
      v18 = 0;
      v19 = 0;
      bytes = 6;
      v17 = 0;
      xpc_array_set_data(v10, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      result = 1;
    }
  }

  else
  {
    bytes = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      bytes = 0;
      v17 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    xpc_string_get_string_ptr(a3);
    _os_log_simple();
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = 2;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t serialize_xpc_object(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  type = xpc_get_type(a1);
  if (type == OS_xpc_string)
  {
    v18 = 0;
    bytes = 2;
    string_ptr = xpc_string_get_string_ptr(a1);
    length = xpc_string_get_length(a1);
LABEL_12:
    v17 = length;
LABEL_16:
    LOBYTE(v18) = 0;
    xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
    v7 = 0;
LABEL_17:
    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v5 = type;
  if (type == OS_xpc_int64)
  {
    bytes = 4;
    v18 = 0;
    string_ptr = xpc_int64_get_value(a1);
LABEL_15:
    v17 = 0;
    goto LABEL_16;
  }

  if (type == OS_xpc_BOOL)
  {
    bytes = 1;
    v18 = 0;
    string_ptr = xpc_BOOL_get_value(a1);
    goto LABEL_15;
  }

  if (type == OS_xpc_data)
  {
    v18 = 0;
    bytes = 9;
    string_ptr = xpc_data_get_bytes_ptr(a1);
    length = xpc_data_get_length(a1);
    goto LABEL_12;
  }

  if (type != OS_xpc_dictionary)
  {
    if (type == OS_xpc_array)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2000000000;
      v14 = 4;
      v17 = 0;
      v18 = 0;
      bytes = 5;
      string_ptr = 0;
      xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &bytes, 0x20uLL);
      bytes = MEMORY[0x1E69E9820];
      string_ptr = 0x40000000;
      v17 = __serialize_xpc_array_block_invoke;
      v18 = &unk_1E74AB3D0;
      v19 = &v11;
      v20 = a2;
      xpc_array_apply(a1, &bytes);
      v7 = *(v12 + 6);
      if (!v7)
      {
        v23 = 0;
        v24 = 0;
        v21 = 6;
        v22 = 0;
        xpc_array_set_data(a2, 0xFFFFFFFFFFFFFFFFLL, &v21, 0x20uLL);
        v7 = *(v12 + 6);
      }

      _Block_object_dispose(&v11, 8);
    }

    else
    {
      bytes = 0;
      string_ptr = 0;
      v21 = 0;
      v22 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        bytes = 0;
        string_ptr = 0;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v11 = 0;
        _dyld_get_shared_cache_range();
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      xpc_type_get_name(v5);
      _os_log_simple();
      v7 = 1;
    }

    goto LABEL_17;
  }

  v10 = *MEMORY[0x1E69E9840];

  return serialize_xpc_dict(a1, a2);
}

uint64_t __convert_xpc_array_to_ce_elem_array_block_invoke(uint64_t a1, uint64_t a2, xpc_object_t xdata)
{
  v3 = (*(a1 + 32) + 32 * a2);
  bytes_ptr = xpc_data_get_bytes_ptr(xdata);
  v5 = bytes_ptr[1];
  *v3 = *bytes_ptr;
  v3[1] = v5;
  return 1;
}

char *os_transaction_copy_description(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return strdup(*(a1 + 56));
  }

  else
  {
    return strdup((a1 + 49));
  }
}

uint64_t os_transaction_get_description(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return *(a1 + 56);
  }

  else
  {
    return a1 + 49;
  }
}

void _os_transaction_xref_dispose(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = _xpc_asprintf("Over-release of a transaction object.");
    _xpc_api_misuse(v6);
  }

  *(a1 + 48) &= ~1u;
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v2 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (a1 + 16);
  if (v3)
  {
    *(v3 + 24) = v4;
  }

  *v4 = v3;
  *v5 = -1;
  v5[1] = -1;
  _xpc_transaction_end_impl(v2);

  os_unfair_lock_unlock(v2 + 44);
}

uint64_t _xpc_transaction_end_impl(uint64_t a1)
{
  v1 = *(a1 + 172);
  v2 = (v1 - 1);
  *(a1 + 172) = v2;
  if (v1 <= 0)
  {
    v6 = _xpc_asprintf("Underflow of transaction count.");
    _xpc_api_misuse(v6);
  }

  _xpc_ktrace_pid1(687865888, v2);
  result = *(a1 + 172);
  if (v1 == 1 && *(a1 + 168) == 1)
  {
    v5 = getpid();
    proc_set_dirty(v5, 0);
    result = _xpc_ktrace_pid0(687865896);
    if (*(a1 + 170) == 1)
    {
      _exit(0);
    }
  }

  return result;
}

uint64_t os_transaction_create(const char *a1)
{
  v3 = strlen(a1);
  v4 = v3 + 1;
  v5 = v3 == -1;
  is_memory_immutable = _dyld_is_memory_immutable();
  v7 = is_memory_immutable;
  if (v4 >= 0x1CF)
  {
    v8 = 463;
  }

  else
  {
    v8 = v4;
  }

  if (is_memory_immutable)
  {
    v9 = 64;
  }

  else
  {
    v9 = v8 + 49;
  }

  v10 = _xpc_os_transaction_alloc(v9);
  v11 = v10;
  if ((v7 & 1) != 0 || v5)
  {
    v12 = *(v10 + 48) | 2;
    *(v10 + 56) = a1;
  }

  else
  {
    strlcpy((v10 + 49), a1, v8);
    v12 = *(v11 + 48);
  }

  *(v11 + 48) = v12 | 1;
  *(v11 + 40) = v1;
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v13 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v13 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  v14 = *(v13 + 184);
  *(v11 + 16) = v14;
  if (v14)
  {
    *(v14 + 24) = v11 + 16;
  }

  *(v13 + 184) = v11;
  *(v11 + 24) = v13 + 184;
  _xpc_transaction_begin_impl(v13);
  os_unfair_lock_unlock((v13 + 176));
  *(v11 + 32) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  return v11;
}

void _xpc_transaction_begin_impl(uint64_t a1)
{
  v1 = *(a1 + 172);
  *(a1 + 172) = v1 + 1;
  if (v1 == -1)
  {
    v5 = _xpc_asprintf("Underflow of transaction count.");
    _xpc_api_misuse(v5);
  }

  _xpc_ktrace_pid1(687865884, v1 + 1);
  v3 = *(a1 + 172);
  if (_sigterm_deferred_initialization == 1 && _xpc_is_multithreaded())
  {
    _sigterm_deferred_initialization = 0;
    _sigterm_queue = dispatch_queue_create("com.apple.xpc.transaction.sigterm", 0);
    _sigterm_source = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, _sigterm_queue);
    dispatch_source_set_event_handler_f(_sigterm_source, _xpc_transaction_sigterm_handler);
    dispatch_resume(_sigterm_source);
  }

  if (v1 <= 0 && *(a1 + 168) == 1)
  {
    v4 = getpid();
    proc_set_dirty(v4, 1);
    _xpc_ktrace_pid0(687865892);
  }
}

_DWORD *_transaction_snapshot_new_locked(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 184);
  if (v2)
  {
    LODWORD(v3) = 0;
    do
    {
      LODWORD(v3) = v3 + 1;
      v2 = *(v2 + 16);
    }

    while (v2);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v4 = *(a1 + 172) - v3;
  v5 = _xpc_alloc_typed(8 * v3 + 8, 0x278C1424uLL);
  v6 = v5;
  *v5 = v4;
  v5[1] = v3;
  v7 = *(a1 + 184);
  if (v7)
  {
    v3 = v3;
    v8 = v5 + 2;
    do
    {
      _os_object_retain_internal();
      *v8 = v7;
      if (!v3)
      {
        _transaction_snapshot_new_locked_cold_1(&v11, v12);
      }

      v7 = *(v7 + 16);
      --v3;
      ++v8;
    }

    while (v7);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void _transaction_snapshot_destroy(int *a1)
{
  if (a1[1] >= 1)
  {
    v2 = 0;
    v3 = (a1 + 2);
    do
    {
      v4 = *&v3[8 * v2];
      _os_object_release_internal();
      *&v3[8 * v2++] = 0;
    }

    while (v2 < a1[1]);
  }

  free(a1);
}

void _xpc_transaction_begin()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  _xpc_transaction_begin_impl(v0);

  os_unfair_lock_unlock(v0 + 44);
}

void _xpc_transaction_end()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  _xpc_transaction_end_impl(v0);

  os_unfair_lock_unlock(v0 + 44);
}

void xpc_track_activity()
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  if (*(v0 + 169))
  {
    v1 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((v0 + 176));
  }

  else
  {
    *(v0 + 169) = 1;
    os_unfair_lock_unlock((v0 + 176));
    if (*(v0 + 192))
    {
      v2 = 19;
    }

    else
    {
      v2 = 7;
    }

    v3 = getpid();
    if ((proc_track_dirty(v3, v2) | 0x10) != 0x10)
    {
      xpc_track_activity_cold_2(&v5, v6);
    }

    xpc_transactions_enable();
    if (signal(15, 1) == -1)
    {
      _xpc_fd_desc_cold_1();
    }

    v4 = *MEMORY[0x1E69E9840];
  }
}

void xpc_transactions_enable()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  if ((*(v0 + 168) & 1) == 0)
  {
    if (!*(v0 + 169))
    {
      v1 = getpid();
      proc_track_dirty(v1, 1u);
    }

    *(v0 + 168) = 1;
    if (*(v0 + 172))
    {
      v2 = getpid();
      proc_set_dirty(v2, 1);
    }

    _sigterm_deferred_initialization = 1;
  }

  os_unfair_lock_unlock((v0 + 176));
}

uint64_t xpc_transaction_try_exit_clean()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  if (!v0[43]._os_unfair_lock_opaque)
  {
    _exit(0);
  }

  v1 = _transaction_snapshot_new_locked(v0);
  os_unfair_lock_unlock(v0 + 44);
  _os_transaction_log_snapshot("while trying to exit cleanly", 0, v1);
  return 0;
}

void _os_transaction_log_snapshot(uint64_t a1, int a2, int *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (_xpc_transaction_log_pred != -1)
  {
    _os_transaction_log_snapshot_cold_1();
  }

  v5 = _xpc_transaction_log__log;
  v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = v8 + *a3;
    v10 = ", list follows";
    *buf = 136316162;
    if (!v8)
    {
      v10 = "";
    }

    v39 = a1;
    v40 = 1024;
    *v41 = v9;
    *&v41[4] = 1024;
    *&v41[6] = v8;
    v42 = 1024;
    v43 = v7;
    v44 = 2080;
    v45 = v10;
    _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, "Remaining transactions %s: %d (%d os_transaction + %d xpc_transaction_begin)%s", buf, 0x28u);
  }

  v11 = a3[1];
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      v13 = *&a3[2 * i + 2];
      if ((*(v13 + 48) & 2) != 0)
      {
        v14 = *(v13 + 56);
      }

      else
      {
        v14 = v13 + 49;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v6 - *(v13 + 32);
        *buf = 136446466;
        v39 = v14;
        v40 = 2048;
        *v41 = v15 / 0x3B9ACA00;
        _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, "os_transaction: '%{public}s', created %llu sec ago", buf, 0x16u);
        v11 = a3[1];
      }
    }
  }

  if (a2)
  {
    v16 = string_builder_new(0x100uLL);
    v35 = *a3;
    string_builder_appendf(v16, "Remaining %d os_transaction + %d xpc_transaction_begin\n", v17, v18, v19, v20, v21, v22, a3[1]);
    v23 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
    if (a3[1] >= 1)
    {
      v30 = v23;
      v31 = 0;
      do
      {
        v32 = *&a3[2 * v31 + 2];
        if ((*(v32 + 48) & 2) != 0)
        {
          v33 = *(v32 + 56);
        }

        v36 = (v30 - *(v32 + 32)) / 0x3B9ACA00;
        string_builder_appendf(v16, "os_transaction: [%p] '%s', created %llu sec ago\n", v24, v25, v26, v27, v28, v29, *(v32 + 40));
        ++v31;
      }

      while (v31 < a3[1]);
    }

    if (_transaction_snapshot_write_crash_message_asi_str)
    {
      qword_1EAF1E800 = 0;
      free(_transaction_snapshot_write_crash_message_asi_str);
    }

    _transaction_snapshot_write_crash_message_asi_str = string_builder_copy_string(v16);
    qword_1EAF1E800 = _transaction_snapshot_write_crash_message_asi_str;
    string_builder_destroy(v16);
  }

  _transaction_snapshot_destroy(a3);
  v34 = *MEMORY[0x1E69E9840];
}

void xpc_transaction_exit_clean()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  *(v0 + 170) = 1;
  if (!*(v0 + 172))
  {
    _exit(0);
  }

  v1 = _transaction_snapshot_new_locked(v0);
  if ((*(v0 + 9) & 4) != 0)
  {
    request = _service_create_request();
    xpc_dictionary_set_BOOL(request, "yesno", 1);
    object = 0;
    v3 = _xpc_service_routine(715, request, &object);
    if (v3 != 124)
    {
      if (v3)
      {
        _os_assumes_log();
      }

      else
      {
        xpc_release(object);
      }
    }

    xpc_release(request);
  }

  os_unfair_lock_unlock((v0 + 176));
  _os_transaction_log_snapshot("on activation of exit_when_clean", 0, v1);
}

xpc_object_t _service_create_request()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "type", 6uLL);
  xpc_dictionary_set_uint64(v0, "handle", 0);
  xpc_dictionary_set_BOOL(v0, "self", 1);
  return v0;
}

void xpc_transaction_interrupt_clean_exit()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  *(v0 + 170) = 0;
  if ((*(v0 + 9) & 4) != 0)
  {
    request = _service_create_request();
    xpc_dictionary_set_BOOL(request, "yesno", 0);
    object = 0;
    v2 = _xpc_service_routine(715, request, &object);
    if (v2 != 124 && v2 != 37)
    {
      if (v2)
      {
        _os_assumes_log();
      }

      else
      {
        xpc_release(object);
      }
    }

    xpc_release(request);
  }

  os_unfair_lock_unlock((v0 + 176));
}

void _os_transaction_log_active(uint64_t a1, int a2)
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v4 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  v5 = _transaction_snapshot_new_locked(v4);
  os_unfair_lock_unlock(v4 + 44);

  _os_transaction_log_snapshot(a1, a2, v5);
}

void _xpc_transaction_sigterm_handler()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  os_unfair_lock_lock_with_options();
  dispatch_source_cancel(_sigterm_source);
  dispatch_release(_sigterm_source);
  v1 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, _sigterm_queue);
  dispatch_release(_sigterm_queue);
  os_unfair_lock_unlock(v0 + 44);
  v2 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX) + 30000000000;
  v3 = dispatch_time(0, 500000000);
  dispatch_source_set_timer(v1, v3, 0x1DCD6500uLL, 0xEE6B280uLL);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___xpc_transaction_sigterm_handler_block_invoke;
  v4[3] = &__block_descriptor_tmp_11;
  v4[4] = v2;
  v4[5] = v1;
  dispatch_source_set_event_handler(v1, v4);
  dispatch_resume(v1);
}

void ___xpc_transaction_sigterm_handler_block_invoke(uint64_t a1)
{
  _os_transaction_log_active("after SIGTERM", 1);
  if (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW_APPROX) >= *(a1 + 32))
  {
    dispatch_source_cancel(*(a1 + 40));
    v2 = *(a1 + 40);

    dispatch_release(v2);
  }
}

os_log_t ___xpc_transaction_log_block_invoke()
{
  result = os_log_create("com.apple.xpc.transaction", "all");
  _xpc_transaction_log__log = result;
  return result;
}

uint64_t _xpc_bundle_resolve_path_variant(const char *a1)
{
  if (access(a1, 5))
  {
    return 3;
  }

  v3 = open(a1, 0);
  if (v3 == -1)
  {
    v2 = 3;
    goto LABEL_13;
  }

  v4 = v3;
  if (v3 < 0)
  {
    return 3;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v10 = ___xpc_bundle_resolve_path_variant_block_invoke;
  v11 = &__block_descriptor_tmp_12;
  v12 = v3;
  v5 = &dword_1E74AB4B8;
  v6 = 3;
  while (!(v10)(v9, *(v5 - 1)))
  {
    v5 += 4;
    if (!--v6)
    {
      v2 = 3;
      goto LABEL_10;
    }
  }

  v2 = *v5;
LABEL_10:
  if (close(v4) == -1)
  {
LABEL_13:
    v8 = *__error();
    _os_assumes_log();
  }

  return v2;
}

BOOL ___xpc_bundle_resolve_path_variant_block_invoke(uint64_t a1, const char *a2)
{
  memset(&v6, 0, sizeof(v6));
  v2 = fstatat(*(a1 + 32), a2, &v6, 0);
  if (v2)
  {
    v3 = *__error();
    if (v2 == -1 && v3 != 2)
    {
      _xpc_fd_desc_cold_1();
    }
  }

  return v2 == 0;
}

uint64_t _xpc_bundle_resolve_executable_variant(const char *a1)
{
  v1 = _xpc_strdup(a1);
  v2 = strrchr(v1, 47);
  if (v2)
  {
    *v2 = 0;
  }

  v3 = &dword_1E74AB478;
  v4 = 4;
  while (!_xpc_has_suffix(v1, *(v3 - 1)))
  {
    v3 += 4;
    if (!--v4)
    {
      goto LABEL_8;
    }
  }

  v5 = *v3;
  if (v5 != 2)
  {
    goto LABEL_13;
  }

LABEL_8:
  v6 = strrchr(v1, 47);
  if (v6)
  {
    *v6 = 0;
  }

  if (_xpc_has_suffix(v1, "Versions"))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

LABEL_13:
  free(v1);
  return v5;
}

char *_xpc_bundle_copy_container(unsigned int a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    _xpc_bundle_copy_container_cold_1(&v9, v10);
  }

  v3 = _xpc_strdup(a2);
  for (i = 0; ; ++i)
  {
    v5 = a1 > 2 ? 0 : qword_1972A7D48[a1];
    if (i >= v5)
    {
      break;
    }

    v6 = strrchr(v3, 47);
    if (v6)
    {
      *v6 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

char *_xpc_bundle_variant_create_subpath(_BYTE *a1, unsigned int a2, int a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    _xpc_bundle_copy_container_cold_1(&v8, v9);
  }

  v4 = 0;
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v5 = &off_1E74AB4E0[8 * a2 + 4];
      }

      else
      {
        v5 = &off_1E74AB4E0[8 * a2 + 7];
      }

      goto LABEL_19;
    }

    if (a3 == 6)
    {
      v5 = &off_1E74AB4E0[8 * a2 + 5];
      goto LABEL_19;
    }

    if (a3 == 7)
    {
      v5 = &off_1E74AB4E0[8 * a2 + 6];
      goto LABEL_19;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v5 = &off_1E74AB4E0[8 * a2 + 2];
      }

      else
      {
        v5 = &off_1E74AB4E0[8 * a2 + 3];
      }

      goto LABEL_19;
    }

    if (!a3)
    {
      v5 = &off_1E74AB4E0[8 * a2];
      goto LABEL_19;
    }

    if (a3 == 1)
    {
      v5 = &off_1E74AB4E0[8 * a2 + 1];
LABEL_19:
      v4 = *v5;
    }
  }

  if (a1 && *a1)
  {
    if (!v4)
    {
LABEL_28:
      if (a4)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  else if (!v4)
  {
    goto LABEL_28;
  }

  if (!*v4)
  {
    goto LABEL_28;
  }

  if (a4)
  {
LABEL_29:
    result = _xpc_asprintf("%s%s%s%s%s");
    goto LABEL_30;
  }

LABEL_27:
  result = _xpc_asprintf("%s%s%s");
LABEL_30:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

char *_xpc_bundle_resolve_executable_name(const char *a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, "CFBundleExecutable");
  if (string || (string = xpc_dictionary_get_string(xdict, "NSExecutable")) != 0)
  {

    return _xpc_strdup(string);
  }

  else
  {
    v6 = _xpc_strdup(a1);
    v7 = strrchr(v6, 47);
    if (v7 == v6)
    {
      free(v6);
      v8 = _xpc_strdup(a1 + 1);
    }

    else
    {
      if (v7[1])
      {
        v8 = _xpc_strdup(v7 + 1);
      }

      else
      {
        v9 = v7 + 2;
        do
        {
          v10 = *(v9 - 2);
          --v9;
        }

        while (v10 == 47);
        *v9 = 0;
        v11 = strrchr(v6, 47);
        v8 = strdup(v11 + 1);
        *v9 = 47;
      }

      free(v6);
    }

    if (v8)
    {
      v12 = strrchr(v8, 46);
      if (v12)
      {
        *v12 = 0;
      }
    }

    return v8;
  }
}

BOOL _xpc_is_being_debugged()
{
  v0 = _xpc_is_being_debugged_is_being_debugged;
  if (!_xpc_is_being_debugged_is_being_debugged)
  {
    v1 = getpid();
    if (_xpc_pid_is_being_debugged(v1))
    {
      v0 = 2;
    }

    else
    {
      v0 = 1;
    }

    _xpc_is_being_debugged_is_being_debugged = v0;
  }

  return v0 == 2;
}

uint64_t _xpc_pid_is_being_debugged(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0u;
  v5 = 0u;
  memset(v3, 0, sizeof(v3));
  if (_xpc_proc_bsdinfo(a1, v3))
  {
    _os_assumes_log();
    result = 0;
  }

  else
  {
    result = (v4 >> 1) & 1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_api_misuse(const char *a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  *__str = 0u;
  v2 = 0u;
  snprintf(__str, 0xA0uLL, "XPC API Misuse: %s", a1);
  qword_1EAF1E800 = __str;
  __break(1u);
}

void *string_builder_new(size_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    string_builder_new_cold_1(&v6, v7);
  }

  v2 = _xpc_alloc_typed(0x18uLL, 0x1010040113C0ABBuLL);
  v3 = _xpc_alloc_typed(a1, 0xD7E5F149uLL);
  *v3 = 0;
  *v2 = v3;
  v2[1] = a1;
  v2[2] = 0;
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

void string_builder_destroy(void **a1)
{
  free(*a1);

  free(a1);
}

void string_builder_appendf(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v24 = *MEMORY[0x1E69E9840];
  __source[0] = 0;
  __source[1] = &a9;
  v10 = vasprintf(__source, a2, &a9);
  if (v10 == -1)
  {
    _xpc_fd_desc_cold_1();
    goto LABEL_15;
  }

  v11 = *(a1 + 16);
  v12 = __CFADD__(v11, v10);
  v13 = v11 + v10;
  if (v12)
  {
    v14 = (v10 >> 63) + 1;
  }

  else
  {
    v14 = v10 >> 63;
  }

  v15 = v14 << 63 >> 63;
  if (v15 != v14 || v15 < 0)
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 8);
  if (v16 <= v13)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      v18 = 2 * v13;
      if (2 * v13 < 2 * v16)
      {
        string_builder_appendf_cold_2(&v21, v23);
      }

      v17 = _xpc_alloc_typed(2 * v13, 0x160059B9uLL);
      if (strlcpy(v17, *a1, v18) >= v18)
      {
        string_builder_appendf_cold_1(&v21, v23);
      }

      free(*a1);
      *a1 = v17;
      *(a1 + 8) = v18;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
  }

  v17 = *a1;
  v18 = *(a1 + 8);
LABEL_13:
  v19 = strlcat(v17, __source[0], v18);
  *(a1 + 16) = v19;
  if (v19 >= *(a1 + 8))
  {
    string_builder_appendf_cold_3(&v21, v23);
  }

  free(__source[0]);
LABEL_15:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t _xpc_services_unavailable()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  if (*v0)
  {
    return 1;
  }

  if (*(v0 + 41) != 1)
  {
    return 1;
  }

  v1 = *(v0 + 8);
  if ((v1 & 0x80) != 0)
  {
    return 1;
  }

  else
  {
    return (v1 >> 1) & 1;
  }
}

uint64_t _xpc_runtime_get_entitlements_data()
{
  if (_xpc_runtime_get_entitlements_data_pred != -1)
  {
    _xpc_runtime_get_entitlements_data_cold_1();
  }

  return _xpc_runtime_get_entitlements_data_entitlements_data;
}

xpc_object_t ___xpc_runtime_get_entitlements_data_block_invoke()
{
  v0 = getpid();
  result = _xpc_copy_entitlements_data(v0, 0, 16);
  _xpc_runtime_get_entitlements_data_entitlements_data = result;
  return result;
}

uint64_t _xpc_runtime_get_self_entitlements()
{
  if (_xpc_runtime_get_self_entitlements_pred != -1)
  {
    _xpc_runtime_get_self_entitlements_cold_1();
  }

  return _xpc_runtime_get_self_entitlements_entitlements;
}

xpc_object_t ___xpc_runtime_get_self_entitlements_block_invoke()
{
  if (_xpc_runtime_get_entitlements_data_pred != -1)
  {
    _xpc_runtime_get_entitlements_data_cold_1();
  }

  if (_xpc_runtime_get_entitlements_data_entitlements_data)
  {
    v1 = 0;
    v2 = 0;
    xpc_data_get_bytes_ptr_and_length(_xpc_runtime_get_entitlements_data_entitlements_data, &v1, &v2);
    result = xpc_create_from_ce_der(v1, v2);
  }

  else
  {
    result = xpc_dictionary_create(0, 0, 0);
  }

  _xpc_runtime_get_self_entitlements_entitlements = result;
  return result;
}

uint64_t _xpc_runtime_is_app_sandboxed()
{
  if (_xpc_runtime_is_app_sandboxed_pred != -1)
  {
    _xpc_runtime_is_app_sandboxed_cold_1();
  }

  return _xpc_runtime_is_app_sandboxed_containerized;
}

uint64_t ___xpc_runtime_is_app_sandboxed_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  bzero(v2, 0x400uLL);
  getpid();
  result = sandbox_container_path_for_pid();
  if (!result && v2[0])
  {
    _xpc_runtime_is_app_sandboxed_containerized = 1;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void xpc_add_bundle(const char *a1, char a2)
{
  v10 = *MEMORY[0x1E69E9840];
  _xpc_uncork_domain();
  if ((a2 & 2) != 0)
  {
    v4 = 4097;
  }

  else
  {
    v4 = 1;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, a1, v4);
  v6 = _xpc_bootstrap_services(v5);
  if (v6 != 36 && v6 != 124 && v6)
  {
    xpc_track_activity_cold_2(&v8, v9);
  }

  v7 = *MEMORY[0x1E69E9840];

  xpc_release(v5);
}

uint64_t xpc_add_bundle_with_lwcr(const char *a1, char a2, void *a3)
{
  _xpc_uncork_domain();
  if ((a2 & 2) != 0)
  {
    v6 = 4097;
  }

  else
  {
    v6 = 1;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, a1, v6);
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "type", 5uLL);
  v9 = getpid();
  xpc_dictionary_set_uint64(v8, "handle", v9);
  xpc_dictionary_set_value(v8, "paths", v7);
  xpc_dictionary_set_value(v8, "lwcr", a3);
  xdict = 0;
  int64 = _xpc_domain_routine(800, v8, &xdict);
  xpc_release(v8);
  if (!int64)
  {
    int64 = xpc_dictionary_get_int64(xdict, "bootstrap-error");
  }

  if (xdict)
  {
    xpc_release(xdict);
  }

  xpc_release(v7);
  if (int64 == 124 || int64 == 36)
  {
    return 0;
  }

  else
  {
    return int64;
  }
}

void xpc_add_bundles_for_domain(void *a1, void *a2)
{
  _xpc_uncork_domain();
  int64 = xpc_dictionary_get_int64(a1, "pid");
  if (!int64)
  {
    v10 = _xpc_asprintf("Bogus domain object.");
    _xpc_api_misuse(v10);
  }

  v5 = int64;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "type", 5uLL);
  xpc_dictionary_set_uint64(v6, "handle", v5);
  xpc_dictionary_set_value(v6, "paths", a2);
  object = 0;
  v7 = _xpc_domain_routine(800, v6, &object);
  if (v7)
  {
    v8 = v7;
    v9 = xpc_strerror(v7);
    syslog(3, "Failed to extend PID domain: %d: %s", v8, v9);
  }

  else
  {
    xpc_release(object);
  }

  xpc_release(v6);
}

size_t _xpc_spawnattr_pack_string_fragment(uint64_t a1, _DWORD *a2, void *a3, char *__src)
{
  strcpy((a1 + *a2 + 244), __src);
  result = strlen(__src);
  *a2 += result;
  *a3 -= result;
  return result;
}

size_t _xpc_spawnattr_pack_string(uint64_t a1, _DWORD *a2, void *a3, char *__src)
{
  strcpy((a1 + *a2 + 244), __src);
  result = strlen(__src);
  *a2 += result + 1;
  *a3 -= result + 1;
  return result;
}

const char *_xpc_spawnattr_unpack_string(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (a2 <= a3)
  {
    return 0;
  }

  v3 = (a1 + a3 + 244);
  if (strnlen(v3, a2 - a3) + 1 <= a2 - a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *_xpc_spawnattr_pack_bytes(uint64_t a1, _DWORD *a2, void *a3, void *__src, size_t __n)
{
  v5 = __n;
  result = memcpy((a1 + *a2 + 244), __src, __n);
  *a2 += v5;
  *a3 -= v5;
  return result;
}

uint64_t _xpc_spawnattr_unpack_bytes(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a2 - a3 >= a4)
  {
    v4 = a1 + a3 + 244;
  }

  else
  {
    v4 = 0;
  }

  if (a2 <= a3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

const char *_xpc_spawnattr_unpack_strings(uint64_t a1, unint64_t a2, unsigned int a3, const char **a4, uint64_t a5)
{
  if (a3 >= a2)
  {
    return 0;
  }

  v5 = a5;
  if (!a5)
  {
    return *a4;
  }

  v7 = a3;
  v9 = a1 + 244;
  for (i = a4; ; ++i)
  {
    v11 = (v9 + v7);
    v12 = strnlen(v11, a2 - v7);
    if (v12 + 1 > a2 - v7)
    {
      break;
    }

    v7 += v12 + 1;
    *i = v11;
    if (!--v5)
    {
      return *a4;
    }
  }

  return 0;
}

uint64_t _xpc_spawnattr_binprefs_pack(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = xpc_binprefs_count(a2);
  *(a1 + 32) = v8;
  v9 = 0;
  if (v8)
  {
    *(a1 + 36) = *a3;
    v10 = 8 * (v8 - 1);
    v11 = v8;
    v12 = (*a3 + a1 + 248);
    do
    {
      *(v12 - 1) = xpc_binprefs_cpu_type(a2, v9);
      *v12 = xpc_binprefs_cpu_subtype(a2, v9);
      v12 += 2;
      ++v9;
    }

    while (v11 != v9);
    v9 = v10 + 8;
  }

  else
  {
    *(a1 + 36) = 0;
  }

  result = xpc_binprefs_count(a2);
  if (v9 != 8 * result)
  {
    _xpc_spawnattr_binprefs_pack_cold_1(&v15, v16);
  }

  *a3 += v9;
  *a4 -= v9;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_spawnattr_binprefs_unpack(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2 || a2 - *(a1 + 36) < 8 * v2)
  {
    return 0;
  }

  xpc_binprefs_alloc();
  v4 = v5;
  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = (*(a1 + 36) + a1 + 248);
    do
    {
      xpc_binprefs_add(v4, *(v7 - 1), *v7);
      ++v6;
      v7 += 2;
    }

    while (v6 < *(a1 + 32));
  }

  return v4;
}

uint64_t _xpc_pipe_desc(const char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v3 = snprintf(__str, 0x80uLL, "<%s: %p> { name = %s }", "pipe", a1, a1 + 49);
  if (v3 >= 0x7F)
  {
    v4 = 127;
  }

  else
  {
    v4 = v3;
  }

  result = _xpc_serializer_append(a2, __str, (v4 + 1), 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_pipe_debug(uint64_t a1, char *__str, size_t __size)
{
  if (__size < 2)
  {
    return 0;
  }

  LODWORD(result) = snprintf(__str, __size, ", name = %s", (a1 + 49));
  if (result >= __size)
  {
    return __size - 1;
  }

  else
  {
    return result;
  }
}

uint64_t _xpc_pipe_dispose(mach_port_context_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (_xpc_mach_port_release(result))
    {
      _os_assumes_log();
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      if (*(a1 + 28) <= 0 && _xpc_mach_port_close_recv(v3, 0, a1))
      {
        _os_assumes_log();
      }

      if (_xpc_mach_port_release(*(a1 + 40)))
      {
        _os_assumes_log();
      }
    }

    result = *(a1 + 36);
    if (result)
    {
      result = _xpc_mach_port_close_recv(result, 0, a1);
      if (result)
      {
        return _os_assumes_log();
      }
    }
  }

  return result;
}

uint64_t _xpc_pipe_handle_mig(mach_msg_header_t *a1, mach_msg_header_t *a2, unsigned int (*a3)(void))
{
  if (!a3())
  {
    mach_msg_destroy(a2);
    return 22;
  }

  if ((a2->msgh_bits & 0x80000000) == 0)
  {
    msgh_remote_port = a2[1].msgh_remote_port;
    if (msgh_remote_port == -305)
    {
      a2->msgh_remote_port = 0;
    }

    else if (msgh_remote_port)
    {
      if ((a1->msgh_bits & 0x80000000) != 0)
      {
        a1->msgh_remote_port = 0;
        mach_msg_destroy(a1);
      }
    }
  }

  if (a2->msgh_remote_port)
  {
    result = mach_msg(a2, 1, a2->msgh_size, 0, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    if (result != 268435459)
    {
      _os_assumes_log();
      mach_msg_destroy(a2);
      return 5;
    }

    mach_msg_destroy(a2);
  }

  return 0;
}

mach_port_context_t xpc_pipe_create(char *a1, int a2)
{
  if ((a2 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = _xpc_pipe_bootstrap_look_up(a1, v4, 0);
  if (v5 - 1 > 0xFFFFFFFD)
  {
    return 0;
  }

  v6 = v5;
  v7 = _xpc_pipe_create(a1, v5, a2);
  if (_xpc_mach_port_release(v6))
  {
    _os_assumes_log();
  }

  return v7;
}

uint64_t _xpc_pipe_bootstrap_look_up(char *a1, int a2, uint64_t a3)
{
  v8 = 0;
  v3 = 8;
  if (a2 != 2)
  {
    v3 = 0;
  }

  v4 = a2 == 3;
  if (a2 == 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 7;
  }

  if (v4)
  {
    a3 = a3;
  }

  else
  {
    a3 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (_xpc_look_up_endpoint(a1, v5, a3, 0, 0, v6, 0, &v8, 0))
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

mach_port_context_t _xpc_pipe_create(char *__s, mach_port_name_t a2, int a3)
{
  if (__s)
  {
    v6 = strlen(__s) + 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = _xpc_base_create(OS_xpc_pipe, v6 + 32);
  if (_xpc_mach_port_retain_send(a2))
  {
    _os_assumes_log();
    xpc_release(v7);
    return 0;
  }

  else
  {
    *(v7 + 32) = a2;
    if (__s || (a3 & 0x10000) != 0)
    {
      *(v7 + 40) = _xpc_mach_port_allocate(0x37u, 6u, v7);
      *(v7 + 36) = _xpc_mach_port_allocate(0x23u, 6u, v7);
      *(v7 + 44) = *(v7 + 40);
      *(v7 + 48) |= 1u;
      if (__s)
      {
        strlcpy((v7 + 49), __s, v6);
      }
    }

    else
    {
      *(v7 + 44) = a2;
    }

    if ((a3 & 8) != 0)
    {
      v8 = 6;
    }

    else
    {
      v8 = 4;
    }

    *(v7 + 48) |= v8;
    *(v7 + 24) = 0;
  }

  return v7;
}

mach_port_context_t xpc_pipe_create_with_user_session_uid(char *a1, unsigned int a2, int a3)
{
  if ((xpc_user_sessions_enabled() & 1) == 0)
  {
    v10 = _xpc_asprintf("xpc_pipe_create_with_user_session_uid() can only be used if xpc_user_sessions_enabled() returns true.");
    goto LABEL_12;
  }

  if ((a3 & 2) != 0)
  {
    v10 = _xpc_asprintf("xpc_pipe_create_with_user_session_uid() cannot be used with the privileged flag.");
LABEL_12:
    _xpc_api_misuse(v10);
  }

  v11 = 0;
  v6 = _xpc_look_up_endpoint(a1, 2, a2, 0, 0, 0, 0, &v11, 0);
  v7 = 0;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v11;
  }

  if (v8 - 1 <= 0xFFFFFFFD)
  {
    v7 = _xpc_pipe_create(a1, v8, a3);
    if (_xpc_mach_port_release(v8))
    {
      _os_assumes_log();
    }
  }

  return v7;
}

uint64_t _xpc_pipe_routine(uint64_t a1, int a2, void *a3, void *a4, char a5)
{
  _xpc_pipe_check_in_once(a1);
  if (*(a1 + 28) != 1)
  {
    return 32;
  }

  if (xpc_get_type(a3) != OS_xpc_dictionary)
  {
    v40 = _xpc_asprintf("Messages must be dictionaries.");
    goto LABEL_54;
  }

  if ((*(a1 + 48) & 4) == 0)
  {
    reply_port = mig_get_reply_port();
    goto LABEL_8;
  }

  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  reply_port = *(StatusReg + 64);
  if (!reply_port)
  {
    reply_port = thread_get_special_reply_port();
    *(StatusReg + 64) = reply_port;
    if (!reply_port)
    {
      v40 = _xpc_asprintf("Unable to allocate reply port, possible port leak");
LABEL_54:
      _xpc_api_misuse(v40);
    }
  }

LABEL_8:
  v13 = _xpc_pipe_pack_message(a1, a2, a3, reply_port, 21, 1);
  if (!v13)
  {
    return 22;
  }

  v14 = v13;
  v41 = a4;
  mach_message_header = _xpc_serializer_get_mach_message_header(v13);
  v16 = mach_message_header;
  msgh_local_port = mach_message_header->msgh_local_port;
  v18 = *(a1 + 48);
  if ((v18 & 2) != 0)
  {
    v19 = 52428807;
  }

  else
  {
    v19 = 50331655;
  }

  v20 = v18 << 29;
  if (a5)
  {
    v21 = 9453568;
  }

  else
  {
    v21 = 1064960;
  }

  v22 = v21 & (v20 >> 31);
  v42 = a5;
  if ((a5 & 2) != 0)
  {
    v23 = 66048;
  }

  else
  {
    v23 = 512;
  }

  v24 = v22 | v23 | v19;
  v44 = voucher_mach_msg_set(mach_message_header);
  mach_message_length = _xpc_serializer_get_mach_message_length(v14);
  v26 = 0;
  v27 = 0;
  v43 = v24 & 0x3B10202;
  memset(v45, 0, 76);
  v11 = 35;
  while (1)
  {
    v28 = mach_message_length;
    v29 = v16;
    while (1)
    {
      v30 = v27;
      v31 = _xpc_pipe_mach_msg(v14, v29, v24, v28, msgh_local_port);
      if (v26)
      {
        _xpc_serializer_reset_mach_message_header(v14);
      }

      if (v31 != 268435479)
      {
        break;
      }

      _xpc_consume_send_once_notification_on_reply_port(v29->msgh_local_port);
      v26 = 0;
      v11 = 1;
      v27 = 1;
      if ((v30 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (!v31)
    {
      break;
    }

    if (v31 == 268435459)
    {
      v11 = 32;
      break;
    }

    if (v31 != 268451844)
    {
      v11 = 5;
      break;
    }

    if ((v24 & 4) == 0)
    {
      _xpc_serializer_clear_sent_descriptors(v14);
      v11 = 12;
      break;
    }

    v32 = v29->msgh_size + 52;
    v26 = malloc_type_malloc(v32, 0xB0ECF14DuLL);
    mach_message_length = 0;
    v27 = 1;
    v16 = v45;
    v24 = v43;
    if (v26)
    {
      memcpy(v26, v29, v28);
      v27 = 1;
      v16 = v26;
      v24 = v43;
      mach_message_length = v32;
    }
  }

LABEL_33:
  if (v44)
  {
    voucher_mach_msg_clear(v29);
  }

  if (v31)
  {
    if ((v31 & 0xFFFFC1FF) == 0x1000400C)
    {
      mach_msg_destroy(v29);
    }

    _xpc_serializer_destroy(v14);
    if (v11 == 32)
    {
      *(a1 + 28) = 2;
    }

    return v11;
  }

  if (v29->msgh_id != 0x20000000)
  {
    _xpc_serializer_destroy(v14);
    return 5;
  }

  v33 = _xpc_serializer_reap_combined_send_receive(v14);
  _xpc_serializer_destroy(v14);
  if ((v42 & 4) != 0)
  {
    msg = dispatch_mach_msg_get_msg();
    if (xpc_receive_mach_msg_validate_hdr(msg))
    {
      audit_token = _xpc_mach_msg_get_audit_token(msg);
      v36 = *(audit_token + 20);
      if (v36 != 1)
      {
        _xpc_pipe_routine_cold_1(v36);
      }

      if (*(audit_token + 4))
      {
        _xpc_interface_routine_cold_2();
      }

      goto LABEL_45;
    }

    dispatch_release(v33);
    return 22;
  }

LABEL_45:
  *&v45[0] = 0;
  v37 = xpc_receive_mach_msg(v33, 0, 0, 0, v45);
  v38 = *&v45[0];
  dispatch_release(v33);
  v11 = 5;
  if (!v37 && v38)
  {
    v11 = 0;
    *v41 = v38;
  }

  return v11;
}

uint64_t _xpc_pipe_simpleroutine(uint64_t a1, int a2, void *a3, int a4, char a5)
{
  _xpc_pipe_check_in_once(a1);
  if (*(a1 + 28) != 1)
  {
    return 32;
  }

  if (xpc_get_type(a3) != OS_xpc_dictionary)
  {
    v15 = _xpc_asprintf("Messages must be dictionaries.");
    _xpc_api_misuse(v15);
  }

  if (a4)
  {
    v10 = 21;
  }

  else
  {
    v10 = 0;
  }

  v11 = _xpc_pipe_pack_message(a1, a2, a3, a4, v10, 0);
  if (!v11)
  {
    return 22;
  }

  v12 = v11;
  v13 = _xpc_send_serializer(v11, 1, a5);
  xpc_release(v12);
  if (v13 == 32)
  {
    *(a1 + 28) = 2;
  }

  return v13;
}

uint64_t xpc_pipe_routine_reply(void *a1)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    v6 = _xpc_asprintf("Messages must be dictionaries.");
    _xpc_api_misuse(v6);
  }

  v2 = _xpc_pipe_pack_message(0, 0, a1, 0, 0, 0);
  if (!v2)
  {
    return 22;
  }

  v3 = v2;
  v4 = _xpc_send_serializer(v2, 0, 0);
  xpc_release(v3);
  return v4;
}

void *_xpc_pipe_pack_message(uint64_t a1, int a2, unint64_t a3, int a4, int a5, char a6)
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = _xpc_serializer_create();
  if (a4)
  {
    v13 = a5 << 8;
  }

  else
  {
    v13 = 0;
  }

  if ((a2 & 0xFF000000) != 0)
  {
    _xpc_pipe_pack_message_cold_1(&v23, v24);
  }

  v14 = v12;
  if (a6)
  {
    v15 = 0x40000000;
  }

  else
  {
    v15 = 0x10000000;
  }

  reply_port = _xpc_dictionary_extract_reply_port(a3);
  if (reply_port)
  {
    v17 = reply_port;
    v18 = 0x20000000;
    v19 = 18;
  }

  else
  {
    v18 = v15 | a2;
    if (a1)
    {
      v17 = *(a1 + 44);
    }

    else
    {
      v17 = 0;
    }

    v19 = 19;
  }

  v20 = _xpc_serializer_pack(v14, a3, 0, 0);
  if (v20)
  {
    v20[5] = v18;
    *v20 |= v19 | v13;
    v20[2] = v17;
    v20[3] = a4;
  }

  else
  {
    xpc_release(v14);
    v14 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t _xpc_send_serializer(uint64_t a1, _BOOL4 a2, char a3)
{
  mach_message_header = _xpc_serializer_get_mach_message_header(a1);
  mach_message_length = _xpc_serializer_get_mach_message_length(a1);
  if (a2)
  {
    a2 = voucher_mach_msg_set(mach_message_header) != 0;
  }

  if ((a3 & 2) != 0)
  {
    v8 = 65537;
  }

  else
  {
    v8 = 1;
  }

  v9 = _xpc_pipe_mach_msg(a1, mach_message_header, v8, mach_message_length, 0);
  if (a2)
  {
    voucher_mach_msg_clear(mach_message_header);
  }

  if (v9)
  {
    if (v9 == 268435479)
    {
      _xpc_consume_send_once_notification_on_reply_port(mach_message_header->msgh_local_port);
      return 1;
    }

    else if (v9 == 268435459)
    {
      return 32;
    }

    else
    {
      return 5;
    }
  }

  return v9;
}

uint64_t xpc_pipe_create_reply_from_port(int a1)
{
  if ((a1 - 1) > 0xFFFFFFFD)
  {
    return 0;
  }

  else
  {
    return _xpc_dictionary_create_reply_with_port(a1);
  }
}

uint64_t xpc_pipe_routine_forward(uint64_t a1, void *a2)
{
  _xpc_pipe_check_in_once(a1);
  if (*(a1 + 28) != 1)
  {
    return 32;
  }

  if (xpc_get_type(a2) != OS_xpc_dictionary)
  {
    v9 = _xpc_asprintf("Messages must be dictionaries.");
    _xpc_api_misuse(v9);
  }

  reply_port = _xpc_dictionary_extract_reply_port(a2);
  v5 = _xpc_pipe_pack_message(a1, 0, a2, reply_port, 18, 0);
  if (!v5)
  {
    return 22;
  }

  v6 = v5;
  v7 = _xpc_send_serializer(v5, 1, 0);
  xpc_release(v6);
  if (v7 == 32)
  {
    *(a1 + 28) = 2;
  }

  return v7;
}

void _xpc_pipe_check_in_once(uint64_t a1)
{
  if (!atomic_load_explicit((a1 + 28), memory_order_acquire))
  {
    os_unfair_lock_lock((a1 + 24));
    if (!*(a1 + 28))
    {
      v3 = 1;
      if (*(a1 + 48))
      {
        if (_xpc_connection_check_in_with_ports(*(a1 + 32), *(a1 + 36), *(a1 + 40)))
        {
          v3 = 1;
        }

        else
        {
          v3 = 2;
        }
      }

      atomic_store(v3, (a1 + 28));
    }

    os_unfair_lock_unlock((a1 + 24));
  }
}

uint64_t xpc_pipe_receive(mach_port_name_t a1, void *a2, char a3)
{
  object[1] = 0;
  object[0] = dispatch_mach_msg_create();
  v6 = _xpc_pipe_receive(a1, object, a3);
  v7 = object[0];
  if (!v6)
  {
    v11 = 0;
    if (xpc_receive_mach_msg(object[0], 0, 0, 0, &v11))
    {
      v8 = 1;
    }

    else
    {
      v8 = v11 == 0;
    }

    if (!v8)
    {
      v6 = 0;
      *a2 = v11;
      if (!v7)
      {
        return v6;
      }

      goto LABEL_9;
    }

    v6 = 5;
  }

  if (v7)
  {
LABEL_9:
    dispatch_release(v7);
  }

  return v6;
}

uint64_t _xpc_pipe_receive(mach_port_name_t a1, NSObject **a2, char a3)
{
  if (a3)
  {
    v5 = 50334470;
  }

  else
  {
    v5 = 50334214;
  }

  v6 = *a2;
  *rcv_size = 0;
  msg = dispatch_mach_msg_get_msg();
  v8 = 0;
  memset(v17, 0, 76);
  v9 = v5 & 0x3000B02;
  LODWORD(v10) = 0;
  while (1)
  {
    v11 = mach_msg(msg, v5, 0, v10, a1, 0, 0);
    if (v11 != 268451844)
    {
      break;
    }

    if ((v5 & 4) == 0)
    {
      v13 = 12;
      if (v8)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    v10 = msg->msgh_size + 52;
    v12 = malloc_type_malloc(v10, 0x388F5AD7uLL);
    v8 = v12;
    if (v12)
    {
      memcpy(v12, msg, *rcv_size);
      msg = v8;
    }

    else
    {
      v10 = 0;
      msg = v17;
    }

    *rcv_size = v10;
    v5 = v9;
  }

  if (v11)
  {
    if (v11 == 268451843)
    {
      v13 = 35;
      if (v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      _os_assumes_log();
      v13 = 5;
      if (v8)
      {
LABEL_18:
        free(v8);
      }
    }

LABEL_19:
    dispatch_release(v6);
    v15 = 0;
LABEL_20:
    *a2 = v15;
    return v13;
  }

  voucher_create_with_mach_msg();
  v14 = voucher_adopt();
  os_release(v14);
  if (v8)
  {
    dispatch_release(v6);
    v15 = dispatch_mach_msg_create();
    v13 = 0;
    goto LABEL_20;
  }

  return 0;
}

uint64_t xpc_pipe_invalidate(uint64_t result)
{
  *(result + 40) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t xpc_pipe_try_receive(mach_port_name_t a1, uint64_t *a2, _DWORD *a3, unsigned int (*a4)(void), size_t a5, char a6)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v24 = 0;
  v23 = dispatch_mach_msg_create();
  v12 = _xpc_pipe_receive(a1, &v23, a6);
  if (v12)
  {
    v13 = v12;
    v14 = v23;
  }

  else
  {
    v25[0] = 0;
    v14 = v23;
    msg = dispatch_mach_msg_get_msg();
    v24 = msg;
    if (v25[0] <= 0x17uLL)
    {
      xpc_pipe_try_receive_cold_1();
    }

    v18 = msg;
    v19 = *(msg + 20);
    if (v19 == 0x40000000 || v19 == 0x10000000)
    {
      v21 = *(msg + 12);
      v25[0] = 0;
      v13 = 22;
      if (!xpc_receive_mach_msg(v14, 0, 0, 0, v25))
      {
        v22 = v25[0];
        if (v25[0])
        {
          v13 = 0;
          *a3 = v21;
          *a2 = v22;
        }
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00]();
      bzero(&v23 - ((a5 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
      bzero(&v23 - ((a5 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
      v13 = _xpc_pipe_handle_mig(v18, (&v23 - ((a5 + 15) & 0xFFFFFFFFFFFFFFF0)), a4);
    }
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t _xpc_pipe_mach_msg(uint64_t a1, mach_msg_header_t *msg, mach_msg_option_t option, mach_msg_size_t a4, mach_port_name_t a5)
{
  msgh_bits = msg->msgh_bits;
  v8 = mach_msg(msg, option, msg->msgh_size, a4, a5, 0, 0);
  v9 = v8;
  if (v8 > 268435465)
  {
    if (v8 == 268451844)
    {
      return v9;
    }

    if (v8 == 268435466)
    {
      _xpc_pipe_mach_msg_cold_1();
    }
  }

  else
  {
    if (!v8)
    {
LABEL_13:
      _xpc_serializer_clear_sent_descriptors(a1);
      return v9;
    }

    if (v8 == 268435459)
    {
      goto LABEL_4;
    }
  }

  _os_assumes_log();
  if ((v9 & 0x3FFC000) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (((msg->msgh_bits ^ msgh_bits) & 0x1F) != 0 && _xpc_mach_port_release(msg->msgh_remote_port))
  {
    _os_assumes_log();
  }

  if (((msg->msgh_bits ^ msgh_bits) & 0x1F00) != 0 && _xpc_mach_port_release(msg->msgh_local_port))
  {
    _os_assumes_log();
  }

  return v9;
}

uint64_t _xpc_consume_send_once_notification_on_reply_port(int a1)
{
  memset(v4, 0, sizeof(v4));
  *&v4[4] = 32;
  *&v4[12] = a1;
  result = mach_msg_receive(v4);
  if (result)
  {
    if (result == 268435479)
    {
      v3 = 1;
    }

    else
    {
      v3 = 5;
    }

    if (result == 268435459)
    {
      v3 = 32;
    }

    v2 = *&v4[20];
    goto LABEL_11;
  }

  v2 = *&v4[20];
  if (*&v4[20] != 71)
  {
    v3 = 0;
LABEL_11:
    _xpc_asprintf("Unable to consume send-once notification, error = %d, msgh_id = %x", v3, v2);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *_xpc_memdup(const void *a1, size_t size)
{
  v4 = _xpc_alloc_typed(size, 0x39A35613uLL);

  return memcpy(v4, a1, size);
}

void *_xpc_mmap_anon(size_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + *a1);
  for (*a1 = v2; ; v2 = *a1)
  {
    result = mmap(0, v2, 3, 4098, -1, 0);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        _xpc_mmap_anon_cold_1(&v5, v6);
      }
    }

    _waiting4memory();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

char *_xpc_strdup(const char *a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  while (1)
  {
    result = strdup(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        _xpc_mmap_anon_cold_1(&v4, v5);
      }
    }

    _waiting4memory();
    a1 = v1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

char *_xpc_strndup(const char *a1, size_t a2)
{
  v2 = a2;
  v3 = a1;
  v8 = *MEMORY[0x1E69E9840];
  while (1)
  {
    result = strndup(a1, a2);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        _xpc_mmap_anon_cold_1(&v6, v7);
      }
    }

    _waiting4memory();
    a1 = v3;
    a2 = v2;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_memcmp(const void *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n == a4)
  {
    return memcmp(a1, __s2, __n);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

char *_xpc_asprintf(char *a1, ...)
{
  va_start(va, a1);
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0;
  while (1)
  {
    va_copy(&v4[1], va);
    vasprintf(&v5, a1, va);
    result = v5;
    if (v5)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        _xpc_mmap_anon_cold_1(v4, v6);
      }
    }

    _waiting4memory();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *_xpc_Block_copy_impl(const void *a1)
{
  v1 = a1;
  v6 = *MEMORY[0x1E69E9840];
  while (1)
  {
    result = _Block_copy(a1);
    if (result)
    {
      break;
    }

    if (*__error() != 12)
    {
      if (*__error())
      {
        _xpc_mmap_anon_cold_1(&v4, v5);
      }
    }

    _waiting4memory();
    a1 = v1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _xpc_has_suffix(const char *a1, const char *a2)
{
  v4 = &a1[strlen(a1)];
  v5 = &v4[-strlen(a2)];
  return v5 >= a1 && strcmp(v5, a2) == 0;
}

BOOL _xpc_equal_strings(char *__s1, const char *a2)
{
  result = (__s1 | a2) == 0;
  if (__s1)
  {
    if (a2)
    {
      return strcmp(__s1, a2) == 0;
    }
  }

  return result;
}

uint64_t _xpc_hash(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 5381;
  }

  result = 5381;
  do
  {
    v4 = *a1;
    if (!*a1)
    {
      break;
    }

    ++a1;
    result = 33 * result + v4;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t __xpc_enum2label(int a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a2 + 8; *(i - 8) != a1; i += 16)
  {
    if (!--a3)
    {
      return 0;
    }
  }

  return *i;
}

xpc_object_t xpc_create_from_plist_with_string_cache(_DWORD *a1, size_t size, void *a3, void *a4)
{
  v106 = a1;
  v107 = size;
  memset(v108, 0, sizeof(v108));
  v109 = 0;
  v110 = a3;
  v111 = a4;
  if (size < 9)
  {
    return 0;
  }

  v112 = 0;
  if (*a1 != 1768714338 || *(a1 + 2) != 29811)
  {
    v10 = dispatch_data_create(a1, size, 0, *MEMORY[0x1E69E9658]);
    v11 = dispatch_data_create_with_transform();
    dispatch_release(v10);
    if (v11)
    {
      size_ptr = 0;
      buffer_ptr[0] = 0;
      v12 = dispatch_data_create_map(v11, buffer_ptr, &size_ptr);
      v13 = buffer_ptr[0];
      dispatch_release(v11);
      if (v12)
      {
        v4 = _xpc_plist_parse_xml(v13, size_ptr, a3, a4);
        dispatch_release(v12);
        return v4;
      }
    }

    return 0;
  }

  if (size < 0x29)
  {
    return 0;
  }

  if (*a1 != 1768714338 || *(a1 + 3) != 812938089)
  {
    return 0;
  }

  v4 = 0;
  v15 = (a1 + size - 32);
  v16 = v15[1];
  v108[0] = *v15;
  v108[1] = v16;
  v17 = vrev64q_s8(*(v108 + 8));
  *(v108 + 8) = v17;
  v18 = bswap64(*(&v108[1] + 1));
  *(&v108[1] + 1) = v18;
  v19 = v17.i64[0];
  if (v17.i64[0] < 1 || (v18 & 0x8000000000000000) != 0)
  {
    return v4;
  }

  v20 = v17.i64[1];
  v21 = v17.i64[0] >= v17.i64[1] && v18 >= 9;
  v22 = v21 && size - 32 > v18;
  if (!v22 || !BYTE6(v108[0]) || !BYTE7(v108[0]) || !is_mul_ok(v17.u64[0], BYTE6(v108[0])))
  {
    return 0;
  }

  v4 = 0;
  v23 = v17.i64[0] * BYTE6(v108[0]);
  v24 = __CFADD__(v23, v18);
  if (!v23)
  {
    return v4;
  }

  if (v24)
  {
    return v4;
  }

  v4 = 0;
  if (v23 + v18 > 0xFFFFFFFFFFFFFFDFLL || v23 + v18 + 32 != size)
  {
    return v4;
  }

  if (BYTE7(v108[0]) <= 7u && v17.i64[0] >> (8 * BYTE7(v108[0])))
  {
    return 0;
  }

  if (BYTE6(v108[0]) <= 7u && v18 >> (8 * BYTE6(v108[0])))
  {
    return 0;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  size_ptr = a1;
  v114 = size;
  if (size < 9)
  {
    return 0;
  }

  v25 = a1 + v18;
  v26 = a1 + v18 + v23 - 1;
  if (v26 < a1 || v26 >= a1 + size)
  {
    return 0;
  }

  v27 = (v18 - 1);
  v28 = (a1 + v18);
  do
  {
    buffer_ptr[0] = 0;
    if (!_xpc_plist_swap_int(&size_ptr, v28, BYTE6(v108[0]), buffer_ptr) || v27 < buffer_ptr[0])
    {
      return 0;
    }

    v28 = (v28 + BYTE6(v108[0]));
    --v19;
  }

  while (v19);
  v119 = 0;
  if (!_xpc_plist_swap_int(&v106, &v25[v20 * BYTE6(v108[0])], BYTE6(v108[0]), &v119))
  {
    return 0;
  }

  v29 = v119;
  if (v119 >= size)
  {
    return 0;
  }

  v30 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004053EC9CC7uLL);
  v109 = v30;
  if (!v30)
  {
    return 0;
  }

  v30[48] |= 1u;
  *v109 = v29;
  v31 = *MEMORY[0x1E69E9658];
  while (1)
  {
    if ((v112 & 1) != 0 || (v109[6] & 0x10) != 0)
    {
      goto LABEL_82;
    }

    if (v109[6])
    {
      LOBYTE(v32) = 0;
      *(v109 + 48) |= 0x10u;
      v33 = *v109;
      goto LABEL_84;
    }

    if ((v109[6] & 2) == 0)
    {
      break;
    }

    v37 = v109[3];
    if (v37 < v106 || v37 >= v106 + v107)
    {
      goto LABEL_82;
    }

    v39 = v109[1];
    if (v39 >= v109[2])
    {
      goto LABEL_175;
    }

    v40 = _xpc_plist_offset_of_object(&v106, (v37 + v39 * BYTE7(v108[0])));
    if (v40 == -1)
    {
      goto LABEL_82;
    }

    v33 = v40;
    v32 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004053EC9CC7uLL);
    if (v32)
    {
      v41 = v32;
      LOBYTE(v32) = 0;
      *(v41 + 48) |= 8u;
      v42 = v109;
      *(v41 + 40) = v109;
      v43 = v42[1];
      *(v41 + 8) = v43;
      v109 = v41;
      v42[1] = v43 + 1;
      goto LABEL_84;
    }

LABEL_83:
    v33 = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_85:
    if ((v32 & 1) == 0)
    {
      v49 = v106 + v33;
      v50 = *(v106 + v33);
      if ((v50 & 0xF0) == 0xA0)
      {
        v57 = v49 + 1;
        size_ptr = (v49 + 1);
        if (v49 + 1 < v106 || v57 >= v106 + v107)
        {
          goto LABEL_103;
        }

        v67 = *v49 & 0xF;
        buffer_ptr[0] = v67;
        if (v67 != 15 || (v54 = 1, _xpc_plist_read_int(&v106, v57, buffer_ptr, &size_ptr)) && (v67 = buffer_ptr[0], (buffer_ptr[0] & 0x8000000000000000) == 0))
        {
          if (v67 && !is_mul_ok(v67, BYTE7(v108[0])))
          {
            goto LABEL_103;
          }

          v68 = v67 * BYTE7(v108[0]);
          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_103;
          }

          v69 = size_ptr + v68 - 1;
          if (v69 < v106 || v69 >= v106 + v107)
          {
            goto LABEL_103;
          }

          v54 = 1;
          v71 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004053EC9CC7uLL);
          if (v71)
          {
            v72 = v71;
            v71[1] = 0;
            v71[2] = v67;
            *(v71 + 48) |= 4u;
            v71[3] = size_ptr;
            v71[5] = v109;
            v73 = xpc_array_create(0, 0);
LABEL_174:
            v54 = 0;
            v72[4] = v73;
            v109 = v72;
          }
        }

LABEL_104:
        LOBYTE(v112) = v54;
      }

      else
      {
        if ((v50 & 0xF0) == 0xD0)
        {
          v51 = v49 + 1;
          size_ptr = (v49 + 1);
          if (v49 + 1 < v106 || v51 >= v106 + v107)
          {
            goto LABEL_103;
          }

          v53 = *v49 & 0xF;
          buffer_ptr[0] = v53;
          if (v53 != 15 || (v54 = 1, _xpc_plist_read_int(&v106, v51, buffer_ptr, &size_ptr)) && (v53 = buffer_ptr[0], (buffer_ptr[0] & 0x8000000000000000) == 0))
          {
            if (v53)
            {
              v55 = 2 * v53;
              v56 = BYTE7(v108[0]);
              if (!is_mul_ok(2 * v53, BYTE7(v108[0])))
              {
                goto LABEL_103;
              }
            }

            else
            {
              v55 = 0;
              v56 = BYTE7(v108[0]);
            }

            v93 = v55 * v56;
            if (v93 < 0 || ((v94 = size_ptr + v93 - 1, v94 >= v106) ? (v95 = v94 >= v106 + v107) : (v95 = 1), v95))
            {
LABEL_103:
              v54 = 1;
              goto LABEL_104;
            }

            v54 = 1;
            v96 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004053EC9CC7uLL);
            if (v96)
            {
              v72 = v96;
              v96[1] = 0;
              v96[2] = v53;
              *(v96 + 48) |= 2u;
              v96[3] = size_ptr;
              v96[5] = v109;
              v73 = xpc_dictionary_create(0, 0, 0);
              goto LABEL_174;
            }
          }

          goto LABEL_104;
        }

        if ((v109[6] & 8) == 0 || v109[4])
        {
          v59 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004053EC9CC7uLL);
          if (!v59)
          {
            goto LABEL_211;
          }

          v59[5] = v109;
          v109 = v59;
        }

        v4 = 0;
        v60 = v50 >> 4;
        if (v50 >> 4 <= 2)
        {
          if (v60)
          {
            if (v60 == 1)
            {
              v4 = 0;
              if (v33 < 0 || v107 <= v33)
              {
                goto LABEL_212;
              }

              v92 = 1 << (*(v106 + v33) & 0xF);
              size_ptr = 0;
              if (!_xpc_plist_swap_int(&v106, (v106 + v33 + 1), v92, &size_ptr))
              {
                goto LABEL_211;
              }

              v80 = xpc_int64_create(size_ptr);
            }

            else
            {
              if (v60 != 2)
              {
                goto LABEL_212;
              }

              v61 = v106 + v33;
              v62 = (v106 + v33 + 1);
              if (v62 < v106)
              {
                goto LABEL_211;
              }

              v63 = v106 + v107;
              if (v62 >= (v106 + v107))
              {
                goto LABEL_211;
              }

              v64 = *(v106 + v33) & 0xF;
              if (v64 == 3)
              {
                v4 = 0;
                v102 = (v61 + 8);
                if (v102 < v106 || v102 >= v63)
                {
                  goto LABEL_212;
                }

                v66 = COERCE_DOUBLE(bswap64(*v62));
              }

              else
              {
                if (v64 != 2)
                {
                  goto LABEL_211;
                }

                v4 = 0;
                v65 = (v61 + 4);
                if (v65 < v106 || v65 >= v63)
                {
                  goto LABEL_212;
                }

                v66 = COERCE_FLOAT(bswap32(*v62));
              }

              v80 = xpc_double_create(v66);
            }

            goto LABEL_199;
          }

          if (v50 == 9)
          {
            v103 = 1;
          }

          else
          {
            if (v50 != 8)
            {
              if (v50)
              {
                goto LABEL_211;
              }

              v80 = xpc_null_create();
              goto LABEL_199;
            }

            v103 = 0;
          }

          v80 = xpc_BOOL_create(v103);
LABEL_199:
          v109[4] = v80;
          goto LABEL_200;
        }

        if (v60 - 5 < 2)
        {
          v81 = v106 + v33 + 1;
          v82 = *(v106 + v33);
          buffer_ptr[0] = v81;
          if (v81 < v106)
          {
            goto LABEL_211;
          }

          if (v81 >= v106 + v107)
          {
            goto LABEL_211;
          }

          v83 = v82 & 0xF;
          v120 = v83;
          if ((v82 & 0xF) == 0xF)
          {
            if (!_xpc_plist_read_int(&v106, v81, &v120, buffer_ptr))
            {
              goto LABEL_211;
            }

            v83 = v120;
            if ((v120 & 0x8000000000000000) != 0)
            {
              goto LABEL_211;
            }
          }

          if ((v82 & 0xF0) == 0x60)
          {
            v84 = 2 * v83;
            if (((2 * v83) & 0x8000000000000000) != 0)
            {
              goto LABEL_211;
            }

            v85 = buffer_ptr[0] + v84 - 1;
            if (v85 < v106 || v85 >= v106 + v107)
            {
              goto LABEL_211;
            }

            v87 = dispatch_data_create(buffer_ptr[0], v84, 0, v31);
            v88 = dispatch_data_create_with_transform();
            dispatch_release(v87);
            if (!v88)
            {
              goto LABEL_211;
            }

            v89 = dispatch_data_get_size(v88);
            v90 = malloc_type_malloc(v89 + 1, 0x100004077774924uLL);
            if (!v90)
            {
              dispatch_release(v88);
              goto LABEL_211;
            }

            v91 = v90;
            size_ptr = MEMORY[0x1E69E9820];
            v114 = 0x40000000;
            *&v115 = ___xpc_plist_parse_string_block_invoke;
            *(&v115 + 1) = &__block_descriptor_tmp_4_0;
            *&v116 = v90;
            dispatch_data_apply(v88, &size_ptr);
            v91[dispatch_data_get_size(v88)] = 0;
            dispatch_release(v88);
          }

          else
          {
            v97 = buffer_ptr[0] + v83 - 1;
            if (v97 < v106 || v97 >= v106 + v107)
            {
              goto LABEL_211;
            }

            v99 = malloc_type_malloc(v83 + 1, 0x100004077774924uLL);
            if (!v99)
            {
              goto LABEL_211;
            }

            v91 = v99;
            memcpy(v99, buffer_ptr[0], v83);
            v91[v83] = 0;
          }

          if ((v109[6] & 8) != 0)
          {
            v100 = &v110;
          }

          else
          {
            v100 = &v111;
          }

          if (*v100)
          {
            cached = xpc_string_create_cached(v91, *v100);
            free(v91);
          }

          else
          {
            cached = xpc_string_create_no_copy(v91);
          }

          v109[4] = cached;
        }

        else
        {
          if (v60 != 3)
          {
            if (v60 != 4)
            {
              goto LABEL_212;
            }

            v74 = v106;
            v75 = v106 + v33 + 1;
            v76 = *(v106 + v33);
            size_ptr = v75;
            if (v75 < v106)
            {
              goto LABEL_211;
            }

            v77 = v107;
            if (v75 >= v106 + v107)
            {
              goto LABEL_211;
            }

            v78 = v76 & 0xF;
            buffer_ptr[0] = v78;
            if ((v76 & 0xF) == 0xF)
            {
              if (!_xpc_plist_read_int(&v106, v106 + v33 + 1, buffer_ptr, &size_ptr))
              {
                goto LABEL_211;
              }

              v78 = buffer_ptr[0];
              if ((buffer_ptr[0] & 0x8000000000000000) != 0)
              {
                goto LABEL_211;
              }

              v75 = size_ptr;
              v74 = v106;
              v77 = v107;
            }

            v79 = &v75[v78 - 1];
            if (v79 < v74 || v79 >= v74 + v77)
            {
              goto LABEL_211;
            }

            v80 = xpc_data_create(v75, v78);
            goto LABEL_199;
          }

          if (v50 != 51 || (_xpc_plist_parse_date(&v106, v33) & 1) == 0)
          {
            goto LABEL_211;
          }
        }

LABEL_200:
        if ((_xpc_plist_collapse_stack(&v106) & 1) == 0)
        {
          goto LABEL_211;
        }
      }
    }
  }

  if ((v109[6] & 8) == 0)
  {
    if ((v109[6] & 4) == 0)
    {
      goto LABEL_82;
    }

    v34 = v109[3];
    if (v34 < v106 || v34 >= v106 + v107)
    {
      goto LABEL_82;
    }

    v36 = v109[1];
    if (v36 < v109[2])
    {
      v32 = _xpc_plist_offset_of_object(&v106, (v34 + v36 * BYTE7(v108[0])));
      if (v32 != -1)
      {
        v33 = v32;
        LOBYTE(v32) = 0;
        ++v109[1];
        goto LABEL_84;
      }

      goto LABEL_82;
    }

LABEL_175:
    LOBYTE(v32) = _xpc_plist_collapse_stack(&v106);
    goto LABEL_83;
  }

  v44 = v109[5];
  if (!v44 || (*(v44 + 48) & 2) == 0 || (v45 = v109[1], v46 = *(v44 + 16), v45 > v46) || ((v47 = *(v44 + 24), v47 >= v106) ? (v48 = v47 >= v106 + v107) : (v48 = 1), v48))
  {
LABEL_82:
    LOBYTE(v32) = 0;
    goto LABEL_83;
  }

  v104 = _xpc_plist_offset_of_object(&v106, (v47 + (v46 + v45) * BYTE7(v108[0])));
  LOBYTE(v32) = 0;
  if (v104 == -1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v104;
  }

LABEL_84:
  if (v33)
  {
    goto LABEL_85;
  }

  if (v109)
  {
    if (v109[6])
    {
      v105 = v109[4];
      if (v105)
      {
        v4 = xpc_retain(v105);
        goto LABEL_212;
      }
    }
  }

LABEL_211:
  v4 = 0;
LABEL_212:
  _xpc_plist_unwind_stack(&v106);
  return v4;
}