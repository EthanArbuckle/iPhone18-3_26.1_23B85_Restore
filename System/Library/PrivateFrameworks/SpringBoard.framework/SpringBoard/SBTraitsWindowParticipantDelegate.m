@interface SBTraitsWindowParticipantDelegate
+ (id)_activeOrientationDeterminingParticipantRoles;
- (BOOL)_isWindowContentVisible:(id)a3;
- (SBTraitsWindowParticipantDelegate)init;
- (id)_autorotationPreventionReasons:(id)a3;
- (id)_validationFailureReasonForWindow:(id)a3;
- (id)participantAssociatedSceneIdentityTokens:(id)a3;
- (id)participantAssociatedWindows:(id)a3;
- (unint64_t)_validatedSupportedInterfaceOrientations:(unint64_t)a3 forWindow:(id)a4;
- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)participantWillInvalidate:(id)a3;
- (void)setParticipant:(id)a3 ownedByWindow:(id)a4;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)validateSettingsForParticipant:(id)a3 validator:(id)a4;
- (void)windowDidUpdatePreferredWindowLevel:(double)a3 ownedParticipant:(id)a4;
- (void)windowDidUpdateSupportedOrientations:(unint64_t)a3 ownedParticipant:(id)a4;
- (void)windowWillBecomeHidden:(id)a3 ownedParticipant:(id)a4;
- (void)windowWillBecomeVisible:(id)a3 ownedParticipant:(id)a4;
@end

@implementation SBTraitsWindowParticipantDelegate

+ (id)_activeOrientationDeterminingParticipantRoles
{
  if (_activeOrientationDeterminingParticipantRoles_onceToken != -1)
  {
    +[SBTraitsWindowParticipantDelegate _activeOrientationDeterminingParticipantRoles];
  }

  v3 = _activeOrientationDeterminingParticipantRoles__activeOrientationDeterminingParticipantRoles;

  return v3;
}

- (SBTraitsWindowParticipantDelegate)init
{
  v16.receiver = self;
  v16.super_class = SBTraitsWindowParticipantDelegate;
  v2 = [(SBTraitsWindowParticipantDelegate *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    tempOwningWindowHidden = v2->_tempOwningWindowHidden;
    v2->_tempOwningWindowHidden = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    tempOwningWindowVisible = v2->_tempOwningWindowVisible;
    v2->_tempOwningWindowVisible = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
    tempLastPreferredZOrder = v2->_tempLastPreferredZOrder;
    v2->_tempLastPreferredZOrder = v7;

    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:15];
    tempLastSupportedOrientations = v2->_tempLastSupportedOrientations;
    v2->_tempLastSupportedOrientations = v9;

    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    visibleWindows = v2->_visibleWindows;
    v2->_visibleWindows = v11;

    v13 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
    participantOwningWindowMapTable = v2->_participantOwningWindowMapTable;
    v2->_participantOwningWindowMapTable = v13;
  }

  return v2;
}

void __82__SBTraitsWindowParticipantDelegate__activeOrientationDeterminingParticipantRoles__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"SBTraitsParticipantRoleHomeScreen";
  v2[1] = @"SBTraitsParticipantRoleTransientOverlay";
  v2[2] = @"SBTraitsParticipantRoleCoverSheet";
  v2[3] = @"SBTraitsParticipantRoleAssistant";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = _activeOrientationDeterminingParticipantRoles__activeOrientationDeterminingParticipantRoles;
  _activeOrientationDeterminingParticipantRoles__activeOrientationDeterminingParticipantRoles = v0;
}

- (void)setParticipant:(id)a3 ownedByWindow:(id)a4
{
  v19 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBTraitsWindowParticipantDelegate setParticipant:ownedByWindow:];
  }

  v8 = v19;
  if (!v19)
  {
    [SBTraitsWindowParticipantDelegate setParticipant:ownedByWindow:];
    v8 = 0;
  }

  v9 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:v8];
  if (v9)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SBTraitsWindowParticipantDelegate.m" lineNumber:70 description:{@"Participant(%@) cannot be owned by window(%@), since it's already owned by other window(%@)", v19, v9, v7}];
  }

  [(NSMapTable *)self->_participantOwningWindowMapTable setObject:v7 forKey:v19];
  v11 = -[SBTraitsWindowParticipantDelegate _validatedSupportedInterfaceOrientations:forWindow:](self, "_validatedSupportedInterfaceOrientations:forWindow:", [v7 _supportedInterfaceOrientationsForRootViewController], v7);
  tempLastPreferredZOrder = self->_tempLastPreferredZOrder;
  v13 = MEMORY[0x277CCABB0];
  [v7 windowLevel];
  v14 = [v13 numberWithDouble:?];
  [(NSMutableDictionary *)tempLastPreferredZOrder setObject:v14 forKey:v19];

  tempLastSupportedOrientations = self->_tempLastSupportedOrientations;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [(NSMutableDictionary *)tempLastSupportedOrientations setObject:v16 forKey:v19];

  v17 = [v7 isHidden];
  v18 = 32;
  if (v17)
  {
    v18 = 24;
  }

  [*(&self->super.isa + v18) addObject:v19];
}

- (void)windowWillBecomeVisible:(id)a3 ownedParticipant:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBTraitsWindowParticipantDelegate windowWillBecomeVisible:ownedParticipant:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [SBTraitsWindowParticipantDelegate windowWillBecomeVisible:ownedParticipant:];
LABEL_3:
  [(NSHashTable *)self->_visibleWindows addObject:v7];
  [(NSMutableArray *)self->_tempOwningWindowHidden removeObject:v6];
  [(NSMutableArray *)self->_tempOwningWindowVisible addObject:v6];
}

- (void)windowWillBecomeHidden:(id)a3 ownedParticipant:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBTraitsWindowParticipantDelegate windowWillBecomeHidden:ownedParticipant:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [SBTraitsWindowParticipantDelegate windowWillBecomeHidden:ownedParticipant:];
LABEL_3:
  [(NSHashTable *)self->_visibleWindows removeObject:v7];
  [(NSMutableArray *)self->_tempOwningWindowHidden addObject:v6];
  [(NSMutableArray *)self->_tempOwningWindowVisible removeObject:v6];
}

- (void)windowDidUpdatePreferredWindowLevel:(double)a3 ownedParticipant:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    [SBTraitsWindowParticipantDelegate windowDidUpdatePreferredWindowLevel:ownedParticipant:];
  }

  tempLastPreferredZOrder = self->_tempLastPreferredZOrder;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(NSMutableDictionary *)tempLastPreferredZOrder setObject:v7 forKey:v8];
}

- (void)windowDidUpdateSupportedOrientations:(unint64_t)a3 ownedParticipant:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    [SBTraitsWindowParticipantDelegate windowDidUpdateSupportedOrientations:ownedParticipant:];
  }

  tempLastSupportedOrientations = self->_tempLastSupportedOrientations;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)tempLastSupportedOrientations setObject:v7 forKey:v8];
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
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
    [SBTraitsWindowParticipantDelegate updatePreferencesForParticipant:updater:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBTraitsWindowParticipantDelegate updatePreferencesForParticipant:updater:];
LABEL_3:
  v9 = [(NSMutableDictionary *)self->_tempLastPreferredZOrder objectForKey:v6];
  v10 = [(NSMutableDictionary *)self->_tempLastSupportedOrientations objectForKey:v6];
  v11 = [(NSMutableArray *)self->_tempOwningWindowVisible containsObject:v6];
  v12 = [(NSMutableArray *)self->_tempOwningWindowHidden containsObject:v6];
  v13 = v12;
  v14 = (v11 | v12) & 1;
  if (v9)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __77__SBTraitsWindowParticipantDelegate_updatePreferencesForParticipant_updater___block_invoke;
    v22[3] = &unk_2783BF428;
    v23 = v9;
    [v8 updateZOrderLevelPreferencesWithBlock:v22];
  }

  if (v10 || v14)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__SBTraitsWindowParticipantDelegate_updatePreferencesForParticipant_updater___block_invoke_2;
    v15[3] = &unk_2783BF450;
    v19 = v14;
    v16 = v10;
    v17 = self;
    v18 = v6;
    v20 = v11;
    v21 = v13;
    [v8 updateOrientationPreferencesWithBlock:v15];
  }

  [(NSMutableDictionary *)self->_tempLastPreferredZOrder removeObjectForKey:v6];
  [(NSMutableDictionary *)self->_tempLastSupportedOrientations removeObjectForKey:v6];
  [(NSMutableArray *)self->_tempOwningWindowVisible removeObject:v6];
  [(NSMutableArray *)self->_tempOwningWindowHidden removeObject:v6];
}

void __77__SBTraitsWindowParticipantDelegate_updatePreferencesForParticipant_updater___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 doubleValue];
  [v3 setPreferredZOrderLevel:?];
}

void __77__SBTraitsWindowParticipantDelegate_updatePreferencesForParticipant_updater___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  if (v4)
  {
    [v3 setSupportedOrientations:{objc_msgSend(v4, "unsignedIntValue")}];
  }

  if (*(a1 + 56) == 1)
  {
    v5 = [objc_opt_class() _activeOrientationDeterminingParticipantRoles];
    v6 = [*(a1 + 48) role];
    v7 = [v5 containsObject:v6];

    if (v7 && *(a1 + 57) == 1)
    {
      v8 = *(a1 + 58) ^ 1;
    }

    else
    {
      v8 = 0;
    }

    [v9 setCanDetermineActiveOrientation:v8 & 1];
  }
}

- (void)validateSettingsForParticipant:(id)a3 validator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBTraitsWindowParticipantDelegate validateSettingsForParticipant:validator:];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SBTraitsWindowParticipantDelegate validateSettingsForParticipant:validator:];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SBTraitsWindowParticipantDelegate_validateSettingsForParticipant_validator___block_invoke;
  v9[3] = &unk_2783BF478;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 validateOrientationSettingsWithBlock:v9];
}

uint64_t __78__SBTraitsWindowParticipantDelegate_validateSettingsForParticipant_validator___block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (([*(*(a1 + 32) + 8) containsObject:v5] & 1) != 0 || (objc_msgSend(*(a1 + 40), "role"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"SBTraitsParticipantRoleBanner"), v6, v7))
  {
    *a3 = 0;
    v8 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) _validationFailureReasonForWindow:v5];
    *a3 = v9;

    v8 = 0;
  }

  v10 = SBLogTraitsArbiter();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 40) uniqueIdentifier];
    v12 = *a3;
    v14 = 134218754;
    v15 = v5;
    v16 = 2114;
    v17 = v11;
    v18 = 1024;
    v19 = v8;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Window(%p)(%{public}@) validates resolution: %{BOOL}u. %{public}@", &v14, 0x26u);
  }

  return v8;
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [SBTraitsWindowParticipantDelegate didChangeSettingsForParticipant:context:];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:
    [SBTraitsWindowParticipantDelegate didChangeSettingsForParticipant:context:];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = [v6 currentSettings];
  v9 = [v8 orientationSettings];

  if (v9)
  {
    v10 = [v6 role];
    v11 = SBTraitsArbiterOrientationActuationEnabledForRole(v10);

    if (v11)
    {
      v12 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:v6];
      v13 = [v9 orientation];
      if ([v12 interfaceOrientation] != v13)
      {
        v14 = [v7 orientationActuationContext];
        v15 = [v14 animationSettings];
        [v15 duration];
        v17 = v16;

        if ([(SBTraitsWindowParticipantDelegate *)self _isWindowContentVisible:v12])
        {
          v18 = v17;
        }

        else
        {
          v18 = 0.0;
        }

        v19 = SBLogTraitsArbiter();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v6 uniqueIdentifier];
          v21 = SBFStringForBSInterfaceOrientation();
          v34 = 134219010;
          v35 = v12;
          v36 = 2114;
          v37 = v20;
          v38 = 2112;
          v39 = v21;
          v40 = 2048;
          v41 = v17;
          v42 = 2048;
          v43 = v18;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Window(%p)(%{public}@) rotated(%@) with contextProvidedDuration(%.1f) resolvedDuration(%.1f)", &v34, 0x34u);
        }

        [MEMORY[0x277D75DA0] _synchronizeDrawing];
        v22 = [v9 orientationMapResolver];
        [v12 _setInterfaceOrientationMapResolver:v22];

        [v12 _legacySetRotatableViewOrientation:v13 updateStatusBar:1 duration:0 force:v18];
      }
    }
  }

  [v6 currentAmbientPresentedFlag];
  IsYes = BSSettingFlagIsYes();
  [v6 previousAmbientPresentedFlag];
  if (IsYes != BSSettingFlagIsYes())
  {
    [v6 currentAmbientPresentedFlag];
    v24 = BSSettingFlagIsYes();
    v25 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:v6];
    v26 = [v25 traitOverrides];
    if (v24)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v28 = objc_opt_self();
    [v26 setNSIntegerValue:v27 forTrait:v28];
  }

  v29 = [v6 currentAmbientDisplayStyle];
  if (v29 != [v6 previousAmbientDisplayStyle])
  {
    v30 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:v6];
    v31 = SBAmbientDisplayStyleForTraitsDisplayStyle([v6 currentAmbientDisplayStyle]);
    v32 = [v30 traitOverrides];
    v33 = objc_opt_self();
    [v32 setNSIntegerValue:v31 forTrait:v33];
  }
}

- (void)participantWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBTraitsWindowParticipantDelegate participantWillInvalidate:];
    v4 = 0;
  }

  [(NSMapTable *)self->_participantOwningWindowMapTable removeObjectForKey:v4];
  [(NSMutableDictionary *)self->_tempLastPreferredZOrder removeObjectForKey:v5];
  [(NSMutableDictionary *)self->_tempLastSupportedOrientations removeObjectForKey:v5];
  [(NSMutableArray *)self->_tempOwningWindowVisible removeObject:v5];
  [(NSMutableArray *)self->_tempOwningWindowHidden removeObject:v5];
}

- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__SBTraitsWindowParticipantDelegate_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke;
  v12[3] = &unk_2783A8ED8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [v10 appendBodySectionWithName:@"Associated Windows" multilinePrefix:a5 block:v12];
}

void __97__SBTraitsWindowParticipantDelegate_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) participantAssociatedWindows:*(a1 + 40)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v1 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v1)
  {
    v2 = v1;
    v15 = *v18;
    do
    {
      v3 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v17 + 1) + 8 * v3);
        v5 = *(a1 + 48);
        v6 = MEMORY[0x277CCACA8];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v4 _debugName];
        if ([v4 isHidden])
        {
          v10 = @"NO";
        }

        else
        {
          v10 = @"YES";
        }

        [v4 interfaceOrientation];
        v11 = BSInterfaceOrientationDescription();
        v12 = [v4 rootViewController];
        v13 = [v6 stringWithFormat:@"<%@: %p %@>; Visible:%@; Orientation:%@; Root VC: %@", v8, v4, v9, v10, v11, v12];;
        [v5 appendString:v13 withName:0];

        ++v3;
      }

      while (v2 != v3);
      v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v2);
  }
}

- (id)participantAssociatedWindows:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [SBTraitsWindowParticipantDelegate participantAssociatedWindows:];
  }

  v5 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)participantAssociatedSceneIdentityTokens:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBTraitsWindowParticipantDelegate participantAssociatedSceneIdentityTokens:];
  }

  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:v4];
  v7 = objc_opt_class();
  v8 = SBSafeCast(v7, v6);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 hostedSceneIdentityTokens];
    [v5 addObjectsFromArray:v10];
  }

  if ([SBSpotlightMultiplexingViewController isShownWithinWindow:v6])
  {
    v11 = +[SBSpotlightMultiplexingViewController spotlightSceneIdentityTokenIfActiveForeground];
    if (v11)
    {
      [v5 addObject:v11];
    }
  }

  if ([v5 count])
  {
    v12 = [v5 allObjects];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)_validatedSupportedInterfaceOrientations:(unint64_t)a3 forWindow:(id)a4
{
  if (a3)
  {
    return a3;
  }

  [a4 interfaceOrientation];

  return XBInterfaceOrientationMaskForInterfaceOrientation();
}

- (BOOL)_isWindowContentVisible:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v5 = SBSafeCast(v4, v3);

  if (v5)
  {
    v6 = [v5 isContentHidden] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)_autorotationPreventionReasons:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v5 = SBSafeCast(v4, v3);

  if (v5)
  {
    v6 = [v5 autorotationPreventionReasons];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_validationFailureReasonForWindow:(id)a3
{
  if ([(NSHashTable *)self->_visibleWindows containsObject:a3])
  {
    return 0;
  }

  else
  {
    return @"isHidden";
  }
}

- (void)setParticipant:ownedByWindow:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"window != nil" object:? file:? lineNumber:? description:?];
}

- (void)setParticipant:ownedByWindow:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)windowWillBecomeVisible:ownedParticipant:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"window != nil" object:? file:? lineNumber:? description:?];
}

- (void)windowWillBecomeVisible:ownedParticipant:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)windowWillBecomeHidden:ownedParticipant:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"window != nil" object:? file:? lineNumber:? description:?];
}

- (void)windowWillBecomeHidden:ownedParticipant:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)windowDidUpdatePreferredWindowLevel:ownedParticipant:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)windowDidUpdateSupportedOrientations:ownedParticipant:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)updatePreferencesForParticipant:updater:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)updatePreferencesForParticipant:updater:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"updater != nil" object:? file:? lineNumber:? description:?];
}

- (void)validateSettingsForParticipant:validator:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"validator != nil" object:? file:? lineNumber:? description:?];
}

- (void)validateSettingsForParticipant:validator:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)didChangeSettingsForParticipant:context:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

- (void)didChangeSettingsForParticipant:context:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant" object:? file:? lineNumber:? description:?];
}

- (void)participantWillInvalidate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)participantAssociatedWindows:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant != nil" object:? file:? lineNumber:? description:?];
}

- (void)participantAssociatedSceneIdentityTokens:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"participant" object:? file:? lineNumber:? description:?];
}

@end