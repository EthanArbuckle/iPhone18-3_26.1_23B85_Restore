@interface SBHardwareButtonService
+ (SBHardwareButtonService)sharedInstance;
- (BOOL)_hwButtonHintViewsSupported;
- (BOOL)_sendEvent:(int64_t)event buttonKind:(int64_t)kind withPriority:(int64_t)priority continuation:(id *)continuation;
- (BOOL)consumeHeadsetPlayPauseSinglePressDownWithPriority:(int64_t)priority continuation:(id *)continuation;
- (BOOL)consumeVolumeDecreaseButtonSinglePressDownWithPriority:(int64_t)priority continuation:(id *)continuation;
- (BOOL)consumeVolumeIncreaseButtonSinglePressDownWithPriority:(int64_t)priority continuation:(id *)continuation;
- (BOOL)hasConsumersForHomeButtonPresses;
- (BOOL)hasConsumersForHomeButtonSinglePress;
- (BOOL)hasConsumersForLockButtonDoublePressUp;
- (BOOL)hasConsumersForLockButtonPresses;
- (BOOL)systemServiceServer:(id)server client:(id)client registerAssociatedHintViewContextId:(unsigned int)id renderId:(unint64_t)renderId size:(CGSize)size buttonKind:(int64_t)kind clientPort:(id)port;
- (BOOL)systemServiceServer:(id)server client:(id)client requestSystemGlowEffectWithInitialStyle:(int64_t)style clientPort:(id)port;
- (BOOL)systemServiceServer:(id)server getHintViewsSupportedForClient:(id)client;
- (SBHardwareButtonService)init;
- (id)_applicationForClientInfo:(id)info;
- (id)_init;
- (id)_initWithSystemServiceServer:(id)server;
- (id)_mutableRegistrationsForButtonKind:(int64_t)kind createIfNecessary:(BOOL)necessary;
- (id)addObserver:(id)observer;
- (void)_addRegistration:(id)registration toClient:(id)client;
- (void)_performButtonRegistrationChangeAndNotifyObservers:(id)observers;
- (void)_process:(id)_process stateDidUpdate:(id)update;
- (void)_reconfigureProcessMonitor;
- (void)_reconfigureProcessMonitorForPredicates:(id)predicates;
- (void)_removeRegistration:(id)registration fromClient:(id)client;
- (void)_sendXPCMessageForEvent:(int64_t)event buttonKind:(int64_t)kind priority:(int64_t)priority toClient:(id)client;
- (void)_setSystemServiceClient:(id)client buttonKind:(int64_t)kind eventMask:(unint64_t)mask priority:(int64_t)priority;
- (void)_updateAllButtonEventMasks;
- (void)_updateEventMasksForButtonKind:(int64_t)kind;
- (void)systemServiceServer:(id)server client:(id)client acquireAssertionOfType:(int64_t)type forReason:(id)reason withCompletion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client fetchHapticTypeForButtonKind:(int64_t)kind completion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client requestsHIDEvents:(BOOL)events token:(id)token forButtonKind:(int64_t)kind;
- (void)systemServiceServer:(id)server client:(id)client setEventMask:(unint64_t)mask buttonKind:(int64_t)kind priority:(int64_t)priority;
- (void)systemServiceServer:(id)server client:(id)client setHapticType:(int64_t)type buttonKind:(int64_t)kind;
- (void)systemServiceServer:(id)server client:(id)client updateHintContentVisibility:(int64_t)visibility forButton:(int64_t)button animationSettings:(id)settings;
- (void)systemServiceServer:(id)server client:(id)client updateSystemGlowStyle:(int64_t)style;
- (void)systemServiceServer:(id)server clientDidDisconnect:(id)disconnect;
@end

@implementation SBHardwareButtonService

- (void)_reconfigureProcessMonitor
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  clientsByPID = self->_clientsByPID;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SBHardwareButtonService__reconfigureProcessMonitor__block_invoke;
  v6[3] = &unk_2783B57E0;
  v7 = v3;
  v5 = v3;
  [(BSMutableIntegerMap *)clientsByPID enumerateKeysWithBlock:v6];
  [(SBHardwareButtonService *)self _reconfigureProcessMonitorForPredicates:v5];
}

void __53__SBHardwareButtonService__reconfigureProcessMonitor__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D46FA0];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v5 = [v3 predicateMatchingIdentifier:v4];

  [*(a1 + 32) addObject:v5];
}

- (BOOL)hasConsumersForHomeButtonSinglePress
{
  v2 = [(BSMutableIntegerMap *)self->_eventMaskPerKind objectForKey:1];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return (*&unsignedIntegerValue & 0x10002) != 0;
}

- (BOOL)hasConsumersForHomeButtonPresses
{
  v2 = [(BSMutableIntegerMap *)self->_eventMaskPerKind objectForKey:1];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue != 0;
}

+ (SBHardwareButtonService)sharedInstance
{
  if (sharedInstance_onceToken_22 != -1)
  {
    +[SBHardwareButtonService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_13;

  return v3;
}

void __41__SBHardwareButtonService_sharedInstance__block_invoke()
{
  v0 = [[SBHardwareButtonService alloc] _init];
  v1 = sharedInstance___sharedInstance_13;
  sharedInstance___sharedInstance_13 = v0;
}

- (id)_initWithSystemServiceServer:(id)server
{
  serverCopy = server;
  v17.receiver = self;
  v17.super_class = SBHardwareButtonService;
  v6 = [(SBHardwareButtonService *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D0AAF8]);
    v8 = [v7 initWithEntitlement:*MEMORY[0x277D66FD0]];
    serviceClientHomeHardwareButtonHintSuppressionEntitlementAuthenticator = v6->_serviceClientHomeHardwareButtonHintSuppressionEntitlementAuthenticator;
    v6->_serviceClientHomeHardwareButtonHintSuppressionEntitlementAuthenticator = v8;

    v10 = objc_alloc(MEMORY[0x277D0AAF8]);
    v11 = [v10 initWithEntitlement:*MEMORY[0x277D66FC8]];
    serviceClientEventConsumerEntitlement = v6->_serviceClientEventConsumerEntitlement;
    v6->_serviceClientEventConsumerEntitlement = v11;

    v13 = objc_alloc(MEMORY[0x277D0AAF8]);
    v14 = [v13 initWithEntitlement:*MEMORY[0x277D66FC0]];
    serviceClientHintViewEntitlement = v6->_serviceClientHintViewEntitlement;
    v6->_serviceClientHintViewEntitlement = v14;

    [serverCopy setHardwareButtonDelegate:v6];
    objc_storeStrong(&v6->_systemServiceServer, server);
  }

  return v6;
}

- (id)_init
{
  v3 = +[SBSystemServiceServer sharedInstance];
  v4 = [(SBHardwareButtonService *)self _initWithSystemServiceServer:v3];

  return v4;
}

- (SBHardwareButtonService)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE648];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"%@ does not support initialization.", v6}];

  return [(SBHardwareButtonService *)self _init];
}

- (id)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = objc_alloc(MEMORY[0x277CF0CE8]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __39__SBHardwareButtonService_addObserver___block_invoke;
  v15 = &unk_2783B18A8;
  selfCopy = self;
  v6 = observerCopy;
  v17 = v6;
  v7 = [v5 initWithIdentifier:@"SBHardwareButtonServiceObserver" forReason:@"buttons!" invalidationBlock:&v12];
  observers = self->_observers;
  if (!observers)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = self->_observers;
    self->_observers = v9;

    observers = self->_observers;
  }

  [(NSMutableArray *)observers addObject:v6, v12, v13, v14, v15, selfCopy];

  return v7;
}

- (BOOL)hasConsumersForLockButtonPresses
{
  v2 = [(BSMutableIntegerMap *)self->_eventMaskPerKind objectForKey:2];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue != 0;
}

- (BOOL)hasConsumersForLockButtonDoublePressUp
{
  v2 = [(BSMutableIntegerMap *)self->_eventMaskPerKind objectForKey:2];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return (*&unsignedIntegerValue & 0x10008) != 0;
}

- (BOOL)consumeVolumeIncreaseButtonSinglePressDownWithPriority:(int64_t)priority continuation:(id *)continuation
{
  v13 = 0;
  v6 = [(SBHardwareButtonService *)self _sendEvent:6 buttonKind:3 withPriority:priority continuation:&v13];
  v7 = MEMORY[0x223D6F7F0](v13);
  v8 = v7;
  if (v6 && v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__SBHardwareButtonService_consumeVolumeIncreaseButtonSinglePressDownWithPriority_continuation___block_invoke;
    v10[3] = &unk_2783B2E30;
    v11 = v7;
    priorityCopy = priority;
    *continuation = MEMORY[0x223D6F7F0](v10);
  }

  return v6;
}

- (BOOL)consumeVolumeDecreaseButtonSinglePressDownWithPriority:(int64_t)priority continuation:(id *)continuation
{
  v13 = 0;
  v6 = [(SBHardwareButtonService *)self _sendEvent:6 buttonKind:4 withPriority:priority continuation:&v13];
  v7 = MEMORY[0x223D6F7F0](v13);
  v8 = v7;
  if (v6 && v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __95__SBHardwareButtonService_consumeVolumeDecreaseButtonSinglePressDownWithPriority_continuation___block_invoke;
    v10[3] = &unk_2783B2E30;
    v11 = v7;
    priorityCopy = priority;
    *continuation = MEMORY[0x223D6F7F0](v10);
  }

  return v6;
}

- (BOOL)consumeHeadsetPlayPauseSinglePressDownWithPriority:(int64_t)priority continuation:(id *)continuation
{
  v13 = 0;
  v6 = [(SBHardwareButtonService *)self _sendEvent:6 buttonKind:5 withPriority:priority continuation:&v13];
  v7 = MEMORY[0x223D6F7F0](v13);
  v8 = v7;
  if (v6 && v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __91__SBHardwareButtonService_consumeHeadsetPlayPauseSinglePressDownWithPriority_continuation___block_invoke;
    v10[3] = &unk_2783B2E30;
    v11 = v7;
    priorityCopy = priority;
    *continuation = MEMORY[0x223D6F7F0](v10);
  }

  return v6;
}

- (void)_process:(id)_process stateDidUpdate:(id)update
{
  v38 = *MEMORY[0x277D85DE8];
  _processCopy = _process;
  updateCopy = update;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    state = [updateCopy state];
    endowmentNamespaces = [state endowmentNamespaces];
    *buf = 138543874;
    *v34 = _processCopy;
    *&v34[8] = 2114;
    v35 = updateCopy;
    v36 = 2114;
    v37 = endowmentNamespaces;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "process %{public}@ update:%{public}@ endowments:%{public}@", buf, 0x20u);
  }

  v11 = _processCopy;
  v28 = [_processCopy pid];
  selfCopy = self;
  v12 = [(BSMutableIntegerMap *)self->_clientsByPID objectForKey:v28];
  state2 = [updateCopy state];
  previousState = [updateCopy previousState];
  taskState = [state2 taskState];
  v16 = MEMORY[0x277D0AC90];
  if (taskState == 4)
  {
    endowmentNamespaces2 = [state2 endowmentNamespaces];
    v18 = [endowmentNamespaces2 containsObject:*v16];
  }

  else
  {
    v18 = 0;
  }

  if ([previousState taskState] == 4)
  {
    endowmentNamespaces3 = [previousState endowmentNamespaces];
    v20 = [endowmentNamespaces3 containsObject:*v16];
  }

  else
  {
    v20 = 0;
  }

  canReceiveEvents = [v12 canReceiveEvents];
  if (v20 != v18)
  {
    v22 = SBLogButtonsInteraction();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v23)
      {
        *buf = 138543362;
        *v34 = v11;
        v24 = "process is running / visible:%{public}@";
LABEL_15:
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
      }
    }

    else if (v23)
    {
      *buf = 138543362;
      *v34 = v11;
      v24 = "process is not running / not visible:%{public}@";
      goto LABEL_15;
    }

    [v12 setRunningVisible:v18];
  }

  [v12 setSuspended:taskState == 3];
  canReceiveEvents2 = [v12 canReceiveEvents];
  if (canReceiveEvents != canReceiveEvents2)
  {
    v26 = canReceiveEvents2;
    v27 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v34 = v28;
      *&v34[4] = 1024;
      *&v34[6] = canReceiveEvents;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = v26;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "pid %d canReceiveEvents previously:%{BOOL}u now:%{BOOL}u", buf, 0x14u);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__SBHardwareButtonService__process_stateDidUpdate___block_invoke;
    v30[3] = &unk_2783A92D8;
    v31 = v12;
    v32 = selfCopy;
    [(SBHardwareButtonService *)selfCopy _performButtonRegistrationChangeAndNotifyObservers:v30];
  }
}

void __51__SBHardwareButtonService__process_stateDidUpdate___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) registrations];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _updateEventMasksForButtonKind:{objc_msgSend(*(*(&v7 + 1) + 8 * v6++), "buttonKind")}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_updateEventMasksForButtonKind:(int64_t)kind
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(SBHardwareButtonService *)self _mutableRegistrationsForButtonKind:kind createIfNecessary:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        client = [v11 client];
        canReceiveEvents = [client canReceiveEvents];

        if (canReceiveEvents)
        {
          v8 |= [v11 eventMask];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (!self->_eventMaskPerKind)
  {
    v14 = objc_alloc_init(MEMORY[0x277CF0C68]);
    eventMaskPerKind = self->_eventMaskPerKind;
    self->_eventMaskPerKind = v14;
  }

  v16 = self->_eventMaskPerKind;
  if (v8)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    [(BSMutableIntegerMap *)v16 setObject:v17 forKey:kind];
  }

  else
  {
    [(BSMutableIntegerMap *)v16 removeObjectForKey:kind];
  }

  v18 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = NSStringFromSBSHardwareButtonKind();
    *buf = 138543618;
    v25 = v19;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "_updateEventMasksForButtonKind:%{public}@ eventMask:%lX", buf, 0x16u);
  }
}

- (void)_updateAllButtonEventMasks
{
  for (i = 1; i != 11; ++i)
  {
    [(SBHardwareButtonService *)self _updateEventMasksForButtonKind:i];
  }
}

- (void)_performButtonRegistrationChangeAndNotifyObservers:(id)observers
{
  v22 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  v5 = [(BSMutableIntegerMap *)self->_eventMaskPerKind copy];
  observersCopy[2](observersCopy);
  v6 = self->_eventMaskPerKind;
  for (i = 1; i != 11; ++i)
  {
    v8 = [v5 objectForKey:i];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    v10 = [(BSMutableIntegerMap *)v6 objectForKey:i];
    unsignedIntegerValue2 = [v10 unsignedIntegerValue];

    if (unsignedIntegerValue != unsignedIntegerValue2)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = self->_observers;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v17 + 1) + 8 * v16++) buttonService:self buttonKind:i eventsConsumedDidChange:unsignedIntegerValue2];
          }

          while (v14 != v16);
          v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)_reconfigureProcessMonitorForPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v5 = predicatesCopy;
  if (predicatesCopy && [predicatesCopy count])
  {
    processMonitor = self->_processMonitor;
    if (processMonitor)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __67__SBHardwareButtonService__reconfigureProcessMonitorForPredicates___block_invoke_4;
      v11[3] = &unk_2783AD408;
      v12 = v5;
      [(RBSProcessMonitor *)processMonitor updateConfiguration:v11];
      v7 = v12;
    }

    else
    {
      v8 = MEMORY[0x277D46F80];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __67__SBHardwareButtonService__reconfigureProcessMonitorForPredicates___block_invoke;
      v13[3] = &unk_2783AD3E0;
      v13[4] = self;
      v14 = v5;
      v9 = [v8 monitorWithConfiguration:v13];
      v10 = self->_processMonitor;
      self->_processMonitor = v9;

      v7 = v14;
    }
  }

  else
  {
    [(RBSProcessMonitor *)self->_processMonitor invalidate];
    v7 = self->_processMonitor;
    self->_processMonitor = 0;
  }
}

void __67__SBHardwareButtonService__reconfigureProcessMonitorForPredicates___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D46FB0];
  v4 = a2;
  v5 = [v3 descriptor];
  v8[0] = *MEMORY[0x277D0AC90];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v5 setEndowmentNamespaces:v6];

  [v4 setStateDescriptor:v5];
  [v4 setServiceClass:33];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SBHardwareButtonService__reconfigureProcessMonitorForPredicates___block_invoke_2;
  v7[3] = &unk_2783AD3B8;
  v7[4] = *(a1 + 32);
  [v4 setUpdateHandler:v7];
  [v4 setPredicates:*(a1 + 40)];
}

void __67__SBHardwareButtonService__reconfigureProcessMonitorForPredicates___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  BSDispatchMain();
}

- (id)_mutableRegistrationsForButtonKind:(int64_t)kind createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v7 = [(BSMutableIntegerMap *)self->_registrationsByButtonKind objectForKey:?];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !necessaryCopy;
  }

  if (!v8)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    registrationsByButtonKind = self->_registrationsByButtonKind;
    if (!registrationsByButtonKind)
    {
      v10 = objc_alloc_init(MEMORY[0x277CF0C68]);
      v11 = self->_registrationsByButtonKind;
      self->_registrationsByButtonKind = v10;

      registrationsByButtonKind = self->_registrationsByButtonKind;
    }

    [(BSMutableIntegerMap *)registrationsByButtonKind setObject:v7 forKey:kind];
  }

  return v7;
}

- (void)_sendXPCMessageForEvent:(int64_t)event buttonKind:(int64_t)kind priority:(int64_t)priority toClient:(id)client
{
  clientCopy = client;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__SBHardwareButtonService__sendXPCMessageForEvent_buttonKind_priority_toClient___block_invoke;
  v15[3] = &__block_descriptor_56_e33_v16__0__NSObject_OS_xpc_object__8l;
  v15[4] = event;
  v15[5] = kind;
  v15[6] = priority;
  v11 = [MEMORY[0x277D0AE28] messageWithPacker:v15];
  systemServiceServer = self->_systemServiceServer;
  v13 = [MEMORY[0x277CBEB98] setWithObject:clientCopy];
  [(FBSServiceFacility *)systemServiceServer sendMessage:v11 withType:0 toClients:v13];

  v14 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SBHardwareButtonService _sendXPCMessageForEvent:clientCopy buttonKind:v14 priority:? toClient:?];
  }
}

void __80__SBHardwareButtonService__sendXPCMessageForEvent_buttonKind_priority_toClient___block_invoke(void *a1, void *a2)
{
  v3 = *MEMORY[0x277D67708];
  v4 = a1[4];
  xdict = a2;
  xpc_dictionary_set_int64(xdict, v3, v4);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D676F0], a1[5]);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D67738], a1[6]);
}

- (BOOL)_sendEvent:(int64_t)event buttonKind:(int64_t)kind withPriority:(int64_t)priority continuation:(id *)continuation
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = [(SBHardwareButtonService *)self _registrationsForButtonKind:kind];
  v11 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSBSHardwareButtonKind();
    *buf = 138543618;
    *v49 = v12;
    *&v49[8] = 2114;
    *&v49[10] = v10;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Registrations for kind:%{public}@ %{public}@", buf, 0x16u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    kindCopy = kind;
    selfCopy = self;
    continuationCopy = continuation;
    v15 = *v45;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v44 + 1) + 8 * v16);
      client = [v17 client];
      eventPriority = [v17 eventPriority];
      if (eventPriority >= priority)
      {
        if ([client canReceiveEvents])
        {
          systemServiceClient = [client systemServiceClient];
          v25 = SBLogButtonsInteraction();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109634;
            *v49 = event;
            *&v49[4] = 2114;
            *&v49[6] = client;
            *&v49[14] = 2114;
            *&v49[16] = v17;
            _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Sending event:%d to %{public}@ (%{public}@)", buf, 0x1Cu);
          }

          eventMask = [v17 eventMask];
          if ((eventMask & (1 << event)) != 0)
          {
            v31 = SBLogButtonsInteraction();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v49 = event;
              _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "Sending %d", buf, 8u);
            }

            v32 = selfCopy;
            [(SBHardwareButtonService *)selfCopy _sendXPCMessageForEvent:event buttonKind:kindCopy priority:priority toClient:systemServiceClient];
            v33 = continuationCopy;
            if (continuationCopy)
            {
              v34 = v43;
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v35 = __75__SBHardwareButtonService__sendEvent_buttonKind_withPriority_continuation___block_invoke;
              goto LABEL_33;
            }

LABEL_34:

            v30 = 1;
            goto LABEL_35;
          }

          v27 = eventMask;
          v28 = SBLogButtonsInteraction();
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
          if ((v27 & 0x10000) != 0)
          {
            if (v29)
            {
              *buf = 0;
              _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Sending any", buf, 2u);
            }

            v32 = selfCopy;
            [(SBHardwareButtonService *)selfCopy _sendXPCMessageForEvent:event buttonKind:kindCopy priority:priority toClient:systemServiceClient];
            v33 = continuationCopy;
            if (continuationCopy)
            {
              v34 = v42;
              v42[0] = MEMORY[0x277D85DD0];
              v42[1] = 3221225472;
              v35 = __75__SBHardwareButtonService__sendEvent_buttonKind_withPriority_continuation___block_invoke_136;
LABEL_33:
              v34[2] = v35;
              v34[3] = &unk_2783B5828;
              v34[4] = v32;
              v34[5] = systemServiceClient;
              *v33 = MEMORY[0x223D6F7F0](v34);
            }

            goto LABEL_34;
          }

          if (v29)
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Client doesn't handle this event", buf, 2u);
          }

          goto LABEL_22;
        }

        systemServiceClient = SBLogButtonsInteraction();
        if (os_log_type_enabled(systemServiceClient, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v49 = client;
          v22 = systemServiceClient;
          v23 = "Client can't receive events: %{public}@";
          v24 = 12;
          goto LABEL_21;
        }
      }

      else
      {
        v20 = eventPriority;
        systemServiceClient = SBLogButtonsInteraction();
        if (os_log_type_enabled(systemServiceClient, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          *v49 = v20;
          *&v49[4] = 1024;
          *&v49[6] = priority;
          *&v49[10] = 2114;
          *&v49[12] = v17;
          v22 = systemServiceClient;
          v23 = "Registration priority %d < required %d: %{public}@";
          v24 = 24;
LABEL_21:
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
        }
      }

LABEL_22:

      if (v14 == ++v16)
      {
        v14 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v14)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v30 = 0;
LABEL_35:

  return v30;
}

- (void)_addRegistration:(id)registration toClient:(id)client
{
  v27 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  clientCopy = client;
  v8 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = registrationCopy;
    v25 = 2114;
    v26 = clientCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Registration add: %{public}@ client:%{public}@", buf, 0x16u);
  }

  buttonKind = [registrationCopy buttonKind];
  registrations = [clientCopy registrations];
  if (([registrations containsObject:registrationCopy] & 1) == 0)
  {
    if (registrations)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      registrations = registrations;
      v11 = [registrations countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(registrations);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            if ([v15 buttonKind] == buttonKind)
            {
              [v15 setEventMask:{objc_msgSend(registrationCopy, "eventMask")}];
              [v15 setEventPriority:{objc_msgSend(registrationCopy, "eventPriority")}];
              v16 = v15;

              registrationCopy = v16;
              goto LABEL_17;
            }
          }

          v12 = [registrations countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      registrations = [MEMORY[0x277CBEB58] set];
      [clientCopy setRegistrations:registrations];
    }

    [registrations addObject:{registrationCopy, v18}];
LABEL_17:
    v17 = [(SBHardwareButtonService *)self _mutableRegistrationsForButtonKind:buttonKind createIfNecessary:1];
    [v17 insertObject:registrationCopy atIndex:0];
    [(SBHardwareButtonService *)self _updateEventMasksForButtonKind:buttonKind];
  }
}

- (void)_removeRegistration:(id)registration fromClient:(id)client
{
  v41 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  clientCopy = client;
  v8 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v38 = registrationCopy;
    v39 = 2114;
    v40 = clientCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Registration remove: %{public}@ client:%{public}@", buf, 0x16u);
  }

  buttonKind = [registrationCopy buttonKind];
  selfCopy = self;
  v10 = [(SBHardwareButtonService *)self _mutableRegistrationsForButtonKind:buttonKind createIfNecessary:0];
  [v10 removeObject:registrationCopy];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [v10 copy];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        client = [v16 client];

        if (client == clientCopy)
        {
          [v10 removeObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v13);
  }

  if (![v10 count])
  {
    [(BSMutableIntegerMap *)selfCopy->_registrationsByButtonKind removeObjectForKey:buttonKind];
  }

  registrations = [clientCopy registrations];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  registrations2 = [clientCopy registrations];
  v20 = [registrations2 copy];

  v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * j);
        if ([v25 buttonKind] == buttonKind)
        {
          [registrations removeObject:v25];
          goto LABEL_24;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  [(SBHardwareButtonService *)selfCopy _updateEventMasksForButtonKind:buttonKind];
}

- (id)_applicationForClientInfo:(id)info
{
  systemServiceClient = [info systemServiceClient];
  processHandle = [systemServiceClient processHandle];
  v5 = [processHandle pid];

  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithPid:v5];

  return v7;
}

- (void)_setSystemServiceClient:(id)client buttonKind:(int64_t)kind eventMask:(unint64_t)mask priority:(int64_t)priority
{
  clientCopy = client;
  v11 = [clientCopy pid];
  v12 = [(BSMutableIntegerMap *)self->_clientsByPID objectForKey:v11];
  v13 = objc_alloc_init(SBButtonConsumerRegistration);
  [(SBButtonConsumerRegistration *)v13 setClient:v12];
  [(SBButtonConsumerRegistration *)v13 setButtonKind:kind];
  [(SBButtonConsumerRegistration *)v13 setEventMask:mask];
  [(SBButtonConsumerRegistration *)v13 setEventPriority:priority];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__SBHardwareButtonService__setSystemServiceClient_buttonKind_eventMask_priority___block_invoke;
  v17[3] = &unk_2783B5850;
  v21 = v13;
  maskCopy = mask;
  v18 = v12;
  v19 = clientCopy;
  v23 = v11;
  selfCopy = self;
  v14 = v13;
  v15 = clientCopy;
  v16 = v12;
  [(SBHardwareButtonService *)self _performButtonRegistrationChangeAndNotifyObservers:v17];
}

void __81__SBHardwareButtonService__setSystemServiceClient_buttonKind_eventMask_priority___block_invoke(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      v13 = objc_alloc_init(SBButtonConsumerClient);
      [(SBButtonConsumerClient *)v13 setSystemServiceClient:*(a1 + 40)];
      v3 = [*(a1 + 40) processHandle];
      v4 = [v3 hasEntitlement:*MEMORY[0x277D66FB8]];

      [(SBButtonConsumerClient *)v13 setEntitledToConsumeButtonsInBackground:v4];
      v5 = [*(a1 + 48) _applicationForClientInfo:v13];
      [(SBButtonConsumerClient *)v13 setApplication:v5 != 0];
      v6 = *(*(a1 + 48) + 80);
      if (!v6)
      {
        v7 = objc_alloc_init(MEMORY[0x277CF0C68]);
        v8 = *(a1 + 48);
        v9 = *(v8 + 80);
        *(v8 + 80) = v7;

        v6 = *(*(a1 + 48) + 80);
      }

      [v6 setObject:v13 forKey:*(a1 + 72)];
      [*(a1 + 48) _reconfigureProcessMonitor];

      v2 = v13;
    }

    v14 = v2;
    [*(a1 + 56) setClient:v2];
    [*(a1 + 48) _addRegistration:*(a1 + 56) toClient:v14];
  }

  else
  {
    [*(a1 + 48) _removeRegistration:*(a1 + 56) fromClient:*(a1 + 32)];
    v10 = [*(a1 + 32) registrations];
    v11 = [v10 count];

    if (!v11)
    {
      [*(*(a1 + 48) + 80) removeObjectForKey:*(a1 + 72)];
      v12 = *(a1 + 48);

      [v12 _reconfigureProcessMonitor];
    }
  }
}

- (void)systemServiceServer:(id)server clientDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = disconnectCopy;
  BSDispatchMain();
}

void __67__SBHardwareButtonService_systemServiceServer_clientDidDisconnect___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SBHardwareButtonService_systemServiceServer_clientDidDisconnect___block_invoke_2;
  v5[3] = &unk_2783A92D8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 _performButtonRegistrationChangeAndNotifyObservers:v5];
}

void __67__SBHardwareButtonService_systemServiceServer_clientDidDisconnect___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v3 = [*(*(a1 + 40) + 80) objectForKey:v2];
  v4 = [*(*(a1 + 40) + 72) copy];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __67__SBHardwareButtonService_systemServiceServer_clientDidDisconnect___block_invoke_3;
  v10 = &unk_2783B5878;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v3;
  [v4 enumerateWithBlock:&v7];

  [*(*(a1 + 40) + 80) removeObjectForKey:{v2, v7, v8, v9, v10}];
  [*(a1 + 40) _reconfigureProcessMonitor];
}

void __67__SBHardwareButtonService_systemServiceServer_clientDidDisconnect___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 copy];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 client];
        v13 = *(a1 + 32);

        if (v12 == v13)
        {
          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) _updateEventMasksForButtonKind:a2];
}

- (void)systemServiceServer:(id)server client:(id)client setEventMask:(unint64_t)mask buttonKind:(int64_t)kind priority:(int64_t)priority
{
  clientCopy = client;
  serviceClientEventConsumerEntitlement = self->_serviceClientEventConsumerEntitlement;
  v14 = 0;
  v10 = [(FBServiceClientAuthenticator *)serviceClientEventConsumerEntitlement authenticateClient:clientCopy error:&v14];
  v11 = v14;
  if (v10)
  {
    v13 = clientCopy;
    BSDispatchMain();
  }

  else
  {
    v12 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHardwareButtonService systemServiceServer:clientCopy client:? setEventMask:? buttonKind:? priority:?];
    }
  }
}

- (void)systemServiceServer:(id)server client:(id)client requestsHIDEvents:(BOOL)events token:(id)token forButtonKind:(int64_t)kind
{
  clientCopy = client;
  tokenCopy = token;
  v9 = tokenCopy;
  v10 = clientCopy;
  BSDispatchMain();
}

void __92__SBHardwareButtonService_systemServiceServer_client_requestsHIDEvents_token_forButtonKind___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pid];
  v3 = *(a1 + 48);
  v4 = [SBApp cameraHardwareButton];
  v5 = v4;
  if (v3 == 1)
  {
    [v4 addProcessRequestingCameraButton:v2 token:*(a1 + 40)];
  }

  else
  {
    [v4 removeProcessRequestingCameraButton:v2];
  }
}

- (void)systemServiceServer:(id)server client:(id)client setHapticType:(int64_t)type buttonKind:(int64_t)kind
{
  clientCopy = client;
  serviceClientEventConsumerEntitlement = self->_serviceClientEventConsumerEntitlement;
  v13 = 0;
  v10 = [(FBServiceClientAuthenticator *)serviceClientEventConsumerEntitlement authenticateClient:clientCopy error:&v13];
  v11 = v13;
  if (!v10)
  {
    v12 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHardwareButtonService systemServiceServer:clientCopy client:? setHapticType:? buttonKind:?];
    }

    goto LABEL_8;
  }

  if (kind != 1)
  {
    v12 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SBHardwareButtonService systemServiceServer:client:setHapticType:buttonKind:];
    }

LABEL_8:

    goto LABEL_9;
  }

  BSDispatchMain();
LABEL_9:
}

void __79__SBHardwareButtonService_systemServiceServer_client_setHapticType_buttonKind___block_invoke(uint64_t a1)
{
  v2 = [SBApp homeHardwareButton];
  [v2 setHapticType:*(a1 + 32)];
}

- (void)systemServiceServer:(id)server client:(id)client fetchHapticTypeForButtonKind:(int64_t)kind completion:(id)completion
{
  serverCopy = server;
  clientCopy = client;
  completionCopy = completion;
  if (!completionCopy)
  {
    [SBHardwareButtonService systemServiceServer:a2 client:self fetchHapticTypeForButtonKind:? completion:?];
  }

  serviceClientEventConsumerEntitlement = self->_serviceClientEventConsumerEntitlement;
  v20 = 0;
  v15 = [(FBServiceClientAuthenticator *)serviceClientEventConsumerEntitlement authenticateClient:clientCopy error:&v20];
  v16 = v20;
  if (!v15)
  {
    v17 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SBHardwareButtonService systemServiceServer:clientCopy client:? fetchHapticTypeForButtonKind:? completion:?];
    }

    goto LABEL_12;
  }

  if (kind != 1)
  {
    v18 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SBHardwareButtonService systemServiceServer:client:setHapticType:buttonKind:];
    }

LABEL_12:
    completionCopy[2](completionCopy, 0);
    goto LABEL_13;
  }

  v19 = completionCopy;
  BSDispatchMain();

LABEL_13:
}

void __94__SBHardwareButtonService_systemServiceServer_client_fetchHapticTypeForButtonKind_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [SBApp homeHardwareButton];
  (*(v1 + 16))(v1, [v2 hapticType]);
}

- (void)systemServiceServer:(id)server client:(id)client acquireAssertionOfType:(int64_t)type forReason:(id)reason withCompletion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  reasonCopy = reason;
  completionCopy = completion;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __102__SBHardwareButtonService_systemServiceServer_client_acquireAssertionOfType_forReason_withCompletion___block_invoke;
  v26[3] = &unk_2783AB780;
  typeCopy = type;
  v14 = reasonCopy;
  v27 = v14;
  v15 = clientCopy;
  v28 = v15;
  v16 = completionCopy;
  v29 = v16;
  v17 = MEMORY[0x223D6F7F0](v26);
  if (type)
  {
    v18 = 0;
  }

  else
  {
    v18 = self->_serviceClientHomeHardwareButtonHintSuppressionEntitlementAuthenticator;
  }

  v25 = 0;
  v19 = [(FBServiceClientAuthenticator *)v18 authenticateClient:v15 error:&v25];
  v20 = v25;
  if (v19)
  {
    v17[2](v17);
  }

  else
  {
    v21 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [v15 pid];
      v24 = BSProcessDescriptionForPID();
      *buf = 138543874;
      v32 = v23;
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v20;
      _os_log_error_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not approved to acquire hardware button assertion: %@", buf, 0x20u);
    }

    (*(v16 + 2))(v16, 0);
  }
}

void __102__SBHardwareButtonService_systemServiceServer_client_acquireAssertionOfType_forReason_withCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = 0;
  }

  else
  {
    v2 = @"HomeHardwareButtonHintSuppressionAssertion";
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 stringWithFormat:@"%@-%@", v5, *(a1 + 32)];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(a1 + 40), "pid")}];
  v8 = objc_alloc_init(MEMORY[0x277CF0C80]);
  [v8 setObject:v2 forSetting:1];
  [v8 setObject:v6 forSetting:2];
  [v8 setObject:v7 forSetting:3];
  v9 = [objc_alloc(MEMORY[0x277CF0B58]) initWithInfo:v8 timeout:0 forResponseOnQueue:&__block_literal_global_164_0 withHandler:0.0];
  objc_initWeak(&location, v9);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__SBHardwareButtonService_systemServiceServer_client_acquireAssertionOfType_forReason_withCompletion___block_invoke_3;
  v12[3] = &unk_2783AFE38;
  v13[1] = *(a1 + 56);
  objc_copyWeak(v13, &location);
  [v9 setInvalidationHandler:v12];
  v10 = v9;
  v11 = *(a1 + 48);
  BSDispatchMain();

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __102__SBHardwareButtonService_systemServiceServer_client_acquireAssertionOfType_forReason_withCompletion___block_invoke_3(uint64_t a1)
{
  v1[1] = *(a1 + 40);
  objc_copyWeak(v1, (a1 + 32));
  BSDispatchMain();
  objc_destroyWeak(v1);
}

void __102__SBHardwareButtonService_systemServiceServer_client_acquireAssertionOfType_forReason_withCompletion___block_invoke_4(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v4 = [SBApp homeHardwareButton];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [v4 removeHintSuppressionAssertion:WeakRetained];
  }
}

uint64_t __102__SBHardwareButtonService_systemServiceServer_client_acquireAssertionOfType_forReason_withCompletion___block_invoke_5(void *a1)
{
  if (!a1[6])
  {
    v2 = [SBApp homeHardwareButton];
    [v2 addHintSuppressionAssertion:a1[4]];
  }

  v3 = *(a1[5] + 16);

  return v3();
}

- (BOOL)_hwButtonHintViewsSupported
{
  v2 = +[SBPlatformController sharedInstance];
  if ([v2 deviceSupportsHWButtonBezelEffects])
  {
    v3 = 1;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [standardUserDefaults BOOLForKey:@"SBHardwareButtonHintDropletsEnabled"];
  }

  return v3;
}

- (BOOL)systemServiceServer:(id)server getHintViewsSupportedForClient:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  serviceClientHintViewEntitlement = self->_serviceClientHintViewEntitlement;
  v15 = 0;
  v7 = [(FBServiceClientAuthenticator *)serviceClientHintViewEntitlement authenticateClient:clientCopy error:&v15];
  v8 = v15;
  if (v7)
  {
    _hwButtonHintViewsSupported = [(SBHardwareButtonService *)self _hwButtonHintViewsSupported];
  }

  else
  {
    v10 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [clientCopy pid];
      v14 = BSProcessDescriptionForPID();
      *buf = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v8;
      _os_log_error_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not approved to query hardware button service: %@", buf, 0x20u);
    }

    _hwButtonHintViewsSupported = 0;
  }

  return _hwButtonHintViewsSupported;
}

- (BOOL)systemServiceServer:(id)server client:(id)client registerAssociatedHintViewContextId:(unsigned int)id renderId:(unint64_t)renderId size:(CGSize)size buttonKind:(int64_t)kind clientPort:(id)port
{
  v33 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  portCopy = port;
  serviceClientHintViewEntitlement = self->_serviceClientHintViewEntitlement;
  v24 = 0;
  v14 = [(FBServiceClientAuthenticator *)serviceClientHintViewEntitlement authenticateClient:clientCopy error:&v24];
  v15 = v24;
  if (!v14)
  {
    v17 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      [clientCopy pid];
      v21 = BSProcessDescriptionForPID();
      v22 = NSStringFromSBSHardwareButtonKind();
      *buf = 138544130;
      v26 = v20;
      v27 = 2112;
      v28 = v21;
      v29 = 2114;
      v30 = v22;
      v31 = 2112;
      v32 = v15;
      _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not approved to add hint view to %{public}@ button: %@", buf, 0x2Au);
    }

    goto LABEL_7;
  }

  if (![(SBHardwareButtonService *)self _hwButtonHintViewsSupported])
  {
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v23 = portCopy;
  BSDispatchMain();

  v16 = 1;
LABEL_8:

  return v16;
}

void __126__SBHardwareButtonService_systemServiceServer_client_registerAssociatedHintViewContextId_renderId_size_buttonKind_clientPort___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D76180]) initWithFrame:{0.0, 0.0, *(a1 + 48), *(a1 + 56)}];
  v3 = [v2 portalLayer];
  [v3 setSourceContextId:*(a1 + 80)];

  v4 = [v2 portalLayer];
  [v4 setSourceLayerRenderId:*(a1 + 64)];

  [v2 setHidesSourceView:1];
  [v2 setMatchesAlpha:1];
  v5 = [*(*(a1 + 32) + 64) hardwareButtonBezelEffectsCoordinator];
  v6 = [v5 associateHintView:v2 withButton:*(a1 + 72)];

  v7 = MEMORY[0x277CF0CB8];
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __126__SBHardwareButtonService_systemServiceServer_client_registerAssociatedHintViewContextId_renderId_size_buttonKind_clientPort___block_invoke_2;
  v10[3] = &unk_2783A8C18;
  v11 = v6;
  v9 = v6;
  [v7 monitorSendRight:v8 withHandler:v10];
}

void __126__SBHardwareButtonService_systemServiceServer_client_registerAssociatedHintViewContextId_renderId_size_buttonKind_clientPort___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

- (void)systemServiceServer:(id)server client:(id)client updateHintContentVisibility:(int64_t)visibility forButton:(int64_t)button animationSettings:(id)settings
{
  v32 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  settingsCopy = settings;
  serviceClientHintViewEntitlement = self->_serviceClientHintViewEntitlement;
  v21 = 0;
  v13 = [(FBServiceClientAuthenticator *)serviceClientHintViewEntitlement authenticateClient:clientCopy error:&v21];
  v14 = v21;
  if (v13)
  {
    v20 = settingsCopy;
    BSDispatchMain();
  }

  else
  {
    v15 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [clientCopy pid];
      v18 = BSProcessDescriptionForPID();
      v19 = NSStringFromSBSHardwareButtonKind();
      *buf = 138544386;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2048;
      visibilityCopy = visibility;
      v28 = 2114;
      v29 = v19;
      v30 = 2112;
      v31 = v14;
      _os_log_error_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not approved to update hint content appearance state to %ld for %{public}@ button: %@", buf, 0x34u);
    }
  }
}

void __110__SBHardwareButtonService_systemServiceServer_client_updateHintContentVisibility_forButton_animationSettings___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _hwButtonHintViewsSupported])
  {
    v2 = [*(*(a1 + 32) + 64) hardwareButtonBezelEffectsCoordinator];
    [v2 updateHintContentVisibility:*(a1 + 48) forButton:*(a1 + 56) animationSettings:*(a1 + 40)];
  }
}

- (BOOL)systemServiceServer:(id)server client:(id)client requestSystemGlowEffectWithInitialStyle:(int64_t)style clientPort:(id)port
{
  v30 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  portCopy = port;
  serviceClientHintViewEntitlement = self->_serviceClientHintViewEntitlement;
  v21 = 0;
  v11 = [(FBServiceClientAuthenticator *)serviceClientHintViewEntitlement authenticateClient:clientCopy error:&v21];
  v12 = v21;
  if (!v11)
  {
    v14 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [clientCopy pid];
      v18 = BSProcessDescriptionForPID();
      v19 = NSStringFromSBSHardwareButtonSystemGlowStyle();
      *buf = 138544130;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      v28 = 2112;
      v29 = v12;
      _os_log_error_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not approved to add system glow effect to %{public}@ buttons: %@", buf, 0x2Au);
    }

    goto LABEL_7;
  }

  if (![(SBHardwareButtonService *)self _hwButtonHintViewsSupported])
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v20 = portCopy;
  BSDispatchMain();

  v13 = 1;
LABEL_8:

  return v13;
}

void __105__SBHardwareButtonService_systemServiceServer_client_requestSystemGlowEffectWithInitialStyle_clientPort___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) hardwareButtonBezelEffectsCoordinator];
  v3 = [v2 requestSystemGlowEffectWithInitialStyle:a1[6] reason:@"HardwareButtonService request"];

  v4 = MEMORY[0x277CF0CB8];
  v5 = a1[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __105__SBHardwareButtonService_systemServiceServer_client_requestSystemGlowEffectWithInitialStyle_clientPort___block_invoke_2;
  v7[3] = &unk_2783A8C18;
  v8 = v3;
  v6 = v3;
  [v4 monitorSendRight:v5 withHandler:v7];
}

void __105__SBHardwareButtonService_systemServiceServer_client_requestSystemGlowEffectWithInitialStyle_clientPort___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  BSDispatchMain();
}

- (void)systemServiceServer:(id)server client:(id)client updateSystemGlowStyle:(int64_t)style
{
  v24 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  serviceClientHintViewEntitlement = self->_serviceClientHintViewEntitlement;
  v15 = 0;
  v8 = [(FBServiceClientAuthenticator *)serviceClientHintViewEntitlement authenticateClient:clientCopy error:&v15];
  v9 = v15;
  if (v8)
  {
    BSDispatchMain();
  }

  else
  {
    v10 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [clientCopy pid];
      v13 = BSProcessDescriptionForPID();
      v14 = NSStringFromSBSHardwareButtonSystemGlowStyle();
      *buf = 138544130;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      _os_log_error_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not approved to update system glow effect to %{public}@: %@", buf, 0x2Au);
    }
  }
}

void __76__SBHardwareButtonService_systemServiceServer_client_updateSystemGlowStyle___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _hwButtonHintViewsSupported])
  {
    v2 = [*(*(a1 + 32) + 64) hardwareButtonBezelEffectsCoordinator];
    [v2 updateSystemGlowStyle:*(a1 + 40)];
  }
}

- (void)_sendXPCMessageForEvent:(uint64_t)a1 buttonKind:(NSObject *)a2 priority:toClient:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "XPC send to client:%{public}@", &v2, 0xCu);
}

- (void)systemServiceServer:(void *)a1 client:setEventMask:buttonKind:priority:.cold.1(void *a1)
{
  [a1 pid];
  v1 = BSProcessDescriptionForPID();
  v2 = BSPrettyFunctionName();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)systemServiceServer:(void *)a1 client:setHapticType:buttonKind:.cold.1(void *a1)
{
  [a1 pid];
  v1 = BSProcessDescriptionForPID();
  v2 = BSPrettyFunctionName();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)systemServiceServer:client:setHapticType:buttonKind:.cold.2()
{
  v5 = NSStringFromSBSHardwareButtonKind();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)systemServiceServer:(uint64_t)a1 client:(uint64_t)a2 fetchHapticTypeForButtonKind:completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHardwareButtonService.m" lineNumber:732 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
}

- (void)systemServiceServer:(void *)a1 client:fetchHapticTypeForButtonKind:completion:.cold.2(void *a1)
{
  [a1 pid];
  v1 = BSProcessDescriptionForPID();
  v2 = BSPrettyFunctionName();
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end