@interface SBSSKExternalDisplayService
- (SBSSKExternalDisplayService)init;
- (SBSSKExternalDisplayService)initWithServiceListenerFactory:(id)a3 connectedDisplayInfoFactory:(id)a4 defaults:(id)a5;
- (id)_extendedModeDisplayConfigurationForHardwareIdentifier:(id)a3 error:(id *)a4;
- (void)_notifyOfPropertyChangesForDisplayConfiguration:(id)a3 requestingClient:(id)a4;
- (void)addObserver:(id)a3;
- (void)client:(id)a3 getConnectedDisplayInfoWithCompletion:(id)a4;
- (void)client:(id)a3 setDisplayArrangement:(id)a4 forDisplay:(id)a5;
- (void)client:(id)a3 setDisplayMirroringEnabled:(id)a4 forDisplay:(id)a5;
- (void)client:(id)a3 setDisplayModeSettings:(id)a4 forDisplay:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)dealloc;
- (void)didConnectParticipant:(id)a3;
- (void)removeObserver:(id)a3;
- (void)willDisconnectParticipant:(id)a3;
@end

@implementation SBSSKExternalDisplayService

- (SBSSKExternalDisplayService)init
{
  v3 = objc_alloc_init(SBExternalDisplayServiceConnectionListenerFactory);
  v4 = objc_alloc_init(SBSConnectedDisplayInfoFactory);
  v5 = +[SBDefaults localDefaults];
  v6 = [v5 externalDisplayDefaults];
  v7 = [(SBSSKExternalDisplayService *)self initWithServiceListenerFactory:v3 connectedDisplayInfoFactory:v4 defaults:v6];

  return v7;
}

- (SBSSKExternalDisplayService)initWithServiceListenerFactory:(id)a3 connectedDisplayInfoFactory:(id)a4 defaults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = SBSSKExternalDisplayService;
  v11 = [(SBSSKExternalDisplayService *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_connectedDisplayInfoFactory, a4);
    objc_storeStrong(&v12->_defaults, a5);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    rootToConnectedParticipants = v12->_rootToConnectedParticipants;
    v12->_rootToConnectedParticipants = v13;

    v15 = BSDispatchQueueCreateWithQualityOfService();
    serviceQueue = v12->_serviceQueue;
    v12->_serviceQueue = v15;

    v17 = [v8 newExternalDisplayServiceListenerForDelegate:v12 serviceQueue:v12->_serviceQueue];
    serviceConnectionListener = v12->_serviceConnectionListener;
    v12->_serviceConnectionListener = v17;
  }

  return v12;
}

- (void)dealloc
{
  [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener invalidate];
  v3.receiver = self;
  v3.super_class = SBSSKExternalDisplayService;
  [(SBSSKExternalDisplayService *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)didConnectParticipant:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 displayConfiguration];
  v6 = [v5 identity];

  v7 = [v6 rootIdentity];
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
    [SBSSKExternalDisplayService didConnectParticipant:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBSSKExternalDisplayService didConnectParticipant:];
LABEL_3:
  v9 = [(NSMutableDictionary *)self->_rootToConnectedParticipants objectForKey:v8];
  v10 = [v9 mutableCopy];

  v11 = v10;
  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  [v11 addObject:v4];
  [(NSMutableDictionary *)self->_rootToConnectedParticipants setObject:v11 forKey:v8];
  if (!v10 && [v4 isExtendedDisplayCapable])
  {
    v12 = SBLogDisplayControlling();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: connected extended display capable participant with identity: %{public}@", &v16, 0xCu);
    }

    connectedDisplayInfoFactory = self->_connectedDisplayInfoFactory;
    v14 = [v4 displayConfiguration];
    v15 = [(SBSConnectedDisplayInfoFactory *)connectedDisplayInfoFactory connectedDisplayInfoForDisplayConfiguration:v14 externalDisplayDefaults:self->_defaults];

    [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener notifyObserversExternalDisplayDidConnect:v15];
  }
}

- (void)willDisconnectParticipant:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 displayConfiguration];
  v6 = [v5 identity];

  v7 = [v6 rootIdentity];
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
    [SBSSKExternalDisplayService willDisconnectParticipant:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [SBSSKExternalDisplayService willDisconnectParticipant:];
LABEL_3:
  v9 = [(NSMutableDictionary *)self->_rootToConnectedParticipants objectForKey:v8];
  v10 = [v9 mutableCopy];

  if (([v10 containsObject:v4] & 1) == 0)
  {
    [SBSSKExternalDisplayService willDisconnectParticipant:];
  }

  [v10 removeObject:v4];
  v11 = [v10 count];
  rootToConnectedParticipants = self->_rootToConnectedParticipants;
  if (v11)
  {
    [(NSMutableDictionary *)rootToConnectedParticipants setObject:v10 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)rootToConnectedParticipants removeObjectForKey:v8];
    if ([v4 isExtendedDisplayCapable])
    {
      v13 = SBLogDisplayControlling();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = v6;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: disconnected extended display capable participant with identity: %{public}@", &v17, 0xCu);
      }

      connectedDisplayInfoFactory = self->_connectedDisplayInfoFactory;
      v15 = [v4 displayConfiguration];
      v16 = [(SBSConnectedDisplayInfoFactory *)connectedDisplayInfoFactory connectedDisplayInfoForDisplayConfiguration:v15 externalDisplayDefaults:self->_defaults];

      [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener notifyObserversExternalDisplayWillDisconnect:v16];
    }
  }
}

- (void)client:(id)a3 getConnectedDisplayInfoWithCompletion:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

void __76__SBSSKExternalDisplayService_client_getConnectedDisplayInfoWithCompletion___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__98;
  v12 = __Block_byref_object_dispose__98;
  v13 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SBSSKExternalDisplayService_client_getConnectedDisplayInfoWithCompletion___block_invoke_22;
  v7[3] = &unk_2783BD550;
  v7[4] = v2;
  v7[5] = &v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v4 = *(a1 + 40);
  v5 = v9[5];
  if (v5)
  {
    v14[0] = v9[5];
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  (*(v4 + 16))(v4, v6, 0);
  if (v5)
  {
  }

  _Block_object_dispose(&v8, 8);
}

void __76__SBSSKExternalDisplayService_client_getConnectedDisplayInfoWithCompletion___block_invoke_22(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isExtendedDisplayCapable])
        {
          v12 = *(*(a1 + 32) + 16);
          v13 = [v11 displayConfiguration];
          v14 = [v12 connectedDisplayInfoForDisplayConfiguration:v13 externalDisplayDefaults:*(*(a1 + 32) + 32)];
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 40);
          *(v15 + 40) = v14;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (void)client:(id)a3 setDisplayArrangement:(id)a4 forDisplay:(id)a5
{
  v7 = a3;
  v8 = a4;
  v12 = a5;
  v13 = v8;
  v9 = v8;
  v10 = v12;
  v11 = v7;
  BSDispatchMain();
}

void __71__SBSSKExternalDisplayService_client_setDisplayArrangement_forDisplay___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v28 = v3;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: client %{public}@ is setting displayArrangement for display: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v25 = 0;
  v7 = [v5 _extendedModeDisplayConfigurationForHardwareIdentifier:v6 error:&v25];
  v8 = v25;
  if (v7)
  {
    v9 = [*(a1 + 56) edge];
    [*(a1 + 56) offset];
    v11 = v10;
    if (v9 != [*(*(a1 + 48) + 32) arrangementEdge] || (objc_msgSend(*(*(a1 + 48) + 32), "arrangementOffset"), v11 != v12))
    {
      [*(*(a1 + 48) + 32) setArrangementEdge:v9];
      [*(*(a1 + 48) + 32) setArrangementOffset:v11];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = [*(*(a1 + 48) + 48) copy];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          v17 = 0;
          do
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v21 + 1) + 8 * v17++) externalDisplayServiceDidUpdatePreferredDisplayArrangement:*(a1 + 48)];
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v15);
      }

      [*(a1 + 48) _notifyOfPropertyChangesForDisplayConfiguration:v7 requestingClient:*(a1 + 32)];
    }
  }

  else
  {
    v18 = SBLogDisplayControlling();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: client %{public}@ cannot set display arrangement for display: %{public}@ due to error: %{public}@", buf, 0x20u);
    }
  }
}

- (void)client:(id)a3 setDisplayMirroringEnabled:(id)a4 forDisplay:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  v10 = v7;
  BSDispatchMain();
}

void __76__SBSSKExternalDisplayService_client_setDisplayMirroringEnabled_forDisplay___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) BOOLValue];
    v5 = *(a1 + 48);
    *buf = 138543874;
    v20 = v3;
    v21 = 1024;
    v22 = v4;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: client %{public}@ is setting mirroringEnabled %{BOOL}u for display: %{public}@", buf, 0x1Cu);
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v18 = 0;
  v8 = [v6 _extendedModeDisplayConfigurationForHardwareIdentifier:v7 error:&v18];
  v9 = v18;
  if (v8)
  {
    v10 = [*(a1 + 40) BOOLValue];
    if (v10 != [*(*(a1 + 56) + 32) isMirroringEnabled])
    {
      v11 = SBLogDisplayControlling();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v20) = v10;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: setting mirroringEnabled to: %{BOOL}u", buf, 8u);
      }

      v12 = +[SBDefaults localDefaults];
      v13 = [v12 appSwitcherDefaults];
      [v13 setShouldUpdateExternalDisplayMirroringWhenWindowManagementStyleUpdates:0];

      [*(*(a1 + 56) + 32) setMirroringEnabled:v10];
      [*(a1 + 56) _notifyOfPropertyChangesForDisplayConfiguration:v8 requestingClient:*(a1 + 32)];
    }
  }

  else
  {
    v14 = SBLogDisplayControlling();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) BOOLValue];
      v17 = *(a1 + 48);
      *buf = 138544130;
      v20 = v15;
      v21 = 1024;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: client %{public}@ cannot set mirroringEnabled %{BOOL}u for display: %{public}@ due to error: %{public}@", buf, 0x26u);
    }
  }
}

- (void)client:(id)a3 setDisplayModeSettings:(id)a4 forDisplay:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v18 = v11;
  v19 = a5;
  v20 = v12;
  v21 = a6;
  v22 = a7;
  v13 = v22;
  v14 = v21;
  v15 = v12;
  v16 = v19;
  v17 = v11;
  BSDispatchMain();
}

void __98__SBSSKExternalDisplayService_client_setDisplayModeSettings_forDisplay_options_completionHandler___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = SBLogDisplayControlling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v24 = v3;
    v25 = 2114;
    v26 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService: client %{public}@ is setting displayMode settings for display: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v22 = 0;
  v7 = [v5 _extendedModeDisplayConfigurationForHardwareIdentifier:v6 error:&v22];
  v8 = v22;
  if (v7)
  {
    v9 = [MEMORY[0x277D65DB0] withDisplay:v7];
    v10 = [v9 supportedScales];

    [*(a1 + 56) scale];
    if ((SBSDisplayScaleMaskFromScale() & ~v10) != 0)
    {
      v16 = @"<nil>";
      if (*(a1 + 40))
      {
        v16 = *(a1 + 40);
      }

      v29 = @"displayHardwareIdentifier";
      v30[0] = v16;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D66FB0] code:3 userInfo:v14];

      v8 = v17;
    }

    else
    {
      v11 = [*(a1 + 64) integerValue];
      v12 = MEMORY[0x277CBEB58];
      v13 = [MEMORY[0x277D65DA8] forDisplay:v7];
      v14 = [v12 setWithObject:v13];

      if ((v11 & 2) != 0)
      {
        v15 = [MEMORY[0x277D65DA8] forDisplaysSimilarToDisplay:v7];
        [v14 addObject:v15];
      }

      [*(*(a1 + 48) + 32) setDisplayModeSettings:*(a1 + 56) forDisplaysMatchingPredicates:v14];
      [*(a1 + 48) _notifyOfPropertyChangesForDisplayConfiguration:v7 requestingClient:*(a1 + 32)];
    }
  }

  if (v8)
  {
    v18 = SBLogDisplayControlling();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v24 = v19;
      v25 = 2114;
      v26 = v20;
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "SBSSKExternalDisplayService  : client %{public}@ cannot set displayMode settings for display: %{public}@ due to error: %{public}@", buf, 0x20u);
    }
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    (*(v21 + 16))(v21, v8);
  }
}

- (id)_extendedModeDisplayConfigurationForHardwareIdentifier:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__98;
  v36 = __Block_byref_object_dispose__98;
  v37 = 0;
  rootToConnectedParticipants = self->_rootToConnectedParticipants;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __92__SBSSKExternalDisplayService__extendedModeDisplayConfigurationForHardwareIdentifier_error___block_invoke;
  v29[3] = &unk_2783BD578;
  v7 = v5;
  v30 = v7;
  v31 = &v32;
  [(NSMutableDictionary *)rootToConnectedParticipants enumerateKeysAndObjectsUsingBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v33[5];
  v9 = 0;
  v10 = [v8 countByEnumeratingWithState:&v25 objects:v40 count:16];
  if (v10)
  {
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 displayConfiguration];
        v15 = [v14 identity];
        v16 = [v15 sb_displayWindowingMode] == 1;

        if (v16)
        {
          v10 = [v13 displayConfiguration];
          goto LABEL_13;
        }

        if ([v13 isExtendedDisplayCapable])
        {
          v17 = [v13 displayConfiguration];

          v9 = v17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (a4 && !v10)
  {
    if (v7)
    {
      v18 = v7;
    }

    else
    {
      v18 = @"<nil>";
    }

    v38 = @"displayHardwareIdentifier";
    v39 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    if (v33[5])
    {
      if (v9)
      {
LABEL_23:

        goto LABEL_24;
      }

      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D66FB0] code:v20 userInfo:v19];
    goto LABEL_23;
  }

LABEL_24:
  if (v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v9;
  }

  v22 = v21;

  _Block_object_dispose(&v32, 8);

  return v22;
}

void __92__SBSSKExternalDisplayService__extendedModeDisplayConfigurationForHardwareIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = [v11 firstObject];
  v8 = [v7 displayConfiguration];

  if (v8)
  {
    v9 = [v8 hardwareIdentifier];
    v10 = [v9 isEqualToString:*(a1 + 32)];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      *a4 = 1;
    }
  }
}

- (void)_notifyOfPropertyChangesForDisplayConfiguration:(id)a3 requestingClient:(id)a4
{
  connectedDisplayInfoFactory = self->_connectedDisplayInfoFactory;
  defaults = self->_defaults;
  v8 = a4;
  v9 = [(SBSConnectedDisplayInfoFactory *)connectedDisplayInfoFactory connectedDisplayInfoForDisplayConfiguration:a3 externalDisplayDefaults:defaults];
  [(_SBExternalDisplayServiceConnectionListening *)self->_serviceConnectionListener notifyObserversExternalDisplayDidUpdateProperties:v9 requestingClient:v8];
}

- (void)didConnectParticipant:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)didConnectParticipant:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"rootIdentity" object:? file:? lineNumber:? description:?];
}

- (void)willDisconnectParticipant:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)willDisconnectParticipant:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"rootIdentity" object:? file:? lineNumber:? description:?];
}

- (void)willDisconnectParticipant:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end