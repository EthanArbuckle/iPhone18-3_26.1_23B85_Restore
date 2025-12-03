@interface SBSwitcherTraitsAssistant
- (BOOL)_isContentContainerAspectRatioPortrait;
- (BOOL)_updateGuidingSpecifiersIfNeededForParticipants:(id)participants sceneHandleProviderBlock:(id)block;
- (SBSwitcherTraitsAssistant)initWithTraitsArbiter:(id)arbiter switcherParticipant:(id)participant delegate:(id)delegate;
- (SBSwitcherTraitsAssistantDelegate)delegate;
- (TRAArbiter)traitsArbiter;
- (TRAParticipant)switcherParticipant;
- (id)_guidingLandscapeOnlyLiveOverlay;
- (id)_guidingPortraitOnlyLiveOverlay;
- (id)_guidingSceneOrientationRequestParticipantWithMask:(unint64_t)mask;
- (id)_stateCaptureDescription;
- (void)_addGuidingParticipantsIdentifiersToArray:(id)array;
- (void)_addGuidingSpecifierIfNeeded;
- (void)_evaluateIfGuidingSpecifierIsSillNeeded;
- (void)_handleOrientationLockRequest:(id)request;
- (void)_handleUpdateRequest:(id)request;
- (void)_setupGuidingRelationshipIfNeededForParticipant:(id)participant withSceneHandle:(id)handle;
- (void)_setupPolicySpecifierIfNeeded;
- (void)_setupStateCapture;
- (void)_updateAcquiredParticipantsPolicies:(id)policies;
- (void)_updateArbitrationForElementsParticipants:(id)participants sceneHandleProviderBlock:(id)block forceResolution:(BOOL)resolution reason:(id)reason;
- (void)createTraitsParticipantsForLayoutElements:(id)elements outParticipantsByElementIdentifier:(id *)identifier outDelegatesByParticipant:(id *)participant outPrimaryDelegate:(id *)delegate;
- (void)dealloc;
- (void)updateAllParticipants:(id)participants withPrimaryDelegate:(id)delegate nonPrimaryPolicy:(int64_t)policy primaryPolicy:(int64_t)primaryPolicy ownPolicy:(int64_t)ownPolicy;
- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater;
@end

@implementation SBSwitcherTraitsAssistant

- (void)_addGuidingSpecifierIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsArbiter);
  if (WeakRetained && !self->_blockBasedPolicySpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [SBTraitsPipelineBlockBasedPolicySpecifier alloc];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__SBSwitcherTraitsAssistant__addGuidingSpecifierIfNeeded__block_invoke;
    v7[3] = &unk_2783B0DE8;
    objc_copyWeak(&v8, &location);
    v5 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)v4 initWithPolicySpecifierBlock:v7 specifierDescription:@"Switcher Traits Assistant" componentOrder:&unk_283370838 arbiter:WeakRetained];
    blockBasedPolicySpecifier = self->_blockBasedPolicySpecifier;
    self->_blockBasedPolicySpecifier = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_evaluateIfGuidingSpecifierIsSillNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(NSMutableDictionary *)self->_participantUniqueIDToAssociatedParticipantMap count])
  {
    blockBasedPolicySpecifier = self->_blockBasedPolicySpecifier;
    if (blockBasedPolicySpecifier)
    {
      [(SBTraitsPipelineBlockBasedPolicySpecifier *)blockBasedPolicySpecifier invalidate];
      [(TRAParticipant *)self->_guidingPortraitOnlyParticipant invalidate];
      [(TRAParticipant *)self->_guidingLandscapeOnlyParticipant invalidate];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      allValues = [(NSMutableDictionary *)self->_guidingSceneOrientationRequestParticipantsMap allValues];
      v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(allValues);
            }

            [*(*(&v13 + 1) + 8 * v8++) invalidate];
          }

          while (v6 != v8);
          v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }

      v9 = self->_blockBasedPolicySpecifier;
      self->_blockBasedPolicySpecifier = 0;

      guidingPortraitOnlyParticipant = self->_guidingPortraitOnlyParticipant;
      self->_guidingPortraitOnlyParticipant = 0;

      guidingLandscapeOnlyParticipant = self->_guidingLandscapeOnlyParticipant;
      self->_guidingLandscapeOnlyParticipant = 0;

      guidingSceneOrientationRequestParticipantsMap = self->_guidingSceneOrientationRequestParticipantsMap;
      self->_guidingSceneOrientationRequestParticipantsMap = 0;
    }
  }
}

void __57__SBSwitcherTraitsAssistant__addGuidingSpecifierIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAcquiredParticipantsPolicies:v3];
}

- (SBSwitcherTraitsAssistant)initWithTraitsArbiter:(id)arbiter switcherParticipant:(id)participant delegate:(id)delegate
{
  arbiterCopy = arbiter;
  participantCopy = participant;
  delegateCopy = delegate;
  v29.receiver = self;
  v29.super_class = SBSwitcherTraitsAssistant;
  v11 = [(SBSwitcherTraitsAssistant *)&v29 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeWeak(&v12->_traitsArbiter, arbiterCopy);
    objc_storeWeak(&v12->_switcherParticipant, participantCopy);
    v13 = [SBTraitsSwitcherPolicySpecifier alloc];
    v14 = MEMORY[0x277CCABB0];
    [participantCopy currentZOrderLevel];
    v15 = [v14 numberWithDouble:?];
    v16 = [(SBTraitsSwitcherPolicySpecifier *)v13 initWithComponentOrder:v15 arbiter:arbiterCopy];
    switcherPolicySpecifier = v12->_switcherPolicySpecifier;
    v12->_switcherPolicySpecifier = v16;

    v18 = [SBTraitsSwitcherLiveOverlayPolicySpecifier alloc];
    v19 = MEMORY[0x277CCABB0];
    [participantCopy currentZOrderLevel];
    v20 = [v19 numberWithDouble:?];
    v21 = [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)v18 initWithComponentOrder:v20 arbiter:arbiterCopy];
    liveOverlaysPolicySpecifier = v12->_liveOverlaysPolicySpecifier;
    v12->_liveOverlaysPolicySpecifier = v21;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    participantUniqueIDToAssociatedParticipantMap = v12->_participantUniqueIDToAssociatedParticipantMap;
    v12->_participantUniqueIDToAssociatedParticipantMap = dictionary;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__handleUpdateRequest_ name:@"SBClassicPhoneSceneOrientationPreferenceChanged" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel__handleUpdateRequest_ name:@"SBSceneGeometryOrientationRequestedNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v12 selector:sel__handleOrientationLockRequest_ name:@"SBSceneOrientationLockRequestedNotification" object:0];

    [(SBSwitcherTraitsAssistant *)v12 _setupStateCapture];
  }

  return v12;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBTraitsPipelineBlockBasedPolicySpecifier *)self->_blockBasedPolicySpecifier invalidate];
  [(SBAbstractTraitsSwitcherPolicySpecifier *)self->_switcherPolicySpecifier invalidate];
  [(SBAbstractTraitsSwitcherPolicySpecifier *)self->_liveOverlaysPolicySpecifier invalidate];
  v4.receiver = self;
  v4.super_class = SBSwitcherTraitsAssistant;
  [(SBSwitcherTraitsAssistant *)&v4 dealloc];
}

- (void)_setupStateCapture
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  stateCaptureTitlePreamble = [WeakRetained stateCaptureTitlePreamble];
  v6 = [v3 stringWithFormat:@"%@ - SBSwitcherTraitsAssistant", stateCaptureTitlePreamble];

  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85CD0];
  objc_copyWeak(&v10, &location);
  v8 = BSLogAddStateCaptureBlockWithTitle();
  stateCaptureInvalidatable = self->_stateCaptureInvalidatable;
  self->_stateCaptureInvalidatable = v8;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __47__SBSwitcherTraitsAssistant__setupStateCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateCaptureDescription];

  return v2;
}

- (id)_stateCaptureDescription
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = @"Switcher orientation policy";
  v3 = SBStringFromSwitcherOrientationPolicy([(SBTraitsSwitcherPolicySpecifier *)self->_switcherPolicySpecifier resolutionPolicy]);
  v14[0] = v3;
  v13[1] = @"Switcher live overlays orientation policy";
  v4 = SBStringFromSwitcherLiveOverlayOrientationPolicy([(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self->_liveOverlaysPolicySpecifier primaryElementResolutionPolicy]);
  guidingSceneOrientationRequestParticipantsMap = self->_guidingSceneOrientationRequestParticipantsMap;
  participantUniqueIDToAssociatedParticipantMap = self->_participantUniqueIDToAssociatedParticipantMap;
  v14[1] = v4;
  v14[2] = participantUniqueIDToAssociatedParticipantMap;
  v13[2] = @"Participants UniqueID association to guiding ones";
  v13[3] = @"Guiding Landscape participant";
  v7 = @"None";
  guidingPortraitOnlyParticipant = self->_guidingPortraitOnlyParticipant;
  guidingLandscapeOnlyParticipant = self->_guidingLandscapeOnlyParticipant;
  if (!guidingLandscapeOnlyParticipant)
  {
    guidingLandscapeOnlyParticipant = @"None";
  }

  if (!guidingPortraitOnlyParticipant)
  {
    guidingPortraitOnlyParticipant = @"None";
  }

  v14[3] = guidingLandscapeOnlyParticipant;
  v14[4] = guidingPortraitOnlyParticipant;
  v13[4] = @"Guiding Portrait participant";
  v13[5] = @"Guiding Scene Geometry Orientation Request participants";
  if (guidingSceneOrientationRequestParticipantsMap)
  {
    v7 = guidingSceneOrientationRequestParticipantsMap;
  }

  v14[5] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v11 = [v10 description];

  return v11;
}

- (void)createTraitsParticipantsForLayoutElements:(id)elements outParticipantsByElementIdentifier:(id *)identifier outDelegatesByParticipant:(id *)participant outPrimaryDelegate:(id *)delegate
{
  v39 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  participantCopy = participant;
  identifierCopy = identifier;
  *identifier = 0;
  *participant = 0;
  v10 = [elementsCopy count];
  if (v10)
  {
    v11 = v10;
    v23 = elementsCopy;
    *identifier = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
    *participantCopy = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v11];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = elementsCopy;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v26 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          layoutRole = [v14 layoutRole];
          WeakRetained = objc_loadWeakRetained(&self->_traitsArbiter);
          uniqueIdentifier = [v14 uniqueIdentifier];
          v18 = objc_loadWeakRetained(&self->_delegate);
          v19 = [v18 sceneHandleForLayoutElement:v14];

          v20 = [[SBTraitsSceneParticipantDelegate alloc] initWithSceneHandle:v19];
          v21 = [WeakRetained acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherLiveOverlay" delegate:v20];
          [(SBTraitsSceneParticipantDelegate *)v20 setArbiter:WeakRetained];
          [(SBTraitsSceneParticipantDelegate *)v20 setParticipant:v21];
          [(SBTraitsSceneParticipantDelegate *)v20 setOrientationActuationEnabled:0];
          objc_initWeak(&location, self);
          objc_initWeak(&from, v20);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __151__SBSwitcherTraitsAssistant_createTraitsParticipantsForLayoutElements_outParticipantsByElementIdentifier_outDelegatesByParticipant_outPrimaryDelegate___block_invoke;
          v29[3] = &unk_2783B0D50;
          objc_copyWeak(&v30, &location);
          objc_copyWeak(&v31, &from);
          v29[4] = self;
          [(SBTraitsSceneParticipantDelegate *)v20 setActuateOrientationAlongsideBlock:v29];
          [*identifierCopy setObject:v21 forKey:uniqueIdentifier];
          [*participantCopy setObject:v20 forKey:v21];
          if (layoutRole == 1)
          {
            v22 = v20;
            *delegate = v20;
          }

          objc_destroyWeak(&v31);
          objc_destroyWeak(&v30);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    elementsCopy = v23;
  }
}

void __151__SBSwitcherTraitsAssistant_createTraitsParticipantsForLayoutElements_outParticipantsByElementIdentifier_outDelegatesByParticipant_outPrimaryDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = v6;
  if (WeakRetained && v6)
  {
    if ((a3 & 2) != 0)
    {
      if ((a3 & 1) == 0 || [v6 needsActuationForUpdateReasons:a3])
      {
        v8 = objc_loadWeakRetained((*(a1 + 32) + 88));
        [v8 actuateOrientationForTraitsDelegate:v7 withContext:v9 reasons:a3];
      }
    }

    else
    {
      [v6 actuateOrientationSettingsWithContext:0];
    }
  }
}

- (void)updateAllParticipants:(id)participants withPrimaryDelegate:(id)delegate nonPrimaryPolicy:(int64_t)policy primaryPolicy:(int64_t)primaryPolicy ownPolicy:(int64_t)ownPolicy
{
  v43 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  delegateCopy = delegate;
  primaryElementResolutionPolicy = [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self->_liveOverlaysPolicySpecifier primaryElementResolutionPolicy];
  primaryElementResolutionPolicy2 = [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self->_liveOverlaysPolicySpecifier primaryElementResolutionPolicy];
  resolutionPolicy = [(SBTraitsSwitcherPolicySpecifier *)self->_switcherPolicySpecifier resolutionPolicy];
  v19 = primaryElementResolutionPolicy != primaryPolicy || primaryElementResolutionPolicy2 != policy || resolutionPolicy != ownPolicy;
  participant = [delegateCopy participant];
  uniqueIdentifier = [participant uniqueIdentifier];

  [(SBTraitsSwitcherPolicySpecifier *)self->_switcherPolicySpecifier setResolutionPolicy:ownPolicy];
  [(SBTraitsSwitcherPolicySpecifier *)self->_switcherPolicySpecifier setPrimaryElementParticipantIdentifier:uniqueIdentifier];
  [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self->_liveOverlaysPolicySpecifier setPrimaryElementResolutionPolicy:primaryPolicy];
  [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self->_liveOverlaysPolicySpecifier setPrimaryElementParticipantIdentifier:uniqueIdentifier];
  [(SBTraitsSwitcherLiveOverlayPolicySpecifier *)self->_liveOverlaysPolicySpecifier setNonPrimaryResolutionPolicy:policy];
  allKeys = [participantsCopy allKeys];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __112__SBSwitcherTraitsAssistant_updateAllParticipants_withPrimaryDelegate_nonPrimaryPolicy_primaryPolicy_ownPolicy___block_invoke;
  v36[3] = &unk_2783B0D78;
  v23 = participantsCopy;
  v37 = v23;
  [(SBSwitcherTraitsAssistant *)self _updateArbitrationForElementsParticipants:allKeys sceneHandleProviderBlock:v36 forceResolution:v19 reason:@"Layout State update"];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  allValues = [v23 allValues];
  v25 = [allValues countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    do
    {
      v28 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v32 + 1) + 8 * v28++) updateOrientationLockGrantedIfNeeded:ownPolicy == 5];
      }

      while (v26 != v28);
      v26 = [allValues countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v26);
  }

  v29 = SBLogCommon();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = SBStringFromSwitcherOrientationPolicy(ownPolicy);
    v31 = SBStringFromSwitcherLiveOverlayOrientationPolicy(policy);
    *buf = 138412546;
    v39 = v30;
    v40 = 2112;
    v41 = v31;
    _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "[SwitcherOrientation] _updateParticipantsAndPoliciesWithSwitcherPolicy:[%@] nonPrimaryOverlayPolicy:[%@]", buf, 0x16u);
  }
}

id __112__SBSwitcherTraitsAssistant_updateAllParticipants_withPrimaryDelegate_nonPrimaryPolicy_primaryPolicy_ownPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) objectForKey:v3];

  v6 = [v5 sceneHandle];
  v7 = SBSafeCast(v4, v6);

  return v7;
}

- (void)updatePreferencesForParticipant:(id)participant updater:(id)updater
{
  v24 = *MEMORY[0x277D85DE8];
  participantCopy = participant;
  updaterCopy = updater;
  v8 = updaterCopy;
  if (self->_guidingLandscapeOnlyParticipant == participantCopy)
  {
    v17 = &__block_literal_global_89;
LABEL_16:
    [updaterCopy updateOrientationPreferencesWithBlock:v17];
    goto LABEL_17;
  }

  if (self->_guidingPortraitOnlyParticipant == participantCopy)
  {
    v17 = &__block_literal_global_47_0;
    goto LABEL_16;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_guidingSceneOrientationRequestParticipantsMap allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_guidingSceneOrientationRequestParticipantsMap objectForKey:v14];
        v16 = v15;
        if (v15 == participantCopy)
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __69__SBSwitcherTraitsAssistant_updatePreferencesForParticipant_updater___block_invoke_3;
          v18[3] = &unk_2783B0DC0;
          v18[4] = v14;
          [v8 updateOrientationPreferencesWithBlock:v18];

          goto LABEL_14;
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

LABEL_17:
}

void __69__SBSwitcherTraitsAssistant_updatePreferencesForParticipant_updater___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setSupportedOrientations:{objc_msgSend(v2, "unsignedIntValue")}];
}

- (void)_setupGuidingRelationshipIfNeededForParticipant:(id)participant withSceneHandle:(id)handle
{
  participantCopy = participant;
  handleCopy = handle;
  if (!handleCopy)
  {
    goto LABEL_28;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  application = [handleCopy application];
  windowManagementContext = [WeakRetained windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if ([application isMedusaCapable] & 1) != 0 || (objc_msgSend(application, "isSetup"))
  {
    goto LABEL_4;
  }

  if ([application classicAppPhoneAppRunningOnPad])
  {
    _guidingPortraitOnlyLiveOverlay = [(SBSwitcherTraitsAssistant *)self _guidingPortraitOnlyLiveOverlay];
    if ([handleCopy _classicAppPhoneOnPadSupportsOldStyleMixedOrientation] && objc_msgSend(handleCopy, "_classicAppPhoneOnPadPrefersLandscape"))
    {
      _guidingLandscapeOnlyLiveOverlay = [(SBSwitcherTraitsAssistant *)self _guidingLandscapeOnlyLiveOverlay];

      _guidingPortraitOnlyLiveOverlay = _guidingLandscapeOnlyLiveOverlay;
    }

    goto LABEL_5;
  }

  if (![WeakRetained isOnExtendedDisplay])
  {
LABEL_4:
    _guidingPortraitOnlyLiveOverlay = 0;
  }

  else
  {
    if ([(SBSwitcherTraitsAssistant *)self _isContentContainerAspectRatioPortrait])
    {
      [(SBSwitcherTraitsAssistant *)self _guidingPortraitOnlyLiveOverlay];
    }

    else
    {
      [(SBSwitcherTraitsAssistant *)self _guidingLandscapeOnlyLiveOverlay];
    }
    _guidingPortraitOnlyLiveOverlay = ;
  }

LABEL_5:
  _supportedInterfaceOrientationsFromSceneOrientationRequestSetup = [handleCopy _supportedInterfaceOrientationsFromSceneOrientationRequestSetup];
  if (_supportedInterfaceOrientationsFromSceneOrientationRequestSetup)
  {
    v13 = [(SBSwitcherTraitsAssistant *)self _guidingSceneOrientationRequestParticipantWithMask:_supportedInterfaceOrientationsFromSceneOrientationRequestSetup];

    _guidingPortraitOnlyLiveOverlay = v13;
  }

  application2 = [handleCopy application];
  if ([application2 isMedusaCapable])
  {
  }

  else
  {
    isSetup = [application isSetup];

    if ((isSetup & 1) == 0)
    {
      if (isChamoisOrFlexibleWindowing)
      {
        _interfaceOrientationFromUserResizing = [handleCopy _interfaceOrientationFromUserResizing];
        if (_interfaceOrientationFromUserResizing)
        {
          if ((_interfaceOrientationFromUserResizing - 3) >= 2)
          {
            [(SBSwitcherTraitsAssistant *)self _guidingPortraitOnlyLiveOverlay];
          }

          else
          {
            [(SBSwitcherTraitsAssistant *)self _guidingLandscapeOnlyLiveOverlay];
          }
          v18 = ;

          _guidingPortraitOnlyLiveOverlay = v18;
        }
      }

      else
      {
        [handleCopy _setInterfaceOrientationFromUserResizing:{objc_msgSend(participantCopy, "sbf_currentOrientation")}];
      }
    }
  }

  participantUniqueIDToAssociatedParticipantMap = self->_participantUniqueIDToAssociatedParticipantMap;
  if (_guidingPortraitOnlyLiveOverlay)
  {
    uniqueIdentifier = [_guidingPortraitOnlyLiveOverlay uniqueIdentifier];
    uniqueIdentifier2 = [participantCopy uniqueIdentifier];
    [(NSMutableDictionary *)participantUniqueIDToAssociatedParticipantMap setObject:uniqueIdentifier forKey:uniqueIdentifier2];
  }

  else
  {
    uniqueIdentifier = [participantCopy uniqueIdentifier];
    [(NSMutableDictionary *)participantUniqueIDToAssociatedParticipantMap removeObjectForKey:uniqueIdentifier];
  }

LABEL_28:
}

- (BOOL)_isContentContainerAspectRatioPortrait
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contentContainerAspectRatio];
  v3 = BSFloatLessThanOrEqualToFloat();

  return v3;
}

- (id)_guidingLandscapeOnlyLiveOverlay
{
  guidingLandscapeOnlyParticipant = self->_guidingLandscapeOnlyParticipant;
  if (!guidingLandscapeOnlyParticipant)
  {
    WeakRetained = objc_loadWeakRetained(&self->_traitsArbiter);
    v5 = [WeakRetained acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherLiveOverlay" delegate:self];
    v6 = self->_guidingLandscapeOnlyParticipant;
    self->_guidingLandscapeOnlyParticipant = v5;

    guidingLandscapeOnlyParticipant = self->_guidingLandscapeOnlyParticipant;
  }

  return guidingLandscapeOnlyParticipant;
}

- (id)_guidingPortraitOnlyLiveOverlay
{
  guidingPortraitOnlyParticipant = self->_guidingPortraitOnlyParticipant;
  if (!guidingPortraitOnlyParticipant)
  {
    WeakRetained = objc_loadWeakRetained(&self->_traitsArbiter);
    v5 = [WeakRetained acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherLiveOverlay" delegate:self];
    v6 = self->_guidingPortraitOnlyParticipant;
    self->_guidingPortraitOnlyParticipant = v5;

    guidingPortraitOnlyParticipant = self->_guidingPortraitOnlyParticipant;
  }

  return guidingPortraitOnlyParticipant;
}

- (id)_guidingSceneOrientationRequestParticipantWithMask:(unint64_t)mask
{
  guidingSceneOrientationRequestParticipantsMap = self->_guidingSceneOrientationRequestParticipantsMap;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)guidingSceneOrientationRequestParticipantsMap objectForKey:v6];

  if (!v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_traitsArbiter);
    v7 = [WeakRetained acquireParticipantWithRole:@"SBTraitsParticipantRoleSwitcherLiveOverlay" delegate:self];

    if (v7)
    {
      v9 = self->_guidingSceneOrientationRequestParticipantsMap;
      if (!v9)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v11 = self->_guidingSceneOrientationRequestParticipantsMap;
        self->_guidingSceneOrientationRequestParticipantsMap = dictionary;

        v9 = self->_guidingSceneOrientationRequestParticipantsMap;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mask];
      [(NSMutableDictionary *)v9 setObject:v7 forKey:v12];
    }
  }

  return v7;
}

- (void)_addGuidingParticipantsIdentifiersToArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  guidingPortraitOnlyParticipant = self->_guidingPortraitOnlyParticipant;
  if (guidingPortraitOnlyParticipant)
  {
    uniqueIdentifier = [(TRAParticipant *)guidingPortraitOnlyParticipant uniqueIdentifier];
    [arrayCopy addObject:uniqueIdentifier];
  }

  guidingLandscapeOnlyParticipant = self->_guidingLandscapeOnlyParticipant;
  if (guidingLandscapeOnlyParticipant)
  {
    uniqueIdentifier2 = [(TRAParticipant *)guidingLandscapeOnlyParticipant uniqueIdentifier];
    [arrayCopy addObject:uniqueIdentifier2];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_guidingSceneOrientationRequestParticipantsMap allValues];
  v10 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        uniqueIdentifier3 = [*(*(&v15 + 1) + 8 * v13) uniqueIdentifier];
        [arrayCopy addObject:uniqueIdentifier3];

        ++v13;
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)_handleUpdateRequest:(id)request
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  currentElementsParticipants = [WeakRetained currentElementsParticipants];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SBSwitcherTraitsAssistant__handleUpdateRequest___block_invoke;
  v7[3] = &unk_2783B0D78;
  v8 = WeakRetained;
  v6 = WeakRetained;
  [(SBSwitcherTraitsAssistant *)self _updateArbitrationForElementsParticipants:currentElementsParticipants sceneHandleProviderBlock:v7 forceResolution:1 reason:@"TraitsAssistantHandleUpdateRequest"];
}

- (void)_handleOrientationLockRequest:(id)request
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained evaluateAppRequestedOrientationLock];
}

- (void)_updateArbitrationForElementsParticipants:(id)participants sceneHandleProviderBlock:(id)block forceResolution:(BOOL)resolution reason:(id)reason
{
  participantsCopy = participants;
  reasonCopy = reason;
  LOBYTE(block) = [(SBSwitcherTraitsAssistant *)self _updateGuidingSpecifiersIfNeededForParticipants:participantsCopy sceneHandleProviderBlock:block];
  [(SBSwitcherTraitsAssistant *)self _addGuidingSpecifierIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_switcherParticipant);
  v13 = objc_loadWeakRetained(&self->_traitsArbiter);
  v14 = objc_alloc(MEMORY[0x277D73498]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __119__SBSwitcherTraitsAssistant__updateArbitrationForElementsParticipants_sceneHandleProviderBlock_forceResolution_reason___block_invoke;
  v19[3] = &unk_2783B0E10;
  v20 = participantsCopy;
  v21 = WeakRetained;
  selfCopy = self;
  v23 = reasonCopy;
  resolutionCopy = resolution;
  blockCopy = block;
  v15 = reasonCopy;
  v16 = WeakRetained;
  v17 = participantsCopy;
  v18 = [v14 initWithBuilder:v19];
  [v13 setNeedsUpdateArbitrationWithContext:v18];

  [(SBSwitcherTraitsAssistant *)self _evaluateIfGuidingSpecifierIsSillNeeded];
}

void __119__SBSwitcherTraitsAssistant__updateArbitrationForElementsParticipants_sceneHandleProviderBlock_forceResolution_reason___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) uniqueIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = [v11 uniqueIdentifier];
    [v4 addObject:v12];
  }

  [*(a1 + 48) _addGuidingParticipantsIdentifiersToArray:{v4, v14}];
  [v3 setReason:*(a1 + 56)];
  [v3 setRequestingParticipantsUniqueIdentifiers:v4];
  if (*(a1 + 64))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(a1 + 65);
  }

  [v3 setForceOrientationResolution:v13 & 1];
}

- (BOOL)_updateGuidingSpecifiersIfNeededForParticipants:(id)participants sceneHandleProviderBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  blockCopy = block;
  v8 = [(NSMutableDictionary *)self->_participantUniqueIDToAssociatedParticipantMap count];
  [(NSMutableDictionary *)self->_participantUniqueIDToAssociatedParticipantMap removeAllObjects];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = participantsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = blockCopy[2](blockCopy, v14);
        [(SBSwitcherTraitsAssistant *)self _setupGuidingRelationshipIfNeededForParticipant:v14 withSceneHandle:v15, v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = ([(NSMutableDictionary *)self->_participantUniqueIDToAssociatedParticipantMap count]| v8) != 0;
  return v16;
}

- (void)_setupPolicySpecifierIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsArbiter);
  if (WeakRetained && !self->_blockBasedPolicySpecifier)
  {
    objc_initWeak(&location, self);
    v4 = [SBTraitsPipelineBlockBasedPolicySpecifier alloc];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__SBSwitcherTraitsAssistant__setupPolicySpecifierIfNeeded__block_invoke;
    v7[3] = &unk_2783B0DE8;
    objc_copyWeak(&v8, &location);
    v5 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)v4 initWithPolicySpecifierBlock:v7 specifierDescription:@"Switcher Traits Assistant" componentOrder:&unk_283370838 arbiter:WeakRetained];
    blockBasedPolicySpecifier = self->_blockBasedPolicySpecifier;
    self->_blockBasedPolicySpecifier = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __58__SBSwitcherTraitsAssistant__setupPolicySpecifierIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAcquiredParticipantsPolicies:v3];
}

- (void)_updateAcquiredParticipantsPolicies:(id)policies
{
  v19 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [policiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(policiesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        participantUniqueIDToAssociatedParticipantMap = self->_participantUniqueIDToAssociatedParticipantMap;
        uniqueIdentifier = [v9 uniqueIdentifier];
        v12 = [(NSMutableDictionary *)participantUniqueIDToAssociatedParticipantMap objectForKey:uniqueIdentifier];

        if (v12)
        {
          v13 = [MEMORY[0x277D734D0] resolutionPolicyInfoForAssociatedParticipantWithUniqueID:v12];
          [v9 setOrientationResolutionPolicyInfo:v13];
        }
      }

      v6 = [policiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (TRAArbiter)traitsArbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_traitsArbiter);

  return WeakRetained;
}

- (TRAParticipant)switcherParticipant
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherParticipant);

  return WeakRetained;
}

- (SBSwitcherTraitsAssistantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end