@interface STUIAuthenticationSession
+ (id)shared;
- (STUIAuthenticationSession)init;
@end

@implementation STUIAuthenticationSession

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__STUIAuthenticationSession_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_singleton;

  return v2;
}

uint64_t __35__STUIAuthenticationSession_shared__block_invoke()
{
  v0 = objc_opt_new();
  v1 = shared_singleton;
  shared_singleton = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (STUIAuthenticationSession)init
{
  v5.receiver = self;
  v5.super_class = STUIAuthenticationSession;
  v2 = [(STUIAuthenticationSession *)&v5 init];
  v2->_hasAlreadyEnteredPINForSession = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel__passcodeSessionHasEnded_ name:*MEMORY[0x277D76768] object:0];

  return v2;
}

@end