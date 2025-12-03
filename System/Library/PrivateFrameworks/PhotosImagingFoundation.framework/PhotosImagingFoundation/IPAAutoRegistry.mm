@interface IPAAutoRegistry
+ (void)setSharedRegistry:(id)registry;
- (BOOL)hasMappingForAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier;
- (BOOL)isPersistableAutoIdentifier:(id)identifier forOperationIdentifier:(id)operationIdentifier;
- (Class)settingsClassForAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier;
- (IPAAutoRegistry)init;
- (id)_entryForAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier;
- (void)registerAutoCalculatorSettingsClass:(Class)class toAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier persistable:(BOOL)persistable;
@end

@implementation IPAAutoRegistry

- (BOOL)isPersistableAutoIdentifier:(id)identifier forOperationIdentifier:(id)operationIdentifier
{
  v4 = [(IPAAutoRegistry *)self _entryForAutoIdentifier:identifier operationIdentifier:operationIdentifier];
  persistable = [v4 persistable];

  return persistable;
}

- (Class)settingsClassForAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier
{
  v4 = [(IPAAutoRegistry *)self _entryForAutoIdentifier:identifier operationIdentifier:operationIdentifier];
  autoSettingsClass = [v4 autoSettingsClass];

  return autoSettingsClass;
}

- (BOOL)hasMappingForAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier
{
  v4 = [(IPAAutoRegistry *)self _entryForAutoIdentifier:identifier operationIdentifier:operationIdentifier];
  v5 = v4 != 0;

  return v5;
}

- (id)_entryForAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier
{
  identifierCopy = identifier;
  operationIdentifierCopy = operationIdentifier;
  v8 = operationIdentifierCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2205;
  v21 = __Block_byref_object_dispose__2206;
  v22 = 0;
  if (identifierCopy && operationIdentifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", operationIdentifierCopy, identifierCopy];
    serializer = self->_serializer;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__IPAAutoRegistry__entryForAutoIdentifier_operationIdentifier___block_invoke;
    block[3] = &unk_279A26640;
    v15 = identifierCopy;
    v16 = &v17;
    block[4] = self;
    v11 = identifierCopy;
    dispatch_sync(serializer, block);
  }

  else
  {
    _PFAssertContinueHandler();
  }

  v12 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v12;
}

uint64_t __63__IPAAutoRegistry__entryForAutoIdentifier_operationIdentifier___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

- (void)registerAutoCalculatorSettingsClass:(Class)class toAutoIdentifier:(id)identifier operationIdentifier:(id)operationIdentifier persistable:(BOOL)persistable
{
  identifierCopy = identifier;
  operationIdentifierCopy = operationIdentifier;
  if (!class)
  {
    _PFAssertFailHandler();
    goto LABEL_6;
  }

  if (!identifierCopy)
  {
LABEL_6:
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  v12 = operationIdentifierCopy;
  if (operationIdentifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", operationIdentifierCopy, identifierCopy];
    serializer = self->_serializer;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__IPAAutoRegistry_registerAutoCalculatorSettingsClass_toAutoIdentifier_operationIdentifier_persistable___block_invoke;
    block[3] = &unk_279A26618;
    v18 = identifierCopy;
    classCopy = class;
    persistableCopy = persistable;
    block[4] = self;
    v15 = identifierCopy;
    dispatch_sync(serializer, block);

    return;
  }

LABEL_7:
  v16 = _PFAssertFailHandler();
  __104__IPAAutoRegistry_registerAutoCalculatorSettingsClass_toAutoIdentifier_operationIdentifier_persistable___block_invoke(v16);
}

void __104__IPAAutoRegistry_registerAutoCalculatorSettingsClass_toAutoIdentifier_operationIdentifier_persistable___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setAutoSettingsClass:*(a1 + 48)];
  [v2 setPersistable:*(a1 + 56)];
  [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (IPAAutoRegistry)init
{
  v9.receiver = self;
  v9.super_class = IPAAutoRegistry;
  v2 = [(IPAAutoRegistry *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"IPAAutoRegistry.%p._serializer", v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    serializer = v2->_serializer;
    v2->_serializer = v4;

    v6 = objc_opt_new();
    entries = v2->_entries;
    v2->_entries = v6;
  }

  return v2;
}

+ (void)setSharedRegistry:(id)registry
{
  registryCopy = registry;
  if (registryCopy)
  {
    s_instance = registryCopy;

    MEMORY[0x2821F96F8]();
  }

  else
  {
    v4 = _PFAssertFailHandler();
    [(IPAAdjustmentEnvelope *)v4 .cxx_destruct];
  }
}

@end