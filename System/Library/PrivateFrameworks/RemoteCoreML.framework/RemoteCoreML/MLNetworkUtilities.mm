@interface MLNetworkUtilities
@end

@implementation MLNetworkUtilities

void __59___MLNetworkUtilities_setupBonjour_name_useBonjour_useUDP___block_invoke(uint64_t a1, void *a2, int a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = +[_MLLog common];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = NSStringFromSelector(*(a1 + 32));
    if (a3)
    {
      v9 = "added";
    }

    else
    {
      v9 = "removed";
    }

    bonjour_service_name = nw_endpoint_get_bonjour_service_name(v5);
    v11 = nw_endpoint_get_bonjour_service_name(v5);
    v12 = *(a1 + 40);
    v14 = 138413570;
    v15 = v8;
    if (v12)
    {
      v13 = "_nwcat._udp";
    }

    else
    {
      v13 = "_nwcat._tcp";
    }

    v16 = 2080;
    v17 = v9;
    v18 = 2080;
    v19 = bonjour_service_name;
    v20 = 2080;
    v21 = v11;
    v22 = 2080;
    v23 = v13;
    v24 = 2080;
    v25 = "local";
    _os_log_debug_impl(&dword_261D92000, v6, OS_LOG_TYPE_DEBUG, "%@: Listener %s on %s (%s.%s.%s)", &v14, 0x3Eu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    error_code = nw_error_get_error_code(v5);
  }

  else
  {
    error_code = 0;
  }

  *__error() = error_code;
  switch(a2)
  {
    case 3:
      v8 = +[_MLLog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke_cold_2(a1);
      }

      goto LABEL_13;
    case 2:
      v8 = +[_MLLog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke_cold_1(a1);
      }

      goto LABEL_13;
    case 1:
      v8 = +[_MLLog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke_cold_3(a1);
      }

LABEL_13:

      break;
  }
}

void __36___MLNetworkUtilities_configureTLS___block_invoke(uint64_t a1, id a2)
{
  options = a2;
  v3 = [*(a1 + 32) psk];
  v4 = strlen([*(a1 + 32) psk]);
  v5 = dispatch_data_create(v3, v4, 0, 0);
  sec_protocol_options_add_pre_shared_key(options, v5, v5);
  sec_protocol_options_append_tls_ciphersuite(options, 0xA8u);
}

void __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 40));
  nw_listener_get_port(*(a1 + 32));
  *(a1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

void __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke_cold_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 40));
  *(a1 + 48);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __62___MLNetworkUtilities_setupListenerStateChangeHandler_useUDP___block_invoke_cold_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(a1 + 40));
  nw_listener_get_port(*(a1 + 32));
  *(a1 + 48);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

@end