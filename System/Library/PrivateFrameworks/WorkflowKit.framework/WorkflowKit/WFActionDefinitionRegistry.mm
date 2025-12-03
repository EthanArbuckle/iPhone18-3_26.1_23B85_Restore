@interface WFActionDefinitionRegistry
+ (id)registeredDefinitions;
+ (void)initialize;
+ (void)rediscoverDefinitionsIfNeeded;
+ (void)registerDefinitionForKey:(id)key definition:(id)definition;
@end

@implementation WFActionDefinitionRegistry

+ (void)rediscoverDefinitionsIfNeeded
{
  if (rediscoverDefinitionsIfNeeded_onceToken != -1)
  {
    dispatch_once(&rediscoverDefinitionsIfNeeded_onceToken, &__block_literal_global_13289);
  }

  v3 = rediscoverDefinitionsIfNeeded_calledDefinitionVendingSelectors;

  MEMORY[0x1EEDF81D0](self, @"actionDefinitionFor", &rediscoverDefinitionsIfNeeded_lock, WFShouldRediscoverActionDefinitions, v3);
}

uint64_t __59__WFActionDefinitionRegistry_rediscoverDefinitionsIfNeeded__block_invoke()
{
  v0 = objc_opt_new();
  v1 = rediscoverDefinitionsIfNeeded_calledDefinitionVendingSelectors;
  rediscoverDefinitionsIfNeeded_calledDefinitionVendingSelectors = v0;

  rediscoverDefinitionsIfNeeded_lock = 0;

  return MEMORY[0x1EEE705A8](WFDyldBulkImageLoadCallback);
}

+ (id)registeredDefinitions
{
  [self rediscoverDefinitionsIfNeeded];
  v2 = [_mutableRegisteredDefinitions copy];
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
  v5 = _mutableRegisteredDefinitions;
  keyCopy = key;
  v7 = _Block_copy(definition);
  [v5 setObject:v7 forKey:keyCopy];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_new();
    v3 = _mutableRegisteredDefinitions;
    _mutableRegisteredDefinitions = v2;
  }
}

@end