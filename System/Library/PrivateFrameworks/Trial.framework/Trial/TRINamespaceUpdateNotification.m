@interface TRINamespaceUpdateNotification
+ (BOOL)notifyUpdateForNamespaceName:(id)a3;
+ (id)registerUpdateForNamespaceName:(id)a3 queue:(id)a4 usingBlock:(id)a5;
+ (void)deregisterUpdateWithToken:(id)a3;
- (TRINamespaceUpdateNotification)initWithNamespaceName:(id)a3 token:(id)a4;
- (unsigned)namespaceId;
@end

@implementation TRINamespaceUpdateNotification

- (TRINamespaceUpdateNotification)initWithNamespaceName:(id)a3 token:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRINamespaceUpdateNotification;
  v9 = [(TRINamespaceUpdateNotification *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namespaceName, a3);
    objc_storeStrong(&v10->_token, a4);
  }

  return v10;
}

- (unsigned)namespaceId
{
  v2 = MEMORY[0x277D73B50];
  v3 = [(TRINamespaceUpdateNotification *)self namespaceName];
  LODWORD(v2) = [v2 namespaceIdFromName:v3];

  return v2;
}

+ (id)registerUpdateForNamespaceName:(id)a3 queue:(id)a4 usingBlock:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  out_token = -1;
  v9 = a4;
  v10 = [TRINamespaceUpdateNotification notificationNameForNamespaceName:v7];
  v11 = [v10 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __82__TRINamespaceUpdateNotification_registerUpdateForNamespaceName_queue_usingBlock___block_invoke;
  handler[3] = &unk_27885E2A0;
  v12 = v7;
  v21 = v12;
  v13 = v8;
  v22 = v13;
  v14 = notify_register_dispatch(v11, &out_token, v9, handler);

  if (v14)
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v25 = v14;
      _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", buf, 0xCu);
    }

    v16 = 0;
  }

  else
  {
    v17 = [TRINotificationState alloc];
    v16 = [(TRINotificationState *)v17 initWithToken:out_token];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

void __82__TRINamespaceUpdateNotification_registerUpdateForNamespaceName_queue_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEBUG, "received update notification for namespace %@", &v10, 0xCu);
  }

  v5 = [[TRINotificationState alloc] initWithToken:a2];
  v6 = *(a1 + 40);
  v7 = [[TRINamespaceUpdateNotification alloc] initWithNamespaceName:*(a1 + 32) token:v5];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)deregisterUpdateWithToken:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notify_cancel([v3 token]);
  }
}

+ (BOOL)notifyUpdateForNamespaceName:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [TRINamespaceUpdateNotification notificationNameForNamespaceName:a3];
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEFAULT, "Sending namespace update notification: %{public}@", &v9, 0xCu);
  }

  v5 = notify_post([v3 UTF8String]);
  if (v5)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = v5;
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

@end