@interface SBSensorActivityDataProvider
- (BOOL)_updateActiveSensorActivityAttributions;
- (CCUISensorActivityData)inactiveSensorActivityDataEligibleForMicModeSelection;
- (CCUISensorActivityData)mostRecentSensorActivityData;
- (NSSet)activeAndRecentSensorActivityAttributions;
- (NSSet)activeCameraAndMicrophoneActivityAttributions;
- (NSSet)activeSensorActivityData;
- (NSSet)mutedMicrophoneSensorActivityData;
- (SBSensorActivityAttribution)mostRecentCameraAndMicrophoneSensorActivityAttribution;
- (SBSensorActivityDataProvider)init;
- (SBSensorActivityDataProvider)initWithSystemStatusServer:(id)a3;
- (id)_applicationEligibleForInactiveMicModeSelection;
- (id)_attributionsWithSensorType:(int64_t)a3 fromAttributions:(id)a4;
- (id)_inactiveMicModeSelectionSensorActivityDataFromApplication:(id)a3;
- (id)_recentCameraAndMicrophoneActivityAttributions;
- (id)_sensorActivityDataFromSensorActivityAttribution:(id)a3;
- (void)_handleNewDomainData:(id)a3;
- (void)_notifyObserversOfActivityChange;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation SBSensorActivityDataProvider

- (BOOL)_updateActiveSensorActivityAttributions
{
  v3 = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v4 = [(SBSensorActivityDataProvider *)self activeAccessSensorActivityAttributions];
  v5 = [v4 mutableCopy];

  v6 = [(SBSensorActivityDataProvider *)self microphoneAttributionsAwaitingMinimumOnTime];
  if (v6)
  {
    [v5 unionSet:v6];
  }

  v7 = [(SBSensorActivityDataProvider *)self cameraAttributionsAwaitingMinimumOnTime];
  if (v7)
  {
    [v5 unionSet:v7];
  }

  [(SBSensorActivityDataProvider *)self setActiveSensorActivityAttributions:v5];
  v8 = [v3 isEqual:v5];

  return v8 ^ 1;
}

- (void)_notifyObserversOfActivityChange
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(SBSensorActivityDataProvider *)self observers];
  v4 = [v3 copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 activityDidChangeForSensorActivityDataProvider:{self, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (NSSet)activeCameraAndMicrophoneActivityAttributions
{
  v2 = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v3 = [v2 objectsPassingTest:&__block_literal_global_249];

  return v3;
}

BOOL __77__SBSensorActivityDataProvider_activeCameraAndMicrophoneActivityAttributions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 sensor])
  {
    v3 = [v2 sensor] == 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (NSSet)activeAndRecentSensorActivityAttributions
{
  v3 = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v4 = [v3 mutableCopy];

  v5 = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  [v4 unionSet:v5];

  v6 = [v4 copy];

  return v6;
}

- (NSSet)activeSensorActivityData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (_os_feature_enabled_impl())
  {
    [(SBSensorActivityDataProvider *)self activeAndRecentSensorActivityAttributions];
  }

  else
  {
    [(SBSensorActivityDataProvider *)self activeCameraAndMicrophoneActivityAttributions];
  }
  v4 = ;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SBSensorActivityDataProvider_ControlCenterUI__activeSensorActivityData__block_invoke;
  v9[3] = &unk_2783BABA8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __73__SBSensorActivityDataProvider_ControlCenterUI__activeSensorActivityData__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 sensor] != 3)
  {
    v3 = [*(a1 + 32) _sensorActivityDataFromSensorActivityAttribution:v4];
    [*(a1 + 40) addObject:v3];
  }
}

- (CCUISensorActivityData)inactiveSensorActivityDataEligibleForMicModeSelection
{
  v3 = [(SBSensorActivityDataProvider *)self _applicationEligibleForInactiveMicModeSelection];
  v4 = [(SBSensorActivityDataProvider *)self _inactiveMicModeSelectionSensorActivityDataFromApplication:v3];

  return v4;
}

- (id)_applicationEligibleForInactiveMicModeSelection
{
  if (!_os_feature_enabled_impl())
  {
    v12 = 0;
    goto LABEL_12;
  }

  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  v4 = [v3 lockScreenManager];
  v5 = [v4 isUILocked];
  v6 = [v3 switcherController];
  v7 = v6;
  if ((v5 & 1) == 0 && [v6 unlockedEnvironmentMode] == 3)
  {
    v8 = [v7 layoutStatePrimaryElement];
    v9 = [v8 workspaceEntity];
    v10 = [v9 applicationSceneEntity];
    v11 = [v10 sceneHandle];
    v12 = [v11 application];

    v13 = [v12 info];
    if ([v13 supportsInactiveMicModeSelection])
    {
      v14 = [v3 iconController];
      v15 = [v12 bundleIdentifier];
      v16 = [v14 isIconVisibleForBundleIdentifier:v15];

      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_11:

LABEL_12:

  return v12;
}

- (NSSet)mutedMicrophoneSensorActivityData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__SBSensorActivityDataProvider_ControlCenterUI__mutedMicrophoneSensorActivityData__block_invoke;
  v9[3] = &unk_2783BABA8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __82__SBSensorActivityDataProvider_ControlCenterUI__mutedMicrophoneSensorActivityData__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 sensor] == 3)
  {
    v3 = [*(a1 + 32) _sensorActivityDataFromSensorActivityAttribution:v4];
    [*(a1 + 40) addObject:v3];
  }
}

- (CCUISensorActivityData)mostRecentSensorActivityData
{
  v3 = [(SBSensorActivityDataProvider *)self mostRecentCameraAndMicrophoneSensorActivityAttribution];
  v4 = [(SBSensorActivityDataProvider *)self _sensorActivityDataFromSensorActivityAttribution:v3];

  [v4 setUsedRecently:1];

  return v4;
}

- (id)_sensorActivityDataFromSensorActivityAttribution:(id)a3
{
  v3 = a3;
  v4 = [v3 sensor];
  if (v3)
  {
    v5 = v4;
    v6 = objc_alloc_init(MEMORY[0x277CFC9B8]);
    v7 = v6;
    if ((v5 - 1) > 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_21F8A7450[v5 - 1];
    }

    [v6 setSensorType:v8];
    v9 = [v3 displayName];
    [v7 setDisplayName:v9];

    [v7 setUsedRecently:{objc_msgSend(v3, "usedRecently")}];
    v10 = [v3 bundleIdentifier];
    [v7 setBundleIdentifier:v10];

    v11 = [v3 attributionGroup];
    [v7 setAttributionGroup:v11];

    v12 = [v3 website];
    [v7 setWebsite:v12];

    [v7 setIsSystemService:{objc_msgSend(v3, "isSystemService")}];
    v13 = [v3 executableDisplayName];
    [v7 setExecutableDisplayName:v13];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_inactiveMicModeSelectionSensorActivityDataFromApplication:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CFC9B8];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    [v5 setSensorType:1];
    v6 = [v4 displayName];
    [v5 setDisplayName:v6];
    v7 = [v4 bundleIdentifier];

    [v5 setBundleIdentifier:v7];
    [v5 setExecutableDisplayName:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBSensorActivityDataProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSensorActivityDataProvider.m" lineNumber:43 description:@"call initWithSystemStatusServer:"];

  v5 = [MEMORY[0x277CBEB68] null];
  v6 = [(SBSensorActivityDataProvider *)self initWithSystemStatusServer:v5];

  return v6;
}

- (SBSensorActivityDataProvider)initWithSystemStatusServer:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBSensorActivityDataProvider;
  v5 = [(SBSensorActivityDataProvider *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(SBSecureIndicatorMinimumOnTimeCoordinator);
    minimumOnTimeCoordinator = v5->_minimumOnTimeCoordinator;
    v5->_minimumOnTimeCoordinator = v6;

    v8 = [objc_alloc(MEMORY[0x277D6B958]) initWithServerHandle:v4];
    dataAccessDomain = v5->_dataAccessDomain;
    v5->_dataAccessDomain = v8;

    objc_initWeak(&location, v5);
    v10 = v5->_dataAccessDomain;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__SBSensorActivityDataProvider_initWithSystemStatusServer___block_invoke;
    v18 = &unk_2783BC000;
    objc_copyWeak(&v19, &location);
    [(STDataAccessStatusDomain *)v10 observeDataWithBlock:&v15];
    v11 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v11;

    v13 = [(STDataAccessStatusDomain *)v5->_dataAccessDomain data];
    [(SBSensorActivityDataProvider *)v5 _handleNewDomainData:v13];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __59__SBSensorActivityDataProvider_initWithSystemStatusServer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SBSensorActivityDataProvider_initWithSystemStatusServer___block_invoke_2;
  v5[3] = &unk_2783A9CE8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __59__SBSensorActivityDataProvider_initWithSystemStatusServer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleNewDomainData:*(a1 + 32)];
}

- (void)dealloc
{
  [(STDataAccessStatusDomain *)self->_dataAccessDomain invalidate];
  v3.receiver = self;
  v3.super_class = SBSensorActivityDataProvider;
  [(SBSensorActivityDataProvider *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(SBSensorActivityDataProvider *)self observers];
  [v5 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(SBSensorActivityDataProvider *)self observers];
  [v5 removeObject:v4];
}

- (SBSensorActivityAttribution)mostRecentCameraAndMicrophoneSensorActivityAttribution
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(SBSensorActivityDataProvider *)self _recentCameraAndMicrophoneActivityAttributions];
  v3 = [v2 lastObject];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v9 != v3)
        {
          v10 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
          v11 = [v3 bundleIdentifier];
          if ([v10 isEqualToString:v11])
          {
            v12 = [v9 sensor];

            if (v12)
            {
              continue;
            }

            v10 = v3;
            v3 = v9;
          }

          else
          {
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_recentCameraAndMicrophoneActivityAttributions
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 sensor] || objc_msgSend(v9, "sensor") == 1)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)_handleNewDomainData:(id)a3
{
  v4 = a3;
  v5 = [(SBSensorActivityDataProvider *)self activeAccessSensorActivityAttributions];
  v6 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:1 fromAttributions:v5];
  v33 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:0 fromAttributions:v5];
  v34 = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  if (v4)
  {
    v7 = [v4 activeAttributionData];
    v8 = [v7 dataAccessAttributions];

    v9 = MEMORY[0x277CBEB98];
    v10 = [v8 bs_compactMap:&__block_literal_global_17_0];
    v11 = [v9 setWithArray:v10];

    [(SBSensorActivityDataProvider *)self setActiveAccessSensorActivityAttributions:v11];
    v12 = [v4 recentAttributionData];
    v13 = [v12 dataAccessAttributions];

    v14 = MEMORY[0x277CBEB98];
    v15 = [v13 bs_compactMap:&__block_literal_global_20_2];
    v16 = [v14 setWithArray:v15];

    [(SBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:v16];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB98] set];
    [(SBSensorActivityDataProvider *)self setActiveAccessSensorActivityAttributions:v17];

    v8 = [MEMORY[0x277CBEB98] set];
    [(SBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:v8];
  }

  v18 = [(SBSensorActivityDataProvider *)self activeAccessSensorActivityAttributions];
  v19 = [v5 mutableCopy];
  [v19 minusSet:v18];
  v20 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:1 fromAttributions:v18];
  v21 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:0 fromAttributions:v18];
  if ([v20 count])
  {
    v22 = [(SBSensorActivityDataProvider *)self microphoneMinimumOnTimeRegistration];
    [v22 invalidate];

    [(SBSensorActivityDataProvider *)self setMicrophoneMinimumOnTimeRegistration:0];
    [(SBSensorActivityDataProvider *)self setMicrophoneAttributionsAwaitingMinimumOnTime:0];
  }

  else if ([v6 count])
  {
    [(SBSensorActivityDataProvider *)self setMicrophoneAttributionsAwaitingMinimumOnTime:v6];
    v23 = [(SBSensorActivityDataProvider *)self minimumOnTimeCoordinator];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke_3;
    v36[3] = &unk_2783A8C18;
    v36[4] = self;
    v24 = [v23 performWhenMinimumOnTimeIsSatisfiedForIndicators:1 block:v36];

    [(SBSensorActivityDataProvider *)self setMicrophoneMinimumOnTimeRegistration:v24];
  }

  v32 = v4;
  v25 = v6;
  if ([v21 count])
  {
    v26 = [(SBSensorActivityDataProvider *)self cameraMinimumOnTimeRegistration];
    [v26 invalidate];

    [(SBSensorActivityDataProvider *)self setCameraMinimumOnTimeRegistration:0];
    [(SBSensorActivityDataProvider *)self setCameraAttributionsAwaitingMinimumOnTime:0];
  }

  else if ([v33 count])
  {
    [(SBSensorActivityDataProvider *)self setCameraAttributionsAwaitingMinimumOnTime:v33];
    v27 = [(SBSensorActivityDataProvider *)self minimumOnTimeCoordinator];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke_4;
    v35[3] = &unk_2783A8C18;
    v35[4] = self;
    v28 = [v27 performWhenMinimumOnTimeIsSatisfiedForIndicators:2 block:v35];

    [(SBSensorActivityDataProvider *)self setCameraMinimumOnTimeRegistration:v28];
  }

  v29 = [(SBSensorActivityDataProvider *)self _updateActiveSensorActivityAttributions];
  v30 = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  v31 = [v34 isEqualToSet:v30];

  if (v29 || !v31)
  {
    [(SBSensorActivityDataProvider *)self _notifyObserversOfActivityChange];
  }
}

SBSensorActivityAttribution *__53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SBSensorActivityAttribution alloc] initWithDataAccessAttribution:v2];

  return v3;
}

SBSensorActivityAttribution *__53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SBSensorActivityAttribution alloc] initWithDataAccessAttribution:v2];

  return v3;
}

uint64_t __53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setMicrophoneAttributionsAwaitingMinimumOnTime:0];
  result = [*(a1 + 32) _updateActiveSensorActivityAttributions];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _notifyObserversOfActivityChange];
  }

  return result;
}

uint64_t __53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setCameraAttributionsAwaitingMinimumOnTime:0];
  result = [*(a1 + 32) _updateActiveSensorActivityAttributions];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _notifyObserversOfActivityChange];
  }

  return result;
}

- (id)_attributionsWithSensorType:(int64_t)a3 fromAttributions:(id)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SBSensorActivityDataProvider__attributionsWithSensorType_fromAttributions___block_invoke;
  v6[3] = &__block_descriptor_40_e37_B16__0__SBSensorActivityAttribution_8l;
  v6[4] = a3;
  v4 = [a4 bs_filter:v6];

  return v4;
}

@end