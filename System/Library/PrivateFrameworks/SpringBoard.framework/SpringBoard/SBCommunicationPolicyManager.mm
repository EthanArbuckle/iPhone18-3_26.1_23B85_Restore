@interface SBCommunicationPolicyManager
+ (id)sharedInstance;
- (BOOL)shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier;
- (SBCommunicationPolicyManager)init;
- (uint64_t)_communicationPolicyForBundleIdentifier:(uint64_t)result;
- (void)_setPoliciesByBundleIdentifier:(uint64_t)identifier;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation SBCommunicationPolicyManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken != -1)
  {
    +[SBCommunicationPolicyManager sharedInstance];
  }

  v3 = sharedInstance___instance_2;

  return v3;
}

void __46__SBCommunicationPolicyManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBCommunicationPolicyManager);
  v1 = sharedInstance___instance_2;
  sharedInstance___instance_2 = v0;
}

- (SBCommunicationPolicyManager)init
{
  v9.receiver = self;
  v9.super_class = SBCommunicationPolicyManager;
  v2 = [(SBCommunicationPolicyManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D04BF0]);
    communicationPolicyMonitor = v2->_communicationPolicyMonitor;
    v2->_communicationPolicyMonitor = v3;

    policiesByBundleIdentifier = [(DMFCommunicationPolicyMonitor *)v2->_communicationPolicyMonitor policiesByBundleIdentifier];
    v6 = [policiesByBundleIdentifier copy];
    policiesByBundleIdentifier = v2->_policiesByBundleIdentifier;
    v2->_policiesByBundleIdentifier = v6;

    [(DMFCommunicationPolicyMonitor *)v2->_communicationPolicyMonitor addObserver:v2 forKeyPath:@"policiesByBundleIdentifier" options:0 context:&SBCommunicationPolicyManagerKeyValueObserverContext];
  }

  return v2;
}

- (void)dealloc
{
  [(SBCommunicationPolicyManager *)self removeObserver:self forKeyPath:@"policiesByBundleIdentifier" context:&SBCommunicationPolicyManagerKeyValueObserverContext];
  v3.receiver = self;
  v3.super_class = SBCommunicationPolicyManager;
  [(SBCommunicationPolicyManager *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &SBCommunicationPolicyManagerKeyValueObserverContext)
  {
    block[5] = v6;
    block[6] = v7;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__SBCommunicationPolicyManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __79__SBCommunicationPolicyManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(v1 + 16) policiesByBundleIdentifier];
  v2 = [v3 copy];
  [(SBCommunicationPolicyManager *)v1 _setPoliciesByBundleIdentifier:v2];
}

- (BOOL)shouldScreenTimeSuppressNotificationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  v5 = [(SBCommunicationPolicyManager *)self _communicationPolicyForBundleIdentifier:identifierCopy];

  return v5 != 0;
}

- (void)_setPoliciesByBundleIdentifier:(uint64_t)identifier
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (identifier)
  {
    BSDispatchQueueAssertMain();
    v5 = (identifier + 8);
    if (([*(identifier + 8) isEqualToDictionary:v4] & 1) == 0)
    {
      obj = a2;
      identifierCopy = identifier;
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v7 = *v5;
      v8 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
      v29 = v4;
      if (v8)
      {
        v9 = v8;
        v10 = *v35;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v35 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v34 + 1) + 8 * i);
            v13 = [*v5 objectForKey:v12];
            v14 = [v4 objectForKey:v12];
            v15 = [v13 isEqual:v14];

            if ((v15 & 1) == 0)
            {
              [v6 addObject:v12];
            }

            v4 = v29;
          }

          v9 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v9);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v4;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v30 + 1) + 8 * j);
            v22 = [v16 objectForKey:v21];
            v23 = [*v5 objectForKey:v21];
            v24 = [v22 isEqual:v23];

            if ((v24 & 1) == 0)
            {
              [v6 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
        }

        while (v18);
      }

      objc_storeStrong(v5, obj);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v38 = @"SBCommunicationPolicyChangedBundleIdentifiersKey";
      v39 = v6;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [defaultCenter postNotificationName:@"SBCommunicationPolicyDidChangeNotification" object:identifierCopy userInfo:v26];

      v4 = v29;
    }
  }
}

- (uint64_t)_communicationPolicyForBundleIdentifier:(uint64_t)result
{
  if (result)
  {
    v2 = [*(result + 8) objectForKey:a2];
    unsignedIntegerValue = [v2 unsignedIntegerValue];

    return unsignedIntegerValue;
  }

  return result;
}

@end