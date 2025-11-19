@interface WBSHostTabProviderManager
+ (WBSHostTabProviderManager)sharedManager;
- (WBSHostTabProviderManager)init;
- (id)providerForContentUUID:(id)a3;
- (void)registerHostTab:(id)a3;
- (void)unregisterHostTab:(id)a3;
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
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    providerMapTable = v2->_providerMapTable;
    v2->_providerMapTable = v3;

    v5 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    hostTabMapTable = v2->_hostTabMapTable;
    v2->_hostTabMapTable = v5;

    v7 = v2;
  }

  return v2;
}

- (id)providerForContentUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_providerMapTable objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(WBSHostTabProvider);
    v6 = [(WBSHostTabProviderManager *)self _hostTabForContentUUID:v4];
    [(WBSHostTabProvider *)v5 _setHostTab:v6];

    [(NSMapTable *)self->_providerMapTable setObject:v5 forKey:v4];
  }

  v7 = v5;

  return v7;
}

- (void)registerHostTab:(id)a3
{
  v4 = a3;
  v6 = [v4 contentUUID];
  [(NSMapTable *)self->_hostTabMapTable setObject:v4 forKey:v6];
  v5 = [(WBSHostTabProviderManager *)self providerForContentUUID:v6];
  [v5 _setHostTab:v4];
}

- (void)unregisterHostTab:(id)a3
{
  v4 = [a3 contentUUID];
  [(NSMapTable *)self->_hostTabMapTable removeObjectForKey:v4];
}

@end