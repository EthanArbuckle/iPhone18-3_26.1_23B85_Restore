@interface SpotlightDaemonClientHandleCommand
@end

@implementation SpotlightDaemonClientHandleCommand

void ___SpotlightDaemonClientHandleCommand_block_invoke(uint64_t a1, const char *a2, void *a3, const char *a4, int64_t a5)
{
  value = a3;
  v9 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v9)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v11 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "status", a5);
      if (a2 && value)
      {
        xpc_dictionary_set_value(v11, a2, value);
      }

      if (a4)
      {
        xpc_dictionary_set_string(v11, "ed", a4);
      }

      xpc_connection_send_message(v9, v11);
    }
  }
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    ___SpotlightDaemonClientHandleCommand_block_invoke_5_cold_1();
  }

  v7 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v7];
  v5 = v7;
  if (v5)
  {
    v6 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___SpotlightDaemonClientHandleCommand_block_invoke_5_cold_2(v5, v6);
    }
  }

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 length];
  if (v6)
  {
    v6 = xpc_data_create([v11 bytes], v6);
  }

  v7 = *(a1 + 32);
  v8 = [v5 domain];
  v9 = [v8 UTF8String];
  v10 = [v5 code];

  (*(v7 + 16))(v7, "d", v6, v9, v10);
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v18 path];
  v7 = [v6 fileSystemRepresentation];

  if (v7)
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    if (!v8 || ![v8 hasPrefix:@"com.apple.omnisearch."])
    {
      v9 = *MEMORY[0x277D861B8];
    }

    v10 = sandbox_extension_issue_file();
    v7 = v10;
    if (v10)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v10 length:strlen(v10) + 1];
    }
  }

  v11 = [MEMORY[0x277CC33A0] encodeURL:v18 withSandboxExtensionData:v7];
  v12 = v11;
  if (v11 && [v11 length])
  {
    v13 = xpc_data_create([v12 bytes], objc_msgSend(v12, "length"));
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 32);
  v15 = [v5 domain];
  v16 = [v15 UTF8String];
  v17 = [v5 code];

  (*(v14 + 16))(v14, "u", v13, v16, v17);
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_2_55(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCAAB0];
  v6 = a3;
  v7 = [v5 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  v8 = [v7 length];
  if (v8)
  {
    v13 = xpc_data_create([v7 bytes], v8);
  }

  else
  {
    v13 = 0;
  }

  v9 = *(a1 + 32);
  v10 = [v6 domain];
  v11 = [v10 UTF8String];
  v12 = [v6 code];

  (*(v9 + 16))(v9, "brs", v13, v11, v12);
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_3_59(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCAAB0];
  v6 = a3;
  v7 = [v5 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  v8 = [v7 length];
  if (v8)
  {
    v13 = xpc_data_create([v7 bytes], v8);
  }

  else
  {
    v13 = 0;
  }

  v9 = *(a1 + 32);
  v10 = [v6 domain];
  v11 = [v10 UTF8String];
  v12 = [v6 code];

  (*(v9 + 16))(v9, "brs", v13, v11, v12);
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_4_60(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CC3400];
  v7 = a3;
  v8 = a2;
  v9 = [[v6 alloc] initWithFileURL:v8 andError:v7];

  [v5 addObject:v9];
  v10 = *(a1 + 40);

  dispatch_group_leave(v10);
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_5_62(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

void ___SpotlightDaemonClientHandleCommand_block_invoke_5_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232D5E000, a2, OS_LOG_TYPE_ERROR, "Error while decoding updatedItem: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end