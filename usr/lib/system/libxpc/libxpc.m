xpc_object_t xpc_string_create(const char *string)
{
  result = _xpc_try_strdup(string);
  if (result)
  {
    v2 = result;
    v3 = strlen(result);

    return _xpc_string_create_base(v2, v3, 0);
  }

  return result;
}

xpc_connection_t xpc_connection_create(const char *name, dispatch_queue_t targetq)
{
  v3 = _xpc_connection_create(name == 0, name);
  v4 = v3;
  if (name)
  {
    *&v5 = -1;
    *(&v5 + 1) = -1;
    *(v3 + 120) = v5;
    *(v3 + 104) = v5;
    *(v3 + 124) = 0;
    *(v3 + 88) = 0;
  }

  else
  {
    *(v3 + 248) |= 8u;
    self_audit_token = _xpc_get_self_audit_token();
    v7 = self_audit_token[1];
    *(v4 + 104) = *self_audit_token;
    *(v4 + 120) = v7;
    *(v4 + 88) = 0;
    v8 = _xpc_mach_port_allocate(0x203Bu, 0x10u, v4);
    *(v4 + 68) = v8;
    *(v4 + 76) = v8;
  }

  return v4;
}

xpc_object_t xpc_retain(xpc_object_t object)
{
  v1 = object;
  if ((object & 0x8000000000000000) == 0)
  {
    Class = object_getClass(object);
    if (Class < OS_xpc_object || Class > OS_xpc_session)
    {

      return v1;
    }

    else
    {

      return MEMORY[0x1EEE6FDB0](v1);
    }
  }

  return object;
}

size_t xpc_hash(xpc_object_t object)
{
  if ((object & 0x8000000000000000) != 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~object & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ object;
    do
    {
      if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != 7);
    v5 = v2 | v4;
    v6 = v2 & 7;
    v7 = (v5 >> 55) + 8;
    if (v6 == 7)
    {
      LODWORD(v6) = v7;
    }

    if (v6 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v6 != 13)
      {
        v14 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v14);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(object);
    if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(object);
    }
  }

  v12 = *(extension_vtable + 4);

  return v12(object);
}

void xpc_activity_set_criteria(xpc_activity_t activity, xpc_object_t criteria)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_activity_log_pred != -1)
  {
    _xpc_activity_dispose_cold_1();
  }

  v4 = _activity_log__log;
  v5 = &_xpc_activity_check_in;
  if (os_log_type_enabled(_activity_log__log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(activity + 3);
    v7 = "dict";
    *buf = 136446722;
    if (criteria == &_xpc_activity_check_in)
    {
      v7 = "check-in";
    }

    v12 = v6;
    v13 = 2048;
    v14 = activity;
    v15 = 2082;
    v16 = v7;
    _os_log_impl(&dword_197263000, v4, OS_LOG_TYPE_DEFAULT, "xpc_activity_set_criteria: %{public}s (%p), %{public}s", buf, 0x20u);
  }

  if (criteria != &_xpc_activity_check_in)
  {
    v5 = xpc_copy(criteria);
    _xpc_activity_normalize_critiera(v5);
  }

  xpc_retain(activity);
  v8 = *(activity + 5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __xpc_activity_set_criteria_block_invoke;
  v10[3] = &__block_descriptor_tmp_74_0;
  v10[4] = activity;
  v10[5] = v5;
  dispatch_async(v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void xpc_release(xpc_object_t object)
{
  if ((object & 0x8000000000000000) == 0)
  {
    Class = object_getClass(object);
    if (Class < OS_xpc_object || Class > OS_xpc_session)
    {
    }

    else if (Class == OS_xpc_session || Class == OS_xpc_listener || Class == OS_xpc_event_publisher || Class == OS_xpc_connection || Class == OS_xpc_service)
    {

      MEMORY[0x1EEE6FD98](object, v3);
    }

    else
    {

      MEMORY[0x1EEE6FDA8](object);
    }
  }
}

uint64_t _xpc_mach_message_request_init(uint64_t result, int a2, uint64_t a3, int a4, int a5)
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a5)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *result = a2;
  *(result + 4) = 0;
  *(result + 8) = a3;
  *(result + 16) = v6 | v5;
  return result;
}

uint64_t _xpc_message_request_extract_voucher(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return v1;
}

uint64_t _xpc_message_request_set_transaction(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = *(result + 16) & 0xFD | v2;
  return result;
}

void _xpc_mach_message_request_handoff_reply(unsigned int *a1, dispatch_queue_t queue, dispatch_block_t block)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    _xpc_mach_message_request_handoff_reply_cold_1(&v6, v7);
  }

  if ((a1[4] & 4) != 0 && (v3 = *a1, (v3 - 1) <= 0xFFFFFFFD))
  {
    v4 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE6FFF8](queue, v3, block);
  }

  else
  {
    v5 = *MEMORY[0x1E69E9840];

    dispatch_async(queue, block);
  }
}

void _xpc_mach_message_request_handoff_reply_f(unsigned int *a1, dispatch_queue_t queue, void *context, dispatch_function_t work)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    _xpc_mach_message_request_handoff_reply_cold_1(&v7, v8);
  }

  if ((a1[4] & 4) != 0 && (v4 = *a1, (v4 - 1) <= 0xFFFFFFFD))
  {
    v5 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE70000](queue, v4, context, work);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    dispatch_async_f(queue, context, work);
  }
}

uint64_t _xpc_mach_message_request_extract_reply_port(unsigned int *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    _xpc_mach_message_request_handoff_reply_cold_1(&v4, v5);
  }

  v1 = *a1;
  *a1 = 0;
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t _xpc_remote_message_request_get_reply_msg_id(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((a1[2] & 1) == 0)
  {
    _xpc_remote_message_request_get_reply_msg_id_cold_1(&v3, v4);
  }

  result = *a1;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_remote_message_request_set_reply_msg_id(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((*(result + 16) & 1) == 0)
  {
    _xpc_remote_message_request_get_reply_msg_id_cold_1(&v3, v4);
  }

  *result = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_message_request_destroy(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    if (a1[2])
    {
      if (*(MEMORY[0x1E69E99F0] + 16) == -1)
      {
        v5 = *(MEMORY[0x1E69E99F0] + 24);
      }

      else
      {
        v5 = _os_alloc_once();
      }

      v6 = *(v5 + 200);
      if (v6)
      {
        (*(v6 + 8))(a2, *a1);
      }
    }

    else if (_xpc_mach_port_release(v3))
    {
      _os_assumes_log();
    }
  }

  v7 = a1[1];
  if (v7)
  {
    os_release(v7);
  }

  if ((a1[2] & 2) != 0)
  {

    _xpc_transaction_end();
  }
}

_OWORD *_xpc_mach_received_message_init(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *(a2 + 20) == 0x40000000;
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v7;
  *(a1 + 4) = 0;
  *(a1 + 8) = a4;
  *(a1 + 16) = v9 | (4 * v8);
  result = _xpc_mach_msg_get_audit_token(a2);
  v11 = result[1];
  *(a1 + 32) = *result;
  *(a1 + 48) = v11;
  *(a1 + 24) = 0;
  if (a5)
  {

    return _xpc_received_message_set_connection(a1, a5);
  }

  return result;
}

uint64_t _xpc_received_message_set_connection(uint64_t a1, xpc_object_t object)
{
  v8 = *MEMORY[0x1E69E9840];
  if (xpc_get_type(object) == OS_xpc_connection)
  {
    result = _xpc_retain_with_resurrect(object);
  }

  else
  {
    result = xpc_retain(object);
  }

  if (*(a1 + 24))
  {
    _xpc_received_message_set_connection_cold_1(&v6, v7);
  }

  *(a1 + 24) = object;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 _xpc_received_message_move(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  *(a2 + 3) = 0;
  result = a2[2];
  v4 = a2[3];
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void _xpc_received_message_destroy(uint64_t *a1)
{
  _xpc_message_request_destroy(a1, a1[3]);
  v2 = a1[3];
  if (v2)
  {

    xpc_release(v2);
  }
}

__n128 _xpc_received_message_extract_request(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  return result;
}

__n128 _xpc_received_message_get_audit_token(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t xpc_receive_mach_msg_validate_hdr(_DWORD *a1)
{
  HIDWORD(v2) = a1[5] - 0x10000000;
  LODWORD(v2) = HIDWORD(v2);
  v1 = v2 >> 28;
  if (v1 < 2)
  {
    return !a1[2] || (*a1 & 0x1F) == 18;
  }

  if (v1 == 2)
  {
    if (!a1[2])
    {
      return 1;
    }
  }

  else if (v1 == 3)
  {
    return !a1[2] || (*a1 & 0x1F) == 18;
  }

  return 0;
}

uint64_t xpc_receive_mach_msg(NSObject *a1, int a2, void *a3, void *a4, uint64_t *a5)
{
  msg = dispatch_mach_msg_get_msg();
  if (xpc_receive_mach_msg_validate_hdr(msg))
  {
    _xpc_ktrace_pid1(687865876, msg);
    memset(v17, 0, sizeof(v17));
    _xpc_mach_received_message_init(v17, msg, a2, a3, a4);
    v11 = _xpc_payload_create_from_mach_msg(a1, 1);
    if (v11)
    {
      v12 = v11;
      if (a4)
      {
        distorter = _xpc_connection_get_distorter(a4);
        _xpc_payload_distort(v12, distorter);
        platform = _xpc_connection_get_platform(a4);
      }

      else
      {
        platform = 0;
      }

      v15 = xpc_graph_unpack(v17, v12, platform);
      os_release(v12);
      if (v15)
      {
        _xpc_ktrace_pid2(687865880, msg, v15);
        result = 0;
        *a5 = v15;
        return result;
      }
    }

    _xpc_received_message_destroy(v17);
    _xpc_ktrace_pid2(687865880, msg, 0);
  }

  else
  {
    if (a2)
    {
      _xpc_transaction_end();
    }

    if (a3)
    {
      os_release(a3);
    }

    mach_msg_destroy(msg);
  }

  return 0xFFFFFFFFLL;
}

uint64_t xpc_receive_remote_msg(const void *a1, size_t a2, int a3, unint64_t a4, xpc_object_t object, uint64_t a6)
{
  v16 = 0;
  v17 = 0;
  if (a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  v15 = a4;
  LOBYTE(v16) = v9;
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v18 = v10;
  v19 = v10;
  DWORD1(v19) = 0;
  if (object)
  {
    _xpc_received_message_set_connection(&v15, object);
  }

  v11 = _xpc_payload_create_from_data(a1, a2);
  if (!v11 || (v12 = v11, v13 = xpc_graph_unpack_with_ool(&v15, v11, 0, 0, a6), os_release(v12), !v13))
  {
    _xpc_received_message_destroy(&v15);
    return 0;
  }

  return v13;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{
  v2 = *v0;

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL _xpc_graph_unpack_header(uint64_t a1, int a2)
{
  v2 = *(a1 + 56);
  v3 = v2 - 4;
  if (v2 >= 4 && ((v4 = *(a1 + 48), *(a1 + 48) = v4 + 1, *(a1 + 56) = v3, v4) ? (v5 = v3 >= 4) : (v5 = 0), v5 && (v6 = *v4, *(a1 + 48) = v4 + 2, *(a1 + 56) = v2 - 8, v6 == dword_1972A7C50[a2])))
  {
    return v4[1] == 5;
  }

  else
  {
    return 0;
  }
}

uint64_t _xpc_graph_deserializer_read(uint64_t a1, unint64_t a2)
{
  if (((a2 >= 0xFFFFFFFFFFFFFFFDLL) << 63) >> 63 != a2 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v2 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v3 = *(a1 + 56);
  v4 = v3 - v2;
  if (v3 < v2)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = v5 + v2;
  *(a1 + 56) = v4;
  return v5;
}

uint64_t xpc_graph_unpack(__int128 *a1, uint64_t a2, unsigned int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    xpc_graph_unpack_cold_1(&v5, v6);
  }

  v3 = *MEMORY[0x1E69E9840];

  return _xpc_graph_unpack_impl(a1, a2, a3, 0, 0, 0);
}

uint64_t _xpc_graph_unpack_impl(__int128 *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3 >= 4)
  {
    _xpc_graph_unpack_impl_cold_1(&v21, &v22);
  }

  v30 = 0;
  v21 = 0;
  contiguous_bytes = xpc_payload_get_contiguous_bytes(a2, &v21);
  v22 = a2;
  v23 = 0;
  v24 = 0;
  v25 = contiguous_bytes;
  v26 = v21;
  v27 = contiguous_bytes;
  v28 = v21;
  v29 = 0;
  LODWORD(v30) = 0;
  if (a4)
  {
    _xpc_graph_deserializer_set_key_string_cache(&v22, a4);
  }

  if (a5)
  {
    _xpc_graph_deserializer_set_value_string_cache(&v22, a5);
  }

  if (a6)
  {
    _xpc_graph_deserializer_set_ool_callback(&v22, a6);
  }

  v13 = v28;
  if (v28 < 4)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  result = 0;
  if ((v28 & 0xFFFFFFFFFFFFFFFCLL) != 4)
  {
    v16 = v27;
    if (v27)
    {
      v17 = *v27;
      v18 = v28 - 8;
      v27 += 2;
      v28 -= 8;
      if (v17 == dword_1972A7C50[a3] && v16[1] == 5)
      {
        if (a1)
        {
          result = _xpc_dictionary_create_from_received_message(a1, &v22);
          goto LABEL_10;
        }

        if (v18 >= 4)
        {
          v27 = v16 + 3;
          v28 = v13 - 12;
          v19 = v16[2];
          if (_xpc_class_id_valid(v19))
          {
            v20 = _xpc_deserialize_from_wire_id(v19);
            result = v20(&v22);
            goto LABEL_10;
          }
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_graph_deserializer_init(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  result = xpc_payload_get_contiguous_bytes(a2, &v6);
  v5 = v6;
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = result;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

__n128 _xpc_graph_deserializer_init_clone(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a2 + 72))
  {
    _xpc_graph_deserializer_init_clone_cold_1(&v8, v9);
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  result = *(a2 + 8);
  *a1 = 0;
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 _xpc_graph_deserializer_move(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t _xpc_graph_deserializer_read_port(uint64_t *a1, int a2, int *a3)
{
  v3 = *a1;
  if (!*a1 || xpc_payload_get_transport(*a1) != 1)
  {
    return 0;
  }

  v7 = a1[8];
  a1[8] = v7 + 1;
  switch(a2)
  {
    case 16:
      v11 = 0;
      v8 = &v11;
      if (xpc_mach_payload_extract_ool_receive_right(v3, v7, &v11))
      {
        return 0;
      }

      break;
    case 18:
      v10 = 0;
      v8 = &v10;
      if (xpc_mach_payload_extract_ool_send_once_right(v3, v7, &v10))
      {
        return 0;
      }

      break;
    case 17:
      v12 = 0;
      v8 = &v12;
      if (!xpc_mach_payload_extract_ool_send_right(v3, v7, &v12))
      {
        break;
      }

      return 0;
    default:
      _xpc_graph_deserializer_read_port_cold_1();
  }

  *a3 = *v8;
  return 1;
}

BOOL _xpc_graph_deserializer_skip_value(uint64_t a1, unsigned int a2)
{
  v3 = _xpc_wire_length_from_wire_id(a2);
  v4 = v3(a1);
  if (v4 == -1)
  {
    return 0;
  }

  if (((v4 >= 0xFFFFFFFFFFFFFFFDLL) << 63) >> 63 != v4 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  v5 = (v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = *(a1 + 56);
  v7 = v6 >= v5;
  v8 = v6 - v5;
  if (!v7)
  {
    return 0;
  }

  v10 = *(a1 + 48);
  *(a1 + 48) = v10 + v5;
  *(a1 + 56) = v8;
  return v10 != 0;
}

const char *_xpc_graph_deserializer_read_string(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = strnlen(v2, v3);
  v5 = (v4 + 4) & 0xFFFFFFFFFFFFFFFCLL;
  if (((v4 + 1 >= 0xFFFFFFFFFFFFFFFDLL) << 63) >> 63 != v4 + 1 >= 0xFFFFFFFFFFFFFFFDLL || v3 < v5)
  {
    return 0;
  }

  *(a1 + 48) = &v2[v5];
  *(a1 + 56) = v3 - v5;
  return v2;
}

uint64_t _xpc_graph_deserializer_set_ool_callback(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(result + 24))
  {
    _xpc_graph_deserializer_set_ool_callback_cold_1(&v3, v4);
  }

  *(result + 24) = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_graph_deserializer_set_key_string_cache(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(result + 8))
  {
    _xpc_graph_deserializer_set_key_string_cache_cold_1(&v3, v4);
  }

  *(result + 8) = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_graph_deserializer_set_value_string_cache(uint64_t result, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(result + 16))
  {
    _xpc_graph_deserializer_set_value_string_cache_cold_1(&v3, v4);
  }

  *(result + 16) = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_graph_deserializer_get_transport(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return xpc_payload_get_transport(result);
  }

  return result;
}

BOOL _xpc_graph_deserializer_enter_container(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 <= 511)
  {
    *(a1 + 72) = v1 + 1;
  }

  return v1 < 512;
}

uint64_t _xpc_graph_deserializer_restore_depth(uint64_t result, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(result + 72) < a2)
  {
    _xpc_graph_deserializer_restore_depth_cold_1(&v3, v4);
  }

  *(result + 72) = a2;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xpc_payload_get_contiguous_bytes(uint64_t a1, void *a2)
{
  v3 = a1 + 16;
  result = *(a1 + 16);
  *a2 = *(v3 + 8);
  return result;
}

uint64_t _xpc_payload_distort(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 16))(a2, *(result + 16), *(result + 24));
  }

  return result;
}

uint64_t xpc_mach_payload_ool_port_count(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 1)
  {
    xpc_mach_payload_ool_port_count_cold_1(&v3, v4);
  }

  result = *(a1 + 56);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xpc_mach_payload_extract_ool_send_right(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 1)
  {
    xpc_mach_payload_ool_port_count_cold_1(&v6, v7);
  }

  LODWORD(v7[0]) = 0;
  result = _xpc_mach_payload_extract_ool_port(a1, a2, 17, v7);
  if (!result)
  {
    *a3 = v7[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_mach_payload_extract_ool_port(uint64_t a1, unint64_t a2, int a3, _DWORD *a4)
{
  if (*(a1 + 56) <= a2)
  {
    return 34;
  }

  v4 = *(a1 + 48) + 12 * a2;
  v5 = *(v4 + 10);
  if (v5 - 16 >= 3)
  {
    _xpc_mach_payload_extract_ool_port_cold_1(v5);
  }

  if (v5 != a3)
  {
    return 22;
  }

  result = 0;
  v7 = *v4;
  *v4 = 0;
  *(v4 + 8) = 0;
  *a4 = v7;
  return result;
}

uint64_t xpc_mach_payload_extract_ool_send_once_right(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 1)
  {
    xpc_mach_payload_ool_port_count_cold_1(&v6, v7);
  }

  LODWORD(v7[0]) = 0;
  result = _xpc_mach_payload_extract_ool_port(a1, a2, 18, v7);
  if (!result)
  {
    *a3 = v7[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xpc_mach_payload_extract_ool_receive_right(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != 1)
  {
    xpc_mach_payload_ool_port_count_cold_1(&v6, v7);
  }

  LODWORD(v7[0]) = 0;
  result = _xpc_mach_payload_extract_ool_port(a1, a2, 16, v7);
  if (!result)
  {
    *a3 = v7[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *_xpc_payload_create_from_mach_msg(NSObject *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _xpc_payload_alloc(64);
  v4[32] = 1;
  dispatch_retain(a1);
  *(v4 + 5) = a1;
  if ((a2 & 1) == 0)
  {
    _xpc_payload_create_from_mach_msg_cold_1(&v15, v16);
  }

  *&v16[0] = 0;
  msg = dispatch_mach_msg_get_msg();
  v6 = (msg + 24);
  if ((*msg & 0x80000000) == 0)
  {
    v7 = *&v16[0] - 24;
LABEL_4:
    *(v4 + 2) = v6;
    *(v4 + 3) = v7;
    goto LABEL_16;
  }

  v8 = *v6;
  if (!*v6)
  {
LABEL_15:
    os_release(v4);
    v4 = 0;
    goto LABEL_16;
  }

  v9 = msg;
  if (*(msg + 39) != 1)
  {
    v6 = (msg + 28);
    *(v4 + 6) = msg + 28;
LABEL_10:
    v10 = v8;
    v11 = v6 + 2;
    v6 += 3 * v8;
    v12 = v8;
    while (!*(v11 + 3))
    {
      v11 += 3;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

  *(v4 + 1) = dispatch_data_create(*(msg + 28), *(msg + 40), 0, *MEMORY[0x1E69E9660]);
  *(v9 + 36) &= 0xFFFFFF00;
  *(v4 + 2) = *(v9 + 28);
  *(v4 + 3) = *(v9 + 40);
  v6 = (v9 + 44);
  *(v4 + 6) = v9 + 44;
  if (--v8)
  {
    goto LABEL_10;
  }

  v10 = 0;
LABEL_13:
  *(v4 + 7) = v10;
  if (!*(v4 + 1))
  {
    v7 = v9 + *&v16[0] - v6;
    goto LABEL_4;
  }

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

id _xpc_payload_create_from_data_impl(const void *a1, size_t a2, void *a3)
{
  v6 = _xpc_payload_alloc(40);
  *(v6 + 32) = 0;
  v7 = dispatch_data_create(a1, a2, 0, a3);
  *(v6 + 1) = dispatch_data_create_map(v7, v6 + 2, v6 + 3);
  dispatch_release(v7);
  return v6;
}

void _xpc_payload_dispose(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*(a1 + 32) == 1 && *(a1 + 40))
  {
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
    v4 = *(a1 + 40);

    dispatch_release(v4);
  }
}

int *_xpc_get_extension_vtable(unint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E99F0];
  while (1)
  {
    if (*(v2 + 16) == -1)
    {
      v3 = *(v2 + 24);
    }

    else
    {
      v3 = _os_alloc_once();
    }

    if (*(v3 + 200))
    {
      Class = object_getClass(a1);
      v5 = *(v3 + 200);
      if (Class == *(v5 + 24))
      {
        result = *(v5 + 32);
        goto LABEL_14;
      }
    }

    if (!a1)
    {
      _xpc_get_extension_vtable_cold_1(&v16, v17);
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      break;
    }

    v6 = object_getClass(a1);
    if (v6 >= OS_xpc_object && v6 <= OS_xpc_string_cache && (v6 & 7) == 0)
    {
      result = (&_xpc_vtables + 2 * (v6 - OS_xpc_object));
      goto LABEL_14;
    }
  }

  v9 = 0;
  v10 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v10 = 0;
  }

  v11 = v10 ^ a1;
  do
  {
    if ((v11 & 7) == *(MEMORY[0x1E69E5900] + v9))
    {
      break;
    }

    ++v9;
  }

  while (v9 != 7);
  v12 = v9 | v11;
  v13 = v9 & 7;
  v14 = (v12 >> 55) + 8;
  if (v13 == 7)
  {
    LODWORD(v13) = v14;
  }

  if (v13 == 12)
  {
    result = &_OS_xpc_type_uint64;
  }

  else
  {
    if (v13 != 13)
    {
      v15 = _xpc_asprintf("Object is not an XPC object");
      _xpc_api_misuse(v15);
    }

    result = &_OS_xpc_type_int64;
  }

LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_get_extension_type_vtable(uint64_t a1)
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v2 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v2 = _os_alloc_once();
  }

  v3 = *(v2 + 200);
  if (v3 && *(v3 + 24) == a1)
  {
    return *(v3 + 32);
  }

  else
  {
    return 0;
  }
}

void xpc_extension_type_init(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = a2;
  v5 = _xpc_extension_copy;
  v6 = _xpc_extension_equal;
  v7 = _xpc_extension_hash;
  v8 = 0;
  v9 = _xpc_extension_desc;
  v10 = _xpc_extension_debug_desc;
  v11 = 0;
  v12 = _xpc_extension_serialize;
  v13 = _xpc_extension_deserialize;
  v14 = _xpc_extension_wire_length;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  __copy_assignment_8_8_t0w16_pa0_28874_16_pa0_40312_24_pa0_9273_32_pa0_8696_40_pa0_63469_48_pa0_8197_56_pa0_40403_64_pa0_48767_72_pa0_26810_80_pa0_18746_88_pa0_40992_96_t104w56(a1, &v3);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t _xpc_extension_desc(unint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(_xpc_get_extension_vtable(a1) + 21);
  memset(v8, 0, sizeof(v8));
  v5 = v4(a1, v8, 512);
  result = _xpc_serializer_append(a2, v8, v5, 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_extension_debug_desc(unint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(_xpc_get_extension_vtable(a1) + 22);
  memset(v8, 0, sizeof(v8));
  v5 = v4(a1, v8, 512);
  result = _xpc_serializer_append(a2, v8, v5, 0);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 __copy_assignment_8_8_t0w16_pa0_28874_16_pa0_40312_24_pa0_9273_32_pa0_8696_40_pa0_63469_48_pa0_8197_56_pa0_40403_64_pa0_48767_72_pa0_26810_80_pa0_18746_88_pa0_40992_96_t104w56(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a2 + 16);
  }

  *(a1 + 16) = v2;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 24);
  }

  *(a1 + 24) = v4;
  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 32);
  }

  *(a1 + 32) = v6;
  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 40);
  }

  *(a1 + 40) = v8;
  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a2 + 48);
  }

  *(a1 + 48) = v10;
  v12 = *(a2 + 56);
  if (v12)
  {
    v13 = *(a2 + 56);
  }

  *(a1 + 56) = v12;
  v14 = *(a2 + 64);
  if (v14)
  {
    v15 = *(a2 + 64);
  }

  *(a1 + 64) = v14;
  v16 = *(a2 + 72);
  if (v16)
  {
    v17 = *(a2 + 72);
  }

  *(a1 + 72) = v16;
  v18 = *(a2 + 80);
  if (v18)
  {
    v19 = *(a2 + 80);
  }

  *(a1 + 80) = v18;
  v20 = *(a2 + 88);
  if (v20)
  {
    v21 = *(a2 + 88);
  }

  *(a1 + 88) = v20;
  v22 = *(a2 + 96);
  if (v22)
  {
    v23 = *(a2 + 96);
  }

  *(a1 + 96) = v22;
  result = *(a2 + 104);
  v25 = *(a2 + 120);
  v26 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v26;
  *(a1 + 120) = v25;
  *(a1 + 104) = result;
  return result;
}

BOOL _system_version_copy_string_plist(char *a1)
{
  v2 = _xpc_copy_secure_plist("/System/Library/CoreServices/SystemVersion.plist");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  string = xpc_dictionary_get_string(v2, "ProductVersion");
  v5 = string != 0;
  if (string)
  {
    strlcpy(a1, string, 0x30uLL);
  }

  xpc_release(v3);
  return v5;
}

BOOL _availability_version_check(unsigned int a1, uint64_t a2)
{
  dyld_get_active_platform();
  base_platform = dyld_get_base_platform();
  if (os_system_version_get_current_version_predicate == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  _availability_version_check_cold_1();
  if (!a1)
  {
    return 1;
  }

LABEL_3:
  v5 = a1;
  for (i = (a2 + 4); *(i - 1) != base_platform; i += 2)
  {
    if (!--v5)
    {
      return 1;
    }
  }

  return *i <= ((*current_version << 16) | (*(current_version + 4) << 8) | *(current_version + 8));
}

uint64_t os_system_version_get_current_version(uint64_t a1)
{
  if (os_system_version_get_current_version_predicate != -1)
  {
    _availability_version_check_cold_1();
  }

  v2 = *current_version;
  *(a1 + 8) = *(current_version + 8);
  *a1 = v2;
  return 0;
}

uint64_t populate_current_version()
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  *v4 = 0u;
  v3 = 48;
  if (sysctlbyname("kern.osproductversion", v4, &v3, 0, 0))
  {
    _system_version_copy_string_plist(v4);
  }

  result = sscanf(v4, "%d.%d.%d", &parsed_version, &unk_1ED3F26C4, &unk_1ED3F26C8);
  if ((result - 1) >= 3)
  {
    v1 = &_system_version_fallback;
  }

  else
  {
    v1 = &parsed_version;
  }

  current_version = v1;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t os_system_version_sim_get_current_host_version(uint64_t a1)
{
  if (os_system_version_sim_get_current_host_version_predicate != -1)
  {
    os_system_version_sim_get_current_host_version_cold_1();
  }

  v2 = *current_host_version;
  *(a1 + 8) = *(current_host_version + 8);
  *a1 = v2;
  return 0;
}

uint64_t populate_current_host_version()
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  *v6 = 0u;
  v5 = 48;
  if (sysctlbyname("kern.osproductversion", v6, &v5, 0, 0))
  {
    v0 = _xpc_copy_secure_plist("/System/Library/CoreServices/SystemVersion.plist");
    if (v0)
    {
      v1 = v0;
      if (xpc_dictionary_get_string(v0, "ProductVersion"))
      {
        __strlcpy_chk();
      }

      xpc_release(v1);
    }
  }

  result = sscanf(v6, "%d.%d.%d", &parsed_host_version, &unk_1EAF1E958, &unk_1EAF1E95C);
  if ((result - 1) >= 3)
  {
    v3 = &_system_version_fallback;
  }

  else
  {
    v3 = &parsed_host_version;
  }

  current_host_version = v3;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return _os_once();
}

size_t _xpc_rich_error_copy(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = _xpc_try_strdup(*(a1 + 40));

  return xpc_rich_error_create_no_copy(v2, v1);
}

uint64_t _xpc_rich_error_hash(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 48;
  if (*(a1 + 24))
  {
    v3 = 49;
  }

  v4 = _xpc_asprintf("%s%c", *(a1 + 40), v3);
  v5 = _xpc_hash(v4, *(a1 + 32) + 2);
  free(v4);
  return v5;
}

uint64_t _xpc_rich_error_desc(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  *__str = 0u;
  v8 = 0u;
  v4 = snprintf(__str, 0x40uLL, "Can Retry: %d. Description:", *(a1 + 24));
  _xpc_serializer_append(a2, __str, v4, 0);
  _xpc_serializer_append(a2, *(a1 + 40), *(a1 + 32), 0);
  result = _xpc_serializer_append(a2, "", 1uLL, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_rich_error_serialize(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    _xpc_rich_error_serialize_cold_1(&__src, v9);
  }

  LODWORD(__src) = 114688;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v7 = *(a1 + 32) + 13;
  _xpc_serializer_append(a2, &v7, 4uLL, 1);
  v6 = *(a1 + 24);
  _xpc_serializer_append(a2, &v6, 4uLL, 1);
  *&v9[0] = *(a1 + 32);
  _xpc_serializer_append(a2, v9, 8uLL, 1);
  result = _xpc_serializer_append(a2, (a1 + 40), *(a1 + 32) + 1, 1);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

size_t _xpc_rich_error_deserialize(uint64_t a1)
{
  _xpc_wire_length(a1);
  v2 = _xpc_graph_deserializer_read(a1, 4uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  v4 = _xpc_graph_deserializer_read(a1, 8uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if ((*v4 - 0x10000) < 0xFFFFFFFFFFFF0001)
  {
    return 0;
  }

  v6 = _xpc_graph_deserializer_read(a1, v5 + 1);
  if (!v6 || v6[v5])
  {
    return 0;
  }

  v8 = _xpc_try_strdup(v6);

  return xpc_rich_error_create_no_copy(v8, v3 != 0);
}

size_t xpc_rich_error_create_no_copy(size_t result, char a2)
{
  if (result)
  {
    v3 = result;
    result = strlen(result);
    if (result)
    {
      v4 = result;
      result = _xpc_base_create(OS_xpc_rich_error, 24);
      *(result + 24) = a2;
      *(result + 40) = v3;
      v5 = (v4 & 0xFFFFFFFC) + 8;
      if (v4 > v5)
      {
        v6 = _xpc_asprintf("Unreasonably large string");
        _xpc_api_misuse(v6);
      }

      *(result + 20) = v5;
      *(result + 32) = v4;
    }
  }

  return result;
}

size_t xpc_rich_error_create(const char *a1, char a2)
{
  v3 = _xpc_try_strdup(a1);

  return xpc_rich_error_create_no_copy(v3, a2);
}

xpc_object_t launch_job_query_get_additional_job_properties(_DWORD *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  v3 = _launch_job_query_routine(1200, v2, &xdict);
  if (v3)
  {
    xpc_release(v2);
    if (xdict)
    {
      launch_job_query_get_additional_job_properties_cold_1(&v8, v10);
    }

    v4 = 0;
  }

  else
  {
    dictionary = xpc_dictionary_get_dictionary(xdict, "additional-properties");
    v4 = dictionary;
    if (dictionary)
    {
      xpc_retain(dictionary);
    }

    xpc_release(xdict);
    xpc_release(v2);
  }

  *a1 = v3;
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t _xpc_mach_send_once_desc(unsigned int *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v4 = MEMORY[0x1E69E9A60];
  v5 = MEMORY[0x19A8DD090](*MEMORY[0x1E69E9A60], a1[6], 2, &v12);
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
    v7 = "send once";
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  v8 = snprintf(__str, 0x80uLL, "<%s: %p> { name = 0x%x, right = %s }", "mach send once right", a1, a1[6], v7);
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

uint64_t _xpc_mach_send_once_serialize(unsigned int *a1, void *a2)
{
  right = xpc_mach_send_once_extract_right(a1);
  v6 = 110592;
  return _xpc_serializer_append_port(a2, &v6, 4uLL, a1, right, 18);
}

uint64_t _xpc_mach_send_once_deserialize(uint64_t *a1)
{
  v3 = 0;
  if (!_xpc_graph_deserializer_read_port(a1, 18, &v3))
  {
    return 0;
  }

  v1 = v3;
  result = _xpc_base_create(OS_xpc_mach_send_once, 8);
  *(result + 24) = v1;
  *(result + 16) |= 3u;
  return result;
}

uint64_t _xpc_mach_send_once_dispose(uint64_t result)
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

uint64_t xpc_mach_send_once_create(int a1)
{
  result = _xpc_base_create(OS_xpc_mach_send_once, 8);
  *(result + 24) = a1;
  *(result + 16) |= 2u;
  return result;
}

__objc2_class *xpc_mach_send_once_extract_right(unsigned int *a1)
{
  result = xpc_get_type(a1);
  if (result != OS_xpc_mach_send_once)
  {
    return 0;
  }

  __swp(result, a1 + 6);
  if (result == -2)
  {
    v3 = _xpc_asprintf("Send once port already consumed");
    _xpc_api_misuse(v3);
  }

  return result;
}

char *_xpc_realpath(const char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1972A7C6C;
  v5 = 0;
  bzero(v6, 0x40CuLL);
  while (getattrlist(a1, &v4, v6, 0x40CuLL, 0) == -1)
  {
    if (*__error() != 35)
    {
      result = 0;
      goto LABEL_6;
    }
  }

  result = _xpc_strdup(v7 + v7[0]);
LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

char *_xpc_realpath_fd(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x400uLL);
  if (a1 < 0)
  {
    v3 = __error();
    result = 0;
    *v3 = 9;
  }

  else
  {
    while (fcntl(a1, 50, v5) == -1)
    {
      if (*__error() != 35)
      {
        result = 0;
        goto LABEL_7;
      }
    }

    result = _xpc_strdup(v5);
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *_copy_plist_from_fd(int a1, uint64_t a2, void *a3, void *a4, void *a5, ssize_t *a6)
{
  v12 = _xpc_alloc_typed(*(a2 + 96), 0xB9878750uLL);
  v13 = read(a1, v12, *(a2 + 96));
  v14 = v13;
  if (v13 != *(a2 + 96))
  {
    if (v13 && (v13 != -1 || *__error()))
    {
      _os_assumes_log();
    }

    goto LABEL_8;
  }

  v15 = xpc_create_from_plist_with_string_cache(v12, v13, a3, a4);
  v16 = v15;
  if (v15)
  {
    if (xpc_get_type(v15) != OS_xpc_dictionary)
    {
      xpc_release(v16);
LABEL_8:
      v16 = 0;
      goto LABEL_9;
    }

    if (a5 && a6)
    {
      *a6 = v14;
      *a5 = v12;
      return v16;
    }
  }

LABEL_9:
  free(v12);
  return v16;
}

int *_xpc_strict_close(int *result)
{
  v4 = *MEMORY[0x1E69E9840];
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
    if (result)
    {
      if (*__error())
      {
        _os_assumes_log();
      }

      result = __error();
      if (*result == 9)
      {
        _xpc_strict_close_cold_1(&v2, v3);
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void *_copy_secure_plist(const char *a1, void *a2, void *a3, void *a4, ssize_t *a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = open(a1, 0);
  if (v9 == -1)
  {
    return 0;
  }

  v10 = v9;
  memset(&v14, 0, sizeof(v14));
  v11 = fstat(v9, &v14);
  if (v11 | v14.st_uid || (v14.st_mode & 0x12) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = _copy_plist_from_fd(v10, &v14, a2, a3, a4, a5);
  }

  _xpc_strict_close(v10);
  return v12;
}

uint64_t _xpc_ktrace_pid0(uint64_t a1)
{
  v2 = getpid();

  return MEMORY[0x1EEE726D0](a1, v2, 0, 0, 0);
}

uint64_t _xpc_ktrace_pid1(uint64_t a1, uint64_t a2)
{
  v4 = getpid();

  return MEMORY[0x1EEE726D0](a1, v4, a2, 0, 0);
}

uint64_t _xpc_ktrace_pid2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = getpid();

  return MEMORY[0x1EEE726D0](a1, v6, a2, a3, 0);
}

void _xpc_launch_routine(uint64_t a1, void *a2, xpc_object_t *a3)
{
  xdict = 0;
  v4 = _xpc_interface_routine(a1, a2, &xdict, 0, 0);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = xdict;
  value = xpc_dictionary_get_value(xdict, "response");
  if (!value)
  {
    xpc_release(v5);
    v4 = 118;
LABEL_2:
    *a3 = xpc_uint64_create(v4);
    return;
  }

  *a3 = xpc_retain(value);

  xpc_release(v5);
}

int64_t _xpc_interface_routine(uint64_t a1, xpc_object_t xdict, xpc_object_t *a3, int a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E99F0];
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v11 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v11 = _os_alloc_once();
  }

  if (*v11 & 1) != 0 || (*(v11 + 4))
  {
    return 141;
  }

  xdicta = 0;
  if ((*(v11 + 41) & 1) == 0)
  {
    xpc_dictionary_set_BOOL(xdict, "pre-exec", 1);
  }

  v14 = 6;
  if (*(v11 + 88))
  {
    v14 = 2;
  }

  int64 = _xpc_pipe_interface_routine(*(v11 + 24), a1, xdict, &xdicta, v14 | a5);
  if (xdicta && xpc_dictionary_get_string(xdicta, "xpc-fault"))
  {
    _XPC_MISUSE_FAULT();
  }

  v15 = xdicta;
  if (int64 || (int64 = xpc_dictionary_get_int64(xdicta, "error"), v15 = xdicta, int64))
  {
    if (v15)
    {
      xpc_release(v15);
    }
  }

  else
  {
    if (*(v10 + 16) == -1)
    {
      v16 = *(v10 + 24);
    }

    else
    {
      v16 = _os_alloc_once();
    }

    if ((*(v16 + 88) & 1) == 0)
    {
      v24 = 0u;
      v25 = 0u;
      xpc_dictionary_get_audit_token(v15, &v24);
      if (DWORD1(v25) != 1)
      {
        _xpc_interface_routine_cold_1(SDWORD1(v25));
      }

      if (DWORD1(v24))
      {
        _xpc_interface_routine_cold_2();
      }

      if (a4)
      {
        uint64 = xpc_dictionary_get_uint64(v15, "req_pid");
        v18 = xpc_dictionary_get_uint64(v15, "rec_execcnt");
        if (uint64 >> 31 || (v19 = v18, v18 >> 31))
        {
          _xpc_interface_routine_cold_6();
        }

        self_audit_token = _xpc_get_self_audit_token();
        v21 = *(self_audit_token + 20);
        if (!v21 || (v22 = *(self_audit_token + 28)) == 0)
        {
          _xpc_interface_routine_cold_5();
        }

        if (v21 != uint64)
        {
          _xpc_interface_routine_cold_3();
        }

        if (v22 != v19)
        {
          _xpc_interface_routine_cold_4();
        }
      }
    }

    int64 = 0;
    *a3 = xdicta;
  }

  return int64;
}

uint64_t _xpc_interface_routine_async(uint64_t a1, xpc_object_t xdict, uint64_t a3)
{
  if (*(MEMORY[0x1E69E99F0] + 16) == -1)
  {
    v6 = *(MEMORY[0x1E69E99F0] + 24);
  }

  else
  {
    v6 = _os_alloc_once();
  }

  if (*v6 & 1) != 0 || (*(v6 + 4))
  {
    return 141;
  }

  if ((*(v6 + 41) & 1) == 0)
  {
    xpc_dictionary_set_BOOL(xdict, "pre-exec", 1);
  }

  v8 = *(v6 + 24);

  return _xpc_pipe_interface_routine_async(v8, a1, xdict, a3, 2);
}

xpc_object_t _xpc_domain_request_create_system()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "type", 1uLL);
  xpc_dictionary_set_uint64(empty, "handle", 0);
  return empty;
}

uint64_t _XPC_MISUSE_FAULT()
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  _os_log_simple();
  bzero(&v10, 0x400uLL);
  v0 = backtrace(&v10, 128);
  v1 = backtrace_symbols(&v10, v0);
  if (v1)
  {
    v2 = v1;
    if (v0 >= 1)
    {
      v3 = v0;
      v4 = v1;
      do
      {
        if (!*v4)
        {
          break;
        }

        v12 = 0;
        v13 = 0;
        if ((_dyld_get_image_uuid() & 1) == 0)
        {
          v12 = 0;
          v13 = 0;
        }

        if (_dyld_get_shared_cache_uuid())
        {
          _dyld_get_shared_cache_range();
        }

        v5 = *v4++;
        _os_log_simple();
        --v3;
      }

      while (v3);
    }

    free(v2);
  }

  result = os_fault_with_payload();
  if (result)
  {
    v12 = 0;
    v13 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v12 = 0;
      v13 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      _dyld_get_shared_cache_range();
    }

    v7 = *__error();
    v8 = __error();
    xpc_strerror(*v8);
    result = _os_log_simple();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *_xpc_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  v9 = *MEMORY[0x1E69E9840];
  do
  {
    v4 = malloc_type_calloc(1uLL, size, type_id);
    if (v4)
    {
      break;
    }

    if (*__error() != 12 && *__error())
    {
      _xpc_alloc_typed_cold_1(&v7, v8);
    }
  }

  while (_waiting4memory());
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void *_xpc_realloc_typed(void *ptr, int a2, size_t size, malloc_type_id_t type_id)
{
  v12 = *MEMORY[0x1E69E9840];
  do
  {
    v7 = malloc_type_realloc(ptr, size, type_id);
    if (v7)
    {
      break;
    }

    if (*__error() != 12 && *__error())
    {
      _xpc_alloc_typed_cold_1(&v10, v11);
    }
  }

  while (_waiting4memory());
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return _os_log_send_and_compose_impl();
}

double OUTLINED_FUNCTION_1_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

int64_t _xpc_look_up_endpoint(char *a1, int a2, uint64_t a3, uint64_t a4, const unsigned __int8 *a5, uint64_t a6, const void *a7, _DWORD *a8, BOOL *a9)
{
  xdict[10] = *MEMORY[0x1E69E9840];
  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v17, "type", a2);
  xpc_dictionary_set_uint64(v17, "handle", a3);
  xpc_dictionary_set_uint64(v17, "lookup-handle", a4);
  xpc_dictionary_set_uint64(v17, "flags", a6);
  xpc_dictionary_set_string(v17, "name", a1);
  if ((a6 & 0x24) != 0)
  {
    xpc_dictionary_set_uuid(v17, "instance", a5);
  }

  if ((a6 & 0x400) != 0)
  {
    if (!a7)
    {
      _xpc_look_up_endpoint_cold_1(&v21, xdict);
    }

    xpc_dictionary_set_data(v17, "cputypes", a7, 0x24uLL);
  }

  xdict[0] = 0;
  v18 = _xpc_bootstrap_routine_authenticate(804, v17, xdict);
  if (!v18)
  {
    *a8 = _xpc_dictionary_extract_mach_send(xdict[0], "port");
    if (a9)
    {
      *a9 = xpc_dictionary_get_BOOL(xdict[0], "non-launching");
    }

    xpc_release(xdict[0]);
    _launch_report_service_lookup(a1);
  }

  xpc_release(v17);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t _launch_report_service_lookup(char *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = _os_feature_enabled_simple_impl();
  if (result)
  {
    result = _os_trace_lazy_init_completed_4libxpc();
    if (result)
    {
      result = os_variant_has_internal_content();
      if (result)
      {
        result = os_variant_has_internal_diagnostics();
        if (result)
        {
          result = _xpc_equal_strings(a1, "com.apple.system.notification_center");
          if ((result & 1) == 0)
          {
            result = _xpc_equal_strings(a1, "com.apple.logd");
            if ((result & 1) == 0)
            {
              result = _xpc_equal_strings(a1, "com.apple.logd.events");
              if ((result & 1) == 0)
              {
                result = _xpc_equal_strings(a1, "com.apple.diagnosticd");
                if ((result & 1) == 0)
                {
                  result = _xpc_equal_strings(a1, "com.apple.system.logger");
                  if ((result & 1) == 0)
                  {
                    if (_xpc_telemetry_log_handle__once != -1)
                    {
                      _launch_report_service_lookup_cold_1();
                    }

                    result = os_signpost_enabled(_xpc_telemetry_log_handle__log);
                    if (result)
                    {
                      result = _os_signpost_emit_unreliably_with_name_impl();
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

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

int64_t _xpc_activate_endpoint(const char *a1, int a2, uint64_t a3, uint64_t a4, _DWORD *a5, BOOL *a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v12, "type", a2);
  xpc_dictionary_set_uint64(v12, "handle", a3);
  xpc_dictionary_set_uint64(v12, "flags", a4);
  xpc_dictionary_set_string(v12, "name", a1);
  xdict = 0;
  v13 = _xpc_domain_routine_activate(v12, &xdict);
  if (!v13)
  {
    *a5 = xpc_dictionary_extract_mach_recv(xdict, "port");
    if (a6)
    {
      *a6 = xpc_dictionary_get_BOOL(xdict, "non-launching");
    }

    xpc_release(xdict);
  }

  xpc_release(v12);
  return v13;
}

int launch_activate_socket(const char *name, int **fds, size_t *cnt)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "type", 6uLL);
  xpc_dictionary_set_uint64(v6, "handle", 0);
  xpc_dictionary_set_uint64(v6, "flags", 0x20uLL);
  xpc_dictionary_set_string(v6, "name", name);
  xdict = 0;
  v7 = _xpc_domain_routine_activate(v6, &xdict);
  if (!v7)
  {
    value = xpc_dictionary_get_value(xdict, "port");
    if (value && (v9 = value, xpc_get_type(value) == OS_xpc_array))
    {
      count = xpc_array_get_count(v9);
      if (count >> 62)
      {
        __break(1u);
        return count;
      }

      v11 = _xpc_alloc_typed(4 * count, 0xC9796834uLL);
      if (xpc_array_get_count(v9))
      {
        v12 = 0;
        do
        {
          v11[v12] = xpc_array_dup_fd(v9, v12);
          ++v12;
        }

        while (v12 < xpc_array_get_count(v9));
      }

      *fds = v11;
      v13 = xpc_array_get_count(v9);
      v7 = 0;
      *cnt = v13;
    }

    else
    {
      v7 = 118;
    }

    xpc_release(xdict);
  }

  xpc_release(v6);
  LODWORD(count) = v7;
  return count;
}

int64_t _launch_get_service_enabled_impl(const char *a1, BOOL *a2, BOOL *a3, unsigned int a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "type", a4);
  xpc_dictionary_set_uint64(v8, "handle", 0);
  xpc_dictionary_set_string(v8, "name", a1);
  xdict = 0;
  v9 = _xpc_domain_routine(811, v8, &xdict);
  if (!v9)
  {
    if (a2)
    {
      *a2 = xpc_dictionary_get_BOOL(xdict, "loaded");
    }

    if (a3)
    {
      *a3 = xpc_dictionary_get_BOOL(xdict, "enabled");
    }

    xpc_release(xdict);
  }

  xpc_release(v8);
  return v9;
}

int64_t _launch_set_service_enabled_impl(const char *a1, int a2, unsigned int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "type", a3);
  xpc_dictionary_set_uint64(v6, "handle", 0);
  if (a2)
  {
    v7 = 808;
  }

  else
  {
    v7 = 809;
  }

  v8 = xpc_array_create(0, 0);
  xpc_array_set_string(v8, 0xFFFFFFFFFFFFFFFFLL, a1);
  xpc_dictionary_set_value(v6, "names", v8);
  xpc_release(v8);
  object = 0;
  v9 = _xpc_domain_routine(v7, v6, &object);
  if (!v9)
  {
    xpc_release(object);
  }

  xpc_release(v6);
  return v9;
}

int64_t _launch_enable_or_disable_directory(const char *a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, a1, 0);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "type", 7uLL);
  xpc_dictionary_set_uint64(v5, "handle", 0);
  xpc_dictionary_set_value(v5, "paths", v4);
  if (a2 == 800)
  {
    v6 = "enable";
  }

  else
  {
    v6 = "disable";
  }

  xpc_dictionary_set_BOOL(v5, v6, 1);
  xdict = 0;
  int64 = _xpc_domain_routine(a2, v5, &xdict);
  if (!int64)
  {
    if (a2 == 800)
    {
      v8 = "bootstrap-error";
    }

    else
    {
      v8 = "bootout-error";
    }

    int64 = xpc_dictionary_get_int64(xdict, v8);
    value = xpc_dictionary_get_value(xdict, "errors");
    if (value)
    {
      if (a2 == 800)
      {
        v10 = _print_enable_error;
      }

      else
      {
        v10 = _print_disable_error;
      }

      xpc_dictionary_apply_f(value, 0, v10);
    }

    xpc_release(xdict);
  }

  xpc_release(v5);
  xpc_release(v4);
  return int64;
}

int64_t launch_create_persona(int a1)
{
  object = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", 1uLL);
  xpc_dictionary_set_uint64(v2, "handle", 0);
  xpc_dictionary_set_uint64(v2, "uid", a1);
  v3 = _xpc_domain_routine(838, v2, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(v2);
  return v3;
}

int64_t launch_destroy_persona(int a1)
{
  object = 0;
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", 2uLL);
  xpc_dictionary_set_uint64(v2, "handle", a1);
  v3 = _xpc_domain_routine(801, v2, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(v2);
  return v3;
}

char *launch_version_for_user_service_4coresim(const char *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", 2uLL);
  v3 = geteuid();
  xpc_dictionary_set_uint64(v2, "handle", v3);
  xpc_dictionary_set_string(v2, "name", a1);
  xdict = 0;
  if (_xpc_service_routine(712, v2, &xdict))
  {
    xpc_release(v2);
    return 0;
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, "attrs");
    v6 = xpc_retain(value);
    xpc_release(xdict);
    xpc_release(v2);
    string = xpc_dictionary_get_string(v6, "version");
    if (string)
    {
      v4 = _xpc_strdup(string);
    }

    else
    {
      v4 = 0;
    }

    xpc_release(v6);
  }

  return v4;
}

int64_t launch_bootout_user_service_4coresim_with_flags(const char *a1, char a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "type", 2uLL);
  v5 = geteuid();
  xpc_dictionary_set_uint64(v4, "handle", v5);
  xpc_dictionary_set_string(v4, "name", a1);
  if (a2)
  {
    xpc_dictionary_set_BOOL(v4, "wait", 1);
  }

  xdict = 0;
  int64 = _xpc_domain_routine(801, v4, &xdict);
  if (!int64)
  {
    _xpc_bootout_wait_for_completion_sync(xdict);
    int64 = xpc_dictionary_get_int64(xdict, "bootout-error");
    value = xpc_dictionary_get_value(xdict, "errors");
    if (value)
    {
      xpc_dictionary_apply_f(value, 0, _print_disable_error);
    }

    xpc_release(xdict);
  }

  xpc_release(v4);
  return int64;
}

void _print_disable_error(const char *a1, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  v4 = xpc_strerror(value);
  syslog(3, "Failed to disable path: code = %d: %s, %s", value, v4, a1);
}

int64_t launch_service_instance_create(const char *a1, const unsigned __int8 *a2)
{
  request = _launchd_service_instance_create_request(a1, a2);
  object = 0;
  v3 = _xpc_service_routine(721, request, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(request);
  return v3;
}

xpc_object_t _launchd_service_instance_create_request(const char *a1, const unsigned __int8 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    _launchd_service_instance_create_request_cold_1(&v7, v8);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "type", 7uLL);
  xpc_dictionary_set_uint64(v4, "handle", 0);
  xpc_dictionary_set_string(v4, "name", a1);
  xpc_dictionary_set_uuid(v4, "instance", a2);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void launch_service_instance_remove(const char *a1, const unsigned __int8 *a2, NSObject *a3, const void *a4)
{
  request = _launchd_service_instance_create_request(a1, a2);
  object[0] = 0;
  v7 = _xpc_service_routine(722, request, object);
  if (v7 || (v8 = xpc_dictionary_copy_mach_send(object[0], "monitor"), v8 - 1 > 0xFFFFFFFD))
  {
    v12 = _Block_copy(a4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __launch_service_instance_remove_block_invoke;
    block[3] = &unk_1E74AA498;
    block[4] = v12;
    v14 = v7;
    dispatch_async(a3, block);
  }

  else
  {
    v9 = v8;
    v10 = _Block_copy(a4);
    v11 = dispatch_source_create(MEMORY[0x1E69E96E0], v9, 1uLL, a3);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___launch_service_monitor_removal_port_block_invoke;
    handler[3] = &unk_1E74AA4E0;
    handler[4] = v10;
    handler[5] = v11;
    dispatch_source_set_event_handler(v11, handler);
    object[1] = MEMORY[0x1E69E9820];
    object[2] = 0x40000000;
    object[3] = ___launch_service_monitor_removal_port_block_invoke_2;
    object[4] = &__block_descriptor_tmp_44;
    v16 = v9;
    object[5] = v11;
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(v11);
  }

  if (object[0])
  {
    xpc_release(object[0]);
  }

  xpc_release(request);
}

void __launch_service_instance_remove_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 32);

  _Block_release(v3);
}

xpc_object_t launch_service_instance_copy_uuids(const char *a1, _DWORD *a2)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "type", 7uLL);
  xpc_dictionary_set_uint64(empty, "handle", 0);
  xpc_dictionary_set_string(empty, "name", a1);
  xdict = 0;
  v5 = _xpc_service_routine(723, empty, &xdict);
  xpc_release(empty);
  if (v5)
  {
    v6 = 0;
    if (a2)
    {
      *a2 = v5;
    }
  }

  else
  {
    array = xpc_dictionary_get_array(xdict, "uuids");
    v6 = xpc_retain(array);
    xpc_release(xdict);
  }

  return v6;
}

int64_t launch_active_user_login()
{
  system = _xpc_domain_request_create_system();
  object = 0;
  v1 = _xpc_domain_routine(842, system, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(system);
  return v1;
}

int64_t launch_active_user_logout()
{
  system = _xpc_domain_request_create_system();
  object = 0;
  v1 = _xpc_domain_routine(843, system, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(system);
  return v1;
}

int64_t launch_load_mounted_jetsam_properties(const char *a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "type", 1uLL);
  xpc_dictionary_set_uint64(empty, "handle", 0);
  xpc_dictionary_set_string(empty, "mount-point", a1);
  object = 0;
  v3 = _xpc_domain_routine(846, empty, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(empty);
  return v3;
}

void launch_cryptex_terminate(const char *a1, NSObject *a2, const void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "type", 1uLL);
  xpc_dictionary_set_uint64(empty, "handle", 0);
  xpc_dictionary_set_string(empty, "cryptex", a1);
  v7 = _xpc_mach_port_allocate(0x1000u, 1u, 0);
  v8 = _xpc_event_routine_async(847, empty, v7);
  if (v8)
  {
    v9 = v8;
    if (_xpc_mach_port_close_recv(v7, 0, 0))
    {
      launch_cryptex_terminate_cold_1(v14, &block);
    }

    v10 = _Block_copy(a3);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 0x40000000;
    v17 = ___launch_domain_routine_async_block_invoke;
    v18 = &unk_1E74AA528;
    v19 = v10;
    LODWORD(v20) = v9;
    dispatch_async(a2, &block);
  }

  else
  {
    v11 = dispatch_source_create(MEMORY[0x1E69E96D8], v7, 0, a2);
    v12 = _Block_copy(a3);
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 0x40000000;
    v17 = ___launch_domain_routine_async_block_invoke_2;
    v18 = &unk_1E74AA550;
    v21 = v7;
    v19 = v12;
    v20 = v11;
    dispatch_source_set_event_handler(v11, &block);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = ___launch_domain_routine_async_block_invoke_3;
    v14[3] = &__block_descriptor_tmp_48;
    v15 = v7;
    v14[4] = v11;
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(v11);
  }

  xpc_release(empty);
  v13 = *MEMORY[0x1E69E9840];
}

int64_t launch_userspace_reboot_with_purpose(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "type", 1uLL);
  xpc_dictionary_set_uint64(empty, "handle", 0);
  xpc_dictionary_set_uint64(empty, "flags", 0x2100000000000000uLL);
  xpc_dictionary_set_uint64(empty, "userreboot_purpose", a1);
  object = 0;
  v3 = _xpc_domain_routine(821, empty, &object);
  if (object)
  {
    xpc_release(object);
  }

  xpc_release(empty);
  return v3;
}

uint64_t launch_urgent_log_submission_completed(int a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "type", 1uLL);
  xpc_dictionary_set_uint64(empty, "handle", 0);
  xpc_dictionary_set_int64(empty, "pid", a1);
  xpc_dictionary_set_int64(empty, "pid-version", a2);
  v5 = _xpc_mach_port_allocate(0x1000u, 1u, 0);
  v6 = v5;
  v7 = _xpc_event_routine_async(848, empty, v5);
  if (_xpc_mach_port_close_recv(v6, 0, 0))
  {
    launch_cryptex_terminate_cold_1(&v10, v11);
  }

  xpc_release(empty);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ___xpc_telemetry_log_handle_block_invoke()
{
  getpid();
  csops();
  result = MEMORY[0x1E69E9C18];
  _xpc_telemetry_log_handle__log = MEMORY[0x1E69E9C18];
  return result;
}

void _print_enable_error(const char *a1, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  v4 = xpc_strerror(value);
  syslog(3, "Failed to enable path: code = %d: %s, %s", value, v4, a1);
}

void ___launch_service_monitor_removal_port_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_source_cancel(v2);
}

void ___launch_service_monitor_removal_port_block_invoke_2(uint64_t a1)
{
  if (_xpc_mach_port_release(*(a1 + 40)))
  {
    _os_assumes_log();
  }

  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void ___launch_domain_routine_async_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 32);

  _Block_release(v3);
}

void ___launch_domain_routine_async_block_invoke_2(uint64_t a1)
{
  xdict = 0;
  if (!xpc_pipe_receive(*(a1 + 48), &xdict, 0))
  {
    xpc_dictionary_get_int64(xdict, "error");
    xpc_release(xdict);
    xdict = 0;
  }

  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  dispatch_source_cancel(*(a1 + 40));
}

void ___launch_domain_routine_async_block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (_xpc_mach_port_close_recv(*(a1 + 40), 0, 0))
  {
    launch_cryptex_terminate_cold_1(&v4, v5);
  }

  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E69E9840];

  dispatch_release(v2);
}

__objc2_class *_xpc_type_from_id(unsigned int a1)
{
  if (a1 >= 0x1E000)
  {
    _xpc_type_from_id_cold_1();
  }

  return OS_xpc_object[2 * (a1 >> 12)];
}

uint64_t _xpc_wire_length_from_wire_id(unsigned int a1)
{
  if (a1 >= 0x1E000)
  {
    _xpc_type_from_id_cold_1();
  }

  if (*(&_xpc_vtables + 20 * (a1 >> 12) + 11))
  {
    return *(&_xpc_vtables + 20 * (a1 >> 12) + 11);
  }

  else
  {
    return 0;
  }
}

uint64_t _xpc_deserialize_from_wire_id(unsigned int a1)
{
  if (a1)
  {
    _xpc_deserialize_from_wire_id_cold_1(a1);
  }

  if (a1 >= 0x1E000)
  {
    _xpc_type_from_id_cold_1();
  }

  if (*(&_xpc_vtables + 20 * (a1 >> 12) + 10))
  {
    return *(&_xpc_vtables + 20 * (a1 >> 12) + 10);
  }

  else
  {
    return 0;
  }
}

uint64_t _xpc_base_desc(unint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__str = 0u;
  v21 = 0u;
  if (!a1)
  {
    _xpc_base_desc_cold_1(&v19, v28);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v5 = 0;
    }

    v6 = v5 ^ a1;
    do
    {
      if ((v6 & 7) == *(MEMORY[0x1E69E5900] + v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != 7);
    v7 = v4 | v6;
    v8 = v4 & 7;
    v9 = (v7 >> 55) + 8;
    if (v8 == 7)
    {
      LODWORD(v8) = v9;
    }

    if (v8 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v8 != 13)
      {
        v18 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v18);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(a1);
    if (Class >= OBJC_CLASS___OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OBJC_CLASS___OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(a1);
    }
  }

  v14 = snprintf(__str, 0x80uLL, "<%s>", *(extension_vtable + 1));
  if (v14 >= 0x7F)
  {
    v15 = 127;
  }

  else
  {
    v15 = v14;
  }

  result = _xpc_serializer_append(a2, __str, (v15 + 1), 0);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_base_debug_desc(unint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__str = 0u;
  v21 = 0u;
  if (!a1)
  {
    _xpc_base_desc_cold_1(&v19, v28);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v5 = 0;
    }

    v6 = v5 ^ a1;
    do
    {
      if ((v6 & 7) == *(MEMORY[0x1E69E5900] + v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != 7);
    v7 = v4 | v6;
    v8 = v4 & 7;
    v9 = (v7 >> 55) + 8;
    if (v8 == 7)
    {
      LODWORD(v8) = v9;
    }

    if (v8 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v8 != 13)
      {
        v18 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v18);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(a1);
    if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(a1);
    }
  }

  v14 = snprintf(__str, 0x80uLL, "<%s: %p>", *(extension_vtable + 1), a1);
  if (v14 >= 0x7F)
  {
    v15 = 127;
  }

  else
  {
    v15 = v14;
  }

  result = _xpc_serializer_append(a2, __str, (v15 + 1), 0);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_base_debug(unint64_t a1, char *__str, size_t __size)
{
  v35 = *MEMORY[0x1E69E9840];
  if (__size < 2)
  {
    v13 = 0;
  }

  else
  {
    if (!a1)
    {
      _xpc_base_desc_cold_1(&v33, v34);
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      v6 = 0;
      v7 = *MEMORY[0x1E69E5910];
      if ((~a1 & 0xC000000000000007) == 0)
      {
        v7 = 0;
      }

      v8 = v7 ^ a1;
      do
      {
        if ((v8 & 7) == *(MEMORY[0x1E69E5900] + v6))
        {
          break;
        }

        ++v6;
      }

      while (v6 != 7);
      v9 = v6 | v8;
      v10 = v6 & 7;
      v11 = (v9 >> 55) + 8;
      if (v10 == 7)
      {
        LODWORD(v10) = v11;
      }

      if (v10 == 12)
      {
        extension_vtable = &_OS_xpc_type_uint64;
      }

      else
      {
        if (v10 != 13)
        {
          goto LABEL_58;
        }

        extension_vtable = &_OS_xpc_type_int64;
      }
    }

    else
    {
      Class = object_getClass(a1);
      if (Class >= OBJC_CLASS___OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
      {
        extension_vtable = (&_xpc_vtables + 2 * (Class - OBJC_CLASS___OS_xpc_object));
      }

      else
      {
        extension_vtable = _xpc_get_extension_vtable(a1);
      }
    }

    if (*(a1 + 16))
    {
      v17 = " (from wire)";
    }

    else
    {
      v17 = "";
    }

    v13 = snprintf(__str, __size, "%s[%p]%s: { refcnt = %x, xrefcnt = %x", *(extension_vtable + 1), a1, v17, *(a1 + 8), *(a1 + 12));
    if (v13 >= __size)
    {
      v13 = __size - 1;
    }
  }

  v18 = &__str[v13];
  v19 = __size - v13;
  if (object_getClass(a1) == OBJC_CLASS___OS_xpc_object)
  {
    goto LABEL_49;
  }

  if (!a1)
  {
    _xpc_base_desc_cold_1(&v33, v34);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v27 = object_getClass(a1);
    if (v27 < OBJC_CLASS___OS_xpc_object || v27 > OS_xpc_string_cache || (v27 & 7) != 0)
    {
      v26 = _xpc_get_extension_vtable(a1);
    }

    else
    {
      v26 = (&_xpc_vtables + 2 * (v27 - OBJC_CLASS___OS_xpc_object));
    }

    goto LABEL_48;
  }

  v20 = 0;
  v21 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v21 = 0;
  }

  v22 = v21 ^ a1;
  do
  {
    if ((v22 & 7) == *(MEMORY[0x1E69E5900] + v20))
    {
      break;
    }

    ++v20;
  }

  while (v20 != 7);
  v23 = v20 | v22;
  v24 = v20 & 7;
  v25 = (v23 >> 55) + 8;
  if (v24 == 7)
  {
    LODWORD(v24) = v25;
  }

  if (v24 == 12)
  {
    v26 = &_OS_xpc_type_uint64;
    goto LABEL_48;
  }

  if (v24 != 13)
  {
LABEL_58:
    v32 = _xpc_asprintf("Object is not an XPC object");
    _xpc_api_misuse(v32);
  }

  v26 = &_OS_xpc_type_int64;
LABEL_48:
  v28 = (*(v26 + 8))(a1, v18, v19);
  v18 += v28;
  v19 -= v28;
LABEL_49:
  if (v19 < 2)
  {
    v29 = 0;
  }

  else
  {
    v29 = snprintf(v18, v19, " }");
    if (v19 <= v29)
    {
      v29 = v19 - 1;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return &v18[v29] - __str;
}

uint64_t _xpc_object_pad(char *__str, size_t __size, uint64_t a3)
{
  v4 = __str;
  if (a3)
  {
    v5 = a3;
    v4 = __str;
    do
    {
      if (__size < 2)
      {
        v7 = 0;
      }

      else
      {
        v7 = snprintf(v4, __size, "\t");
        if (__size <= v7)
        {
          v7 = __size - 1;
        }
      }

      v4 += v7;
      __size -= v7;
      --v5;
    }

    while (v5);
  }

  return v4 - __str;
}

unsigned int *_xpc_wire_length(uint64_t a1)
{
  result = _xpc_graph_deserializer_read(a1, 4uLL);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t _xpc_retain(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return _os_object_retain_internal();
  }

  return result;
}

uint64_t _xpc_retain_with_resurrect(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return MEMORY[0x1EEE6FDC0]();
  }

  return result;
}

uint64_t _xpc_release(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return _os_object_release_internal();
  }

  return result;
}

uint64_t _xpc_dispose(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ a1;
    do
    {
      if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != 7);
    v5 = v2 | v4;
    v6 = v2 & 7;
    v7 = (v5 >> 55) + 8;
    if (v6 == 7)
    {
      LODWORD(v6) = v7;
    }

    if (v6 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v6 != 13)
      {
        v14 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v14);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(a1);
    if (Class >= OBJC_CLASS___OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OBJC_CLASS___OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(a1);
    }
  }

  v12 = *(extension_vtable + 12);

  return v12(a1);
}

uint64_t _xpc_is_cyclic(void *a1)
{
  Class = object_getClass(a1);
  if (Class != OS_xpc_array && Class != OS_xpc_dictionary)
  {
    return 0;
  }

  v5[0] = a1;
  v5[1] = 0;
  v5[2] = v5;
  v5[3] = v5;
  memset(&v5[4], 0, 24);
  return _xpc_collection_apply_f(a1, v5) ^ 1;
}

uint64_t _xpc_collection_apply_f(void *a1, uint64_t a2)
{
  Class = object_getClass(a1);
  if (Class == OS_xpc_array)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = ___xpc_collection_apply_f_block_invoke;
    applier[3] = &__block_descriptor_tmp_0;
    applier[4] = _xpc_is_cyclic_helper;
    applier[5] = a2;
    return xpc_array_apply(a1, applier);
  }

  else if (Class == OS_xpc_dictionary)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___xpc_collection_apply_f_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_24;
    v6[4] = _xpc_is_cyclic_helper;
    v6[5] = a2;
    return xpc_dictionary_apply(a1, v6);
  }

  else
  {
    return 1;
  }
}

uint64_t _xpc_is_cyclic_helper(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v25[0] = a1;
  v25[1] = v4 + 1;
  v6 = a2[3];
  v25[2] = v5;
  v26 = v6;
  v27 = 0;
  v28 = a3;
  v29 = a4;
  a2[4] = v25;
  if (v4)
  {
    v6 = v6[4];
    v26 = v6;
  }

  if (*v6 != a1)
  {
    return _xpc_collection_apply_f();
  }

  v8 = string_builder_new(0x100uLL);
  string_builder_appendf(v8, "%p", v9, v10, v11, v12, v13, v14, *v5);
  for (i = v5[4]; i; i = i[4])
  {
    if (i[6])
    {
      v23 = *i;
      string_builder_appendf(v8, "[%s] -> %p", v15, v16, v17, v18, v19, v20, i[6]);
    }

    else
    {
      v22 = i[5];
      v24 = *i;
      string_builder_appendf(v8, "[%zu] -> %p", v15, v16, v17, v18, v19, v20, v22);
    }
  }

  syslog(3, "Encountered XPC object loop: %s", *v8);
  string_builder_destroy(v8);
  return 0;
}

xpc_object_t xpc_copy(xpc_object_t object)
{
  if ((object & 0x8000000000000000) != 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~object & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ object;
    do
    {
      if ((v4 & 7) == *(MEMORY[0x1E69E5900] + v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != 7);
    v5 = v2 | v4;
    v6 = v2 & 7;
    v7 = (v5 >> 55) + 8;
    if (v6 == 7)
    {
      LODWORD(v6) = v7;
    }

    if (v6 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v6 != 13)
      {
        v14 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v14);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(object);
    if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(object);
    }
  }

  v12 = *(extension_vtable + 2);

  return v12(object);
}

BOOL xpc_equal(xpc_object_t object1, xpc_object_t object2)
{
  Class = object_getClass(object1);
  if (Class != object_getClass(object2))
  {
    return 0;
  }

  if ((object1 & 0x8000000000000000) != 0)
  {
    v6 = 0;
    v7 = *MEMORY[0x1E69E5910];
    if ((~object1 & 0xC000000000000007) == 0)
    {
      v7 = 0;
    }

    v8 = v7 ^ object1;
    do
    {
      if ((v8 & 7) == *(MEMORY[0x1E69E5900] + v6))
      {
        break;
      }

      ++v6;
    }

    while (v6 != 7);
    v9 = v6 | v8;
    v10 = v6 & 7;
    v11 = (v9 >> 55) + 8;
    if (v10 == 7)
    {
      LODWORD(v10) = v11;
    }

    if (v10 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v10 != 13)
      {
        v17 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v17);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    v13 = object_getClass(object1);
    if (v13 >= OS_xpc_object && v13 <= OS_xpc_string_cache && (v13 & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (v13 - OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(object1);
    }
  }

  v16 = *(extension_vtable + 3);

  return v16(object1, object2);
}

const char *__cdecl xpc_type_get_name(xpc_type_t type)
{
  if (type >= OBJC_CLASS___OS_xpc_object && type <= OS_xpc_string_cache && (type & 7) == 0)
  {
    extension_type_vtable = &_xpc_vtables + 2 * (type - OBJC_CLASS___OS_xpc_object);
  }

  else
  {
    extension_type_vtable = _xpc_get_extension_type_vtable(type);
    if (!extension_type_vtable)
    {
      return "<unknown>";
    }
  }

  return *(extension_type_vtable + 1);
}

char *xpc_copy_short_description(unint64_t a1)
{
  v2 = _xpc_serializer_create_for_description();
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ a1;
    do
    {
      if ((v5 & 7) == *(MEMORY[0x1E69E5900] + v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != 7);
    v6 = v3 | v5;
    v7 = v3 & 7;
    v8 = (v6 >> 55) + 8;
    if (v7 == 7)
    {
      LODWORD(v7) = v8;
    }

    if (v7 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v7 != 13)
      {
        goto LABEL_60;
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(a1);
    if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(a1);
    }
  }

  if (*(extension_vtable + 5))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v28 = object_getClass(a1);
      if (v28 < OS_xpc_object || v28 > OS_xpc_string_cache || (v28 & 7) != 0)
      {
        v19 = _xpc_get_extension_vtable(a1);
      }

      else
      {
        v19 = (&_xpc_vtables + 2 * (v28 - OS_xpc_object));
      }

      goto LABEL_56;
    }

    v13 = 0;
    v14 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v14 = 0;
    }

    v15 = v14 ^ a1;
    do
    {
      if ((v15 & 7) == *(MEMORY[0x1E69E5900] + v13))
      {
        break;
      }

      ++v13;
    }

    while (v13 != 7);
    v16 = v13 | v15;
    v17 = v13 & 7;
    v18 = (v16 >> 55) + 8;
    if (v17 == 7)
    {
      LODWORD(v17) = v18;
    }

    if (v17 == 12)
    {
      v19 = &_OS_xpc_type_uint64;
      goto LABEL_56;
    }

    if (v17 == 13)
    {
      v19 = &_OS_xpc_type_int64;
LABEL_56:
      (*(v19 + 5))(a1, v2);
      goto LABEL_57;
    }

LABEL_60:
    v31 = _xpc_asprintf("Object is not an XPC object");
    _xpc_api_misuse(v31);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v20 = 0;
    v21 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v21 = 0;
    }

    v22 = v21 ^ a1;
    do
    {
      if ((v22 & 7) == *(MEMORY[0x1E69E5900] + v20))
      {
        break;
      }

      ++v20;
    }

    while (v20 != 7);
    v23 = v20 | v22;
    v24 = v20 & 7;
    v25 = (v23 >> 55) + 8;
    if (v24 == 7)
    {
      LODWORD(v24) = v25;
    }

    if (v24 == 12)
    {
      v26 = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v24 != 13)
      {
        goto LABEL_60;
      }

      v26 = &_OS_xpc_type_int64;
    }
  }

  else
  {
    v27 = object_getClass(a1);
    if (v27 < OS_xpc_object || v27 > OS_xpc_string_cache || (v27 & 7) != 0)
    {
      v26 = _xpc_get_extension_vtable(a1);
    }

    else
    {
      v26 = (&_xpc_vtables + 2 * (v27 - OS_xpc_object));
    }
  }

  (*(v26 + 6))(a1, v2);
LABEL_57:
  v29 = _xpc_strdup(v2[4]);
  xpc_release(v2);
  return v29;
}

char *xpc_copy_clean_description(unint64_t a1)
{
  v2 = _xpc_serializer_create_for_description();
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ a1;
    do
    {
      if ((v5 & 7) == *(MEMORY[0x1E69E5900] + v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != 7);
    v6 = v3 | v5;
    v7 = v3 & 7;
    v8 = (v6 >> 55) + 8;
    if (v7 == 7)
    {
      LODWORD(v7) = v8;
    }

    if (v7 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v7 != 13)
      {
        v15 = _xpc_asprintf("Object is not an XPC object");
        _xpc_api_misuse(v15);
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(a1);
    if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(a1);
    }
  }

  (*(extension_vtable + 6))(a1, v2);
  v13 = _xpc_strdup(v2[4]);
  xpc_release(v2);
  return v13;
}

char *xpc_copy_debug_description(unint64_t a1)
{
  v2 = _xpc_serializer_create_for_description();
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v4 = 0;
    }

    v5 = v4 ^ a1;
    do
    {
      if ((v5 & 7) == *(MEMORY[0x1E69E5900] + v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != 7);
    v6 = v3 | v5;
    v7 = v3 & 7;
    v8 = (v6 >> 55) + 8;
    if (v7 == 7)
    {
      LODWORD(v7) = v8;
    }

    if (v7 == 12)
    {
      extension_vtable = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v7 != 13)
      {
        goto LABEL_60;
      }

      extension_vtable = &_OS_xpc_type_int64;
    }
  }

  else
  {
    Class = object_getClass(a1);
    if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
    {
      extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
    }

    else
    {
      extension_vtable = _xpc_get_extension_vtable(a1);
    }
  }

  if (*(extension_vtable + 7))
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v28 = object_getClass(a1);
      if (v28 < OS_xpc_object || v28 > OS_xpc_string_cache || (v28 & 7) != 0)
      {
        v19 = _xpc_get_extension_vtable(a1);
      }

      else
      {
        v19 = (&_xpc_vtables + 2 * (v28 - OS_xpc_object));
      }

      goto LABEL_56;
    }

    v13 = 0;
    v14 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v14 = 0;
    }

    v15 = v14 ^ a1;
    do
    {
      if ((v15 & 7) == *(MEMORY[0x1E69E5900] + v13))
      {
        break;
      }

      ++v13;
    }

    while (v13 != 7);
    v16 = v13 | v15;
    v17 = v13 & 7;
    v18 = (v16 >> 55) + 8;
    if (v17 == 7)
    {
      LODWORD(v17) = v18;
    }

    if (v17 == 12)
    {
      v19 = &_OS_xpc_type_uint64;
      goto LABEL_56;
    }

    if (v17 == 13)
    {
      v19 = &_OS_xpc_type_int64;
LABEL_56:
      (*(v19 + 7))(a1, v2);
      goto LABEL_57;
    }

LABEL_60:
    v31 = _xpc_asprintf("Object is not an XPC object");
    _xpc_api_misuse(v31);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v20 = 0;
    v21 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v21 = 0;
    }

    v22 = v21 ^ a1;
    do
    {
      if ((v22 & 7) == *(MEMORY[0x1E69E5900] + v20))
      {
        break;
      }

      ++v20;
    }

    while (v20 != 7);
    v23 = v20 | v22;
    v24 = v20 & 7;
    v25 = (v23 >> 55) + 8;
    if (v24 == 7)
    {
      LODWORD(v24) = v25;
    }

    if (v24 == 12)
    {
      v26 = &_OS_xpc_type_uint64;
    }

    else
    {
      if (v24 != 13)
      {
        goto LABEL_60;
      }

      v26 = &_OS_xpc_type_int64;
    }
  }

  else
  {
    v27 = object_getClass(a1);
    if (v27 < OS_xpc_object || v27 > OS_xpc_string_cache || (v27 & 7) != 0)
    {
      v26 = _xpc_get_extension_vtable(a1);
    }

    else
    {
      v26 = (&_xpc_vtables + 2 * (v27 - OS_xpc_object));
    }
  }

  (*(v26 + 6))(a1, v2);
LABEL_57:
  v29 = _xpc_strdup(v2[4]);
  xpc_release(v2);
  return v29;
}

uint64_t _xpc_make_serialization_with_ool_impl(unint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (_xpc_is_cyclic(a1))
  {
    v19 = _xpc_asprintf("Tried to serialize an object containing a cycle");
    goto LABEL_28;
  }

  if (a3)
  {
    v6 = _xpc_serializer_create_for_data();
    v6[13] = a3;
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_4:
      v7 = 0;
      v8 = *MEMORY[0x1E69E5910];
      if ((~a1 & 0xC000000000000007) == 0)
      {
        v8 = 0;
      }

      v9 = v8 ^ a1;
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
        goto LABEL_22;
      }

      if (v11 == 13)
      {
        extension_vtable = &_OS_xpc_type_int64;
        goto LABEL_22;
      }

      v19 = _xpc_asprintf("Object is not an XPC object");
LABEL_28:
      _xpc_api_misuse(v19);
    }
  }

  else
  {
    if (_contains_ool(a1))
    {
      v14 = 0;
      goto LABEL_24;
    }

    v6 = _xpc_serializer_create_for_data();
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  Class = object_getClass(a1);
  if (Class < OS_xpc_object || Class > OS_xpc_string_cache || (Class & 7) != 0)
  {
    extension_vtable = _xpc_get_extension_vtable(a1);
  }

  else
  {
    extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
  }

LABEL_22:
  (*(extension_vtable + 9))(a1, v6);
  v16 = v6[8];
  *a2 = v6[5] - v6[7];
  if (v16 != _xpc_serializer_free)
  {
    _xpc_make_serialization_with_ool_impl_cold_1(&v20, v21);
  }

  v14 = v6[4];
  v6[4] = 0;
  v6[8] = 0;
  xpc_release(v6);
LABEL_24:
  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

id _xpc_create_from_serialization_with_ool_impl(const void *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = _xpc_payload_create_from_data(a1, a2);
  if (result)
  {
    v9 = result;
    v10 = xpc_graph_unpack_with_ool(0, result, a3, a4, a5);
    xpc_release(v9);
    return v10;
  }

  return result;
}

uint64_t _contains_ool(void *a1)
{
  Class = object_getClass(a1);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (Class == OS_xpc_fd)
  {
LABEL_6:
    v6 = 1;
  }

  else
  {
    v3 = -1;
    v4 = off_1E74AA690;
    while (v3 != 6)
    {
      v5 = *v4++;
      ++v3;
      if (v5 == Class)
      {
        if (v3 < 7)
        {
          goto LABEL_6;
        }

        break;
      }
    }

    if (Class == OS_xpc_dictionary)
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 0x40000000;
      applier[2] = ___contains_ool_block_invoke;
      applier[3] = &unk_1E74AA668;
      applier[4] = &v15;
      xpc_dictionary_apply(a1, applier);
      v7 = v16;
    }

    else if (Class == OS_xpc_array)
    {
      count = xpc_array_get_count(a1);
      v7 = v16;
      if (count && (v16[3] & 1) == 0)
      {
        v10 = 0;
        v11 = count - 1;
        do
        {
          value = xpc_array_get_value(a1, v10);
          v13 = _contains_ool(value);
          v7 = v16;
          *(v16 + 24) = v13;
          if (v11 == v10)
          {
            break;
          }

          ++v10;
        }

        while (!v13);
      }
    }

    else
    {
      v7 = &v15;
    }

    v6 = *(v7 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v6 & 1;
}

uint64_t ___contains_ool_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _contains_ool(a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 ^ 1u;
}

unint64_t _xpc_array_copy(uint64_t a1)
{
  v2 = _xpc_array_create(*(a1 + 36));
  if (*(a1 + 32))
  {
    v3 = 0;
    do
    {
      v4 = xpc_copy(*(*(a1 + 24) + 8 * v3));
      _xpc_array_insert(v2, v3, v4);
      xpc_release(v4);
      ++v3;
    }

    while (v3 < *(a1 + 32));
  }

  return v2;
}

BOOL _xpc_array_equal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != *(a2 + 32))
  {
    return 0;
  }

  if (v2)
  {
    v5 = 0;
    do
    {
      v6 = xpc_equal(*(*(a1 + 24) + 8 * v5), *(*(a2 + 24) + 8 * v5));
      v7 = *(a1 + 32);
      if (!v6)
      {
        break;
      }

      ++v5;
    }

    while (v5 < v7);
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  return v5 == v7;
}

uint64_t _xpc_array_hash(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v3 += xpc_hash(*(*(a1 + 24) + 8 * v2++));
  }

  while (v2 < *(a1 + 32));
  return v3;
}

uint64_t _xpc_array_short_desc(uint64_t a1, uint64_t a2)
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
  v3 = snprintf(__str, 0x80uLL, "[<count = %u>]", *(a1 + 32));
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

uint64_t _xpc_array_desc(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *__str = 0u;
  v35 = 0u;
  v4 = snprintf(__str, 0x80uLL, "[<capacity = %u>\n", *(a1 + 36));
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  _xpc_serializer_append(a2, __str, v5, 0);
  v6 = _xpc_serializer_pad(a2);
  if (*(a1 + 32))
  {
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E5900];
    do
    {
      v10 = _xpc_object_pad(__str, 0x80uLL, v7);
      v11 = &__str[v10];
      v12 = 128 - v10;
      if ((128 - v10) < 2)
      {
        v14 = 0;
      }

      else
      {
        v13 = v10;
        v14 = snprintf(&__str[v10], v12, "%lu: ", v8);
        if (v12 <= v14)
        {
          v14 = 127 - v13;
        }
      }

      _xpc_serializer_append(a2, __str, &v11[v14] - __str, 0);
      v15 = *(a1 + 24);
      v16 = *(v15 + 8 * v8);
      if (!v16)
      {
        _xpc_base_desc_cold_1(&v33, v42);
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = 0;
        v18 = *MEMORY[0x1E69E5910];
        if ((~v16 & 0xC000000000000007) == 0)
        {
          v18 = 0;
        }

        v19 = v18 ^ v16;
        do
        {
          if ((v19 & 7) == *(v9 + v17))
          {
            break;
          }

          ++v17;
        }

        while (v17 != 7);
        v20 = v17 | v19;
        v21 = v17 & 7;
        v22 = (v20 >> 55) + 8;
        if (v21 != 7)
        {
          v22 = v21;
        }

        extension_vtable = &_OS_xpc_type_uint64;
        if (v22 != 12)
        {
          if (v22 != 13)
          {
            v32 = _xpc_asprintf("Object is not an XPC object");
            _xpc_api_misuse(v32);
          }

          extension_vtable = &_OS_xpc_type_int64;
        }
      }

      else
      {
        Class = object_getClass(*(v15 + 8 * v8));
        if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
        {
          extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
        }

        else
        {
          extension_vtable = _xpc_get_extension_vtable(v16);
        }
      }

      (*(extension_vtable + 6))(v16, a2);
      v27 = *(a2 + 56) + 1;
      --*(a2 + 48);
      *(a2 + 56) = v27;
      _xpc_serializer_append(a2, "\n", 1uLL, 0);
      ++v8;
    }

    while (v8 < *(a1 + 32));
  }

  _xpc_serializer_unpad(a2);
  v28 = _xpc_object_pad(*(a2 + 48), *(a2 + 56), *(a2 + 112));
  v29 = *(a2 + 56) - v28;
  *(a2 + 48) += v28;
  *(a2 + 56) = v29;
  result = _xpc_serializer_append(a2, "]", 2uLL, 0);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _xpc_array_debug_desc(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *__str = 0u;
  v59 = 0u;
  v4 = snprintf(__str, 0x80uLL, "<%s: %p> { count = %u, capacity = %u, contents =\n", "array", a1, *(a1 + 32), *(a1 + 36));
  if (v4 >= 0x7F)
  {
    v5 = 127;
  }

  else
  {
    v5 = v4;
  }

  _xpc_serializer_append(a2, __str, v5, 0);
  v6 = _xpc_serializer_pad(a2);
  if (*(a1 + 32))
  {
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0x1E69E5900];
    do
    {
      v10 = _xpc_object_pad(__str, 0x80uLL, v7);
      v11 = &__str[v10];
      v12 = 128 - v10;
      if ((128 - v10) < 2)
      {
        v14 = 0;
      }

      else
      {
        v13 = v10;
        v14 = snprintf(&__str[v10], v12, "%lu: ", v8);
        if (v12 <= v14)
        {
          v14 = 127 - v13;
        }
      }

      _xpc_serializer_append(a2, __str, &v11[v14] - __str, 0);
      v15 = *(a1 + 24);
      v16 = *(v15 + 8 * v8);
      if (!v16)
      {
        _xpc_base_desc_cold_1(&v57, v66);
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = 0;
        v18 = *MEMORY[0x1E69E5910];
        if ((~v16 & 0xC000000000000007) == 0)
        {
          v18 = 0;
        }

        v19 = v18 ^ v16;
        do
        {
          if ((v19 & 7) == *(v9 + v17))
          {
            break;
          }

          ++v17;
        }

        while (v17 != 7);
        v20 = v17 | v19;
        v21 = v17 & 7;
        v22 = (v20 >> 55) + 8;
        if (v21 == 7)
        {
          LODWORD(v21) = v22;
        }

        extension_vtable = &_OS_xpc_type_uint64;
        if (v21 != 12)
        {
          if (v21 != 13)
          {
            goto LABEL_82;
          }

          extension_vtable = &_OS_xpc_type_int64;
        }
      }

      else
      {
        Class = object_getClass(*(v15 + 8 * v8));
        if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
        {
          extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
        }

        else
        {
          extension_vtable = _xpc_get_extension_vtable(v16);
        }
      }

      if (*(extension_vtable + 7))
      {
        v27 = *(a1 + 24);
        v28 = *(v27 + 8 * v8);
        if (!v28)
        {
          _xpc_base_desc_cold_1(&v57, v66);
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          v29 = 0;
          v30 = *MEMORY[0x1E69E5910];
          if ((~v28 & 0xC000000000000007) == 0)
          {
            v30 = 0;
          }

          v31 = v30 ^ v28;
          do
          {
            if ((v31 & 7) == *(v9 + v29))
            {
              break;
            }

            ++v29;
          }

          while (v29 != 7);
          v32 = v29 | v31;
          v33 = v29 & 7;
          v34 = (v32 >> 55) + 8;
          if (v33 != 7)
          {
            v34 = v33;
          }

          v35 = &_OS_xpc_type_uint64;
          if (v34 != 12)
          {
            if (v34 != 13)
            {
              goto LABEL_82;
            }

            v35 = &_OS_xpc_type_int64;
          }
        }

        else
        {
          v48 = object_getClass(*(v27 + 8 * v8));
          if (v48 >= OS_xpc_object && v48 <= OS_xpc_string_cache && (v48 & 7) == 0)
          {
            v35 = (&_xpc_vtables + 2 * (v48 - OS_xpc_object));
          }

          else
          {
            v35 = _xpc_get_extension_vtable(v28);
          }
        }

        (*(v35 + 7))(v28, a2);
      }

      else
      {
        v36 = *(a1 + 24);
        v37 = *(v36 + 8 * v8);
        if (!v37)
        {
          _xpc_base_desc_cold_1(&v57, v66);
        }

        if ((v37 & 0x8000000000000000) != 0)
        {
          v38 = 0;
          v39 = *MEMORY[0x1E69E5910];
          if ((~v37 & 0xC000000000000007) == 0)
          {
            v39 = 0;
          }

          v40 = v39 ^ v37;
          do
          {
            if ((v40 & 7) == *(v9 + v38))
            {
              break;
            }

            ++v38;
          }

          while (v38 != 7);
          v41 = v38 | v40;
          v42 = v38 & 7;
          v43 = (v41 >> 55) + 8;
          if (v42 != 7)
          {
            v43 = v42;
          }

          v44 = &_OS_xpc_type_uint64;
          if (v43 != 12)
          {
            if (v43 != 13)
            {
LABEL_82:
              v56 = _xpc_asprintf("Object is not an XPC object");
              _xpc_api_misuse(v56);
            }

            v44 = &_OS_xpc_type_int64;
          }
        }

        else
        {
          v45 = object_getClass(*(v36 + 8 * v8));
          if (v45 >= OS_xpc_object && v45 <= OS_xpc_string_cache && (v45 & 7) == 0)
          {
            v44 = (&_xpc_vtables + 2 * (v45 - OS_xpc_object));
          }

          else
          {
            v44 = _xpc_get_extension_vtable(v37);
          }
        }

        (*(v44 + 6))(v37, a2);
      }

      v51 = *(a2 + 56) + 1;
      --*(a2 + 48);
      *(a2 + 56) = v51;
      _xpc_serializer_append(a2, "\n", 1uLL, 0);
      ++v8;
    }

    while (v8 < *(a1 + 32));
  }

  _xpc_serializer_unpad(a2);
  v52 = _xpc_object_pad(*(a2 + 48), *(a2 + 56), *(a2 + 112));
  v53 = *(a2 + 56) - v52;
  *(a2 + 48) += v52;
  *(a2 + 56) = v53;
  result = _xpc_serializer_append(a2, "}", 2uLL, 0);
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *_xpc_array_serialize(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  __src = 57344;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v24 = 0;
  graph_length = _xpc_serializer_get_graph_length(a2);
  _xpc_serializer_append(a2, &v24, 4uLL, 1);
  v23 = *(a1 + 32);
  _xpc_serializer_append(a2, &v23, 4uLL, 1);
  if (*(a1 + 32))
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E5900];
    do
    {
      v6 = *(a1 + 24);
      v7 = *(v6 + 8 * v4);
      if (!v7)
      {
        _xpc_base_desc_cold_1(&v26, v27);
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = 0;
        v9 = *MEMORY[0x1E69E5910];
        if ((~v7 & 0xC000000000000007) == 0)
        {
          v9 = 0;
        }

        v10 = v9 ^ v7;
        do
        {
          if ((v10 & 7) == *(v5 + v8))
          {
            break;
          }

          ++v8;
        }

        while (v8 != 7);
        v11 = v8 | v10;
        v12 = v8 & 7;
        v13 = (v11 >> 55) + 8;
        if (v12 != 7)
        {
          v13 = v12;
        }

        extension_vtable = &_OS_xpc_type_uint64;
        if (v13 != 12)
        {
          if (v13 != 13)
          {
            v21 = _xpc_asprintf("Object is not an XPC object");
            _xpc_api_misuse(v21);
          }

          extension_vtable = &_OS_xpc_type_int64;
        }
      }

      else
      {
        Class = object_getClass(*(v6 + 8 * v4));
        if (Class >= OS_xpc_object && Class <= OS_xpc_string_cache && (Class & 7) == 0)
        {
          extension_vtable = (&_xpc_vtables + 2 * (Class - OS_xpc_object));
        }

        else
        {
          extension_vtable = _xpc_get_extension_vtable(v7);
        }
      }

      (*(extension_vtable + 9))(v7, a2);
      ++v4;
    }

    while (v4 < *(a1 + 32));
  }

  result = _xpc_serializer_get_graph_length(a2);
  v19 = result - graph_length - 4;
  if (!HIDWORD(v19))
  {
    result = _xpc_serializer_get_graph_ptr(a2, graph_length);
    *result = v19;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *_xpc_array_deserialize(uint64_t a1)
{
  if (!_xpc_graph_deserializer_read(a1, 4uLL))
  {
    return 0;
  }

  v2 = _xpc_graph_deserializer_read(a1, 4uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (HIBYTE(*v2))
  {
    return 0;
  }

  depth = _xpc_graph_deserializer_get_depth(a1);
  v5 = _xpc_array_create(v3);
  v5[4] |= 1u;
  v6 = 0;
  if (v3)
  {
    while (1)
    {
      v7 = _xpc_graph_deserializer_read(a1, 4uLL);
      if (!v7)
      {
        break;
      }

      v8 = *v7;
      if (_xpc_class_id_valid(*v7))
      {
        if ((v8 == 57344 || v8 == 0x10000 || v8 == 61440) && !_xpc_graph_deserializer_enter_container(a1))
        {
          break;
        }

        v9 = _xpc_deserialize_from_wire_id(v8);
        v10 = v9(a1);
        if (!v10)
        {
          break;
        }

        v11 = v10;
        _xpc_array_insert(v5, v6, v10);
        xpc_release(v11);
      }

      else
      {
        if (!_xpc_class_id_from_wire_valid(v8))
        {
          break;
        }

        v12 = xpc_null_create();
        _xpc_array_insert(v5, v6, v12);
        xpc_release(v12);
        v13 = _xpc_graph_deserializer_skip_value(a1, v8);
        if (!v12 || !v13)
        {
          break;
        }
      }

      _xpc_graph_deserializer_restore_depth(a1, depth);
      if (v3 == ++v6)
      {
        return v5;
      }
    }
  }

  if (v6 != v3)
  {
    xpc_release(v5);
    return 0;
  }

  return v5;
}

void _xpc_array_dispose(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    do
    {
      xpc_release(*(*(a1 + 24) + 8 * v2++));
    }

    while (v2 < *(a1 + 32));
  }

  v3 = *(a1 + 24);

  free(v3);
}

uint64_t xpc_array_apply_f(uint64_t result, uint64_t a2, uint64_t (*a3)(unint64_t, void, uint64_t))
{
  if (*(result + 32))
  {
    v5 = result;
    v6 = 0;
    v7 = *(result + 40);
    do
    {
      result = a3(v6, *(*(v5 + 24) + 8 * v6), a2);
      if (*(v5 + 40) != v7)
      {
        v8 = _xpc_asprintf("Array mutated during iteration");
        _xpc_api_misuse(v8);
      }

      ++v6;
    }

    while (v6 < *(v5 + 32));
  }

  return result;
}

void xpc_array_set_pointer(void *a1, size_t a2, uint64_t a3)
{
  v5 = xpc_pointer_create(a3);
  xpc_array_set_value(a1, a2, v5);

  xpc_release(v5);
}

void xpc_array_set_value(xpc_object_t xarray, size_t index, xpc_object_t value)
{
  if (xpc_get_type(xarray) != OS_xpc_array)
  {
    type = xpc_get_type(xarray);
    class_getName(type);
    class_getName(OS_xpc_array);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_12;
  }

  if (index != -1)
  {
    if (*(xarray + 8) > index)
    {
      ++*(xarray + 10);

      _xpc_array_insert(xarray, index, value);
      return;
    }

    v7 = _xpc_asprintf("Out-of-bounds array insertion attempt.");
LABEL_12:
    _xpc_api_misuse(v7);
  }

  ++*(xarray + 10);

  xpc_array_append_value(xarray, value);
}

uint64_t xpc_array_get_pointer(void *a1, size_t a2)
{
  value = xpc_array_get_value(a1, a2);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_pointer)
  {
    return 0;
  }

  return xpc_pointer_get_value(v3);
}

xpc_object_t xpc_array_get_value(xpc_object_t xarray, size_t index)
{
  if (xpc_get_type(xarray) != OS_xpc_array)
  {
    return 0;
  }

  if (*(xarray + 8) <= index)
  {
    v5 = _xpc_asprintf("Attempt to access an out-of-bounds index.");
    _xpc_api_misuse(v5);
  }

  return *(*(xarray + 3) + 8 * index);
}

void xpc_array_set_mach_send(void *a1, size_t a2, mach_port_name_t a3)
{
  v5 = xpc_mach_send_create(a3);
  xpc_array_set_value(a1, a2, v5);

  xpc_release(v5);
}

uint64_t xpc_array_copy_mach_send(void *a1, size_t a2)
{
  value = xpc_array_get_value(a1, a2);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_mach_send)
  {
    return 0;
  }

  return xpc_mach_send_copy_right(v3);
}

xpc_object_t xpc_array_create(xpc_object_t *objects, size_t count)
{
  v2 = count + 4;
  if (((count >= 0xFFFFFFFFFFFFFFFCLL) << 63) >> 63 != count >= 0xFFFFFFFFFFFFFFFCLL || (v2 & 0x8000000000000000) != 0)
  {
    xpc_array_create_cold_1();
  }

  v5 = _xpc_array_create(2 * v2);
  if (count)
  {
    v6 = 0;
    do
    {
      _xpc_array_insert(v5, v6, objects[v6]);
      ++v6;
    }

    while (count != v6);
  }

  return v5;
}

unint64_t _xpc_array_create(unint64_t result)
{
  if (HIDWORD(result) || (v1 = result, result = _xpc_base_create(OS_xpc_array, 24), *(result + 20) = 8, v1 >> 29))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    *(result + 24) = _xpc_alloc_typed(8 * v1, 0x5FC349A5uLL);
    *(v2 + 36) = v1;
    return v2;
  }

  return result;
}

void _xpc_array_insert(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  v4 = *(*(a1 + 24) + 8 * a2);
  *(*(a1 + 24) + 8 * a2) = xpc_retain(object);
  if (v4)
  {
    --*(a1 + 32);
    xpc_release(v4);
  }

  ++*(a1 + 32);
}

xpc_object_t xpc_array_create_empty(void)
{
  v0 = _xpc_base_create(OS_xpc_array, 24);
  *(v0 + 20) = 8;
  *(v0 + 24) = _xpc_alloc_typed(0x40uLL, 0x5FC349A5uLL);
  *(v0 + 36) = 8;
  return v0;
}

void xpc_array_append_value(xpc_object_t xarray, xpc_object_t value)
{
  if (xpc_get_type(xarray) != OS_xpc_array)
  {
    goto LABEL_13;
  }

  v4 = *(xarray + 9);
  ++*(xarray + 10);
  v5 = *(xarray + 8);
  if (v5 == v4)
  {
    if (v5)
    {
      if ((v5 & 0x80000000) != 0)
      {
        __break(1u);
        return;
      }

      v6 = 2 * v5;
    }

    else
    {
      v6 = 8;
    }

    if (xpc_get_type(xarray) == OS_xpc_array)
    {
      if (v6 >= *(xarray + 9))
      {
        v7 = _xpc_alloc_typed(8 * v6, 0xD1A535E1uLL);
        v8 = *(xarray + 3);
        memcpy(v7, v8, 8 * *(xarray + 8));
        free(v8);
        *(xarray + 3) = v7;
        *(xarray + 9) = v6;
        LODWORD(v5) = *(xarray + 8);
        goto LABEL_10;
      }

      v10 = _xpc_asprintf("Attempt to grow an array to a smaller size.");
LABEL_15:
      _xpc_api_misuse(v10);
    }

LABEL_13:
    type = xpc_get_type(xarray);
    class_getName(type);
    class_getName(OS_xpc_array);
    v10 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_15;
  }

LABEL_10:

  _xpc_array_insert(xarray, v5, value);
}

size_t xpc_array_get_count(xpc_object_t xarray)
{
  if (xpc_get_type(xarray) == OS_xpc_array)
  {
    return *(xarray + 8);
  }

  else
  {
    return 0;
  }
}

BOOL xpc_array_apply(xpc_object_t xarray, xpc_array_applier_t applier)
{
  if (xpc_get_type(xarray) != OS_xpc_array)
  {
    type = xpc_get_type(xarray);
    class_getName(type);
    class_getName(OS_xpc_array);
    v7 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_9;
  }

  if (*(xarray + 8))
  {
    v4 = 0;
    v5 = *(xarray + 10);
    while (1)
    {
      result = (*(applier + 2))(applier, v4, *(*(xarray + 3) + 8 * v4));
      if (*(xarray + 10) != v5)
      {
        break;
      }

      if (++v4 >= *(xarray + 8) || !result)
      {
        return result;
      }
    }

    v7 = _xpc_asprintf("Array mutated during iteration");
LABEL_9:
    _xpc_api_misuse(v7);
  }

  return 1;
}

void xpc_array_set_BOOL(xpc_object_t xarray, size_t index, BOOL value)
{
  v5 = xpc_BOOL_create(value);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

void xpc_array_set_int64(xpc_object_t xarray, size_t index, int64_t value)
{
  v5 = xpc_int64_create(value);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

void xpc_array_set_uint64(xpc_object_t xarray, size_t index, uint64_t value)
{
  v5 = xpc_uint64_create(value);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

void xpc_array_set_double(xpc_object_t xarray, size_t index, double value)
{
  v5 = xpc_double_create(value);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

void xpc_array_set_date(xpc_object_t xarray, size_t index, int64_t value)
{
  v5 = xpc_date_create(value);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

void xpc_array_set_data(xpc_object_t xarray, size_t index, const void *bytes, size_t length)
{
  v6 = xpc_data_create(bytes, length);
  xpc_array_set_value(xarray, index, v6);

  xpc_release(v6);
}

void xpc_array_set_string(xpc_object_t xarray, size_t index, const char *string)
{
  v5 = xpc_string_create(string);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

void xpc_array_set_uuid(xpc_object_t xarray, size_t index, const unsigned __int8 *uuid)
{
  v5 = xpc_uuid_create(uuid);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

void xpc_array_set_fd(xpc_object_t xarray, size_t index, int fd)
{
  v5 = xpc_fd_create(fd);
  if (v5)
  {
    v6 = v5;
    xpc_array_set_value(xarray, index, v5);

    xpc_release(v6);
  }
}

void xpc_array_set_connection(xpc_object_t xarray, size_t index, xpc_connection_t connection)
{
  v5 = xpc_endpoint_create(connection);
  xpc_array_set_value(xarray, index, v5);

  xpc_release(v5);
}

BOOL xpc_array_get_BOOL(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_BOOL)
  {
    return 0;
  }

  return xpc_BOOL_get_value(v3);
}

int64_t xpc_array_get_int64(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_int64)
  {
    return 0;
  }

  return xpc_int64_get_value(v3);
}

uint64_t xpc_array_get_uint64(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_uint64)
  {
    return 0;
  }

  return xpc_uint64_get_value(v3);
}

double xpc_array_get_double(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (!value)
  {
    return NAN;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_double)
  {
    return NAN;
  }

  return xpc_double_get_value(v3);
}

int64_t xpc_array_get_date(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_date)
  {
    return 0;
  }

  return xpc_date_get_value(v3);
}

const void *__cdecl xpc_array_get_data(xpc_object_t xarray, size_t index, size_t *length)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = 0;
  value = xpc_array_get_value(xarray, index);
  if (value)
  {
    v5 = value;
    if (xpc_get_type(value) == OS_xpc_data && !xpc_data_get_bytes_ptr_and_length(v5, &v9, &v10))
    {
      xpc_array_get_data_cold_1(&v8, v11);
    }
  }

  if (length)
  {
    *length = v10;
  }

  result = v9;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

const char *__cdecl xpc_array_get_string(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_string)
  {
    return 0;
  }

  return xpc_string_get_string_ptr(v3);
}

const uint8_t *__cdecl xpc_array_get_uuid(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
  if (!value)
  {
    return 0;
  }

  v3 = value;
  if (xpc_get_type(value) != OS_xpc_uuid)
  {
    return 0;
  }

  return xpc_uuid_get_bytes(v3);
}

int xpc_array_dup_fd(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
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

xpc_connection_t xpc_array_create_connection(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
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

xpc_object_t xpc_array_get_dictionary(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
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

xpc_object_t xpc_array_get_array(xpc_object_t xarray, size_t index)
{
  value = xpc_array_get_value(xarray, index);
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

double xpc_binprefs_alloc()
{
  v0 = _xpc_alloc_typed(0x24uLL, 0x10000408AA14F5FuLL);
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  *(v0 + 8) = 0;
  return result;
}

double xpc_binprefs_init(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t xpc_binprefs_add(uint64_t result, int a2, int a3)
{
  v3 = *(result + 32);
  if (v3 >= 4)
  {
    return _os_assumes_log();
  }

  *(result + 4 * v3) = a2;
  *(result + 4 * (*(result + 32))++ + 16) = a3;
  return result;
}

uint64_t xpc_binprefs_cpu_type(uint64_t a1, unsigned int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) <= a2)
  {
    xpc_binprefs_cpu_type_cold_1(&v4, v5);
  }

  result = *(a1 + 4 * a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xpc_binprefs_cpu_subtype(uint64_t a1, unsigned int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) <= a2)
  {
    xpc_binprefs_cpu_type_cold_1(&v4, v5);
  }

  result = *(a1 + 4 * a2 + 16);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL xpc_binprefs_equal(uint64_t a1, uint64_t a2)
{
  result = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 32);
    if (v5 == *(a2 + 32))
    {
      if (!v5)
      {
        return 1;
      }

      v6 = 0;
      while (1)
      {
        v7 = xpc_binprefs_cpu_type(a1, v6);
        if (v7 != xpc_binprefs_cpu_type(a2, v6))
        {
          break;
        }

        v8 = xpc_binprefs_cpu_subtype(a1, v6);
        if (v8 != xpc_binprefs_cpu_subtype(a2, v6))
        {
          break;
        }

        if (++v6 >= *(a1 + 32))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

char *xpc_binprefs_copy_description(uint64_t a1)
{
  if (a1)
  {
    v3 = string_builder_new(0x80uLL);
    string_builder_appendf(v3, "%d: [", v4, v5, v6, v7, v8, v9, *(a1 + 32));
    if (*(a1 + 32))
    {
      v16 = 0;
      do
      {
        if (v16)
        {
          string_builder_appendf(v3, ", ", v10, v11, v12, v13, v14, v15, v26);
        }

        v17 = xpc_binprefs_cpu_type(a1, v16);
        xpc_binprefs_cpu_subtype(a1, v16);
        string_builder_appendf(v3, "%d.%d", v18, v19, v20, v21, v22, v23, v17);
        ++v16;
      }

      while (v16 < *(a1 + 32));
    }

    string_builder_appendf(v3, "]", v10, v11, v12, v13, v14, v15, v26);
    v24 = string_builder_copy_string(v3);
    string_builder_destroy(v3);
    return v24;
  }

  else
  {

    return _xpc_strdup("(null)");
  }
}

uint64_t xpc_binprefs_set_psattr(cpu_type_t *a1, posix_spawnattr_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = posix_spawnattr_setarchpref_np(a2, a1[8], a1, a1 + 4, 0);
  if (result)
  {
    xpc_binprefs_set_psattr_cold_1(&v4, v5);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void xpc_traverse_serialized_data(const void *a1, size_t a2, uint64_t a3)
{
  v12 = 1;
  (*(a3 + 16))(a3, 0, 0);
  v6 = _xpc_payload_create_from_data_no_copy(a1, a2);
  if (v6)
  {
    v7 = v6;
    memset(v11, 0, sizeof(v11));
    _xpc_graph_deserializer_init(v11, v6);
    if (_xpc_graph_unpack_header(v11, 3))
    {
      v8 = _xpc_graph_deserializer_read(v11, 4uLL);
      if (v8)
      {
        v9 = *v8;
        if (_xpc_class_id_valid(*v8))
        {
          if (v9 == 57344)
          {
            v10 = _xpc_traverse_array(v11, a3);
          }

          else if (v9 == 61440)
          {
            v10 = _xpc_traverse_dictionary(v11, a3);
          }

          else
          {
            v10 = _xpc_traverse_simple(v11, v9, a3);
          }

          v12 = v10;
        }
      }
    }

    (*(a3 + 16))(a3, 1, &v12);
    xpc_release(v7);
  }

  else
  {
    (*(a3 + 16))(a3, 1, &v12);
  }
}

uint64_t _xpc_traverse_dictionary(uint64_t *a1, uint64_t a2)
{
  if (off_1F0B9B128() == -1)
  {
    return 1;
  }

  v4 = _xpc_graph_deserializer_read(a1, 4uLL);
  if (!v4)
  {
    return 1;
  }

  v5 = *v4;
  if (v5 > 0x1000000)
  {
    return 1;
  }

  v20[0] = OS_xpc_dictionary;
  v20[1] = v5;
  v6 = 2;
  v8 = (*(a2 + 16))(a2, 2, v20);
  if (v8)
  {
    if (v8 != 3)
    {
      _xpc_traverse_dictionary_cold_2();
    }
  }

  else
  {
    depth = _xpc_graph_deserializer_get_depth(a1);
    if (v5)
    {
      v10 = depth;
      do
      {
        string = _xpc_graph_deserializer_read_string(a1);
        if (!string)
        {
          return 1;
        }

        v12 = string;
        v13 = _xpc_graph_deserializer_read(a1, 4uLL);
        if (!v13)
        {
          return 1;
        }

        v14 = *v13;
        if (!_xpc_class_id_valid(*v13))
        {
          return 1;
        }

        v18 = v12;
        v19 = 0;
        v19 = _xpc_type_from_id(v14);
        v15 = (*(a2 + 16))(a2, 5, &v18);
        v16 = _xt_do_container_element_action(a1, v15, a2, v14, v10);
        if (v16)
        {
          return v16;
        }

        LODWORD(v5) = v5 - 1;
      }

      while (v5);
    }

    v17 = (*(a2 + 16))(a2, 3, 0);
    if (v17)
    {
      if (v17 != 3)
      {
        _xpc_traverse_dictionary_cold_1();
      }

      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t _xpc_traverse_array(uint64_t a1, uint64_t a2)
{
  if (off_1F0B9B088() == -1)
  {
    return 1;
  }

  v4 = _xpc_graph_deserializer_read(a1, 4uLL);
  if (!v4)
  {
    return 1;
  }

  v5 = *v4;
  if (v5 > 0x1000000)
  {
    return 1;
  }

  v19[0] = OS_xpc_array;
  v19[1] = v5;
  v6 = 2;
  v8 = (*(a2 + 16))(a2, 2, v19);
  if (v8)
  {
    if (v8 != 3)
    {
      _xpc_traverse_array_cold_2();
    }
  }

  else
  {
    depth = _xpc_graph_deserializer_get_depth(a1);
    if (v5)
    {
      v10 = depth;
      v11 = 0;
      do
      {
        v12 = _xpc_graph_deserializer_read(a1, 4uLL);
        if (!v12)
        {
          return 1;
        }

        v13 = *v12;
        if (!_xpc_class_id_valid(*v12))
        {
          return 1;
        }

        v17 = v11;
        v18 = 0;
        v18 = _xpc_type_from_id(v13);
        v14 = (*(a2 + 16))(a2, 4, &v17);
        v15 = _xt_do_container_element_action(a1, v14, a2, v13, v10);
        if (v15)
        {
          return v15;
        }
      }

      while (v5 != ++v11);
    }

    v16 = (*(a2 + 16))(a2, 3, 0);
    if (v16)
    {
      if (v16 != 3)
      {
        _xpc_traverse_array_cold_1();
      }

      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t _xpc_traverse_simple(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v10 = _xpc_type_from_id(a2);
  HIDWORD(v7) = a2 - 0x2000;
  LODWORD(v7) = a2 - 0x2000;
  v6 = v7 >> 12;
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        v11 = off_1F0B9A908();
        if (_xpc_BOOL_get_wire_value(a1, &v12))
        {
          goto LABEL_26;
        }

        return 1;
      }

      if (v6 == 1)
      {
        v11 = off_1F0B9A9A8();
        if (_xpc_date_get_wire_value(a1, &v12))
        {
          goto LABEL_26;
        }

        return 1;
      }

      goto LABEL_29;
    }

    if (v6 == 2)
    {
      v11 = off_1F0B9AA48();
      if (!_xpc_date_get_wire_value(a1, &v12))
      {
        return 1;
      }
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_29;
      }

      v11 = off_1F0B9AAE8();
      if (!_xpc_double_get_wire_value(a1, &v12))
      {
        return 1;
      }
    }

LABEL_26:
    result = (*(a3 + 16))(a3, 6, &v10);
    if (result)
    {
      if (result != 3)
      {
        _xpc_traverse_simple_cold_1();
      }

      return 2;
    }

    return result;
  }

  if (v6 <= 6)
  {
    if (v6 == 5)
    {
      v11 = off_1F0B9AC28();
      if (!_xpc_date_get_wire_value(a1, &v12))
      {
        return 1;
      }
    }

    else if ((_xpc_data_get_wire_value(a1, &v12, &v11) & 1) == 0)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (v6 == 7)
  {
    if (_xpc_string_get_wire_value(a1, &v12, &v11))
    {
      goto LABEL_26;
    }

    return 1;
  }

  if (v6 == 8)
  {
    v11 = off_1F0B9AE08();
    if (!_xpc_uuid_get_wire_value(a1, &v12))
    {
      return 1;
    }

    goto LABEL_26;
  }

LABEL_29:
  v9 = _xpc_graph_deserializer_skip_value(a1, a2);
  if (!v9)
  {
    _os_assumes_log();
  }

  return !v9;
}

uint64_t _xt_do_container_element_action(uint64_t *a1, int a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return 0;
      }

      return 2;
    }
  }

  else if (a2)
  {
    if (a2 == 1 && !_xpc_graph_deserializer_skip_value(a1, a4))
    {
      _os_assumes_log();
      return 1;
    }

    return 0;
  }

  v11 = a4 & 0xFFFFEFFF;
  if ((a4 & 0xFFFFEFFF) != 0xE000 || (result = _xpc_graph_deserializer_enter_container(a1), result))
  {
    if (a2 != 2)
    {
      if (a4 == 61440)
      {
        result = _xpc_traverse_dictionary(a1, a3);
        if (result)
        {
          return result;
        }
      }

      else if (a4 == 57344)
      {
        result = _xpc_traverse_array(a1, a3);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = _xpc_traverse_simple(a1, a4, a3);
        if (result)
        {
          return result;
        }
      }

      goto LABEL_23;
    }

    v12 = _xpc_deserialize_from_wire_id(a4);
    v13 = v12(a1);
    if (!v13)
    {
      return 1;
    }

    v14 = v13;
    v15 = (*(a3 + 16))(a3, 7, v13);
    xpc_release(v14);
    if (v15 != 3)
    {
LABEL_23:
      if (v11 == 57344)
      {
        _xpc_graph_deserializer_restore_depth(a1, a5);
      }

      return 0;
    }

    return 2;
  }

  return result;
}

xpc_object_t launch_socket_service_check_in()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v0, "type", 6uLL);
  xpc_dictionary_set_uint64(v0, "handle", 0);
  v2 = 0;
  _xpc_launch_routine(101, v0, &v2);
  xpc_release(v0);
  return v2;
}

xpc_object_t _launch_msg2(void *a1, int a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (a2 == 2)
  {
    v7 = 3;
  }

  else if (a2 == 1)
  {
    if (a3 == -1)
    {
      a3 = getuid();
    }

    v7 = 2;
  }

  else
  {
    a3 = 0;
    v7 = 7;
  }

  xpc_dictionary_set_uint64(v6, "type", v7);
  xpc_dictionary_set_uint64(v6, "handle", a3);
  xpc_dictionary_set_value(v6, "request", a1);
  v9 = 0;
  _xpc_launch_routine(100, v6, &v9);
  xpc_release(v6);
  return v9;
}

uint64_t (*reboot2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))()
{
  v8 = reboot3(a1, a2, a3, a4, a5, a6, a7, a8, v10);
  if (!v8)
  {
    return 0;
  }

  *__error() = v8;
  return reboot2;
}

uint64_t reboot3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "type", 1uLL);
  xpc_dictionary_set_uint64(v10, "handle", 0);
  xpc_dictionary_set_uint64(v10, "flags", a1);
  v16 = &a9;
  if ((a1 & 0x100000000000000) != 0)
  {
    v11 = v16++;
    v12 = *v11;
    if ((v12 - 1) > 0x63)
    {
      return 22;
    }

    xpc_dictionary_set_uint64(v10, "userreboot_purpose", v12);
  }

  v15 = 0;
  v13 = _xpc_domain_routine(821, v10, &v15);
  xpc_release(v10);
  return v13;
}

launch_data_t launch_data_alloc(launch_data_type_t type)
{
  if (type > LAUNCH_DATA_REAL)
  {
    if (type <= LAUNCH_DATA_STRING)
    {
      if (type == LAUNCH_DATA_BOOL)
      {

        return _xpc_BOOL_create_distinct(0);
      }

      else
      {

        return xpc_string_create("");
      }
    }

    switch(type)
    {
      case LAUNCH_DATA_OPAQUE:

        return xpc_data_create("", 1uLL);
      case LAUNCH_DATA_ERRNO:

        return xpc_uint64_create(0);
      case LAUNCH_DATA_MACHPORT:
        goto LABEL_35;
    }

    return 0;
  }

  if (type <= LAUNCH_DATA_ARRAY)
  {
    if (type == LAUNCH_DATA_DICTIONARY)
    {

      return xpc_dictionary_create(0, 0, 0);
    }

    if (type == LAUNCH_DATA_ARRAY)
    {

      return xpc_array_create(0, 0);
    }

    return 0;
  }

  if (type != LAUNCH_DATA_INTEGER)
  {
    if (type == LAUNCH_DATA_REAL)
    {

      return xpc_double_create(0.0);
    }

LABEL_35:
    v2 = _xpc_asprintf("This is not what you want to do.");
    _xpc_api_misuse(v2);
  }

  return xpc_int64_create(0);
}

launch_data_type_t launch_data_get_type(const launch_data_t ld)
{
  type = xpc_get_type(ld);
  if (type == OS_xpc_dictionary)
  {
    return 1;
  }

  if (type == OS_xpc_array)
  {
    return 2;
  }

  if (type == OS_xpc_fd)
  {
    return 3;
  }

  if (type == OS_xpc_int64)
  {
    return 4;
  }

  if (type == OS_xpc_double)
  {
    return 5;
  }

  if (type == OS_xpc_BOOL)
  {
    return 6;
  }

  if (type == OS_xpc_string)
  {
    return 7;
  }

  if (type == OS_xpc_mach_recv)
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  if (type == OS_xpc_uint64)
  {
    v3 = LAUNCH_DATA_ERRNO;
  }

  else
  {
    v3 = v2;
  }

  if (type == OS_xpc_data)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

BOOL launch_data_dict_insert(launch_data_t ldict, const launch_data_t lval, const char *key)
{
  xpc_dictionary_set_value(ldict, key, lval);
  xpc_release(lval);
  return 1;
}

launch_data_t launch_data_dict_lookup(const launch_data_t ldict, const char *key)
{
  if (launch_data_get_type(ldict) != LAUNCH_DATA_DICTIONARY)
  {
    return 0;
  }

  return xpc_dictionary_get_value(ldict, key);
}

void launch_data_dict_iterate(const launch_data_t ldict, launch_data_dict_iterator_t iterator, void *ctx)
{
  v3[0] = iterator;
  v3[1] = ctx;
  xpc_dictionary_apply_f(ldict, v3, _launch_data_dict_iterate_apply);
}

BOOL launch_data_array_set_index(launch_data_t larray, const launch_data_t lval, size_t idx)
{
  count = xpc_array_get_count(larray);
  if (count <= idx)
  {
    if (count != idx)
    {
      v8 = _xpc_asprintf("Out-of-bounds launch array insertion attempt.");
      _xpc_api_misuse(v8);
    }

    xpc_array_append_value(larray, lval);
  }

  else
  {
    xpc_array_set_value(larray, idx, lval);
  }

  xpc_release(lval);
  return 1;
}

void *__cdecl launch_data_get_opaque(const launch_data_t ld)
{
  v2 = 0;
  v3 = 0;
  if (xpc_data_get_bytes_ptr_and_length(ld, &v2, &v3))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

size_t launch_data_get_opaque_size(const launch_data_t ld)
{
  v2 = 0;
  v3 = 0;
  if (xpc_data_get_bytes_ptr_and_length(ld, &v2, &v3))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

launch_data_t launch_msg(const launch_data_t request)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v2, "type", 7uLL);
  xpc_dictionary_set_uint64(v2, "handle", 0);
  xpc_dictionary_set_value(v2, "request", request);
  if (xpc_get_type(request) == OS_xpc_dictionary && xpc_dictionary_get_BOOL(request, "_TargetLocalDomain"))
  {
    xpc_dictionary_set_uint64(v2, "type", 6uLL);
  }

  v4 = 0;
  _xpc_launch_routine(100, v2, &v4);
  xpc_release(v2);
  return v4;
}

uint64_t _xpc_BOOL_hash(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 45057;
  }

  else
  {
    return 4107;
  }
}

uint64_t _xpc_BOOL_desc(uint64_t a1, uint64_t a2)
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
  if (*(a1 + 24))
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  v4 = snprintf(__str, 0x80uLL, "%s", v3);
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

uint64_t _xpc_BOOL_debug_desc(_BYTE *a1, uint64_t a2)
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
  if (a1[24])
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  v4 = snprintf(__str, 0x80uLL, "<%s: %p>: %s", "BOOL", a1, v3);
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

uint64_t _xpc_BOOL_debug(uint64_t a1, char *__str, size_t __size)
{
  if (*(a1 + 24))
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  return snprintf(__str, __size, ", value = %s", v3);
}

uint64_t _xpc_BOOL_serialize(uint64_t a1, uint64_t a2)
{
  __src = 0x2000;
  _xpc_serializer_append(a2, &__src, 4uLL, 1);
  v5 = *(a1 + 24);
  return _xpc_serializer_append(a2, &v5, 4uLL, 1);
}

__objc2_class **_xpc_BOOL_deserialize(uint64_t a1)
{
  result = _xpc_graph_deserializer_read(a1, 4uLL);
  if (result)
  {
    if (*result)
    {
      if (*result == 1)
      {
        return &_xpc_BOOL_true;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return &_xpc_BOOL_false;
    }
  }

  return result;
}

uint64_t _xpc_BOOL_create_distinct(char a1)
{
  result = _xpc_base_create(OS_xpc_BOOL, 8);
  *(result + 20) = 4;
  *(result + 24) = a1;
  return result;
}

uint64_t _xpc_BOOL_get_wire_value(uint64_t a1, _BYTE *a2)
{
  result = _xpc_graph_deserializer_read(a1, 4uLL);
  if (result)
  {
    v4 = *result;
    if (*result && v4 != 1)
    {
      return 0;
    }

    else
    {
      *a2 = v4;
      return 1;
    }
  }

  return result;
}

xpc_object_t xpc_BOOL_create(BOOL value)
{
  if (value)
  {
    return &_xpc_BOOL_true;
  }

  else
  {
    return &_xpc_BOOL_false;
  }
}

BOOL xpc_BOOL_get_value(xpc_object_t xBOOL)
{
  if (xpc_get_type(xBOOL) == OS_xpc_BOOL)
  {
    v2 = *(xBOOL + 24);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t xpc_get_event_name(const char *a1, uint64_t a2, char *a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  xpc_dictionary_set_string(v6, "stream", a1);
  xpc_dictionary_set_uint64(v6, "token", a2);
  v7 = _xpc_bootstrap_routine(402, v6, &xdict);
  if (!v7)
  {
    string = xpc_dictionary_get_string(xdict, "name");
    if (string)
    {
      strlcpy(a3, string, 0x80uLL);
      xpc_release(xdict);
      v9 = 1;
      goto LABEL_5;
    }

    xpc_release(xdict);
    v7 = 118;
  }

  v8 = xpc_strerror(v7);
  syslog(3, "Could not get event name for stream/token: %s/%llu: %d: %s", a1, a2, v7, v8);
  v9 = 0;
LABEL_5:
  xpc_release(v6);
  return v9;
}

xpc_object_t xpc_copy_event_entitlements(const char *a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  xpc_dictionary_set_string(v4, "stream", a1);
  xpc_dictionary_set_uint64(v4, "token", a2);
  v5 = _xpc_bootstrap_routine(405, v4, &xdict);
  if (v5)
  {
    goto LABEL_2;
  }

  value = xpc_dictionary_get_value(xdict, "out-entitlements");
  if (!value)
  {
    xpc_release(xdict);
    v5 = 118;
LABEL_2:
    v6 = xpc_strerror(v5);
    syslog(3, "Could not get entitlements for stream/token: %s/%llu: %d: %s", a1, a2, v5, v6);
    v7 = 0;
    goto LABEL_9;
  }

  v7 = value;
  if (xpc_get_type(value) == OS_xpc_dictionary)
  {
    v7 = xpc_retain(v7);
  }

  else
  {
    xpc_release(v7);
  }

  xpc_release(xdict);
LABEL_9:
  xpc_release(v4);
  return v7;
}

void xpc_set_event_with_flags(const char *a1, const char *a2, void *a3, uint64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  xpc_dictionary_set_string(v8, "stream", a1);
  xpc_dictionary_set_string(v8, "name", a2);
  xpc_dictionary_set_uint64(v8, "flags", a4);
  if (a3)
  {
    xpc_dictionary_set_value(v8, "descriptor", a3);
    v9 = _xpc_bootstrap_routine(400, v8, &xdict);
    if (!v9)
    {
      uint64 = xpc_dictionary_get_uint64(xdict, "token");
      syslog(6, "Subscribed to event %s using token %llu", a2, uint64);
LABEL_6:
      xpc_release(xdict);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = _xpc_bootstrap_routine(400, v8, &xdict);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v11 = v9;
  v12 = xpc_strerror(v9);
  syslog(3, "Could not set XPC event for stream/key: %s/%s: %d: %s", a1, a2, v11, v12);
LABEL_7:
  xpc_release(v8);
}

xpc_object_t xpc_copy_event(const char *a1, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  xdict = 0;
  if (a1)
  {
    xpc_dictionary_set_string(v4, "stream", a1);
    if (a2)
    {
      xpc_dictionary_set_string(v5, "name", a2);
    }
  }

  v6 = _xpc_bootstrap_routine(401, v5, &xdict);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
LABEL_11:
    if (v7 != 3)
    {
      v10 = xpc_strerror(v7);
      syslog(3, "Could not copy XPC event for stream/key: %s/%s: %d: %s", a1, a2, v7, v10);
    }

    goto LABEL_13;
  }

  value = xpc_dictionary_get_value(xdict, "event");
  v8 = value;
  if (value && xpc_get_type(value) == OS_xpc_dictionary)
  {
    v8 = xpc_retain(v8);
    v7 = 0;
  }

  else
  {
    v7 = 118;
  }

  xpc_release(xdict);
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_13:
  xpc_release(v5);
  return v8;
}

void xpc_set_event_state(const char *a1, uint64_t a2, BOOL a3)
{
  v4 = _xpc_set_event_state_impl(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = xpc_strerror(v4);
    syslog(3, "Could not set event state: %s: %d: %s", a1, v5, v6);
  }
}

int64_t _xpc_set_event_state_impl(const char *a1, uint64_t a2, BOOL a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  object = 0;
  xpc_dictionary_set_string(v6, "stream", a1);
  xpc_dictionary_set_uint64(v6, "token", a2);
  xpc_dictionary_set_BOOL(v6, "state", a3);
  v7 = _xpc_bootstrap_routine(404, v6, &object);
  if (!v7)
  {
    xpc_release(object);
  }

  xpc_release(v6);
  return v7;
}

uint64_t xpc_get_service_identifier_for_token(uint64_t a1, char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  xpc_dictionary_set_uint64(v4, "token", a1);
  v5 = _xpc_bootstrap_routine(410, v4, &xdict);
  if (!v5)
  {
    string = xpc_dictionary_get_string(xdict, "identifier");
    if (string)
    {
      strlcpy(a2, string, 0x80uLL);
      xpc_release(xdict);
      v7 = 1;
      goto LABEL_5;
    }

    xpc_release(xdict);
    v5 = 118;
  }

  v6 = xpc_strerror(v5);
  syslog(3, "Could not get service identifier for token: %llu: %d: %s", a1, v5, v6);
  v7 = 0;
LABEL_5:
  xpc_release(v4);
  return v7;
}

uint64_t xpc_get_service_uid_for_token(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  xpc_dictionary_set_uint64(v2, "token", a1);
  v3 = _xpc_bootstrap_routine(411, v2, &xdict);
  if (v3)
  {
    v4 = v3;
    v5 = xpc_strerror(v3);
    syslog(3, "Could not get uid for token: %llu: %d: %s", a1, v4, v5);
    uid_for_name = 0xFFFFFFFFLL;
  }

  else
  {
    string = xpc_dictionary_get_string(xdict, "user");
    if (string)
    {
      uid_for_name = _xpc_get_uid_for_name(string);
    }

    else
    {
      uid_for_name = xpc_dictionary_get_uint64(xdict, "uid");
    }

    xpc_release(xdict);
  }

  xpc_release(v2);
  return uid_for_name;
}

uint64_t _xpc_get_uid_for_name(const char *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_xpc_get_uid_for_name_onceToken != -1)
  {
    _xpc_get_uid_for_name_cold_1();
  }

  v2 = _xpc_get_uid_for_name_bufsize;
  if (_xpc_get_uid_for_name_bufsize < 1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    bzero(&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    memset(&v10, 0, sizeof(v10));
    v9 = 0;
    v3 = getpwnam_r(a1, &v10, &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v2, &v9);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = v9 == 0;
    }

    if (v4)
    {
      v5 = strerror(v3);
      syslog(3, "Could not get uid for user %s: %s", a1, v5);
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = v10.pw_uid;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void xpc_set_event_stream_handler(const char *stream, dispatch_queue_t targetq, xpc_handler_t handler)
{
  global_queue = targetq;
  if (!targetq)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  mach_service = xpc_connection_create_mach_service(stream, 0, 1uLL);
  xpc_connection_set_event_channel(mach_service, 0);
  v7 = _xpc_alloc_typed(0x18uLL, 0xA0040E93CF5C4uLL);
  *v7 = xpc_retain(mach_service);
  v7[1] = global_queue;
  dispatch_retain(global_queue);
  v7[2] = _Block_copy(handler);
  xpc_connection_set_context(mach_service, v7);
  xpc_connection_set_finalizer_f(mach_service, _xpc_events_ctx_finalizer);
  _xpc_connection_set_event_handler_f(mach_service, _xpc_events_listener_event);
  xpc_connection_activate(mach_service);
  os_unfair_lock_lock_with_options();
  v8 = _event_listeners;
  if (!_event_listeners)
  {
    v8 = xpc_array_create(0, 0);
    _event_listeners = v8;
  }

  xpc_array_append_value(v8, mach_service);

  os_unfair_lock_unlock(&_event_listeners_lock);
}

void _xpc_events_ctx_finalizer(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  xpc_release(*a1);
  dispatch_release(v2);
  _Block_release(v3);

  free(a1);
}

void _xpc_events_listener_event(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (xpc_get_type(a1) == OS_xpc_connection)
  {
    v7 = _xpc_alloc_typed(0x18uLL, 0xA0040E93CF5C4uLL);
    *v7 = a1;
    v7[1] = 0;
    v7[2] = v5;
    xpc_connection_set_context(a1, v7);
    xpc_connection_set_finalizer_f(a1, MEMORY[0x1E69E9B38]);
    xpc_connection_set_target_queue(a1, v3);
    _xpc_connection_set_event_handler_f(a1, _xpc_events_peer_event);

    xpc_connection_activate(a1);
  }

  else if (a1 != &_xpc_error_termination_imminent)
  {
    v6 = xpc_copy_description(a1);
    syslog(4, "Event stream listener got an error: %s", v6);
    free(v6);

    xpc_release(v4);
  }
}

uint64_t xpc_event_publisher_create(const char *a1, NSObject *a2)
{
  v4 = strlen(a1);
  v5 = _xpc_event_publisher_alloc(v4 + 89);
  strcpy((v5 + 88), a1);
  *(v5 + 16) = dispatch_queue_create(a1, 0);
  *(v5 + 24) = 0;
  *(v5 + 32) = a2;
  dispatch_retain(a2);
  return v5;
}

void xpc_event_publisher_set_handler(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __xpc_event_publisher_set_handler_block_invoke;
  v5[3] = &unk_1E74AA6D0;
  v5[4] = v3;
  v5[5] = a1;
  dispatch_sync(v4, v5);
}

void __xpc_event_publisher_set_handler_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 24))
  {
    __xpc_event_publisher_set_handler_block_invoke_cold_1(&v6, v7);
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v1 + 40);
    _Block_release(v3);
    v1 = *(a1 + 40);
  }

  *(v1 + 40) = *(a1 + 32);
  v5 = *MEMORY[0x1E69E9840];
}

void xpc_event_publisher_set_error_handler(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __xpc_event_publisher_set_error_handler_block_invoke;
  v5[3] = &unk_1E74AA6F8;
  v5[4] = v3;
  v5[5] = a1;
  dispatch_sync(v4, v5);
}

void __xpc_event_publisher_set_error_handler_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 24))
  {
    __xpc_event_publisher_set_handler_block_invoke_cold_1(&v6, v7);
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = *(v1 + 48);
    _Block_release(v3);
    v1 = *(a1 + 40);
  }

  *(v1 + 48) = *(a1 + 32);
  v5 = *MEMORY[0x1E69E9840];
}

void xpc_event_publisher_set_initial_load_completed_handler_4remoted(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __xpc_event_publisher_set_initial_load_completed_handler_4remoted_block_invoke;
  v5[3] = &unk_1E74AA720;
  v5[4] = v3;
  v5[5] = a1;
  dispatch_sync(v4, v5);
}

void __xpc_event_publisher_set_initial_load_completed_handler_4remoted_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(v1 + 24))
  {
    __xpc_event_publisher_set_handler_block_invoke_cold_1(&v6, v7);
  }

  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = *(v1 + 56);
    _Block_release(v3);
    v1 = *(a1 + 40);
  }

  *(v1 + 56) = *(a1 + 32);
  v5 = *MEMORY[0x1E69E9840];
}

void _xpc_event_publisher_xref_dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___xpc_event_publisher_xref_dispose_block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void ___xpc_event_publisher_xref_dispose_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3 != 2)
  {
    if (v3)
    {
      ___xpc_event_publisher_xref_dispose_block_invoke_cold_1();
    }

    _xpc_event_publisher_cancel(v2);
  }
}

void _xpc_event_publisher_cancel(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 64);

    dispatch_source_cancel(v2);
  }

  else
  {

    _xpc_event_publisher_cancel_complete(a1);
  }
}

void _xpc_event_publisher_dispose(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24) != 2)
  {
    _xpc_event_publisher_dispose_cold_1(&v3, v4);
  }

  v1 = *(a1 + 16);
  v2 = *MEMORY[0x1E69E9840];

  dispatch_release(v1);
}

void xpc_event_publisher_activate(mach_port_context_t a1)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 24), &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v1)
  {
    os_unfair_lock_lock_with_options();
    v3 = _event_publishers;
    if (!_event_publishers)
    {
      v3 = xpc_dictionary_create(0, 0, 0);
      _event_publishers = v3;
    }

    if (xpc_dictionary_get_pointer(v3, (a1 + 88)))
    {
      xpc_event_publisher_activate_cold_1((a1 + 88));
    }

    xpc_dictionary_set_pointer(_event_publishers, (a1 + 88), a1);
    os_unfair_lock_unlock(&_event_publishers_lock);
    v4 = _xpc_mach_port_allocate(0x1033u, 6u, a1);
    *(a1 + 64) = dispatch_source_create(MEMORY[0x1E69E96D8], v4, 0, *(a1 + 16));
    _os_object_retain_internal();
    v5 = *(a1 + 64);
    v11 = MEMORY[0x1E69E9820];
    v12 = 0x40000000;
    v13 = ___xpc_event_publisher_setup_poll_block_invoke;
    v14 = &__block_descriptor_tmp_50;
    v15 = a1;
    v16 = v4;
    dispatch_source_set_mandatory_cancel_handler();
    v6 = *(a1 + 64);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___xpc_event_publisher_setup_poll_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_52;
    v10 = v4;
    handler[4] = a1;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_activate(*(a1 + 64));
    v7 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __xpc_event_publisher_activate_block_invoke;
    block[3] = &__block_descriptor_tmp_23;
    block[4] = a1;
    dispatch_async(v7, block);
  }
}

void __xpc_event_publisher_activate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    _xpc_event_publisher_fetch_subscriptions(v2);
    v3 = *(a1 + 32);

    _xpc_event_publisher_arm_poll(v3);
  }
}

void _xpc_event_publisher_fetch_subscriptions(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  v2 = os_transaction_create((a1 + 88));
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "stream", (a1 + 88));
  object = 0;
  v4 = _xpc_bootstrap_routine(403, v3, &object);
  xpc_release(v3);
  if (v4)
  {
    _xpc_event_publisher_error(a1, v4);
  }

  else
  {
    _xpc_event_publisher_set_subscriptions(a1, object, v2);
    xpc_release(object);
  }

  os_release(v2);
}

void _xpc_event_publisher_arm_poll(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if (*(a1 + 24) == 1)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v2, "stream", (a1 + 88));
    handle = dispatch_source_get_handle(*(a1 + 64));
    v4 = _xpc_event_routine_async(406, v2, handle);
    xpc_release(v2);
    if (v4)
    {

      _xpc_event_publisher_error(a1, v4);
    }
  }
}

uint64_t _xpc_event_publisher_fire_impl(uint64_t a1, uint64_t a2, xpc_object_t object, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (object)
  {
    v7 = object;
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_dictionary_create(0, 0, 0);
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  memset(string, 0, sizeof(string));
  if (xpc_get_event_name((a1 + 88), a2, string))
  {
    v8 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___xpc_event_publisher_fire_impl_block_invoke;
    block[3] = &unk_1E74AA928;
    block[6] = a1;
    block[7] = a2;
    block[4] = &v19;
    block[5] = &v15;
    v14 = 0;
    dispatch_sync(v8, block);
    if (!*(v16 + 6))
    {
      xpc_dictionary_set_string(v7, "XPCEventName", string);
      (*(a4 + 16))(a4, v20[3], v7);
    }
  }

  else
  {
    *(v16 + 6) = 132;
  }

  v9 = v20[3];
  if (v9)
  {
    xpc_release(v9);
  }

  xpc_release(v7);
  v10 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t xpc_event_publisher_fire_barrier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __xpc_event_publisher_fire_barrier_block_invoke;
  v4[3] = &unk_1E74AA7C8;
  v4[4] = a3;
  return _xpc_event_publisher_fire_impl(a1, a2, 0, v4);
}

uint64_t xpc_event_publisher_fire_with_reply(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __xpc_event_publisher_fire_with_reply_block_invoke;
  v6[3] = &unk_1E74AA7F0;
  v6[4] = a5;
  v6[5] = a4;
  return _xpc_event_publisher_fire_impl(a1, a2, a3, v6);
}

uint64_t xpc_event_publisher_fire_with_reply_sync(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __xpc_event_publisher_fire_with_reply_sync_block_invoke;
  v5[3] = &unk_1E74AA818;
  v5[4] = &v6;
  v3 = 0;
  if (!_xpc_event_publisher_fire_impl(a1, a2, a3, v5))
  {
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

xpc_object_t __xpc_event_publisher_fire_with_reply_sync_block_invoke(uint64_t a1, xpc_connection_t connection, xpc_object_t message)
{
  result = xpc_connection_send_message_with_reply_sync(connection, message);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t xpc_event_publisher_get_subscriber_asid(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  v5 = (a1 + 88);
  xpc_dictionary_set_string(v4, "stream", v5);
  xpc_dictionary_set_uint64(v4, "token", a2);
  v6 = _xpc_bootstrap_routine(407, v4, &xdict);
  xpc_release(v4);
  if (v6)
  {
    v7 = xpc_strerror(v6);
    syslog(3, "Could not get asid for stream/token: %s/%llu: %d: %s", v5, a2, v6, v7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    int64 = xpc_dictionary_get_int64(xdict, "asid");
    xpc_release(xdict);
  }

  return int64;
}

int64_t xpc_event_publisher_set_event(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t *a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  v17 = 0;
  xpc_dictionary_set_string(v10, "stream", (a1 + 88));
  xpc_dictionary_set_uint64(v10, "token", a2);
  xpc_dictionary_set_uint64(v10, "flags", 0);
  xpc_dictionary_set_int64(v10, "subscriber-pid", a4);
  if (a3)
  {
    xpc_dictionary_set_value(v10, "descriptor", a3);
  }

  v11 = _xpc_bootstrap_routine(408, v10, &v17);
  v12 = v11;
  if (v11)
  {
    v13 = xpc_strerror(v11);
    syslog(3, "Could not set XPC event for stream/token/subscriber: %s/%llu/%d: %d: %s", (a1 + 88), a2, a4, v12, v13);
  }

  else
  {
    *a5 = xpc_dictionary_get_uint64(v17, "token");
    v14 = *(a1 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __xpc_event_publisher_set_event_block_invoke;
    block[3] = &__block_descriptor_tmp_36;
    block[4] = a1;
    block[5] = v17;
    dispatch_sync(v14, block);
    xpc_release(v17);
  }

  xpc_release(v10);
  return v12;
}

void __xpc_event_publisher_set_event_block_invoke(uint64_t a1)
{
  v2 = os_transaction_create((*(a1 + 32) + 88));
  _xpc_event_publisher_set_subscriptions(*(a1 + 32), *(a1 + 40), v2);

  os_release(v2);
}

void _xpc_event_publisher_set_subscriptions(uint64_t a1, xpc_object_t xdict, void *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(xdict, "events");
  v7 = xpc_dictionary_get_BOOL(xdict, "initial-load-completed");
  if (xpc_get_type(value) != OS_xpc_array)
  {
    _xpc_event_publisher_set_subscriptions_cold_1(&v48, v49);
  }

  count = xpc_array_get_count(value);
  v9 = count;
  if (count)
  {
    _xpc_event_publisher_set_subscriptions_cold_2(&v48, v49);
  }

  v10 = count >> 1;
  v11 = *(a1 + 72);
  v12 = _xpc_alloc_typed(24 * (count >> 1) + 8, 0xACD9DDCDuLL);
  *v12 = v10;
  if (v9)
  {
    v13 = 0;
    do
    {
      uint64 = xpc_array_get_uint64(value, v13);
      if (!uint64)
      {
        _xpc_event_publisher_set_subscriptions_cold_4(&v48, v49);
      }

      v15 = v12[1];
      if (v15 >= *v12)
      {
        _xpc_event_publisher_set_subscriptions_cold_3(&v48, v49);
      }

      v16 = &v12[6 * v15 + 2];
      v16[1] = 0;
      v16[2] = 0;
      *v16 = uint64;
      v12[1] = v15 + 1;
      v13 += 2;
      --v10;
    }

    while (v10);
  }

  v43 = v7;
  if (v11 && *(v11 + 4))
  {
    for (i = 0; i < *(v11 + 4); ++i)
    {
      v18 = _xpc_token_cache_get_at_index(v11, i);
      v19 = v18;
      v20 = *v18;
      v21 = v12[1];
      v22 = v12 + 4;
      if (v21)
      {
        while (*(v22 - 1) != v20)
        {
          v22 += 3;
          if (!--v21)
          {
            goto LABEL_14;
          }
        }

        v24 = v18 + 1;
        *v22 = v18[1];
      }

      else
      {
LABEL_14:
        os_retain(a3);
        if (*(a1 + 40))
        {
          v23 = *(a1 + 40);
        }

        else
        {
          v23 = 0;
        }

        v25 = *(a1 + 32);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___xpc_event_publisher_set_subscriptions_block_invoke;
        block[3] = &unk_1E74AA990;
        block[4] = v23;
        block[5] = v20;
        block[6] = a3;
        dispatch_async(v25, block);
        v27 = v19[1];
        v24 = v19 + 1;
        v26 = v27;
        if (!v27)
        {
          continue;
        }

        xpc_connection_cancel(v26);
      }

      *v24 = 0;
    }
  }

  if (v12[1])
  {
    v28 = 0;
    do
    {
      v29 = *_xpc_token_cache_get_at_index(v12, v28);
      if (v11 && (v30 = *(v11 + 4), v31 = (v11 + 8), v30))
      {
        while (1)
        {
          v32 = *v31;
          v31 += 3;
          if (v32 == v29)
          {
            break;
          }

          if (!--v30)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        os_retain(a3);
        v33 = xpc_array_get_value(value, (2 * (v28 & 0x7FFFFFFF)) | 1);
        v34 = xpc_copy(v33);
        if (*(a1 + 40))
        {
          v35 = *(a1 + 40);
        }

        else
        {
          v35 = 0;
        }

        v36 = *(a1 + 32);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 0x40000000;
        v46[2] = ___xpc_event_publisher_set_subscriptions_block_invoke_2;
        v46[3] = &unk_1E74AA9B8;
        v46[4] = v35;
        v46[5] = v29;
        v46[6] = v34;
        v46[7] = a3;
        dispatch_async(v36, v46);
      }

      ++v28;
    }

    while (v28 < v12[1]);
  }

  if (v11)
  {
    if (!v43)
    {
      goto LABEL_45;
    }
  }

  else
  {
    os_retain(a3);
    if (*(a1 + 40))
    {
      v37 = *(a1 + 40);
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a1 + 32);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 0x40000000;
    v45[2] = ___xpc_event_publisher_set_subscriptions_block_invoke_3;
    v45[3] = &unk_1E74AA9E0;
    v45[4] = v37;
    v45[5] = a3;
    dispatch_async(v38, v45);
    if (!v43)
    {
      goto LABEL_45;
    }
  }

  v39 = (a1 + 56);
  if (*(a1 + 56))
  {
    os_retain(a3);
    if (*v39)
    {
      v40 = *v39;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(a1 + 32);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 0x40000000;
    v44[2] = ___xpc_event_publisher_set_subscriptions_block_invoke_4;
    v44[3] = &unk_1E74AAA08;
    v44[4] = v40;
    v44[5] = a3;
    dispatch_async(v41, v44);
    _Block_release(v40);
    *(a1 + 56) = 0;
  }

LABEL_45:
  free(*(a1 + 72));
  *(a1 + 72) = v12;
  v42 = *MEMORY[0x1E69E9840];
}

xpc_object_t xpc_event_publisher_copy_event(uint64_t a1, uint64_t a2, int a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xdict = 0;
  v7 = (a1 + 88);
  xpc_dictionary_set_string(v6, "stream", v7);
  xpc_dictionary_set_uint64(v6, "token", a2);
  xpc_dictionary_set_int64(v6, "subscriber-pid", a3);
  v8 = _xpc_bootstrap_routine(409, v6, &xdict);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
LABEL_8:
    if (v9 != 3)
    {
      v12 = xpc_strerror(v9);
      syslog(3, "Could not copy XPC event for stream/token/subscriber: %s/%llu/%d: %d: %s", v7, a2, a3, v9, v12);
    }

    goto LABEL_10;
  }

  value = xpc_dictionary_get_value(xdict, "event");
  v10 = value;
  if (value && xpc_get_type(value) == OS_xpc_dictionary)
  {
    v10 = xpc_retain(v10);
    v9 = 0;
  }

  else
  {
    v9 = 118;
  }

  xpc_release(xdict);
  if (v9)
  {
    goto LABEL_8;
  }

LABEL_10:
  xpc_release(v6);
  return v10;
}

uint64_t xpc_event_publisher_create_subscription(uint64_t a1, const char *a2, const char *a3, void *a4, int a5, uint64_t *a6)
{
  v12 = xpc_dictionary_create(0, 0, 0);
  v20 = 0;
  xpc_dictionary_set_string(v12, "stream", a2);
  xpc_dictionary_set_string(v12, "name", a3);
  xpc_dictionary_set_value(v12, "descriptor", a4);
  xpc_dictionary_set_int64(v12, "subscriber-pid", a5);
  v13 = _xpc_bootstrap_routine(412, v12, &v20);
  if (v13)
  {
    v14 = v13;
    v15 = xpc_strerror(v13);
    syslog(3, "Could not create subscription for stream/event/subscriber: %s/%s/%d: %d: %s", a2, a3, a5, v14, v15);
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v20, "token");
    if (uint64)
    {
      *a6 = uint64;
      v17 = *(a1 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __xpc_event_publisher_create_subscription_block_invoke;
      block[3] = &__block_descriptor_tmp_39;
      block[4] = a1;
      block[5] = v20;
      dispatch_sync(v17, block);
      v14 = 0;
    }

    else
    {
      v14 = 118;
    }

    xpc_release(v20);
  }

  xpc_release(v12);
  return v14;
}

void __xpc_event_publisher_create_subscription_block_invoke(uint64_t a1)
{
  v2 = os_transaction_create((*(a1 + 32) + 88));
  _xpc_event_publisher_set_subscriptions(*(a1 + 32), *(a1 + 40), v2);

  os_release(v2);
}

void xpc_event_publisher_set_throttling(uint64_t a1, unsigned int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 <= 2)
  {
    xpc_event_publisher_set_throttling_cold_1(&v6, v7);
  }

  v2 = *(a1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __xpc_event_publisher_set_throttling_block_invoke;
  v4[3] = &__block_descriptor_tmp_40;
  v4[4] = a1;
  v5 = a2;
  dispatch_sync(v2, v4);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __xpc_event_publisher_set_throttling_block_invoke(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (*(v1 + 24))
  {
    __xpc_event_publisher_set_handler_block_invoke_cold_1(&v3, v4);
  }

  *(v1 + 84) = *(result + 40) >> 1;
  *(v1 + 86) = *(result + 40);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void ___xpc_get_uid_for_name_block_invoke()
{
  _xpc_get_uid_for_name_bufsize = sysconf(71);
  if (_xpc_get_uid_for_name_bufsize == -1)
  {
    v0 = __error();
    v1 = strerror(*v0);
    syslog(3, "Could not get bufsize for getpwnam_r(): %s", v1);
  }
}

__objc2_class *_xpc_events_peer_event(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  result = xpc_get_type(a1);
  if (result == OS_xpc_dictionary)
  {

    return __XPC_CONNECTION_EVENT_HANDLER_CALLOUT__(v2);
  }

  return result;
}

uint64_t __XPC_CONNECTION_EVENT_HANDLER_CALLOUT__(uint64_t a1)
{
  (*(a1 + 16))();

  return _os_avoid_tail_call();
}

void _xpc_event_publisher_cancel_complete(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      os_unfair_lock_lock_with_options();
      if (xpc_dictionary_get_pointer(_event_publishers, (a1 + 88)) != a1)
      {
        _xpc_event_publisher_cancel_complete_cold_1(&v17, v18);
      }

      xpc_dictionary_set_pointer(_event_publishers, (a1 + 88), 0);
      os_unfair_lock_unlock(&_event_publishers_lock);
    }

    *(a1 + 24) = 2;
    if (*(a1 + 80))
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = *(a1 + 48);
        v5 = *(a1 + 32);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = ___xpc_event_publisher_cancel_complete_block_invoke;
        v16[3] = &unk_1E74AA8C0;
        v16[4] = v3;
        v16[5] = a1;
        dispatch_async(v5, v16);
      }
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(a1 + 40);
      _Block_release(v6);
      *(a1 + 40) = 0;
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(a1 + 48);
      _Block_release(v8);
      *(a1 + 48) = 0;
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      v11 = *(a1 + 56);
      _Block_release(v10);
      *(a1 + 56) = 0;
    }

    dispatch_release(*(a1 + 32));
    *(a1 + 32) = 0;
    v12 = *(a1 + 72);
    if (v12)
    {
      if (v12[1])
      {
        v13 = 0;
        do
        {
          v14 = *(_xpc_token_cache_get_at_index(v12, v13) + 8);
          if (v14)
          {
            xpc_connection_cancel(v14);
          }

          ++v13;
          v12 = *(a1 + 72);
        }

        while (v13 < v12[1]);
      }

      free(v12);
      *(a1 + 72) = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t _xpc_token_cache_get_at_index(uint64_t a1, unsigned int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) <= a2)
  {
    _xpc_token_cache_get_at_index_cold_1(&v4, v5);
  }

  v2 = *MEMORY[0x1E69E9840];
  return a1 + 24 * a2 + 8;
}

uint64_t ___xpc_event_publisher_setup_poll_block_invoke(uint64_t a1)
{
  _xpc_event_publisher_cancel_complete(*(a1 + 32));
  if (_xpc_mach_port_close_recv(*(a1 + 40), -1, *(a1 + 32)))
  {
    _os_assumes_log();
  }

  dispatch_release(*(*(a1 + 32) + 64));
  *(*(a1 + 32) + 64) = 0;
  v2 = *(a1 + 32);

  return _os_object_release_internal();
}

void ___xpc_event_publisher_setup_poll_block_invoke_2(uint64_t a1)
{
  xdict = 0;
  int64 = xpc_pipe_receive(*(a1 + 40), &xdict, 0);
  if (int64 || (int64 = xpc_dictionary_get_int64(xdict, "error")) != 0)
  {
    if (xdict)
    {
      xpc_release(xdict);
    }

    _xpc_event_publisher_error(*(a1 + 32), int64);
  }

  else
  {
    xpc_release(xdict);
    _xpc_event_publisher_fetch_subscriptions(*(a1 + 32));
    _xpc_event_publisher_arm_poll(*(a1 + 32));
  }
}

void _xpc_event_publisher_error(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 16));
  if (!*(a1 + 80))
  {
    if (a2 == 5)
    {
      syslog(5, "Publisher %s was unable talk to launchd");
    }

    else if (a2 == 124)
    {
      syslog(5, "Publisher %s is removed by launchd");
    }

    else
    {
      v4 = xpc_strerror(a2);
      syslog(3, "Canceling event publisher for %s because of error: %d - %s", (a1 + 88), a2, v4);
      *(a1 + 80) = a2;

      _xpc_event_publisher_cancel(a1);
    }
  }
}

void ___xpc_event_publisher_fire_impl_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(*(a1 + 40) + 8);
  dispatch_assert_queue_V2(*(v3 + 16));
  *(v4 + 24) = 0;
  if (*(v3 + 24) == 2)
  {
    v5 = 0;
    mach_service = 0;
    v7 = 89;
LABEL_9:
    *(v4 + 24) = v7;
    goto LABEL_10;
  }

  v8 = *(v3 + 72);
  if (!v8)
  {
    ___xpc_event_publisher_fire_impl_block_invoke_cold_1(v16, &handler);
  }

  v9 = *(v8 + 4);
  if (!v9)
  {
LABEL_8:
    v5 = 0;
    mach_service = 0;
    v7 = 132;
    goto LABEL_9;
  }

  v5 = (v8 + 8);
  while (*v5 != v2)
  {
    v5 += 3;
    if (!--v9)
    {
      goto LABEL_8;
    }
  }

  v14 = v5[1];
  if (v14)
  {
    mach_service = xpc_retain(v14);
  }

  else
  {
    mach_service = xpc_connection_create_mach_service((v3 + 88), *(v3 + 16), 0);
    xpc_connection_set_event_channel(mach_service, v2);
    _os_object_retain_internal();
    *&handler = MEMORY[0x1E69E9820];
    *(&handler + 1) = 0x40000000;
    v19 = ___xpc_event_publisher_create_connection_block_invoke;
    v20 = &__block_descriptor_tmp_58;
    v21 = v3;
    v22 = v2;
    v23 = mach_service;
    xpc_connection_set_event_handler(mach_service, &handler);
    xpc_connection_activate(mach_service);
    v5[1] = xpc_retain(mach_service);
  }

LABEL_10:
  *(*(*(a1 + 32) + 8) + 24) = mach_service;
  if (!*(*(*(a1 + 40) + 8) + 24) && *(a1 + 64) == 1)
  {
    v10 = *(a1 + 48);
    if (*(v10 + 84))
    {
      dispatch_assert_queue_V2(*(v10 + 16));
      if (!v5)
      {
        ___xpc_event_publisher_fire_impl_block_invoke_cold_2(&v17, &handler);
      }

      v11 = *(v5 + 8);
      if (v11 >= *(v10 + 86))
      {
        *(*(*(a1 + 40) + 8) + 24) = 55;
      }

      else
      {
        if (v11 == *(v10 + 84))
        {
          v13 = *v5;
          v12 = v5[1];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 0x40000000;
          v16[2] = ___xpc_event_publisher_check_and_update_inflight_count_block_invoke;
          v16[3] = &__block_descriptor_tmp_59;
          v16[4] = v10;
          v16[5] = v13;
          xpc_connection_send_barrier(v12, v16);
          LOWORD(v11) = *(v5 + 8);
        }

        *(v5 + 8) = v11 + 1;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

__objc2_class *___xpc_event_publisher_create_connection_block_invoke(uint64_t a1, __objc2_class **object)
{
  result = xpc_get_type(object);
  if (result != OS_xpc_error)
  {
    result = _os_assumes_log();
  }

  if (object == &_xpc_error_connection_invalid)
  {
    v5 = *(*(a1 + 32) + 72);
    if (v5)
    {
      v6 = *(v5 + 4);
      if (v6)
      {
        v7 = (v5 + 16);
        while (*(v7 - 1) != *(a1 + 40))
        {
          v7 += 3;
          if (!--v6)
          {
            goto LABEL_12;
          }
        }

        if (*v7 == *(a1 + 48))
        {
          *v7 = 0;
        }
      }
    }

LABEL_12:
    xpc_release(*(a1 + 48));
    v8 = *(a1 + 32);

    return _os_object_release_internal();
  }

  return result;
}

uint64_t ___xpc_event_publisher_check_and_update_inflight_count_block_invoke(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  v2 = *(v1 + 72);
  v3 = *(v2 + 4);
  if (v3)
  {
    v4 = *(v1 + 84);
    v5 = (v2 + 24);
    while (*(v5 - 2) != *(result + 40))
    {
      v5 += 12;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    v6 = *v5;
    v7 = v6 >= v4;
    v8 = v6 - v4;
    if (!v7)
    {
      ___xpc_event_publisher_check_and_update_inflight_count_block_invoke_cold_1(&v10, v11);
    }

    *v5 = v8;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void ___xpc_event_publisher_set_subscriptions_block_invoke(void *a1)
{
  v2 = a1[5];
  (*(a1[4] + 16))();
  v3 = a1[6];

  os_release(v3);
}

void ___xpc_event_publisher_set_subscriptions_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  xpc_release(*(a1 + 48));
  v4 = *(a1 + 56);

  os_release(v4);
}

void ___xpc_event_publisher_set_subscriptions_block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  os_release(v2);
}

void ___xpc_event_publisher_set_subscriptions_block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  os_release(v2);
}

char *_xpc_connection_pretty_name(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return "(dummy)";
      }

      return "(bogus)";
    }

    result = *(a1 + 152);
    if (result)
    {
      return dispatch_queue_get_label(result);
    }
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return "(anonymous)";
      }

      return "(bogus)";
    }

    result = *(a1 + 152);
    if (result)
    {
      return dispatch_queue_get_label(result);
    }
  }

  return result;
}

uint64_t _xpc_connection_desc(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
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
  *__str = 0u;
  v11 = 0u;
  v4 = _xpc_connection_pretty_name(a1);
  if ((*(a1 + 248) & 8) != 0)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  v6 = snprintf(__str, 0x200uLL, "<%s: %p> { name = %s, listener = %s, pid = %d, euid = %u, egid = %u, asid = %u }", "connection", a1, v4, v5, *(a1 + 124), *(a1 + 108), *(a1 + 112), *(a1 + 128));
  if (v6 >= 0x1FF)
  {
    v7 = 511;
  }

  else
  {
    v7 = v6;
  }

  result = _xpc_serializer_append(a2, __str, (v7 + 1), 0);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

size_t _xpc_connection_debug(uint64_t a1, char *a2, size_t a3)
{
  v19 = 0;
  explicit = atomic_load_explicit((a1 + 96), memory_order_acquire);
  if (explicit)
  {
    v7 = explicit;
    description = _xpc_connection_cancelation_get_description(explicit, &v19);
  }

  else
  {
    description = 0;
    v7 = 0;
  }

  v9 = _xpc_copy_nsobject_debug_description(*(a1 + 152));
  if (a3 < 2)
  {
    v17 = 0;
  }

  else
  {
    label = *(a1 + 152);
    if (label)
    {
      label = dispatch_queue_get_label(label);
    }

    v11 = v19;
    if (!v19)
    {
      v11 = "<none>";
    }

    v12 = *(a1 + 248);
    if ((v12 & 4) != 0)
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    if ((v12 & 0x10) != 0)
    {
      v14 = "true";
    }

    else
    {
      v14 = "false";
    }

    v15 = "<no channel>";
    if (v9)
    {
      v15 = v9;
    }

    v16 = snprintf(a2, a3, ", name = %s, type = %s, state = %s, cancelation = (%u, %s), mach = %s, privileged = %s, bssend = 0x%x, recv = 0x%x, send = 0x%x, pid = %d, euid = %u, egid = %u, asid = %u, channel: %s", label, type2str[*(a1 + 24)], state2str[*(a1 + 64)], v7, v11, v13, v14, *(a1 + 72), *(a1 + 68), *(a1 + 76), *(a1 + 124), *(a1 + 108), *(a1 + 112), *(a1 + 128), v15);
    if (v16 >= a3)
    {
      v17 = a3 - 1;
    }

    else
    {
      v17 = v16;
    }
  }

  free(v9);
  if (description)
  {
    free(v19);
  }

  return v17;
}

uint64_t _xpc_connection_serialize(uint64_t a1, uint64_t a2)
{
  syslog(3, "Connections cannot be directly embedded in messages. You must create an endpoint from the connection.");
  __src = 69632;
  return _xpc_serializer_append(a2, &__src, 4uLL, 1);
}

void _xpc_connection_dispose(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) != 8)
  {
    _xpc_connection_dispose_cold_1(&v7, v8);
  }

  if (*(a1 + 28))
  {
    v6 = _xpc_asprintf("Release of a suspended connection.");
    _xpc_api_misuse(v6);
  }

  v2 = *(a1 + 72);
  if (v2 + 1 >= 2 && _xpc_mach_port_release(v2))
  {
    _os_assumes_log();
  }

  v3 = *(a1 + 176);
  *(a1 + 72) = 0;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _Block_release(v4);
  _xpc_connection_event_handler_dispose(a1);
  if ((*(a1 + 248) & 8) != 0 && _xpc_mach_port_release(*(a1 + 80)))
  {
    _os_assumes_log();
  }

  dispatch_release(*(a1 + 152));
  free(*(a1 + 240));
  *(a1 + 240) = 0;
  *(a1 + 96) = 0;
  _Block_release(*(a1 + 256));
  if (*(a1 + 224))
  {
    os_map_128_destroy();
    xpc_release(*(a1 + 224));
  }

  *(a1 + 224) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t do_mach_notify_port_destroyed(uint64_t a1, mach_port_name_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = pthread_getspecific(_mig_tsd);
  v4 = *v3;
  if (*(*v3 + 76) == a2)
  {
    if ((*(v4 + 248) & 3) != 0)
    {
      _xpc_connection_bs_cancel(*v3);
    }

    else
    {
      *(v4 + 64) = 4;
      _xpc_connection_init(v4, 0);
      if (*(v4 + 64) == 6)
      {
        os_unfair_lock_lock_with_options();
        *&v5 = -1;
        *(&v5 + 1) = -1;
        *(v4 + 120) = v5;
        *(v4 + 104) = v5;
        *(v4 + 124) = 0;
        os_unfair_lock_unlock((v4 + 88));
        if (_os_trace_lazy_init_completed_4libxpc() && (*(v4 + 248) & 0x4000) == 0)
        {
          if (_xpc_connection_log_handle__once != -1)
          {
            do_mach_notify_port_destroyed_cold_1();
          }

          v6 = _xpc_connection_log_handle__log;
          if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 134217984;
            v10 = v4;
            _os_log_impl(&dword_197263000, v6, OS_LOG_TYPE_DEFAULT, "[%p] Re-initialization successful; calling out to event handler with XPC_ERROR_CONNECTION_INTERRUPTED", &v9, 0xCu);
          }
        }

        _xpc_connection_call_event_handler(v4, &_xpc_error_connection_interrupted);
      }
    }
  }

  if (_xpc_mach_port_close_recv(a2, 0, 0))
  {
    _os_assumes_log();
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL _xpc_connection_bs_cancel(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 - 1 > 0xFFFFFFFD)
  {
    v5 = 3;
  }

  else
  {
    ptype = 0;
    v3 = mach_port_type(*MEMORY[0x1E69E9A60], v2, &ptype);
    if (v3)
    {
      v4 = v3 == 15;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      _os_assumes_log();
    }

    if ((ptype & 0x10000) != 0)
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }
  }

  return _xpc_connection_cancel(a1, v5, 0x10u, 0);
}

uint64_t do_mach_notify_no_senders()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *pthread_getspecific(_mig_tsd);
  if (_xpc_connection_cancel(v0, 3u, 0x11u, 0) && _os_trace_lazy_init_completed_4libxpc() && (*(v0 + 248) & 0x4000) == 0)
  {
    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v1 = _xpc_connection_log_handle__log;
    if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(v0 + 124);
      v5 = 134218240;
      v6 = v0;
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&dword_197263000, v1, OS_LOG_TYPE_DEFAULT, "[%p] invalidated because the client process (pid %d) either cancelled the connection or exited", &v5, 0x12u);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL _xpc_connection_cancel(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  v11 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong_explicit((a1 + 96), &v4, (a3 << 8) | (a4 << 32) | a2, memory_order_release, memory_order_relaxed);
  v5 = v4 == 0;
  if (v4)
  {
    if (!*(a1 + 96))
    {
      _xpc_connection_cancel_cold_1(&v9, v10);
    }
  }

  else
  {
    v6 = *(a1 + 152);
    dispatch_mach_cancel();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t do_mach_notify_send_once(int a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = pthread_getspecific(_mig_tsd);
  if (!a1)
  {
    goto LABEL_11;
  }

  v4 = *v2;
  v3 = v2[1];
  msg = dispatch_mach_msg_get_msg();
  context = _xpc_mach_msg_get_context(msg);
  if (*(v4 + 68) != a1)
  {
    if (context)
    {
      if ((atomic_load_explicit((v4 + 96), memory_order_acquire) & 0xFB) != 0)
      {
        v7 = &_xpc_error_connection_invalid;
      }

      else
      {
        v7 = &_xpc_error_connection_interrupted;
      }

      _xpc_connection_call_reply_async(v4, context, v7);
    }

    goto LABEL_11;
  }

  if (v4 == context)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  _dyld_get_image_uuid();
  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  v10 = *(v4 + 68);
  _os_log_simple();
  result = 5;
LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_connection_last_xref_cancel(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 28))
  {
    v4 = _xpc_asprintf("Release of last reference on a suspended connection.");
    _xpc_api_misuse(v4);
  }

  if (_xpc_connection_cancel(a1, 2u, 0x12u, 0) && _os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
  {
    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v2 = _xpc_connection_log_handle__log;
    if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = a1;
      _os_log_impl(&dword_197263000, v2, OS_LOG_TYPE_DEFAULT, "[%p] invalidated after the last release of the connection object", &v5, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t _xpc_connection_copy_listener_port(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 152);
  checkin_port = dispatch_mach_get_checkin_port();
  v14 = checkin_port;
  if ((checkin_port - 1) >= 0xFFFFFFFE)
  {
    v7 = *(a1 + 24);
    if (v7 == 1)
    {
      v10 = 68;
      if ((*(a1 + 248) & 8) == 0)
      {
        v10 = 72;
      }

      v4 = _xpc_mach_port_try_retain_send(*(a1 + v10));
      if (_os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
      {
        if (_xpc_connection_log_handle__once != -1)
        {
          do_mach_notify_port_destroyed_cold_1();
        }

        v5 = _xpc_connection_log_handle__log;
        if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v16 = a1;
          v17 = 1024;
          v18 = v4;
          v6 = "[%p] Connection returned listener port: 0x%x";
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (v7)
      {
        v13 = _xpc_asprintf("Attempt to create an endpoint out of an unsupported connection type.");
        _xpc_api_misuse(v13);
      }

      v8 = _xpc_connection_bootstrap_look_up_slow(a1, &v14);
      if (_os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
      {
        if (_xpc_connection_log_handle__once != -1)
        {
          _xpc_connection_copy_listener_port_cold_2();
        }

        v9 = _xpc_connection_log_handle__log;
        if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218496;
          v16 = a1;
          v17 = 1024;
          v18 = v8;
          v19 = 1024;
          v20 = v14;
          _os_log_impl(&dword_197263000, v9, OS_LOG_TYPE_DEFAULT, "[%p] Falling back to bootstrap_look_up() = %d, lp: 0x%x", buf, 0x18u);
        }
      }

      if (v8)
      {
        v4 = 0xFFFFFFFFLL;
      }

      else
      {
        v4 = v14;
      }
    }
  }

  else
  {
    v4 = _xpc_mach_port_try_retain_send(checkin_port);
    if (_os_trace_lazy_init_completed_4libxpc() && (*(a1 + 248) & 0x4000) == 0)
    {
      if (_xpc_connection_log_handle__once != -1)
      {
        do_mach_notify_port_destroyed_cold_1();
      }

      v5 = _xpc_connection_log_handle__log;
      if (os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v16 = a1;
        v17 = 1024;
        v18 = v4;
        v6 = "[%p] Channel returned listener port: 0x%x";
LABEL_27:
        _os_log_impl(&dword_197263000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0x12u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

int64_t _xpc_connection_bootstrap_look_up_slow(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 248);
  if ((v4 & 4) != 0)
  {
    if ((v4 & 0x200) != 0)
    {
      v8 = 0;
      v6 = *(a1 + 184);
      v9 = 7;
      v7 = 16;
    }

    else
    {
      v10 = *(a1 + 84);
      if (v10 == -2)
      {
        v9 = 7;
      }

      else
      {
        v9 = 2;
      }

      v6 = 0;
      if (v10 == -2)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a1 + 84);
      }

      if (v10 == -2)
      {
        v7 = (v4 >> 1) & 8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v5 = getpid();
    v6 = 0;
    v7 = 0;
    v8 = v5;
    LODWORD(v4) = *(a1 + 248);
    v9 = 5;
  }

  LODWORD(v11) = (v4 >> 3) & 4;
  if ((v4 & 0x40) != 0)
  {
    v11 = 32;
  }

  else
  {
    v11 = v11;
  }

  v12 = v7 | v11;
  v13 = *(a1 + 240);
  if (v13)
  {
    v12 |= 0x400uLL;
  }

  v14 = (v4 >> 7) & 1;
  if ((v4 & 3) == 3)
  {
    v14 = 1;
  }

  if (v14)
  {
    v12 |= 0x80uLL;
  }

  if ((v4 & 3) == 1)
  {
    v15 = v12 | 0x200;
  }

  else
  {
    v15 = v12;
  }

  if ((v4 & 8) != 0 && !*(a1 + 24))
  {
    v15 |= 0x100uLL;
  }

  v22 = 0;
  label = *(a1 + 152);
  if (label)
  {
    label = dispatch_queue_get_label(label);
  }

  v17 = _xpc_look_up_endpoint(label, v9, v8, v6, (a1 + 160), v15, v13, a2, &v22);
  if (!v17)
  {
    v18 = *(a1 + 248);
    if ((v18 & 3) == 1)
    {
      if (v22)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      *(a1 + 248) = v19 | v18 & 0xFFFC;
    }
  }

  v20 = *(a1 + 152);
  if (v20)
  {
    dispatch_queue_get_label(v20);
  }

  return v17;
}

BOOL _xpc_connection_check_in_with_ports(int a1, int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
  v15 = 0u;
  v16 = 0u;
  v10 = 0u;
  v8 = 0u;
  v9 = 0u;
  v5 = OS_xpc_connection;
  v6 = 0x7FFFFFFF;
  v7 = 0x7FFFFFFF;
  LODWORD(v8) = 2048;
  DWORD2(v8) = 3;
  v11 = 6;
  v12 = a2;
  v13 = a1;
  v14 = a3;
  WORD4(v25) = 1024;
  _xpc_connection_check_in(&v5);
  result = v11 == 7;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void _xpc_connection_check_in(uint64_t a1)
{
  if ((*(a1 + 248) & 0x400) != 0)
  {
    msg = 0;
    v5 = dispatch_mach_msg_create();
    MEMORY[8] = *(a1 + 72);
    MEMORY[0] = 0x3480000013;
    MEMORY[0xC] = xmmword_1972A7CE0;
    v6 = MEMORY[0x30];
    MEMORY[0x30] &= 0xFFFFFFu;
    v7 = *(a1 + 68);
    MEMORY[0x30] = v6 | 0x140000;
    v8 = MEMORY[0x24];
    MEMORY[0x24] &= 0xFFFFFFu;
    MEMORY[0x28] = v7;
    MEMORY[0x1C] = *(a1 + 76);
    MEMORY[0x24] = v8 | 0x100000;
    if ((*(a1 + 17) & 8) != 0)
    {
      if (mach_msg(0, 1, 0x34u, 0, 0, 0, 0))
      {
        _os_assumes_log();
        if (_xpc_mach_port_cleanup_right(MEMORY[8], MEMORY[0] & 0x1F))
        {
          _os_assumes_log();
        }

        if (_xpc_mach_port_cleanup_right(MEMORY[0x28], MEMORY[0x32]))
        {
          _os_assumes_log();
        }
      }

      else
      {
        ++*(a1 + 64);
      }
    }

    else
    {
      name = 0;
      if (_xpc_mach_port_setup_port_destroyed(*(a1 + 76), *(a1 + 68), &name) || name && (_os_assumes_log(), _xpc_mach_port_release(name)))
      {
        _os_assumes_log();
      }

      if ((*(a1 + 248) & 0x100) != 0)
      {
        v12 = *(a1 + 152);
        v13 = *(a1 + 76);
        dispatch_mach_reconnect();
      }

      else
      {
        *(a1 + 248) |= 0x100u;
        v9 = *(a1 + 152);
        v10 = *(a1 + 68);
        v11 = *(a1 + 76);
        dispatch_mach_connect();
      }
    }

    dispatch_release(v5);
  }

  else
  {
    *(a1 + 64) = 7;
    v2 = *(a1 + 152);
    v3 = *(a1 + 68);
    v4 = *(a1 + 76);

    dispatch_mach_connect();
  }
}

xpc_object_t _xpc_connection_copy_attrs(uint64_t a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (!a1)
  {
    if (!a2)
    {
      v16 = _xpc_asprintf("Attempt to get connection property with no connection and no target PID.");
      goto LABEL_23;
    }

    v7 = a2;
    goto LABEL_9;
  }

  v6 = *(a1 + 72);
  if (v6 + 1 < 2)
  {
    v7 = *(a1 + 124);
    if (!v7)
    {
      if (!*(a1 + 24))
      {
        if ((*(a1 + 248) & 4) != 0)
        {
          v9 = "type";
          v8 = 7;
        }

        else
        {
          xpc_dictionary_set_uint64(v4, "type", 5uLL);
          v8 = getpid();
          v9 = "handle";
          v4 = v5;
        }

        xpc_dictionary_set_uint64(v4, v9, v8);
        v10 = *(a1 + 152);
        if (v10)
        {
          label = dispatch_queue_get_label(v10);
        }

        else
        {
          label = 0;
        }

        xpc_dictionary_set_string(v5, "name", label);
        goto LABEL_16;
      }

      v16 = _xpc_asprintf("Attempt to get connection property before it was populated.");
LABEL_23:
      _xpc_api_misuse(v16);
    }

LABEL_9:
    xpc_dictionary_set_int64(v4, "pid", v7);
    goto LABEL_16;
  }

  xpc_dictionary_set_mach_send(v4, "service-port", v6);
LABEL_16:
  xdict = 0;
  v12 = _xpc_service_routine(712, v5, &xdict);
  v13 = 0;
  if (v12 != 113)
  {
    if (v12)
    {
      _os_assumes_log();
      v13 = 0;
    }

    else
    {
      value = xpc_dictionary_get_value(xdict, "attrs");
      v13 = xpc_retain(value);
      xpc_release(xdict);
    }
  }

  xpc_release(v5);
  return v13;
}

uint64_t _xpc_connection_create_internal_listener(char *__s)
{
  v1 = _xpc_connection_create(0, __s);
  *(v1 + 248) |= 8u;
  self_audit_token = _xpc_get_self_audit_token();
  v3 = *self_audit_token;
  *(v1 + 120) = self_audit_token[1];
  *(v1 + 104) = v3;
  *(v1 + 88) = 0;
  *(v1 + 248) |= 0x8000u;
  return v1;
}

uint64_t xpc_connection_create_listener(char *__s)
{
  v1 = _xpc_connection_create(0, __s);
  *(v1 + 248) |= 8u;
  self_audit_token = _xpc_get_self_audit_token();
  v3 = self_audit_token[1];
  *(v1 + 104) = *self_audit_token;
  *(v1 + 120) = v3;
  *(v1 + 88) = 0;
  return v1;
}

uint64_t _xpc_connection_activate_internal_listener(_WORD *a1)
{
  if (xpc_get_type(a1) != OS_xpc_connection)
  {
    type = xpc_get_type(a1);
    class_getName(type);
    class_getName(OS_xpc_connection);
    v4 = _xpc_asprintf("Given object not of required type. Given: %s, required: %s");
    goto LABEL_10;
  }

  if ((a1[124] & 8) == 0)
  {
    v4 = _xpc_asprintf("connection must be a listener.");
    goto LABEL_10;
  }

  if ((a1[124] & 0x8000) == 0)
  {
    v4 = _xpc_asprintf("connection must be internal lifecycle.");
LABEL_10:
    _xpc_api_misuse(v4);
  }

  return _xpc_connection_activate_if_needed(a1, 1, 0);
}

uint64_t _xpc_connection_activate_if_needed(uint64_t a1, int a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    _xpc_connection_activate_if_needed_cold_4();
  }

  v5 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 64), &v5, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v5)
  {
    if (a3)
    {
      _xpc_connection_activate_if_needed_cold_1();
    }

    v7 = 5;
    atomic_compare_exchange_strong_explicit((a1 + 64), &v7, 6u, memory_order_relaxed, memory_order_relaxed);
    if (v7 != 5)
    {
      v23 = 9;
      atomic_compare_exchange_strong_explicit((a1 + 64), &v23, 0xAu, memory_order_relaxed, memory_order_relaxed);
      if (v23 != 9)
      {
        v20 = 0;
        goto LABEL_28;
      }

      if (!a2 || atomic_fetch_add_explicit((a1 + 28), 0xFFFFFFFF, memory_order_release))
      {
        _xpc_retain(a1);
        v20 = 1;
        _xpc_connection_init_failed(a1, 0, 37, 1);
        _xpc_release(a1);
        goto LABEL_28;
      }

LABEL_36:
      v6 = _xpc_asprintf("Over-resume of a connection.");
LABEL_37:
      _xpc_api_misuse(v6);
    }
  }

  else
  {
    *(a1 + 41) = 1;
    if (!*(a1 + 32))
    {
      v6 = _xpc_asprintf("Activation of a connection without an event handler.");
      goto LABEL_37;
    }
  }

  if (a2 && !atomic_fetch_add_explicit((a1 + 28), 0xFFFFFFFF, memory_order_release))
  {
    goto LABEL_36;
  }

  if (a3)
  {
    v8 = "readying";
  }

  else
  {
    v8 = "activating";
  }

  v9 = *(a1 + 184);
  inited = _os_trace_lazy_init_completed_4libxpc();
  if (v9)
  {
    if (!inited || (*(a1 + 248) & 0x4000) != 0)
    {
      goto LABEL_27;
    }

    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v11 = _xpc_connection_log_handle__log;
    if (!os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v12 = _xpc_connection_pretty_name(a1);
    v13 = *(a1 + 184);
    v24 = 134218754;
    v25 = a1;
    v26 = 2082;
    v27 = v8;
    v28 = 2082;
    *v29 = v12;
    *&v29[8] = 2050;
    v30 = v13;
    v14 = "[%p] %{public}s connection: name=%{public}s publishToken=%{public}llu";
    v15 = v11;
    v16 = 42;
  }

  else
  {
    if (!inited || (*(a1 + 248) & 0x4000) != 0)
    {
      goto LABEL_27;
    }

    if (_xpc_connection_log_handle__once != -1)
    {
      do_mach_notify_port_destroyed_cold_1();
    }

    v17 = _xpc_connection_log_handle__log;
    if (!os_log_type_enabled(_xpc_connection_log_handle__log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v18 = *(a1 + 248);
    v19 = *(a1 + 24) == 2;
    v24 = 134219266;
    v25 = a1;
    v26 = 2082;
    v27 = v8;
    v28 = 1024;
    *v29 = (v18 >> 2) & 1;
    *&v29[4] = 1024;
    *&v29[6] = (v18 >> 3) & 1;
    LOWORD(v30) = 1024;
    *(&v30 + 2) = v19;
    HIWORD(v30) = 2082;
    v31 = _xpc_connection_pretty_name(a1);
    v14 = "[%p] %{public}s connection: mach=%{BOOL}d listener=%{BOOL}d peer=%{BOOL}d name=%{public}s";
    v15 = v17;
    v16 = 50;
  }

  _os_log_impl(&dword_197263000, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);
LABEL_27:
  _xpc_retain(a1);
  _xpc_connection_init(a1, a3);
  _xpc_release(a1);
  v20 = 1;
LABEL_28:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t _xpc_connection_create(int a1, char *__s)
{
  if (a1 == 2)
  {
    v4 = strlen(__s) + 19;
  }

  else if (a1 == 1)
  {
    v4 = 42;
  }

  else
  {
    strlen(__s);
    if (_dyld_is_memory_immutable())
    {
      v5 = _xpc_base_create(OS_xpc_connection, 248);
      goto LABEL_14;
    }

    v4 = strlen(__s);
  }

  v6 = v4 + 1;
  v7 = v4 == -1;
  v5 = _xpc_base_create(OS_xpc_connection, v4 + 249);
  if (!v7)
  {
    if (a1 == 2)
    {
      snprintf((v5 + 264), v6, "%s.%p");
    }

    else if (a1 == 1)
    {
      snprintf((v5 + 264), v6, "com.apple.xpc.anonymous.%p");
    }

    else
    {
      strlcpy((v5 + 264), __s, v6);
    }
  }

LABEL_14:
  _4libxpc = dispatch_mach_create_4libxpc();
  *(v5 + 24) = a1;
  *(v5 + 28) = 1;
  *(v5 + 248) &= ~0x4000u;
  *(v5 + 84) = -2;
  *(v5 + 144) = 0;
  *(v5 + 152) = _4libxpc;
  uuid_clear((v5 + 160));
  *(v5 + 192) = 0;

  return _xpc_retain(v5);
}

void xpc_connection_get_audit_token(uint64_t a1, _OWORD *a2)
{
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 120);
  *a2 = *(a1 + 104);
  a2[1] = v4;

  os_unfair_lock_unlock((a1 + 88));
}

void xpc_connection_set_instance(uint64_t a1, const unsigned __int8 *a2)
{
  if (*(a1 + 64))
  {
    v4 = _xpc_asprintf("Attempt to set instance on a live connection.");
    goto LABEL_8;
  }

  v2 = *(a1 + 248);
  if ((v2 & 8) != 0)
  {
    v4 = _xpc_asprintf("Attempt to set instance on a listening connection.");
LABEL_8:
    _xpc_api_misuse(v4);
  }

  *(a1 + 248) = v2 | 0x20;
  v3 = (a1 + 160);

  uuid_copy(v3, a2);
}