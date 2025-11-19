@interface SBSASecureFlipBookElementContext
- (id)copyBySettingClientIdentifier:(id)a3;
- (id)copyBySettingElementIdentifier:(id)a3;
- (id)copyBySettingRequestedComponentsToStates:(id)a3;
- (id)copyBySettingRequestedConfigurationName:(id)a3;
- (void)_setClientIdentifier:(id)a3;
- (void)_setElementIdentifier:(id)a3;
- (void)_setRequestedComponentsToStates:(id)a3;
- (void)_setRequestedConfigurationName:(id)a3;
@end

@implementation SBSASecureFlipBookElementContext

- (void)_setRequestedConfigurationName:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"requestedConfigurationName"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"requestedConfigurationName"];
  }
}

- (id)copyBySettingRequestedConfigurationName:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBSASecureFlipBookElementContext_copyBySettingRequestedConfigurationName___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setRequestedComponentsToStates:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"requestedComponentsToStates"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"requestedComponentsToStates"];
  }
}

- (id)copyBySettingRequestedComponentsToStates:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBSASecureFlipBookElementContext_copyBySettingRequestedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setClientIdentifier:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"clientIdentifier"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"clientIdentifier"];
  }
}

- (id)copyBySettingClientIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__SBSASecureFlipBookElementContext_copyBySettingClientIdentifier___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setElementIdentifier:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"elementIdentifier"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"elementIdentifier"];
  }
}

- (id)copyBySettingElementIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__SBSASecureFlipBookElementContext_copyBySettingElementIdentifier___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

@end