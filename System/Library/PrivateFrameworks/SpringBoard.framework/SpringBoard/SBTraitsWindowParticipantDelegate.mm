@interface SBTraitsWindowParticipantDelegate
+ (id)_activeOrientationDeterminingParticipantRoles;
- (BOOL)_isWindowContentVisible:(id)visible;
- (SBTraitsWindowParticipantDelegate)init;
- (id)_autorotationPreventionReasons:(id)reasons;
- (id)_validationFailureReasonForWindow:(id)window;
- (id)participantAssociatedSceneIdentityTokens:(id)tokens;
- (id)participantAssociatedWindows:(id)windows;
- (unint64_t)_validatedSupportedInterfaceOrientations:(unint64_t)orientations forWindow:(id)window;
- (void)appendDescriptionForParticipant:(id)participant withBuilder:(id)builder multilinePrefix:(id)prefix;
- (void)didChangeSettingsForParticipant:(id)participant context:(id)context;
- (void)participantWillInvalidate:(id)invalidate;
- (void)setParticipant:(id)participant ownedByWindow:(id)window;
- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater;
- (void)validateSettingsForParticipant:(id)participant validator:(id)validator;
- (void)windowDidUpdatePreferredWindowLevel:(double)level ownedParticipant:(id)participant;
- (void)windowDidUpdateSupportedOrientations:(unint64_t)orientations ownedParticipant:(id)participant;
- (void)windowWillBecomeHidden:(id)hidden ownedParticipant:(id)participant;
- (void)windowWillBecomeVisible:(id)visible ownedParticipant:(id)participant;
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
    array = [MEMORY[0x277CBEB18] array];
    tempOwningWindowHidden = v2->_tempOwningWindowHidden;
    v2->_tempOwningWindowHidden = array;

    array2 = [MEMORY[0x277CBEB18] array];
    tempOwningWindowVisible = v2->_tempOwningWindowVisible;
    v2->_tempOwningWindowVisible = array2;

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

- (void)setParticipant:(id)participant ownedByWindow:(id)window
{
  participantCopy = participant;
  windowCopy = window;
  if (!windowCopy)
  {
    [SBTraitsWindowParticipantDelegate setParticipant:ownedByWindow:];
  }

  v8 = participantCopy;
  if (!participantCopy)
  {
    [SBTraitsWindowParticipantDelegate setParticipant:ownedByWindow:];
    v8 = 0;
  }

  v9 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:v8];
  if (v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBTraitsWindowParticipantDelegate.m" lineNumber:70 description:{@"Participant(%@) cannot be owned by window(%@), since it's already owned by other window(%@)", participantCopy, v9, windowCopy}];
  }

  [(NSMapTable *)self->_participantOwningWindowMapTable setObject:windowCopy forKey:participantCopy];
  v11 = -[SBTraitsWindowParticipantDelegate _validatedSupportedInterfaceOrientations:forWindow:](self, "_validatedSupportedInterfaceOrientations:forWindow:", [windowCopy _supportedInterfaceOrientationsForRootViewController], windowCopy);
  tempLastPreferredZOrder = self->_tempLastPreferredZOrder;
  v13 = MEMORY[0x277CCABB0];
  [windowCopy windowLevel];
  v14 = [v13 numberWithDouble:?];
  [(NSMutableDictionary *)tempLastPreferredZOrder setObject:v14 forKey:participantCopy];

  tempLastSupportedOrientations = self->_tempLastSupportedOrientations;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [(NSMutableDictionary *)tempLastSupportedOrientations setObject:v16 forKey:participantCopy];

  isHidden = [windowCopy isHidden];
  v18 = 32;
  if (isHidden)
  {
    v18 = 24;
  }

  [*(&self->super.isa + v18) addObject:participantCopy];
}

- (void)windowWillBecomeVisible:(id)visible ownedParticipant:(id)participant
{
  visibleCopy = visible;
  participantCopy = participant;
  if (visibleCopy)
  {
    if (participantCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBTraitsWindowParticipantDelegate windowWillBecomeVisible:ownedParticipant:];
    if (participantCopy)
    {
      goto LABEL_3;
    }
  }

  [SBTraitsWindowParticipantDelegate windowWillBecomeVisible:ownedParticipant:];
LABEL_3:
  [(NSHashTable *)self->_visibleWindows addObject:visibleCopy];
  [(NSMutableArray *)self->_tempOwningWindowHidden removeObject:participantCopy];
  [(NSMutableArray *)self->_tempOwningWindowVisible addObject:participantCopy];
}

- (void)windowWillBecomeHidden:(id)hidden ownedParticipant:(id)participant
{
  hiddenCopy = hidden;
  participantCopy = participant;
  if (hiddenCopy)
  {
    if (participantCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBTraitsWindowParticipantDelegate windowWillBecomeHidden:ownedParticipant:];
    if (participantCopy)
    {
      goto LABEL_3;
    }
  }

  [SBTraitsWindowParticipantDelegate windowWillBecomeHidden:ownedParticipant:];
LABEL_3:
  [(NSHashTable *)self->_visibleWindows removeObject:hiddenCopy];
  [(NSMutableArray *)self->_tempOwningWindowHidden addObject:participantCopy];
  [(NSMutableArray *)self->_tempOwningWindowVisible removeObject:participantCopy];
}

- (void)windowDidUpdatePreferredWindowLevel:(double)level ownedParticipant:(id)participant
{
  participantCopy = participant;
  if (!participantCopy)
  {
    [SBTraitsWindowParticipantDelegate windowDidUpdatePreferredWindowLevel:ownedParticipant:];
  }

  tempLastPreferredZOrder = self->_tempLastPreferredZOrder;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:level];
  [(NSMutableDictionary *)tempLastPreferredZOrder setObject:v7 forKey:participantCopy];
}

- (void)windowDidUpdateSupportedOrientations:(unint64_t)orientations ownedParticipant:(id)participant
{
  participantCopy = participant;
  if (!participantCopy)
  {
    [SBTraitsWindowParticipantDelegate windowDidUpdateSupportedOrientations:ownedParticipant:];
  }

  tempLastSupportedOrientations = self->_tempLastSupportedOrientations;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:orientations];
  [(NSMutableDictionary *)tempLastSupportedOrientations setObject:v7 forKey:participantCopy];
}

- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater
{
  participantCopy = participant;
  updaterCopy = updater;
  v8 = updaterCopy;
  if (participantCopy)
  {
    if (updaterCopy)
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
  v9 = [(NSMutableDictionary *)self->_tempLastPreferredZOrder objectForKey:participantCopy];
  v10 = [(NSMutableDictionary *)self->_tempLastSupportedOrientations objectForKey:participantCopy];
  v11 = [(NSMutableArray *)self->_tempOwningWindowVisible containsObject:participantCopy];
  v12 = [(NSMutableArray *)self->_tempOwningWindowHidden containsObject:participantCopy];
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
    selfCopy = self;
    v18 = participantCopy;
    v20 = v11;
    v21 = v13;
    [v8 updateOrientationPreferencesWithBlock:v15];
  }

  [(NSMutableDictionary *)self->_tempLastPreferredZOrder removeObjectForKey:participantCopy];
  [(NSMutableDictionary *)self->_tempLastSupportedOrientations removeObjectForKey:participantCopy];
  [(NSMutableArray *)self->_tempOwningWindowVisible removeObject:participantCopy];
  [(NSMutableArray *)self->_tempOwningWindowHidden removeObject:participantCopy];
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

- (void)validateSettingsForParticipant:(id)participant validator:(id)validator
{
  participantCopy = participant;
  validatorCopy = validator;
  if (!validatorCopy)
  {
    [SBTraitsWindowParticipantDelegate validateSettingsForParticipant:validator:];
    if (participantCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [SBTraitsWindowParticipantDelegate validateSettingsForParticipant:validator:];
    goto LABEL_3;
  }

  if (!participantCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SBTraitsWindowParticipantDelegate_validateSettingsForParticipant_validator___block_invoke;
  v9[3] = &unk_2783BF478;
  v9[4] = self;
  v10 = participantCopy;
  v8 = participantCopy;
  [validatorCopy validateOrientationSettingsWithBlock:v9];
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

- (void)didChangeSettingsForParticipant:(id)participant context:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  contextCopy = context;
  if (!contextCopy)
  {
    [SBTraitsWindowParticipantDelegate didChangeSettingsForParticipant:context:];
    if (participantCopy)
    {
      goto LABEL_3;
    }

LABEL_22:
    [SBTraitsWindowParticipantDelegate didChangeSettingsForParticipant:context:];
    goto LABEL_3;
  }

  if (!participantCopy)
  {
    goto LABEL_22;
  }

LABEL_3:
  currentSettings = [participantCopy currentSettings];
  orientationSettings = [currentSettings orientationSettings];

  if (orientationSettings)
  {
    role = [participantCopy role];
    v11 = SBTraitsArbiterOrientationActuationEnabledForRole(role);

    if (v11)
    {
      v12 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:participantCopy];
      orientation = [orientationSettings orientation];
      if ([v12 interfaceOrientation] != orientation)
      {
        orientationActuationContext = [contextCopy orientationActuationContext];
        animationSettings = [orientationActuationContext animationSettings];
        [animationSettings duration];
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
          uniqueIdentifier = [participantCopy uniqueIdentifier];
          v21 = SBFStringForBSInterfaceOrientation();
          v34 = 134219010;
          v35 = v12;
          v36 = 2114;
          v37 = uniqueIdentifier;
          v38 = 2112;
          v39 = v21;
          v40 = 2048;
          v41 = v17;
          v42 = 2048;
          v43 = v18;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Window(%p)(%{public}@) rotated(%@) with contextProvidedDuration(%.1f) resolvedDuration(%.1f)", &v34, 0x34u);
        }

        [MEMORY[0x277D75DA0] _synchronizeDrawing];
        orientationMapResolver = [orientationSettings orientationMapResolver];
        [v12 _setInterfaceOrientationMapResolver:orientationMapResolver];

        [v12 _legacySetRotatableViewOrientation:orientation updateStatusBar:1 duration:0 force:v18];
      }
    }
  }

  [participantCopy currentAmbientPresentedFlag];
  IsYes = BSSettingFlagIsYes();
  [participantCopy previousAmbientPresentedFlag];
  if (IsYes != BSSettingFlagIsYes())
  {
    [participantCopy currentAmbientPresentedFlag];
    v24 = BSSettingFlagIsYes();
    v25 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:participantCopy];
    traitOverrides = [v25 traitOverrides];
    if (v24)
    {
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    v28 = objc_opt_self();
    [traitOverrides setNSIntegerValue:v27 forTrait:v28];
  }

  currentAmbientDisplayStyle = [participantCopy currentAmbientDisplayStyle];
  if (currentAmbientDisplayStyle != [participantCopy previousAmbientDisplayStyle])
  {
    v30 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:participantCopy];
    v31 = SBAmbientDisplayStyleForTraitsDisplayStyle([participantCopy currentAmbientDisplayStyle]);
    traitOverrides2 = [v30 traitOverrides];
    v33 = objc_opt_self();
    [traitOverrides2 setNSIntegerValue:v31 forTrait:v33];
  }
}

- (void)participantWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = invalidateCopy;
  if (!invalidateCopy)
  {
    [SBTraitsWindowParticipantDelegate participantWillInvalidate:];
    invalidateCopy = 0;
  }

  [(NSMapTable *)self->_participantOwningWindowMapTable removeObjectForKey:invalidateCopy];
  [(NSMutableDictionary *)self->_tempLastPreferredZOrder removeObjectForKey:v5];
  [(NSMutableDictionary *)self->_tempLastSupportedOrientations removeObjectForKey:v5];
  [(NSMutableArray *)self->_tempOwningWindowVisible removeObject:v5];
  [(NSMutableArray *)self->_tempOwningWindowHidden removeObject:v5];
}

- (void)appendDescriptionForParticipant:(id)participant withBuilder:(id)builder multilinePrefix:(id)prefix
{
  participantCopy = participant;
  builderCopy = builder;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __97__SBTraitsWindowParticipantDelegate_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke;
  v12[3] = &unk_2783A8ED8;
  v12[4] = self;
  v13 = participantCopy;
  v14 = builderCopy;
  v10 = builderCopy;
  v11 = participantCopy;
  [v10 appendBodySectionWithName:@"Associated Windows" multilinePrefix:prefix block:v12];
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

- (id)participantAssociatedWindows:(id)windows
{
  v9[1] = *MEMORY[0x277D85DE8];
  windowsCopy = windows;
  if (!windowsCopy)
  {
    [SBTraitsWindowParticipantDelegate participantAssociatedWindows:];
  }

  v5 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:windowsCopy];
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

- (id)participantAssociatedSceneIdentityTokens:(id)tokens
{
  tokensCopy = tokens;
  if (!tokensCopy)
  {
    [SBTraitsWindowParticipantDelegate participantAssociatedSceneIdentityTokens:];
  }

  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(NSMapTable *)self->_participantOwningWindowMapTable objectForKey:tokensCopy];
  v7 = objc_opt_class();
  v8 = SBSafeCast(v7, v6);
  v9 = v8;
  if (v8)
  {
    hostedSceneIdentityTokens = [v8 hostedSceneIdentityTokens];
    [v5 addObjectsFromArray:hostedSceneIdentityTokens];
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
    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (unint64_t)_validatedSupportedInterfaceOrientations:(unint64_t)orientations forWindow:(id)window
{
  if (orientations)
  {
    return orientations;
  }

  [window interfaceOrientation];

  return XBInterfaceOrientationMaskForInterfaceOrientation();
}

- (BOOL)_isWindowContentVisible:(id)visible
{
  visibleCopy = visible;
  v4 = objc_opt_self();
  v5 = SBSafeCast(v4, visibleCopy);

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

- (id)_autorotationPreventionReasons:(id)reasons
{
  reasonsCopy = reasons;
  v4 = objc_opt_self();
  v5 = SBSafeCast(v4, reasonsCopy);

  if (v5)
  {
    autorotationPreventionReasons = [v5 autorotationPreventionReasons];
  }

  else
  {
    autorotationPreventionReasons = 0;
  }

  return autorotationPreventionReasons;
}

- (id)_validationFailureReasonForWindow:(id)window
{
  if ([(NSHashTable *)self->_visibleWindows containsObject:window])
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