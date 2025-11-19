BOOL managed_event_fetch(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v4 = _Block_copy(aBlock);
    v5 = msg_requesting(a1, 1uLL);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = __managed_event_fetch_helper_block_invoke;
    v7[3] = &unk_279D2E6E8;
    v7[5] = 0;
    v7[6] = v5;
    v7[4] = v4;
    managed_event_send_with_reply(v5, v7);
  }

  return aBlock != 0;
}

xpc_object_t msg_requesting(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, managed_event_key_type, 1uLL);
  xpc_dictionary_set_uint64(v4, managed_event_key_seqno, a1);
  xpc_dictionary_set_uint64(v4, managed_event_key_howmany, a2);
  return v4;
}

void managed_event_send_with_reply(uint64_t a1, uint64_t a2)
{
  if (managed_event_get_queue_managed_event_queue_once != -1)
  {
    managed_event_send_with_reply_cold_1();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __managed_event_send_with_reply_block_invoke;
  block[3] = &unk_279D2E680;
  block[5] = a1;
  block[6] = MEMORY[0x277D85CD0];
  block[4] = a2;
  dispatch_sync(managed_event_get_queue_managed_event_queue, block);
}

void __managed_event_fetch_helper_block_invoke(void *a1, void *a2)
{
  if (!a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&dword_26C37E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "managed_event_fetch_helper: resp nil from managed_event_send_with_reply", v19, 2u);
    }

    v4 = a1[5];
    v3 = a1[6];
    v5 = a1[4];
    uint64 = 19;
    v7 = 0;
    v8 = 0;
    goto LABEL_19;
  }

  if (MEMORY[0x26D69F8A0](a2) == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(a2, managed_event_key_error);
    if (uint64)
    {
      v11 = 0;
      v15 = 0;
LABEL_18:
      v4 = a1[5];
      v3 = a1[6];
      v5 = a1[4];
      v7 = v15;
      v8 = v11;
LABEL_19:
      managed_event_fetch_completion(v3, uint64, v7, v8, v5, v4);
      return;
    }

    value = xpc_dictionary_get_value(a2, managed_event_key_event_data);
    if (!value)
    {
      v11 = 0;
LABEL_14:
      v15 = 0;
      uint64 = 5;
      goto LABEL_18;
    }

    v16 = value;
    count = xpc_array_get_count(value);
    v11 = count;
    if (!count)
    {
      goto LABEL_14;
    }

    if (count < 0x492492492492493)
    {
      v18 = malloc_type_calloc(count, 0x38uLL, 0x590688E0uLL);
      if (v18)
      {
        v15 = v18;
        v20[0] = 0;
        v20[1] = v20;
        v20[2] = 0x2000000000;
        v20[3] = v18;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 0x40000000;
        v19[2] = __managed_event_compose_from_xpc_object_block_invoke;
        v19[3] = &unk_279D2E710;
        v19[4] = v20;
        xpc_array_apply(v16, v19);
        _Block_object_dispose(v20, 8);
        uint64 = 0;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = a1[5];
    v12 = a1[6];
    v14 = a1[4];

    managed_event_fetch_completion(v12, 19, 0, 0, v14, v13);
  }
}

uint64_t __managed_event_compose_from_xpc_object_block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  **(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(xdict, managed_event_key_epoch);
  *(*(*(*(a1 + 32) + 8) + 24) + 8) = xpc_dictionary_get_uint64(xdict, managed_event_key_seqno);
  *(*(*(*(a1 + 32) + 8) + 24) + 16) = xpc_dictionary_get_string(xdict, managed_event_key_event_type);
  *(*(*(*(a1 + 32) + 8) + 24) + 24) = xpc_dictionary_get_double(xdict, managed_event_key_timestamp);
  *(*(*(*(a1 + 32) + 8) + 24) + 32) = xpc_dictionary_get_uint64(xdict, managed_event_key_reason_code);
  *(*(*(*(a1 + 32) + 8) + 24) + 40) = xpc_dictionary_get_string(xdict, managed_event_key_reason_string);
  value = xpc_dictionary_get_value(xdict, managed_event_key_additional_info);
  if (value)
  {
    value = _CFXPCCreateCFObjectFromXPCMessage();
  }

  *(*(*(*(a1 + 32) + 8) + 24) + 48) = value;
  *(*(*(a1 + 32) + 8) + 24) += 56;
  return 1;
}

void managed_event_fetch_completion(xpc_object_t object, uint64_t a2, char *a3, uint64_t a4, void (**a5)(void, void, _OWORD *), void (**a6)(void, void, void, _OWORD *))
{
  v14 = 0;
  memset(&v13[1], 0, 32);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v13;
  }

  v13[0] = 0uLL;
  if (a5)
  {
    v10 = a5;
    a5[2](a5, a2, v9);
  }

  else
  {
    if (!a6)
    {
      goto LABEL_9;
    }

    a6[2](a6, a2, a4, v9);
    v10 = a6;
  }

  _Block_release(v10);
LABEL_9:
  if (object)
  {
    xpc_release(object);
  }

  if (a3)
  {
    if (a4)
    {
      v12 = (a3 + 48);
      do
      {
        if (*v12)
        {
          CFRelease(*v12);
          *v12 = 0;
        }

        v12 += 7;
        --a4;
      }

      while (a4);
    }

    free(a3);
  }
}

void __managed_event_send_with_reply_block_invoke(void *a1)
{
  if (!managed_event_get_connection_connection)
  {
    if (managed_event_get_queue_managed_event_queue_once != -1)
    {
      managed_event_send_with_reply_cold_1();
    }

    managed_event_get_connection_connection = xpc_connection_create_mach_service("com.apple.symptoms.symptomsd.managed_events", managed_event_get_queue_managed_event_queue, 2uLL);
    if (managed_event_get_connection_connection)
    {
      if (MEMORY[0x26D69F8A0](managed_event_get_connection_connection) == MEMORY[0x277D86450])
      {
        xpc_connection_set_event_handler(managed_event_get_connection_connection, &__block_literal_global_9);
        xpc_connection_activate(managed_event_get_connection_connection);
      }

      else
      {
        if (managed_event_get_connection_connection)
        {
          xpc_release(managed_event_get_connection_connection);
          managed_event_get_connection_connection = 0;
        }

        managed_event_get_connection_connection = 0;
      }
    }
  }

  v2 = managed_event_get_connection_connection;
  if (managed_event_get_connection_connection)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[4];

    xpc_connection_send_message_with_reply(v2, v3, v4, v5);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_26C37E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "managed_event_send_with_reply: connection no longer current", buf, 2u);
    }

    v6 = a1[6];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __managed_event_send_with_reply_block_invoke_1;
    block[3] = &unk_279D2E658;
    block[4] = a1[4];
    dispatch_async(v6, block);
  }
}

BOOL managed_event_fetch_series(uint64_t a1, uint64_t a2, void *aBlock)
{
  if (aBlock)
  {
    v6 = _Block_copy(aBlock);
    v7 = msg_requesting(a1, a2);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = __managed_event_fetch_helper_block_invoke;
    v9[3] = &unk_279D2E6E8;
    v9[5] = v6;
    v9[6] = v7;
    v9[4] = 0;
    managed_event_send_with_reply(v7, v9);
  }

  return aBlock != 0;
}

dispatch_queue_t __managed_event_get_queue_block_invoke()
{
  result = dispatch_queue_create("com.apple.symptoms.managed_events.queue", 0);
  managed_event_get_queue_managed_event_queue = result;
  return result;
}

void __managed_event_get_connection_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x26D69F8A0](a2) != MEMORY[0x277D86480] || !managed_event_get_connection_connection)
  {
    goto LABEL_2;
  }

  if (a2 == MEMORY[0x277D863F0])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2;
    }

    LOWORD(v10) = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "managed_event_get_connection received XPC_ERROR_CONNECTION_INTERRUPTED";
LABEL_18:
    v9 = 2;
    goto LABEL_19;
  }

  if (a2 == MEMORY[0x277D863F8])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_26C37E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "managed_event_get_connection received XPC_ERROR_CONNECTION_INVALID", &v10, 2u);
    }

    xpc_connection_cancel(managed_event_get_connection_connection);
    if (managed_event_get_connection_connection)
    {
      xpc_release(managed_event_get_connection_connection);
      managed_event_get_connection_connection = 0;
    }

    managed_event_get_connection_connection = 0;
    goto LABEL_2;
  }

  v4 = MEMORY[0x277D86420];
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (a2 == v4)
  {
    if (!v5)
    {
      goto LABEL_2;
    }

    LOWORD(v10) = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "managed_event_get_connection received XPC_ERROR_TERMINATION_IMMINENT";
    goto LABEL_18;
  }

  if (v5)
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
    v10 = 136315138;
    v11 = string;
    v7 = MEMORY[0x277D86220];
    v8 = "managed_event_get_connection received unknown %s";
    v9 = 12;
LABEL_19:
    _os_log_impl(&dword_26C37E000, v7, OS_LOG_TYPE_ERROR, v8, &v10, v9);
  }

LABEL_2:
  v3 = *MEMORY[0x277D85DE8];
}