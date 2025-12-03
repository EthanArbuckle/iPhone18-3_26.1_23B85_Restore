@interface WBSHostTabProviderManager
+ (WBSHostTabProviderManager)sharedManager;
- (WBSHostTabProviderManager)init;
- (id)providerForContentUUID:(id)d;
- (void)registerHostTab:(id)tab;
- (void)unregisterHostTab:(id)tab;
@end

@implementation WBSHostTabProviderManager

+ (WBSHostTabProviderManager)sharedManager
{
  if (sharedManager_onceToken_2 != -1)
  {
    +[WBSHostTabProviderManager sharedManager];
  }

  v3 = sharedManager_sharedManager_0;

  return v3;
}

void __42__WBSHostTabProviderManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSHostTabProviderManager);
  v1 = sharedManager_sharedManager_0;
  sharedManager_sharedManager_0 = v0;
}

- (WBSHostTabProviderManager)init
{
  v9.receiver = self;
  v9.super_class = WBSHostTabProviderManager;
  v2 = [(WBSHostTabProviderManager *)&v9 init];
  if (v2)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    providerMapTable = v2->_providerMapTable;
    v2->_providerMapTable = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    hostTabMapTable = v2->_hostTabMapTable;
    v2->_hostTabMapTable = strongToWeakObjectsMapTable2;

    v7 = v2;
  }

  return v2;
}

- (id)providerForContentUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMapTable *)self->_providerMapTable objectForKey:dCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(WBSHostTabProvider);
    v6 = [(WBSHostTabProviderManager *)self _hostTabForContentUUID:dCopy];
    [(WBSHostTabProvider *)v5 _setHostTab:v6];

    [(NSMapTable *)self->_providerMapTable setObject:v5 forKey:dCopy];
  }

  v7 = v5;

  return v7;
}

- (void)registerHostTab:(id)tab
{
  tabCopy = tab;
  contentUUID = [tabCopy contentUUID];
  [(NSMapTable *)self->_hostTabMapTable setObject:tabCopy forKey:contentUUID];
  v5 = [(WBSHostTabProviderManager *)self providerForContentUUID:contentUUID];
  [v5 _setHostTab:tabCopy];
}

- (void)unregisterHostTab:(id)tab
{
  contentUUID = [tab contentUUID];
  [(NSMapTable *)self->_hostTabMapTable removeObjectForKey:contentUUID];
}

@end