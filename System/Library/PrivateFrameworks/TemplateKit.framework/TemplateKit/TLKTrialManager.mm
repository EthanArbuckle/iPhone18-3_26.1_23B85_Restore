@interface TLKTrialManager
+ (id)sharedManager;
- (TLKTrialManager)init;
- (void)refresh;
@end

@implementation TLKTrialManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[TLKTrialManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

- (TLKTrialManager)init
{
  v5.receiver = self;
  v5.super_class = TLKTrialManager;
  v2 = [(TLKTrialManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TLKTrialManager *)v2 setSnippetModernizationEnabled:1];
    [(TLKTrialManager *)v3 setBiggerSuggestionsLayoutEnabled:1];
    [(TLKTrialManager *)v3 setZkwOverrideValue:0];
  }

  return v3;
}

- (void)refresh
{
  if (!self->_client)
  {
    v3 = [MEMORY[0x1E69DB518] clientWithIdentifier:333];
    [(TLKTrialManager *)self setClient:v3];

    v4 = [MEMORY[0x1E69DB548] namespaceNameFromId:333];
    [(TLKTrialManager *)self setNamespace:v4];
  }

  client = [(TLKTrialManager *)self client];
  [client refresh];

  if (self->_experimentIdentifiers)
  {
    NSLog(&cfstr_HasExperimentI.isa);
  }

  client2 = [(TLKTrialManager *)self client];
  v7 = [MEMORY[0x1E69DB548] namespaceNameFromId:333];
  v8 = [client2 experimentIdentifiersWithNamespaceName:v7];
  experimentIdentifiers = self->_experimentIdentifiers;
  self->_experimentIdentifiers = v8;

  client3 = [(TLKTrialManager *)self client];
  namespace = [(TLKTrialManager *)self namespace];
  v18 = [client3 levelForFactor:@"SnippetModernization" withNamespaceName:namespace];

  client4 = [(TLKTrialManager *)self client];
  namespace2 = [(TLKTrialManager *)self namespace];
  v14 = [client4 levelForFactor:@"BiggerSuggestionsLayout" withNamespaceName:namespace2];

  client5 = [(TLKTrialManager *)self client];
  namespace3 = [(TLKTrialManager *)self namespace];
  v17 = [client5 levelForFactor:@"ZKWExpansionOverride" withNamespaceName:namespace3];

  if (v18)
  {
    -[TLKTrialManager setSnippetModernizationEnabled:](self, "setSnippetModernizationEnabled:", [v18 BOOLeanValue]);
  }

  if (v14)
  {
    -[TLKTrialManager setBiggerSuggestionsLayoutEnabled:](self, "setBiggerSuggestionsLayoutEnabled:", [v14 BOOLeanValue]);
  }

  if (v17)
  {
    -[TLKTrialManager setZkwOverrideValue:](self, "setZkwOverrideValue:", [v17 longValue]);
  }
}

uint64_t __32__TLKTrialManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end