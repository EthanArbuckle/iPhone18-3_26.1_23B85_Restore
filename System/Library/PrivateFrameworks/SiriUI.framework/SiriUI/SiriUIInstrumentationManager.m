@interface SiriUIInstrumentationManager
+ (id)sharedManager;
- (AFAnalyticsTurnBasedInstrumentationContext)currentInstrumentationTurnContext;
- (SiriUIInstrumentationManager)init;
- (id)associatedDialogIdentifiersForAceObjectIdentifier:(id)a3;
- (void)emitUUFRPresentedEventWith:(id)a3 snippetClass:(id)a4 dialogIdentifier:(id)a5 dialogPhase:(id)a6;
- (void)storeCurrentInstrumentationTurnContext:(id)a3;
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
  v2 = [MEMORY[0x277D61AD8] sharedManager];
  v3 = [v2 currentInstrumentationTurnContext];

  return v3;
}

- (void)storeCurrentInstrumentationTurnContext:(id)a3
{
  v3 = MEMORY[0x277D61AD8];
  v4 = a3;
  v5 = [v3 sharedManager];
  [v5 storeCurrentInstrumentationTurnContext:v4];
}

- (void)emitUUFRPresentedEventWith:(id)a3 snippetClass:(id)a4 dialogIdentifier:(id)a5 dialogPhase:(id)a6
{
  v9 = MEMORY[0x277D61AD8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 sharedManager];
  [v14 emitUUFRPresentedEventWith:v13 snippetClass:v12 dialogIdentifier:v11 dialogPhase:v10];
}

- (id)associatedDialogIdentifiersForAceObjectIdentifier:(id)a3
{
  v3 = MEMORY[0x277D61AD8];
  v4 = a3;
  v5 = [v3 sharedManager];
  v6 = [v5 associatedDialogIdentifiersForAceObjectIdentifier:v4];

  return v6;
}

@end