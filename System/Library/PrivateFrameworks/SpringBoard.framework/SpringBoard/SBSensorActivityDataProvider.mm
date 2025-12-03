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
- (SBSensorActivityDataProvider)initWithSystemStatusServer:(id)server;
- (id)_applicationEligibleForInactiveMicModeSelection;
- (id)_attributionsWithSensorType:(int64_t)type fromAttributions:(id)attributions;
- (id)_inactiveMicModeSelectionSensorActivityDataFromApplication:(id)application;
- (id)_recentCameraAndMicrophoneActivityAttributions;
- (id)_sensorActivityDataFromSensorActivityAttribution:(id)attribution;
- (void)_handleNewDomainData:(id)data;
- (void)_notifyObserversOfActivityChange;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SBSensorActivityDataProvider

- (BOOL)_updateActiveSensorActivityAttributions
{
  activeSensorActivityAttributions = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  activeAccessSensorActivityAttributions = [(SBSensorActivityDataProvider *)self activeAccessSensorActivityAttributions];
  v5 = [activeAccessSensorActivityAttributions mutableCopy];

  microphoneAttributionsAwaitingMinimumOnTime = [(SBSensorActivityDataProvider *)self microphoneAttributionsAwaitingMinimumOnTime];
  if (microphoneAttributionsAwaitingMinimumOnTime)
  {
    [v5 unionSet:microphoneAttributionsAwaitingMinimumOnTime];
  }

  cameraAttributionsAwaitingMinimumOnTime = [(SBSensorActivityDataProvider *)self cameraAttributionsAwaitingMinimumOnTime];
  if (cameraAttributionsAwaitingMinimumOnTime)
  {
    [v5 unionSet:cameraAttributionsAwaitingMinimumOnTime];
  }

  [(SBSensorActivityDataProvider *)self setActiveSensorActivityAttributions:v5];
  v8 = [activeSensorActivityAttributions isEqual:v5];

  return v8 ^ 1;
}

- (void)_notifyObserversOfActivityChange
{
  v16 = *MEMORY[0x277D85DE8];
  observers = [(SBSensorActivityDataProvider *)self observers];
  v4 = [observers copy];

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
  activeSensorActivityAttributions = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v3 = [activeSensorActivityAttributions objectsPassingTest:&__block_literal_global_249];

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
  activeSensorActivityAttributions = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v4 = [activeSensorActivityAttributions mutableCopy];

  recentSensorActivityAttributions = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  [v4 unionSet:recentSensorActivityAttributions];

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
  _applicationEligibleForInactiveMicModeSelection = [(SBSensorActivityDataProvider *)self _applicationEligibleForInactiveMicModeSelection];
  v4 = [(SBSensorActivityDataProvider *)self _inactiveMicModeSelectionSensorActivityDataFromApplication:_applicationEligibleForInactiveMicModeSelection];

  return v4;
}

- (id)_applicationEligibleForInactiveMicModeSelection
{
  if (!_os_feature_enabled_impl())
  {
    application = 0;
    goto LABEL_12;
  }

  windowSceneManager = [SBApp windowSceneManager];
  embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];

  lockScreenManager = [embeddedDisplayWindowScene lockScreenManager];
  isUILocked = [lockScreenManager isUILocked];
  switcherController = [embeddedDisplayWindowScene switcherController];
  v7 = switcherController;
  if ((isUILocked & 1) == 0 && [switcherController unlockedEnvironmentMode] == 3)
  {
    layoutStatePrimaryElement = [v7 layoutStatePrimaryElement];
    workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    sceneHandle = [applicationSceneEntity sceneHandle];
    application = [sceneHandle application];

    info = [application info];
    if ([info supportsInactiveMicModeSelection])
    {
      iconController = [embeddedDisplayWindowScene iconController];
      bundleIdentifier = [application bundleIdentifier];
      v16 = [iconController isIconVisibleForBundleIdentifier:bundleIdentifier];

      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  application = 0;
LABEL_11:

LABEL_12:

  return application;
}

- (NSSet)mutedMicrophoneSensorActivityData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  activeSensorActivityAttributions = [(SBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__SBSensorActivityDataProvider_ControlCenterUI__mutedMicrophoneSensorActivityData__block_invoke;
  v9[3] = &unk_2783BABA8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [activeSensorActivityAttributions enumerateObjectsUsingBlock:v9];
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
  mostRecentCameraAndMicrophoneSensorActivityAttribution = [(SBSensorActivityDataProvider *)self mostRecentCameraAndMicrophoneSensorActivityAttribution];
  v4 = [(SBSensorActivityDataProvider *)self _sensorActivityDataFromSensorActivityAttribution:mostRecentCameraAndMicrophoneSensorActivityAttribution];

  [v4 setUsedRecently:1];

  return v4;
}

- (id)_sensorActivityDataFromSensorActivityAttribution:(id)attribution
{
  attributionCopy = attribution;
  sensor = [attributionCopy sensor];
  if (attributionCopy)
  {
    v5 = sensor;
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
    displayName = [attributionCopy displayName];
    [v7 setDisplayName:displayName];

    [v7 setUsedRecently:{objc_msgSend(attributionCopy, "usedRecently")}];
    bundleIdentifier = [attributionCopy bundleIdentifier];
    [v7 setBundleIdentifier:bundleIdentifier];

    attributionGroup = [attributionCopy attributionGroup];
    [v7 setAttributionGroup:attributionGroup];

    website = [attributionCopy website];
    [v7 setWebsite:website];

    [v7 setIsSystemService:{objc_msgSend(attributionCopy, "isSystemService")}];
    executableDisplayName = [attributionCopy executableDisplayName];
    [v7 setExecutableDisplayName:executableDisplayName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_inactiveMicModeSelectionSensorActivityDataFromApplication:(id)application
{
  if (application)
  {
    v3 = MEMORY[0x277CFC9B8];
    applicationCopy = application;
    v5 = objc_alloc_init(v3);
    [v5 setSensorType:1];
    displayName = [applicationCopy displayName];
    [v5 setDisplayName:displayName];
    bundleIdentifier = [applicationCopy bundleIdentifier];

    [v5 setBundleIdentifier:bundleIdentifier];
    [v5 setExecutableDisplayName:displayName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBSensorActivityDataProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSensorActivityDataProvider.m" lineNumber:43 description:@"call initWithSystemStatusServer:"];

  null = [MEMORY[0x277CBEB68] null];
  v6 = [(SBSensorActivityDataProvider *)self initWithSystemStatusServer:null];

  return v6;
}

- (SBSensorActivityDataProvider)initWithSystemStatusServer:(id)server
{
  serverCopy = server;
  v21.receiver = self;
  v21.super_class = SBSensorActivityDataProvider;
  v5 = [(SBSensorActivityDataProvider *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(SBSecureIndicatorMinimumOnTimeCoordinator);
    minimumOnTimeCoordinator = v5->_minimumOnTimeCoordinator;
    v5->_minimumOnTimeCoordinator = v6;

    v8 = [objc_alloc(MEMORY[0x277D6B958]) initWithServerHandle:serverCopy];
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
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    data = [(STDataAccessStatusDomain *)v5->_dataAccessDomain data];
    [(SBSensorActivityDataProvider *)v5 _handleNewDomainData:data];

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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SBSensorActivityDataProvider *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SBSensorActivityDataProvider *)self observers];
  [observers removeObject:observerCopy];
}

- (SBSensorActivityAttribution)mostRecentCameraAndMicrophoneSensorActivityAttribution
{
  v19 = *MEMORY[0x277D85DE8];
  _recentCameraAndMicrophoneActivityAttributions = [(SBSensorActivityDataProvider *)self _recentCameraAndMicrophoneActivityAttributions];
  lastObject = [_recentCameraAndMicrophoneActivityAttributions lastObject];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = _recentCameraAndMicrophoneActivityAttributions;
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
        if (v9 != lastObject)
        {
          bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
          bundleIdentifier2 = [lastObject bundleIdentifier];
          if ([bundleIdentifier isEqualToString:bundleIdentifier2])
          {
            sensor = [v9 sensor];

            if (sensor)
            {
              continue;
            }

            bundleIdentifier = lastObject;
            lastObject = v9;
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

  return lastObject;
}

- (id)_recentCameraAndMicrophoneActivityAttributions
{
  v17 = *MEMORY[0x277D85DE8];
  recentSensorActivityAttributions = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = recentSensorActivityAttributions;
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
          [array addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [array copy];

  return v10;
}

- (void)_handleNewDomainData:(id)data
{
  dataCopy = data;
  activeAccessSensorActivityAttributions = [(SBSensorActivityDataProvider *)self activeAccessSensorActivityAttributions];
  v6 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:1 fromAttributions:activeAccessSensorActivityAttributions];
  v33 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:0 fromAttributions:activeAccessSensorActivityAttributions];
  recentSensorActivityAttributions = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  if (dataCopy)
  {
    activeAttributionData = [dataCopy activeAttributionData];
    dataAccessAttributions = [activeAttributionData dataAccessAttributions];

    v9 = MEMORY[0x277CBEB98];
    v10 = [dataAccessAttributions bs_compactMap:&__block_literal_global_17_0];
    v11 = [v9 setWithArray:v10];

    [(SBSensorActivityDataProvider *)self setActiveAccessSensorActivityAttributions:v11];
    recentAttributionData = [dataCopy recentAttributionData];
    dataAccessAttributions2 = [recentAttributionData dataAccessAttributions];

    v14 = MEMORY[0x277CBEB98];
    v15 = [dataAccessAttributions2 bs_compactMap:&__block_literal_global_20_2];
    v16 = [v14 setWithArray:v15];

    [(SBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:v16];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB98] set];
    [(SBSensorActivityDataProvider *)self setActiveAccessSensorActivityAttributions:v17];

    dataAccessAttributions = [MEMORY[0x277CBEB98] set];
    [(SBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:dataAccessAttributions];
  }

  activeAccessSensorActivityAttributions2 = [(SBSensorActivityDataProvider *)self activeAccessSensorActivityAttributions];
  v19 = [activeAccessSensorActivityAttributions mutableCopy];
  [v19 minusSet:activeAccessSensorActivityAttributions2];
  v20 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:1 fromAttributions:activeAccessSensorActivityAttributions2];
  v21 = [(SBSensorActivityDataProvider *)self _attributionsWithSensorType:0 fromAttributions:activeAccessSensorActivityAttributions2];
  if ([v20 count])
  {
    microphoneMinimumOnTimeRegistration = [(SBSensorActivityDataProvider *)self microphoneMinimumOnTimeRegistration];
    [microphoneMinimumOnTimeRegistration invalidate];

    [(SBSensorActivityDataProvider *)self setMicrophoneMinimumOnTimeRegistration:0];
    [(SBSensorActivityDataProvider *)self setMicrophoneAttributionsAwaitingMinimumOnTime:0];
  }

  else if ([v6 count])
  {
    [(SBSensorActivityDataProvider *)self setMicrophoneAttributionsAwaitingMinimumOnTime:v6];
    minimumOnTimeCoordinator = [(SBSensorActivityDataProvider *)self minimumOnTimeCoordinator];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke_3;
    v36[3] = &unk_2783A8C18;
    v36[4] = self;
    v24 = [minimumOnTimeCoordinator performWhenMinimumOnTimeIsSatisfiedForIndicators:1 block:v36];

    [(SBSensorActivityDataProvider *)self setMicrophoneMinimumOnTimeRegistration:v24];
  }

  v32 = dataCopy;
  v25 = v6;
  if ([v21 count])
  {
    cameraMinimumOnTimeRegistration = [(SBSensorActivityDataProvider *)self cameraMinimumOnTimeRegistration];
    [cameraMinimumOnTimeRegistration invalidate];

    [(SBSensorActivityDataProvider *)self setCameraMinimumOnTimeRegistration:0];
    [(SBSensorActivityDataProvider *)self setCameraAttributionsAwaitingMinimumOnTime:0];
  }

  else if ([v33 count])
  {
    [(SBSensorActivityDataProvider *)self setCameraAttributionsAwaitingMinimumOnTime:v33];
    minimumOnTimeCoordinator2 = [(SBSensorActivityDataProvider *)self minimumOnTimeCoordinator];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__SBSensorActivityDataProvider__handleNewDomainData___block_invoke_4;
    v35[3] = &unk_2783A8C18;
    v35[4] = self;
    v28 = [minimumOnTimeCoordinator2 performWhenMinimumOnTimeIsSatisfiedForIndicators:2 block:v35];

    [(SBSensorActivityDataProvider *)self setCameraMinimumOnTimeRegistration:v28];
  }

  _updateActiveSensorActivityAttributions = [(SBSensorActivityDataProvider *)self _updateActiveSensorActivityAttributions];
  recentSensorActivityAttributions2 = [(SBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  v31 = [recentSensorActivityAttributions isEqualToSet:recentSensorActivityAttributions2];

  if (_updateActiveSensorActivityAttributions || !v31)
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

- (id)_attributionsWithSensorType:(int64_t)type fromAttributions:(id)attributions
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SBSensorActivityDataProvider__attributionsWithSensorType_fromAttributions___block_invoke;
  v6[3] = &__block_descriptor_40_e37_B16__0__SBSensorActivityAttribution_8l;
  v6[4] = type;
  v4 = [attributions bs_filter:v6];

  return v4;
}

@end