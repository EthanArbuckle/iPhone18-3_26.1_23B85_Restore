@interface SBHSimpleApplicationPolicyMonitor
+ (SBHSimpleApplicationPolicyMonitor)sharedInstance;
- (SBHSimpleApplicationPolicyMonitor)init;
- (void)registerApplication:(id)a3;
- (void)unregisterApplication:(id)a3;
- (void)updateAllPolicies;
@end

@implementation SBHSimpleApplicationPolicyMonitor

uint64_t __51__SBHSimpleApplicationPolicyMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(SBHSimpleApplicationPolicyMonitor);

  return MEMORY[0x1EEE66BB8]();
}

- (SBHSimpleApplicationPolicyMonitor)init
{
  v14.receiver = self;
  v14.super_class = SBHSimpleApplicationPolicyMonitor;
  v2 = [(SBHSimpleApplicationPolicyMonitor *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    registeredApplications = v2->_registeredApplications;
    v2->_registeredApplications = v3;

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v5 = getDMFApplicationPolicyMonitorClass_softClass;
    v19 = getDMFApplicationPolicyMonitorClass_softClass;
    if (!getDMFApplicationPolicyMonitorClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getDMFApplicationPolicyMonitorClass_block_invoke;
      v15[3] = &unk_1E8089848;
      v15[4] = &v16;
      __getDMFApplicationPolicyMonitorClass_block_invoke(v15);
      v5 = v17[3];
    }

    v6 = v5;
    _Block_object_dispose(&v16, 8);
    v7 = [v5 alloc];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__SBHSimpleApplicationPolicyMonitor_init__block_invoke;
    v12[3] = &unk_1E8088C90;
    v8 = v2;
    v13 = v8;
    v9 = [v7 initWithPolicyChangeHandler:v12];
    policyMonitor = v8->_policyMonitor;
    v8->_policyMonitor = v9;
  }

  return v2;
}

+ (SBHSimpleApplicationPolicyMonitor)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SBHSimpleApplicationPolicyMonitor sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

- (void)registerApplication:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_registeredApplications addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [v4 bundleIdentifier];
  v6 = [(SBHSimpleApplicationPolicyMonitor *)self policyMonitor];
  v13[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SBHSimpleApplicationPolicyMonitor_registerApplication___block_invoke;
  v10[3] = &unk_1E808AA38;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [v6 requestPoliciesForBundleIdentifiers:v7 completionHandler:v10];
}

void __57__SBHSimpleApplicationPolicyMonitor_registerApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  [v3 integerValue];
  v4 = *(a1 + 40);
  BSDispatchMain();
}

- (void)unregisterApplication:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_registeredApplications removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAllPolicies
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_registeredApplications allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 bundleIdentifier];
        if (v11)
        {
          [v4 setObject:v10 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = [v4 allKeys];
  v13 = [(SBHSimpleApplicationPolicyMonitor *)self policyMonitor];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__SBHSimpleApplicationPolicyMonitor_updateAllPolicies__block_invoke;
  v15[3] = &unk_1E808AA88;
  v16 = v4;
  v14 = v4;
  [v13 requestPoliciesForBundleIdentifiers:v12 completionHandler:v15];
}

void __54__SBHSimpleApplicationPolicyMonitor_updateAllPolicies__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  BSDispatchMain();
}

void __54__SBHSimpleApplicationPolicyMonitor_updateAllPolicies__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__SBHSimpleApplicationPolicyMonitor_updateAllPolicies__block_invoke_3;
  v2[3] = &unk_1E808AA60;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __54__SBHSimpleApplicationPolicyMonitor_updateAllPolicies__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [v4 objectForKey:a2];
  v6 = [v5 integerValue];

  [v7 updateDeviceManagementPolicy:v6];
}

@end