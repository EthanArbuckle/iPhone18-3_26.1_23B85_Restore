@interface SBSASecureFlipBookElementContext
- (id)copyBySettingClientIdentifier:(id)identifier;
- (id)copyBySettingElementIdentifier:(id)identifier;
- (id)copyBySettingRequestedComponentsToStates:(id)states;
- (id)copyBySettingRequestedConfigurationName:(id)name;
- (void)_setClientIdentifier:(id)identifier;
- (void)_setElementIdentifier:(id)identifier;
- (void)_setRequestedComponentsToStates:(id)states;
- (void)_setRequestedConfigurationName:(id)name;
@end

@implementation SBSASecureFlipBookElementContext

- (void)_setRequestedConfigurationName:(id)name
{
  backingDictionary = self->super._backingDictionary;
  if (name)
  {
    v5 = [name copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"requestedConfigurationName"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"requestedConfigurationName"];
  }
}

- (id)copyBySettingRequestedConfigurationName:(id)name
{
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBSASecureFlipBookElementContext_copyBySettingRequestedConfigurationName___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = nameCopy;
  v5 = nameCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setRequestedComponentsToStates:(id)states
{
  backingDictionary = self->super._backingDictionary;
  if (states)
  {
    v5 = [states copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"requestedComponentsToStates"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"requestedComponentsToStates"];
  }
}

- (id)copyBySettingRequestedComponentsToStates:(id)states
{
  statesCopy = states;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBSASecureFlipBookElementContext_copyBySettingRequestedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = statesCopy;
  v5 = statesCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setClientIdentifier:(id)identifier
{
  backingDictionary = self->super._backingDictionary;
  if (identifier)
  {
    v5 = [identifier copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"clientIdentifier"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"clientIdentifier"];
  }
}

- (id)copyBySettingClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SBSASecureFlipBookElementContext_copyBySettingClientIdentifier___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setElementIdentifier:(id)identifier
{
  backingDictionary = self->super._backingDictionary;
  if (identifier)
  {
    v5 = [identifier copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"elementIdentifier"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"elementIdentifier"];
  }
}

- (id)copyBySettingElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SBSASecureFlipBookElementContext_copyBySettingElementIdentifier___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

@end