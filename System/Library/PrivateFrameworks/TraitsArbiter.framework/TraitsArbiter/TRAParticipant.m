@interface TRAParticipant
- (BOOL)hasAnyActuationContext;
- (TRAArbiter)arbiter;
- (TRAParticipant)initWithRole:(id)a3 uniqueIdentifier:(id)a4 delegate:(id)a5 arbiter:(id)a6;
- (TRAParticipantDelegate)delegate;
- (double)currentZOrderLevel;
- (double)previousZOrderLevel;
- (id)_setupStateDump;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)currentAmbientDisplayStyle;
- (int64_t)currentAmbientPresentedFlag;
- (int64_t)currentDeviceOrientation;
- (int64_t)currentOrientation;
- (int64_t)currentUserInterfaceStyle;
- (int64_t)previousAmbientDisplayStyle;
- (int64_t)previousAmbientPresentedFlag;
- (int64_t)previousDeviceOrientation;
- (int64_t)previousOrientation;
- (int64_t)previousUserInterfaceStyle;
- (void)dealloc;
- (void)invalidate;
- (void)setNeedsUpdatePreferencesWithReason:(id)a3;
- (void)setNeedsUpdatePreferencesWithReason:(id)a3 force:(BOOL)a4 animate:(BOOL)a5;
- (void)setOrientationPreferences:(id)a3;
- (void)setZOrderLevelPreferences:(id)a3;
- (void)updateAmbientPresentationSettingsWithBlock:(id)a3;
- (void)updateOrientationPreferencesWithBlock:(id)a3;
- (void)updateOrientationSettingsWithBlock:(id)a3;
- (void)updatePreferencesIfNeeded;
- (void)updateUserInterfaceOrientationSettingsWithBlock:(id)a3;
- (void)updateZOrderLevelPreferencesWithBlock:(id)a3;
- (void)updateZOrderLevelSettingsWithBlock:(id)a3;
@end

@implementation TRAParticipant

- (id)_setupStateDump
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v6 = [v4 stringWithFormat:@"TraitsArbiter - %p - Participants - %@", WeakRetained, self->_uniqueIdentifier];
  objc_copyWeak(&v9, &location);
  v7 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v7;
}

- (int64_t)currentOrientation
{
  v2 = [(TRASettings *)self->_currentSettings orientationSettings];
  v3 = [v2 orientation];

  return v3;
}

- (TRAParticipantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)currentZOrderLevel
{
  v2 = [(TRASettings *)self->_currentSettings zOrderLevelSettings];
  [v2 zOrderLevel];
  v4 = v3;

  return v4;
}

- (int64_t)currentAmbientPresentedFlag
{
  v2 = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  v3 = [v2 ambientPresentationInputs];

  if (v3)
  {
    [v3 isAmbientPresented];
    v4 = BSSettingFlagForBool();
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (BOOL)hasAnyActuationContext
{
  v3 = [(TRAOrientationResolutionPolicyInfo *)self->_orientationResolutionPolicyInfo actuationContext];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TRAUserInterfaceStyleResolutionPolicyInfo *)self->_userInterfaceStyleResolutionPolicyInfo actuationContext];
    v4 = v5 != 0;
  }

  return v4;
}

- (int64_t)currentUserInterfaceStyle
{
  v2 = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
  v3 = [v2 userInterfaceStyleInputs];
  v4 = [v3 userInterfaceStyle];

  return v4;
}

- (void)updatePreferencesIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  [WeakRetained updateArbitrationIfNeeded];
}

- (int64_t)previousAmbientPresentedFlag
{
  v2 = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
  v3 = [v2 ambientPresentationInputs];

  if (v3)
  {
    [v3 isAmbientPresented];
    v4 = BSSettingFlagForBool();
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (int64_t)currentAmbientDisplayStyle
{
  v2 = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  v3 = [v2 ambientPresentationInputs];

  if (v3)
  {
    v4 = [v3 ambientDisplayStyle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)previousAmbientDisplayStyle
{
  v2 = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
  v3 = [v2 ambientPresentationInputs];

  if (v3)
  {
    v4 = [v3 ambientDisplayStyle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TRAParticipant)initWithRole:(id)a3 uniqueIdentifier:(id)a4 delegate:(id)a5 arbiter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [TRAParticipant initWithRole:uniqueIdentifier:delegate:arbiter:];
    if (v11)
    {
LABEL_3:
      if (v12)
      {
        goto LABEL_4;
      }

LABEL_10:
      [TRAParticipant initWithRole:uniqueIdentifier:delegate:arbiter:];
      if (v13)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [TRAParticipant initWithRole:uniqueIdentifier:delegate:arbiter:];
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_11:
  [TRAParticipant initWithRole:uniqueIdentifier:delegate:arbiter:];
LABEL_5:
  v23.receiver = self;
  v23.super_class = TRAParticipant;
  v14 = [(TRAParticipant *)&v23 init];
  v15 = v14;
  if (v14)
  {
    v14->_invalidated = 0;
    v16 = [v10 copy];
    role = v15->_role;
    v15->_role = v16;

    v18 = [v11 copy];
    uniqueIdentifier = v15->_uniqueIdentifier;
    v15->_uniqueIdentifier = v18;

    objc_storeWeak(&v15->_delegate, v12);
    objc_storeWeak(&v15->_arbiter, v13);
    v20 = [(TRAParticipant *)v15 _setupStateDump];
    stateDumpHandle = v15->_stateDumpHandle;
    v15->_stateDumpHandle = v20;

    v15->__debugDelegateDidValidateLastSettings = 1;
  }

  return v15;
}

- (void)setNeedsUpdatePreferencesWithReason:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [TRAParticipant setNeedsUpdatePreferencesWithReason:];
    v4 = 0;
  }

  [(TRAParticipant *)self setNeedsUpdatePreferencesWithReason:v4 force:0 animate:1];
}

- (void)setNeedsUpdatePreferencesWithReason:(id)a3 force:(BOOL)a4 animate:(BOOL)a5
{
  v8 = a3;
  if (!v8)
  {
    [TRAParticipant setNeedsUpdatePreferencesWithReason:force:animate:];
  }

  v9 = [TRAArbiterUpdateContext alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TRAParticipant_setNeedsUpdatePreferencesWithReason_force_animate___block_invoke;
  v13[3] = &unk_279DD4918;
  v16 = a4;
  v14 = v8;
  v15 = self;
  v17 = a5;
  v10 = v8;
  v11 = [(TRAArbiterUpdateContext *)v9 initWithBuilder:v13];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  [WeakRetained setNeedsUpdateArbitrationWithContext:v11];
}

void __68__TRAParticipant_setNeedsUpdatePreferencesWithReason_force_animate___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setReason:*(a1 + 32)];
  [v3 setForceOrientationResolution:*(a1 + 48)];
  v7[0] = *(*(a1 + 40) + 104);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 setRequestingParticipantsUniqueIdentifiers:v4];

  if ((*(a1 + 49) & 1) == 0)
  {
    v5 = [[TRASettingsActuationContext alloc] initWithAnimationSettings:0 drawingFence:0];
    [v3 setOrientationActuationContext:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _invalidateParticipant:self];
  }
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateDumpHandle invalidate];
  v3.receiver = self;
  v3.super_class = TRAParticipant;
  [(TRAParticipant *)&v3 dealloc];
}

- (void)updateZOrderLevelPreferencesWithBlock:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [TRAParticipant updateZOrderLevelPreferencesWithBlock:];
  }

  v4 = [(TRAParticipant *)self zOrderLevelPreferences];
  if (v4)
  {
    v5 = [(TRAParticipant *)self zOrderLevelPreferences];
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutablePreferencesZOrderLevel);
  }

  v10[2](v10, v6);
  if (![(TRAPreferencesZOrderLevel *)self->_zOrderLevelPreferences isEqualToZOrderLevelPreferences:v6])
  {
    v7 = [(TRAMutablePreferencesZOrderLevel *)v6 copy];
    zOrderLevelPreferences = self->_zOrderLevelPreferences;
    self->_zOrderLevelPreferences = v7;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdatePreferences:self];
  }
}

- (void)updateOrientationPreferencesWithBlock:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [TRAParticipant updateOrientationPreferencesWithBlock:];
  }

  v4 = [(TRAParticipant *)self orientationPreferences];
  if (v4)
  {
    v5 = [(TRAParticipant *)self orientationPreferences];
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutablePreferencesOrientation);
  }

  v10[2](v10, v6);
  if (![(TRAPreferencesOrientation *)self->_orientationPreferences isEqualToOrientationPreferences:v6])
  {
    v7 = [(TRAMutablePreferencesOrientation *)v6 copy];
    orientationPreferences = self->_orientationPreferences;
    self->_orientationPreferences = v7;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdatePreferences:self];
  }
}

- (void)setZOrderLevelPreferences:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [TRAParticipant setZOrderLevelPreferences:];
    v4 = 0;
  }

  v5 = [v4 copy];
  zOrderLevelPreferences = self->_zOrderLevelPreferences;
  self->_zOrderLevelPreferences = v5;
}

- (void)setOrientationPreferences:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!v4)
  {
    [TRAParticipant setOrientationPreferences:];
    v4 = 0;
  }

  v5 = [v4 copy];
  orientationPreferences = self->_orientationPreferences;
  self->_orientationPreferences = v5;
}

- (void)updateZOrderLevelSettingsWithBlock:(id)a3
{
  v22 = a3;
  if (!v22)
  {
    [TRAParticipant updateZOrderLevelSettingsWithBlock:];
  }

  v4 = [(TRASettings *)self->_currentSettings zOrderLevelSettings];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsZOrderLevel);
  }

  v7 = v6;
  v22[2](v22, v6);
  if (([v5 isEqualToZOrderLevelSettings:v7] & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v8 = [TRASettings alloc];
      v9 = [(TRASettings *)self->_currentSettings zOrderLevelSettings];
      v10 = [(TRASettings *)self->_previousSettings orientationSettings];
      v11 = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
      v12 = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
      v13 = [(TRASettings *)v8 initWithZOrderLevelSettings:v9 orientationSettings:v10 ambientPresentationSettings:v11 userInterfaceStyleSettings:v12];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v13;
    }

    else
    {
      v9 = self->_previousSettings;
      self->_previousSettings = 0;
    }

    currentSettings = self->_currentSettings;
    if (currentSettings)
    {
      v16 = [(TRASettings *)currentSettings mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(TRAMutableSettings);
    }

    v17 = v16;
    v18 = [(TRAMutableSettingsZOrderLevel *)v7 copy];
    [(TRAMutableSettings *)v17 setZOrderLevelSettings:v18];

    v19 = [(TRAMutableSettings *)v17 copy];
    v20 = self->_currentSettings;
    self->_currentSettings = v19;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdateSettings:self];
  }
}

- (void)updateOrientationSettingsWithBlock:(id)a3
{
  v24 = a3;
  if (!v24)
  {
    [TRAParticipant updateOrientationSettingsWithBlock:];
  }

  v4 = [(TRASettings *)self->_currentSettings orientationSettings];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsOrientation);
  }

  v7 = v6;
  v24[2](v24, v6);
  v8 = [(TRASettings *)self->_currentSettings orientationSettings];
  v9 = [v8 isEqualToOrientationSettings:v7];

  if ((v9 & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v10 = [TRASettings alloc];
      v11 = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
      v12 = [(TRASettings *)self->_currentSettings orientationSettings];
      v13 = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
      v14 = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
      v15 = [(TRASettings *)v10 initWithZOrderLevelSettings:v11 orientationSettings:v12 ambientPresentationSettings:v13 userInterfaceStyleSettings:v14];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v15;
    }

    else
    {
      v11 = self->_previousSettings;
      self->_previousSettings = 0;
    }

    currentSettings = self->_currentSettings;
    if (currentSettings)
    {
      v18 = [(TRASettings *)currentSettings mutableCopy];
    }

    else
    {
      v18 = objc_alloc_init(TRAMutableSettings);
    }

    v19 = v18;
    v20 = [(TRAMutableSettingsOrientation *)v7 copy];
    [(TRAMutableSettings *)v19 setOrientationSettings:v20];

    v21 = [(TRAMutableSettings *)v19 copy];
    v22 = self->_currentSettings;
    self->_currentSettings = v21;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdateSettings:self];
  }
}

- (void)updateAmbientPresentationSettingsWithBlock:(id)a3
{
  v24 = a3;
  if (!v24)
  {
    [TRAParticipant updateAmbientPresentationSettingsWithBlock:];
  }

  v4 = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsAmbientPresentation);
  }

  v7 = v6;
  v24[2](v24, v6);
  v8 = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  v9 = [v8 isEqualToAmbientPresentationSettings:v7];

  if ((v9 & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v10 = [TRASettings alloc];
      v11 = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
      v12 = [(TRASettings *)self->_previousSettings orientationSettings];
      v13 = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
      v14 = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
      v15 = [(TRASettings *)v10 initWithZOrderLevelSettings:v11 orientationSettings:v12 ambientPresentationSettings:v13 userInterfaceStyleSettings:v14];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v15;
    }

    else
    {
      v11 = self->_previousSettings;
      self->_previousSettings = 0;
    }

    currentSettings = self->_currentSettings;
    if (currentSettings)
    {
      v18 = [(TRASettings *)currentSettings mutableCopy];
    }

    else
    {
      v18 = objc_alloc_init(TRAMutableSettings);
    }

    v19 = v18;
    v20 = [(TRAMutableSettingsAmbientPresentation *)v7 copy];
    [(TRAMutableSettings *)v19 setAmbientPresentationSettings:v20];

    v21 = [(TRAMutableSettings *)v19 copy];
    v22 = self->_currentSettings;
    self->_currentSettings = v21;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdateSettings:self];
  }
}

- (void)updateUserInterfaceOrientationSettingsWithBlock:(id)a3
{
  v24 = a3;
  if (!v24)
  {
    [TRAParticipant updateUserInterfaceOrientationSettingsWithBlock:];
  }

  v4 = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsUserInterfaceStyle);
  }

  v7 = v6;
  v24[2](v24, v6);
  v8 = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
  v9 = [v8 isEqualToUserInterfaceStyleSettings:v7];

  if ((v9 & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v10 = [TRASettings alloc];
      v11 = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
      v12 = [(TRASettings *)self->_previousSettings orientationSettings];
      v13 = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
      v14 = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
      v15 = [(TRASettings *)v10 initWithZOrderLevelSettings:v11 orientationSettings:v12 ambientPresentationSettings:v13 userInterfaceStyleSettings:v14];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v15;
    }

    else
    {
      v11 = self->_previousSettings;
      self->_previousSettings = 0;
    }

    currentSettings = self->_currentSettings;
    if (currentSettings)
    {
      v18 = [(TRASettings *)currentSettings mutableCopy];
    }

    else
    {
      v18 = objc_alloc_init(TRAMutableSettings);
    }

    v19 = v18;
    v20 = [(TRAMutableSettingsUserInterfaceStyle *)v7 copy];
    [(TRAMutableSettings *)v19 setUserInterfaceStyleSettings:v20];

    v21 = [(TRAMutableSettings *)v19 copy];
    v22 = self->_currentSettings;
    self->_currentSettings = v21;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdateSettings:self];
  }
}

- (id)succinctDescription
{
  v2 = [(TRAParticipant *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_invalidated)
  {
    v5 = [@"invalidated" uppercaseString];
    [v4 appendString:v5 withName:0 skipIfEmpty:1];
  }

  else
  {
    [v3 appendString:&stru_287F70690 withName:0 skipIfEmpty:1];
  }

  [v4 appendString:self->_role withName:@"role"];
  [v4 appendString:self->_uniqueIdentifier withName:@"uniqueIdentifier"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAParticipant *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(TRAParticipant *)self succinctDescriptionBuilder];
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    v6 = [v4 appendPointer:WeakRetained withName:@"arbiter"];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_279DD4940;
    v9 = v4;
    v10 = @"    ";
    v11 = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:0 block:v8];
  }

  return v4;
}

void __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v31[3] = &unk_279DD48D0;
  v4 = v2;
  v5 = a1[6];
  v32 = v4;
  v33 = v5;
  [v4 appendBodySectionWithName:@"Preferences" multilinePrefix:v3 block:v31];
  v6 = a1[4];
  v7 = a1[5];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v28[3] = &unk_279DD48D0;
  v8 = v6;
  v9 = a1[6];
  v29 = v8;
  v30 = v9;
  [v8 appendBodySectionWithName:@"Resolved Settings" multilinePrefix:v7 block:v28];
  if ((*(a1[6] + 72) & 1) == 0)
  {
    v10 = a1[4];
    v11 = a1[5];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke_4;
    v25[3] = &unk_279DD48D0;
    v12 = v10;
    v13 = a1[6];
    v26 = v12;
    v27 = v13;
    [v12 appendBodySectionWithName:@"Settings Validation" multilinePrefix:v11 block:v25];
  }

  v14 = a1[4];
  v15 = a1[5];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke_5;
  v22 = &unk_279DD48D0;
  v16 = v14;
  v17 = a1[6];
  v23 = v16;
  v24 = v17;
  [v16 appendBodySectionWithName:@"Resolution Policies" multilinePrefix:v15 block:&v19];
  WeakRetained = objc_loadWeakRetained((a1[6] + 112));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained appendDescriptionForParticipant:a1[6] withBuilder:a1[4] multilinePrefix:{a1[5], v19, v20, v21, v22}];
  }
}

uint64_t __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:0 withName:@"did validate last settings"];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 120);

  return [v3 appendString:v4 withName:@"last validation failure reason" skipIfEmpty:1];
}

__CFString *__33__TRAParticipant__setupStateDump__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained debugDescription];
  }

  else
  {
    v3 = &stru_287F70690;
  }

  return v3;
}

- (TRAArbiter)arbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);

  return WeakRetained;
}

- (int64_t)previousUserInterfaceStyle
{
  v2 = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
  v3 = [v2 userInterfaceStyleInputs];
  v4 = [v3 userInterfaceStyle];

  return v4;
}

- (double)previousZOrderLevel
{
  v2 = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
  [v2 zOrderLevel];
  v4 = v3;

  return v4;
}

- (int64_t)previousOrientation
{
  v2 = [(TRASettings *)self->_previousSettings orientationSettings];
  v3 = [v2 orientation];

  return v3;
}

- (int64_t)currentDeviceOrientation
{
  v2 = [(TRASettings *)self->_currentSettings orientationSettings];
  v3 = [v2 validatedOrientationInputs];
  v4 = [v3 currentDeviceOrientation];

  return v4;
}

- (int64_t)previousDeviceOrientation
{
  v2 = [(TRASettings *)self->_previousSettings orientationSettings];
  v3 = [v2 validatedOrientationInputs];
  v4 = [v3 currentDeviceOrientation];

  return v4;
}

- (void)initWithRole:uniqueIdentifier:delegate:arbiter:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"role" object:? file:? lineNumber:? description:?];
}

- (void)initWithRole:uniqueIdentifier:delegate:arbiter:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"uniqueIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithRole:uniqueIdentifier:delegate:arbiter:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)initWithRole:uniqueIdentifier:delegate:arbiter:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"arbiter" object:? file:? lineNumber:? description:?];
}

- (void)setNeedsUpdatePreferencesWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)setNeedsUpdatePreferencesWithReason:force:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)setNeedsUpdatePreferencesWithReason:force:animate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)updateZOrderLevelPreferencesWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"preferencesUpdateBlock" object:? file:? lineNumber:? description:?];
}

- (void)updateOrientationPreferencesWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"preferencesUpdateBlock" object:? file:? lineNumber:? description:?];
}

- (void)setZOrderLevelPreferences:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"zOrderLevelPreferences" object:? file:? lineNumber:? description:?];
}

- (void)setOrientationPreferences:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"orientationPreferences" object:? file:? lineNumber:? description:?];
}

- (void)updateZOrderLevelSettingsWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"settingsUpdateBlock" object:? file:? lineNumber:? description:?];
}

- (void)updateOrientationSettingsWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"settingsUpdateBlock" object:? file:? lineNumber:? description:?];
}

- (void)updateAmbientPresentationSettingsWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"settingsUpdateBlock" object:? file:? lineNumber:? description:?];
}

- (void)updateUserInterfaceOrientationSettingsWithBlock:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"settingsUpdateBlock" object:? file:? lineNumber:? description:?];
}

@end