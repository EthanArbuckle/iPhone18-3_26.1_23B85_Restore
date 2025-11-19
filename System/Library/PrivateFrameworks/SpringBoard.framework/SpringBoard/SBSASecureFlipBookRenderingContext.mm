@interface SBSASecureFlipBookRenderingContext
- (BOOL)transitionInProgress;
- (id)copyBySettingActiveComponentsToStates:(id)a3;
- (id)copyBySettingActiveConfigurationName:(id)a3;
- (id)copyBySettingActiveSecureElementIdentity:(id)a3;
- (id)copyBySettingAppliedComponentsToStates:(id)a3;
- (id)copyBySettingComponentToSecureTransitionMapping:(id)a3;
- (id)copyBySettingRequestedComponentsToStates:(id)a3;
- (id)copyBySettingTransitionInProgress:(BOOL)a3;
- (void)_setActiveComponentsToStates:(id)a3;
- (void)_setActiveConfigurationName:(id)a3;
- (void)_setActiveSecureElementIdentity:(id)a3;
- (void)_setAppliedComponentsToStates:(id)a3;
- (void)_setComponentToSecureTransitionMapping:(id)a3;
- (void)_setRequestedComponentsToStates:(id)a3;
- (void)_setTransitionInProgress:(BOOL)a3;
@end

@implementation SBSASecureFlipBookRenderingContext

- (void)_setActiveSecureElementIdentity:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"activeSecureElementIdentity"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"activeSecureElementIdentity"];
  }
}

- (id)copyBySettingActiveSecureElementIdentity:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SBSASecureFlipBookRenderingContext_copyBySettingActiveSecureElementIdentity___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setActiveConfigurationName:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"activeConfigurationName"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"activeConfigurationName"];
  }
}

- (id)copyBySettingActiveConfigurationName:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SBSASecureFlipBookRenderingContext_copyBySettingActiveConfigurationName___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setComponentToSecureTransitionMapping:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"componentToSecureTransitionMapping"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"componentToSecureTransitionMapping"];
  }
}

- (id)copyBySettingComponentToSecureTransitionMapping:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__SBSASecureFlipBookRenderingContext_copyBySettingComponentToSecureTransitionMapping___block_invoke;
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
  v8[2] = __79__SBSASecureFlipBookRenderingContext_copyBySettingRequestedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setAppliedComponentsToStates:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"appliedComponentsToStates"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"appliedComponentsToStates"];
  }
}

- (id)copyBySettingAppliedComponentsToStates:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__SBSASecureFlipBookRenderingContext_copyBySettingAppliedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setActiveComponentsToStates:(id)a3
{
  backingDictionary = self->super._backingDictionary;
  if (a3)
  {
    v5 = [a3 copy];
    [(NSMutableDictionary *)backingDictionary setObject:v5 forKey:@"activeComponentsToStates"];
  }

  else
  {
    v4 = self->super._backingDictionary;

    [(NSMutableDictionary *)v4 removeObjectForKey:@"activeComponentsToStates"];
  }
}

- (id)copyBySettingActiveComponentsToStates:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__SBSASecureFlipBookRenderingContext_copyBySettingActiveComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v8];

  return v6;
}

- (void)_setTransitionInProgress:(BOOL)a3
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"transitionInProgress"];
}

- (BOOL)transitionInProgress
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"transitionInProgress"];
  [v2 getValue:&v4 size:1];

  return v4;
}

- (id)copyBySettingTransitionInProgress:(BOOL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__SBSASecureFlipBookRenderingContext_copyBySettingTransitionInProgress___block_invoke;
  v4[3] = &__block_descriptor_33_e8_v16__0_8l;
  v5 = a3;
  return [(SBSAAbstractDictionaryBackedContext *)self copyWithBlock:v4];
}

@end