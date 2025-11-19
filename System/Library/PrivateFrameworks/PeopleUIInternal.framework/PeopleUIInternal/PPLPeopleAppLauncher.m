@interface PPLPeopleAppLauncher
+ (id)sharedLauncher;
- (PPLPeopleAppLauncher)init;
- (PPLPeopleAppLauncherDelegate)delegate;
- (void)launchPeopleAppIfNeededWithForegroundPriority:(BOOL)a3;
@end

@implementation PPLPeopleAppLauncher

+ (id)sharedLauncher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__PPLPeopleAppLauncher_sharedLauncher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedLauncher_onceToken != -1)
  {
    dispatch_once(&sharedLauncher_onceToken, block);
  }

  v2 = sharedLauncher___sharedLauncher;

  return v2;
}

uint64_t __38__PPLPeopleAppLauncher_sharedLauncher__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedLauncher___sharedLauncher = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (PPLPeopleAppLauncher)init
{
  v7.receiver = self;
  v7.super_class = PPLPeopleAppLauncher;
  v2 = [(PPLPeopleAppLauncher *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("people app queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)launchPeopleAppIfNeededWithForegroundPriority:(BOOL)a3
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__PPLPeopleAppLauncher_launchPeopleAppIfNeededWithForegroundPriority___block_invoke;
  v8[3] = &unk_279A0DCD0;
  v8[4] = self;
  v9 = a3;
  v5 = MEMORY[0x25F8AFCD0](v8, a2);
  v6 = [(PPLPeopleAppLauncher *)self queue];
  v7 = v6;
  if (v3)
  {
    dispatch_sync(v6, v5);
  }

  else
  {
    dispatch_async(v6, v5);
  }
}

void __70__PPLPeopleAppLauncher_launchPeopleAppIfNeededWithForegroundPriority___block_invoke(uint64_t a1)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) peopleAppProcessHandle];
  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = v2;
  v4 = [*(a1 + 32) peopleAppProcessHandle];
  v5 = [v4 currentState];
  v6 = [v5 isRunning];

  if ((v6 & 1) == 0)
  {
LABEL_3:
    v7 = PPLPeopleViewServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25E21C000, v7, OS_LOG_TYPE_DEFAULT, "people launched via runningboard", buf, 2u);
    }

    v8 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.PeopleViewService"];
    v9 = [MEMORY[0x277D46EB0] contextWithIdentity:v8];
    [v9 setExplanation:@"people launched via runningboard"];
    if (*(a1 + 40) == 1)
    {
      v10 = [MEMORY[0x277D46DF0] grantWithUserInteractivity];
      v34[0] = v10;
      v11 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:0];
      v34[1] = v11;
      v12 = [MEMORY[0x277D46EA8] grantWithForegroundPriority];
      v34[2] = v12;
      v13 = v34;
    }

    else
    {
      v10 = [MEMORY[0x277D46DF0] grantUserInitiated];
      v33[0] = v10;
      v11 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:0];
      v33[1] = v11;
      v12 = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
      v33[2] = v12;
      v13 = v33;
    }

    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    [v9 setAttributes:v14];

    v15 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v9];
    v16 = v15;
    if (v15)
    {
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v17 = [v15 execute:&v31 assertion:&v30 error:&v29];
      v18 = v31;
      v19 = v30;
      v20 = v29;
      v21 = PPLPeopleViewServiceLog();
      v22 = v21;
      if (v17)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25E21C000, v22, OS_LOG_TYPE_DEFAULT, "successfully launched app", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __70__PPLPeopleAppLauncher_launchPeopleAppIfNeededWithForegroundPriority___block_invoke_cold_1(v20, v22);
      }

      [*(a1 + 32) setPeopleAppProcessHandle:v18];
      v23 = [*(a1 + 32) initializationAssertion];
      [v23 invalidate];

      [*(a1 + 32) setInitializationAssertion:v19];
      if ((*(a1 + 40) & 1) == 0)
      {
        v24 = [*(a1 + 32) delegate];
        [v24 willLaunchPeopleAppInBackground:*(a1 + 32)];
      }

      v25 = dispatch_time(0, 1000000000);
      v26 = [*(a1 + 32) queue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__PPLPeopleAppLauncher_launchPeopleAppIfNeededWithForegroundPriority___block_invoke_12;
      v28[3] = &unk_279A0DCA8;
      v28[4] = *(a1 + 32);
      dispatch_after(v25, v26, v28);
    }

    else
    {
      v19 = PPLPeopleViewServiceLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __70__PPLPeopleAppLauncher_launchPeopleAppIfNeededWithForegroundPriority___block_invoke_cold_2(v19);
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __70__PPLPeopleAppLauncher_launchPeopleAppIfNeededWithForegroundPriority___block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) initializationAssertion];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setInitializationAssertion:0];
}

- (PPLPeopleAppLauncherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __70__PPLPeopleAppLauncher_launchPeopleAppIfNeededWithForegroundPriority___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E21C000, a2, OS_LOG_TYPE_ERROR, "Failed to launch with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end