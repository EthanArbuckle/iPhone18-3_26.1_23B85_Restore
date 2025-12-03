@interface SBUIKeyboardEnablementManager
+ (id)sharedInstance;
- (SBUIKeyboardEnablementManager)init;
- (id)description;
- (void)disableAutomaticAppearanceForContext:(id)context;
- (void)enableAutomaticAppearanceForContext:(id)context;
@end

@implementation SBUIKeyboardEnablementManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SBUIKeyboardEnablementManager sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

uint64_t __47__SBUIKeyboardEnablementManager_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBUIKeyboardEnablementManager);
  v1 = sharedInstance__instance;
  sharedInstance__instance = v0;

  return kdebug_trace();
}

- (SBUIKeyboardEnablementManager)init
{
  v6.receiver = self;
  v6.super_class = SBUIKeyboardEnablementManager;
  v2 = [(SBUIKeyboardEnablementManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    disabledContexts = v2->_disabledContexts;
    v2->_disabledContexts = v3;
  }

  return v2;
}

- (void)disableAutomaticAppearanceForContext:(id)context
{
  contextCopy = context;
  if (![(NSHashTable *)self->_disabledContexts containsObject:?])
  {
    [(NSHashTable *)self->_disabledContexts addObject:contextCopy];
    UIKeyboardDisableAutomaticAppearance();
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    [mEMORY[0x1E69DCD68] _beginDisablingAnimations];
  }
}

- (void)enableAutomaticAppearanceForContext:(id)context
{
  contextCopy = context;
  if ([(NSHashTable *)self->_disabledContexts containsObject:?])
  {
    [(NSHashTable *)self->_disabledContexts removeObject:contextCopy];
    mEMORY[0x1E69DCD68] = [MEMORY[0x1E69DCD68] sharedInstance];
    [mEMORY[0x1E69DCD68] _endDisablingAnimations];

    if (![(NSHashTable *)self->_disabledContexts count])
    {
      UIKeyboardEnableAutomaticAppearance();
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p - disabledContexts: %@>", v5, self, self->_disabledContexts];

  return v6;
}

@end