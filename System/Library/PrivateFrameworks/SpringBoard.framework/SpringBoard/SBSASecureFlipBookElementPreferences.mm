@interface SBSASecureFlipBookElementPreferences
- (id)copyBySettingActiveLayoutMode:(int64_t)mode;
- (id)copyBySettingActiveSecureElementIdentity:(id)identity;
- (id)copyBySettingLayoutDirection:(int64_t)direction;
- (id)copyBySettingOrientation:(int64_t)orientation;
- (id)copyBySettingRequestedComponentsToStates:(id)states;
- (id)copyBySettingRequestedConfigurationName:(id)name;
- (int64_t)activeLayoutMode;
- (int64_t)layoutDirection;
- (int64_t)orientation;
- (void)_setActiveLayoutMode:(int64_t)mode;
- (void)_setActiveSecureElementIdentity:(id)identity;
- (void)_setLayoutDirection:(int64_t)direction;
- (void)_setOrientation:(int64_t)orientation;
- (void)_setRequestedComponentsToStates:(id)states;
- (void)_setRequestedConfigurationName:(id)name;
@end

@implementation SBSASecureFlipBookElementPreferences

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
  v8[2] = __81__SBSASecureFlipBookElementPreferences_copyBySettingActiveSecureElementIdentity___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = identityCopy;
  v5 = identityCopy;
  v6 = [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v8];

  return v6;
}

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
  v8[2] = __80__SBSASecureFlipBookElementPreferences_copyBySettingRequestedConfigurationName___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = nameCopy;
  v5 = nameCopy;
  v6 = [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v8];

  return v6;
}

- (void)_setLayoutDirection:(int64_t)direction
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:direction];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"layoutDirection"];
}

- (int64_t)layoutDirection
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"layoutDirection"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingLayoutDirection:(int64_t)direction
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SBSASecureFlipBookElementPreferences_copyBySettingLayoutDirection___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  v4[4] = direction;
  return [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v4];
}

- (void)_setOrientation:(int64_t)orientation
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:orientation];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"orientation"];
}

- (int64_t)orientation
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"orientation"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingOrientation:(int64_t)orientation
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SBSASecureFlipBookElementPreferences_copyBySettingOrientation___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  v4[4] = orientation;
  return [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v4];
}

- (void)_setActiveLayoutMode:(int64_t)mode
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"activeLayoutMode"];
}

- (int64_t)activeLayoutMode
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"activeLayoutMode"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingActiveLayoutMode:(int64_t)mode
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SBSASecureFlipBookElementPreferences_copyBySettingActiveLayoutMode___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  v4[4] = mode;
  return [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v4];
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
  v8[2] = __81__SBSASecureFlipBookElementPreferences_copyBySettingRequestedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = statesCopy;
  v5 = statesCopy;
  v6 = [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v8];

  return v6;
}

@end