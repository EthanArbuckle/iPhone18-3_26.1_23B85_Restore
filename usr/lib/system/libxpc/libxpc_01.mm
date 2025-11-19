uint64_t xpc_connection_set_instance_binpref(uint64_t a1, const void *a2)
{
  if (*(a1 + 64))
  {
    v7 = _xpc_asprintf("Attempt to set instance binpref on a live connection.");
    goto LABEL_14;
  }

  v3 = *(a1 + 248);
  if ((v3 & 8) != 0)
  {
    v7 = _xpc_asprintf("Attempt to set instance binpref on a listening connection.");
    goto LABEL_14;
  }

  if ((v3 & 4) != 0)
  {
    v7 = _xpc_asprintf("Attempt to set instance binpref on a MachService connection.");
    goto LABEL_14;
  }

  if ((v3 & 0x20) == 0)
  {
    v7 = _xpc_asprintf("Attempt to set binpref on a connection without instance uuid.");
LABEL_14:
    _xpc_api_misuse(v7);
  }

  v4 = xpc_binprefs_copy(a2);
  *(a1 + 240) = v4;
  if (xpc_binprefs_count(v4) >= 4)
  {
    return _os_assumes_log();
  }

  v5 = *(a1 + 240);

  return xpc_binprefs_add(v5, -1, -1);
}

uint64_t xpc_connection_get_filter_policy_id_4test(uint64_t a1)
{
  if (*(a1 + 24) != 2)
  {
    v4 = _xpc_asprintf("Only peer connections have a filter policy", v1, v2);
    _xpc_api_misuse(v4);
  }

  return *(a1 + 184);
}

uint64_t xpc_connection_set_legacy(uint64_t result)
{
  if (*(result + 64))
  {
    v3 = _xpc_asprintf("Attempt to set non-bundled on a live connection.", v1, v2);
    _xpc_api_misuse(v3);
  }

  *(result + 248) |= 4u;
  return result;
}

uint64_t xpc_connection_set_privileged(uint64_t result)
{
  if (*(result + 64))
  {
    v1 = _xpc_asprintf("Attempt to set privileged bit on a live connection.");
    goto LABEL_6;
  }

  if (*(result + 84) != -2)
  {
    v1 = _xpc_asprintf("Attempt to set privileged bit on a connection targetting a specific user.");
LABEL_6:
    _xpc_api_misuse(v1);
  }

  *(result + 248) |= 0x10u;
  return result;
}

uint64_t xpc_connection_set_target_user_session_uid(uint64_t a1, int a2)
{
  v2 = *(a1 + 248);
  if ((v2 & 4) == 0)
  {
    v6 = _xpc_asprintf("Attempt to set target session UID on a non-MachService connection.");
    goto LABEL_12;
  }

  if (*(a1 + 64))
  {
    v6 = _xpc_asprintf("Attempt to set target session UID on a live connection.");
    goto LABEL_12;
  }

  if (a2 == -2)
  {
    v6 = _xpc_asprintf("How does one look up a service owned by nobody?");
    goto LABEL_12;
  }

  if ((v2 & 0x10) != 0)
  {
    v6 = _xpc_asprintf("Attempt to set target session UID on a privileged connection.");
    goto LABEL_12;
  }

  result = xpc_user_sessions_enabled();
  if ((result & 1) == 0)
  {
    v6 = _xpc_asprintf("Attempt to set target session UID, but user sessions are not enabled.");
LABEL_12:
    _xpc_api_misuse(v6);
  }

  *(a1 + 84) = a2;
  return result;
}

uint64_t xpc_connection_set_event_channel(uint64_t result, uint64_t a2)
{
  if (*(result + 24) == 2)
  {
    v4 = _xpc_asprintf("Can't set event channel on peer connection", v2, v3);
    _xpc_api_misuse(v4);
  }

  *(result + 248) |= 0x200u;
  *(result + 184) = a2;
  return result;
}

uint64_t xpc_connection_set_non_launching(uint64_t result, int a2)
{
  if (*(result + 64))
  {
    v5 = _xpc_asprintf("Attempt to change the non-launching property on a live connection.", v2, v3);
    _xpc_api_misuse(v5);
  }

  if (a2)
  {
    v4 = 128;
  }

  else
  {
    v4 = 0;
  }

  *(result + 248) = *(result + 248) & 0xFF7F | v4;
  return result;
}

xpc_object_t xpc_connection_copy_entitlement_value(os_unfair_lock_s *a1, const char *a2)
{
  os_unfair_lock_lock_with_options();
  v4 = _xpc_copy_entitlements_with_key(a1[31]._os_unfair_lock_opaque, &a1[26], a2);
  os_unfair_lock_unlock(a1 + 22);
  return v4;
}

void xpc_connection_send_notification(unsigned int *a1, xpc_object_t object)
{
  if (xpc_get_type(object) != OS_xpc_dictionary)
  {
    v6 = _xpc_asprintf("Notification types other than dictionaries are not supported.");
    goto LABEL_8;
  }

  v4 = _xpc_connection_pack_message(a1, object, 0);
  mach_message_header = _xpc_serializer_get_mach_message_header(v4);
  if (*(mach_message_header + 20) == 0x20000000)
  {
    v6 = _xpc_asprintf("Reply messages must not be sent as notifications; use xpc_dictionary_send_reply()");
LABEL_8:
    _xpc_api_misuse(v6);
  }

  *(mach_message_header + 20) = 805306368;
  _xpc_connection_enqueue(a1, 0x40000, v4);

  xpc_release(v4);
}

uint64_t _xpc_connection_pack_message(unsigned int *a1, void *a2, int a3)
{
  reply_port = _xpc_dictionary_extract_reply_port(a2);
  remote_connection = xpc_dictionary_get_remote_connection(a2);
  if (reply_port && remote_connection && remote_connection != a1)
  {
    v14 = _xpc_asprintf("Attempt to send a message expecting a reply to the wrong connection.");
    _xpc_api_misuse(v14);
  }

  v8 = _xpc_serializer_create();
  v9 = v8;
  if (a3)
  {
    *(v8 + 152) = a3;
    v10 = 5376;
  }

  else
  {
    v10 = 0;
  }

  v11 = _xpc_serializer_pack(v8, a2, a1[48], 0);
  if (reply_port)
  {
    v11[5] = 0x20000000;
    v12 = 18;
  }

  else
  {
    v12 = 19;
  }

  *v11 |= v12 | v10;
  v11[2] = reply_port;
  v11[3] = a3;
  return v9;
}

void _xpc_connection_enqueue(void *a1, uint64_t a2, uint64_t a3)
{
  xpc_retain(a1);
  _xpc_retain(a3);
  v5 = a1[32];
  if (v5)
  {
    (*(v5 + 16))(v5, *(a3 + 32), *(a3 + 40));
  }

  if ((*(_xpc_serializer_get_mach_message_header(a3) + 1) & 0x1F) != 0)
  {
    xpc_retain(a1);
    _xpc_retain(a3);
    _xpc_received_message_get_connection(a3);
    v6 = a1[19];
    dispatch_mach_send_with_result_and_async_reply_4libxpc();
  }

  else
  {
    _xpc_received_message_get_connection(a3);
    v7 = a1[19];
    dispatch_mach_send_with_result();
  }

  _xpc_connection_enqueue_cold_1(0);
}

void xpc_connection_kill(uint64_t a1, int a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  object = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__str = 0u;
  if ((*(a1 + 248) & 0x20) != 0)
  {
    memset(out, 0, 37);
    uuid_unparse_upper((a1 + 160), out);
    v6 = *(a1 + 152);
    if (v6)
    {
      dispatch_queue_get_label(v6);
    }

    snprintf(__str, 0x200uLL, "%s.%s");
  }

  else
  {
    v5 = *(a1 + 152);
    if (v5)
    {
      dispatch_queue_get_label(v5);
    }

    snprintf(__str, 0x200uLL, "%s");
  }

  xpc_dictionary_set_uint64(v4, "type", 5uLL);
  v7 = getpid();
  xpc_dictionary_set_uint64(v4, "handle", v7);
  xpc_dictionary_set_string(v4, "name", __str);
  xpc_dictionary_set_int64(v4, "signal", a2);
  v8 = _xpc_domain_routine(812, v4, &object);
  if (v8)
  {
    v9 = v8;
    if (v8 != 3 && v8 != 37)
    {
      v10 = *(a1 + 152);
      if (v10)
      {
        label = dispatch_queue_get_label(v10);
      }

      else
      {
        label = 0;
      }

      v12 = xpc_strerror(v9);
      syslog(3, "Could not signal service %s: %d: %s", label, v9, v12);
    }
  }

  else
  {
    xpc_release(object);
  }

  xpc_release(v4);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t xpc_connection_set_bootstrap(void *a1, void *a2)
{
  v4 = xpc_retain(a1);
  v5 = xpc_retain(a2);
  v6 = _xpc_alloc_typed(0x18uLL, 0x1080040CC6EE3FDuLL);
  *v6 = v4;
  v6[1] = v5;
  v6[2] = 0;
  v7 = a1[19];

  return MEMORY[0x1EEE70048](v7, v6, _xpc_connection_set_bootstrap_impl);
}

void _xpc_connection_set_bootstrap_impl(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "type", 5uLL);
  v5 = getpid();
  xpc_dictionary_set_uint64(v4, "handle", v5);
  v6 = v3[19];
  if (v6)
  {
    label = dispatch_queue_get_label(v6);
  }

  else
  {
    label = 0;
  }

  xpc_dictionary_set_string(v4, "name", label);
  xpc_dictionary_set_value(v4, "bootstrap", v2);
  object = 0;
  if (_xpc_service_routine(710, v4, &object))
  {
    _os_assumes_log();
  }

  else
  {
    xpc_release(object);
  }

  xpc_release(v4);
  xpc_release(v3);
  xpc_release(v2);
  free(a1);
}

xpc_object_t xpc_connection_is_extension(uint64_t a1)
{
  result = _xpc_connection_copy_attrs(a1, -1);
  if (result)
  {
    v2 = result;
    v3 = xpc_dictionary_get_BOOL(result, "extension");
    xpc_release(v2);
    return v3;
  }

  return result;
}

char *xpc_connection_copy_bundle_id(uint64_t a1)
{
  v1 = _xpc_connection_copy_attrs(a1, -1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  string = xpc_dictionary_get_string(v1, "bundle-id");
  if (string)
  {
    v4 = _xpc_strdup(string);
  }

  else
  {
    v4 = 0;
  }

  xpc_release(v2);
  return v4;
}

__objc2_class *xpc_connection_set_bs_type(uint64_t a1, int a2)
{
  result = xpc_get_type(a1);
  if (result != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v5 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_11;
  }

  if (*(a1 + 64))
  {
    v5 = _xpc_asprintf("Attempt to change the bs_managed propertyon a live connection.");
    goto LABEL_11;
  }

  if (!*(a1 + 24))
  {
    if ((a2 & 0xFE) != 2)
    {
      goto LABEL_7;
    }

    v5 = _xpc_asprintf("Cannot set specific when not from endpoint.");
LABEL_11:
    _xpc_api_misuse(v5);
  }

  if (a2 == 1)
  {
    v5 = _xpc_asprintf("Cannot set TBD when from endpoint or anon.");
    goto LABEL_11;
  }

LABEL_7:
  *(a1 + 248) = *(a1 + 248) & 0xFFFC | a2 & 3;
  return result;
}

uint64_t xpc_connection_get_bs_type(_WORD *a1)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v5 = class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return a1[124] & 3;
}

uint64_t xpc_connection_bs_seal_listener(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v9 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_26;
  }

  if ((*(a1 + 248) & 8) == 0)
  {
    v9 = _xpc_asprintf("Sealing is only possible for listeners.");
LABEL_26:
    _xpc_api_misuse(v9);
  }

  if ((_xpc_connection_activate_if_needed(a1, 0, 1) & 1) == 0)
  {
    xpc_connection_bs_seal_listener_cold_1();
  }

  v2 = *(a1 + 68);
  if ((v2 - 1) > 0xFFFFFFFD)
  {
    if (!_os_trace_lazy_init_completed_4libxpc() || (*(a1 + 248) & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v5 = _xpc_connection_log_handle__log;
    if (!os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 134217984;
    v11 = a1;
    v6 = "[%p] Sealing failed to init recv right.";
    goto LABEL_15;
  }

  if (_xpc_mach_port_make_send(*(a1 + 68)))
  {
    _os_assumes_log();
    if ((_os_trace_lazy_init_completed_4libxpc() & 1) == 0 || (*(a1 + 248) & 0x4000) != 0)
    {
      goto LABEL_16;
    }

    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v5 = _xpc_connection_log_handle__log;
    if (!os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 134217984;
    v11 = a1;
    v6 = "[%p] Sealing failed to make send right.";
LABEL_15:
    _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
LABEL_16:
    v7 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return _xpc_endpoint_create(v2);
}

xpc_connection_t xpc_connection_create_mach_service(const char *name, dispatch_queue_t targetq, uint64_t flags)
{
  v3 = flags;
  v4 = _xpc_connection_create(0, name);
  v5 = v4;
  if (v3)
  {
    *(v4 + 248) |= 8u;
    self_audit_token = _xpc_get_self_audit_token();
    v8 = self_audit_token[1];
    *(v5 + 104) = *self_audit_token;
    *(v5 + 120) = v8;
    *(v5 + 88) = 0;
  }

  else
  {
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *(v4 + 120) = v6;
    *(v4 + 104) = v6;
    *(v4 + 124) = 0;
    *(v4 + 88) = 0;
    *(v4 + 248) = *(v4 + 248) & 0xFFEF | (8 * v3) & 0x10;
  }

  *(v5 + 248) |= (32 * v3) & 0x80 | 4;
  return v5;
}

xpc_connection_t xpc_connection_create_from_endpoint(xpc_endpoint_t endpoint)
{
  if (xpc_get_type(endpoint) != OS_xpc_endpoint)
  {
    type = xpc_get_type(endpoint);
    Name = class_getName(type);
    v6 = class_getName(OS_xpc_endpoint);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v6);
    _xpc_api_misuse(v7);
  }

  v2 = _xpc_connection_create(1, 0);
  *(v2 + 18) = _xpc_endpoint_copy_listener_port(endpoint);
  *(v2 + 4) |= 1u;
  return v2;
}

void xpc_connection_set_qos_class_floor(void *a1, dispatch_qos_class_t a2, int a3)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v9 = class_getName(OS_xpc_connection);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v9);
    _xpc_api_misuse(v10);
  }

  v6 = a1[19];

  dispatch_set_qos_class_floor(v6, a2, a3);
}

uint64_t xpc_connection_set_qos_class_fallback(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v7 = class_getName(OS_xpc_connection);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v7);
    _xpc_api_misuse(v8);
  }

  v4 = a1[19];

  return MEMORY[0x1EEE70140](v4, a2);
}

void xpc_connection_set_target_queue(xpc_connection_t connection, dispatch_queue_t targetq)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v7 = class_getName(OS_xpc_connection);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v7);
    _xpc_api_misuse(v8);
  }

  v4 = *(connection + 19);

  dispatch_set_target_queue(v4, targetq);
}

void _xpc_connection_set_event_handler_f(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _X2 = a2;
  }

  else
  {
    _X2 = 0;
  }

  _X16 = *(a1 + 32);
  _X17 = *(a1 + 40);
  do
  {
    v5 = _X16;
    __asm { CASP            X16, X17, X2, X3, [X0] }
  }

  while (_X16 != v5);
  if ((_X17 & 0x100) != 0)
  {
    _xpc_connection_set_event_handler_f_cold_1();
  }

  if (_X17)
  {
    if (_X16)
    {
      v10 = _X16;
    }

    else
    {
      v10 = 0;
    }

    _Block_release(v10);
  }
}

void xpc_connection_set_event_handler(xpc_connection_t connection, xpc_handler_t handler)
{
  v3 = _xpc_Block_copy_impl(handler);
  v4 = v3;
  if (v3)
  {
    _X22 = v3;
  }

  else
  {
    _X22 = 0;
  }

  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v18 = class_getName(OS_xpc_connection);
    v19 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v18);
    _xpc_api_misuse(v19);
  }

  LOBYTE(v6) = *(connection + 41);
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = *(connection + 42) | (*(connection + 23) << 32);
  v8 = *(connection + 40);
  v9 = *(connection + 4);
  while (1)
  {
    _X3 = (v7 << 16) | (v6 << 8) | v8;
    __asm { CASPL           X2, X3, X22, X23, [X17] }

    if (_X2 == v9)
    {
      break;
    }

    v7 = _X3 >> 16;
    v9 = _X2;
    v8 = _X3;
    v6 = _X3 >> 8;
    if ((_X3 >> 8))
    {
      goto LABEL_9;
    }
  }

  if (v6)
  {
LABEL_9:

    _xpc_connection_set_event_handler_slow(connection, v4);
  }

  else if (v8)
  {

    _Block_release(v9);
  }
}

uint64_t _xpc_connection_set_event_handler_slow(atomic_ullong *a1, unint64_t a2)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v10 = class_getName(OS_xpc_connection);
    v11 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v10);
    _xpc_api_misuse(v11);
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = atomic_exchange_explicit(a1 + 22, v4, memory_order_release);
  if (v5)
  {
    _Block_release(v5);
  }

  _xpc_retain(a1);
  v6 = a1[19];

  return dispatch_mach_receive_barrier_f();
}

void xpc_connection_suspend(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v3 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_6;
  }

  if (*(connection + 124) < 0)
  {
    v3 = _xpc_asprintf("suspend is not allowed on this connection.");
LABEL_6:
    _xpc_api_misuse(v3);
  }

  dispatch_suspend(*(connection + 19));
  atomic_fetch_add_explicit(connection + 7, 1u, memory_order_relaxed);
}

void xpc_connection_activate(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v3 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_8;
  }

  if (*(connection + 124) < 0)
  {
    v3 = _xpc_asprintf("activate is not allowed on this connection.");
LABEL_8:
    _xpc_api_misuse(v3);
  }

  _xpc_connection_activate_if_needed(connection, 1, 0);
}

void xpc_connection_resume(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v3 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_12;
  }

  if (*(connection + 124) < 0)
  {
    v3 = _xpc_asprintf("resume is not allowed on this connection.");
LABEL_12:
    _xpc_api_misuse(v3);
  }

  add_explicit = atomic_fetch_add_explicit(connection + 7, 0xFFFFFFFF, memory_order_release);
  if (add_explicit == 1)
  {
    if (_xpc_connection_activate_if_needed(connection, 0, 0))
    {
      return;
    }
  }

  else if (!add_explicit)
  {
    v3 = _xpc_asprintf("Over-resume of a connection.");
    goto LABEL_12;
  }

  v4 = *(connection + 19);

  dispatch_resume(v4);
}

void xpc_connection_send_message(xpc_connection_t connection, xpc_object_t message)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_8;
  }

  if (xpc_get_type(message) != OS_xpc_dictionary)
  {
    v6 = _xpc_asprintf("Message types other than dictionaries are not supported.");
LABEL_8:
    _xpc_api_misuse(v6);
  }

  _xpc_ktrace_pid1(687865925, message);
  v4 = _xpc_connection_pack_message(connection, message, 0);
  _xpc_connection_enqueue(connection, 0, v4);
  _xpc_ktrace_pid1(687865926, message);

  xpc_release(v4);
}

void xpc_connection_send_barrier(xpc_connection_t connection, dispatch_block_t barrier)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v7 = class_getName(OS_xpc_connection);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v7);
    _xpc_api_misuse(v8);
  }

  v4 = *(connection + 19);

  MEMORY[0x1EEE70040](v4, barrier);
}

void xpc_connection_send_message_with_reply(xpc_connection_t connection, xpc_object_t message, dispatch_queue_t replyq, xpc_handler_t handler)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v13 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_17;
  }

  if (xpc_get_type(message) != OS_xpc_dictionary)
  {
    v13 = _xpc_asprintf("Message types other than dictionaries are not supported.");
    goto LABEL_17;
  }

  if ((*(connection + 124) & 0x80) != 0)
  {
    v13 = _xpc_asprintf("send_message_with_reply is not allowed with a non-launching Mach service");
LABEL_17:
    _xpc_api_misuse(v13);
  }

  if (!replyq)
  {
    replyq = dispatch_get_global_queue(0, 0);
  }

  _xpc_ktrace_pid1(687865929, message);
  v8 = _xpc_mach_port_allocate(0x1002u, 0, 0);
  v9 = _xpc_connection_pack_message(connection, message, v8);
  if (_xpc_mach_port_guard(v8, 0, v9))
  {
    _os_assumes_log();
  }

  v10 = _xpc_Block_copy_impl(handler);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v9[17] = v11;
  v9[18] = replyq;
  dispatch_retain(replyq);
  _xpc_connection_enqueue(connection, 0, v9);
  _xpc_ktrace_pid1(687865930, message);

  xpc_release(v9);
}

xpc_object_t xpc_connection_send_message_with_reply_sync(xpc_connection_t connection, xpc_object_t message)
{
  if (xpc_get_type(connection) == OS_xpc_connection)
  {
    if (xpc_get_type(message) == OS_xpc_dictionary)
    {
      if ((*(connection + 124) & 0x80) == 0)
      {
        _xpc_ktrace_pid1(687865933, message);
        v4 = _xpc_connection_pack_message(connection, message, 0);
        mach_message_header = _xpc_serializer_get_mach_message_header(v4);
        *mach_message_header |= 0x1500u;
        if (!*(connection + 48))
        {
          mach_message_header[5] = 0x40000000;
        }

        xpc_retain(connection);
        _xpc_retain(v4);
        v6 = *(connection + 32);
        if (v6)
        {
          (*(v6 + 16))(v6, *(v4 + 32), *(v4 + 40));
        }

        _xpc_received_message_get_connection(v4);
        v7 = *(connection + 19);
        dispatch_mach_send_with_result_and_wait_for_reply();
        _xpc_connection_enqueue_cold_1(0);
      }

      v9 = _xpc_asprintf("send_message_with_reply_sync is not allowed with a non-launching Mach service");
    }

    else
    {
      v9 = _xpc_asprintf("Message types other than dictionaries are not supported.");
    }
  }

  else
  {
    type = xpc_get_type(connection);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v9 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
  }

  _xpc_api_misuse(v9);
}

void xpc_connection_cancel(xpc_connection_t connection)
{
  v8 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v5 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_13;
  }

  if (*(connection + 124) < 0)
  {
    v5 = _xpc_asprintf("cancel is not allowed on this connection.");
LABEL_13:
    _xpc_api_misuse(v5);
  }

  if (_xpc_connection_cancel(connection, 1u, 0x13u, 0) && _os_trace_lazy_init_completed_4libxpc() && (*(connection + 124) & 0x4000) == 0)
  {
    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v2 = _xpc_connection_log_handle__log;
    if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = connection;
      _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "[%p] invalidated because the current process cancelled the connection by calling xpc_connection_cancel()", buf, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

const char *__cdecl xpc_connection_get_name(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v6 = class_getName(OS_xpc_connection);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v6);
    _xpc_api_misuse(v7);
  }

  if (*(connection + 6))
  {
    return 0;
  }

  v3 = *(connection + 19);
  if (!v3)
  {
    return 0;
  }

  return dispatch_queue_get_label(v3);
}

uid_t xpc_connection_get_euid(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v5 = class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return *(connection + 27);
}

gid_t xpc_connection_get_egid(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v5 = class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return *(connection + 28);
}

pid_t xpc_connection_get_pid(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v5 = class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return *(connection + 31);
}

au_asid_t xpc_connection_get_asid(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v5 = class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return *(connection + 32);
}

void xpc_connection_set_context(xpc_connection_t connection, void *context)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v7 = class_getName(OS_xpc_connection);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v7);
    _xpc_api_misuse(v8);
  }

  v4 = *(connection + 19);

  dispatch_set_context(v4, context);
}

void *__cdecl xpc_connection_get_context(xpc_connection_t connection)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v6 = class_getName(OS_xpc_connection);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v6);
    _xpc_api_misuse(v7);
  }

  v2 = *(connection + 19);

  return dispatch_get_context(v2);
}

void xpc_connection_set_finalizer_f(xpc_connection_t connection, xpc_finalizer_t finalizer)
{
  if (xpc_get_type(connection) != OS_xpc_connection)
  {
    type = xpc_get_type(connection);
    Name = class_getName(type);
    v7 = class_getName(OS_xpc_connection);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v7);
    _xpc_api_misuse(v8);
  }

  v4 = *(connection + 19);

  dispatch_set_finalizer_f(v4, finalizer);
}

__objc2_class *xpc_connection_enable_termination_imminent_event(uint64_t a1)
{
  result = xpc_get_type(a1);
  if (result != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v4 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_6;
  }

  if (*(a1 + 64))
  {
    v4 = _xpc_asprintf("Attempt to enable termination-imminent event on a live connection.");
LABEL_6:
    _xpc_api_misuse(v4);
  }

  *(a1 + 248) |= 0x2000u;
  return result;
}

__objc2_class *xpc_connection_enable_sim2host_4sim(_DWORD *a1)
{
  result = xpc_get_type(a1);
  if (result != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v4 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_6;
  }

  if (a1[16])
  {
    v4 = _xpc_asprintf("Attempt to change the sim-to-host mode on a live connection.");
LABEL_6:
    _xpc_api_misuse(v4);
  }

  a1[48] = 2;
  return result;
}

BOOL xpc_connection_get_peer_instance(_DWORD *a1, unsigned __int8 *a2)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_8;
  }

  if (a1[6] != 2)
  {
    v7 = _xpc_asprintf("xpc_connection_get_peer_instance() must be called on a peer connection.");
LABEL_8:
    _xpc_api_misuse(v7);
  }

  v4 = a1[31];

  return _xpc_get_service_instance(v4, a2);
}

void *xpc_connection_set_distorter(const void **a1, const void *a2)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v7 = class_getName(OS_xpc_connection);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v7);
    _xpc_api_misuse(v8);
  }

  _Block_release(a1[32]);
  result = _Block_copy(a2);
  a1[32] = result;
  return result;
}

uint64_t _xpc_connection_get_distorter(void *a1)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v5 = class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return a1[32];
}

uint64_t xpc_connection_set_peer_requirement(uint64_t a1, xpc_object_t object)
{
  if (*(a1 + 224))
  {
    v3 = _xpc_asprintf("xpc_connection_set_peer_* family must be called no more than once", object);
    _xpc_api_misuse(v3);
  }

  *(a1 + 224) = xpc_retain(object);

  return MEMORY[0x1EEE71780](a1 + 200, 0, 1);
}

uint64_t xpc_connection_set_peer_entitlement_exists_requirement(uint64_t a1, const char *a2)
{
  entitlement_exists = xpc_peer_requirement_create_entitlement_exists(a2, 0);
  if (!entitlement_exists)
  {
    return 22;
  }

  v4 = entitlement_exists;
  xpc_connection_set_peer_requirement(a1, entitlement_exists);
  xpc_release(v4);
  return 0;
}

uint64_t xpc_connection_set_peer_entitlement_matches_value_requirement(uint64_t a1, const char *a2, void *a3)
{
  entitlement_matches_value = xpc_peer_requirement_create_entitlement_matches_value(a2, a3, 0);
  if (!entitlement_matches_value)
  {
    return 22;
  }

  v5 = entitlement_matches_value;
  xpc_connection_set_peer_requirement(a1, entitlement_matches_value);
  xpc_release(v5);
  return 0;
}

uint64_t xpc_connection_set_peer_team_identity_requirement(uint64_t a1, const char *a2)
{
  team_identity = xpc_peer_requirement_create_team_identity(a2, 0);
  if (!team_identity)
  {
    return 22;
  }

  v4 = team_identity;
  xpc_connection_set_peer_requirement(a1, team_identity);
  xpc_release(v4);
  return 0;
}

uint64_t xpc_connection_set_peer_platform_identity_requirement(uint64_t a1, const char *a2)
{
  platform_identity = xpc_peer_requirement_create_platform_identity(a2, 0);
  if (!platform_identity)
  {
    return 22;
  }

  v4 = platform_identity;
  xpc_connection_set_peer_requirement(a1, platform_identity);
  xpc_release(v4);
  return 0;
}

uint64_t xpc_connection_set_peer_lightweight_code_requirement(uint64_t a1, void *a2)
{
  lwcr = xpc_peer_requirement_create_lwcr(a2, 0);
  if (!lwcr)
  {
    return 22;
  }

  v4 = lwcr;
  xpc_connection_set_peer_requirement(a1, lwcr);
  xpc_release(v4);
  return 0;
}

char *xpc_connection_copy_invalidation_reason(uint64_t a1)
{
  explicit = atomic_load_explicit((a1 + 96), memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  v6[1] = v1;
  v6[2] = v2;
  v6[0] = 0;
  description = _xpc_connection_cancelation_get_description(explicit, v6);
  result = v6[0];
  if (!description)
  {
    return _xpc_strdup(v6[0]);
  }

  return result;
}

BOOL _xpc_connection_cancelation_get_description(unint64_t a1, char **a2)
{
  if (!a1 || BYTE1(a1) - 21 <= 0xFFFFFFEB)
  {
    *a2 = 0;
  }

  v3 = &_xpc_connection_cancelation_description + 16 * BYTE1(a1);
  v4 = *v3;
  if (v3[8])
  {
    v5 = HIDWORD(a1);
    v11 = 0;
    if (BYTE1(a1) == 15)
    {
      v6 = fmtcheck(v4, "%x");
      v7 = asprintf(&v11, v6, v5);
    }

    else
    {
      v9 = fmtcheck(v4, "%d %s");
      v10 = xpc_strerror(v5);
      v7 = asprintf(&v11, v9, v5, v10);
    }

    result = v7 != -1;
    v4 = v11;
  }

  else
  {
    result = 0;
  }

  *a2 = v4;
  return result;
}

__objc2_class *__xpc_connection_set_logging(_WORD *a1, int a2)
{
  result = xpc_get_type(a1);
  if (result != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v8 = class_getName(OS_xpc_connection);
    v9 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v8);
    _xpc_api_misuse(v9);
  }

  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x4000;
  }

  a1[124] = a1[124] & 0xBFFF | v5;
  return result;
}

uint64_t _xpc_connection_extract_connection(uint64_t a1, BOOL *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 24) == 2;
  }

  if (*(a1 + 32))
  {
    _xpc_connection_call_event_handler(a1, &_xpc_error_connection_invalid);
  }

  _xpc_connection_event_handler_dispose(a1);
  return a1;
}

uint64_t _xpc_connection_call_event_handler(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
  }

  else
  {
    context = dispatch_get_context(*(a1 + 152));
    (*(a1 + 32))(a2, context);
  }

  return _os_avoid_tail_call();
}

void _xpc_connection_event_handler_dispose(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 32))
    {
      v2 = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }

    _Block_release(v2);
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = 0;
}

uint64_t _xpc_connection_handle_event_inline(void *a1, uint64_t a2, dispatch_object_t object, int a4)
{
  if ((a2 - 3) >= 2)
  {
    if (a2 != 5)
    {
      return 0;
    }

    a4 = 268435459;
  }

  result = dispatch_get_context(object);
  if (result)
  {
    _xpc_connection_release_message(a1, object, result, a4);
    return 1;
  }

  return result;
}

uint64_t _xpc_serializer_reply_queue_from_msg_context(uint64_t result)
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

void _xpc_connection_handle_async_reply(_WORD *a1, uint64_t a2, NSObject *a3)
{
  msg = dispatch_mach_msg_get_msg();
  if (a2 != 2)
  {
    if (a2 != 12)
    {
      _xpc_connection_handle_async_reply_cold_1(a2);
    }

    _xpc_connection_handle_disconnect_event(a1, a3, 12);
    return;
  }

  msgh_id = msg->msgh_id;
  if (msgh_id > 805306367)
  {
    if (msgh_id != 805306368 && msgh_id != 1999646836 && msgh_id != 0x40000000)
    {
      goto LABEL_27;
    }

LABEL_24:

    mach_msg_destroy(msg);
    return;
  }

  if (msgh_id == 0x10000000)
  {
    goto LABEL_24;
  }

  if (msgh_id != 0x20000000)
  {
LABEL_27:

    _xpc_connection_pass2mig(a1, a3);
    return;
  }

  msg = dispatch_mach_msg_get_msg();
  if ((a1[124] & 8) != 0)
  {
    goto LABEL_24;
  }

  context = _xpc_mach_msg_get_context(msg);
  v11 = _xpc_connection_unpack_message(a1, a3);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &_xpc_error_connection_interrupted;
  }

  _xpc_connection_call_reply_async(a1, context, v12);
}

uint64_t _xpc_connection_wants_sigterm(unsigned __int16 *a1)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v5 = class_getName(OS_xpc_connection);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return (a1[124] >> 13) & 1;
}

uint64_t _xpc_connection_release_message(xpc_object_t object, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 <= 268435458)
  {
    if (a4)
    {
      goto LABEL_20;
    }

    _xpc_serializer_clear_sent_descriptors(a3);
    goto LABEL_7;
  }

  if (a4 > 268435468)
  {
    if (a4 <= 268437507)
    {
      if (a4 == 268435469)
      {
        v8 = *(dispatch_mach_msg_get_msg() + 4);
        if (v8 <= 0x40000)
        {
          _xpc_connection_release_message_cold_2(v8);
        }

        _xpc_connection_release_message_cold_1();
      }

      v7 = 1028;
    }

    else
    {
      if (a4 == 268437508 || a4 == 268439556)
      {
        goto LABEL_17;
      }

      v7 = 8196;
    }

    if (a4 != (v7 | 0x10000000))
    {
      goto LABEL_20;
    }

LABEL_17:
    _xpc_connection_release_message_cold_3(a4);
  }

  if (a4 != 268435459)
  {
LABEL_20:
    _xpc_connection_release_message_cold_4(a4);
  }

LABEL_7:
  xpc_release(object);

  return _xpc_release(a3);
}

void _xpc_connection_handle_disconnect_event(mach_port_context_t a1, uint64_t a2, uint64_t a3)
{
  msg = dispatch_mach_msg_get_msg();
  v6 = *(msg + 12);
  if (a3 == 12)
  {
    context = _xpc_mach_port_get_context(*(msg + 12));
    if ((atomic_load_explicit((a1 + 96), memory_order_acquire) & 0xFB) != 0)
    {
      v8 = &_xpc_error_connection_invalid;
    }

    else
    {
      v8 = &_xpc_error_connection_interrupted;
    }

    _xpc_connection_call_reply_async(a1, context, v8);
  }

  else
  {
    v9 = *(msg + 8);
    if (v9)
    {
      ptype = 0;
      v10 = mach_port_type(*MEMORY[0x1E69E9A60], v9, &ptype);
      if (v10 && (v12 = v10, _os_assumes_log(), v12 == 15))
      {
        v13 = _xpc_copy_nsobject_debug_description(a1);
        v11 = _xpc_asprintf("BUG IN (CLIENT OF?) LIBXPC: invalid disconnect oldsendp 0x%x, conn %s", v9, v13);
        free(v13);
        qword_1EAF1E800 = v11;
      }

      else
      {
        v11 = 0;
      }

      if ((*(a1 + 248) & 8) != 0)
      {
        *(a1 + 80) = v9;
      }

      else if (_xpc_mach_port_release(v9))
      {
        _os_assumes_log();
      }

      if (v9 == *(a1 + 76))
      {
        *(a1 + 76) = 0;
      }

      if (v11)
      {
        qword_1EAF1E800 = 0;
        free(v11);
      }
    }

    else if (v6)
    {
      if (v6 != *(a1 + 68))
      {
        _xpc_connection_handle_disconnect_event_cold_1((a1 + 68), v6);
      }

      if (_xpc_mach_port_close_recv(*(msg + 12), 0, a1))
      {
        _os_assumes_log();
      }

      *(a1 + 68) = 0;
    }
  }
}

void _xpc_connection_pass2mig(uint64_t a1, uint64_t a2)
{
  if (_mig_tsd_once != -1)
  {
    _xpc_connection_pass2mig_cold_1();
  }

  msg = dispatch_mach_msg_get_msg();
  if (*(_xpc_mach_msg_get_audit_token(msg) + 20))
  {

    mach_msg_destroy(msg);
  }

  else
  {
    v7[0] = a1;
    v7[1] = a2;
    v7[2] = 0;
    if (pthread_setspecific(_mig_tsd, v7))
    {
      _os_assumes_log();
    }

    v6 = 0;
    memset(v5, 0, sizeof(v5));
    if (notify_server(msg, v5))
    {
      if (v6)
      {
        _os_assumes_log();
      }
    }

    else
    {
      syslog(3, "MIG demux failed. This message ID is invalid: 0x%x", msg->msgh_id);
      mach_msg_destroy(msg);
    }

    if (pthread_setspecific(_mig_tsd, 0))
    {
      _os_assumes_log();
    }
  }
}

__objc2_class **_xpc_connection_unpack_message(uint64_t a1, NSObject *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0;
  msg = dispatch_mach_msg_get_msg();
  object = 0;
  if (_xpc_connection_check_peer_requirement(a1, msg))
  {
    v5 = voucher_copy();
    msgh_id = msg->msgh_id;
    if (msgh_id == 0x40000000 || msgh_id == 0x10000000)
    {
      _xpc_transaction_begin();
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v15 = 0;
    v12 = xpc_receive_mach_msg(a2, v11, v5, a1, &v15);
    result = 0;
    if (v12 != -1)
    {
      if (v12)
      {
        _xpc_connection_unpack_message_cold_2(&v14, buf);
      }

      _xpc_connection_set_creds(a1, msg);
      result = v15;
    }
  }

  else
  {
    if (_os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
    {
      if (_xpc_connection_log_handle__once != -1)
      {
        _xpc_connection_copy_listener_port_cold_2();
      }

      v8 = _xpc_connection_log_handle__log;
      if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(object + 5);
        *buf = 134218242;
        v19 = a1;
        v20 = 2080;
        v21 = v9;
        _os_log_impl(&dword_197263000, v8, OS_LOG_TYPE_DEFAULT, "[%p] Received message forbidden due to code signing requirement: %s", buf, 0x16u);
      }
    }

    xpc_release(object);
    mach_msg_destroy(msg);
    result = &_xpc_error_peer_code_signing_requirement;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_connection_call_reply_async(void *a1, mach_port_context_t guard, void *a3)
{
  if (!a3)
  {
    _xpc_connection_call_reply_async_cold_1();
  }

  if (_xpc_mach_port_close_recv(*(guard + 152), 0, guard))
  {
    _os_assumes_log();
  }

  v6 = _xpc_alloc_typed(0x18uLL, 0x1080040CC6EE3FDuLL);
  _xpc_serializer_invoke_reply(guard, a3);
  if (*(guard + 136))
  {
    v7 = *(guard + 136);
  }

  else
  {
    v7 = 0;
  }

  _Block_release(v7);
  dispatch_release(*(guard + 144));
  xpc_release(a1);
  _xpc_release(guard);
  xpc_release(a3);

  free(v6);
}

uint64_t _xpc_connection_check_peer_requirement(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) == 2)
  {
    audit_token = _xpc_mach_msg_get_audit_token(a2);
    os_unfair_lock_lock_with_options();
    if (*(a1 + 124) == *(audit_token + 20))
    {
      v5 = *(a1 + 132);
      v6 = *(audit_token + 28);
      os_unfair_lock_unlock((a1 + 88));
      if (v5 == v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 88));
    }

    if (_os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
    {
      if (_xpc_connection_log_handle__once != -1)
      {
        do_mach_notify_port_destroyed_cold_1();
      }

      v10 = _xpc_connection_log_handle__log;
      if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a1;
        _os_log_impl(&dword_197263000, v10, OS_LOG_TYPE_DEFAULT, "[%p] A message is received from other than initial peer.", buf, 0xCu);
      }
    }

    _xpc_connection_cancel(a1, 3u, 0x14u, 0);
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

LABEL_4:
  if (*(a1 + 224))
  {
    v7 = _xpc_mach_msg_get_audit_token(a2);
    v19 = *v7;
    v20 = *(v7 + 16);
    v8 = *(v7 + 28);
    v14 = *(v7 + 20);
    if (!os_map_128_find())
    {
      v13 = *(a1 + 224);
      *buf = v19;
      v16 = v20;
      v17 = v14;
      v18 = v8;
      if (_xpc_peer_requirement_match_token(v13, buf))
      {
        v9 = 1;
        os_map_128_insert();
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  v9 = 1;
LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void _xpc_connection_set_creds(uint64_t a1, uint64_t a2)
{
  audit_token = _xpc_mach_msg_get_audit_token(a2);
  os_unfair_lock_lock_with_options();
  v4 = *audit_token;
  *(a1 + 120) = audit_token[1];
  *(a1 + 104) = v4;

  os_unfair_lock_unlock((a1 + 88));
}

uint64_t ___xpc_connection_pass2mig_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  result = pthread_key_create(&_mig_tsd, 0);
  if (result)
  {
    ___xpc_connection_pass2mig_block_invoke_cold_1(&v2, v3);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_connection_init(mach_port_context_t context, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2 && *(context + 24) == 2)
  {
    _xpc_connection_init_cold_8();
  }

  if ((*(context + 248) & 4) == 0 && !*(context + 136) && *(context + 24) != 1)
  {
    _xpc_uncork_domain();
  }

  v4 = 0;
  v5 = *(context + 64);
  v6 = 13;
  if (v5 <= 3)
  {
    if (v5 != 1)
    {
      if (v5 != 2)
      {
        if (v5 != 3)
        {
          goto LABEL_96;
        }

        v7 = 4;
        goto LABEL_60;
      }

LABEL_54:
      if (*(MEMORY[0x1E69E99F0] + 16) == -1)
      {
        v19 = *(MEMORY[0x1E69E99F0] + 24);
      }

      else
      {
        v19 = _os_alloc_once();
      }

      if (*(context + 24) == 2 && *(v19 + 168) == 1)
      {
        xpc_retain(context);
        *(context + 248) |= 0x1000u;
      }

      v20 = *(context + 64);
      *(context + 64) = v20 + 1;
      v7 = v20 + 2;
LABEL_60:
      if (*(context + 24) == 2)
      {
        LODWORD(previous) = 0;
        v21 = _xpc_mach_port_setup_no_more_senders(*(context + 68), *(context + 68), &previous);
        if (v21)
        {
          v30 = v21;
          _os_assumes_log();
          if (_os_trace_lazy_init_completed_4libxpc() && (*(context + 248) & 0x4000) == 0)
          {
            if (_xpc_connection_log_handle__once != -1)
            {
              _xpc_connection_copy_listener_port_cold_2();
            }

            v31 = _xpc_connection_log_handle__log;
            if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v41 = context;
              v42 = 1024;
              v43 = v30;
              _os_log_impl(&dword_197263000, v31, OS_LOG_TYPE_DEFAULT, "[%p] failed to register a no-senders notification: mach_error=%{mach.errno}x", buf, 0x12u);
            }
          }

          v6 = 7;
          v4 = 9;
          goto LABEL_95;
        }

        if (previous)
        {
          _xpc_connection_init_cold_4(previous, &previous);
        }

        v7 = *(context + 64) + 1;
      }

      *(context + 64) = v7;
LABEL_66:
      v22 = *(context + 24);
      if (v22 == 1)
      {
        if ((*(context + 248) & 8) == 0)
        {
          if ((*(context + 72) + 1) >= 2)
          {
            v24 = context;
            v23 = -2;
            goto LABEL_90;
          }

          *(context + 72) = 0;
          if (_os_trace_lazy_init_completed_4libxpc() && (*(context + 248) & 0x4000) == 0)
          {
            if (_xpc_connection_log_handle__once != -1)
            {
              _xpc_connection_copy_listener_port_cold_2();
            }

            v25 = _xpc_connection_log_handle__log;
            if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v41 = context;
              _os_log_impl(&dword_197263000, v25, OS_LOG_TYPE_DEFAULT, "[%p] anonymous connection failed to decode send port", buf, 0xCu);
            }
          }

          v4 = 9;
          goto LABEL_133;
        }
      }

      else
      {
        if (v22)
        {
          if ((*(context + 76) + 1) <= 1)
          {
            *(context + 76) = 0;
          }

          goto LABEL_91;
        }

        if ((*(context + 248) & 8) == 0)
        {
          v23 = *(context + 72);
          if (v23)
          {
LABEL_70:
            v24 = context;
LABEL_90:
            *(context + 76) = _xpc_connection_init_send_port(v24, v23);
            *(context + 248) |= 0x400u;
            goto LABEL_91;
          }

          *buf = 0;
          v27 = _xpc_connection_bootstrap_look_up_slow(context, buf);
          v4 = v27;
          v23 = *buf;
          *(context + 72) = *buf;
          if (v27 > 123)
          {
            if ((v27 - 124) <= 0x23 && ((1 << (v27 - 124)) & 0x800200001) != 0)
            {
LABEL_101:
              if (_os_trace_lazy_init_completed_4libxpc() && (*(context + 248) & 0x4000) == 0)
              {
                if (_xpc_connection_log_handle__once != -1)
                {
                  _xpc_connection_copy_listener_port_cold_2();
                }

                v29 = _xpc_connection_log_handle__log;
                if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  v41 = context;
                  v42 = 1024;
                  v43 = v4;
                  _os_log_impl(&dword_197263000, v29, OS_LOG_TYPE_DEFAULT, "[%p] failed to do a bootstrap look-up: xpc_error=%{errno}d", buf, 0x12u);
                }
              }

              *(context + 248) |= 0x400u;
              if (!v4)
              {
                goto LABEL_91;
              }

              goto LABEL_133;
            }
          }

          else
          {
            if (!v27)
            {
              goto LABEL_70;
            }

            if (v27 == 1 || v27 == 3)
            {
              goto LABEL_101;
            }
          }

          _os_assumes_log();
          goto LABEL_101;
        }

        send = _xpc_mach_port_make_send(*(context + 68));
        if (send)
        {
          v37 = send;
          _os_assumes_log();
          if ((_os_trace_lazy_init_completed_4libxpc() & 1) != 0 && (*(context + 248) & 0x4000) == 0)
          {
            if (_xpc_connection_log_handle__once != -1)
            {
              _xpc_connection_copy_listener_port_cold_2();
            }

            v38 = _xpc_connection_log_handle__log;
            if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v41 = context;
              v42 = 1024;
              v43 = v37;
              _os_log_impl(&dword_197263000, v38, OS_LOG_TYPE_DEFAULT, "[%p] listener failed to create a send right: mach_error=%{mach.errno}x", buf, 0x12u);
            }
          }

          v4 = 24;
LABEL_133:
          v34 = (*(context + 248) & 8) == 0;
          v35 = 3;
          v36 = 5;
LABEL_134:
          if (v34)
          {
            v6 = v36;
          }

          else
          {
            v6 = v35;
          }

          goto LABEL_95;
        }

        *(context + 76) = *(context + 68);
      }

LABEL_91:
      if (a2)
      {
        *(context + 64) = 5;
        goto LABEL_98;
      }

      *(context + 64) = 6;
      goto LABEL_94;
    }

    v8 = *(context + 24);
    if (v8 == 1)
    {
      if ((*(context + 248) & 8) != 0)
      {
        goto LABEL_53;
      }

      if ((*(context + 16) & 1) == 0)
      {
        _xpc_connection_init_cold_1(&previous, buf);
      }
    }

    else
    {
      if (v8)
      {
        goto LABEL_53;
      }

      v9 = *(context + 248);
      if ((v9 & 8) != 0)
      {
        if (*(MEMORY[0x1E69E99F0] + 16) == -1)
        {
          v10 = *(MEMORY[0x1E69E99F0] + 24);
        }

        else
        {
          v10 = _os_alloc_once();
          v9 = *(context + 248);
        }

        v11 = (v9 >> 5) & 0x10;
        v12 = (v9 >> 7) & 1;
        v13 = v9 & 3;
        if (v13 == 3)
        {
          v12 = 1;
        }

        if (v12)
        {
          v11 |= 0x100uLL;
        }

        if (v13 == 1)
        {
          v14 = v11 | 0x200;
        }

        else
        {
          v14 = v11;
        }

        if (_xpc_is_being_debugged())
        {
          v15 = v14 + 1;
        }

        else
        {
          v15 = v14;
        }

        if (*(v10 + 40) == 1 && os_variant_has_internal_content())
        {
          v15 = v14 | 1;
        }

        buf[0] = 0;
        label = *(context + 152);
        if (label)
        {
          label = dispatch_queue_get_label(label);
        }

        v17 = _xpc_activate_endpoint(label, 6, 0, v15, (context + 68), buf);
        if (v17)
        {
          v4 = v17;
          if ((v17 > 0x25 || ((1 << v17) & 0x200000000ALL) == 0) && v17 != 124 && v17 != 159)
          {
            _os_assumes_log();
          }

          if (_os_trace_lazy_init_completed_4libxpc() && (*(context + 248) & 0x4000) == 0)
          {
            if (_xpc_connection_log_handle__once != -1)
            {
              _xpc_connection_copy_listener_port_cold_2();
            }

            v18 = _xpc_connection_log_handle__log;
            if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v41 = context;
              v42 = 1024;
              v43 = v4;
              _os_log_impl(&dword_197263000, v18, OS_LOG_TYPE_DEFAULT, "[%p] listener failed to activate: xpc_error=%{errno}d", buf, 0x12u);
            }
          }

          goto LABEL_125;
        }

        v32 = *(context + 248);
        if ((v32 & 3) == 1)
        {
          if (buf[0])
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          *(context + 248) = v33 | v32 & 0xFFFC;
        }

        if (_xpc_mach_port_set_queue_limit(*(context + 68), 16))
        {
          _os_assumes_log();
        }

        if (_xpc_mach_port_guard(*(context + 68), 1, context))
        {
          _os_assumes_log();
          v4 = 9;
LABEL_125:
          v34 = (*(context + 248) & 8) == 0;
          v35 = 9;
          v36 = 11;
          goto LABEL_134;
        }

LABEL_53:
        ++*(context + 64);
        goto LABEL_54;
      }
    }

    *(context + 68) = _xpc_mach_port_allocate(0x202Bu, 6u, context);
    goto LABEL_53;
  }

  switch(v5)
  {
    case 4:
      goto LABEL_66;
    case 5:
      if (a2)
      {
        goto LABEL_98;
      }

      goto LABEL_94;
    case 6:
LABEL_94:
      _xpc_connection_check_in(context);
      v4 = 0;
      v6 = 13;
LABEL_95:
      v5 = *(context + 64);
      break;
  }

LABEL_96:
  if (v5 <= 5)
  {
    _xpc_connection_init_failed(context, a2, v4, v6);
  }

LABEL_98:
  v28 = *MEMORY[0x1E69E9840];
}

void _xpc_connection_init_failed(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 248) & 0x100) != 0)
  {
    v6 = (((a4 - 1) < 0xC) & a4) + a4;
  }

  else
  {
    v6 = a4;
  }

  if (!_xpc_connection_cancel(a1, 3u, v6, a3))
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 248);
  inited = _os_trace_lazy_init_completed_4libxpc();
  if ((v7 & 0x100) != 0)
  {
    if (inited && (*(a1 + 248) & 0x4000) == 0)
    {
      if (_xpc_connection_log_handle__once != -1)
      {
        do_mach_notify_port_destroyed_cold_1();
      }

      v9 = _xpc_connection_log_handle__log;
      if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        v17 = a1;
        v10 = "[%p] invalidated after a failed reconnect";
        goto LABEL_18;
      }
    }
  }

  else if (inited && (*(a1 + 248) & 0x4000) == 0)
  {
    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v9 = _xpc_connection_log_handle__log;
    if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = a1;
      v10 = "[%p] invalidated after a failed init";
LABEL_18:
      _os_log_impl(&dword_197263000, v9, OS_LOG_TYPE_DEFAULT, v10, &v16, 0xCu);
    }
  }

LABEL_19:
  if (a2)
  {
    *(a1 + 64) = 9;
  }

  else
  {
    v11 = *(a1 + 152);
    if ((*(a1 + 248) & 0x100) != 0)
    {
      v14 = *(a1 + 76);
      dispatch_mach_reconnect();
    }

    else
    {
      v12 = *(a1 + 68);
      v13 = *(a1 + 76);
      dispatch_mach_connect();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t _xpc_connection_init_send_port(mach_port_context_t context, mach_port_name_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(context + 192))
  {
    goto LABEL_2;
  }

  options.8 = 0u;
  *&options.flags = 0x60000283FLL;
  options.work_interval_port = a2;
  name = 0;
  v5 = _xpc_try_mach_port_construct(&options, context, &name);
  v6 = v5;
  if (v5 > 16)
  {
    if (v5 != 17)
    {
      if (v5 == 20)
      {
LABEL_2:
        result = _xpc_mach_port_allocate(0x203Fu, 6u, context);
        goto LABEL_3;
      }

LABEL_10:
      _xpc_connection_init_send_port_cold_3(v5);
    }

LABEL_11:
    if (_os_trace_lazy_init_completed_4libxpc() && (*(context + 248) & 0x4000) == 0)
    {
      if (_xpc_connection_log_handle__once != -1)
      {
        _xpc_connection_copy_listener_port_cold_2();
      }

      v7 = _xpc_connection_log_handle__log;
      if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v12 = context;
        v13 = 1024;
        v14 = v6;
        _os_log_impl(&dword_197263000, v7, OS_LOG_TYPE_DEFAULT, "[%p] Failed to derive connection port; error %#x", buf, 0x12u);
      }
    }

    goto LABEL_2;
  }

  if (v5)
  {
    if (v5 != 15)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  result = name;
  if (name - 1 >= 0xFFFFFFFE)
  {
    _xpc_connection_init_send_port_cold_2(&v8, buf);
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t ___xpc_connection_log_handle_block_invoke()
{
  result = os_log_create("com.apple.xpc", "connection");
  _xpc_connection_log_handle__log = result;
  return result;
}

void _xpc_connection_mach_event(mach_port_context_t a1, uint64_t a2, dispatch_object_t object, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a2 <= 6)
  {
    if ((a2 - 3) < 2)
    {
      goto LABEL_17;
    }

    if (a2 != 2)
    {
LABEL_15:
      if (a2 != 5)
      {
LABEL_107:
        v39 = *MEMORY[0x1E69E9840];
        return;
      }

      a4 = 268435459;
      goto LABEL_17;
    }
  }

  else if (a2 <= 8)
  {
    if (a2 == 7)
    {
LABEL_42:
      v20 = *MEMORY[0x1E69E9840];

      _xpc_connection_handle_disconnect_event(a1, object, 7);
      return;
    }
  }

  else if (a2 != 11 && a2 != 15)
  {
    goto LABEL_77;
  }

  if (*(a1 + 176))
  {
    _xpc_connection_update_event_handler(a1);
  }

  if (a2 <= 6)
  {
    if ((a2 - 3) >= 2)
    {
      if (a2 != 2)
      {
        goto LABEL_15;
      }

      msg = dispatch_mach_msg_get_msg();
      msgh_id = msg->msgh_id;
      if (msgh_id <= 805306367)
      {
        if (msgh_id != 0x10000000)
        {
          if (msgh_id != 0x20000000)
          {
            goto LABEL_81;
          }

LABEL_104:
          mach_msg_destroy(msg);
LABEL_105:
          if ((*(a1 + 248) & 0x800) != 0)
          {
            *(a1 + 248) &= ~0x800u;
            _xpc_transaction_end();
          }

          goto LABEL_107;
        }
      }

      else if (msgh_id != 805306368 && msgh_id != 0x40000000)
      {
        if (msgh_id == 1999646836)
        {
          v40[1] = 0;
          v25 = dispatch_mach_msg_get_msg();
          v26 = v25;
          if (!*(a1 + 96))
          {
            v40[0] = 0;
            if ((*(a1 + 248) & 8) != 0 && *(v25 + 4) == 52 && (*v25 & 0x80000000) != 0 && *(v25 + 24) == 2 && *(v25 + 38) << 16 == 0x100000 && *(v25 + 50) << 16 == 1114112)
            {
              objecta = 0;
              if (_xpc_connection_check_peer_requirement(a1, v25))
              {
                if (_xpc_connection_validate_check_in_is_for_service(a1, v26, v40))
                {
                  v27 = v40[0];
                  audit_token = _xpc_mach_msg_get_audit_token(v26);
                  label = *(a1 + 152);
                  if (label)
                  {
                    label = dispatch_queue_get_label(label);
                  }

                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v44 = 0u;
                  v45 = 0u;
                  memset(__str, 0, sizeof(__str));
                  snprintf(__str, 0x80uLL, "%s.peer[%d]", label, *(audit_token + 20));
                  v30 = _xpc_connection_create(2, __str);
                  *(v30 + 68) = *(v26 + 28);
                  *(v30 + 76) = *(v26 + 40);
                  *(v30 + 136) = _xpc_retain(a1);
                  *(v30 + 248) = *(v30 + 248) & 0xD7FF | 0x800;
                  *(v30 + 184) = v27;
                  v31 = *(a1 + 144);
                  *(v30 + 192) = *(a1 + 192);
                  *(v30 + 48) = v31;
                  if (v31)
                  {
                    *(v31 + 56) = v30 + 48;
                  }

                  *(a1 + 144) = v30;
                  *(v30 + 56) = a1 + 144;
                  _xpc_connection_set_creds(v30, v26);
                  xpc_connection_suspend(v30);
                  _xpc_transaction_begin();
                  _xpc_connection_call_event_handler(a1, v30);
                  if (*(v30 + 96))
                  {
                    v32 = xpc_connection_copy_invalidation_reason(v30);
                    *__str = 0;
                    *&__str[8] = 0;
                    objecta = 0;
                    v42 = 0;
                    if ((_dyld_get_image_uuid() & 1) == 0)
                    {
                      *__str = 0;
                      *&__str[8] = 0;
                    }

                    if (_dyld_get_shared_cache_uuid())
                    {
                      _dyld_get_shared_cache_range();
                    }

                    else
                    {
                      objecta = 0;
                      v42 = 0;
                    }

                    _os_log_simple();
                    free(v32);
                    xpc_connection_set_event_handler(v30, &__block_literal_global_131);
                    xpc_connection_resume(v30);
                    xpc_connection_activate(v30);
                  }

                  else
                  {
                    xpc_connection_resume(v30);
                  }

                  goto LABEL_105;
                }
              }

              else
              {
                if (_os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
                {
                  if (_xpc_connection_log_handle__once != -1)
                  {
                    _xpc_connection_copy_listener_port_cold_2();
                  }

                  v37 = _xpc_connection_log_handle__log;
                  if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
                  {
                    v38 = *(objecta + 5);
                    *__str = 134218242;
                    *&__str[4] = a1;
                    *&__str[12] = 2080;
                    *&__str[14] = v38;
                    _os_log_impl(&dword_197263000, v37, OS_LOG_TYPE_DEFAULT, "[%p] Dropping check-in message due to code signing requirement: %s", __str, 0x16u);
                  }
                }

                xpc_release(objecta);
              }
            }

            syslog(3, "Bogus check-in attempt. Ignoring.");
          }

          msg = v26;
          goto LABEL_104;
        }

LABEL_81:
        _xpc_connection_pass2mig(a1, object);
        goto LABEL_105;
      }

      *__str = 0;
      v33 = dispatch_mach_msg_get_msg();
      if ((*(a1 + 248) & 8) != 0)
      {
        syslog(3, "Normal message received by listener connection. Ignoring.");
      }

      else if (!*(a1 + 96))
      {
        v34 = _xpc_connection_unpack_message(a1, object);
        if (v34)
        {
          v35 = v34;
          _xpc_connection_call_event_handler(a1, v34);
          xpc_release(v35);
        }

        goto LABEL_105;
      }

      msg = v33;
      goto LABEL_104;
    }

LABEL_17:
    v8 = *MEMORY[0x1E69E9840];

    _xpc_connection_handle_sent_event(a1, object, a4, 0);
    return;
  }

  if (a2 <= 8)
  {
    if (a2 != 7)
    {
      v9 = *(a1 + 64);
      if (v9 == 8)
      {
        _xpc_connection_mach_event_cold_2();
      }

      if (!v9)
      {
        _xpc_connection_mach_event_cold_3();
      }

      v10 = *(a1 + 68);
      if (v10 + 1 >= 2)
      {
        _xpc_connection_mach_event_cold_5(v10);
      }

      v11 = *(a1 + 76);
      if (v11 + 1 >= 2)
      {
        _xpc_connection_mach_event_cold_4(v11);
      }

      v12 = *(a1 + 248);
      if ((v12 & 8) != 0)
      {
        v13 = *(a1 + 144);
        if (v13)
        {
          do
          {
            v14 = *(v13 + 48);
            xpc_retain(v13);
            if ((atomic_fetch_or_explicit((v13 + 16), 0x400u, memory_order_relaxed) & 0x400) == 0)
            {
              xpc_retain(v13);
              _xpc_connection_remove_peer_impl(a1, v13);
            }

            xpc_connection_cancel(v13);
            xpc_release(v13);
            v13 = v14;
          }

          while (v14);
          v12 = *(a1 + 248);
        }
      }

      if ((v12 & 0x800) != 0)
      {
        *(a1 + 248) = v12 & 0xF7FF;
        _xpc_transaction_end();
      }

      __swp(a1 + 64, (a1 + 64));
      v15 = *(a1 + 96);
      if (v15 != 2)
      {
        if (v15 == 4)
        {
          v16 = &_xpc_error_connection_interrupted;
        }

        else
        {
          v16 = &_xpc_error_connection_invalid;
        }

        _xpc_connection_call_event_handler(a1, v16);
      }

      if (*(a1 + 24) == 2)
      {
        if ((atomic_fetch_or_explicit((a1 + 16), 0x400u, memory_order_relaxed) & 0x400) != 0)
        {
          xpc_release(a1);
        }

        else
        {
          v17 = *(a1 + 136);
          v18 = _xpc_alloc_typed(0x18uLL, 0x1080040CC6EE3FDuLL);
          *v18 = v17;
          v18[1] = a1;
          v18[2] = 0;
          v19 = *(*(a1 + 136) + 152);
          dispatch_mach_receive_barrier_f();
        }

        if ((*(a1 + 248) & 0x1000) != 0)
        {
          *(a1 + 248) &= ~0x1000u;
          xpc_release(a1);
        }
      }

      _xpc_connection_event_handler_dispose(a1);
      v36 = *MEMORY[0x1E69E9840];

      _xpc_release(a1);
      return;
    }

    goto LABEL_42;
  }

  if (a2 != 11)
  {
LABEL_77:
    if (a2 == 9)
    {
      _xpc_connection_mach_event_cold_1();
    }

    goto LABEL_107;
  }

  if ((*(a1 + 248) & 0x2000) == 0)
  {
    _xpc_connection_mach_event_cold_7(&objecta, __str);
  }

  if (*(a1 + 96) || *(a1 + 24) != 2)
  {
    goto LABEL_107;
  }

  v21 = *(MEMORY[0x1E69E99F0] + 16) == -1 ? *(MEMORY[0x1E69E99F0] + 24) : _os_alloc_once();
  if (*(v21 + 168) != 1)
  {
    goto LABEL_107;
  }

  v22 = *MEMORY[0x1E69E9840];

  _xpc_connection_call_event_handler(a1, &_xpc_error_termination_imminent);
}

void _xpc_connection_update_event_handler(uint64_t a1)
{
  __swp(v1, (a1 + 176));
  if (v1)
  {
    v3 = v1;
    v4 = (a1 + 32);
    if (*(a1 + 40))
    {
      if (*v4)
      {
        v5 = *v4;
      }

      else
      {
        v5 = 0;
      }

      _Block_release(v5);
    }

    *(a1 + 32) = v3;
    *(a1 + 40) = 1;
  }
}

void _xpc_connection_handle_sent_event(mach_port_context_t a1, dispatch_object_t object, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  context = dispatch_get_context(object);
  msg = dispatch_mach_msg_get_msg();
  if (context)
  {
    v10 = *MEMORY[0x1E69E9840];

    _xpc_connection_release_message(a1, object, context, a3);
  }

  else
  {
    v11 = msg;
    v12 = *(msg + 20);
    if (v12 != 1999646836 || a4 != 0)
    {
      _xpc_connection_handle_sent_event_cold_3(v12);
    }

    if (a3)
    {
      if (_xpc_mach_port_cleanup_right(*(v11 + 8), *v11 & 0x1F))
      {
        _os_assumes_log();
      }

      if (_xpc_mach_port_cleanup_right(*(v11 + 40), *(v11 + 50)))
      {
        _os_assumes_log();
      }

      if (*(v11 + 38) << 16 != 0x100000)
      {
        _xpc_connection_handle_sent_event_cold_1(&v16, buf);
      }

      if (_xpc_mach_port_close_recv(*(v11 + 28), 0, a1))
      {
        _os_assumes_log();
      }

      if (_xpc_connection_cancel(a1, 3u, 0xFu, a3) && _os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
      {
        if (_xpc_connection_log_handle__once != -1)
        {
          do_mach_notify_port_destroyed_cold_1();
        }

        v14 = _xpc_connection_log_handle__log;
        if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v18 = a1;
          v19 = 1024;
          v20 = a3;
          _os_log_impl(&dword_197263000, v14, OS_LOG_TYPE_DEFAULT, "[%p] invalidated after a failed send of the check-in message: mach_error=%{mach.errno}x", buf, 0x12u);
        }
      }
    }

    else
    {
      *(a1 + 64) = 7;
    }

    v15 = *MEMORY[0x1E69E9840];
  }
}

uint64_t _xpc_connection_validate_check_in_is_for_service(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  if (*(a1 + 24) || *(a1 + 192))
  {
    v4 = 1;
  }

  else
  {
    v8 = MEMORY[0x19A8DD0C0](*MEMORY[0x1E69E9A60], *(a2 + 28), *(a1 + 68), a3);
    if (v8)
    {
      v9 = v8 == 20;
    }

    else
    {
      v9 = 1;
    }

    v4 = v9;
    if (v8)
    {
      v10 = v8 == 20;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = v8;
      if (_os_trace_lazy_init_completed_4libxpc())
      {
        if ((*(a1 + 248) & 0x4000) == 0)
        {
          if (_xpc_connection_log_handle__once != -1)
          {
            do_mach_notify_port_destroyed_cold_1();
          }

          v12 = _xpc_connection_log_handle__log;
          if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *a3;
            v14 = 134218496;
            v15 = a1;
            v16 = 1024;
            v17 = v11;
            v18 = 2048;
            v19 = v13;
            _os_log_impl(&dword_197263000, v12, OS_LOG_TYPE_DEFAULT, "[%p] Failed to verify check-in connection port was derived from the listener connection port (kr=%d, sandbox_message_filter_id=#%llx)", &v14, 0x1Cu);
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _xpc_connection_remove_peer_impl(uint64_t a1, void *object)
{
  v3 = object[6];
  v4 = object[7];
  if (v3)
  {
    *(v3 + 56) = v4;
  }

  *v4 = v3;
  object[6] = -1;
  object[7] = -1;
  object[17] = 0;
  xpc_release(object);

  return _xpc_release(a1);
}

void _xpc_connection_remove_peer(uint64_t a1)
{
  _xpc_connection_remove_peer_impl(*a1, *(a1 + 8));

  free(a1);
}

uint64_t _xpc_connection_set_event_handler2(uint64_t a1)
{
  _xpc_connection_mach_event(a1, 15, 0);

  return _xpc_release(a1);
}

BOOL _xpc_data_equal(size_t a1, size_t a2)
{
  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  _xpc_data_map(a1);
  _xpc_data_map(a2);
  return memcmp(*(a1 + 32), *(a2 + 32), *(a1 + 40)) == 0;
}

uint64_t _xpc_data_hash(uint64_t a1)
{
  v1 = *(a1 + 24);
  dispatch_data_apply_f();
  return 0;
}

uint64_t _xpc_data_desc(size_t a1, uint64_t a2)
{
  _xpc_data_map(a1);
  _xpc_data_print_bytes_string(a1, a2, 0x20uLL);

  return _xpc_serializer_append(a2, "", 1uLL, 0);
}

uint64_t _xpc_data_debug_desc(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  _xpc_data_map(a1);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  v4 = snprintf(__str, 0x100uLL, "<%s: %p>: { length = %lu bytes, contents = ", "data", a1, a1[5]);
  if (v4 >= 0xFF)
  {
    v5 = 255;
  }

  else
  {
    v5 = v4;
  }

  _xpc_serializer_append(a2, __str, v5, 0);
  _xpc_data_print_bytes_string(a1, a2, 0x18uLL);
  result = _xpc_serializer_append(a2, " }", 3uLL, 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_data_debug(uint64_t a1, char *__str, size_t __size)
{
  if (*(a1 + 48) == 1)
  {
    if (__size >= 2)
    {
      v4 = *(a1 + 32);
      v7 = *(a1 + 40);
      LODWORD(result) = snprintf(__str, __size, ", buff = %p, len = %lu");
      goto LABEL_6;
    }

    return 0;
  }

  if (__size < 2)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  LODWORD(result) = snprintf(__str, __size, ", buff = (unmapped), len = %lu");
LABEL_6:
  if (result >= __size)
  {
    return __size - 1;
  }

  else
  {
    return result;
  }
}

uint64_t _xpc_data_serialize(uint64_t a1, uint64_t a2)
{
  __src = 0x8000;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v10 = *(a1 + 40);
  _xpc_serializer_append(a2, &v10, 4uLL, 1);
  if ((*(a2 + 156) & 0x40) != 0)
  {
    v8 = *(a2 + 104);
    if (v8)
    {
      result = (*(v8 + 16))(v8, a1);
      if (result)
      {
        return result;
      }
    }

LABEL_9:
    v15 = 0;
    v12 = a1;
    v13 = a2;
    v14 = &v15;
    v9 = *(a1 + 24);
    return dispatch_data_apply_f();
  }

  if (*(a1 + 40) <= 0x4000uLL)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 24);
  memory_entry = dispatch_data_make_memory_entry();
  if (memory_entry)
  {
    v6 = memory_entry;
  }

  else
  {
    v6 = -1;
  }

  return _xpc_serializer_append_port(a2, 0, 0, a1, v6, 17);
}

_DWORD *_xpc_data_deserialize(uint64_t *a1)
{
  v9 = 0;
  v10 = 0;
  transport = _xpc_graph_deserializer_get_transport(a1);
  if (!_xpc_data_get_wire_value(a1, &v9, &v10))
  {
    return 0;
  }

  v4 = v9;
  v3 = v10;
  if (transport == 1 && v10 > 0x4000)
  {
    v5 = dispatch_data_create(v9, v10, 0, *MEMORY[0x1E69E9660]);
    v6 = xpc_data_create_with_dispatch_data(v5);
    dispatch_release(v5);
    if (v6)
    {
      v6[4] |= 1u;
      *(v6 + 4) = v4;
      *(v6 + 5) = v3;
      *(v6 + 48) = 1;
    }
  }

  else
  {
    v7 = xpc_data_create(v9, v10);
    v6 = v7;
    if (v7)
    {
      v7[4] |= 1u;
    }
  }

  return v6;
}

uint64_t _xpc_data_set_value(uint64_t a1, const void *a2, size_t a3)
{
  dispatch_release(*(a1 + 24));
  result = dispatch_data_create_alloc();
  if (result)
  {
    *(a1 + 24) = result;
    result = memcpy(0, a2, a3);
    if (a3 > 0x4000)
    {
      *(a1 + 16) |= 2u;
      v7 = 4;
    }

    else
    {
      v7 = ((a3 + 3) & 0xFFFC) + 4;
    }

    *(a1 + 20) = v7;
  }

  else
  {
    *(a1 + 24) = MEMORY[0x1E69E9668];
  }

  return result;
}

uint64_t _xpc_data_get_wire_value(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  result = _xpc_graph_deserializer_read(a1, 4uLL);
  v12 = result;
  if (!result)
  {
    return result;
  }

  v7 = result;
  transport = _xpc_graph_deserializer_get_transport(a1);
  v9 = *v7;
  if (transport != 1 || v9 <= 0x4000)
  {
    result = _xpc_graph_deserializer_read(a1, v9);
    v12 = result;
    if (!result)
    {
      return result;
    }

LABEL_15:
    *a2 = v12;
    *a3 = v9;
    return 1;
  }

  object = 0;
  if ((_xpc_graph_deserializer_read_port(a1, 17, &object) & 1) == 0)
  {
    return 0;
  }

  v10 = _xpc_vm_map_memory_entry(object, v9, &v12, 0);
  if (!v10)
  {
    if (_xpc_mach_port_release(object))
    {
      _os_assumes_log();
    }

    goto LABEL_15;
  }

  if (v10 != 29)
  {
    _os_assumes_log();
  }

  result = _xpc_mach_port_release(object);
  if (result)
  {
    _os_assumes_log();
    return 0;
  }

  return result;
}

xpc_object_t xpc_data_create(const void *bytes, size_t length)
{
  v16 = *MEMORY[0x1E69E9840];
  if (length)
  {
    __dst = 0;
    if (length <= 0x4000)
    {
      alloc = dispatch_data_create_alloc();
      if (!alloc)
      {
        v5 = 0;
        goto LABEL_11;
      }

      v10 = alloc;
      v5 = xpc_data_create_with_dispatch_data(alloc);
      memcpy(__dst, bytes, length);
      v8 = v10;
      goto LABEL_9;
    }

    buffer = _xpc_allocate_buffer((length + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]);
    v5 = buffer;
    if (buffer)
    {
      memcpy(buffer, bytes, length);
      v6 = dispatch_data_create(v5, length, 0, *MEMORY[0x1E69E9660]);
      if (!v6)
      {
        xpc_data_create_cold_1(&v13, v15);
      }

      v7 = v6;
      v5 = xpc_data_create_with_dispatch_data(v6);
      v8 = v7;
LABEL_9:
      dispatch_release(v8);
    }
  }

  else
  {
    v5 = xpc_data_create_with_dispatch_data(MEMORY[0x1E69E9668]);
    v5[48] = 1;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

xpc_object_t xpc_data_create_with_dispatch_data(dispatch_data_t ddata)
{
  v2 = _xpc_base_create(OS_xpc_data, 32);
  size = dispatch_data_get_size(ddata);
  if (size > 0x4000)
  {
    *(v2 + 16) |= 2u;
    v4 = 4;
  }

  else
  {
    v4 = ((size + 3) & 0xFFFC) + 4;
  }

  *(v2 + 20) = v4;
  *(v2 + 40) = size;
  *(v2 + 24) = ddata;
  dispatch_retain(ddata);
  return v2;
}

size_t xpc_data_get_length(xpc_object_t xdata)
{
  if (xpc_get_type(xdata) == OS_xpc_data)
  {
    return *(xdata + 5);
  }

  else
  {
    return 0;
  }
}

const void *__cdecl xpc_data_get_bytes_ptr(xpc_object_t xdata)
{
  if (xpc_get_type(xdata) != OS_xpc_data)
  {
    return 0;
  }

  _xpc_data_map(xdata);
  return *(xdata + 4);
}

size_t _xpc_data_map(size_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(result + 48) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 24);
    flattened_bytes_4libxpc = dispatch_data_get_flattened_bytes_4libxpc();
    v4 = *(v1 + 24);
    if (!flattened_bytes_4libxpc && dispatch_data_get_size(*(v1 + 24)))
    {
      _xpc_data_map_cold_1(&v6, v7);
    }

    result = dispatch_data_get_size(v4);
    *(v1 + 32) = flattened_bytes_4libxpc;
    *(v1 + 40) = result;
    *(v1 + 48) = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

size_t xpc_data_get_bytes(xpc_object_t xdata, void *buffer, size_t off, size_t length)
{
  if (xpc_get_type(xdata) != OS_xpc_data)
  {
    return 0;
  }

  _xpc_data_map(xdata);
  v8 = *(xdata + 5);
  v9 = v8 >= off;
  v10 = v8 - off;
  if (!v9)
  {
    return 0;
  }

  if (v10 < length)
  {
    length = v10;
  }

  memcpy(buffer, (*(xdata + 4) + off), length);
  return length;
}

BOOL xpc_data_get_bytes_ptr_and_length(void *a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  type = xpc_get_type(a1);
  if (type == OS_xpc_data)
  {
    _xpc_data_map(a1);
    v7 = a1[5];
    *a2 = a1[4];
    *a3 = v7;
  }

  return type == OS_xpc_data;
}

uint64_t _xpc_data_hash_apply(void **a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v5 = *a1;
  *v5 += _xpc_hash(a4, a5);
  return 1;
}

uint64_t _xpc_data_print_bytes_string(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(__src, 0, sizeof(__src));
  if (*(a1 + 40) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  strcpy(__src, "0x");
  v5 = __src + 2;
  if (v4)
  {
    v8 = *(a1 + 32);
    v9 = 94;
    do
    {
      if (v9 < 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = snprintf(v5, v9, "%2.2x", *v8);
        if (v9 <= v10)
        {
          v10 = v9 - 1;
        }
      }

      v5 += v10;
      v9 -= v10;
      ++v8;
      --v4;
    }

    while (v4);
    if (*(a1 + 40) > a3)
    {
      if (v9 < 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = snprintf(v5, v9, "...");
        if (v9 <= v11)
        {
          v11 = v9 - 1;
        }
      }

      v5 += v11;
    }
  }

  result = _xpc_serializer_append(a2, __src, v5 - __src, 0);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_data_serialize_inline_apply(uint64_t *a1, int a2, int a3, void *__src, size_t __n)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  _xpc_serializer_append(v6, __src, __n, 0);
  v9 = *v8 + __n;
  *v8 = v9;
  if (v9 == *(v7 + 40))
  {
    v10 = ((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) - v9;
    v11 = *(v6 + 48) + v10;
    v12 = *(v6 + 56) - v10;
    *(v6 + 48) = v11;
    *(v6 + 56) = v12;
  }

  return 1;
}

BOOL _xpc_date_equal(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if ((*(a1 + 18) & 1) == 0)
  {
    if ((v3 & 0x10000) == 0)
    {
      return *(a1 + 24) == *(a2 + 24);
    }

    goto LABEL_5;
  }

  if ((v3 & 0x10000) == 0)
  {
LABEL_5:
    value_absolute = xpc_date_get_value_absolute(a1);
    return value_absolute == xpc_date_get_value_absolute(a2);
  }

  return *(a1 + 24) == *(a2 + 24);
}

uint64_t _xpc_date_desc(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  if (*(a1 + 18))
  {
    v7 = (*(a1 + 24) + 978307200.0);
    gmtime_r(&v7, &v6);
  }

  else
  {
    v7 = *(a1 + 24) / 0x3B9ACA00uLL;
    localtime_r(&v7, &v6);
  }

  *__src = 0;
  v9 = 0;
  memset(v10, 0, sizeof(v10));
  v3 = strftime(__src, 0x1EuLL, "%a %b %d %T %Y %Z", &v6);
  result = _xpc_serializer_append(a2, __src, v3 + 1, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_date_debug_desc(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  if (*(a1 + 18))
  {
    v9 = (*(a1 + 24) + 978307200.0);
    gmtime_r(&v9, &v8);
  }

  else
  {
    v9 = *(a1 + 24) / 0x3B9ACA00uLL;
    localtime_r(&v9, &v8);
  }

  *v18 = 0;
  v19 = 0;
  memset(v20, 0, sizeof(v20));
  strftime(v18, 0x1EuLL, "%a %b %d %T %Y %Z", &v8);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__str = 0u;
  v11 = 0u;
  v4 = snprintf(__str, 0x80uLL, "<%s: %p> %s (approx)", "date", a1, v18);
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  result = _xpc_serializer_append(a2, __str, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_date_serialize(uint64_t a1, uint64_t a2)
{
  __src = 28672;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  if (*(a1 + 18))
  {
    v5 = (*(a1 + 24) + 978307200.0) * 1000000000.0;
    if (fabs(v5) <= 9.22337204e18)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v7 = v4;
  return _xpc_serializer_append(a2, &v7, 8uLL, 1);
}

uint64_t _xpc_date_deserialize(uint64_t a1)
{
  result = _xpc_graph_deserializer_read(a1, 8uLL);
  if (result)
  {
    v2 = *result;
    result = _xpc_base_create(OS_xpc_date, 8);
    *(result + 24) = v2;
    *(result + 16) |= 1u;
    *(result + 20) = 8;
  }

  return result;
}

BOOL _xpc_date_get_wire_value(uint64_t a1, void *a2)
{
  v3 = _xpc_graph_deserializer_read(a1, 8uLL);
  if (v3)
  {
    *a2 = *v3;
  }

  return v3 != 0;
}

xpc_object_t xpc_date_create(int64_t interval)
{
  result = _xpc_base_create(OS_xpc_date, 8);
  *(result + 5) = 8;
  *(result + 3) = interval;
  return result;
}

uint64_t xpc_date_create_absolute(double a1)
{
  result = _xpc_base_create(OS_xpc_date, 8);
  *(result + 16) |= 0x10000u;
  *(result + 20) = 8;
  *(result + 24) = a1;
  return result;
}

xpc_object_t xpc_date_create_from_current(void)
{
  v0 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  if (v0 <= 0)
  {
    xpc_date_create_from_current_cold_1();
  }

  v1 = v0;
  result = _xpc_base_create(OS_xpc_date, 8);
  *(result + 5) = 8;
  *(result + 3) = v1;
  return result;
}

int64_t xpc_date_get_value(xpc_object_t xdate)
{
  if (xpc_get_type(xdate) != OS_xpc_date)
  {
    return 0;
  }

  if ((*(xdate + 18) & 1) == 0)
  {
    return *(xdate + 3);
  }

  v3 = (*(xdate + 3) + 978307200.0) * 1000000000.0;
  if (fabs(v3) > 9.22337204e18)
  {
    return 0;
  }

  return v3;
}

BOOL xpc_date_is_int64_range(uint64_t a1)
{
  if (xpc_get_type(a1) != OS_xpc_date)
  {
    return 0;
  }

  if (*(a1 + 18))
  {
    return fabs((*(a1 + 24) + 978307200.0) * 1000000000.0) <= 9.22337204e18;
  }

  return 1;
}

double xpc_date_get_value_absolute(uint64_t a1)
{
  type = xpc_get_type(a1);
  result = 0.0;
  if (type == OS_xpc_date)
  {
    if (*(a1 + 18))
    {
      return *(a1 + 24);
    }

    else
    {
      return *(a1 + 24) / 1000000000.0 + -978307200.0;
    }
  }

  return result;
}

uint64_t xpc_get_attachment_endpoint()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  return *(v0 + 32);
}

xpc_object_t xpc_copy_domain()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = getpid();
  xpc_dictionary_set_int64(v0, "pid", v1);
  return v0;
}

uint64_t xpc_copy_bootstrap()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "type", 5uLL);
  v1 = getpid();
  xpc_dictionary_set_uint64(v0, "handle", v1);
  xpc_dictionary_set_BOOL(v0, "self", 1);
  xdict = 0;
  if (_xpc_service_routine(711, v0, &xdict))
  {
    _os_assumes_log();
    bootstrap_copy = 0;
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "bootstrap");
    v6 = 0;
    data = xpc_dictionary_get_data(xdict, "creator", &v6);
    if (v6 != 32)
    {
      xpc_copy_bootstrap_cold_1();
    }

    bootstrap_copy = _xpc_dictionary_create_bootstrap_copy(value, data);
    xpc_release(xdict);
  }

  xpc_release(v0);
  return bootstrap_copy;
}

double xpc_generate_audit_token(int a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 20) = a1;
  *(a2 + 28) = 0x7FFFFFFF;
  return result;
}

xpc_object_t xpc_copy_entitlement_for_token(const char *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 20);
    if (*(a2 + 28) == 0x7FFFFFFF)
    {
      a2 = 0;
    }
  }

  else
  {
    v3 = getpid();
    a2 = 0;
  }

  v4 = _xpc_copy_entitlements(v3, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a1)
  {
    value = xpc_dictionary_get_value(v4, a1);
    v7 = value;
    if (value)
    {
      xpc_retain(value);
    }
  }

  else
  {
    v7 = xpc_retain(v4);
  }

  xpc_release(v5);
  return v7;
}

xpc_object_t xpc_copy_entitlements_for_self()
{
  self_audit_token = _xpc_get_self_audit_token();
  v1 = getpid();

  return _xpc_copy_entitlements(v1, self_audit_token);
}

xpc_object_t xpc_copy_entitlement_for_self(const char *a1)
{
  self_audit_token = _xpc_get_self_audit_token();
  v3 = getpid();
  if (a1)
  {

    return _xpc_copy_entitlements_with_key(v3, self_audit_token, a1);
  }

  else
  {

    return _xpc_copy_entitlements(v3, self_audit_token);
  }
}

uint64_t xpc_install_remote_hooks(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    result = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    result = _os_alloc_once();
  }

  if (*(result + 200))
  {
    xpc_install_remote_hooks_cold_1(&v4, v5);
  }

  if (*a1 != 40)
  {
    xpc_install_remote_hooks_cold_2(&v4, v5);
  }

  if (!a1[1])
  {
    xpc_install_remote_hooks_cold_6(&v4, v5);
  }

  if (!a1[2])
  {
    xpc_install_remote_hooks_cold_5(&v4, v5);
  }

  if (!a1[3])
  {
    xpc_install_remote_hooks_cold_4(&v4, v5);
  }

  if (!a1[4])
  {
    xpc_install_remote_hooks_cold_3(&v4, v5);
  }

  *(result + 200) = a1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _xpc_get_service_instance(int a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v4, "pid", a1);
  xdict = 0;
  v5 = _xpc_service_routine(720, v4, &xdict);
  xpc_release(v4);
  if (v5)
  {
    if (v5 != 113)
    {
      _xpc_get_service_instance_cold_1(v11, v5);
    }

    v6 = 0;
  }

  else
  {
    uuid = xpc_dictionary_get_uuid(xdict, "instance");
    v6 = uuid != 0;
    if (uuid)
    {
      uuid_copy(a2, uuid);
    }

    xpc_release(xdict);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL xpc_get_instance(unsigned __int8 *a1)
{
  v2 = getpid();

  return _xpc_get_service_instance(v2, a1);
}

uint64_t xpc_user_sessions_enabled()
{
  if (xpc_user_sessions_enabled_once != -1)
  {
    xpc_user_sessions_enabled_cold_1();
  }

  return xpc_user_sessions_enabled_enabled;
}

int64_t __xpc_user_sessions_enabled_block_invoke()
{
  v4 = 0;
  v3 = 0;
  result = _xpc_user_sessions_info_routine(&v3);
  if (v3)
  {
    v1 = result == 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;
  xpc_user_sessions_enabled_enabled = v2;
  return result;
}

int64_t _xpc_user_sessions_info_routine(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  empty = xpc_dictionary_create_empty();
  xdict = 0;
  v3 = _xpc_bootstrap_routine(904, empty, &xdict);
  xpc_release(empty);
  if (v3)
  {
    v9 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    xpc_strerror(v3);
    _os_log_simple();
  }

  else
  {
    *a1 = xpc_dictionary_get_BOOL(xdict, "enabled");
    *(a1 + 4) = xpc_dictionary_get_uint64(xdict, "foreground_uid");
    *(a1 + 8) = xpc_dictionary_get_uint64(xdict, "session_uid");
    xpc_release(xdict);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t xpc_user_sessions_get_foreground_uid(int *a1)
{
  v6 = 0;
  v5 = 0;
  v2 = _xpc_user_sessions_info_routine(&v5);
  if (v2)
  {
    if (!a1)
    {
      return 4294967195;
    }

    goto LABEL_8;
  }

  if ((v5 & 1) == 0)
  {
    v4 = _xpc_asprintf("xpc_user_sessions_get_foreground_uid() must not be called if xpc_user_sessions_enabled() is false");
    _xpc_api_misuse(v4);
  }

  result = HIDWORD(v5);
  if (a1 && HIDWORD(v5) == -101)
  {
    v2 = 112;
LABEL_8:
    *a1 = v2;
    return 4294967195;
  }

  return result;
}

uint64_t xpc_user_sessions_get_session_uid()
{
  if (xpc_user_sessions_get_session_uid_once != -1)
  {
    xpc_user_sessions_get_session_uid_cold_1();
  }

  return xpc_user_sessions_get_session_uid_session_uid;
}

int64_t __xpc_user_sessions_get_session_uid_block_invoke()
{
  v4 = 0;
  v3 = 0;
  result = _xpc_user_sessions_info_routine(&v3);
  if (result)
  {
    v1 = -101;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      v2 = _xpc_asprintf("xpc_user_sessions_get_session_uid() must not be called if xpc_user_sessions_enabled() is false");
      _xpc_api_misuse(v2);
    }

    v1 = v4;
  }

  xpc_user_sessions_get_session_uid_session_uid = v1;
  return result;
}

uint64_t xpc_is_system_session()
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v0 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v0 = _os_alloc_once();
  }

  return *(v0 + 208);
}

void *_xpc_neuter_potential_reentrancy(int a1)
{
  if (a1)
  {
    if (dlopen("/usr/lib/system/libsystem_notify.dylib", 1))
    {
      notify_set_options();
    }

    if (!dlopen("/usr/lib/system/libsystem_info.dylib", 1))
    {
LABEL_8:
      result = dlopen("/usr/lib/system/libsystem_trace.dylib", 1);
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    notify_set_options();
  }

  si_search_module_set_flags();
  si_search_module_set_flags();
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:

  return MEMORY[0x1EEE746B0](256);
}

char *_xpc_copy_csops_string(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x408uLL);
  _xpc_get_csops_blob(a1, a2, a3, v12);
  if ((v6 & 0x80000000) == 0)
  {
    if (!v6)
    {
      v7 = _xpc_strndup(&size_4, size - 8);
      goto LABEL_13;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_13;
  }

  if (*__error() != 34)
  {
    goto LABEL_10;
  }

  v8 = _xpc_alloc_typed(size, 0xB78E53C6uLL);
  _xpc_get_csops_blob(a1, a2, a3, v8);
  if (v9)
  {
    if (*__error() != 3 && *__error())
    {
      _os_assumes_log();
    }

    v7 = 0;
  }

  else
  {
    v7 = _xpc_strndup(&v8[1], v8->u32[1] - 8);
  }

  free(v8);
LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

xpc_object_t _xpc_copy_entitlements_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  size_4[128] = *MEMORY[0x1E69E9840];
  bzero(&v13, 0x408uLL);
  if (a3 != 16 && a3 != 7)
  {
    goto LABEL_13;
  }

  _xpc_get_csops_blob(a1, a2, a3, &v13);
  if (v6 < 0)
  {
    if (*__error() != 34)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    v8 = _xpc_alloc_typed(size, 0xD230A7E8uLL);
    _xpc_get_csops_blob(a1, a2, a3, v8);
    if (v9)
    {
      if (*__error() != 3 && *__error())
      {
        _os_assumes_log();
      }
    }

    else
    {
      v12 = v8->u32[1];
      if (v12 && v8->i32[0])
      {
        v7 = xpc_data_create(&v8[1], v12 - 8);
LABEL_19:
        free(v8);
        goto LABEL_14;
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  if (v6 || !size || !v13)
  {
    goto LABEL_13;
  }

  v7 = xpc_data_create(size_4, size - 8);
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

int8x8_t _xpc_get_csops_blob(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  if (a2)
  {
    csops_audittoken();
  }

  else
  {
    csops();
  }

  result = vrev32_s8(*a4);
  *a4 = result;
  return result;
}

xpc_object_t _xpc_copy_entitlements(uint64_t a1, uint64_t a2)
{
  result = _xpc_copy_entitlements_data(a1, a2, 16);
  if (result)
  {
    v3 = result;
    bytes_ptr = xpc_data_get_bytes_ptr(result);
    length = xpc_data_get_length(v3);
    v6 = xpc_create_from_ce_der(bytes_ptr, length);
    xpc_release(v3);
    return v6;
  }

  return result;
}

xpc_object_t _xpc_copy_entitlements_with_key(uint64_t a1, uint64_t a2, const char *a3)
{
  result = _xpc_copy_entitlements_data(a1, a2, 16);
  if (result)
  {
    v5 = result;
    bytes_ptr = xpc_data_get_bytes_ptr(result);
    length = xpc_data_get_length(v5);
    v8 = xpc_create_from_ce_der_with_key(bytes_ptr, length, a3);
    xpc_release(v5);
    return v8;
  }

  return result;
}

uint64_t _xpc_proc_bsdinfo(int a1, void *buffer)
{
  if (proc_pidinfo(a1, 13, 1uLL, buffer, 64) == 64)
  {
    return 0;
  }

  else
  {
    return *__error();
  }
}

uint64_t _xpc_vm_map_memory_entry(mem_entry_name_port_t object, mach_vm_size_t size, mach_vm_address_t *a3, int a4)
{
  address = 0;
  result = mach_vm_map(*MEMORY[0x1E69E9A60], &address, size, 0, 1, object, 0, a4 ^ 1, 67, 67, 2u);
  if (!result)
  {
    *a3 = address;
  }

  return result;
}

vm_address_t _xpc_allocate_purgable_buffer(uint64_t a1)
{
  address = 0;
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, (a1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], -268435453))
  {
    _os_assumes_log();
  }

  return address;
}

uint64_t _xpc_deallocate_buffer(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = MEMORY[0x19A8DD830](*MEMORY[0x1E69E9A60], a1, a2);
  if (result)
  {
    _xpc_deallocate_buffer_cold_1(&v4, v5);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

vm_address_t _xpc_allocate_buffer(uint64_t a1)
{
  address = 0;
  if (vm_allocate(*MEMORY[0x1E69E9A60], &address, (a1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8], -268435455))
  {
    _os_assumes_log();
  }

  return address;
}

char *xpc_dictionary_copy_basic_description(const void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  v2 = snprintf(__str, 0x100uLL, "<%s: %p>", "dictionary", a1);
  if (v2 >= 0xFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = v2;
  }

  _xpc_dictionary_debug(a1, &__str[v3], 256 - v3);
  result = strdup(__str);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _xpc_dictionary_debug(uint64_t a1, char *__str, size_t __size)
{
  v6 = snprintf(__str, __size, ", subtype = %d, count = %u", *(a1 + 28) & 3, *(a1 + 24));
  if ((*(a1 + 28) & 3) == 2)
  {
    request = (a1 + 96);
    if (a1 == -96)
    {
      return v6;
    }
  }

  else
  {
    if ((*(a1 + 28) & 3) != 1)
    {
      return v6;
    }

    request = _xpc_received_message_get_request(a1 + 88);
    if (!request)
    {
      return v6;
    }
  }

  if (__size > v6)
  {
    v6 += _xpc_message_request_debug(request, &__str[v6], __size - v6);
  }

  return v6;
}

uint64_t _xpc_dictionary_copy(_DWORD *a1)
{
  v2 = _xpc_base_create(OS_xpc_dictionary, 64);
  *(v2 + 20) = 8;
  *(v2 + 28) &= 0xFFFFFFFC;
  _xpc_dictionary_apply_node_f(a1, v2, _xpc_dictionary_copy_apply);
  return v2;
}

uint64_t _xpc_dictionary_equal(_DWORD *a1, uint64_t a2)
{
  if (a1[6] == *(a2 + 24))
  {
    v8 = v2;
    v9 = v3;
    v7 = 1;
    v6[0] = a1;
    v6[1] = a2;
    v6[2] = &v7;
    _xpc_dictionary_apply_node_f(a1, v6, _xpc_dictionary_equal_apply);
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t _xpc_dictionary_hash(_DWORD *a1)
{
  v2 = 0;
  _xpc_dictionary_apply_node_f(a1, &v2, _xpc_dictionary_hash_apply);
  return v2;
}

uint64_t _xpc_dictionary_desc(_DWORD *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  __src = 123;
  _xpc_serializer_append(a2, &__src, 1uLL, 0);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__str = 0u;
  v24 = 0u;
  if (_xpc_dictionary_get_transaction(a1))
  {
    strcpy(__str, "<transaction");
    _xpc_serializer_append(a2, __str, 0xCuLL, 0);
    if (!_xpc_dictionary_get_importance_voucher(a1))
    {
LABEL_10:
      v8 = ">";
      goto LABEL_11;
    }

    v4 = ", ";
LABEL_6:
    importance_voucher = _xpc_dictionary_get_importance_voucher(a1);
    v6 = snprintf(__str, 0x80uLL, "%svoucher = %p, ", v4, importance_voucher);
    if (v6 >= 0x7F)
    {
      v7 = 127;
    }

    else
    {
      v7 = v6;
    }

    _xpc_serializer_append(a2, __str, v7, 0);
    goto LABEL_10;
  }

  if (_xpc_dictionary_get_importance_voucher(a1))
  {
    v4 = "<";
    goto LABEL_6;
  }

  v8 = "";
LABEL_11:
  v9 = snprintf(__str, 0x80uLL, "%s\n", v8);
  if (v9 >= 0x7F)
  {
    v10 = 127;
  }

  else
  {
    v10 = v9;
  }

  _xpc_serializer_append(a2, __str, v10, 0);
  *&__str[8] = _xpc_serializer_pad(a2);
  *&v24 = 0;
  *__str = a2;
  _xpc_dictionary_apply_node_f(a1, __str, _xpc_dictionary_desc_apply);
  _xpc_serializer_unpad(a2);
  v11 = _xpc_object_pad(*(a2 + 48), *(a2 + 56), *(a2 + 112));
  v12 = *(a2 + 56) - v11;
  *(a2 + 48) += v11;
  *(a2 + 56) = v12;
  result = _xpc_serializer_append(a2, "}", 2uLL, 0);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_dictionary_debug_desc(_DWORD *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v4 = a1[6];
  transaction = _xpc_dictionary_get_transaction(a1);
  v6 = snprintf(__str, 0x80uLL, "<%s: %p> { count = %u, transaction: %d, ", "dictionary", a1, v4, transaction);
  if (v6 >= 0x7F)
  {
    v7 = 127;
  }

  else
  {
    v7 = v6;
  }

  _xpc_serializer_append(a2, __str, v7, 0);
  importance_voucher = _xpc_dictionary_get_importance_voucher(a1);
  v9 = snprintf(__str, 0x80uLL, "voucher = %p, ", importance_voucher);
  if (v9 >= 0x7F)
  {
    v10 = 127;
  }

  else
  {
    v10 = v9;
  }

  _xpc_serializer_append(a2, __str, v10, 0);
  strcpy(__str, "contents =\n");
  _xpc_serializer_append(a2, __str, 0xBuLL, 0);
  v15[1] = _xpc_serializer_pad(a2);
  v15[0] = a2;
  v15[2] = 1;
  _xpc_dictionary_apply_node_f(a1, v15, _xpc_dictionary_desc_apply);
  _xpc_serializer_unpad(a2);
  v11 = _xpc_object_pad(*(a2 + 48), *(a2 + 56), *(a2 + 112));
  v12 = *(a2 + 56) - v11;
  *(a2 + 48) += v11;
  *(a2 + 56) = v12;
  result = _xpc_serializer_append(a2, "}", 2uLL, 0);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *_xpc_dictionary_serialize(_DWORD *a1, uint64_t a2)
{
  __src = 61440;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v8 = 0;
  graph_length = _xpc_serializer_get_graph_length(a2);
  _xpc_serializer_append(a2, &v8, 4uLL, 1);
  v7 = a1[6];
  _xpc_serializer_append(a2, &v7, 4uLL, 1);
  _xpc_dictionary_apply_node_f(a1, a2, _xpc_dictionary_serialize_apply);
  result = _xpc_serializer_get_graph_length(a2);
  v6 = result - graph_length - 4;
  if (!HIDWORD(v6))
  {
    result = _xpc_serializer_get_graph_ptr(a2, graph_length);
    *result = v6;
  }

  return result;
}

_DWORD *_xpc_dictionary_deserialize(_OWORD *a1)
{
  v2 = _xpc_base_create(OS_xpc_dictionary, 64);
  v2[5] = 8;
  v2[7] &= 0xFFFFFFFC;
  v5 = 1;
  v4[0] = v2;
  v4[1] = &v5;
  _xpc_dictionary_apply_wire_f(v2, a1, v4, _xpc_dictionary_deserialize_apply);
  if ((v5 & 1) == 0)
  {
    xpc_release(v2);
    return 0;
  }

  return v2;
}

void _xpc_dictionary_dispose(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 32;
  do
  {
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      do
      {
        v5 = *v4;
        _xpc_dictionary_node_free(v4);
        v4 = v5;
      }

      while (v5);
    }

    ++v2;
  }

  while (v2 != 7);
  v6 = *(a1 + 28);
  if ((v6 & 3u) > 1)
  {
    if ((v6 & 3) == 2)
    {
      _xpc_message_request_destroy((a1 + 96), *(a1 + 88));
      v10 = *(a1 + 88);
      if (v10)
      {

        xpc_release(v10);
      }
    }
  }

  else if ((v6 & 3) != 0)
  {
    if ((v6 & 4) != 0)
    {
      payload = _xpc_graph_deserializer_get_payload(a1 + 152);
      os_release(payload);
      v8 = OSAtomicDequeue((a1 + 240), 0);
      if (v8)
      {
        v9 = v8;
        do
        {
          xpc_release(v9[1]);
          free(v9);
          v9 = OSAtomicDequeue((a1 + 240), 0);
        }

        while (v9);
      }
    }

    _xpc_received_message_destroy((a1 + 88));
  }
}

uint64_t _xpc_dictionary_create_from_received_message(__int128 *a1, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _xpc_graph_deserializer_read(a2, 4uLL);
  if (!v4 || *v4 != 61440)
  {
    goto LABEL_14;
  }

  payload = _xpc_graph_deserializer_get_payload(a2);
  if (!payload)
  {
    _xpc_dictionary_create_from_received_message_cold_2(&v16, v17);
  }

  v6 = payload;
  transport = xpc_payload_get_transport(payload);
  if (!transport)
  {
    if (!_xpc_received_message_get_connection(a2))
    {
      goto LABEL_7;
    }

LABEL_11:
    v11 = _xpc_base_create(OS_xpc_dictionary, 232);
    *(v11 + 20) = 8;
    *(v11 + 28) = *(v11 + 28) & 0xFFFFFFFC | 1;
    _xpc_ktrace_pid0(687865868);
    LOBYTE(v16) = 1;
    *&v17[0] = v11;
    *(&v17[0] + 1) = &v16;
    _xpc_dictionary_apply_wire_f(v11, a2, v17, _xpc_dictionary_deserialize_apply);
    v13 = v16;
    _xpc_ktrace_pid0(687865872);
    if (v13)
    {
      goto LABEL_12;
    }

    xpc_release(v11);
LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (transport != 1)
  {
    _xpc_dictionary_create_from_received_message_cold_1();
  }

  if (xpc_mach_payload_ool_port_count(v6))
  {
    goto LABEL_11;
  }

LABEL_7:
  memset(v17, 0, sizeof(v17));
  _xpc_graph_deserializer_init_clone(v17, a2);
  v8 = _xpc_wire_length_from_wire_id(0xF000u);
  if (v8(v17) == -1)
  {
    goto LABEL_14;
  }

  v9 = _xpc_graph_deserializer_read(v17, 4uLL);
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *v9;
  v11 = _xpc_base_create(OS_xpc_dictionary, 232);
  v12 = *(v11 + 28);
  *(v11 + 20) = 8;
  *(v11 + 24) = v10;
  *(v11 + 240) = 0;
  *(v11 + 248) = 0;
  *(v11 + 28) = v12 & 0xFFFFFFF8 | 5;
  _xpc_graph_deserializer_move(v11 + 152, a2);
  os_retain(v6);
LABEL_12:
  _xpc_received_message_move(v11 + 88, a1);
LABEL_15:
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t _xpc_dictionary_create_bootstrap_copy(_DWORD *a1, _OWORD *a2)
{
  v4 = _xpc_base_create(OS_xpc_dictionary, 96);
  *(v4 + 20) = 8;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *(v4 + 104) = v5;
  *(v4 + 88) = v5;
  *(v4 + 108) = 0;
  *(v4 + 28) |= 3u;
  v6 = a2[1];
  *(v4 + 88) = *a2;
  *(v4 + 104) = v6;
  if (a1)
  {
    _xpc_dictionary_apply_node_f(a1, v4, _xpc_dictionary_copy_apply);
  }

  return v4;
}

uint64_t _xpc_dictionary_create_reply_with_port(int a1)
{
  v2 = _xpc_base_create(OS_xpc_dictionary, 96);
  *(v2 + 20) = 8;
  *(v2 + 28) = *(v2 + 28) & 0xFFFFFFFC | 2;
  _xpc_mach_message_request_init(v2 + 96, a1, 0, 0, 0);
  return v2;
}

uint64_t _xpc_dictionary_set_remote_connection(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 3) != 1)
  {
    _xpc_dictionary_set_remote_connection_cold_1(&v7, v8);
  }

  request = _xpc_received_message_get_request(a1 + 88);
  if (_xpc_message_request_get_transport(request) != 1)
  {
    _xpc_dictionary_set_remote_connection_cold_2(&v7, v8);
  }

  if (!_xpc_message_request_expects_reply(request))
  {
    _xpc_dictionary_set_remote_connection_cold_3(&v7, v8);
  }

  v5 = *MEMORY[0x1E69E9840];

  return _xpc_received_message_set_connection(a1 + 88, a2);
}

uint64_t _xpc_dictionary_extract_reply_port(uint64_t a1)
{
  if ((*(a1 + 28) & 3) != 1)
  {
    if ((*(a1 + 28) & 3) == 2)
    {
      request = (a1 + 96);
      goto LABEL_5;
    }

    return 0;
  }

  request = _xpc_received_message_get_request(a1 + 88);
  if (!request)
  {
    return 0;
  }

LABEL_5:
  if (_xpc_message_request_get_transport(request))
  {
    return 0;
  }

  return _xpc_mach_message_request_extract_reply_port(request);
}

uint64_t _xpc_dictionary_set_reply_msg_id(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 3) != 1)
  {
    if ((*(a1 + 28) & 3) == 2)
    {
      request = a1 + 96;
      goto LABEL_5;
    }

LABEL_8:
    _xpc_dictionary_set_reply_msg_id_cold_1(&v6, v7);
  }

  request = _xpc_received_message_get_request(a1 + 88);
  if (!request)
  {
    goto LABEL_8;
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];

  return _xpc_remote_message_request_set_reply_msg_id(request, a2);
}

uint64_t _xpc_dictionary_get_reply_msg_id(uint64_t a1)
{
  if ((*(a1 + 28) & 3) != 1)
  {
    if ((*(a1 + 28) & 3) == 2)
    {
      request = (a1 + 96);
      goto LABEL_5;
    }

    return 0;
  }

  request = _xpc_received_message_get_request(a1 + 88);
  if (!request)
  {
    return 0;
  }

LABEL_5:
  if (_xpc_message_request_get_transport(request) != 1)
  {
    return 0;
  }

  return _xpc_remote_message_request_get_reply_msg_id(request);
}

uint64_t _xpc_dictionary_extract_reply_msg_id(uint64_t a1)
{
  reply_msg_id = _xpc_dictionary_get_reply_msg_id(a1);
  if (reply_msg_id)
  {
    _xpc_dictionary_set_reply_msg_id(a1, 0);
  }

  return reply_msg_id;
}

unsigned int *xpc_dictionary_apply_f(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a3;
  v4[2] = a2;
  v5 = 0;
  LODWORD(v5) = (a1[7] >> 3) & 0xFFFFFFF;
  return _xpc_dictionary_apply_node_f(a1, v4, _xpc_dictionary_apply_f_apply);
}

unsigned int *_xpc_dictionary_apply_node_f(_DWORD *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (xpc_get_type(a1) != OS_xpc_dictionary && xpc_get_type(a1) != OS_xpc_error)
  {
    _xpc_api_misuse("Given object not of required type.");
  }

  type = xpc_get_type(a1);
  v7 = 0;
  while (1)
  {
    result = *&a1[2 * v7 + 8];
    if (result)
    {
      break;
    }

LABEL_8:
    if (type == OS_xpc_error || v7++ >= 6)
    {
      if ((a1[7] & 7) == 5)
      {
        v11[0] = a1;
        v11[1] = a3;
        v11[2] = a2;
        return _xpc_dictionary_apply_wire_f(a1, 0, v11, _xpc_dictionary_apply_node_f_wire_apply);
      }

      return result;
    }
  }

  while (1)
  {
    v9 = *result;
    if (*(result + 2) != &_xpc_dictionary_null_value)
    {
      result = a3();
      if (!result)
      {
        return result;
      }
    }

    result = v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }
}

uint64_t _xpc_dictionary_apply_f_apply(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  key = _xpc_dictionary_node_get_key(a1);
  v5(key, *(a1 + 16), v4);
  if (((*(*a2 + 28) >> 3) & 0xFFFFFFF) != *(a2 + 24))
  {
    v8 = _xpc_asprintf("Dictionary mutated during iteration");
    _xpc_api_misuse(v8);
  }

  return 1;
}

uint64_t _xpc_dictionary_extract_importance_voucher(uint64_t a1)
{
  if ((*(a1 + 28) & 3) == 1)
  {
    request = _xpc_received_message_get_request(a1 + 88);
    if (request)
    {

      return _xpc_message_request_extract_voucher(request);
    }
  }

  else if ((*(a1 + 28) & 3) == 2)
  {
    request = a1 + 96;

    return _xpc_message_request_extract_voucher(request);
  }

  return 0;
}

uint64_t _xpc_dictionary_set_transaction(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 28) & 3) != 1)
  {
    if ((*(a1 + 28) & 3) == 2)
    {
      request = a1 + 96;
      goto LABEL_5;
    }

LABEL_8:
    _xpc_dictionary_set_reply_msg_id_cold_1(&v6, v7);
  }

  request = _xpc_received_message_get_request(a1 + 88);
  if (!request)
  {
    goto LABEL_8;
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];

  return _xpc_message_request_set_transaction(request, a2);
}

uint64_t _xpc_dictionary_get_transaction(uint64_t a1)
{
  if ((*(a1 + 28) & 3) == 1)
  {
    request = _xpc_received_message_get_request(a1 + 88);
    if (request)
    {

      return _xpc_message_request_get_transaction(request);
    }
  }

  else if ((*(a1 + 28) & 3) == 2)
  {
    request = a1 + 96;

    return _xpc_message_request_get_transaction(request);
  }

  return 0;
}

BOOL xpc_dictionary_expects_reply(uint64_t a1)
{
  if ((*(a1 + 28) & 3) == 1)
  {
    request = _xpc_received_message_get_request(a1 + 88);
    if (request)
    {

      return _xpc_message_request_expects_reply(request);
    }
  }

  else if ((*(a1 + 28) & 3) == 2)
  {
    request = (a1 + 96);

    return _xpc_message_request_expects_reply(request);
  }

  return 0;
}

xpc_connection_t xpc_dictionary_get_connection(void *a1)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    return 0;
  }

  return xpc_dictionary_get_remote_connection(a1);
}

xpc_connection_t xpc_dictionary_get_remote_connection(xpc_object_t xdict)
{
  if (xpc_get_type(xdict) != OS_xpc_dictionary)
  {
    return 0;
  }

  if ((*(xdict + 7) & 3) == 2)
  {
    return *(xdict + 11);
  }

  if ((*(xdict + 7) & 3) != 1)
  {
    return 0;
  }

  return _xpc_received_message_get_connection(xdict + 88);
}

void xpc_dictionary_set_pointer(_DWORD *a1, const char *a2, uint64_t a3)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v9 = class_getName(OS_xpc_dictionary);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v9);
    _xpc_api_misuse(v10);
  }

  v6 = xpc_pointer_create(a3);
  _xpc_dictionary_set_value(a1, a2, v6, 0);

  xpc_release(v6);
}

uint64_t xpc_dictionary_get_pointer(void *a1, const char *a2)
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

  v5 = value;
  if (xpc_get_type(value) != OS_xpc_pointer)
  {
    return 0;
  }

  return xpc_pointer_get_value(v5);
}

xpc_object_t xpc_dictionary_get_value(xpc_object_t xdict, const char *key)
{
  if (xpc_get_type(xdict) != OS_xpc_error && xpc_get_type(xdict) != OS_xpc_dictionary)
  {
    return 0;
  }

  return _xpc_dictionary_look_up(xdict, key, 0);
}

void xpc_dictionary_set_mach_send(_DWORD *a1, const char *a2, mach_port_name_t a3)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v9 = class_getName(OS_xpc_dictionary);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v9);
    _xpc_api_misuse(v10);
  }

  v6 = xpc_mach_send_create(a3);
  _xpc_dictionary_set_value(a1, a2, v6, 0);

  xpc_release(v6);
}

void xpc_dictionary_set_mach_recv(_DWORD *a1, const char *a2, int a3)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v9 = class_getName(OS_xpc_dictionary);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v9);
    _xpc_api_misuse(v10);
  }

  v6 = xpc_mach_recv_create(a3);
  _xpc_dictionary_set_value(a1, a2, v6, 0);

  xpc_release(v6);
}

__n128 xpc_dictionary_get_audit_token(uint64_t a1, uint64_t a2)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v9 = class_getName(OS_xpc_dictionary);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v9);
    _xpc_api_misuse(v10);
  }

  v4 = *(a1 + 28) & 3;
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      result = *(a1 + 88);
      v6 = *(a1 + 104);
      *a2 = result;
      *(a2 + 16) = v6;
      return result;
    }

    goto LABEL_9;
  }

  if (!v4)
  {
LABEL_9:
    result.n128_u64[0] = -1;
    result.n128_u64[1] = -1;
    *a2 = result;
    *(a2 + 16) = result;
    *(a2 + 20) = 0;
    return result;
  }

  result.n128_u64[0] = _xpc_received_message_get_audit_token(a1 + 88, a2).n128_u64[0];
  return result;
}

xpc_object_t xpc_dictionary_create(const char *const *keys, xpc_object_t *values, size_t count)
{
  v6 = _xpc_base_create(OS_xpc_dictionary, 64);
  v6[5] = 8;
  for (v6[7] &= 0xFFFFFFFC; count; --count)
  {
    v8 = *keys++;
    v7 = v8;
    v9 = *values++;
    _xpc_dictionary_insert(v6, v7, v9, 0);
  }

  return v6;
}

void _xpc_dictionary_insert(_DWORD *a1, const char *a2, __objc2_class **a3, void *a4)
{
  if (xpc_get_type(a1) == OS_xpc_error)
  {
    v29 = _xpc_asprintf("Attempt to modify a global dictionary.");
    _xpc_api_misuse(v29);
  }

  v8 = &a1[2 * _hash_bucket(a2)];
  v11 = *(v8 + 4);
  v10 = (v8 + 8);
  v9 = v11;
  do
  {
    v12 = v9;
    if (!v9)
    {
      v15 = 0;
      v17 = a3 != 0;
      goto LABEL_18;
    }

    v9 = *v9;
    key = _xpc_dictionary_node_get_key(v12);
  }

  while (strcmp(a2, key));
  v9 = 0;
  v14 = v12[2];
  if (v14 == &_xpc_dictionary_null_value)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12[2];
  }

  if (v15 == a3 && v15 != 0)
  {
    v9 = xpc_retain(v15);
  }

  _xpc_dictionary_node_free(v12);
  v17 = a3 != 0;
  if (a3 && v15)
  {
    LOBYTE(v17) = 1;
    v15 = v14;
    goto LABEL_27;
  }

  LODWORD(v12) = v15 != 0;
LABEL_18:
  if ((a1[7] & 7) == 5)
  {
    memset(v30, 0, sizeof(v30));
    v32 = 0;
    v31[0] = a2;
    v31[1] = v30;
    v31[2] = &v32;
    _xpc_dictionary_apply_wire_f(a1, 0, v31, _xpc_dictionary_look_up_wire_apply);
    v18 = &_xpc_dictionary_null_value;
    if (v17)
    {
      v19 = a3;
    }

    else
    {
      v19 = &_xpc_dictionary_null_value;
    }

    if (v12)
    {
      v18 = v15;
    }

    if (v32)
    {
      v15 = v18;
      a3 = v19;
    }
  }

  if (!a3)
  {
    goto LABEL_35;
  }

LABEL_27:
  if (a4)
  {
    v20 = _xpc_alloc_typed(0x28uLL, 0x10B20406191A6C2uLL);
    *(v20 + 6) = 3;
    *(v20 + 4) = xpc_string_create_cached(a2, a4);
  }

  else
  {
    v21 = strlen(a2);
    v22 = v21 + 40;
    v23 = v21 >= 0xFFFFFFFFFFFFFFD8;
    v24 = v21 + 41;
    v25 = ((v22 == -1) << 63) >> 63 != (v22 == -1);
    if (v23 || v25)
    {
      __break(1u);
      return;
    }

    v20 = _xpc_alloc_typed(v24, 0x8B5D525EuLL);
    *(v20 + 6) = 0;
    strcpy(v20 + 32, a2);
  }

  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = xpc_retain(a3);
  v26 = *v10;
  *v20 = *v10;
  if (v26)
  {
    *(v26 + 8) = v20;
  }

  *v10 = v20;
  *(v20 + 1) = v10;
LABEL_35:
  if (v15 || !v17)
  {
    if (v15)
    {
      v28 = v17;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_44;
    }

    v27 = -1;
  }

  else
  {
    v27 = 1;
  }

  a1[6] += v27;
LABEL_44:
  if (v9)
  {
    xpc_release(v9);
  }
}

xpc_object_t xpc_dictionary_create_empty(void)
{
  result = _xpc_base_create(OS_xpc_dictionary, 64);
  *(result + 5) = 8;
  *(result + 7) &= 0xFFFFFFFC;
  return result;
}

xpc_object_t xpc_dictionary_create_reply(xpc_object_t original)
{
  if (xpc_get_type(original) != OS_xpc_dictionary)
  {
    return 0;
  }

  if ((*(original + 7) & 3) == 1 && _xpc_message_request_expects_reply(original + 11))
  {
    v2 = _xpc_base_create(OS_xpc_dictionary, 96);
    v2[1].n128_u32[1] = 8;
    v2[1].n128_u32[3] = v2[1].n128_u32[3] & 0xFFFFFFFC | 2;
    _xpc_received_message_extract_request((original + 88), v2 + 6);
    connection = _xpc_received_message_get_connection(original + 88);
    if (connection)
    {
      v2[5].n128_u64[1] = xpc_retain(connection);
    }
  }

  else
  {
    v2 = 0;
  }

  _xpc_ktrace_pid2(687865940, original, v2);
  return v2;
}

void xpc_dictionary_handoff_reply(unsigned int *a1, NSObject *a2, void *a3)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_dictionary);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_11;
  }

  if ((a1[7] & 3) != 1)
  {
    if ((a1[7] & 3) == 2)
    {
      request = a1 + 24;
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  request = _xpc_received_message_get_request(a1 + 22);
  if (!request)
  {
LABEL_10:
    v8 = _xpc_asprintf("XPC Dictionary is not a message");
LABEL_11:
    _xpc_api_misuse(v8);
  }

LABEL_6:

  _xpc_mach_message_request_handoff_reply(request, a2, a3);
}

void xpc_dictionary_handoff_reply_f(unsigned int *a1, NSObject *a2, void *a3, void (__cdecl *a4)(void *))
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_dictionary);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_11;
  }

  if ((a1[7] & 3) != 1)
  {
    if ((a1[7] & 3) == 2)
    {
      request = a1 + 24;
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  request = _xpc_received_message_get_request(a1 + 22);
  if (!request)
  {
LABEL_10:
    v10 = _xpc_asprintf("XPC Dictionary is not a message");
LABEL_11:
    _xpc_api_misuse(v10);
  }

LABEL_6:

  _xpc_mach_message_request_handoff_reply_f(request, a2, a3, a4);
}

void xpc_dictionary_send_reply(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_dictionary);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_22;
  }

  if ((*(a1 + 28) & 3) == 2)
  {
    connection = *(a1 + 88);
    request = (a1 + 96);
  }

  else
  {
    if ((*(a1 + 28) & 3) != 1)
    {
      v10 = _xpc_asprintf("Attempt to send non-message dictionary as reply");
      goto LABEL_22;
    }

    connection = _xpc_received_message_get_connection(a1 + 88);
    request = _xpc_received_message_get_request(a1 + 88);
  }

  if (!_xpc_message_request_expects_reply(request))
  {
    _xpc_dictionary_set_remote_connection_cold_3(&v11, v12);
  }

  transport = _xpc_message_request_get_transport(request);
  if (transport != 1)
  {
    if (!transport)
    {
      v5 = *MEMORY[0x1E69E9840];

      xpc_connection_send_message(connection, a1);
      return;
    }

    v10 = _xpc_asprintf("Attempt to send non-reply message as reply");
LABEL_22:
    _xpc_api_misuse(v10);
  }

  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v6 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  v7 = *(*(v6 + 200) + 16);
  v8 = *MEMORY[0x1E69E9840];

  v7(a1);
}

void xpc_dictionary_send_reply_4SWIFT(uint64_t a1, _DWORD *a2)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    if (!a1)
    {
      goto LABEL_19;
    }

    v6 = a1;
LABEL_18:
    type = xpc_get_type(v6);
    class_getName(type);
LABEL_19:
    class_getName(OS_xpc_dictionary);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_20;
  }

  if ((*(a1 + 28) & 3) != 1)
  {
    v7 = _xpc_asprintf("Attempting to merge reply with non-received dictionary");
    goto LABEL_20;
  }

  if (xpc_get_type(a2) != OS_xpc_dictionary)
  {
    if (!a2)
    {
      goto LABEL_19;
    }

    v6 = a2;
    goto LABEL_18;
  }

  if ((a2[7] & 3) == 2)
  {

    xpc_dictionary_send_reply(a2);
    return;
  }

  if (!_xpc_message_request_expects_reply((a1 + 88)))
  {
    v7 = _xpc_asprintf("Attempting to send reply dictionary without valid reply port. Did you call xpc_dictionary_create_reply() or XPCDictionary.createReply()?");
LABEL_20:
    _xpc_api_misuse(v7);
  }

  v4 = _xpc_base_create(OS_xpc_dictionary, 96);
  v4[1].n128_u32[1] = 8;
  v4[1].n128_u32[3] = v4[1].n128_u32[3] & 0xFFFFFFFC | 2;
  _xpc_dictionary_apply_node_f(a2, v4, _xpc_dictionary_copy_apply);
  _xpc_received_message_extract_request((a1 + 88), v4 + 6);
  connection = _xpc_received_message_get_connection(a1 + 88);
  v4[5].n128_u64[1] = xpc_retain(connection);
  xpc_dictionary_send_reply(v4);

  xpc_release(v4);
}

void xpc_dictionary_set_value_with_key_string_cache(_DWORD *a1, const char *a2, __objc2_class **a3, void *object)
{
  if (object && xpc_get_type(object) != OS_xpc_string_cache)
  {
    type = xpc_get_type(object);
    Name = class_getName(type);
    v10 = class_getName(OS_xpc_string_cache);
    v11 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v10);
    _xpc_api_misuse(v11);
  }

  _xpc_dictionary_set_value(a1, a2, a3, object);
}

void _xpc_dictionary_set_value(_DWORD *a1, const char *a2, __objc2_class **a3, void *a4)
{
  if (xpc_get_type(a1) != OS_xpc_dictionary)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      Name = class_getName(type);
    }

    else
    {
      Name = "null";
    }

    v10 = class_getName(OS_xpc_dictionary);
    v11 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v10);
    _xpc_api_misuse(v11);
  }

  a1[7] = a1[7] & 0x80000007 | (8 * (((a1[7] + 8) >> 3) & 0xFFFFFFF));

  _xpc_dictionary_insert(a1, a2, a3, a4);
}

uint64_t _xpc_dictionary_look_up(uint64_t a1, const char *a2, _OWORD *a3)
{
  result = _xpc_dictionary_look_up_table(a1, a2);
  if (result || (*(a1 + 28) & 7) != 5)
  {
    if (result)
    {
      if (*(result + 16) == &_xpc_dictionary_null_value)
      {
        return 0;
      }

      else
      {
        return *(result + 16);
      }
    }
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v7 = v8;
    if (a3)
    {
      v7 = a3;
    }

    v10 = 0;
    v9[0] = a2;
    v9[1] = v7;
    v9[2] = &v10;
    _xpc_dictionary_apply_wire_f(a1, 0, v9, _xpc_dictionary_look_up_wire_apply);
    if (a3 || !v10)
    {
      if (v10)
      {
        return 3735928559;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return _xpc_dictionary_unpack_value_and_vend(a1, v8);
    }
  }

  return result;
}

size_t xpc_dictionary_get_count(xpc_object_t xdict)
{
  if (xpc_get_type(xdict) == OS_xpc_error || xpc_get_type(xdict) == OS_xpc_dictionary)
  {
    return *(xdict + 6);
  }

  else
  {
    return 0;
  }
}

BOOL xpc_dictionary_apply(xpc_object_t xdict, xpc_dictionary_applier_t applier)
{
  if (xpc_get_type(xdict) != OS_xpc_error && xpc_get_type(xdict) != OS_xpc_dictionary)
  {
    type = xpc_get_type(xdict);
    Name = class_getName(type);
    v7 = class_getName(OS_xpc_dictionary);
    v8 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v7);
    _xpc_api_misuse(v8);
  }

  v11 = 1;
  v9[0] = xdict;
  v9[1] = applier;
  v9[2] = &v11;
  v10 = 0;
  LODWORD(v10) = (*(xdict + 7) >> 3) & 0xFFFFFFF;
  _xpc_dictionary_apply_node_f(xdict, v9, _xpc_dictionary_apply_apply);
  return v11;
}

uint64_t _xpc_dictionary_apply_apply(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  key = _xpc_dictionary_node_get_key(a1);
  result = (*(v4 + 16))(v4, key, *(a1 + 16));
  **(a2 + 16) = result;
  if (((*(*a2 + 28) >> 3) & 0xFFFFFFF) != *(a2 + 24))
  {
    v7 = _xpc_asprintf("Dictionary mutated during iteration");
    _xpc_api_misuse(v7);
  }

  return result;
}

void xpc_dictionary_set_BOOL(xpc_object_t xdict, const char *key, BOOL value)
{
  v5 = xpc_BOOL_create(value);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

void xpc_dictionary_set_int64(xpc_object_t xdict, const char *key, int64_t value)
{
  v5 = xpc_int64_create(value);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

void xpc_dictionary_set_uint64(xpc_object_t xdict, const char *key, uint64_t value)
{
  v5 = xpc_uint64_create(value);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

void xpc_dictionary_set_double(xpc_object_t xdict, const char *key, double value)
{
  v5 = xpc_double_create(value);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

void xpc_dictionary_set_date(xpc_object_t xdict, const char *key, int64_t value)
{
  v5 = xpc_date_create(value);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

void xpc_dictionary_set_data(xpc_object_t xdict, const char *key, const void *bytes, size_t length)
{
  v6 = xpc_data_create(bytes, length);
  _xpc_dictionary_set_value(xdict, key, v6, 0);

  xpc_release(v6);
}

void xpc_dictionary_set_string(xpc_object_t xdict, const char *key, const char *string)
{
  v5 = xpc_string_create(string);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

void xpc_dictionary_set_uuid(xpc_object_t xdict, const char *key, const unsigned __int8 *uuid)
{
  v5 = xpc_uuid_create(uuid);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

void xpc_dictionary_set_fd(xpc_object_t xdict, const char *key, int fd)
{
  v5 = xpc_fd_create(fd);
  if (v5)
  {
    v6 = v5;
    _xpc_dictionary_set_value(xdict, key, v5, 0);

    xpc_release(v6);
  }
}

void xpc_dictionary_set_connection(xpc_object_t xdict, const char *key, xpc_connection_t connection)
{
  v5 = xpc_endpoint_create(connection);
  _xpc_dictionary_set_value(xdict, key, v5, 0);

  xpc_release(v5);
}

BOOL xpc_dictionary_get_BOOL(xpc_object_t xdict, const char *key)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = _xpc_dictionary_look_up_fast(xdict, key, 0x2000, v4);
  if (v2)
  {
    if (v2 == 3735928559)
    {
      _xpc_BOOL_get_wire_value(v4, &v5);
      LOBYTE(v2) = v5;
    }

    else
    {
      LOBYTE(v2) = xpc_BOOL_get_value(v2);
    }
  }

  return v2 & 1;
}

uint64_t _xpc_dictionary_look_up_fast(void *a1, const char *a2, int a3, _OWORD *a4)
{
  if (xpc_get_type(a1) != OS_xpc_error && xpc_get_type(a1) != OS_xpc_dictionary)
  {
    if (a1)
    {
      type = xpc_get_type(a1);
      class_getName(type);
    }

    class_getName(OS_xpc_dictionary);
    v21 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_35;
  }

  result = _xpc_dictionary_look_up(a1, a2, a4);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if (result != 3735928559)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      Class = object_getClass(result);
      if (Class < OS_xpc_object || Class > OS_xpc_string_cache || (Class & 7) != 0)
      {
        extension_vtable = _xpc_get_extension_vtable(v9);
      }

      else
      {
        extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
      }

      goto LABEL_27;
    }

    v12 = 0;
    v13 = *MEMORY[0x1E69E5910];
    if ((~result & 0xC000000000000007) == 0)
    {
      v13 = 0;
    }

    v14 = v13 ^ result;
    do
    {
      if ((v14 & 7) == *(MEMORY[0x1E69E5900] + v12))
      {
        break;
      }

      ++v12;
    }

    while (v12 != 7);
    v15 = v12 | v14;
    v16 = v12 & 7;
    v17 = (v15 >> 55) + 8;
    if (v16 == 7)
    {
      LODWORD(v16) = v17;
    }

    if (v16 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
LABEL_27:
      if (*extension_vtable == a3)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    if (v16 == 13)
    {
      extension_vtable = &_OS_xpc_type_int64;
      goto LABEL_27;
    }

    v21 = _xpc_asprintf("Object is not an XPC object");
LABEL_35:
    _xpc_api_misuse(v21);
  }

  v10 = _xpc_graph_deserializer_read(a4, 4uLL);
  if (v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 122880;
  }

  if (_xpc_class_id_valid(v11) && v11 == a3)
  {
    return 3735928559;
  }

  else
  {
    return 0;
  }
}

int64_t xpc_dictionary_get_int64(xpc_object_t xdict, const char *key)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  result = _xpc_dictionary_look_up_fast(xdict, key, 12288, v3);
  if (result)
  {
    if (result == 3735928559)
    {
      _xpc_date_get_wire_value(v3, &v4);
      return v4;
    }

    else
    {
      return xpc_int64_get_value(result);
    }
  }

  return result;
}

uint64_t xpc_dictionary_get_uint64(xpc_object_t xdict, const char *key)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  result = _xpc_dictionary_look_up_fast(xdict, key, 0x4000, v3);
  if (result)
  {
    if (result == 3735928559)
    {
      _xpc_date_get_wire_value(v3, &v4);
      return v4;
    }

    else
    {
      return xpc_uint64_get_value(result);
    }
  }

  return result;
}

double xpc_dictionary_get_double(xpc_object_t xdict, const char *key)
{
  v5 = NAN;
  memset(v4, 0, sizeof(v4));
  v2 = _xpc_dictionary_look_up_fast(xdict, key, 20480, v4);
  if (!v2)
  {
    return NAN;
  }

  if (v2 != 3735928559)
  {
    return xpc_double_get_value(v2);
  }

  _xpc_double_get_wire_value(v4, &v5);
  return v5;
}

int64_t xpc_dictionary_get_date(xpc_object_t xdict, const char *key)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  result = _xpc_dictionary_look_up_fast(xdict, key, 28672, v3);
  if (result)
  {
    if (result == 3735928559)
    {
      _xpc_date_get_wire_value(v3, &v4);
      return v4;
    }

    else
    {
      return xpc_date_get_value(result);
    }
  }

  return result;
}

const void *__cdecl xpc_dictionary_get_data(xpc_object_t xdict, const char *key, size_t *length)
{
  v9 = 0;
  v10 = 0;
  v7 = 0;
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  v4 = _xpc_dictionary_look_up_fast(xdict, key, 0x8000, v6);
  if (v4)
  {
    if (v4 == 3735928559)
    {
      _xpc_data_get_wire_value(v6, &v7, &v8);
      v9 = v7;
      v10 = v8;
    }

    else if (!xpc_data_get_bytes_ptr_and_length(v4, &v9, &v10))
    {
      return 0;
    }
  }

  if (length)
  {
    *length = v10;
  }

  return v9;
}

const char *__cdecl xpc_dictionary_get_string(xpc_object_t xdict, const char *key)
{
  v4 = 0;
  v5 = 0;
  memset(v3, 0, sizeof(v3));
  result = _xpc_dictionary_look_up_fast(xdict, key, 36864, v3);
  if (result)
  {
    if (result == 3735928559)
    {
      _xpc_string_get_wire_value(v3, &v4, &v5);
      return v4;
    }

    else
    {
      return xpc_string_get_string_ptr(result);
    }
  }

  return result;
}

const uint8_t *__cdecl xpc_dictionary_get_uuid(xpc_object_t xdict, const char *key)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  result = _xpc_dictionary_look_up_fast(xdict, key, 40960, v3);
  if (result)
  {
    if (result == 3735928559)
    {
      _xpc_uuid_get_wire_value(v3, &v4);
      return v4;
    }

    else
    {
      return xpc_uuid_get_bytes(result);
    }
  }

  return result;
}

int xpc_dictionary_dup_fd(xpc_object_t xdict, const char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (!value)
  {
    return -1;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_fd)
  {
    return -1;
  }

  return xpc_fd_dup(v3);
}

xpc_connection_t xpc_dictionary_create_connection(xpc_object_t xdict, const char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_endpoint)
  {
    return 0;
  }

  return xpc_connection_create_from_endpoint(v3);
}

xpc_object_t xpc_dictionary_get_dictionary(xpc_object_t xdict, const char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_dictionary)
  {
    return 0;
  }

  return v3;
}

xpc_object_t xpc_dictionary_get_array(xpc_object_t xdict, const char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_array)
  {
    return 0;
  }

  return v3;
}

uint64_t _xpc_dictionary_equal_apply(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  key = _xpc_dictionary_node_get_key(a1);
  v6 = _xpc_dictionary_look_up(v2, key, 0);
  if (v6 && xpc_equal(v4, v6))
  {
    return 1;
  }

  result = 0;
  *v3 = 0;
  return result;
}

xpc_object_t *_xpc_dictionary_node_get_key(uint64_t a1)
{
  result = (a1 + 32);
  v3 = *(a1 + 24);
  if ((v3 - 1) < 2)
  {
    return *result;
  }

  if (v3 == 3)
  {
    return xpc_string_get_string_ptr(*result);
  }

  return result;
}

uint64_t _xpc_dictionary_desc_apply(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = *(a2 + 8);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *__str = 0u;
  v46 = 0u;
  v6 = _xpc_object_pad(__str, 0x80uLL, v4);
  v7 = &__str[v6];
  v8 = 128 - v6;
  if ((128 - v6) < 2)
  {
    v12 = 0;
  }

  else
  {
    v9 = v6;
    if (*(a2 + 16))
    {
      v10 = "%s => ";
    }

    else
    {
      v10 = "%s => ";
    }

    key = _xpc_dictionary_node_get_key(a1);
    v12 = snprintf(v7, v8, v10, key);
    if (v8 <= v12)
    {
      v12 = 127 - v9;
    }
  }

  _xpc_serializer_append(v5, __str, &v7[v12] - __str, 0);
  if (*(a2 + 16) == 1)
  {
    v13 = *(a1 + 16);
    if (!v13)
    {
      _xpc_base_desc_cold_1(&v44, v53);
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = 0;
      v15 = *MEMORY[0x1E69E5910];
      if ((~v13 & 0xC000000000000007) == 0)
      {
        v15 = 0;
      }

      v16 = v15 ^ v13;
      do
      {
        if ((v16 & 7) == *(MEMORY[0x1E69E5900] + v14))
        {
          break;
        }

        ++v14;
      }

      while (v14 != 7);
      v17 = v14 | v16;
      v18 = v14 & 7;
      v19 = (v17 >> 55) + 8;
      if (v18 == 7)
      {
        LODWORD(v18) = v19;
      }

      if (v18 == 12)
      {
        extension_vtable = &_OS_xpc_type_uint64;
      }

      else
      {
        if (v18 != 13)
        {
          goto LABEL_71;
        }

        extension_vtable = &_OS_xpc_type_int64;
      }
    }

    else
    {
      Class = object_getClass(*(a1 + 16));
      if (Class < OBJC_CLASS___OS_xpc_object || Class > OS_xpc_string_cache || (Class & 7) != 0)
      {
        extension_vtable = _xpc_get_extension_vtable(v13);
      }

      else
      {
        extension_vtable = (&_xpc_vtables + 2 * (Class - OBJC_CLASS___OS_xpc_object));
      }
    }

    if (*(extension_vtable + 7))
    {
      v22 = *(a1 + 16);
      if (!v22)
      {
        _xpc_base_desc_cold_1(&v44, v53);
      }

      if ((v22 & 0x8000000000000000) == 0)
      {
        v42 = object_getClass(v22);
        if (v42 < OBJC_CLASS___OS_xpc_object || v42 > OS_xpc_string_cache || (v42 & 7) != 0)
        {
          v29 = _xpc_get_extension_vtable(v22);
        }

        else
        {
          v29 = (&_xpc_vtables + 2 * (v42 - OBJC_CLASS___OS_xpc_object));
        }

        goto LABEL_64;
      }

      v23 = 0;
      v24 = *MEMORY[0x1E69E5910];
      if ((~v22 & 0xC000000000000007) == 0)
      {
        v24 = 0;
      }

      v25 = v24 ^ v22;
      do
      {
        if ((v25 & 7) == *(MEMORY[0x1E69E5900] + v23))
        {
          break;
        }

        ++v23;
      }

      while (v23 != 7);
      v26 = v23 | v25;
      v27 = v23 & 7;
      v28 = (v26 >> 55) + 8;
      if (v27 == 7)
      {
        LODWORD(v27) = v28;
      }

      if (v27 == 12)
      {
        v29 = &_OS_xpc_type_uint64;
        goto LABEL_64;
      }

      if (v27 == 13)
      {
        v29 = &_OS_xpc_type_int64;
LABEL_64:
        (*(v29 + 7))(v22, v5);
        goto LABEL_58;
      }

LABEL_71:
      v43 = _xpc_asprintf("Object is not an XPC object");
      _xpc_api_misuse(v43);
    }
  }

  v30 = *(a1 + 16);
  if (!v30)
  {
    _xpc_base_desc_cold_1(&v44, v53);
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
    v31 = 0;
    v32 = *MEMORY[0x1E69E5910];
    if ((~v30 & 0xC000000000000007) == 0)
    {
      v32 = 0;
    }

    v33 = v32 ^ v30;
    do
    {
      if ((v33 & 7) == *(MEMORY[0x1E69E5900] + v31))
      {
        break;
      }

      ++v31;
    }

    while (v31 != 7);
    v34 = v31 | v33;
    v35 = v31 & 7;
    v36 = (v34 >> 55) + 8;
    if (v35 == 7)
    {
      LODWORD(v35) = v36;
    }

    if (v35 == 12)
    {
      v37 = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v35 != 13)
      {
        goto LABEL_71;
      }

      v37 = &_OS_xpc_type_int64;
    }
  }

  else
  {
    v38 = object_getClass(v30);
    if (v38 < OBJC_CLASS___OS_xpc_object || v38 > OS_xpc_string_cache || (v38 & 7) != 0)
    {
      v37 = _xpc_get_extension_vtable(v30);
    }

    else
    {
      v37 = (&_xpc_vtables + 2 * (v38 - OBJC_CLASS___OS_xpc_object));
    }
  }

  (*(v37 + 6))(v30, v5);
LABEL_58:
  v39 = *(v5 + 56) + 1;
  --*(v5 + 48);
  *(v5 + 56) = v39;
  _xpc_serializer_append(v5, "\n", 1uLL, 0);
  v40 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t _xpc_dictionary_get_importance_voucher(uint64_t a1)
{
  if ((*(a1 + 28) & 3) == 1)
  {
    request = _xpc_received_message_get_request(a1 + 88);
    if (request)
    {

      return _xpc_message_request_get_voucher(request);
    }
  }

  else if ((*(a1 + 28) & 3) == 2)
  {
    request = a1 + 96;

    return _xpc_message_request_get_voucher(request);
  }

  return 0;
}

uint64_t _xpc_dictionary_serialize_apply(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  key = _xpc_dictionary_node_get_key(a1);
  v5 = strlen(key);
  _xpc_serializer_append(a2, key, v5 + 1, 1);
  v6 = *(a1 + 16);
  if (!v6)
  {
    _xpc_base_desc_cold_1(&v20, v21);
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E69E5910];
    if ((~v6 & 0xC000000000000007) == 0)
    {
      v8 = 0;
    }

    v9 = v8 ^ v6;
    do
    {
      if ((v9 & 7) == *(MEMORY[0x1E69E5900] + v7))
      {
        break;
      }

      ++v7;
    }

    while (v7 != 7);
    v10 = v7 | v9;
    v11 = v7 & 7;
    v12 = (v10 >> 55) + 8;
    if (v11 == 7)
    {
      LODWORD(v11) = v12;
    }

    if (v11 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v11 != 13)
      {
        v19 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v19);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(v6);
    if (Class >= OBJC_CLASS___OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OBJC_CLASS___OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(v6);
    }
  }

  (*(extension_vtable + 9))(v6, a2);
  v17 = *MEMORY[0x1E69E9840];
  return 1;
}

void _xpc_dictionary_node_free(uint64_t *a1)
{
  v2 = *(a1 + 6);
  if (v2 != 2)
  {
    if (v2 == 3)
    {
      xpc_release(a1[4]);
    }

    v4 = *a1;
    v5 = a1[1];
    if (*a1)
    {
      *(v4 + 8) = v5;
    }

    *v5 = v4;
    *a1 = -1;
    a1[1] = -1;
    xpc_release(a1[2]);

    free(a1);
  }
}

unsigned int *_xpc_dictionary_apply_wire_f(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t (*a4)(const char *, _OWORD *, uint64_t))
{
  v6 = a2;
  memset(v13, 0, sizeof(v13));
  if (!a2)
  {
    v6 = v13;
    _xpc_graph_deserializer_init_clone(v13, a1 + 152);
  }

  if (_xpc_wire_length(v6) == -1)
  {
    return a4(0, 0, a3);
  }

  result = _xpc_graph_deserializer_read(v6, 4uLL);
  if (!result)
  {
    return a4(0, 0, a3);
  }

  v8 = *result;
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      string = _xpc_graph_deserializer_read_string(v6);
      result = a4(string, v6, a3);
      v12 = v9-- != 0;
    }

    while (result && v12);
  }

  return result;
}

uint64_t _xpc_dictionary_deserialize_apply(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  voucher = _xpc_message_request_get_voucher(a2);
  if (a1)
  {
    v8 = voucher;
    result = _xpc_dictionary_unpack_value(a2);
    if (result)
    {
      v10 = result;
      _xpc_dictionary_insert(v5, a1, result, v8);
      xpc_release(v10);
      return 1;
    }
  }

  else
  {
    result = 0;
  }

  *v6 = 0;
  return result;
}

xpc_object_t _xpc_dictionary_unpack_value(uint64_t a1)
{
  v2 = _xpc_graph_deserializer_read(a1, 4uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  depth = _xpc_graph_deserializer_get_depth(a1);
  if (!_xpc_class_id_valid(v3))
  {
    if (_xpc_class_id_from_wire_valid(v3))
    {
      v7 = xpc_null_create();
      if (_xpc_graph_deserializer_skip_value(a1, v3))
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if ((v3 == 57344 || v3 == 0x10000 || v3 == 61440) && !_xpc_graph_deserializer_enter_container(a1))
  {
    v6 = 0;
  }

  else
  {
    v5 = _xpc_deserialize_from_wire_id(v3);
    v6 = v5(a1);
  }

  _xpc_graph_deserializer_restore_depth(a1, depth);
  return v6;
}

uint64_t _xpc_dictionary_copy_apply(uint64_t a1, _DWORD *a2)
{
  v4 = xpc_copy(*(a1 + 16));
  key = _xpc_dictionary_node_get_key(a1);
  _xpc_dictionary_insert(a2, key, v4, 0);
  xpc_release(v4);
  return 1;
}

const char *_xpc_dictionary_apply_node_f_wire_apply(const char *result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *a3;
    v6 = a3[1];
    v7 = a3[2];
    if (_xpc_dictionary_look_up_table(*a3, result))
    {

      return _skip_id_and_value(a2);
    }

    else
    {
      result = _xpc_dictionary_unpack_value_and_vend(v5, a2);
      if (result)
      {
        v8[4] = v4;
        v8[3] = 2;
        v8[0] = 0;
        v8[1] = 0;
        v8[2] = result;
        return v6(v8, v7);
      }
    }
  }

  return result;
}

void *_xpc_dictionary_look_up_table(uint64_t a1, const char *a2)
{
  v3 = (a1 + 8 * _hash_bucket(a2) + 32);
  do
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    key = _xpc_dictionary_node_get_key(v3);
  }

  while (strcmp(a2, key));
  return v3;
}

xpc_object_t _xpc_dictionary_unpack_value_and_vend(OSQueueHead *a1, uint64_t a2)
{
  v3 = _xpc_dictionary_unpack_value(a2);
  if (v3)
  {
    v4 = _xpc_alloc_typed(0x10uLL, 0x80040803F642BuLL);
    v4[1] = v3;
    OSAtomicEnqueue(a1 + 15, v4, 0);
  }

  return v3;
}

BOOL _skip_id_and_value(uint64_t a1)
{
  v2 = _xpc_graph_deserializer_read(a1, 4uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*v2 == 122880 || !_xpc_class_id_from_wire_valid(*v2))
  {
    return 0;
  }

  return _xpc_graph_deserializer_skip_value(a1, v3);
}

unint64_t _hash_bucket(const char *a1)
{
  if (!strcmp(a1, "XPCErrorDescription"))
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 5;
  }

  v3 = (a1 + 1);
  v4 = 5381;
  do
  {
    v4 = 33 * v4 + v2;
    v5 = *v3++;
    v2 = v5;
  }

  while (v5);
  return v4 % 7;
}

BOOL _xpc_dictionary_look_up_wire_apply(char *__s2, uint64_t a2, uint64_t a3)
{
  if (!__s2)
  {
    return 0;
  }

  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  if (!strcmp(*a3, __s2))
  {
    _xpc_graph_deserializer_init_clone(v4, a2);
    *v5 = 1;
    return 0;
  }

  return _skip_id_and_value(a2);
}

__objc2_class **_vproc_set_global_on_demand(int a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", 7uLL);
  xpc_dictionary_set_uint64(v2, "handle", 0);
  if (a1)
  {
    v3 = 806;
  }

  else
  {
    v3 = 807;
  }

  object = 0;
  if (_xpc_domain_routine(v3, v2, &object))
  {
    v4 = &_xpc_BOOL_false;
  }

  else
  {
    xpc_release(object);
    v4 = 0;
  }

  xpc_release(v2);
  return v4;
}

void _vprocmgr_log_drain()
{
  while (1)
  {
    sleep(0xFFFFFFFF);
  }
}

__objc2_class **vproc_swap_integer(uint64_t a1, unsigned int a2, int64_t *a3, int64_t *a4)
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v7 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v7 = _os_alloc_once();
  }

  if (a2 != 2)
  {
    if (a2 == 5)
    {
      v8 = 0;
      *a4 = *(v7 + 3);
      return v8;
    }

    request = _vproc_create_request();
    v11 = request;
    if (a3)
    {
      xpc_dictionary_set_uint64(request, "ingsk", a2);
      xpc_dictionary_set_BOOL(v11, "set", 1);
      xpc_dictionary_set_int64(v11, "in", *a3);
    }

    if (a4)
    {
      xpc_dictionary_set_uint64(v11, "outgsk", a2);
      xpc_dictionary_set_BOOL(v11, "get", 1);
      xdict = 0;
      if (!_xpc_bootstrap_routine(301, v11, &xdict))
      {
        *a4 = xpc_dictionary_get_int64(xdict, "out");
LABEL_16:
        xpc_release(xdict);
        v8 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      xdict = 0;
      if (!_xpc_bootstrap_routine(301, v11, &xdict))
      {
        goto LABEL_16;
      }
    }

    v8 = vproc_swap_integer;
LABEL_17:
    xpc_release(v11);
    return v8;
  }

  if (!a3)
  {
    return &_xpc_BOOL_false;
  }

  v9 = *a3 != 0;

  return _vproc_set_global_on_demand(v9);
}

xpc_object_t _vproc_create_request()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "type", 7uLL);
  xpc_dictionary_set_uint64(v0, "handle", 0);
  xpc_dictionary_set_BOOL(v0, "self", 1);
  return v0;
}

uint64_t (*vproc_swap_complex(uint64_t a1, unsigned int a2, void *a3, xpc_object_t *a4))()
{
  request = _vproc_create_request();
  v8 = request;
  if (a3)
  {
    xpc_dictionary_set_uint64(request, "ingsk", a2);
    xpc_dictionary_set_BOOL(v8, "set", 1);
    xpc_dictionary_set_value(v8, "in", a3);
  }

  if (a4)
  {
    xpc_dictionary_set_uint64(v8, "outgsk", a2);
    xpc_dictionary_set_BOOL(v8, "get", 1);
  }

  xdict = 0;
  v9 = _xpc_bootstrap_routine(301, v8, &xdict);
  if (v9 == 135)
  {
    goto LABEL_14;
  }

  if (v9 == 45)
  {
    syslog(3, "Swap operation not supported: %d", a2);
LABEL_14:
    v13 = vproc_swap_complex;
    goto LABEL_18;
  }

  if (v9)
  {
    _os_assumes_log();
    goto LABEL_14;
  }

  if (a4)
  {
    value = xpc_dictionary_get_value(xdict, "out");
    if (value && ((v11 = value, type = launch_data_get_type(value), type == LAUNCH_DATA_STRING) || type == LAUNCH_DATA_DICTIONARY))
    {
      v13 = 0;
      *a4 = xpc_retain(v11);
    }

    else
    {
      v13 = vproc_swap_complex;
    }
  }

  else
  {
    v13 = 0;
  }

  xpc_release(xdict);
LABEL_18:
  xpc_release(v8);
  return v13;
}

uint64_t (*vproc_swap_string(char *a1, unsigned int a2, char *string, char **a4))()
{
  if (string)
  {
    a1 = xpc_string_create(string);
    string = a1;
  }

  object = 0;
  if (a4)
  {
    result = vproc_swap_complex(a1, a2, string, &object);
    if (!result)
    {
      if (xpc_get_type(object) == OS_xpc_string)
      {
        string_ptr = xpc_string_get_string_ptr(object);
        *a4 = _xpc_strdup(string_ptr);
      }

      xpc_release(object);
      return 0;
    }
  }

  else
  {

    return vproc_swap_complex(a1, a2, string, 0);
  }

  return result;
}

__objc2_class **_vproc_send_signal_by_label(const char *a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "type", 7uLL);
  xpc_dictionary_set_uint64(v4, "handle", 0);
  xpc_dictionary_set_int64(v4, "signal", a2);
  xpc_dictionary_set_string(v4, "name", a1);
  object = 0;
  v5 = _xpc_domain_routine(812, v4, &object);
  if (v5)
  {
    v6 = v5;
    v7 = xpc_strerror(v5);
    syslog(3, "Could not signal service: %d: %s", v6, v7);
    v8 = &_xpc_BOOL_false;
  }

  else
  {
    xpc_release(object);
    v8 = 0;
  }

  xpc_release(v4);
  return v8;
}

void _vproc_transaction_try_exit()
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

  os_unfair_lock_unlock(v0 + 44);
}

__objc2_class **_vproc_get_last_exit_status(_DWORD *a1)
{
  v3 = 0;
  result = vproc_swap_integer(a1, 1u, 0, &v3);
  if (!result)
  {
    *a1 = v3;
  }

  return result;
}

int64_t bootstrap_register2(int a1, const char *a2, mach_port_name_t name, uint64_t a4)
{
  if (_xpc_mach_port_make_send(name) && _xpc_mach_port_retain_send(name))
  {
    return 17;
  }

  request = _bootstrap_create_request();
  xpc_dictionary_set_string(request, "name", a2);
  xpc_dictionary_set_mach_send(request, "port", name);
  xpc_dictionary_set_uint64(request, "flags", a4);
  object = 0;
  v7 = _xpc_bootstrap_routine(204, request, &object);
  if (object)
  {
    xpc_release(object);
  }

  if (_xpc_mach_port_release(name))
  {
    _os_assumes_log();
  }

  xpc_release(request);
  return v7;
}

xpc_object_t _bootstrap_create_request()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "type", 7uLL);
  xpc_dictionary_set_uint64(v0, "handle", 0);
  return v0;
}

uint64_t bootstrap_look_up2(uint64_t a1, char *a2, mach_port_name_t *a3, int a4, uint64_t a5)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  result = bootstrap_look_up3(a1, a2, a3, a4, v7, a5);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bootstrap_look_up3(uint64_t a1, char *a2, mach_port_name_t *a3, int a4, const unsigned __int8 *a5, uint64_t a6)
{
  request = _bootstrap_create_request();
  xpc_dictionary_set_string(request, "name", a2);
  xpc_dictionary_set_int64(request, "targetpid", a4);
  xpc_dictionary_set_uuid(request, "instance", a5);
  xpc_dictionary_set_uint64(request, "flags", a6);
  xdict = 0;
  v12 = _xpc_bootstrap_routine_authenticate(207, request, &xdict);
  if (xdict)
  {
    value = xpc_dictionary_get_value(xdict, "port");
    if (value)
    {
      v14 = value;
      if (xpc_get_type(value) == OS_xpc_mach_send)
      {
        right = xpc_mach_send_get_right(v14);
        v16 = _xpc_mach_port_retain_send(right);
        if (v16 != 19 && v16)
        {
          _os_assumes_log();
          v12 = 17;
        }

        else
        {
          *a3 = right;
        }
      }
    }

    xpc_release(xdict);
  }

  xpc_release(request);
  if (v12 == 141)
  {
    v17 = 268435459;
  }

  else
  {
    v17 = v12;
  }

  if (v17 == 124)
  {
    v18 = 1102;
  }

  else
  {
    v18 = v17;
  }

  if (!v18)
  {
    _launch_report_service_lookup(a2);
  }

  return v18;
}

int64_t bootstrap_check_in2(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0uLL;
  result = bootstrap_check_in3(a1, a2, a3, &v6, a4);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

int64_t bootstrap_check_in3(uint64_t a1, const char *a2, _DWORD *a3, _OWORD *a4, uint64_t a5)
{
  request = _bootstrap_create_request();
  xpc_dictionary_set_string(request, "name", a2);
  xpc_dictionary_set_uint64(request, "flags", a5);
  xdict = 0;
  v10 = _xpc_bootstrap_routine_check_in(206, request, &xdict);
  if (xdict)
  {
    *a3 = xpc_dictionary_extract_mach_recv(xdict, "port");
    uuid = xpc_dictionary_get_uuid(xdict, "instance");
    if (uuid)
    {
      *a4 = *uuid;
    }

    xpc_release(xdict);
  }

  xpc_release(request);
  return v10;
}

uint64_t bootstrap_look_up_per_user(uint64_t a1, const char *a2, unsigned int a3, _DWORD *a4)
{
  if ((xpc_user_sessions_enabled() & 1) == 0)
  {
    v11 = _xpc_asprintf("Attempt to do a per-user lookup, but user sessions are not enabled.");
    _xpc_api_misuse(v11);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (!a2)
  {
    return 45;
  }

  v8 = v7;
  xpc_dictionary_set_uint64(v7, "type", 2uLL);
  xpc_dictionary_set_uint64(v8, "handle", a3);
  xpc_dictionary_set_string(v8, "name", a2);
  xpc_dictionary_set_uint64(v8, "flags", 0x200uLL);
  object = 0;
  v9 = _xpc_bootstrap_routine(207, v8, &object);
  if (!v9)
  {
    *a4 = _xpc_dictionary_extract_mach_send(object, "port");
    xpc_release(object);
  }

  xpc_release(v8);
  return v9;
}

void bootstrap_lookup_children()
{
  snprintf(__str, 0xA0uLL, "Unimplemented routine: %s", "bootstrap_lookup_children");
  qword_1EAF1E800 = __str;
  __break(1u);
}

int64_t bootstrap_get_root(uint64_t a1, _DWORD *a2)
{
  request = _bootstrap_create_request();
  object = 0;
  v4 = _xpc_bootstrap_routine(211, request, &object);
  if (object)
  {
    *a2 = _xpc_dictionary_extract_mach_send(object, "rootport");
    xpc_release(object);
  }

  xpc_release(request);
  return v4;
}

kern_return_t bootstrap_create_server(mach_port_t bp, cmd_t server_cmd, uid_t server_uid, BOOLean_t on_demand, mach_port_t *server_port)
{
  request = _bootstrap_create_request();
  xpc_dictionary_set_string(request, "cmd", server_cmd);
  xpc_dictionary_set_uint64(request, "uid", server_uid);
  xpc_dictionary_set_BOOL(request, "ondemand", on_demand != 0);
  object = 0;
  v10 = _xpc_bootstrap_routine(200, request, &object);
  if (object)
  {
    *server_port = _xpc_dictionary_extract_mach_send(object, "serverport");
    xpc_release(object);
  }

  xpc_release(request);
  return v10;
}

kern_return_t bootstrap_subset(mach_port_t bp, mach_port_t requestor_port, mach_port_t *subset_port)
{
  request = _bootstrap_create_request();
  if (_xpc_mach_port_make_send(requestor_port))
  {
    return 17;
  }

  xpc_dictionary_set_mach_send(request, "reqport", requestor_port);
  object = 0;
  v6 = _xpc_bootstrap_routine(201, request, &object);
  if (object)
  {
    *subset_port = _xpc_dictionary_extract_mach_send(object, "subsetport");
    xpc_release(object);
  }

  if (_xpc_mach_port_release(requestor_port))
  {
    _os_assumes_log();
  }

  xpc_release(request);
  return v6;
}

kern_return_t bootstrap_parent(mach_port_t bp, mach_port_t *parent_port)
{
  request = _bootstrap_create_request();
  xpc_dictionary_set_mach_send(request, "port", bp);
  object = 0;
  v5 = _xpc_bootstrap_routine(203, request, &object);
  if (object)
  {
    *parent_port = _xpc_dictionary_extract_mach_send(object, "parent");
    xpc_release(object);
  }

  xpc_release(request);
  return v5;
}

kern_return_t bootstrap_create_service(mach_port_t bp, name_t service_name, mach_port_t *sp)
{
  request = _bootstrap_create_request();
  xpc_dictionary_set_string(request, "name", service_name);
  object = 0;
  v6 = _xpc_bootstrap_routine(205, request, &object);
  if (object)
  {
    *sp = _xpc_dictionary_extract_mach_send(object, "port");
    xpc_release(object);
  }

  xpc_release(request);
  return v6;
}

const char *__cdecl bootstrap_strerror(kern_return_t r)
{
  if (r <= 1101)
  {
    switch(r)
    {
      case 0:
        return "Success";
      case 1100:
        return "Permission denied";
      case 1101:
        return "Service name already exists";
    }

    return mach_error_string(r);
  }

  if (r > 1103)
  {
    if (r == 1104)
    {
      return "Too many lookups were requested in one request";
    }

    if (r == 1105)
    {
      return "Out of memory";
    }

    return mach_error_string(r);
  }

  if (r == 1102)
  {
    return "Unknown service name";
  }

  else
  {
    return "Service is already active";
  }
}

uint64_t _xpc_double_desc(uint64_t a1, uint64_t a2)
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
  v3 = snprintf(__str, 0x80uLL, "%f", *(a1 + 24));
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

uint64_t _xpc_double_debug_desc(double *a1, uint64_t a2)
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
  v3 = snprintf(__str, 0x80uLL, "<%s: %p>: %f", "double", a1, a1[3]);
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

uint64_t _xpc_double_serialize(uint64_t a1, uint64_t a2)
{
  __src = 20480;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v5 = *(a1 + 24);
  return _xpc_serializer_append(a2, &v5, 8uLL, 1);
}

uint64_t _xpc_double_deserialize(uint64_t a1)
{
  result = _xpc_graph_deserializer_read(a1, 8uLL);
  if (result)
  {
    v2 = *result;
    result = _xpc_base_create(OS_xpc_double, 8);
    *(result + 24) = v2;
    *(result + 16) |= 1u;
    *(result + 20) = 8;
  }

  return result;
}

BOOL _xpc_double_get_wire_value(uint64_t a1, void *a2)
{
  v3 = _xpc_graph_deserializer_read(a1, 8uLL);
  if (v3)
  {
    *a2 = *v3;
  }

  return v3 != 0;
}

xpc_object_t xpc_double_create(double value)
{
  result = _xpc_base_create(OS_xpc_double, 8);
  *(result + 5) = 8;
  *(result + 3) = value;
  return result;
}

double xpc_double_get_value(xpc_object_t xdouble)
{
  type = xpc_get_type(xdouble);
  result = 0.0;
  if (type == OS_xpc_double)
  {
    return *(xdouble + 3);
  }

  return result;
}

uint64_t _xpc_int64_desc(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  value = xpc_int64_get_value(a1);
  v4 = snprintf(__str, 0x80uLL, "%lli", value);
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  result = _xpc_serializer_append(a2, __str, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_int64_debug_desc(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  value = xpc_int64_get_value(a1);
  v5 = snprintf(__str, 0x80uLL, "<%s: %p>: %lli", "int64", a1, value);
  if (v5 >= 0x7F)
  {
    v6 = 127;
  }

  else
  {
    v6 = v5;
  }

  result = _xpc_serializer_append(a2, __str, (v6 + 1), 0);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_int64_serialize(void *a1, uint64_t a2)
{
  __src = 12288;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  value = xpc_int64_get_value(a1);
  return _xpc_serializer_append(a2, &value, 8uLL, 1);
}

unint64_t _xpc_int64_deserialize(uint64_t a1)
{
  result = _xpc_graph_deserializer_read(a1, 8uLL);
  if (result)
  {
    v2 = *result;
    result = _xpc_int64_create_tagged(*result);
    if (!result)
    {
      result = _xpc_base_create(OS_xpc_int64, 8);
      *(result + 24) = v2;
      *(result + 16) |= 1u;
      *(result + 20) = 8;
    }
  }

  return result;
}

xpc_object_t xpc_int64_create(int64_t value)
{
  result = _xpc_int64_create_tagged(value);
  if (!result)
  {
    result = _xpc_base_create(OS_xpc_int64, 8);
    *(result + 5) = 8;
    *(result + 3) = value;
  }

  return result;
}

unint64_t _xpc_int64_create_tagged(uint64_t a1)
{
  if ((a1 + 0x7FFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFELL || *MEMORY[0x1E69E5908] == 0)
  {
    return 0;
  }

  result = (8 * (a1 & 0xFFFFFFFFFFFFFLL)) | 0x8280000000000007;
  v3 = *MEMORY[0x1E69E5910] ^ result;
  if ((~v3 & 0xC000000000000007) != 0)
  {
    return v3 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v3 & 7));
  }

  return result;
}

int64_t xpc_int64_get_value(xpc_object_t xint)
{
  if ((xint & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~xint & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ xint;
  v5 = v4 & 7;
  do
  {
    if (v5 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  if ((~v2 & 7) == 0 && ((v2 | v4) & 0x7F80000000000000) == 0x280000000000000)
  {
    v6 = (v4 << 9) >> 12;
    v7 = (2 * v4) >> 4;
    if (v5 == 7)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
LABEL_12:
    if (xpc_get_type(xint) == OS_xpc_int64)
    {
      return *(xint + 3);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _xpc_null_desc(int a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  strcpy(__src, "NULL");
  result = _xpc_serializer_append(a2, __src, 5uLL, 0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_null_debug_desc(const void *a1, uint64_t a2)
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
  v3 = snprintf(__str, 0x80uLL, "<%s: %p>: null-object", "null", a1);
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

uint64_t _xpc_string_debug_desc(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16) & 8) != 0)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  v5 = snprintf(__str, 0x80uLL, "<%s: %p> { string cache = %p, length = %zu, contents = ", "string", a1, v4, *(a1 + 24));
  if (v5 >= 0x7F)
  {
    v6 = 127;
  }

  else
  {
    v6 = v5;
  }

  _xpc_serializer_append(a2, __str, v6, 0);
  _xpc_serializer_append(a2, *(a1 + 32), *(a1 + 24), 0);
  result = _xpc_serializer_append(a2, " }", 4uLL, 0);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_string_debug(uint64_t a1, char *__str, size_t __size)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  return snprintf(__str, __size, ", str = %s, len = %zu, string cache = %p", *(a1 + 32), *(a1 + 24), v3);
}

uint64_t _xpc_string_serialize(uint64_t a1, uint64_t a2)
{
  __src = 36864;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v5 = *(a1 + 24) + 1;
  _xpc_serializer_append(a2, &v5, 4uLL, 1);
  return _xpc_serializer_append(a2, *(a1 + 32), *(a1 + 24) + 1, 1);
}

uint64_t _xpc_string_deserialize(uint64_t a1)
{
  *v6 = 0;
  size = 0;
  if (!_xpc_string_get_wire_value(a1, v6, &size))
  {
    return 0;
  }

  value_string_cache = _xpc_graph_deserializer_get_value_string_cache(a1);
  if (!value_string_cache)
  {
    v4 = size;
    v5 = _xpc_memdup(*v6, size);
    result = _xpc_string_create_base(v5, v4 - 1, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = _xpc_string_cache_get_string(value_string_cache, *v6);
  if (result)
  {
LABEL_7:
    *(result + 16) |= 1u;
  }

  return result;
}

void _xpc_string_dispose(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      _xpc_string_cache_try_remove(*(a1 + 40), a1);
      xpc_release(v2);
    }
  }

  v3 = *(a1 + 32);

  free(v3);
}

const char *_xpc_string_set_value(uint64_t a1, const char *a2)
{
  if ((*(a1 + 16) & 8) != 0 && *(a1 + 40))
  {
    _xpc_string_set_value_cold_1();
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  result = _xpc_try_strdup(a2);
  if (result)
  {
    v5 = result;
    result = strlen(result);
    *(a1 + 24) = result;
    *(a1 + 32) = v5;
    v6 = (result & 0xFFFFFFFC) + 8;
    if (result > v6)
    {
      v7 = _xpc_asprintf("Unreasonably large string");
      _xpc_api_misuse(v7);
    }

    *(a1 + 20) = v6;
  }

  return result;
}

uint64_t _xpc_string_get_wire_value(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  result = _xpc_graph_deserializer_read(a1, 4uLL);
  if (result)
  {
    v7 = *result;
    if (v7)
    {
      result = _xpc_graph_deserializer_read(a1, v7);
      if (!result)
      {
        return result;
      }

      v8 = result;
      if (memchr(result, 0, v7) == (result + (v7 - 1)))
      {
        *a2 = v8;
        *a3 = v7;
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t _xpc_cached_string_create(const char *a1, void *a2)
{
  v3 = _xpc_try_strdup(a1);
  base = v3;
  if (v3)
  {
    v5 = strlen(v3);
    base = _xpc_string_create_base(base, v5, 8);
    *(base + 40) = xpc_retain(a2);
    *(base + 16) |= 8u;
  }

  return base;
}

uint64_t xpc_string_create_no_copy(const char *a1)
{
  v2 = strlen(a1);

  return _xpc_string_create_base(a1, v2, 0);
}

xpc_object_t xpc_string_create_with_format(const char *fmt, ...)
{
  va_start(va, fmt);
  v3 = 0;
  v1 = vasprintf(&v3, fmt, va);
  return _xpc_string_create_base(v3, v1, 0);
}

xpc_object_t xpc_string_create_with_format_and_arguments(const char *fmt, va_list ap)
{
  v4 = 0;
  v2 = vasprintf(&v4, fmt, ap);
  return _xpc_string_create_base(v4, v2, 0);
}

size_t xpc_string_get_length(xpc_object_t xstring)
{
  if (xpc_get_type(xstring) == OS_xpc_string)
  {
    return *(xstring + 3);
  }

  else
  {
    return 0;
  }
}

const char *__cdecl xpc_string_get_string_ptr(xpc_object_t xstring)
{
  if (xpc_get_type(xstring) != OS_xpc_string)
  {
    return 0;
  }

  result = *(xstring + 4);
  if (result[*(xstring + 3)])
  {
    _os_assumes_log();
    return 0;
  }

  return result;
}

uint64_t _xpc_string_create_base(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = _xpc_base_create(OS_xpc_string, a3 + 16);
  v6 = (a2 & 0xFFFFFFFC) + 8;
  if (v6 < a2)
  {
    v7 = _xpc_asprintf("Unreasonably large string");
    _xpc_api_misuse(v7);
  }

  *(result + 20) = v6;
  *(result + 24) = a2;
  *(result + 32) = a1;
  return result;
}

xpc_object_t xpc_coalition_copy_info(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v3, "type", 1uLL);
    xpc_dictionary_set_uint64(v3, "handle", 0);
    xpc_dictionary_set_uint64(v3, "cid", v2);
    v5 = 0;
    LODWORD(v2) = _xpc_domain_routine(829, v3, &v5);
    xpc_release(v3);
    if (v2)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {

    return xpc_null_create();
  }
}

uint64_t xpc_coalition_history_pipe_async(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", 1uLL);
  xpc_dictionary_set_uint64(v2, "handle", 0);
  v3 = _xpc_event_routine_async(830, v2, a1);
  xpc_release(v2);
  return v3;
}

uint64_t _xpc_uint64_desc(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  value = xpc_uint64_get_value(a1);
  v4 = snprintf(__str, 0x80uLL, "%llu", value);
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  result = _xpc_serializer_append(a2, __str, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_uint64_debug_desc(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  value = xpc_uint64_get_value(a1);
  v5 = snprintf(__str, 0x80uLL, "<%s: %p>: %llu", "uint64", a1, value);
  if (v5 >= 0x7F)
  {
    v6 = 127;
  }

  else
  {
    v6 = v5;
  }

  result = _xpc_serializer_append(a2, __str, (v6 + 1), 0);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_uint64_serialize(void *a1, uint64_t a2)
{
  __src = 0x4000;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  value = xpc_uint64_get_value(a1);
  return _xpc_serializer_append(a2, &value, 8uLL, 1);
}

unint64_t _xpc_uint64_deserialize(uint64_t a1)
{
  result = _xpc_graph_deserializer_read(a1, 8uLL);
  if (result)
  {
    v2 = *result;
    result = _xpc_uint64_create_tagged(*result);
    if (!result)
    {
      result = _xpc_base_create(OS_xpc_uint64, 8);
      *(result + 24) = v2;
      *(result + 16) |= 1u;
      *(result + 20) = 8;
    }
  }

  return result;
}

xpc_object_t xpc_uint64_create(uint64_t value)
{
  result = _xpc_uint64_create_tagged(value);
  if (!result)
  {
    result = _xpc_base_create(OS_xpc_uint64, 8);
    *(result + 5) = 8;
    *(result + 3) = value;
  }

  return result;
}

unint64_t _xpc_uint64_create_tagged(unint64_t a1)
{
  result = 0;
  if (!(a1 >> 52) && *MEMORY[0x1E69E5908])
  {
    result = (8 * a1) | 0x8200000000000007;
    v3 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v3 & 0xC000000000000007) != 0)
    {
      return v3 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v3 & 7));
    }
  }

  return result;
}

uint64_t xpc_uint64_get_value(xpc_object_t xuint)
{
  if ((xuint & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~xuint & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ xuint;
  v5 = v4 & 7;
  do
  {
    if (v5 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  if ((~v2 & 7) == 0 && ((v2 | v4) & 0x7F80000000000000) == 0x200000000000000)
  {
    v6 = v5 == 7;
    v7 = 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = 0xFFFFFFFFFFFFFLL;
    }

    return v7 & (v4 >> 3);
  }

  else
  {
LABEL_12:
    if (xpc_get_type(xuint) == OS_xpc_uint64)
    {
      return *(xuint + 3);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _xpc_string_cache_desc(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  entries_sorted = _xpc_string_cache_get_entries_sorted(a1, &v15);
  v5 = v15;
  v6 = _xpc_asprintf("<%s: %p> { name = %s, mutgen = %llu, count = %zu, peak_count = %zu, ", "string cache", a1, (a1 + 72), *(a1 + 32), v15, *(a1 + 40));
  v7 = strlen(v6);
  _xpc_serializer_append(a2, v6, v7, 0);
  free(v6);
  if (entries_sorted)
  {
    _xpc_serializer_append(a2, "\n", 1uLL, 0);
    if (v5)
    {
      v8 = entries_sorted;
      v9 = v5;
      do
      {
        v10 = *v8++;
        string_ptr = xpc_string_get_string_ptr(*v10);
        v12 = _xpc_asprintf("\t%s => %zu\n", string_ptr, *(v10 + 8));
        v13 = strlen(v12);
        _xpc_serializer_append(a2, v12, v13, 0);
        free(v12);
        --v9;
      }

      while (v9);
    }

    _xpc_string_cache_free_entries(entries_sorted, v5);
  }

  return _xpc_serializer_append(a2, "}", 2uLL, 0);
}

uint64_t _xpc_string_cache_debug(char *a1, char *a2, size_t a3)
{
  v5 = a1 + 72;
  count = xpc_string_cache_get_count(a1);
  return snprintf(a2, a3, ", name = %s, count = %zu", v5, count);
}

uint64_t _xpc_string_cache_dispose(uint64_t a1)
{
  if (os_map_str_count())
  {
    v2 = _xpc_asprintf("Disposing non-empty string cache");
    _xpc_api_misuse(v2);
  }

  return MEMORY[0x1EEE717A8](a1 + 48);
}

void *_xpc_string_cache_get_string(void *a1, const char *a2)
{
  if (xpc_get_type(a1) == OS_xpc_string_cache)
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = os_map_str_find();
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(v5);
      if (WeakRetained)
      {
LABEL_10:
        os_unfair_recursive_lock_unlock();
        return WeakRetained;
      }

      _xpc_string_cache_remove(a1);
    }

    WeakRetained = _xpc_cached_string_create(a2, a1);
    if (WeakRetained)
    {
      v6 = _xpc_alloc_typed(8uLL, 0x2004093837F09uLL);
      objc_storeWeak(v6, WeakRetained);
      xpc_string_get_string_ptr(WeakRetained);
      os_map_str_insert();
      v7 = os_map_str_count();
      v8 = a1[5];
      if (v8 <= v7)
      {
        v8 = v7;
      }

      ++a1[4];
      a1[5] = v8;
    }

    goto LABEL_10;
  }

  return 0;
}

unint64_t _xpc_string_cache_remove(uint64_t a1)
{
  v2 = os_map_str_delete();
  objc_destroyWeak(v2);
  free(v2);
  result = os_map_str_count();
  v4 = *(a1 + 40);
  if (v4 <= result)
  {
    v4 = result;
  }

  ++*(a1 + 32);
  *(a1 + 40) = v4;
  return result;
}

uint64_t _xpc_string_cache_try_remove(uint64_t a1, void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  xpc_string_get_string_ptr(a2);
  v4 = os_map_str_find();
  if (v4 && *v4 == a2)
  {
    _xpc_string_cache_remove(a1);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t xpc_string_cache_create(const char *a1)
{
  v2 = strlen(a1);
  v3 = v2 + 49;
  if (v2 >= 0xFFFFFFFFFFFFFFD0 || ((v2 == -49) << 63) >> 63 != (v2 == -49))
  {
    v6 = _xpc_asprintf("Unreasonably large name", v3);
    _xpc_api_misuse(v6);
  }

  v4 = _xpc_base_create(OS_xpc_string_cache, v3);
  os_map_str_init();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  strcpy((v4 + 72), a1);
  return v4;
}

uint64_t xpc_string_cache_get_count(void *a1)
{
  if (xpc_get_type(a1) != OS_xpc_string_cache)
  {
    return 0;
  }

  os_unfair_recursive_lock_lock_with_options();
  v2 = os_map_str_count();
  os_unfair_recursive_lock_unlock();
  return v2;
}

char *xpc_string_cache_get_name(char *a1)
{
  if (xpc_get_type(a1) == OS_xpc_string_cache)
  {
    return a1 + 72;
  }

  else
  {
    return 0;
  }
}

void xpc_string_cache_for_each(void *a1, uint64_t a2)
{
  if (xpc_get_type(a1) == OS_xpc_string_cache)
  {
    v13 = 0;
    entries_sorted = _xpc_string_cache_get_entries_sorted(a1, &v13);
    if (entries_sorted)
    {
      v5 = entries_sorted;
      v6 = v13;
      if (v13)
      {
        v7 = v13 - 1;
        v8 = entries_sorted;
        do
        {
          v9 = *v8++;
          v10 = (*(a2 + 16))(a2, *v9, v9[1]);
          v12 = v7-- != 0;
        }

        while (v10 && v12);
      }

      _xpc_string_cache_free_entries(v5, v6);
    }
  }
}

unint64_t _xpc_string_cache_get_entries_sorted(uint64_t a1, size_t *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  result = os_map_str_count();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (result)
  {
    if (result >> 61)
    {
      __break(1u);
      return result;
    }

    v4 = _xpc_alloc_typed(8 * result, 0xF3848ABCuLL);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = ___xpc_string_cache_get_entries_block_invoke;
    v5[3] = &unk_1E74AAC78;
    v5[4] = &v6;
    v5[5] = v4;
    v10 = MEMORY[0x1E69E9820];
    v11 = 0x40000000;
    v12 = ___xpc_string_cache_for_each_block_invoke;
    v13 = &unk_1E74AACA0;
    v14 = v5;
    os_map_str_foreach();
  }

  else
  {
    v4 = 0;
  }

  os_unfair_recursive_lock_unlock();
  *a2 = v7[3];
  _Block_object_dispose(&v6, 8);
  if (v4)
  {
    qsort_b(v4, *a2, 8uLL, &__block_literal_global_3);
  }

  return v4;
}

void _xpc_string_cache_free_entries(xpc_object_t **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      xpc_release(**v4);
      v5 = *v4++;
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t ___xpc_string_cache_get_entries_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = _xpc_alloc_typed(0x10uLL, 0x1080040FC6463CFuLL);
  *v6 = xpc_retain(a2);
  v6[1] = a3;
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 + 1;
  *(v7 + 8 * v9) = v6;
  return 1;
}

uint64_t ___xpc_string_cache_for_each_block_invoke(uint64_t a1, int a2, id *location)
{
  WeakRetained = objc_loadWeakRetained(location);
  if (!WeakRetained)
  {
    return 1;
  }

  v5 = WeakRetained;
  v6 = WeakRetained[3] - 1;
  v7 = (*(*(a1 + 32) + 16))();
  xpc_release(v5);
  return v7;
}

xpc_object_t launch_copy_endpoints_properties_for_pid(int a1)
{
  v1 = _xpc_connection_copy_attrs(0, a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  value = xpc_dictionary_get_value(v1, "XPCServiceEndpoints");
  if (value)
  {
    v4 = xpc_copy(value);
  }

  else
  {
    v4 = 0;
  }

  xpc_release(v2);
  return v4;
}

void _xpc_objc_main(void *a1)
{
  autorelease_pool = a1;
  if (xpc_get_type(a1) == OS_xpc_dictionary)
  {
    autorelease_pool = xpc_retain(autorelease_pool);
    string = xpc_dictionary_get_string(autorelease_pool, "RunLoopType");
    if (string)
    {
      v1 = string;
    }

    else
    {
      v1 = "dispatch_main";
    }

    if (!strcmp(v1, "_UIApplicationMain"))
    {
      _xpc_objc_uimain(autorelease_pool);
    }
  }

  else
  {
    qword_1EAF1E800 = "Configuration error: Invalid XPCService dictionary.";
    __break(1u);
  }

  if (!strcmp(v1, "_NSApplicationMain"))
  {
    xpc_release(autorelease_pool);
    qword_1EAF1E800 = "Configuration error: Service specifies NSApplicationMain() for run loop but AppKit is not available on this platform.";
    __break(1u);
  }

  if (!strcmp(v1, "NSRunLoop"))
  {
    xpc_release(autorelease_pool);
    autorelease_pool = _get_autorelease_pool();
    Class = objc_getClass("NSRunLoop");
    if (Class)
    {
      v5 = Class;

      [-[objc_class currentRunLoop](v5 "currentRunLoop")];
      qword_1EAF1E800 = "Bug in libxpc: _xpc_objc_main() is not supposed to return";
      __break(1u);
      goto LABEL_16;
    }

    qword_1EAF1E800 = "Configuration error: Service specifies NSRunLoop for run loop but does not have class.";
    __break(1u);
  }

  if (!strcmp(v1, "dispatch_main"))
  {
    xpc_release(autorelease_pool);
    dispatch_main();
  }

LABEL_16:
  qword_1EAF1E800 = "Configuration error: Service specifies unknown RunLoopType.";
  __break(1u);
}

void _xpc_objc_uimain(void *a1)
{
  autorelease_pool = _get_autorelease_pool();
  nsstring_for_key = _create_nsstring_for_key(a1, "_UIApplicationClass");
  v4 = _create_nsstring_for_key(a1, "_UIApplicationDelegateClass");
  xpc_release(a1);
  [autorelease_pool drain];
  v5 = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 1);
  if (!v5)
  {
    qword_1EAF1E800 = "Configuration error: UIKit does not exist.";
    __break(1u);
  }

  v6 = dlsym(v5, "UIApplicationMain");
  if (!v6)
  {
    qword_1EAF1E800 = "Configuration error: Service specifies UIApplicationMain() for run loop but does not have symbol.";
    __break(1u);
  }

  v7 = v6;
  v8 = *_NSGetArgc();
  v9 = _NSGetArgv();
  v7(v8, *v9, nsstring_for_key, v4);

  qword_1EAF1E800 = "Bug in libxpc: _xpc_objc_uimain() is not supposed to return";
  __break(1u);
}

uint64_t _get_autorelease_pool()
{
  if (!objc_getClass("NSAutoreleasePool"))
  {
    _get_autorelease_pool_cold_1();
  }

  return MEMORY[0x1EEE66A08]();
}

const char *_create_nsstring_for_key(void *a1, const char *a2)
{
  Class = objc_getClass("NSString");
  if (!Class)
  {
    _create_nsstring_for_key_cold_1();
  }

  v5 = Class;
  result = xpc_dictionary_get_string(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = [v5 alloc];

    return [v8 initWithUTF8String:v7];
  }

  return result;
}

uint64_t _xpc_uuid_desc(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse_upper((a1 + 24), out);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v3 = snprintf(__str, 0x80uLL, "%s", out);
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

uint64_t _xpc_uuid_debug_desc(const unsigned __int8 *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse_upper(a1 + 24, out);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  v4 = snprintf(__str, 0x80uLL, "<%s: %p> %s", "uuid", a1, out);
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  result = _xpc_serializer_append(a2, __str, (v5 + 1), 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

size_t _xpc_uuid_debug(uint64_t a1, char *a2, size_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse_upper((a1 + 24), out);
  result = 0;
  if (a3 >= 2)
  {
    LODWORD(result) = snprintf(a2, a3, ", uuid = %s", out);
    if (result >= a3)
    {
      result = a3 - 1;
    }

    else
    {
      result = result;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_uuid_serialize(uint64_t a1, uint64_t a2)
{
  __src = 40960;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  return _xpc_serializer_append(a2, (a1 + 24), 0x10uLL, 1);
}

uint64_t _xpc_uuid_deserialize(uint64_t a1)
{
  v1 = _xpc_graph_deserializer_read(a1, 0x10uLL);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _xpc_base_create(OS_xpc_uuid, 16);
  *(v3 + 20) = 16;
  uuid_copy((v3 + 24), v2);
  *(v3 + 16) |= 1u;
  return v3;
}

BOOL _xpc_uuid_get_wire_value(uint64_t a1, uint64_t *a2)
{
  v3 = _xpc_graph_deserializer_read(a1, 0x10uLL);
  if (v3)
  {
    *a2 = v3;
  }

  return v3 != 0;
}

xpc_object_t xpc_uuid_create(const unsigned __int8 *uuid)
{
  v2 = _xpc_base_create(OS_xpc_uuid, 16);
  *(v2 + 20) = 16;
  uuid_copy((v2 + 24), uuid);
  return v2;
}

const uint8_t *__cdecl xpc_uuid_get_bytes(xpc_object_t xuuid)
{
  if (xpc_get_type(xuuid) == OS_xpc_uuid)
  {
    return xuuid + 24;
  }

  else
  {
    return 0;
  }
}

uint64_t _xpc_fd_copy(uint64_t a1)
{
  if (_xpc_mach_port_retain_send(*(a1 + 24)))
  {
    _os_assumes_log();
    return 0;
  }

  else
  {
    v2 = *(a1 + 24);
    result = _xpc_base_create(OS_xpc_fd, 8);
    *(result + 16) |= 2u;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t _xpc_fd_desc(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = xpc_fd_dup(a1);
  bzero(__str, 0x480uLL);
  v5 = snprintf(__str, 0x480uLL, "<%s: %p> { type = ", "fd", a1);
  v6 = v5;
  memset(&v40.st_blksize, 0, 32);
  if (v5 >= 0x47F)
  {
    v7 = 1151;
  }

  else
  {
    v7 = v5;
  }

  v8 = &__str[v7];
  v9 = 1152 - v7;
  memset(&v40, 0, 112);
  v10 = fstat(v4, &v40);
  if (v10)
  {
    if (v10 == -1)
    {
      _xpc_fd_desc_cold_1();
    }

    st_mode = v40.st_mode;
    if ((v40.st_mode & 0xF000) == 0x4000)
    {
      if (v6 > 0x47E)
      {
        v13 = 0;
      }

      else
      {
        v12 = snprintf(&__str[v7], v9, "directory");
        v13 = 1151 - v7;
        if (v9 > v12)
        {
          v13 = v12;
        }

        st_mode = v40.st_mode;
      }

      v16 = &v8[v13];
      v15 = v9 - v13;
    }

    else
    {
      v15 = 1152 - v7;
      v16 = &__str[v7];
    }

    if ((st_mode & 0xF000) == 0x8000)
    {
      if (v16 == v8)
      {
        v18 = v8;
      }

      else
      {
        if (v15 < 2)
        {
          v17 = 0;
        }

        else
        {
          v17 = snprintf(v16, v15, "/");
          if (v15 <= v17)
          {
            v17 = v15 - 1;
          }
        }

        v18 = &v16[v17];
        v15 -= v17;
      }

      if (v15 < 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = snprintf(v18, v15, "file");
        if (v15 <= v19)
        {
          v19 = v15 - 1;
        }
      }

      v16 = &v18[v19];
      v15 -= v19;
      st_mode = v40.st_mode;
    }

    if ((st_mode & 0xF000) == 0x2000)
    {
      if (v16 == v8)
      {
        v21 = v8;
      }

      else
      {
        if (v15 < 2)
        {
          v20 = 0;
        }

        else
        {
          v20 = snprintf(v16, v15, "/");
          if (v15 <= v20)
          {
            v20 = v15 - 1;
          }
        }

        v21 = &v16[v20];
        v15 -= v20;
      }

      if (v15 < 2)
      {
        v22 = 0;
      }

      else
      {
        v22 = snprintf(v21, v15, "character device");
        if (v15 <= v22)
        {
          v22 = v15 - 1;
        }
      }

      v16 = &v21[v22];
      v15 -= v22;
      st_mode = v40.st_mode;
    }

    if ((st_mode & 0xF000) == 0x6000)
    {
      if (v16 == v8)
      {
        v24 = v8;
      }

      else
      {
        if (v15 < 2)
        {
          v23 = 0;
        }

        else
        {
          v23 = snprintf(v16, v15, "/");
          if (v15 <= v23)
          {
            v23 = v15 - 1;
          }
        }

        v24 = &v16[v23];
        v15 -= v23;
      }

      if (v15 < 2)
      {
        v25 = 0;
      }

      else
      {
        v25 = snprintf(v24, v15, "block device");
        if (v15 <= v25)
        {
          v25 = v15 - 1;
        }
      }

      v16 = &v24[v25];
      v15 -= v25;
      st_mode = v40.st_mode;
    }

    if ((st_mode & 0xF000) == 0xC000)
    {
      if (v16 != v8)
      {
        if (v15 < 2)
        {
          v26 = 0;
        }

        else
        {
          v26 = snprintf(v16, v15, "/");
          if (v15 <= v26)
          {
            v26 = v15 - 1;
          }
        }

        v16 += v26;
        v15 -= v26;
      }

      if (v15 < 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = snprintf(v16, v15, "socket");
        if (v15 <= v27)
        {
          v27 = v15 - 1;
        }
      }

      v16 += v27;
      v15 -= v27;
      st_mode = v40.st_mode;
    }

    if ((st_mode & 0xF000) == 0x1000)
    {
      if (v16 != v8)
      {
        if (v15 < 2)
        {
          v28 = 0;
        }

        else
        {
          v28 = snprintf(v16, v15, "/");
          if (v15 <= v28)
          {
            v28 = v15 - 1;
          }
        }

        v16 += v28;
        v15 -= v28;
      }

      if (v15 < 2)
      {
        v29 = 0;
      }

      else
      {
        v29 = snprintf(v16, v15, "fifo");
        if (v15 <= v29)
        {
          v29 = v15 - 1;
        }
      }

      v16 += v29;
    }
  }

  else
  {
    if (v6 > 0x47E)
    {
      v14 = 0;
    }

    else
    {
      v14 = snprintf(&__str[v7], v9, "(invalid descriptor)");
      if (v9 <= v14)
      {
        v14 = 1151 - v7;
      }
    }

    v16 = &v8[v14];
  }

  v30 = v9 + v8 - v16;
  if (v30 < 2)
  {
    v31 = 0;
  }

  else
  {
    v31 = snprintf(v16, v30, ", path = ");
    if (v30 <= v31)
    {
      v31 = v30 - 1;
    }
  }

  v32 = &v16[v31];
  v33 = v30 - v31;
  if (fcntl(v4, 50, &v16[v31]) == -1)
  {
    if (v33 < 2)
    {
      v34 = 0;
    }

    else
    {
      LODWORD(v34) = snprintf(v32, v33, "(invalid path)");
      if (v33 <= v34)
      {
        v34 = v33 - 1;
      }

      else
      {
        v34 = v34;
      }
    }
  }

  else
  {
    v34 = strlen(v32);
  }

  v35 = &v32[v34];
  v36 = v33 - v34;
  if (v36 < 2)
  {
    v37 = 0;
  }

  else
  {
    v37 = snprintf(v35, v36, " }");
    if (v36 <= v37)
    {
      v37 = v36 - 1;
    }
  }

  _xpc_serializer_append(a2, __str, &v35[v37] - __str + 1, 0);
  result = close(v4);
  if (result)
  {
    result = _os_assumes_log();
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_fd_deserialize(uint64_t *a1)
{
  v4 = 0;
  if (!_xpc_graph_deserializer_read_port(a1, 17, &v4))
  {
    return 0;
  }

  v1 = v4;
  result = _xpc_base_create(OS_xpc_fd, 8);
  v3 = *(result + 16);
  *(result + 24) = v1;
  *(result + 16) = v3 | 3;
  return result;
}

uint64_t _xpc_fd_dispose(uint64_t a1)
{
  result = _xpc_mach_port_release(*(a1 + 24));
  if (result)
  {
    return _os_assumes_log();
  }

  return result;
}

uint64_t _xpc_fd_get_port(unsigned int *a1)
{
  if (xpc_get_type(a1) != OS_xpc_fd)
  {
    type = xpc_get_type(a1);
    Name = class_getName(type);
    v5 = class_getName(OS_xpc_fd);
    v6 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s", Name, v5);
    _xpc_api_misuse(v6);
  }

  return a1[6];
}

xpc_object_t xpc_fd_create(int fd)
{
  if (fd != -1 && _xpc_fileport_makeport())
  {
    _os_assumes_log();
    return 0;
  }

  else
  {
    result = _xpc_base_create(OS_xpc_fd, 8);
    *(result + 4) |= 2u;
    *(result + 6) = 0;
  }

  return result;
}

int xpc_fd_dup(xpc_object_t xfd)
{
  if (xpc_get_type(xfd) != OS_xpc_fd)
  {
    return -1;
  }

  v3 = *(xfd + 6);

  return _xpc_fileport_makefd();
}

uint64_t _xpc_shmem_copy(uint64_t a1)
{
  if (_xpc_mach_port_retain_send(*(a1 + 24)))
  {
    _os_assumes_log();
    return 0;
  }

  else
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 32);
    result = _xpc_base_create(OS_xpc_shmem, 24);
    *(result + 16) |= 2u;
    *(result + 20) = 8;
    *(result + 24) = v2;
    *(result + 32) = v3;
  }

  return result;
}

uint64_t _xpc_shmem_desc(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__str = 0u;
  v13 = 0u;
  v4 = a1[4];
  v5 = (v4 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v6 = getpagesize();
  v7 = "s";
  if (v5 / v6 == 1)
  {
    v7 = "";
  }

  v8 = snprintf(__str, 0x80uLL, "<%s: %p>: %llu bytes (%llu page%s)", "shmem", a1, v4, v5 / v6, v7);
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

uint64_t _xpc_shmem_debug(uint64_t a1, char *a2, size_t a3)
{
  v5 = *(a1 + 32);
  v6 = (v5 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v7 = *(a1 + 24);
  v8 = getpagesize();
  return snprintf(a2, a3, ", port = 0x%x, len = %llu (%llu pages)", v7, v5, v6 / v8);
}

uint64_t _xpc_shmem_serialize(uint64_t a1, void *a2)
{
  __src = 49152;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v5 = *(a1 + 32);
  return _xpc_serializer_append_port(a2, &v5, 8uLL, a1, *(a1 + 24), 19);
}

uint64_t _xpc_shmem_deserialize(uint64_t *a1)
{
  name = 0;
  v2 = _xpc_graph_deserializer_read(a1, 8uLL);
  if (_xpc_graph_deserializer_read_port(a1, 17, &name))
  {
    if (v2)
    {
      v3 = *v2;
      v4 = name;
      result = _xpc_base_create(OS_xpc_shmem, 24);
      v6 = *(result + 16);
      *(result + 20) = 8;
      *(result + 24) = v4;
      *(result + 32) = v3;
      *(result + 16) = v6 | 3;
      return result;
    }

    if (_xpc_mach_port_release(name))
    {
      _os_assumes_log();
    }
  }

  return 0;
}

uint64_t _xpc_shmem_dispose(uint64_t a1)
{
  result = _xpc_mach_port_release(*(a1 + 24));
  if (result)
  {
    return _os_assumes_log();
  }

  return result;
}

uint64_t _xpc_shmem_create_with_prot(const void *a1, memory_object_size_t a2, int a3)
{
  if (malloc_size(a1))
  {
    _xpc_shmem_create_with_prot_cold_1();
  }

  object_handle = 0;
  size = a2;
  v6 = MEMORY[0x1E69E9A60];
  memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], &size, a1, a3 | 0x400040, &object_handle, 0);
  if (memory_entry_64)
  {
    if (memory_entry_64 != 18)
    {
      goto LABEL_10;
    }

    if (mach_make_memory_entry_64(*v6, &size, a1, a3 & 0xFFBFFFBF | 0x40, &object_handle, 0))
    {
      return 0;
    }
  }

  v8 = size;
  if (size < a2)
  {
    syslog(3, "Shared memory length exceeded size supported by a single memory entry (actual/supported): %llu/%llu", a2, size);
    if (!_xpc_mach_port_release(object_handle))
    {
      return 0;
    }

LABEL_10:
    _os_assumes_log();
    return 0;
  }

  v10 = object_handle;
  result = _xpc_base_create(OS_xpc_shmem, 24);
  *(result + 16) |= 2u;
  *(result + 20) = 8;
  *(result + 24) = v10;
  *(result + 32) = v8;
  *(result + 40) = a3;
  return result;
}

uint64_t xpc_shmem_get_length(void *a1)
{
  if (xpc_get_type(a1) == OS_xpc_shmem)
  {
    return a1[4];
  }

  else
  {
    return 0;
  }
}

uint64_t _xpc_shmem_get_mach_port(unsigned int *a1)
{
  if (xpc_get_type(a1) == OS_xpc_shmem)
  {
    return a1[6];
  }

  else
  {
    return 0;
  }
}

size_t xpc_shmem_map(xpc_object_t xshmem, void **region)
{
  if (xpc_get_type(xshmem) == OS_xpc_shmem && !_xpc_vm_map_memory_entry(*(xshmem + 6), *(xshmem + 4), region, 1))
  {
    return *(xshmem + 4);
  }

  else
  {
    return 0;
  }
}

void _xpc_init_pid_domain_process_initial_images(uint64_t a1, void *a2, void *a3)
{
  empty = xpc_dictionary_create_empty();
  v7 = xpc_dictionary_create_empty();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___xpc_init_pid_domain_process_initial_images_block_invoke;
  v8[3] = &__block_descriptor_tmp_5;
  v8[4] = v7;
  v8[5] = empty;
  xpc_dictionary_apply(a2, v8);
  xpc_dictionary_set_value(a3, "paths", empty);
  xpc_array_set_value(*(a1 + 112), 0xFFFFFFFFFFFFFFFFLL, v7);
  xpc_release(empty);
  xpc_release(v7);
}