@interface SBAccessoryConnectionInfoProvider
+ (SBAccessoryConnectionInfoProvider)sharedInstance;
- (SBAccessoryConnectionInfoProvider)init;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection;
- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SBAccessoryConnectionInfoProvider

+ (SBAccessoryConnectionInfoProvider)sharedInstance
{
  v2 = __sharedInstance_0;
  if (!__sharedInstance_0)
  {
    if (sharedInstance_onceToken_20 != -1)
    {
      +[SBAccessoryConnectionInfoProvider sharedInstance];
    }

    v2 = __sharedInstance_0;
  }

  return v2;
}

void __51__SBAccessoryConnectionInfoProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBAccessoryConnectionInfoProvider);
  v1 = __sharedInstance_0;
  __sharedInstance_0 = v0;
}

- (SBAccessoryConnectionInfoProvider)init
{
  v8.receiver = self;
  v8.super_class = SBAccessoryConnectionInfoProvider;
  v2 = [(SBAccessoryConnectionInfoProvider *)&v8 init];
  if (v2)
  {
    mEMORY[0x277CFD210] = [MEMORY[0x277CFD210] sharedInstance];
    connectionInfo = v2->_connectionInfo;
    v2->_connectionInfo = mEMORY[0x277CFD210];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (void)dealloc
{
  [(ACCConnectionInfo *)self->_connectionInfo registerDelegate:0];
  connectionInfo = self->_connectionInfo;
  self->_connectionInfo = 0;

  v4.receiver = self;
  v4.super_class = SBAccessoryConnectionInfoProvider;
  [(SBAccessoryConnectionInfoProvider *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  [(NSHashTable *)self->_observers addObject:observer];
  [(ACCConnectionInfo *)self->_connectionInfo registerDelegate:0];
  connectionInfo = self->_connectionInfo;

  [(ACCConnectionInfo *)connectionInfo registerDelegate:self];
}

- (void)removeObserver:(id)observer
{
  [(NSHashTable *)self->_observers removeObject:observer];
  if (![(NSHashTable *)self->_observers count])
  {
    connectionInfo = self->_connectionInfo;

    [(ACCConnectionInfo *)connectionInfo registerDelegate:0];
  }
}

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  v9 = *&type;
  v26 = *MEMORY[0x277D85DE8];
  attachedCopy = attached;
  propertiesCopy = properties;
  connectionCopy = connection;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_observers;
  v14 = [(NSHashTable *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        if (objc_opt_respondsToSelector())
        {
          [v18 accessoryConnectionInfoProvider:self accessoryEndpointAttached:attachedCopy transportType:v9 protocol:protocol properties:propertiesCopy forConnection:connectionCopy];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSHashTable *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }
}

- (void)accessoryEndpointInfoPropertyChanged:(id)changed properties:(id)properties forConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  propertiesCopy = properties;
  connectionCopy = connection;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_observers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 accessoryConnectionInfoProvider:self accessoryEndpointInfoPropertyChanged:changedCopy properties:propertiesCopy forConnection:{connectionCopy, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)accessoryEndpointDetached:(id)detached forConnection:(id)connection
{
  v19 = *MEMORY[0x277D85DE8];
  detachedCopy = detached;
  connectionCopy = connection;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 accessoryConnectionInfoProvider:self accessoryEndpointDetached:detachedCopy forConnection:{connectionCopy, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

@end