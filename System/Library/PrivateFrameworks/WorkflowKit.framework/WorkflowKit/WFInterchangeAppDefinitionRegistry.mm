@interface WFInterchangeAppDefinitionRegistry
+ (id)registeredDefinitions;
+ (void)initialize;
+ (void)rediscoverDefinitionsIfNeeded;
+ (void)registerDefinitionForKey:(id)key definition:(id)definition;
@end

@implementation WFInterchangeAppDefinitionRegistry

+ (void)rediscoverDefinitionsIfNeeded
{
  if (rediscoverDefinitionsIfNeeded_onceToken_69278 != -1)
  {
    dispatch_once(&rediscoverDefinitionsIfNeeded_onceToken_69278, &__block_literal_global_69279);
  }

  v3 = rediscoverDefinitionsIfNeeded_calledDefinitionVendingSelectors_69280;

  MEMORY[0x1EEDF81D0](self, @"appDefinitionFor", &rediscoverDefinitionsIfNeeded_lock_69282, ICShouldRediscoverAppDefinitions, v3);
}

uint64_t __67__WFInterchangeAppDefinitionRegistry_rediscoverDefinitionsIfNeeded__block_invoke()
{
  v0 = objc_opt_new();
  v1 = rediscoverDefinitionsIfNeeded_calledDefinitionVendingSelectors_69280;
  rediscoverDefinitionsIfNeeded_calledDefinitionVendingSelectors_69280 = v0;

  rediscoverDefinitionsIfNeeded_lock_69282 = 0;

  return MEMORY[0x1EEE705A8](ICDyldBulkImageLoadCallback);
}

+ (id)registeredDefinitions
{
  [self rediscoverDefinitionsIfNeeded];
  v2 = [_mutableRegisteredDefinitions_69287 copy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

+ (void)registerDefinitionForKey:(id)key definition:(id)definition
{
  v5 = _mutableRegisteredDefinitions_69287;
  keyCopy = key;
  v7 = _Block_copy(definition);
  [v5 setObject:v7 forKey:keyCopy];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_new();
    v3 = _mutableRegisteredDefinitions_69287;
    _mutableRegisteredDefinitions_69287 = v2;
  }
}

@end