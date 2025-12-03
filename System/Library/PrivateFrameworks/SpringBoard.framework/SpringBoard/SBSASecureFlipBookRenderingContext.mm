@interface SBSASecureFlipBookRenderingContext
- (BOOL)transitionInProgress;
- (id)copyBySettingActiveComponentsToStates:(id)states;
- (id)copyBySettingActiveConfigurationName:(id)name;
- (id)copyBySettingActiveSecureElementIdentity:(id)identity;
- (id)copyBySettingAppliedComponentsToStates:(id)states;
- (id)copyBySettingComponentToSecureTransitionMapping:(id)mapping;
- (id)copyBySettingRequestedComponentsToStates:(id)states;
- (id)copyBySettingTransitionInProgress:(BOOL)progress;
- (void)_setActiveComponentsToStates:(id)states;
- (void)_setActiveConfigurationName:(id)name;
- (void)_setActiveSecureElementIdentity:(id)identity;
- (void)_setAppliedComponentsToStates:(id)states;
- (void)_setComponentToSecureTransitionMapping:(id)mapping;
- (void)_setRequestedComponentsToStates:(id)states;
- (void)_setTransitionInProgress:(BOOL)progress;
@end

@implementation SBSASecureFlipBookRenderingContext

- (void)_setActiveSecureElementIdentity:(id)identity
{
  backingDictionary = self->super._backingDictionary;
  if (identity)
  {
    v5 = [identity copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"activeSecureElementIdentity"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"activeSecureElementIdentity"];
  }
}

- (id)copyBySettingActiveSecureElementIdentity:(id)identity
{
  identityCopy = identity;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SBSASecureFlipBookRenderingContext_copyBySettingActiveSecureElementIdentity___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = identityCopy;
  v5 = identityCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setActiveConfigurationName:(id)name
{
  backingDictionary = self->super._backingDictionary;
  if (name)
  {
    v5 = [name copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"activeConfigurationName"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"activeConfigurationName"];
  }
}

- (id)copyBySettingActiveConfigurationName:(id)name
{
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SBSASecureFlipBookRenderingContext_copyBySettingActiveConfigurationName___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = nameCopy;
  v5 = nameCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setComponentToSecureTransitionMapping:(id)mapping
{
  backingDictionary = self->super._backingDictionary;
  if (mapping)
  {
    v5 = [mapping copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"componentToSecureTransitionMapping"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"componentToSecureTransitionMapping"];
  }
}

- (id)copyBySettingComponentToSecureTransitionMapping:(id)mapping
{
  mappingCopy = mapping;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__SBSASecureFlipBookRenderingContext_copyBySettingComponentToSecureTransitionMapping___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = mappingCopy;
  v5 = mappingCopy;
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
  v8[2] = __79__SBSASecureFlipBookRenderingContext_copyBySettingRequestedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = statesCopy;
  v5 = statesCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setAppliedComponentsToStates:(id)states
{
  backingDictionary = self->super._backingDictionary;
  if (states)
  {
    v5 = [states copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"appliedComponentsToStates"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"appliedComponentsToStates"];
  }
}

- (id)copyBySettingAppliedComponentsToStates:(id)states
{
  statesCopy = states;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBSASecureFlipBookRenderingContext_copyBySettingAppliedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = statesCopy;
  v5 = statesCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setActiveComponentsToStates:(id)states
{
  backingDictionary = self->super._backingDictionary;
  if (states)
  {
    v5 = [states copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"activeComponentsToStates"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"activeComponentsToStates"];
  }
}

- (id)copyBySettingActiveComponentsToStates:(id)states
{
  statesCopy = states;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBSASecureFlipBookRenderingContext_copyBySettingActiveComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = statesCopy;
  v5 = statesCopy;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setTransitionInProgress:(BOOL)progress
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:progress];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"transitionInProgress"];
}

- (BOOL)transitionInProgress
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"transitionInProgress"];
  [v2 getValue:&v4 size:1];

  return v4;
}

- (id)copyBySettingTransitionInProgress:(BOOL)progress
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBSASecureFlipBookRenderingContext_copyBySettingTransitionInProgress___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  progressCopy = progress;
  return [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v4];
}

@end