@interface SLDCollaborationNoticeService
+ (id)sharedService;
- (BOOL)_connShouldUnrestrictHighlightLookup:(id)a3;
- (id)_applicationIdentifierForConnection:(id)a3;
- (id)_handlesForAttributionIdentifiers:(id)a3 appID:(id)a4;
- (void)_send:(id)a3 forAttributionIdentifiers:(id)a4 reply:(id)a5;
- (void)_sendClearNoticesTransmission:(id)a3 forAttributionIdentifiers:(id)a4 reply:(id)a5;
- (void)sendClearNoticesFor:(id)a3 forAttributionIdentifiers:(id)a4 reply:(id)a5;
- (void)sendHighlightEventData:(id)a3 eventType:(int64_t)a4 forAttributionIdentifiers:(id)a5 reply:(id)a6;
@end

@implementation SLDCollaborationNoticeService

+ (id)sharedService
{
  if (sharedService_onceToken_6 != -1)
  {
    +[SLDCollaborationNoticeService sharedService];
  }

  v3 = sharedService_sService_6;

  return v3;
}

uint64_t __46__SLDCollaborationNoticeService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationNoticeService);
  v1 = sharedService_sService_6;
  sharedService_sService_6 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)sendClearNoticesFor:(id)a3 forAttributionIdentifiers:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc(getIMCollaborationClearTransmissionClass());
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v13 UUIDString];
  v15 = [v11 initWithCollaborationId:v10 date:v12 guidString:v14];

  [(SLDCollaborationNoticeService *)self _sendClearNoticesTransmission:v15 forAttributionIdentifiers:v9 reply:v8];
}

- (void)sendHighlightEventData:(id)a3 eventType:(int64_t)a4 forAttributionIdentifiers:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc(getIMCollaborationNoticeTransmissionClass());
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [v13 initWithEventData:v12 eventType:a4 guidString:v15 date:v16];

  [(SLDCollaborationNoticeService *)self _send:v17 forAttributionIdentifiers:v11 reply:v10];
}

- (void)_sendClearNoticesTransmission:(id)a3 forAttributionIdentifiers:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(SLDCollaborationNoticeService *)self _connShouldUnrestrictHighlightLookup:v11])
  {
    v12 = @"accessibility";
  }

  else
  {
    v12 = [(SLDCollaborationNoticeService *)self _applicationIdentifierForConnection:v11];
  }

  if (!getIMCollaborationNoticeDispatcherClass() || !getIMCollaborationClearTransmissionClass() || ([getIMCollaborationClearTransmissionClass() instancesRespondToSelector:sel_initWithCollaborationId_date_guidString_] & 1) == 0)
  {
    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:];
    }

    v10[2](v10, 0);
  }

  v14 = [(SLDCollaborationNoticeService *)self _handlesForAttributionIdentifiers:v9 appID:v12];
  if (!v14)
  {
    v15 = SLDaemonLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:];
    }

    goto LABEL_17;
  }

  if (![getIMCollaborationNoticeDispatcherClass() instancesRespondToSelector:sel_sendClearNotice_toHandles_completion_])
  {
    v15 = SLDaemonLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:];
    }

LABEL_17:

    v10[2](v10, 0);
    goto LABEL_18;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke;
  block[3] = &unk_278927298;
  block[4] = self;
  v17 = v8;
  v18 = v14;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10[2](v10, 1);

LABEL_18:
}

void __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 134218498;
    v18 = v5;
    v19 = 2080;
    v20 = "[SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] posting clear notice to imagent. Request UUID: %@", buf, 0x20u);
  }

  v6 = objc_alloc_init(getIMCollaborationNoticeDispatcherClass());
  v7 = a1[5];
  v8 = [MEMORY[0x277CBEB98] setWithArray:a1[6]];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke_55;
  v13[3] = &unk_2789275B0;
  v9 = a1[4];
  v14 = v6;
  v15 = v9;
  v16 = v3;
  v10 = v3;
  v11 = v6;
  [v11 sendClearNotice:v7 toHandles:v8 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __95__SLDCollaborationNoticeService__sendClearNoticesTransmission_forAttributionIdentifiers_reply___block_invoke_55(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) disconnectFromDaemon];
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    if (a2)
    {
      v5 = @"YES";
    }

    v9 = 134218754;
    v10 = v6;
    v11 = 2080;
    v12 = "[SLDCollaborationNoticeService _sendClearNoticesTransmission:forAttributionIdentifiers:reply:]_block_invoke";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] post clear notice completion success: %@ request UUID: %@", &v9, 0x2Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_send:(id)a3 forAttributionIdentifiers:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CCAE80] currentConnection];
  if ([(SLDCollaborationNoticeService *)self _connShouldUnrestrictHighlightLookup:v11])
  {
    v12 = @"accessibility";
  }

  else
  {
    v12 = [(SLDCollaborationNoticeService *)self _applicationIdentifierForConnection:v11];
  }

  if (!getIMCollaborationNoticeDispatcherClass() || !getIMCollaborationNoticeTransmissionClass() || ([getIMCollaborationNoticeTransmissionClass() instancesRespondToSelector:sel_initWithEventData_eventType_guidString_date_] & 1) == 0)
  {
    v13 = SLDaemonLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:];
    }

    v10[2](v10, 0);
  }

  v14 = MEMORY[0x277CBEB98];
  v15 = [(SLDCollaborationNoticeService *)self _handlesForAttributionIdentifiers:v9 appID:v12];
  v16 = [v14 setWithArray:v15];

  if (!v16)
  {
    v17 = SLDaemonLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:];
    }

    goto LABEL_17;
  }

  if (![getIMCollaborationNoticeDispatcherClass() instancesRespondToSelector:sel_sendNotice_toHandles_completion_])
  {
    v17 = SLDaemonLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:];
    }

LABEL_17:

    v10[2](v10, 0);
    goto LABEL_18;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke;
  block[3] = &unk_278927298;
  block[4] = self;
  v19 = v8;
  v20 = v16;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v10[2](v10, 1);

LABEL_18:
}

void __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    *buf = 134218498;
    v18 = v5;
    v19 = 2080;
    v20 = "[SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:]_block_invoke";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] posting notice to imagent. Request UUID: %@", buf, 0x20u);
  }

  v6 = objc_alloc_init(getIMCollaborationNoticeDispatcherClass());
  v7 = a1[5];
  v8 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke_67;
  v13[3] = &unk_2789275B0;
  v9 = a1[4];
  v14 = v6;
  v15 = v9;
  v16 = v3;
  v10 = v3;
  v11 = v6;
  [v11 sendNotice:v7 toHandles:v8 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __71__SLDCollaborationNoticeService__send_forAttributionIdentifiers_reply___block_invoke_67(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) disconnectFromDaemon];
  v4 = SLDaemonLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    if (a2)
    {
      v5 = @"YES";
    }

    v9 = 134218754;
    v10 = v6;
    v11 = 2080;
    v12 = "[SLDCollaborationNoticeService _send:forAttributionIdentifiers:reply:]_block_invoke";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "[SLDCollaborationNoticeService: %p][%s] post notice completion success: %@ request UUID: %@", &v9, 0x2Au);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_handlesForAttributionIdentifiers:(id)a3 appID:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22 = a4;
  v24 = [[SLHighlightCenter alloc] initWithAppIdentifier:v22];
  v6 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(SLHighlightCenter *)v24 fetchAttributionForAttributionIdentifier:*(*(&v29 + 1) + 8 * i)];
        v12 = v11;
        if (v11)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = [v11 relatedPersons];
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v25 + 1) + 8 * j) handle];
                [v6 addObject:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v15);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v19 = [v6 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)_connShouldUnrestrictHighlightLookup:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D46F48];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "processIdentifier")}];
  v15 = 0;
  v7 = [v5 handleForIdentifier:v6 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (v9)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v17 = self;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_231772000, v10, OS_LOG_TYPE_ERROR, "[SLDCollaborationNoticeService: %p] failed to look up a process handle for: %@ error: %@", buf, 0x20u);
    }

    v12 = 0;
  }

  else
  {
    v10 = [v7 bundle];
    v11 = [v10 identifier];
    v12 = [v11 isEqualToString:@"com.apple.SafariBookmarksSyncAgent"];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_applicationIdentifierForConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = MEMORY[0x277CC1E90];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v13 = 0;
  v7 = [v6 bundleRecordForAuditToken:v14 error:&v13];
  v8 = v13;
  v9 = [v7 applicationIdentifier];

  if (!v9)
  {
    v10 = SLDaemonLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SLDCollaborationNoticeService *)self _applicationIdentifierForConnection:v8, v10];
    }
  }

  v11 = [v7 applicationIdentifier];

  return v11;
}

- (void)_sendClearNoticesTransmission:forAttributionIdentifiers:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_4(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Missing notice dispatch and/or notice transmission classes from IMCore/IMSharedUtilities. Bailing.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendClearNoticesTransmission:forAttributionIdentifiers:reply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_4(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Notice dispatch class doesn't respond to the expected selector.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendClearNoticesTransmission:forAttributionIdentifiers:reply:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_3(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Didn't find any handles for attribution identifiers '%@' Bailing.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_send:forAttributionIdentifiers:reply:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_4(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Missing notice dispatch and/or notice transmission classes from IMCore/IMSharedUtilities. Bailing.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_send:forAttributionIdentifiers:reply:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_4(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Notice dispatch class doesn't respond to the expected selector.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_send:forAttributionIdentifiers:reply:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3_3(&dword_231772000, v0, v1, "[SLDCollaborationNoticeService: %p][%s] Didn't find any handles for attribution identifiers '%@' Bailing.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_applicationIdentifierForConnection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412802;
  v10 = v7;
  v11 = 2048;
  v12 = a1;
  v13 = 2112;
  v14 = a2;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "[%@: %p] Failed to generate a bundle record, or the record's app ID is nil. This is required to look up attribution data. Error: %@", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end