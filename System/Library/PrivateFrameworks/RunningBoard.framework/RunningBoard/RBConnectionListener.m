@interface RBConnectionListener
+ (id)sharedConnectionWorkloop;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBConnectionListener)init;
- (id)initWithContext:(id)a1;
- (id)readyClients;
- (void)connectionIsReady:(uint64_t)a1;
- (void)start;
@end

@implementation RBConnectionListener

void __29__RBConnectionListener_start__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x26672A380]();
  if (v4 == MEMORY[0x277D86468])
  {
    v9 = objc_autoreleasePoolPush();
    [(RBConnectionClient *)*(a1 + 32) handleMessage:v3];
    objc_autoreleasePoolPop(v9);
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    xpc_connection_set_event_handler(*(a1 + 40), &__block_literal_global_34);
    xpc_connection_cancel(*(a1 + 40));
    [(RBConnectionClient *)*(a1 + 32) invalidate];
    os_unfair_lock_lock((*(a1 + 48) + 8));
    [*(*(a1 + 48) + 32) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 48) + 40) removeObjectForKey:*(a1 + 56)];
    [*(*(a1 + 48) + 48) removeObject:*(a1 + 32)];
    v5 = [*(*(a1 + 48) + 56) historicalStatistics];
    [v5 notifyClientCount:{objc_msgSend(*(*(a1 + 48) + 40), "count")}];

    if (![*(*(a1 + 48) + 32) count])
    {
      v6 = rbs_connection_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_DEFAULT, "Releasing Transaction as now without clients", v10, 2u);
      }

      v7 = *(a1 + 48);
      v8 = *(v7 + 64);
      *(v7 + 64) = 0;
    }

    os_unfair_lock_unlock((*(a1 + 48) + 8));
  }
}

- (id)readyClients
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:*(a1 + 48)];
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __29__RBConnectionListener_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x26672A380]();
  if (v4 == MEMORY[0x277D86450])
  {
    activity_block[0] = MEMORY[0x277D85DD0];
    activity_block[1] = 3221225472;
    activity_block[2] = __29__RBConnectionListener_start__block_invoke_2;
    activity_block[3] = &unk_279B329D0;
    v9 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    _os_activity_initiate(&dword_262485000, "incoming connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    v5 = rbs_connection_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __29__RBConnectionListener_start__block_invoke_cold_1(v3, v5);
    }

    exit(0);
  }
}

void __29__RBConnectionListener_start__block_invoke_2(id *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  memset(&v30, 0, sizeof(v30));
  RBSInvalidRealAuditToken();
  xpc_connection_get_audit_token();
  memset(&atoken, 0, sizeof(atoken));
  if (RBSRealAuditTokenValid())
  {
    atoken = v30;
    v3 = audit_token_to_euid(&atoken);
    atoken = v30;
    v4 = audit_token_to_auid(&atoken);
    if (v4 + 1 >= 2)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
    v3 = 0;
  }

  atoken = v30;
  v6 = [MEMORY[0x277D46DE0] tokenFromAuditToken:&atoken];
  v7 = rbs_connection_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 pid];
    atoken.val[0] = 67109632;
    atoken.val[1] = v8;
    LOWORD(atoken.val[2]) = 1024;
    *(&atoken.val[2] + 2) = v3;
    HIWORD(atoken.val[3]) = 1024;
    atoken.val[4] = v5;
    _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "Incoming connection from %d, user %d/%d", &atoken, 0x14u);
  }

  v9 = [a1[5] processManager];
  v10 = [v9 processForAuditToken:v6];

  if (v10)
  {
    v11 = [v10 identifier];
    os_unfair_lock_lock(a1[6] + 2);
    if (![*(a1[6] + 4) count])
    {
      v12 = os_transaction_create();
      v13 = a1[6];
      v14 = v13[8];
      v13[8] = v12;

      v15 = rbs_connection_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(atoken.val[0]) = 0;
        _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "Taking Transaction as now busy with client", &atoken, 2u);
      }
    }

    v16 = [*(a1[6] + 5) objectForKey:v11];
    if (!v16)
    {
      v16 = [[RBConnectionClient alloc] initWithContext:a1[6] listener:v10 process:v2 connection:?];
      [*(a1[6] + 5) setObject:v16 forKey:v11];
      v17 = [*(a1[6] + 7) historicalStatistics];
      [v17 notifyClientCount:{objc_msgSend(*(a1[6] + 5), "count")}];
    }

    [*(a1[6] + 4) setObject:v16 forKey:v2];
    os_unfair_lock_unlock(a1[6] + 2);
    v18 = +[RBConnectionListener sharedConnectionWorkloop];
    xpc_connection_set_target_queue(v2, v18);

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __29__RBConnectionListener_start__block_invoke_30;
    v25[3] = &unk_279B33778;
    v26 = v16;
    v19 = v2;
    v20 = a1[6];
    v27 = v19;
    v28 = v20;
    v29 = v11;
    v21 = v11;
    v22 = v16;
    xpc_connection_set_event_handler(v19, v25);
    xpc_connection_activate(v19);
  }

  else
  {
    v23 = rbs_connection_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __29__RBConnectionListener_start__block_invoke_2_cold_1(v6, v23);
    }

    xpc_connection_set_event_handler(v2, &__block_literal_global_37);
    xpc_connection_activate(v2);
    xpc_connection_cancel(v2);
  }

  v24 = *MEMORY[0x277D85DE8];
}

+ (id)sharedConnectionWorkloop
{
  objc_opt_self();
  if (sharedConnectionWorkloop_onceToken != -1)
  {
    +[RBConnectionListener sharedConnectionWorkloop];
  }

  v0 = sharedConnectionWorkloop__workloop;

  return v0;
}

void __48__RBConnectionListener_sharedConnectionWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.runningboard.client-workloop");
  v1 = sharedConnectionWorkloop__workloop;
  sharedConnectionWorkloop__workloop = inactive;

  dispatch_set_qos_class_fallback();
  v2 = sharedConnectionWorkloop__workloop;

  dispatch_activate(v2);
}

- (RBConnectionListener)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBConnectionListener.m" lineNumber:63 description:@"-init is not allowed on RBConnectionListener"];

  return 0;
}

- (NSString)debugDescription
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  os_unfair_lock_lock(&self->_lock);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(NSMapTable *)self->_lock_connectionToClientMap objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(RBConnectionClient *)v9 processIdentity];
        v11 = [v10 description];
        v12 = [(RBConnectionClient *)v9 processIdentifier];
        [v3 appendFormat:@"%@:%d\n\t", v11, objc_msgSend(v12, "pid")];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [objc_opt_class() description];
  v15 = [v13 initWithFormat:@"<%@|  clients:[\n\t%@]>", v14, v3];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)initWithContext:(id)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      [v19 handleFailureInMethod:sel_initWithContext_ object:a1 file:@"RBConnectionListener.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"context"}];
    }

    v20.receiver = a1;
    v20.super_class = RBConnectionListener;
    v6 = objc_msgSendSuper2(&v20, sel_init);
    a1 = v6;
    if (v6)
    {
      v6[2] = 0;
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.runningboard.listener", v7);
      v9 = *(a1 + 2);
      *(a1 + 2) = v8;

      mach_service = xpc_connection_create_mach_service([*MEMORY[0x277D47060] UTF8String], *(a1 + 2), 1uLL);
      v11 = *(a1 + 3);
      *(a1 + 3) = mach_service;

      v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v13 = *(a1 + 4);
      *(a1 + 4) = v12;

      v14 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v15 = *(a1 + 5);
      *(a1 + 5) = v14;

      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = *(a1 + 6);
      *(a1 + 6) = v16;

      objc_storeStrong(a1 + 7, a2);
    }
  }

  return a1;
}

- (void)connectionIsReady:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 8));
    [*(a1 + 48) addObject:v3];

    os_unfair_lock_unlock((a1 + 8));
  }
}

- (void)start
{
  if (a1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 24);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__RBConnectionListener_start__block_invoke;
    v5[3] = &unk_279B329F8;
    v6 = v2;
    v7 = a1;
    v4 = v2;
    xpc_connection_set_event_handler(v3, v5);
    xpc_connection_activate(*(a1 + 24));
  }
}

void __29__RBConnectionListener_start__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v5 = 136315138;
  v6 = string;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Error on xpc listener connection: %s", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

void __29__RBConnectionListener_start__block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = [a1 pid];
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Unable to create a reference to incoming connection from %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end