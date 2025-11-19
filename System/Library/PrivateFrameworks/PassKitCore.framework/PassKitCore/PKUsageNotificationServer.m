@interface PKUsageNotificationServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PKUsageNotificationServer)init;
- (void)dealloc;
- (void)notifyPassUsed:(id)a3 fromSource:(int64_t)a4;
- (void)notifyPaymentPassUsedWithTransactionInfo:(id)a3;
@end

@implementation PKUsageNotificationServer

- (PKUsageNotificationServer)init
{
  v10.receiver = self;
  v10.super_class = PKUsageNotificationServer;
  v2 = [(PKUsageNotificationServer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    connections = v3->_connections;
    v3->_connections = v4;

    v6 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.passd.usage"];
    listener = v3->_listener;
    v3->_listener = v6;

    [(NSXPCListener *)v3->_listener setDelegate:v3];
    v8 = [(NSXPCListener *)v3->_listener _xpcConnection];
    xpc_connection_set_non_launching();

    [(NSXPCListener *)v3->_listener resume];
  }

  return v3;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = PKUsageNotificationServer;
  [(PKUsageNotificationServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKUsageNotificationClientInterface();
  [v7 setRemoteObjectInterface:v8];

  [v7 setExportedObject:self];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F24142D0];
  [v7 setExportedInterface:v9];

  [v7 setInterruptionHandler:&__block_literal_global_107];
  objc_initWeak(&location, v7);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PKUsageNotificationServer_listener_shouldAcceptNewConnection___block_invoke_64;
  v13[3] = &unk_1E79C54B8;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  [v7 setInvalidationHandler:v13];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_connections addObject:v7];
  os_unfair_lock_unlock(&self->_lock);
  v10 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v7 processIdentifier];
    *buf = 67109120;
    v17 = v11;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_INFO, "Pass usage connection added from pid %d", buf, 8u);
  }

  [v7 resume];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return 1;
}

void __64__PKUsageNotificationServer_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AD337000, v0, OS_LOG_TYPE_INFO, "Pass usage connection interrupted", v1, 2u);
  }
}

void __64__PKUsageNotificationServer_listener_shouldAcceptNewConnection___block_invoke_64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_INFO, "Pass usage connection invalidated; removing it", v4, 2u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 24) removeObject:WeakRetained];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }
}

- (void)notifyPassUsed:(id)a3 fromSource:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [v6 storeIdentifiers];
  if ([v8 count])
  {
    v19 = a4;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        v14 = 0;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v24 + 1) + 8 * v14) stringValue];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    [v7 setObject:v9 forKey:@"associatedStoreIdentifiers"];
    a4 = v19;
  }

  os_unfair_lock_lock(&self->_lock);
  v16 = [(NSMutableSet *)self->_connections copy];
  os_unfair_lock_unlock(&self->_lock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __55__PKUsageNotificationServer_notifyPassUsed_fromSource___block_invoke;
  v20[3] = &unk_1E79D48A0;
  v22 = v7;
  v23 = a4;
  v21 = v6;
  v17 = v7;
  v18 = v6;
  [v16 enumerateObjectsUsingBlock:v20];
}

void __55__PKUsageNotificationServer_notifyPassUsed_fromSource___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 remoteObjectProxy];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) passTypeIdentifier];
  [v5 usedPassFromSource:v3 withTypeIdentifier:v4 info:*(a1 + 40)];
}

- (void)notifyPaymentPassUsedWithTransactionInfo:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 merchant];
  v8 = [v7 mapsMerchant];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "identifier")}];
  [v6 setValue:v9 forKey:@"muid"];

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "resultProviderIdentifier")}];
  [v6 setValue:v10 forKey:@"resultProviderIdentifier"];

  v11 = [v5 location];
  [v6 setValue:v11 forKey:@"transactionLocation"];

  v12 = [v5 transactionDate];
  [v6 setValue:v12 forKey:@"transactionDate"];

  v13 = [v5 identifier];

  os_unfair_lock_lock(&self->_lock);
  v14 = [(NSMutableSet *)self->_connections copy];
  os_unfair_lock_unlock(&self->_lock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__PKUsageNotificationServer_notifyPaymentPassUsedWithTransactionInfo___block_invoke;
  v17[3] = &unk_1E79D48C8;
  v18 = &stru_1F227FD28;
  v19 = v13;
  v20 = v6;
  v15 = v6;
  v16 = v13;
  [v14 enumerateObjectsUsingBlock:v17];
  CLPassKitNotifyPayment();
}

void __70__PKUsageNotificationServer_notifyPaymentPassUsedWithTransactionInfo___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteObjectProxy];
  [v4 usedPaymentPassWithUniqueIdentifier:a1[4] transactionIdentifier:a1[5] info:a1[6]];

  v5 = [v3 remoteObjectProxy];

  [v5 usedPaymentPassWithTransactionIdentifier:a1[5] info:a1[6]];
}

@end