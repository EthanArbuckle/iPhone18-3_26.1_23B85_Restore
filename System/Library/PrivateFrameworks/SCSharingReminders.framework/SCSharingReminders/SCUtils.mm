@interface SCUtils
+ (void)registerDarwinNotification:(id)notification;
+ (void)registerNeededNotificationsForManager:(id)manager completionHandler:(id)handler;
+ (void)submitTaskRequest:(id)request completion:(id)completion;
+ (void)unregisterDarwinNotification:(id)notification;
@end

@implementation SCUtils

+ (void)registerDarwinNotification:(id)notification
{
  v3 = [notification cStringUsingEncoding:4];
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "Notification", v3);
  xpc_set_event();
}

+ (void)unregisterDarwinNotification:(id)notification
{
  [notification cStringUsingEncoding:4];

  xpc_set_event();
}

+ (void)registerNeededNotificationsForManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SCUtils_registerNeededNotificationsForManager_completionHandler___block_invoke;
  v8[3] = &unk_279B39968;
  v9 = handlerCopy;
  selfCopy = self;
  v7 = handlerCopy;
  [manager getNeededNotificationsWithCompletion:v8];
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

+ (void)submitTaskRequest:(id)request completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  mEMORY[0x277CF0810] = [MEMORY[0x277CF0810] sharedScheduler];
  identifier = [requestCopy identifier];
  v9 = [mEMORY[0x277CF0810] taskRequestForIdentifier:identifier];

  if (v9)
  {
    v10 = SCLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = requestCopy;
      _os_log_impl(&dword_262556000, v10, OS_LOG_TYPE_DEFAULT, "Not submitting task request %@ because one already exists", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    mEMORY[0x277CF0810]2 = [MEMORY[0x277CF0810] sharedScheduler];
    v16 = 0;
    v12 = [mEMORY[0x277CF0810]2 submitTaskRequest:requestCopy error:&v16];
    v13 = v16;

    if ((v12 & 1) == 0)
    {
      v14 = SCLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SCUtils submitTaskRequest:v13 completion:v14];
      }
    }

    (*(completionCopy + 2))(completionCopy, v12, v13);
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