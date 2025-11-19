@interface SYBacklinkIndicatorUsage
+ (id)_identifierFromUserActivity:(id)a3;
+ (id)_proxyWithError:(id *)a3;
+ (void)didActivateBacklinkItemWithIdentifier:(id)a3;
+ (void)didActivateBacklinkItemWithUserActivity:(id)a3;
+ (void)didDismissBacklinkItemWithUserActivity:(id)a3;
@end

@implementation SYBacklinkIndicatorUsage

+ (id)_proxyWithError:(id *)a3
{
  v5 = [a1 _listenerEndpoint];

  v6 = objc_alloc(MEMORY[0x277CCAE80]);
  v7 = v6;
  if (v5)
  {
    v8 = [a1 _listenerEndpoint];
    v9 = [v7 initWithListenerEndpoint:v8];
  }

  else
  {
    v9 = [v6 initWithMachServiceName:@"com.apple.synapse.backlink-indicator-usage" options:0];
  }

  v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2838F6750];
  [v9 setRemoteObjectInterface:v10];

  [v9 resume];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__SYBacklinkIndicatorUsage__proxyWithError___block_invoke;
  v13[3] = &unk_27856B808;
  v13[4] = &v14;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v13];
  if (a3)
  {
    *a3 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

void __44__SYBacklinkIndicatorUsage__proxyWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__SYBacklinkIndicatorUsage__proxyWithError___block_invoke_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

+ (void)didActivateBacklinkItemWithIdentifier:(id)a3
{
  v4 = a3;
  v7 = 0;
  v5 = [a1 _proxyWithError:&v7];
  v6 = v5;
  if (!v7)
  {
    [v5 didActivateBacklinkItemWithIdentifier:v4];
  }
}

+ (id)_identifierFromUserActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 activityType];
  if ([v4 isEqualToString:@"com.apple.notes.activity.edit-note"])
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKey:@"uuid"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
      if (v7)
      {
LABEL_12:

        goto LABEL_13;
      }

      v8 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SYBacklinkIndicatorUsage *)v6 _identifierFromUserActivity:v8, v9, v10, v11, v12, v13, v14];
      }
    }

    else
    {
      v8 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SYBacklinkIndicatorUsage *)v5 _identifierFromUserActivity:v8, v21, v22, v23, v24, v25, v26];
      }
    }

    v7 = 0;
    goto LABEL_12;
  }

  v5 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SYBacklinkIndicatorUsage *)v4 _identifierFromUserActivity:v5, v15, v16, v17, v18, v19, v20];
  }

  v7 = 0;
LABEL_13:

  return v7;
}

+ (void)didActivateBacklinkItemWithUserActivity:(id)a3
{
  v4 = [a1 _identifierFromUserActivity:a3];
  if (v4)
  {
    v7 = 0;
    v5 = [a1 _proxyWithError:&v7];
    v6 = v5;
    if (!v7)
    {
      [v5 didActivateBacklinkItemWithIdentifier:v4];
    }
  }
}

+ (void)didDismissBacklinkItemWithUserActivity:(id)a3
{
  v4 = [a1 _identifierFromUserActivity:a3];
  if (v4)
  {
    v7 = 0;
    v5 = [a1 _proxyWithError:&v7];
    v6 = v5;
    if (!v7)
    {
      [v5 didDismissBacklinkItemWithIdentifier:v4];
    }
  }
}

void __44__SYBacklinkIndicatorUsage__proxyWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*(a1 + 32) + 8) + 40));
  OUTLINED_FUNCTION_0_0(&dword_225901000, a2, a3, "Error creating remote object for backlink usage: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_identifierFromUserActivity:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_225901000, a2, a3, "Received userActivity with invalid activityType: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_identifierFromUserActivity:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_225901000, a2, a3, "Failed to create NSUUID from userActivity identifier %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_identifierFromUserActivity:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_225901000, a2, a3, "Failed to retrieve identifier from userInfo: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end