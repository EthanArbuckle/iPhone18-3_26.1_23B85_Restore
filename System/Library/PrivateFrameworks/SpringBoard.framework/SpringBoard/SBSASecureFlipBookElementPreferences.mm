@interface SBSASecureFlipBookElementPreferences
- (id)copyBySettingActiveLayoutMode:(int64_t)a3;
- (id)copyBySettingActiveSecureElementIdentity:(id)a3;
- (id)copyBySettingLayoutDirection:(int64_t)a3;
- (id)copyBySettingOrientation:(int64_t)a3;
- (id)copyBySettingRequestedComponentsToStates:(id)a3;
- (id)copyBySettingRequestedConfigurationName:(id)a3;
- (int64_t)activeLayoutMode;
- (int64_t)layoutDirection;
- (int64_t)orientation;
- (void)_setActiveLayoutMode:(int64_t)a3;
- (void)_setActiveSecureElementIdentity:(id)a3;
- (void)_setLayoutDirection:(int64_t)a3;
- (void)_setOrientation:(int64_t)a3;
- (void)_setRequestedComponentsToStates:(id)a3;
- (void)_setRequestedConfigurationName:(id)a3;
@end

@implementation SBSASecureFlipBookElementPreferences

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
  v8[2] = __81__SBSASecureFlipBookElementPreferences_copyBySettingActiveSecureElementIdentity___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v8];

  return v6;
}

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
  v8[2] = __80__SBSASecureFlipBookElementPreferences_copyBySettingRequestedConfigurationName___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v8];

  return v6;
}

- (void)_setLayoutDirection:(int64_t)a3
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"layoutDirection"];
}

- (int64_t)layoutDirection
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"layoutDirection"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingLayoutDirection:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SBSASecureFlipBookElementPreferences_copyBySettingLayoutDirection___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  v4[4] = a3;
  return [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v4];
}

- (void)_setOrientation:(int64_t)a3
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"orientation"];
}

- (int64_t)orientation
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"orientation"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingOrientation:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__SBSASecureFlipBookElementPreferences_copyBySettingOrientation___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  v4[4] = a3;
  return [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v4];
}

- (void)_setActiveLayoutMode:(int64_t)a3
{
  backingDictionary = self->super._backingDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(NSMutableDictionary *)backingDictionary setObject:v4 forKey:@"activeLayoutMode"];
}

- (int64_t)activeLayoutMode
{
  v4 = 0;
  v2 = [(NSMutableDictionary *)self->super._backingDictionary objectForKey:@"activeLayoutMode"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (id)copyBySettingActiveLayoutMode:(int64_t)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__SBSASecureFlipBookElementPreferences_copyBySettingActiveLayoutMode___block_invoke;
  v4[3] = &__block_descriptor_40_e8_v16__0_8l;
  v4[4] = a3;
  return [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v4];
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
  v8[2] = __81__SBSASecureFlipBookElementPreferences_copyBySettingRequestedComponentsToStates___block_invoke;
  v8[3] = &unk_2783B2DA8;
  v9 = v4;
  v5 = v4;
  v6 = [(SBSAAbstractDictionaryBackedPreferences *)self copyWithBlock:v8];

  return v6;
}

@end