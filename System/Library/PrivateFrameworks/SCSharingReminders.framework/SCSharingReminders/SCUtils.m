@interface SCUtils
+ (void)registerDarwinNotification:(id)a3;
+ (void)registerNeededNotificationsForManager:(id)a3 completionHandler:(id)a4;
+ (void)submitTaskRequest:(id)a3 completion:(id)a4;
+ (void)unregisterDarwinNotification:(id)a3;
@end

@implementation SCUtils

+ (void)registerDarwinNotification:(id)a3
{
  v3 = [a3 cStringUsingEncoding:4];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "Notification", v3);
  xpc_set_event();
}

+ (void)unregisterDarwinNotification:(id)a3
{
  [a3 cStringUsingEncoding:4];

  xpc_set_event();
}

+ (void)registerNeededNotificationsForManager:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke;
  v8[3] = &unk_279B39968;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a3 getNeededNotificationsWithCompletion:v8];
}

void __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SCLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 40) registerDarwinNotification:*(*(&v13 + 1) + 8 * i)];
        }

        v9 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  (*(*(a1 + 32) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)submitTaskRequest:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CF0810] sharedScheduler];
  v8 = [v5 identifier];
  v9 = [v7 taskRequestForIdentifier:v8];

  if (v9)
  {
    v10 = SCLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_262556000, v10, OS_LOG_TYPE_DEFAULT, "Not submitting task request %@ because one already exists", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    v11 = [MEMORY[0x277CF0810] sharedScheduler];
    v16 = 0;
    v12 = [v11 submitTaskRequest:v5 error:&v16];
    v13 = v16;

    if ((v12 & 1) == 0)
    {
      v14 = SCLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCUtils submitTaskRequest:v13 completion:v14];
      }
    }

    (*(v6 + 2))(v6, v12, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "Failed to get needed notifications for registering. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)submitTaskRequest:(__CFString *)a1 completion:(NSObject *)a2 .cold.1(__CFString *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = @"Unknown";
  if (a1)
  {
    v2 = a1;
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_262556000, a2, OS_LOG_TYPE_ERROR, "@SCUtils Failed to submit task. Error: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end