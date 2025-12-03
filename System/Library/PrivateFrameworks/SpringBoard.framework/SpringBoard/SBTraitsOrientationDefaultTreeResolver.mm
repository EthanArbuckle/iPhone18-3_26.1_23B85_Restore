@interface SBTraitsOrientationDefaultTreeResolver
- (BOOL)_node:(id)_node validatesNewSettings:(id)settings;
- (SBTraitsOrientationDefaultTreeResolver)initWithComponentOrder:(id)order;
- (id)_mapResolverForTargetOrientation:(int64_t)orientation currentOrientation:(int64_t)currentOrientation;
- (int64_t)_targetOrientationForResolutionInfo:(id)info validatedInputs:(id)inputs rawInputs:(id)rawInputs participant:(id)participant parent:(id)parent;
- (void)resolveStagePreferencesWithContext:(id)context preferencesTree:(id)tree;
@end

@implementation SBTraitsOrientationDefaultTreeResolver

- (SBTraitsOrientationDefaultTreeResolver)initWithComponentOrder:(id)order
{
  v9.receiver = self;
  v9.super_class = SBTraitsOrientationDefaultTreeResolver;
  v3 = [(SBTraitsOrientationStageComponent *)&v9 initWithComponentOrder:order];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D734F8]);
    settingsValidator = v3->_settingsValidator;
    v3->_settingsValidator = v4;

    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:25];
    mapResolverCache = v3->_mapResolverCache;
    v3->_mapResolverCache = v6;
  }

  return v3;
}

- (void)resolveStagePreferencesWithContext:(id)context preferencesTree:(id)tree
{
  v61 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  treeCopy = tree;
  if (!treeCopy)
  {
    [SBTraitsOrientationDefaultTreeResolver resolveStagePreferencesWithContext:preferencesTree:];
  }

  v37 = treeCopy;
  [treeCopy topologicalSort];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v57 = 0u;
  v41 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v41)
  {
    v40 = *v55;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v55 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v54 + 1) + 8 * i);
        participant = [v7 participant];
        orientationPreferences = [participant orientationPreferences];
        if (orientationPreferences)
        {
          [participant currentSettings];
          v11 = v10 = participant;
          orientationSettings = [v11 orientationSettings];
          orientationMapResolver = [orientationSettings orientationMapResolver];

          v45 = v7;
          parent = [v7 parent];
          participant2 = [parent participant];

          rawInputs = [contextCopy rawInputs];
          deviceOrientationInputs = [rawInputs deviceOrientationInputs];

          validatedInputs = [contextCopy validatedInputs];
          deviceOrientationInputs2 = [validatedInputs deviceOrientationInputs];

          orientationResolutionPolicyInfo = [v10 orientationResolutionPolicyInfo];
          preferredOrientation = [orientationPreferences preferredOrientation];
          currentSettings = [v10 currentSettings];
          orientationSettings2 = [currentSettings orientationSettings];
          orientation = [orientationSettings2 orientation];

          v48 = orientationPreferences;
          supportedOrientations = [orientationPreferences supportedOrientations];
          v44 = v10;
          v50 = participant2;
          v24 = [(SBTraitsOrientationDefaultTreeResolver *)self _targetOrientationForResolutionInfo:orientationResolutionPolicyInfo validatedInputs:deviceOrientationInputs2 rawInputs:deviceOrientationInputs participant:v10 parent:participant2];
          v43 = [(SBTraitsOrientationDefaultTreeResolver *)self _mapResolverForTargetOrientation:v24 currentOrientation:orientation];
          v25 = [v43 interfaceOrientationForSupportedOrientations:supportedOrientations preferredOrientation:preferredOrientation];
          v26 = [(SBTraitsOrientationDefaultTreeResolver *)self _mapResolverForTargetOrientation:v24 currentOrientation:v25];
          v47 = deviceOrientationInputs;
          v27 = [objc_alloc(MEMORY[0x277D734F0]) initWithOrientation:v25 orientationMapResolver:v26 validatedOrientationInputs:deviceOrientationInputs2 rawOrientationInputs:deviceOrientationInputs];
          if (orientation == [v27 orientation] && (objc_msgSend(v27, "orientationMapResolver"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(orientationMapResolver, "isEqual:", v28), v28, (v29 & 1) != 0))
          {
            v30 = 0;
            v31 = v45;
          }

          else
          {
            orientationResolutionPolicyInfo2 = [v50 orientationResolutionPolicyInfo];
            v31 = v45;
            v33 = [(SBTraitsOrientationDefaultTreeResolver *)self _node:v45 validatesNewSettings:v27];
            v30 = v33;
            if (v33)
            {
              actuationContext = [orientationResolutionPolicyInfo actuationContext];
              if (!actuationContext)
              {
                if ([orientationResolutionPolicyInfo resolutionPolicy] == 3)
                {
                  actuationContext = [orientationResolutionPolicyInfo2 actuationContext];
                }

                else
                {
                  actuationContext = 0;
                }
              }

              [orientationResolutionPolicyInfo setActuationContext:actuationContext];
            }
          }

          settingsUpdater = [v31 settingsUpdater];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __93__SBTraitsOrientationDefaultTreeResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke;
          v51[3] = &unk_2783C0720;
          v53 = v30;
          v52 = v27;
          v36 = v27;
          [settingsUpdater updateOrientationSettingsWithBlock:v51];

          orientationPreferences = v48;
          participant = v44;
        }

        else
        {
          v26 = SBLogTraitsArbiter();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [(SBTraitsOrientationDefaultTreeResolver *)v58 resolveStagePreferencesWithContext:participant preferencesTree:&v59, v26];
          }
        }
      }

      v41 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v41);
  }
}

void __93__SBTraitsOrientationDefaultTreeResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 40) == 1)
  {
    [v6 setOrientation:{objc_msgSend(*(a1 + 32), "orientation")}];
    v3 = [*(a1 + 32) orientationMapResolver];
    [v6 setOrientationMapResolver:v3];
  }

  v4 = [*(a1 + 32) rawOrientationInputs];
  [v6 setRawOrientationInputs:v4];

  v5 = [*(a1 + 32) validatedOrientationInputs];
  [v6 setValidatedOrientationInputs:v5];
}

- (int64_t)_targetOrientationForResolutionInfo:(id)info validatedInputs:(id)inputs rawInputs:(id)rawInputs participant:(id)participant parent:(id)parent
{
  v47 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  inputsCopy = inputs;
  rawInputsCopy = rawInputs;
  participantCopy = participant;
  if (parent)
  {
    currentSettings = [parent currentSettings];
    orientationSettings = [currentSettings orientationSettings];
    orientation = [orientationSettings orientation];
    goto LABEL_34;
  }

  if ([infoCopy resolutionPolicy] != 1)
  {
    orientation = 0;
    goto LABEL_35;
  }

  currentSettings = participantCopy;
  orientationSettings = infoCopy;
  v41 = inputsCopy;
  v18 = rawInputsCopy;
  associatedDeviceOrientationStateTypes = [orientationSettings associatedDeviceOrientationStateTypes];
  if ([orientationSettings resolutionPolicy] != 1 || !objc_msgSend(associatedDeviceOrientationStateTypes, "count"))
  {
    orientation = 0;
    goto LABEL_33;
  }

  associatedDeviceOrientationStateTypesBySupportedOrientationMask = [orientationSettings associatedDeviceOrientationStateTypesBySupportedOrientationMask];
  v39 = orientationSettings;
  v40 = currentSettings;
  v38 = associatedDeviceOrientationStateTypesBySupportedOrientationMask;
  if (associatedDeviceOrientationStateTypesBySupportedOrientationMask)
  {
    v21 = associatedDeviceOrientationStateTypesBySupportedOrientationMask;
    v22 = MEMORY[0x277CCABB0];
    orientationPreferences = [currentSettings orientationPreferences];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(orientationPreferences, "supportedOrientations")}];
    v25 = v21;
    v26 = v24;
    v27 = [v25 objectForKey:v24];

    if (v27)
    {
      v28 = v27;

      associatedDeviceOrientationStateTypes = v28;
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  associatedDeviceOrientationStateTypes = associatedDeviceOrientationStateTypes;
  v29 = [associatedDeviceOrientationStateTypes countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *v43;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v43 != v31)
      {
        objc_enumerationMutation(associatedDeviceOrientationStateTypes);
      }

      integerValue = [*(*(&v42 + 1) + 8 * i) integerValue];
      if (integerValue > 1)
      {
        if (integerValue != 2)
        {
          if (integerValue != 3)
          {
            continue;
          }

          v34 = v18;
          goto LABEL_22;
        }

        v36 = v18;
      }

      else
      {
        if (integerValue)
        {
          if (integerValue != 1)
          {
            continue;
          }

          v34 = v41;
LABEL_22:
          nonFlatDeviceOrientation = [v34 nonFlatDeviceOrientation];
          goto LABEL_26;
        }

        v36 = v41;
      }

      nonFlatDeviceOrientation = [v36 currentDeviceOrientation];
LABEL_26:
      orientation = nonFlatDeviceOrientation;
      if ((nonFlatDeviceOrientation - 1) < 4)
      {
        goto LABEL_30;
      }
    }

    v30 = [associatedDeviceOrientationStateTypes countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v30);
LABEL_29:
  orientation = 0;
LABEL_30:

  orientationSettings = v39;
  currentSettings = v40;
LABEL_33:

LABEL_34:
LABEL_35:

  return orientation;
}

- (BOOL)_node:(id)_node validatesNewSettings:(id)settings
{
  settingsCopy = settings;
  _nodeCopy = _node;
  participant = [_nodeCopy participant];
  delegate = [participant delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TRASettingsValidator *)self->_settingsValidator setOrientationSettings:settingsCopy];
    [delegate validateSettingsForParticipant:participant validator:self->_settingsValidator];
    didValidateOrientationSettings = [(TRASettingsValidator *)self->_settingsValidator didValidateOrientationSettings];
  }

  else
  {
    didValidateOrientationSettings = 1;
  }

  [_nodeCopy setDebugLastSettingsWereValidated:didValidateOrientationSettings];
  orientationSettingsValidatedReason = [(TRASettingsValidator *)self->_settingsValidator orientationSettingsValidatedReason];
  [_nodeCopy setDebugLastOrientationSettingsValidationFailureReason:orientationSettingsValidatedReason];

  return didValidateOrientationSettings;
}

- (id)_mapResolverForTargetOrientation:(int64_t)orientation currentOrientation:(int64_t)currentOrientation
{
  v7 = [MEMORY[0x277CCABB0] numberWithInt:(currentOrientation + 32 * orientation)];
  v8 = [(NSMutableDictionary *)self->_mapResolverCache objectForKey:v7];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CF0BC0]) initWithTargetOrientation:orientation currentOrientation:currentOrientation];
    [(NSMutableDictionary *)self->_mapResolverCache setObject:v8 forKey:v7];
  }

  return v8;
}

- (void)resolveStagePreferencesWithContext:(void *)a3 preferencesTree:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_21ED4E000, a4, OS_LOG_TYPE_ERROR, "Orientation trait participant[%{public}@] is not providing orientation preferences.", a1, 0xCu);
}

@end