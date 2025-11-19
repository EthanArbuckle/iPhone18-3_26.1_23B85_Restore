@interface SBTraitsOrientationDefaultTreeResolver
- (BOOL)_node:(id)a3 validatesNewSettings:(id)a4;
- (SBTraitsOrientationDefaultTreeResolver)initWithComponentOrder:(id)a3;
- (id)_mapResolverForTargetOrientation:(int64_t)a3 currentOrientation:(int64_t)a4;
- (int64_t)_targetOrientationForResolutionInfo:(id)a3 validatedInputs:(id)a4 rawInputs:(id)a5 participant:(id)a6 parent:(id)a7;
- (void)resolveStagePreferencesWithContext:(id)a3 preferencesTree:(id)a4;
@end

@implementation SBTraitsOrientationDefaultTreeResolver

- (SBTraitsOrientationDefaultTreeResolver)initWithComponentOrder:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBTraitsOrientationDefaultTreeResolver;
  v3 = [(SBTraitsOrientationStageComponent *)&v9 initWithComponentOrder:a3];
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

- (void)resolveStagePreferencesWithContext:(id)a3 preferencesTree:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v5 = a4;
  if (!v5)
  {
    [SBTraitsOrientationDefaultTreeResolver resolveStagePreferencesWithContext:preferencesTree:];
  }

  v37 = v5;
  [v5 topologicalSort];
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
        v8 = [v7 participant];
        v9 = [v8 orientationPreferences];
        if (v9)
        {
          [v8 currentSettings];
          v11 = v10 = v8;
          v12 = [v11 orientationSettings];
          v49 = [v12 orientationMapResolver];

          v45 = v7;
          v13 = [v7 parent];
          v14 = [v13 participant];

          v15 = [v39 rawInputs];
          v16 = [v15 deviceOrientationInputs];

          v17 = [v39 validatedInputs];
          v18 = [v17 deviceOrientationInputs];

          v19 = [v10 orientationResolutionPolicyInfo];
          v46 = [v9 preferredOrientation];
          v20 = [v10 currentSettings];
          v21 = [v20 orientationSettings];
          v22 = [v21 orientation];

          v48 = v9;
          v23 = [v9 supportedOrientations];
          v44 = v10;
          v50 = v14;
          v24 = [(SBTraitsOrientationDefaultTreeResolver *)self _targetOrientationForResolutionInfo:v19 validatedInputs:v18 rawInputs:v16 participant:v10 parent:v14];
          v43 = [(SBTraitsOrientationDefaultTreeResolver *)self _mapResolverForTargetOrientation:v24 currentOrientation:v22];
          v25 = [v43 interfaceOrientationForSupportedOrientations:v23 preferredOrientation:v46];
          v26 = [(SBTraitsOrientationDefaultTreeResolver *)self _mapResolverForTargetOrientation:v24 currentOrientation:v25];
          v47 = v16;
          v27 = [objc_alloc(MEMORY[0x277D734F0]) initWithOrientation:v25 orientationMapResolver:v26 validatedOrientationInputs:v18 rawOrientationInputs:v16];
          if (v22 == [v27 orientation] && (objc_msgSend(v27, "orientationMapResolver"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v49, "isEqual:", v28), v28, (v29 & 1) != 0))
          {
            v30 = 0;
            v31 = v45;
          }

          else
          {
            v32 = [v50 orientationResolutionPolicyInfo];
            v31 = v45;
            v33 = [(SBTraitsOrientationDefaultTreeResolver *)self _node:v45 validatesNewSettings:v27];
            v30 = v33;
            if (v33)
            {
              v34 = [v19 actuationContext];
              if (!v34)
              {
                if ([v19 resolutionPolicy] == 3)
                {
                  v34 = [v32 actuationContext];
                }

                else
                {
                  v34 = 0;
                }
              }

              [v19 setActuationContext:v34];
            }
          }

          v35 = [v31 settingsUpdater];
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __93__SBTraitsOrientationDefaultTreeResolver_resolveStagePreferencesWithContext_preferencesTree___block_invoke;
          v51[3] = &unk_2783C0720;
          v53 = v30;
          v52 = v27;
          v36 = v27;
          [v35 updateOrientationSettingsWithBlock:v51];

          v9 = v48;
          v8 = v44;
        }

        else
        {
          v26 = SBLogTraitsArbiter();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [(SBTraitsOrientationDefaultTreeResolver *)v58 resolveStagePreferencesWithContext:v8 preferencesTree:&v59, v26];
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

- (int64_t)_targetOrientationForResolutionInfo:(id)a3 validatedInputs:(id)a4 rawInputs:(id)a5 participant:(id)a6 parent:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a7)
  {
    v15 = [a7 currentSettings];
    v16 = [v15 orientationSettings];
    v17 = [v16 orientation];
    goto LABEL_34;
  }

  if ([v11 resolutionPolicy] != 1)
  {
    v17 = 0;
    goto LABEL_35;
  }

  v15 = v14;
  v16 = v11;
  v41 = v12;
  v18 = v13;
  v19 = [v16 associatedDeviceOrientationStateTypes];
  if ([v16 resolutionPolicy] != 1 || !objc_msgSend(v19, "count"))
  {
    v17 = 0;
    goto LABEL_33;
  }

  v20 = [v16 associatedDeviceOrientationStateTypesBySupportedOrientationMask];
  v39 = v16;
  v40 = v15;
  v38 = v20;
  if (v20)
  {
    v21 = v20;
    v22 = MEMORY[0x277CCABB0];
    v23 = [v15 orientationPreferences];
    v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "supportedOrientations")}];
    v25 = v21;
    v26 = v24;
    v27 = [v25 objectForKey:v24];

    if (v27)
    {
      v28 = v27;

      v19 = v28;
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = v19;
  v29 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
        objc_enumerationMutation(v19);
      }

      v33 = [*(*(&v42 + 1) + 8 * i) integerValue];
      if (v33 > 1)
      {
        if (v33 != 2)
        {
          if (v33 != 3)
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
        if (v33)
        {
          if (v33 != 1)
          {
            continue;
          }

          v34 = v41;
LABEL_22:
          v35 = [v34 nonFlatDeviceOrientation];
          goto LABEL_26;
        }

        v36 = v41;
      }

      v35 = [v36 currentDeviceOrientation];
LABEL_26:
      v17 = v35;
      if ((v35 - 1) < 4)
      {
        goto LABEL_30;
      }
    }

    v30 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v30);
LABEL_29:
  v17 = 0;
LABEL_30:

  v16 = v39;
  v15 = v40;
LABEL_33:

LABEL_34:
LABEL_35:

  return v17;
}

- (BOOL)_node:(id)a3 validatesNewSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 participant];
  v9 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    [(TRASettingsValidator *)self->_settingsValidator setOrientationSettings:v6];
    [v9 validateSettingsForParticipant:v8 validator:self->_settingsValidator];
    v10 = [(TRASettingsValidator *)self->_settingsValidator didValidateOrientationSettings];
  }

  else
  {
    v10 = 1;
  }

  [v7 setDebugLastSettingsWereValidated:v10];
  v11 = [(TRASettingsValidator *)self->_settingsValidator orientationSettingsValidatedReason];
  [v7 setDebugLastOrientationSettingsValidationFailureReason:v11];

  return v10;
}

- (id)_mapResolverForTargetOrientation:(int64_t)a3 currentOrientation:(int64_t)a4
{
  v7 = [MEMORY[0x277CCABB0] numberWithInt:(a4 + 32 * a3)];
  v8 = [(NSMutableDictionary *)self->_mapResolverCache objectForKey:v7];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CF0BC0]) initWithTargetOrientation:a3 currentOrientation:a4];
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