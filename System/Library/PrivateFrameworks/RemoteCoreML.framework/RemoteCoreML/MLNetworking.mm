@interface MLNetworking
@end

@implementation MLNetworking

void __32___MLNetworking_startConnection__block_invoke(uint64_t a1, int a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) connection];
  v7 = nw_connection_copy_endpoint(v6);

  if (v5)
  {
    error_code = nw_error_get_error_code(v5);
    *__error() = error_code;
    v9 = [*(a1 + 32) logType];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __32___MLNetworking_startConnection__block_invoke_cold_1(a1);
    }
  }

  else
  {
    *__error() = 0;
  }

  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 == 5)
      {
        v10 = [*(a1 + 32) logType];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __32___MLNetworking_startConnection__block_invoke_cold_2(a1);
        }

        goto LABEL_23;
      }

      goto LABEL_24;
    }

    v10 = [*(a1 + 32) logType];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v11 = NSStringFromSelector(*(a1 + 40));
    hostname = nw_endpoint_get_hostname(v7);
    port = nw_endpoint_get_port(v7);
    v14 = [*(a1 + 32) nwOptions];
    v25 = [v14 useUDP];
    v26 = "tcp";
    v27 = 138413058;
    v28 = v11;
    v29 = 2080;
    if (v25)
    {
      v26 = "udp";
    }

    v30 = hostname;
    v31 = 1024;
    v32 = port;
    v33 = 2080;
    v34 = v26;
    v21 = "%@: connect to %s port %u (%s) failed";
LABEL_28:
    _os_log_debug_impl(&dword_261D92000, v10, OS_LOG_TYPE_DEBUG, v21, &v27, 0x26u);
    goto LABEL_13;
  }

  if (a2 == 1)
  {
    v10 = [*(a1 + 32) logType];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    v11 = NSStringFromSelector(*(a1 + 40));
    v17 = nw_endpoint_get_hostname(v7);
    v18 = nw_endpoint_get_port(v7);
    v14 = [*(a1 + 32) nwOptions];
    v19 = [v14 useUDP];
    v20 = "tcp";
    v27 = 138413058;
    v28 = v11;
    v29 = 2080;
    if (v19)
    {
      v20 = "udp";
    }

    v30 = v17;
    v31 = 1024;
    v32 = v18;
    v33 = 2080;
    v34 = v20;
    v21 = "%@: connect to %s port %u (%s) failed, is waiting";
    goto LABEL_28;
  }

  if (a2 == 3)
  {
    v10 = [*(a1 + 32) logType];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_23:

      goto LABEL_24;
    }

    v11 = NSStringFromSelector(*(a1 + 40));
    v12 = nw_endpoint_get_hostname(v7);
    v13 = nw_endpoint_get_port(v7);
    v14 = [*(a1 + 32) nwOptions];
    v15 = [v14 useUDP];
    v16 = "tcp";
    v27 = 138413058;
    v28 = v11;
    v29 = 2080;
    if (v15)
    {
      v16 = "udp";
    }

    v30 = v12;
    v31 = 1024;
    v32 = v13;
    v33 = 2080;
    v34 = v16;
    _os_log_impl(&dword_261D92000, v10, OS_LOG_TYPE_INFO, "%@: Connection to %s port %u (%s) succeeded!", &v27, 0x26u);
LABEL_13:

    goto LABEL_23;
  }

LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
}

void __48___MLNetworking_setListenerReceiveDataCallBack___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) logType];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __48___MLNetworking_setListenerReceiveDataCallBack___block_invoke_cold_1(a1);
  }

  [*(a1 + 32) setConnection:v3];
  [*(a1 + 32) startConnection];
  [*(a1 + 32) receiveLoop:*(a1 + 40)];
}

void __26___MLNetworking_sendData___block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error_code = nw_error_get_error_code(error);
    *__error() = error_code;
    v4 = [*(a1 + 32) logType];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __26___MLNetworking_sendData___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v4 = [*(a1 + 32) logType];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __26___MLNetworking_sendData___block_invoke_cold_2(a1);
    }
  }
}

void __29___MLNetworking_receiveLoop___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __29___MLNetworking_receiveLoop___block_invoke_2;
  v20[3] = &unk_279AFC998;
  v26 = a4;
  v12 = v10;
  v13 = *(a1 + 32);
  v21 = v12;
  v22 = v13;
  v25 = *(a1 + 48);
  v14 = v11;
  v23 = v14;
  v24 = *(a1 + 40);
  v15 = MEMORY[0x26671F110](v20);
  v16 = v15;
  if (v9)
  {
    v17 = MEMORY[0x26671F110](v15);

    (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v12, a4, v14, v18, v19);
    v16 = v17;
  }

  v16[2](v16);
}

void __29___MLNetworking_receiveLoop___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (nw_content_context_get_is_final(v2))
      {
        v3 = [*(a1 + 40) logType];
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          v8 = NSStringFromSelector(*(a1 + 64));
          v9 = *(a1 + 72);
          v10 = *(a1 + 32);
          v11 = 138412802;
          v12 = v8;
          v13 = 1024;
          v14 = v9;
          v15 = 2048;
          v16 = v10;
          _os_log_debug_impl(&dword_261D92000, v3, OS_LOG_TYPE_DEBUG, "%@: complete disconnect is_complete=%d ,context=%p", &v11, 0x1Cu);
        }

        goto LABEL_8;
      }
    }
  }

  if (*(a1 + 48))
  {
LABEL_8:
    v4 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *MEMORY[0x277D85DE8];

  [v5 receiveLoop:v6];
}

void __32___MLNetworking_startConnection__block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  v4 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_261D92000, v5, v6, "%@: Start connection error code=%d", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __32___MLNetworking_startConnection__block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v9 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __48___MLNetworking_setListenerReceiveDataCallBack___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(*(a1 + 48));
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __26___MLNetworking_sendData___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  v4 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_261D92000, v5, v6, "%@: send error code=%d.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __26___MLNetworking_sendData___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  v4 = *__error();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x277D85DE8];
}

@end