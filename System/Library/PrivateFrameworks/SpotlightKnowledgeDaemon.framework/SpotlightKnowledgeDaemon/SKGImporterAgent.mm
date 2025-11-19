@interface SKGImporterAgent
+ (void)initialize;
- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3;
- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5;
- (BOOL)handleProcessRecordMessage:(id)a3 connection:(id)a4;
- (void)_setup;
- (void)didReceiveMemoryPressureNotification:(unint64_t)a3;
- (void)didReceiveSignal:(unint64_t)a3;
@end

@implementation SKGImporterAgent

+ (void)initialize
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = 0;
    _os_log_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "sEnableCSEventListener: %d", v5, 8u);
  }

  v2 = [(CSXPCConnection *)[SKGImporterAgent alloc] initMachServiceListenerWithName:@"com.apple.spotlightknowledged.importer" enableConnectionLogging:0];
  v3 = sUpdaterAgent;
  sUpdaterAgent = v2;

  [sUpdaterAgent _setup];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setup
{
  [MEMORY[0x277D65750] setDelegate:self memoryStatusFlags:55];
  v2 = MEMORY[0x277D65750];

  [v2 setupHandlers];
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  pid = xpc_connection_get_pid(v3);
  xpc_connection_get_audit_token();

  v5 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(v5, &token);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopyValueForEntitlement(v6, @"com.apple.private.corespotlight.sender.importer", 0);
    v9 = [v8 BOOLValue];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v9)
    {
      if (CurrentLoggingLevel >= 5)
      {
        v11 = SKGLogAgentInit();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          token.val[0] = 67109120;
          token.val[1] = pid;
          _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_INFO, "New sender connection for pid: %d", &token, 8u);
        }

LABEL_10:
      }
    }

    else if (CurrentLoggingLevel >= 2)
    {
      v11 = SKGLogAgentInit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SKGImporterAgent *)pid addClientConnectionIfAllowedForConnection:v11];
      }

      goto LABEL_10;
    }

    CFRelease(v7);

    goto LABEL_12;
  }

  LOBYTE(v9) = 0;
LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v10 = SKGLogAgentInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = a3;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "command %s info:%p", &v19, 0x16u);
    }
  }

  if (!strcmp(a3, "test"))
  {
    v12 = xpc_data_create("TEST", 5uLL);

    v11 = 0;
    v13 = 0;
    v14 = v12 == 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = !strcmp(a3, "processRecord") && [(SKGImporterAgent *)self handleProcessRecordMessage:v8 connection:v9];
    v13 = -1;
    v14 = 1;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (!v11)
  {
    reply = xpc_dictionary_create_reply(v8);
    v16 = reply;
    v11 = reply != 0;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "status", v13);
      if (!v14)
      {
        xpc_dictionary_set_data(v16, "data", "TEST", 5uLL);
      }

      xpc_connection_send_message(v9, v16);
    }
  }

LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)didReceiveSignal:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogAgentInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "didReceiveSignal %ld", &v6, 0xCu);
    }
  }

  if (a3 == 15)
  {
    exit(0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMemoryPressureNotification:(unint64_t)a3
{
  v8 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogAgentInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "didReceiveMemoryPressureNotification %llx", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleProcessRecordMessage:(id)a3 connection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogAgentInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "handleProcessRecord", buf, 2u);
    }
  }

  if ([MEMORY[0x277CC3510] copyBoolForKey:"includeEmbeddings" fromXPCDictionary:v5])
  {
    v8 = [MEMORY[0x277D657A0] sharedContext];
    v9 = [v8 enableEmbeddings];
  }

  else
  {
    v9 = 0;
  }

  if ([MEMORY[0x277CC3510] copyBoolForKey:"includeKeyphrases" fromXPCDictionary:v5])
  {
    v10 = [MEMORY[0x277D657A0] sharedContext];
    v11 = [v10 enableKeyphrases];
  }

  else
  {
    v11 = 0;
  }

  *buf = 0;
  v33 = buf;
  v34 = 0x2020000000;
  v35 = -1;
  if (v6)
  {
    reply = xpc_dictionary_create_reply(v5);
    v13 = reply;
    if (reply)
    {
      if (((v11 | v9) & 1) == 0)
      {
        *(v33 + 6) = 0;
        xpc_dictionary_set_int64(reply, "status", 0);
        xpc_connection_send_message(v6, v13);
        v18 = 0;
        v14 = 0;
LABEL_33:
        v27 = 1;
        goto LABEL_34;
      }

      v14 = [MEMORY[0x277CC3510] copyNSStringForKey:"protectionClass" fromXPCDictionary:v5];
      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277CC33C8]);
        v16 = [MEMORY[0x277CC3510] copyNSDataForKey:"record" fromXPCDictionary:v5];
        v17 = [v15 initWithData:v16];
        v18 = [v17 decode];

        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = [MEMORY[0x277D65798] sharedProcessor];
        v20 = [v19 recordIsValid:v18];

        if (v20)
        {
          goto LABEL_19;
        }
      }

      v18 = 0;
LABEL_19:
      v21 = [MEMORY[0x277CC3510] copyNSStringForKey:"referenceIdentifier" fromXPCDictionary:v5];
      if (v9)
      {
        v22 = [MEMORY[0x277D65798] sharedProcessor];
        [v22 loadEmbedder];
      }

      if (v11)
      {
        v23 = [MEMORY[0x277D65798] sharedProcessor];
        [v23 loadKeyphraser];
      }

      v24 = [MEMORY[0x277D65798] sharedProcessor];
      v25 = 2;
      if (!v9)
      {
        v25 = 0;
      }

      if (v11)
      {
        v26 = v25 | 4;
      }

      else
      {
        v26 = v25;
      }

      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __58__SKGImporterAgent_handleProcessRecordMessage_connection___block_invoke;
      v29[3] = &unk_27893E8B0;
      v13 = v13;
      v30 = v13;
      v31 = buf;
      [v24 enumerateProcessedItemsFromRecord:v18 referenceIdentifier:v21 bundleIdentifier:0 protectionClass:v14 processorFlags:v26 processedItemBlock:v29 cancelBlock:&__block_literal_global_32];

      xpc_dictionary_set_int64(v13, "status", *(v33 + 6));
      xpc_connection_send_message(v6, v13);

      goto LABEL_33;
    }

    v27 = 0;
  }

  else
  {
    v27 = 0;
    v13 = 0;
  }

  v18 = 0;
  v14 = 0;
LABEL_34:

  _Block_object_dispose(buf, 8);
  return v27;
}

uint64_t __58__SKGImporterAgent_handleProcessRecordMessage_connection___block_invoke(uint64_t a1, void *a2)
{
  v3 = attributeSetForProcessedItem(a2);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
    v5 = [v3 attributeDictionary];
    [v4 encodeObject:v5];

    v6 = [v4 data];
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_data(*(a1 + 32), "attrDict", [v6 bytes], objc_msgSend(v6, "length"));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  return 0;
}

- (void)addClientConnectionIfAllowedForConnection:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "Error pid: %d missing sender entitlement", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end