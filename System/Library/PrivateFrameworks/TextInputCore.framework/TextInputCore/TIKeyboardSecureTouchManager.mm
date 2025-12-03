@interface TIKeyboardSecureTouchManager
+ (id)sharedInstance;
- (TIKeyboardSecureTouchManager)init;
@end

@implementation TIKeyboardSecureTouchManager

void __47__TIKeyboardSecureTouchManager_registerSlotID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSlotID:v2];
  [v3 setAuthenticationMessageContext:0x6779E7E572E4C6A7];
}

- (TIKeyboardSecureTouchManager)init
{
  v6.receiver = self;
  v6.super_class = TIKeyboardSecureTouchManager;
  v2 = [(TIKeyboardSecureTouchManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    slots = v2->_slots;
    v2->_slots = dictionary;

    v2->_lastVerifiedMessageTimestamp = mach_continuous_time();
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_24085 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_24085, &__block_literal_global_24086);
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __46__TIKeyboardSecureTouchManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_manager;
  sharedInstance_manager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end