@interface SBExternalDisplayDefaults
- (BOOL)displaySupportsExtendedDisplayMode:(id)mode;
- (NSString)description;
- (id)_constructDisplaySettingsMap;
- (id)displayModeSettingsForDisplay:(id)display;
- (id)observeDisplayModeSettingsOnQueue:(id)queue withBlock:(id)block;
- (void)_bindAndRegisterDefaults;
- (void)_saveDisplaySettingsMapToStore:(id)store;
- (void)resetPrototypeSettingAdjustableDefaults;
- (void)setDisplayModeSettings:(id)settings forDisplaysMatchingPredicates:(id)predicates;
@end

@implementation SBExternalDisplayDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"arrangementEdge"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBExternalDisplayArrangementEdge" toDefaultValue:&unk_1F3D3E868 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"arrangementOffset"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBExternalDisplayArrangementOffset" toDefaultValue:&unk_1F3D3F148 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mirroringEnabled"];
  v6 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBExternalDisplayMirroringEnabled" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowWirelessDisplaysForExtendedDisplayMode"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBExtendedDisplayOverrideSupportForAirPlayAndDontFileRadars" toDefaultValue:v6 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"contentsScale"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBExtendedDisplayContentsScaleAndDontFileRadars" toDefaultValue:&unk_1F3D3F158 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"displayModeSettingsMap"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBDisplayModeSettings" toDefaultValue:MEMORY[0x1E695E0F8] options:2];
}

- (void)resetPrototypeSettingAdjustableDefaults
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store removeObjectForKey:@"SBExtendedDisplayOverrideSupportForAirPlayAndDontFileRadars"];
  [_store removeObjectForKey:@"SBExtendedDisplayContentsScaleAndDontFileRadars"];
  [_store removeObjectForKey:@"SBDisplayModeSettings"];
  [(BSAbstractDefaultDomain *)self synchronizeDefaults];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[SBExternalDisplayDefaults allowWirelessDisplaysForExtendedDisplayMode](self withName:{"allowWirelessDisplaysForExtendedDisplayMode"), @"allowWirelessDisplays"}];
  [(SBExternalDisplayDefaults *)self contentsScale];
  v5 = [v3 appendFloat:@"contentsScale" withName:2 decimalPrecision:?];
  v6 = [v3 appendBool:-[SBExternalDisplayDefaults isMirroringEnabled](self withName:{"isMirroringEnabled"), @"mirroringEnabled"}];
  build = [v3 build];

  return build;
}

- (BOOL)displaySupportsExtendedDisplayMode:(id)mode
{
  modeCopy = mode;
  allowWirelessDisplaysForExtendedDisplayMode = [(SBExternalDisplayDefaults *)self allowWirelessDisplaysForExtendedDisplayMode];
  identity = [modeCopy identity];
  rootIdentity = [identity rootIdentity];

  if ([rootIdentity isExternal] && objc_msgSend(rootIdentity, "isAirPlayDisplay") && (objc_msgSend(rootIdentity, "isCarDisplay") & 1) == 0 && (objc_msgSend(rootIdentity, "isCarInstrumentsDisplay") & 1) == 0 && (objc_msgSend(rootIdentity, "connectionType") == 1) | allowWirelessDisplaysForExtendedDisplayMode & 1 && objc_msgSend(rootIdentity, "isRootIdentity"))
  {
    hardwareIdentifier = [modeCopy hardwareIdentifier];

    if (hardwareIdentifier)
    {
      hardwareIdentifier = [SBDisplayScaleMapping withDisplay:modeCopy];
      supportedScales = [hardwareIdentifier supportedScales];

      LOBYTE(hardwareIdentifier) = supportedScales != 0;
    }
  }

  else
  {
    LOBYTE(hardwareIdentifier) = 0;
  }

  return hardwareIdentifier;
}

- (id)displayModeSettingsForDisplay:(id)display
{
  displayCopy = display;
  if (!displayCopy)
  {
    [SBExternalDisplayDefaults displayModeSettingsForDisplay:];
  }

  if (![(SBExternalDisplayDefaults *)self displaySupportsExtendedDisplayMode:displayCopy])
  {
    createDefaultSettings = 0;
    goto LABEL_18;
  }

  _constructDisplaySettingsMap = [(SBExternalDisplayDefaults *)self _constructDisplaySettingsMap];
  v6 = [SBDisplayModePredicate forDisplay:displayCopy];
  v7 = [_constructDisplaySettingsMap objectForKey:v6];
  createDefaultSettings = v7;
  if (!v7)
  {
    v9 = [SBDisplayModePredicate forDisplaysSimilarToDisplay:displayCopy];
    createDefaultSettings = [_constructDisplaySettingsMap objectForKey:v9];

    if (!createDefaultSettings)
    {
      v10 = +[SBDisplayModePredicate allDisplays];
      createDefaultSettings = [_constructDisplaySettingsMap objectForKey:v10];
    }
  }

  v11 = [SBDisplayScaleMapping withDisplay:displayCopy];
  v12 = v11;
  if (!createDefaultSettings)
  {
    createDefaultSettings = [v11 createDefaultSettings];
  }

  supportedScales = [v12 supportedScales];
  [createDefaultSettings scale];
  if ((SBSDisplayScaleMaskFromScale() & ~supportedScales) != 0)
  {
    v14 = [createDefaultSettings mutableCopy];
    [v14 setScale:1];

    createDefaultSettings = v14;
LABEL_14:
    [_constructDisplaySettingsMap setObject:createDefaultSettings forKey:v6];
    [(SBExternalDisplayDefaults *)self _saveDisplaySettingsMapToStore:_constructDisplaySettingsMap];
    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (!createDefaultSettings)
  {
    [SBExternalDisplayDefaults displayModeSettingsForDisplay:];
  }

LABEL_18:

  return createDefaultSettings;
}

- (void)setDisplayModeSettings:(id)settings forDisplaysMatchingPredicates:(id)predicates
{
  v22 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  predicatesCopy = predicates;
  if (!settingsCopy)
  {
    [SBExternalDisplayDefaults setDisplayModeSettings:forDisplaysMatchingPredicates:];
  }

  if (![predicatesCopy count])
  {
    [SBExternalDisplayDefaults setDisplayModeSettings:forDisplaysMatchingPredicates:];
  }

  _constructDisplaySettingsMap = [(SBExternalDisplayDefaults *)self _constructDisplaySettingsMap];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = predicatesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [_constructDisplaySettingsMap objectForKey:{v15, v17}];
        if (([v16 isEqual:settingsCopy] & 1) == 0)
        {
          [_constructDisplaySettingsMap setObject:settingsCopy forKey:v15];
          v12 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);

    if (v12)
    {
      [(SBExternalDisplayDefaults *)self _saveDisplaySettingsMapToStore:_constructDisplaySettingsMap];
    }
  }

  else
  {
  }
}

- (id)observeDisplayModeSettingsOnQueue:(id)queue withBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v8 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBExternalDisplayDefaults observeDisplayModeSettingsOnQueue:withBlock:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBExternalDisplayDefaults observeDisplayModeSettingsOnQueue:withBlock:];
LABEL_3:
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"displayModeSettingsMap"];
  v10 = [(BSAbstractDefaultDomain *)self observeDefault:v9 onQueue:queueCopy withBlock:v8];

  return v10;
}

- (void)_saveDisplaySettingsMapToStore:(id)store
{
  v22 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(storeCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = storeCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v17}];
        defaultsKeyRepresentation = [v11 defaultsKeyRepresentation];
        defaultsRepresentation = [v12 defaultsRepresentation];
        [v5 setObject:defaultsRepresentation forKey:defaultsKeyRepresentation];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  displayModeSettingsMap = [(SBExternalDisplayDefaults *)self displayModeSettingsMap];
  v16 = [v5 isEqual:displayModeSettingsMap];

  if ((v16 & 1) == 0)
  {
    [(SBExternalDisplayDefaults *)self setDisplayModeSettingsMap:v5];
  }
}

- (id)_constructDisplaySettingsMap
{
  v25 = *MEMORY[0x1E69E9840];
  displayModeSettingsMap = [(SBExternalDisplayDefaults *)self displayModeSettingsMap];
  if (!displayModeSettingsMap)
  {
    displayModeSettingsMap = MEMORY[0x1E695E0F8];
  }

  v17 = displayModeSettingsMap;
  v3 = [displayModeSettingsMap mutableCopy];
  v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [SBDisplayModePredicate fromDefaultsKey:v9];
        v11 = MEMORY[0x1E69D4210];
        v12 = [v4 objectForKey:v9];
        v13 = [v11 fromDefaultsRepresentation:v12];

        if (v10)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          [array addObject:v9];
        }

        else
        {
          [v19 setObject:v13 forKey:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    [v4 removeObjectsForKeys:array];
    [(SBExternalDisplayDefaults *)self setDisplayModeSettingsMap:v4];
  }

  return v19;
}

- (void)displayModeSettingsForDisplay:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"displayConfiguration != nil" object:? file:? lineNumber:? description:?];
}

- (void)displayModeSettingsForDisplay:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setDisplayModeSettings:forDisplaysMatchingPredicates:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"settings != nil" object:? file:? lineNumber:? description:?];
}

- (void)setDisplayModeSettings:forDisplaysMatchingPredicates:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"[predicates count] > 0" object:? file:? lineNumber:? description:?];
}

- (void)observeDisplayModeSettingsOnQueue:withBlock:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)observeDisplayModeSettingsOnQueue:withBlock:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"observerBlock" object:? file:? lineNumber:? description:?];
}

@end