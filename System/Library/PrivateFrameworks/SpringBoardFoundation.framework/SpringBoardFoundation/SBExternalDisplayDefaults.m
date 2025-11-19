@interface SBExternalDisplayDefaults
- (BOOL)displaySupportsExtendedDisplayMode:(id)a3;
- (NSString)description;
- (id)_constructDisplaySettingsMap;
- (id)displayModeSettingsForDisplay:(id)a3;
- (id)observeDisplayModeSettingsOnQueue:(id)a3 withBlock:(id)a4;
- (void)_bindAndRegisterDefaults;
- (void)_saveDisplaySettingsMapToStore:(id)a3;
- (void)resetPrototypeSettingAdjustableDefaults;
- (void)setDisplayModeSettings:(id)a3 forDisplaysMatchingPredicates:(id)a4;
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
  v3 = [(BSAbstractDefaultDomain *)self _store];
  [v3 removeObjectForKey:@"SBExtendedDisplayOverrideSupportForAirPlayAndDontFileRadars"];
  [v3 removeObjectForKey:@"SBExtendedDisplayContentsScaleAndDontFileRadars"];
  [v3 removeObjectForKey:@"SBDisplayModeSettings"];
  [(BSAbstractDefaultDomain *)self synchronizeDefaults];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:-[SBExternalDisplayDefaults allowWirelessDisplaysForExtendedDisplayMode](self withName:{"allowWirelessDisplaysForExtendedDisplayMode"), @"allowWirelessDisplays"}];
  [(SBExternalDisplayDefaults *)self contentsScale];
  v5 = [v3 appendFloat:@"contentsScale" withName:2 decimalPrecision:?];
  v6 = [v3 appendBool:-[SBExternalDisplayDefaults isMirroringEnabled](self withName:{"isMirroringEnabled"), @"mirroringEnabled"}];
  v7 = [v3 build];

  return v7;
}

- (BOOL)displaySupportsExtendedDisplayMode:(id)a3
{
  v4 = a3;
  v5 = [(SBExternalDisplayDefaults *)self allowWirelessDisplaysForExtendedDisplayMode];
  v6 = [v4 identity];
  v7 = [v6 rootIdentity];

  if ([v7 isExternal] && objc_msgSend(v7, "isAirPlayDisplay") && (objc_msgSend(v7, "isCarDisplay") & 1) == 0 && (objc_msgSend(v7, "isCarInstrumentsDisplay") & 1) == 0 && (objc_msgSend(v7, "connectionType") == 1) | v5 & 1 && objc_msgSend(v7, "isRootIdentity"))
  {
    v8 = [v4 hardwareIdentifier];

    if (v8)
    {
      v8 = [SBDisplayScaleMapping withDisplay:v4];
      v9 = [v8 supportedScales];

      LOBYTE(v8) = v9 != 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)displayModeSettingsForDisplay:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBExternalDisplayDefaults displayModeSettingsForDisplay:];
  }

  if (![(SBExternalDisplayDefaults *)self displaySupportsExtendedDisplayMode:v4])
  {
    v8 = 0;
    goto LABEL_18;
  }

  v5 = [(SBExternalDisplayDefaults *)self _constructDisplaySettingsMap];
  v6 = [SBDisplayModePredicate forDisplay:v4];
  v7 = [v5 objectForKey:v6];
  v8 = v7;
  if (!v7)
  {
    v9 = [SBDisplayModePredicate forDisplaysSimilarToDisplay:v4];
    v8 = [v5 objectForKey:v9];

    if (!v8)
    {
      v10 = +[SBDisplayModePredicate allDisplays];
      v8 = [v5 objectForKey:v10];
    }
  }

  v11 = [SBDisplayScaleMapping withDisplay:v4];
  v12 = v11;
  if (!v8)
  {
    v8 = [v11 createDefaultSettings];
  }

  v13 = [v12 supportedScales];
  [v8 scale];
  if ((SBSDisplayScaleMaskFromScale() & ~v13) != 0)
  {
    v14 = [v8 mutableCopy];
    [v14 setScale:1];

    v8 = v14;
LABEL_14:
    [v5 setObject:v8 forKey:v6];
    [(SBExternalDisplayDefaults *)self _saveDisplaySettingsMapToStore:v5];
    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (!v8)
  {
    [SBExternalDisplayDefaults displayModeSettingsForDisplay:];
  }

LABEL_18:

  return v8;
}

- (void)setDisplayModeSettings:(id)a3 forDisplaysMatchingPredicates:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [SBExternalDisplayDefaults setDisplayModeSettings:forDisplaysMatchingPredicates:];
  }

  if (![v7 count])
  {
    [SBExternalDisplayDefaults setDisplayModeSettings:forDisplaysMatchingPredicates:];
  }

  v8 = [(SBExternalDisplayDefaults *)self _constructDisplaySettingsMap];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
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
        v16 = [v8 objectForKey:{v15, v17}];
        if (([v16 isEqual:v6] & 1) == 0)
        {
          [v8 setObject:v6 forKey:v15];
          v12 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);

    if (v12)
    {
      [(SBExternalDisplayDefaults *)self _saveDisplaySettingsMapToStore:v8];
    }
  }

  else
  {
  }
}

- (id)observeDisplayModeSettingsOnQueue:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
  v10 = [(BSAbstractDefaultDomain *)self observeDefault:v9 onQueue:v6 withBlock:v8];

  return v10;
}

- (void)_saveDisplaySettingsMapToStore:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        v13 = [v11 defaultsKeyRepresentation];
        v14 = [v12 defaultsRepresentation];
        [v5 setObject:v14 forKey:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [(SBExternalDisplayDefaults *)self displayModeSettingsMap];
  v16 = [v5 isEqual:v15];

  if ((v16 & 1) == 0)
  {
    [(SBExternalDisplayDefaults *)self setDisplayModeSettingsMap:v5];
  }
}

- (id)_constructDisplaySettingsMap
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [(SBExternalDisplayDefaults *)self displayModeSettingsMap];
  if (!v2)
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  v17 = v2;
  v3 = [v2 mutableCopy];
  v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = [MEMORY[0x1E695DF70] array];
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
          [v18 addObject:v9];
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

  if ([v18 count])
  {
    [v4 removeObjectsForKeys:v18];
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