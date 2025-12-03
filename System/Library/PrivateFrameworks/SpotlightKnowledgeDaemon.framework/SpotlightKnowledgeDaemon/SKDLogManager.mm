@interface SKDLogManager
+ (id)sharedManager;
- (SKDLogManager)init;
- (id)logForDomain:(id)domain;
@end

@implementation SKDLogManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SKDLogManager sharedManager];
  }

  v3 = sharedManager_sLogManager;

  return v3;
}

void __30__SKDLogManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SKDLogManager);
  v1 = sharedManager_sLogManager;
  sharedManager_sLogManager = v0;
}

- (SKDLogManager)init
{
  v6.receiver = self;
  v6.super_class = SKDLogManager;
  v2 = [(SKDLogManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    logs = v2->_logs;
    v2->_logs = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)logForDomain:(id)domain
{
  domainCopy = domain;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_logs objectForKeyedSubscript:domainCopy];

  if (!v5)
  {
    v6 = [[SKDLog alloc] initWithCategory:domainCopy];
    [(NSMutableDictionary *)self->_logs setObject:v6 forKey:domainCopy];
  }

  v7 = [(NSMutableDictionary *)self->_logs objectForKeyedSubscript:domainCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

@end