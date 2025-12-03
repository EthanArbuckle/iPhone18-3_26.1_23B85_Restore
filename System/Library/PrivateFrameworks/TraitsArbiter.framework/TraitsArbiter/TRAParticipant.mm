@interface TRAParticipant
- (BOOL)hasAnyActuationContext;
- (TRAArbiter)arbiter;
- (TRAParticipant)initWithRole:(id)role uniqueIdentifier:(id)identifier delegate:(id)delegate arbiter:(id)arbiter;
- (TRAParticipantDelegate)delegate;
- (double)currentZOrderLevel;
- (double)previousZOrderLevel;
- (id)_setupStateDump;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
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
- (void)setNeedsUpdatePreferencesWithReason:(id)reason;
- (void)setNeedsUpdatePreferencesWithReason:(id)reason force:(BOOL)force animate:(BOOL)animate;
- (void)setOrientationPreferences:(id)preferences;
- (void)setZOrderLevelPreferences:(id)preferences;
- (void)updateAmbientPresentationSettingsWithBlock:(id)block;
- (void)updateOrientationPreferencesWithBlock:(id)block;
- (void)updateOrientationSettingsWithBlock:(id)block;
- (void)updatePreferencesIfNeeded;
- (void)updateUserInterfaceOrientationSettingsWithBlock:(id)block;
- (void)updateZOrderLevelPreferencesWithBlock:(id)block;
- (void)updateZOrderLevelSettingsWithBlock:(id)block;
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
  orientationSettings = [(TRASettings *)self->_currentSettings orientationSettings];
  orientation = [orientationSettings orientation];

  return orientation;
}

- (TRAParticipantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)currentZOrderLevel
{
  zOrderLevelSettings = [(TRASettings *)self->_currentSettings zOrderLevelSettings];
  [zOrderLevelSettings zOrderLevel];
  v4 = v3;

  return v4;
}

- (int64_t)currentAmbientPresentedFlag
{
  ambientPresentationSettings = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  ambientPresentationInputs = [ambientPresentationSettings ambientPresentationInputs];

  if (ambientPresentationInputs)
  {
    [ambientPresentationInputs isAmbientPresented];
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
  actuationContext = [(TRAOrientationResolutionPolicyInfo *)self->_orientationResolutionPolicyInfo actuationContext];
  if (actuationContext)
  {
    v4 = 1;
  }

  else
  {
    actuationContext2 = [(TRAUserInterfaceStyleResolutionPolicyInfo *)self->_userInterfaceStyleResolutionPolicyInfo actuationContext];
    v4 = actuationContext2 != 0;
  }

  return v4;
}

- (int64_t)currentUserInterfaceStyle
{
  userInterfaceStyleSettings = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
  userInterfaceStyleInputs = [userInterfaceStyleSettings userInterfaceStyleInputs];
  userInterfaceStyle = [userInterfaceStyleInputs userInterfaceStyle];

  return userInterfaceStyle;
}

- (void)updatePreferencesIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  [WeakRetained updateArbitrationIfNeeded];
}

- (int64_t)previousAmbientPresentedFlag
{
  ambientPresentationSettings = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
  ambientPresentationInputs = [ambientPresentationSettings ambientPresentationInputs];

  if (ambientPresentationInputs)
  {
    [ambientPresentationInputs isAmbientPresented];
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
  ambientPresentationSettings = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  ambientPresentationInputs = [ambientPresentationSettings ambientPresentationInputs];

  if (ambientPresentationInputs)
  {
    ambientDisplayStyle = [ambientPresentationInputs ambientDisplayStyle];
  }

  else
  {
    ambientDisplayStyle = 0;
  }

  return ambientDisplayStyle;
}

- (int64_t)previousAmbientDisplayStyle
{
  ambientPresentationSettings = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
  ambientPresentationInputs = [ambientPresentationSettings ambientPresentationInputs];

  if (ambientPresentationInputs)
  {
    ambientDisplayStyle = [ambientPresentationInputs ambientDisplayStyle];
  }

  else
  {
    ambientDisplayStyle = 0;
  }

  return ambientDisplayStyle;
}

- (TRAParticipant)initWithRole:(id)role uniqueIdentifier:(id)identifier delegate:(id)delegate arbiter:(id)arbiter
{
  roleCopy = role;
  identifierCopy = identifier;
  delegateCopy = delegate;
  arbiterCopy = arbiter;
  if (roleCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [TRAParticipant initWithRole:uniqueIdentifier:delegate:arbiter:];
    if (identifierCopy)
    {
LABEL_3:
      if (delegateCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [TRAParticipant initWithRole:uniqueIdentifier:delegate:arbiter:];
      if (arbiterCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [TRAParticipant initWithRole:uniqueIdentifier:delegate:arbiter:];
  if (!delegateCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (arbiterCopy)
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
    v16 = [roleCopy copy];
    role = v15->_role;
    v15->_role = v16;

    v18 = [identifierCopy copy];
    uniqueIdentifier = v15->_uniqueIdentifier;
    v15->_uniqueIdentifier = v18;

    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeWeak(&v15->_arbiter, arbiterCopy);
    _setupStateDump = [(TRAParticipant *)v15 _setupStateDump];
    stateDumpHandle = v15->_stateDumpHandle;
    v15->_stateDumpHandle = _setupStateDump;

    v15->__debugDelegateDidValidateLastSettings = 1;
  }

  return v15;
}

- (void)setNeedsUpdatePreferencesWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = reasonCopy;
  if (!reasonCopy)
  {
    [TRAParticipant setNeedsUpdatePreferencesWithReason:];
    reasonCopy = 0;
  }

  [(TRAParticipant *)self setNeedsUpdatePreferencesWithReason:reasonCopy force:0 animate:1];
}

- (void)setNeedsUpdatePreferencesWithReason:(id)reason force:(BOOL)force animate:(BOOL)animate
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [TRAParticipant setNeedsUpdatePreferencesWithReason:force:animate:];
  }

  v9 = [TRAArbiterUpdateContext alloc];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TRAParticipant_setNeedsUpdatePreferencesWithReason_force_animate___block_invoke;
  v13[3] = &unk_279DD4918;
  forceCopy = force;
  v14 = reasonCopy;
  selfCopy = self;
  animateCopy = animate;
  v10 = reasonCopy;
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

- (void)updateZOrderLevelPreferencesWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [TRAParticipant updateZOrderLevelPreferencesWithBlock:];
  }

  zOrderLevelPreferences = [(TRAParticipant *)self zOrderLevelPreferences];
  if (zOrderLevelPreferences)
  {
    zOrderLevelPreferences2 = [(TRAParticipant *)self zOrderLevelPreferences];
    v6 = [zOrderLevelPreferences2 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutablePreferencesZOrderLevel);
  }

  blockCopy[2](blockCopy, v6);
  if (![(TRAPreferencesZOrderLevel *)self->_zOrderLevelPreferences isEqualToZOrderLevelPreferences:v6])
  {
    v7 = [(TRAMutablePreferencesZOrderLevel *)v6 copy];
    zOrderLevelPreferences = self->_zOrderLevelPreferences;
    self->_zOrderLevelPreferences = v7;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdatePreferences:self];
  }
}

- (void)updateOrientationPreferencesWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [TRAParticipant updateOrientationPreferencesWithBlock:];
  }

  orientationPreferences = [(TRAParticipant *)self orientationPreferences];
  if (orientationPreferences)
  {
    orientationPreferences2 = [(TRAParticipant *)self orientationPreferences];
    v6 = [orientationPreferences2 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutablePreferencesOrientation);
  }

  blockCopy[2](blockCopy, v6);
  if (![(TRAPreferencesOrientation *)self->_orientationPreferences isEqualToOrientationPreferences:v6])
  {
    v7 = [(TRAMutablePreferencesOrientation *)v6 copy];
    orientationPreferences = self->_orientationPreferences;
    self->_orientationPreferences = v7;

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _participantDidUpdatePreferences:self];
  }
}

- (void)setZOrderLevelPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v7 = preferencesCopy;
  if (!preferencesCopy)
  {
    [TRAParticipant setZOrderLevelPreferences:];
    preferencesCopy = 0;
  }

  v5 = [preferencesCopy copy];
  zOrderLevelPreferences = self->_zOrderLevelPreferences;
  self->_zOrderLevelPreferences = v5;
}

- (void)setOrientationPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v7 = preferencesCopy;
  if (!preferencesCopy)
  {
    [TRAParticipant setOrientationPreferences:];
    preferencesCopy = 0;
  }

  v5 = [preferencesCopy copy];
  orientationPreferences = self->_orientationPreferences;
  self->_orientationPreferences = v5;
}

- (void)updateZOrderLevelSettingsWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [TRAParticipant updateZOrderLevelSettingsWithBlock:];
  }

  zOrderLevelSettings = [(TRASettings *)self->_currentSettings zOrderLevelSettings];
  v5 = zOrderLevelSettings;
  if (zOrderLevelSettings)
  {
    v6 = [zOrderLevelSettings mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsZOrderLevel);
  }

  v7 = v6;
  blockCopy[2](blockCopy, v6);
  if (([v5 isEqualToZOrderLevelSettings:v7] & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v8 = [TRASettings alloc];
      zOrderLevelSettings2 = [(TRASettings *)self->_currentSettings zOrderLevelSettings];
      orientationSettings = [(TRASettings *)self->_previousSettings orientationSettings];
      ambientPresentationSettings = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
      userInterfaceStyleSettings = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
      v13 = [(TRASettings *)v8 initWithZOrderLevelSettings:zOrderLevelSettings2 orientationSettings:orientationSettings ambientPresentationSettings:ambientPresentationSettings userInterfaceStyleSettings:userInterfaceStyleSettings];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v13;
    }

    else
    {
      zOrderLevelSettings2 = self->_previousSettings;
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

- (void)updateOrientationSettingsWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [TRAParticipant updateOrientationSettingsWithBlock:];
  }

  orientationSettings = [(TRASettings *)self->_currentSettings orientationSettings];
  v5 = orientationSettings;
  if (orientationSettings)
  {
    v6 = [orientationSettings mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsOrientation);
  }

  v7 = v6;
  blockCopy[2](blockCopy, v6);
  orientationSettings2 = [(TRASettings *)self->_currentSettings orientationSettings];
  v9 = [orientationSettings2 isEqualToOrientationSettings:v7];

  if ((v9 & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v10 = [TRASettings alloc];
      zOrderLevelSettings = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
      orientationSettings3 = [(TRASettings *)self->_currentSettings orientationSettings];
      ambientPresentationSettings = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
      userInterfaceStyleSettings = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
      v15 = [(TRASettings *)v10 initWithZOrderLevelSettings:zOrderLevelSettings orientationSettings:orientationSettings3 ambientPresentationSettings:ambientPresentationSettings userInterfaceStyleSettings:userInterfaceStyleSettings];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v15;
    }

    else
    {
      zOrderLevelSettings = self->_previousSettings;
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

- (void)updateAmbientPresentationSettingsWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [TRAParticipant updateAmbientPresentationSettingsWithBlock:];
  }

  ambientPresentationSettings = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  v5 = ambientPresentationSettings;
  if (ambientPresentationSettings)
  {
    v6 = [ambientPresentationSettings mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsAmbientPresentation);
  }

  v7 = v6;
  blockCopy[2](blockCopy, v6);
  ambientPresentationSettings2 = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
  v9 = [ambientPresentationSettings2 isEqualToAmbientPresentationSettings:v7];

  if ((v9 & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v10 = [TRASettings alloc];
      zOrderLevelSettings = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
      orientationSettings = [(TRASettings *)self->_previousSettings orientationSettings];
      ambientPresentationSettings3 = [(TRASettings *)self->_currentSettings ambientPresentationSettings];
      userInterfaceStyleSettings = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
      v15 = [(TRASettings *)v10 initWithZOrderLevelSettings:zOrderLevelSettings orientationSettings:orientationSettings ambientPresentationSettings:ambientPresentationSettings3 userInterfaceStyleSettings:userInterfaceStyleSettings];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v15;
    }

    else
    {
      zOrderLevelSettings = self->_previousSettings;
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

- (void)updateUserInterfaceOrientationSettingsWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [TRAParticipant updateUserInterfaceOrientationSettingsWithBlock:];
  }

  userInterfaceStyleSettings = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
  v5 = userInterfaceStyleSettings;
  if (userInterfaceStyleSettings)
  {
    v6 = [userInterfaceStyleSettings mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(TRAMutableSettingsUserInterfaceStyle);
  }

  v7 = v6;
  blockCopy[2](blockCopy, v6);
  userInterfaceStyleSettings2 = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
  v9 = [userInterfaceStyleSettings2 isEqualToUserInterfaceStyleSettings:v7];

  if ((v9 & 1) == 0)
  {
    if (self->_currentSettings)
    {
      v10 = [TRASettings alloc];
      zOrderLevelSettings = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
      orientationSettings = [(TRASettings *)self->_previousSettings orientationSettings];
      ambientPresentationSettings = [(TRASettings *)self->_previousSettings ambientPresentationSettings];
      userInterfaceStyleSettings3 = [(TRASettings *)self->_currentSettings userInterfaceStyleSettings];
      v15 = [(TRASettings *)v10 initWithZOrderLevelSettings:zOrderLevelSettings orientationSettings:orientationSettings ambientPresentationSettings:ambientPresentationSettings userInterfaceStyleSettings:userInterfaceStyleSettings3];
      previousSettings = self->_previousSettings;
      self->_previousSettings = v15;
    }

    else
    {
      zOrderLevelSettings = self->_previousSettings;
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
  succinctDescriptionBuilder = [(TRAParticipant *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_invalidated)
  {
    uppercaseString = [@"invalidated" uppercaseString];
    [v4 appendString:uppercaseString withName:0 skipIfEmpty:1];
  }

  else
  {
    [v3 appendString:&stru_287F70690 withName:0 skipIfEmpty:1];
  }

  [v4 appendString:self->_role withName:@"role"];
  [v4 appendString:self->_uniqueIdentifier withName:@"uniqueIdentifier"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAParticipant *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(TRAParticipant *)self succinctDescriptionBuilder];
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    v6 = [succinctDescriptionBuilder appendPointer:WeakRetained withName:@"arbiter"];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__TRAParticipant_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_279DD4940;
    v9 = succinctDescriptionBuilder;
    v10 = @"    ";
    selfCopy = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:0 block:v8];
  }

  return succinctDescriptionBuilder;
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
  userInterfaceStyleSettings = [(TRASettings *)self->_previousSettings userInterfaceStyleSettings];
  userInterfaceStyleInputs = [userInterfaceStyleSettings userInterfaceStyleInputs];
  userInterfaceStyle = [userInterfaceStyleInputs userInterfaceStyle];

  return userInterfaceStyle;
}

- (double)previousZOrderLevel
{
  zOrderLevelSettings = [(TRASettings *)self->_previousSettings zOrderLevelSettings];
  [zOrderLevelSettings zOrderLevel];
  v4 = v3;

  return v4;
}

- (int64_t)previousOrientation
{
  orientationSettings = [(TRASettings *)self->_previousSettings orientationSettings];
  orientation = [orientationSettings orientation];

  return orientation;
}

- (int64_t)currentDeviceOrientation
{
  orientationSettings = [(TRASettings *)self->_currentSettings orientationSettings];
  validatedOrientationInputs = [orientationSettings validatedOrientationInputs];
  currentDeviceOrientation = [validatedOrientationInputs currentDeviceOrientation];

  return currentDeviceOrientation;
}

- (int64_t)previousDeviceOrientation
{
  orientationSettings = [(TRASettings *)self->_previousSettings orientationSettings];
  validatedOrientationInputs = [orientationSettings validatedOrientationInputs];
  currentDeviceOrientation = [validatedOrientationInputs currentDeviceOrientation];

  return currentDeviceOrientation;
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