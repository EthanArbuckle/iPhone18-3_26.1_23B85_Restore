void tcc_identity_encode_to_dictionary(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_uint64(xdict, "TCCD_MSG_IDENTITY_TYPE_KEY", *(a1 + 56));
  xpc_dictionary_set_string(xdict, "TCCD_MSG_IDENTITY_ID_KEY", *(a1 + 64));
  xpc_dictionary_set_uint64(xdict, "TCCD_MSG_IDENTITY_VERIFIER_TYPE_KEY", *(a1 + 72));
  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 80);

    xpc_dictionary_set_string(xdict, "TCCD_MSG_IDENTITY_VERIFIER_CODE_REQUIREMENT_KEY", v4);
  }
}

uint64_t tcc_identity_hash(void *a1)
{
  v3 = a1[7];
  v2 = a1[8];
  no_copy = xpc_string_create_no_copy();
  v5 = xpc_hash(no_copy) - v3 + 32 * v3;
  xpc_release(no_copy);
  v6 = a1[9];
  v7 = v6 - v5 + 32 * v5;
  if (v6 == 1)
  {
    v8 = a1[10];
    v9 = xpc_string_create_no_copy();
    v7 = xpc_hash(v9) - v7 + 32 * v7;
    xpc_release(v9);
  }

  return v7;
}

void tcc_authorization_changed_for_service_notification_name_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void tcc_authorization_change_monitor_create_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "tcc_authorization_change_monitor_create";
  _os_log_error_impl(&dword_1B1686000, log, OS_LOG_TYPE_ERROR, "%s: CFDictionaryCreateMutable failed", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_change_monitor_start_monitoring_service_block_invoke_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136446466;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1B1686000, log, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}s) failed: %d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_change_monitor_start_monitoring_service_block_invoke_2_cold_1(int *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 136315394;
  v5 = "tcc_authorization_change_monitor_start_monitoring_service_block_invoke_2";
  v6 = 1024;
  v7 = v2;
  _os_log_fault_impl(&dword_1B1686000, a2, OS_LOG_TYPE_FAULT, "%s: Failed to get service for token %d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void _tcc_util_create_CFError_with_user_info_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1686000, a2, OS_LOG_TYPE_ERROR, "User Info string for a CFError is NULL; format: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void tccd_send_message_cold_10()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __TCCAccessRequest_block_invoke_8_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void service_queue_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __TCCAccessCopyInformation_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessCopyInformationForBundleId_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessCopyBundleIdentifiersForService_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessCopyBundleIdentifiersDisabledForService_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void TCCAccessSetInternal_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __TCCAccessSetInternal_block_invoke_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessSetOverride_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessGetOverride_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void _append_override_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __TCCAccessDeclarePolicy_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessSelectPolicyForExtensionWithIdentifier_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessResetPoliciesExcept_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCExpirationCopyInformationForService_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCServiceCopyDescriptions_block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __TCCServiceCopyDescriptions_block_invoke_2_cold_4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCTestInternalWithReplyHander4_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void TCCCopyIconResourcePathForService_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __TCCCopyIconResourcePathForService_block_invoke_2_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  TCCAuthPromptIconString(*(a1 + 40));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCCopyIconResourcePathForService_block_invoke_2_cold_4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCAccessResetAll_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCIntegrityFlagCheck_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __TCCIntegrityFlagCheck_block_invoke_cold_4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCIntegrityFlagReset_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __TCCIntegrityFlagReset_block_invoke_cold_4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void tccd_reply_description_redacted_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __tccd_send_message_block_invoke_cold_5(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __TCCGetOverridesInternal_block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __TCCGetOverridesInternal_block_invoke_2_cold_4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void TCCResetInternalWithConnection_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __TCCResetInternalWithConnection_block_invoke_2_cold_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_request_with_endpoint_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization request (%{public}s) fails: %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_preflight_with_endpoint_block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  tcc_service_get_name(*(a1 + 40));
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v1, "tcc_authorization_preflight(%{public}s) fails: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_audit_token_request_change_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization audit token request change (%{public}s) fails: %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_audit_token_report_use_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "(%{public}s) fails: %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_request_change_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization request change (%{public}s) fails: %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void __tcc_authorization_set_access_with_prompt_block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0(&dword_1B1686000, MEMORY[0x1E69E9C10], v0, "TCC authorization request change (%{public}s) fails: %{public}@", v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void tcc_authorization_cache_create_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: os_state_add_handler failed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void tcc_authorization_cache_create_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: tcc_authorization_change_monitor_create failed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void tcc_authorization_cache_create_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: CFDictionaryCreateMutable failed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void _tcc_authorization_cache_locked_set_authorization_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, a1, a3, "%s: CFDictionaryCreateMutable failed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void tcc_authorization_cache_handle_authorization_changed_for_service_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "_tcc_authorization_cache_copy_current_authorization";
  _os_log_error_impl(&dword_1B1686000, log, OS_LOG_TYPE_ERROR, "%s: failed to initialize server", buf, 0xCu);
}

void tcc_authorization_cache_handle_authorization_changed_for_service_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  tcc_service_get_name(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1B1686000, v1, v2, "%s: Failed to find cached authorizations for %{public}s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void tcc_authorization_cache_handle_authorization_changed_for_service_clear_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  tcc_service_get_name(a1);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_0(&dword_1B1686000, v1, v2, "%s: Failed to find cached authorizations for %{public}s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void ___tcc_authorization_cache_copy_current_authorization_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "_tcc_authorization_cache_copy_current_authorization_block_invoke";
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1B1686000, a2, OS_LOG_TYPE_ERROR, "%s: authorization request failed with error: %{public}@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void tcc_events_subscribe_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 136446210;
  v5 = v2;
  _os_log_debug_impl(&dword_1B1686000, a2, OS_LOG_TYPE_DEBUG, "Replaced subscription: %{public}s", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void tcc_events_unsubscribe_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, v0, v1, "Subscription not found: %{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_1(const _xpc_type_s *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  xpc_type_get_name(a1);
  OUTLINED_FUNCTION_1_1();
  v7 = 2080;
  v8 = a2;
  _os_log_error_impl(&dword_1B1686000, a3, OS_LOG_TYPE_ERROR, "Subscriber received event of unexpected type %s: %s", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(&dword_1B1686000, v0, OS_LOG_TYPE_DEBUG, "Subscriber received event: %s", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, v0, v1, "Failed to create TCC authorization record from XPC object: %{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, v0, v1, "Invalid TCC event: %{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, v0, v1, "No subscription found for %{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, v0, v1, "Invalid XPC event: %{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_9()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0(&dword_1B1686000, v0, v1, "Entitlement check reply failed: %{public}s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___tcc_events_initialize_block_invoke_2_cold_10(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_1B1686000, a2, OS_LOG_TYPE_ERROR, "Subscriber received error: %s", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __tcc_server_set_authorization_change_handler_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1B1686000, a1, a3, "Called stub: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __tcc_server_message_set_authorization_change_policy_block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_1B1686000, a1, a3, "Called stub: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_request_authorization_block_invoke_3_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_request_authorization_block_invoke_3_cold_3(void *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_prompt_authorization_value_block_invoke_2_cold_1(void *a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(a1, a2);
  xpc_dictionary_get_string(a1, string);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_get_authorization_records_block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_get_authorization_records_block_invoke_2_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_get_authorization_records_block_invoke_2_cold_3(void *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_get_identity_for_credential_block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_get_identity_for_credential_block_invoke_2_cold_2(void *a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(a1, a2);
  xpc_dictionary_get_string(a1, string);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_report_resource_use_block_invoke_2_cold_1(void *a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(a1, a2);
  xpc_dictionary_get_string(a1, string);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void ___tcc_server_send_get_authorization_records_by_services_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___tcc_server_send_analytics_for_external_service_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___tcc_server_send_analytics_for_external_service_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}