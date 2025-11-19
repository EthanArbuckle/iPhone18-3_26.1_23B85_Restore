@interface SBUserNotificationCenter
+ (void)_userNotificationDone:(id)a3;
+ (void)dispatchUserNotification:(id)a3 flags:(int)a4 replyPort:(unsigned int)a5 auditToken:(id)a6;
+ (void)startUserNotificationCenter;
@end

@implementation SBUserNotificationCenter

+ (void)_userNotificationDone:(id)a3
{
  v6 = [a3 object];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:a1 name:@"SBUserNotificationDoneNotification" object:v6];

  [__userNotifications removeObject:v6];
  if (![__userNotifications count])
  {
    v5 = __userNotifications;
    __userNotifications = 0;
  }
}

+ (void)dispatchUserNotification:(id)a3 flags:(int)a4 replyPort:(unsigned int)a5 auditToken:(id)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if ((v8 & 8) != 0)
  {
    v19 = [v10 objectForKey:*MEMORY[0x277CBF248]];
    v20 = [v19 intValue];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = __userNotifications;
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          if ([v26 token] == v20)
          {
            v14 = v26;
            goto LABEL_18;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_18:

    [(SBUserNotificationAlert *)v14 cancel];
  }

  else if ((v8 & 0x10) != 0)
  {
    v27 = [v10 objectForKey:*MEMORY[0x277CBF248]];
    v28 = [v27 intValue];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = __userNotifications;
    v29 = [(SBUserNotificationAlert *)v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v36;
LABEL_23:
      v32 = 0;
      while (1)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v14);
        }

        v33 = *(*(&v35 + 1) + 8 * v32);
        if ([v33 token] == v28)
        {
          break;
        }

        if (v30 == ++v32)
        {
          v30 = [(SBUserNotificationAlert *)v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v30)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }
      }

      v34 = v33;

      if (!v34)
      {
        goto LABEL_20;
      }

      [(SBUserNotificationAlert *)v34 updateWithMessage:v10 requestFlags:v8];
      v14 = v34;
    }
  }

  else
  {
    v12 = SBLogCFUserNotifications();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [v11 pid];
      v13 = BSProcessDescriptionForPID();
      *buf = 67109378;
      v44 = v7;
      v45 = 2114;
      v46 = v13;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Presenting a CFUserNotification with reply port: %u on behalf of: %{public}@", buf, 0x12u);
    }

    v14 = [[SBUserNotificationAlert alloc] initWithMessage:v10 replyPort:v7 requestFlags:v8 auditToken:v11];
    v15 = __userNotifications;
    if (!__userNotifications)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v17 = __userNotifications;
      __userNotifications = v16;

      v15 = __userNotifications;
    }

    [v15 addObject:v14];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:a1 selector:sel__userNotificationDone_ name:@"SBUserNotificationDoneNotification" object:v14];
  }

LABEL_19:

LABEL_20:
}

+ (void)startUserNotificationCenter
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "com.apple.SBUserNotification";
  _os_log_fault_impl(&dword_21ED4E000, log, OS_LOG_TYPE_FAULT, "unable to bootstrap service: %s", &v1, 0xCu);
}

void __55__SBUserNotificationCenter_startUserNotificationCenter__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 8)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], *(a1 + 40), 1u, -1);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    v7 = msg;
    if ((*msg & 0x80000000) != 0 || ((v8 = *(msg + 1), v8 >= 0x1C) ? (v9 = v8 == 0) : (v9 = 0), !v9))
    {
      v10 = SBLogCFUserNotifications();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __55__SBUserNotificationCenter_startUserNotificationCenter__block_invoke_cold_1(v10);
      }

      goto LABEL_25;
    }

    v11 = *(msg + 2);
    *(msg + 2) = 0;
    v10 = [MEMORY[0x277CF0B98] tokenFromMachMessage:msg];
    if (_SBUserNotificationAuthenticator_onceToken != -1)
    {
      __55__SBUserNotificationCenter_startUserNotificationCenter__block_invoke_cold_2();
    }

    v23 = 0;
    v12 = _SBUserNotificationAuthenticator___authenticator;
    v13 = [v12 authenticateAuditToken:v10 error:&v23];
    v14 = v23;

    if (v13)
    {

      v15 = *(v7 + 5);
      v16 = CFDataCreate(0, v7 + 28, *(v7 + 1) - 28);
      if (v16)
      {
        v17 = v16;
        v18 = CFPropertyListCreateWithData(0, v16, 0, 0, 0);
        CFRelease(v17);
        if (v18)
        {
          v19 = CFGetTypeID(v18);
          if (v19 == CFDictionaryGetTypeID())
          {
            [*(a1 + 32) dispatchUserNotification:v18 flags:v15 replyPort:v11 auditToken:v10];

LABEL_25:
            mach_msg_destroy(v7);
            goto LABEL_26;
          }

          CFRelease(v18);
        }
      }
    }

    else
    {
      v20 = SBLogCFUserNotifications();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __55__SBUserNotificationCenter_startUserNotificationCenter__block_invoke_cold_3(v10, v14, v20);
      }
    }

    v21 = malloc_type_calloc(0x1CuLL, 1uLL, 0x88B6A2AAuLL);
    if (v21)
    {
      v22 = v21;
      *v21 = 0x1C00000012;
      *(v21 + 2) = v11;
      *(v21 + 3) = 0;
      *(v21 + 20) = 3;
      if (mach_msg(v21, 1, 0x1Cu, 0, 0, 0, 0))
      {
        mach_msg_destroy(v22);
      }

      free(v22);
    }

    goto LABEL_25;
  }

LABEL_26:
}

void __55__SBUserNotificationCenter_startUserNotificationCenter__block_invoke_cold_3(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  [a1 pid];
  v5 = BSProcessDescriptionForPID();
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "CFUserNotification authorization failure: %{public}@: %{public}@", &v6, 0x16u);
}

@end