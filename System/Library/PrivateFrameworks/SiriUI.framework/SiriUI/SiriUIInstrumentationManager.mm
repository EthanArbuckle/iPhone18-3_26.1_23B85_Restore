@interface SiriUIInstrumentationManager
+ (id)sharedManager;
- (AFAnalyticsTurnBasedInstrumentationContext)currentInstrumentationTurnContext;
- (SiriUIInstrumentationManager)init;
- (id)associatedDialogIdentifiersForAceObjectIdentifier:(id)identifier;
- (void)emitUUFRPresentedEventWith:(id)with snippetClass:(id)class dialogIdentifier:(id)identifier dialogPhase:(id)phase;
- (void)storeCurrentInstrumentationTurnContext:(id)context;
@end

@implementation SiriUIInstrumentationManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SiriUIInstrumentationManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __45__SiriUIInstrumentationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SiriUIInstrumentationManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SiriUIInstrumentationManager)init
{
  v3.receiver = self;
  v3.super_class = SiriUIInstrumentationManager;
  return [(SiriUIInstrumentationManager *)&v3 init];
}

- (AFAnalyticsTurnBasedInstrumentationContext)currentInstrumentationTurnContext
{
  mEMORY[0x277D61AD8] = [MEMORY[0x277D61AD8] sharedManager];
  currentInstrumentationTurnContext = [mEMORY[0x277D61AD8] currentInstrumentationTurnContext];

  return currentInstrumentationTurnContext;
}

- (void)storeCurrentInstrumentationTurnContext:(id)context
{
  v3 = MEMORY[0x277D61AD8];
  contextCopy = context;
  sharedManager = [v3 sharedManager];
  [sharedManager storeCurrentInstrumentationTurnContext:contextCopy];
}

- (void)emitUUFRPresentedEventWith:(id)with snippetClass:(id)class dialogIdentifier:(id)identifier dialogPhase:(id)phase
{
  v9 = MEMORY[0x277D61AD8];
  phaseCopy = phase;
  identifierCopy = identifier;
  classCopy = class;
  withCopy = with;
  sharedManager = [v9 sharedManager];
  [sharedManager emitUUFRPresentedEventWith:withCopy snippetClass:classCopy dialogIdentifier:identifierCopy dialogPhase:phaseCopy];
}

- (id)associatedDialogIdentifiersForAceObjectIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D61AD8];
  identifierCopy = identifier;
  sharedManager = [v3 sharedManager];
  v6 = [sharedManager associatedDialogIdentifiersForAceObjectIdentifier:identifierCopy];

  return v6;
}

@end