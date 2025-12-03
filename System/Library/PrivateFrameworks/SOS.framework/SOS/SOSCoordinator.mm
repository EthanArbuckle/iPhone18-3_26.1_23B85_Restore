@interface SOSCoordinator
+ (SOSCoordinator)sharedInstance;
- (BOOL)_sendUrgentMessageToPairedDevice:(id)device retries:(id)retries;
- (BOOL)isIncomingMessageValidHandoffAck:(id)ack;
- (BOOL)isIncomingMessageValidSOSHandoff:(id)handoff;
- (BOOL)isPairedDeviceNearby;
- (BOOL)processEventWithUUID:(id)d triggerMechanism:(int64_t)mechanism;
- (BOOL)shouldHandoffToPairedDevice:(int64_t)device;
- (BOOL)shouldRetryMessage:(id)message;
- (BOOL)tryPushToPairedDeviceWithUUID:(id)d triggerMechanism:(int64_t)mechanism;
- (SOSCoordinator)init;
- (id)effectivePairedDevice;
- (int64_t)SOSCoordinationMessageTypeForString:(id)string;
- (void)_handleServiceUpdate:(id)update;
- (void)_updateStateForPairedDevice:(id)device;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handleSOSMessageTypeHandoffSOS:(id)s;
- (void)handleSOSMessageTypeHandoffSOSAck:(id)ack;
- (void)handleSOSMessageTypeProgressionSync:(id)sync;
- (void)removeObserver:(id)observer;
- (void)reportHandoff:(int64_t)handoff result:(int64_t)result;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)syncProgressionWithPairedDevice:(int64_t)device sosStatus:(id)status;
@end

@implementation SOSCoordinator

+ (SOSCoordinator)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SOSCoordinator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_inst;

  return v2;
}

uint64_t __32__SOSCoordinator_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_inst = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (SOSCoordinator)init
{
  v23.receiver = self;
  v23.super_class = SOSCoordinator;
  v2 = [(SOSCoordinator *)&v23 init];
  if (v2)
  {
    v3 = sos_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, init", v22, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.soscoordination"];
    [v4 addDelegate:v2 queue:MEMORY[0x277D85CD0]];
    idsService = v2->_idsService;
    v2->_idsService = v4;
    v6 = v4;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    processingEventUUIDs = v2->_processingEventUUIDs;
    v2->_processingEventUUIDs = v7;

    v9 = dispatch_queue_create("com.apple.private.coordination.eventUUIDArrayQueue", 0);
    eventUUIDArrayQueue = v2->_eventUUIDArrayQueue;
    v2->_eventUUIDArrayQueue = v9;

    v11 = dispatch_queue_create("com.apple.private.coordination.pendingMessagesQueue", 0);
    pendingMessagesQueue = v2->_pendingMessagesQueue;
    v2->_pendingMessagesQueue = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessagesById = v2->_pendingMessagesById;
    v2->_pendingMessagesById = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingMessageRetriesById = v2->_pendingMessageRetriesById;
    v2->_pendingMessageRetriesById = v15;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v19 = +[SOSCoreAnalyticsReporter sharedInstance];
    coreAnalyticsReporter = v2->_coreAnalyticsReporter;
    v2->_coreAnalyticsReporter = v19;
  }

  return v2;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = SOSCoordinator;
  [(SOSCoordinator *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SOSCoordinator *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SOSCoordinator *)self observers];
  [observers removeObject:observerCopy];
}

- (BOOL)shouldHandoffToPairedDevice:(int64_t)device
{
  if (device == 7)
  {
    effectivePairedDevice = [(SOSCoordinator *)self effectivePairedDevice];
    v5 = effectivePairedDevice;
    if (effectivePairedDevice)
    {
      if ([effectivePairedDevice isNearby])
      {
        v6 = 1;
LABEL_9:

        return v6;
      }

      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    [(SOSCoordinator *)self reportHandoff:7 result:v7];
    v6 = 0;
    goto LABEL_9;
  }

  [(SOSCoordinator *)self reportHandoff:device result:6];
  return 0;
}

- (BOOL)tryPushToPairedDeviceWithUUID:(id)d triggerMechanism:(int64_t)mechanism
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = sos_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v12 = 138412290;
    v13 = uUIDString;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, New event, Trigger ID: %@", &v12, 0xCu);
  }

  v9 = [(SOSCoordinator *)self processEventWithUUID:dCopy triggerMechanism:mechanism];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)processEventWithUUID:(id)d triggerMechanism:(int64_t)mechanism
{
  dCopy = d;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = SOSStringForSOSTriggerMechanism(mechanism);
  [v7 setObject:v8 forKey:@"SOSCoordinationTriggerKey"];

  [v7 setObject:@"SOSCoordinationMessageTypeHandoffSOS" forKey:@"SOSCoordinationMessageTypeKey"];
  uUIDString = [dCopy UUIDString];
  [v7 setObject:uUIDString forKey:@"SOSEventUUIDKey"];

  v10 = dispatch_semaphore_create(0);
  eventProcessingSemaphore = self->_eventProcessingSemaphore;
  self->_eventProcessingSemaphore = v10;

  if ([(SOSCoordinator *)self sendUrgentMessageToPairedDevice:v7])
  {
    eventUUIDArrayQueue = self->_eventUUIDArrayQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SOSCoordinator_processEventWithUUID_triggerMechanism___block_invoke;
    block[3] = &unk_279B53BA0;
    block[4] = self;
    v13 = dCopy;
    v28 = v13;
    dispatch_sync(eventUUIDArrayQueue, block);
    v14 = self->_eventProcessingSemaphore;
    v15 = dispatch_time(0, 8000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      v16 = sos_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "SOSCoordinator,handoff unsuccessful, timed out before received ack", buf, 2u);
      }

      v17 = self->_eventUUIDArrayQueue;
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = __56__SOSCoordinator_processEventWithUUID_triggerMechanism___block_invoke_346;
      v23 = &unk_279B53BA0;
      selfCopy = self;
      v25 = v13;
      dispatch_sync(v17, &v20);
      [(SOSCoordinator *)self reportHandoff:mechanism result:5, v20, v21, v22, v23, selfCopy];
    }

    else
    {
      if (self->_ackSuccess)
      {
        v18 = 1;
        [(SOSCoordinator *)self reportHandoff:mechanism result:1];
LABEL_11:

        goto LABEL_12;
      }

      [(SOSCoordinator *)self reportHandoff:mechanism result:4];
    }

    v18 = 0;
    goto LABEL_11;
  }

  v18 = 0;
LABEL_12:

  return v18;
}

void __56__SOSCoordinator_processEventWithUUID_triggerMechanism___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) UUIDString];
  [v1 addObject:v2];
}

void __56__SOSCoordinator_processEventWithUUID_triggerMechanism___block_invoke_346(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = [*(a1 + 40) UUIDString];
  [v1 removeObject:v2];
}

- (void)syncProgressionWithPairedDevice:(int64_t)device sosStatus:(id)status
{
  v17 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if ([(SOSCoordinator *)self isPairedDeviceNearby])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 setObject:@"SOSMessageTypeProgressionSync" forKey:@"SOSCoordinationMessageTypeKey"];
    v8 = SOSStringForSOSProgression(device);
    [v7 setObject:v8 forKey:@"SOSProgressionKey"];

    v9 = [[SOSMessagingStatus alloc] initWithSOSStatus:statusCopy];
    v10 = sos_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SOSMessagingStatus *)v9 description];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, sending messaging status %@", &v15, 0xCu);
    }

    if (v9)
    {
      data = [(SOSMessagingStatus *)v9 data];
      [v7 setObject:data forKey:@"SOSStatusKey"];

      [(SOSCoordinator *)self sendUrgentMessageToPairedDevice:v7];
    }

    else
    {
      v13 = sos_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOSCoordinator syncProgressionWithPairedDevice:sosStatus:];
      }
    }
  }

  else
  {
    v7 = sos_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, no paired device, not syncing SOSProgression", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  messageCopy = message;
  v8 = [messageCopy objectForKeyedSubscript:@"SOSCoordinationMessageTypeKey"];
  v9 = [(SOSCoordinator *)self SOSCoordinationMessageTypeForString:v8];

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      [(SOSCoordinator *)self handleSOSMessageTypeHandoffSOSAck:messageCopy];
    }

    else if (v9 == 4)
    {
      [(SOSCoordinator *)self handleSOSMessageTypeProgressionSync:messageCopy];
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      [(SOSCoordinator *)self handleSOSMessageTypeHandoffSOS:messageCopy];
    }
  }

  else
  {
    v10 = sos_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "SOSCoordinator,cannot handle SOSMessageTypeUnspecified!", v11, 2u);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = sos_default_log();
  v17 = v16;
  if (errorCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SOSCoordinator service:identifierCopy account:errorCopy identifier:v17 didSendWithSuccess:? error:?];
    }
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = identifierCopy;
    _os_log_impl(&dword_264323000, v17, OS_LOG_TYPE_DEFAULT, "IDS didSendWithSuccess identifier=%@ Success!", buf, 0xCu);
  }

  if (identifierCopy)
  {
    v18 = [(NSMutableDictionary *)self->_pendingMessagesById objectForKeyedSubscript:identifierCopy];
    v19 = [(NSMutableDictionary *)self->_pendingMessageRetriesById objectForKeyedSubscript:identifierCopy];
    v20 = v19;
    if (!success && [v19 integerValue] >= 1 && -[SOSCoordinator shouldRetryMessage:](self, "shouldRetryMessage:", v18))
    {
      v21 = sos_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        integerValue = [v20 integerValue];
        *buf = 138412546;
        v29 = identifierCopy;
        v30 = 1024;
        v31 = integerValue;
        _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, retrying failed message with id %@ and %d retries", buf, 0x12u);
      }

      v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "integerValue") - 1}];
      [(SOSCoordinator *)self _sendUrgentMessageToPairedDevice:v18 retries:v23];
    }

    pendingMessagesQueue = self->_pendingMessagesQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __70__SOSCoordinator_service_account_identifier_didSendWithSuccess_error___block_invoke;
    v26[3] = &unk_279B53BA0;
    v26[4] = self;
    v27 = identifierCopy;
    dispatch_sync(pendingMessagesQueue, v26);
  }

  else
  {
    v18 = sos_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SOSCoordinator service:account:identifier:didSendWithSuccess:error:];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __70__SOSCoordinator_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);

  return [v3 removeObjectForKey:v2];
}

- (BOOL)isIncomingMessageValidSOSHandoff:(id)handoff
{
  v3 = [handoff objectForKeyedSubscript:@"SOSCoordinationTriggerKey"];
  v4 = SOSStringForSOSTriggerMechanism(7uLL);
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = sos_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSCoordinator,received SOS handoff message with unsupported SOSTriggerMechanism", v8, 2u);
    }
  }

  return v5;
}

- (BOOL)isIncomingMessageValidHandoffAck:(id)ack
{
  ackCopy = ack;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  eventUUIDArrayQueue = self->_eventUUIDArrayQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SOSCoordinator_isIncomingMessageValidHandoffAck___block_invoke;
  block[3] = &unk_279B53C50;
  selfCopy = self;
  v11 = &v12;
  v9 = ackCopy;
  v6 = ackCopy;
  dispatch_sync(eventUUIDArrayQueue, block);
  LOBYTE(eventUUIDArrayQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return eventUUIDArrayQueue;
}

void __51__SOSCoordinator_isIncomingMessageValidHandoffAck___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"SOSEventUUIDKey"];
  if (!v2)
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__SOSCoordinator_isIncomingMessageValidHandoffAck___block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  if (([*(*(a1 + 40) + 16) containsObject:v2] & 1) == 0)
  {
    v4 = sos_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSCoordinator,unrecognized event UUID", v5, 2u);
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  [*(*(a1 + 40) + 16) removeObject:v2];
  v3 = 1;
LABEL_9:
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

- (void)handleSOSMessageTypeHandoffSOSAck:(id)ack
{
  ackCopy = ack;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, handleSOSMessageTypeHandoffSOSAck", v7, 2u);
  }

  if ([(SOSCoordinator *)self isIncomingMessageValidHandoffAck:ackCopy])
  {
    v6 = [ackCopy objectForKeyedSubscript:@"SOSHandoffAckSuccessKey"];
    self->_ackSuccess = [v6 BOOLValue];

    dispatch_semaphore_signal(self->_eventProcessingSemaphore);
  }
}

- (void)handleSOSMessageTypeHandoffSOS:(id)s
{
  sCopy = s;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, handleSOSMessageTypeHandoffSOS", buf, 2u);
  }

  if ([(SOSCoordinator *)self isIncomingMessageValidSOSHandoff:sCopy])
  {
    v6 = objc_alloc(MEMORY[0x277CCAD78]);
    v7 = [sCopy objectForKeyedSubscript:@"SOSEventUUIDKey"];
    v8 = [v6 initWithUUIDString:v7];

    v9 = [sCopy objectForKeyedSubscript:@"SOSCoordinationTriggerKey"];
    v10 = [SOSUtilities SOSTriggerMechanismForString:v9];

    v11 = +[SOSEngine sharedInstance];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__SOSCoordinator_handleSOSMessageTypeHandoffSOS___block_invoke;
    v12[3] = &unk_279B53C78;
    v12[4] = self;
    v13 = sCopy;
    [v11 triggerSOSWithUUID:v8 triggerMechanism:v10 source:1 completion:v12];
  }

  else
  {
    [(SOSCoordinator *)self sendAckToHandoffMessage:sCopy success:0];
  }
}

- (void)handleSOSMessageTypeProgressionSync:(id)sync
{
  syncCopy = sync;
  v5 = sos_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, handleSOSMessageTypeProgressionSync", v14, 2u);
  }

  v6 = [syncCopy objectForKeyedSubscript:@"SOSProgressionKey"];
  v7 = [SOSUtilities SOSProgressionForString:v6];

  if (v7 == 2)
  {
    v9 = [syncCopy objectForKeyedSubscript:@"SOSCoordinationShouldHandleThirdPartyKey"];
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    if (!v7)
    {
      v8 = sos_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SOSCoordinator handleSOSMessageTypeProgressionSync:];
      }

      goto LABEL_14;
    }

    bOOLValue = 0;
  }

  v8 = [syncCopy objectForKeyedSubscript:@"SOSStatusKey"];
  v11 = [[SOSMessagingStatus alloc] initWithData:v8];
  v12 = v11;
  if (v11)
  {
    sosStatus = [(SOSMessagingStatus *)v11 sosStatus];
    [(SOSCoordinator *)self sendUpdateToObserversWithStatus:sosStatus progression:v7 shouldHandleThirdParty:bOOLValue];
  }

  else
  {
    sosStatus = sos_default_log();
    if (os_log_type_enabled(sosStatus, OS_LOG_TYPE_ERROR))
    {
      [SOSCoordinator handleSOSMessageTypeProgressionSync:];
    }
  }

LABEL_14:
}

- (BOOL)_sendUrgentMessageToPairedDevice:(id)device retries:(id)retries
{
  v31[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  retriesCopy = retries;
  v8 = *MEMORY[0x277D185B0];
  v30[0] = *MEMORY[0x277D18650];
  v30[1] = v8;
  v31[0] = &unk_2875D2AB8;
  v31[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  effectivePairedDevice = [(SOSCoordinator *)self effectivePairedDevice];
  v11 = effectivePairedDevice;
  if (effectivePairedDevice)
  {
    destination = [effectivePairedDevice destination];
    if (destination)
    {
      idsService = self->_idsService;
      v14 = [MEMORY[0x277CBEB98] setWithObject:destination];
      v28 = 0;
      v29 = 0;
      v15 = [(IDSService *)idsService sendMessage:deviceCopy toDestinations:v14 priority:300 options:v9 identifier:&v29 error:&v28];
      v16 = v29;
      v17 = v28;

      if (v17)
      {
        v18 = sos_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SOSCoordinator _sendUrgentMessageToPairedDevice:v17 retries:v18];
        }
      }

      pendingMessagesQueue = self->_pendingMessagesQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__SOSCoordinator__sendUrgentMessageToPairedDevice_retries___block_invoke;
      block[3] = &unk_279B53CA0;
      v24 = v16;
      selfCopy = self;
      v26 = deviceCopy;
      v27 = retriesCopy;
      v20 = v16;
      dispatch_sync(pendingMessagesQueue, block);
    }

    else
    {
      v17 = sos_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [SOSCoordinator _sendUrgentMessageToPairedDevice:retries:];
      }

      v15 = 0;
    }
  }

  else
  {
    destination = sos_default_log();
    if (os_log_type_enabled(destination, OS_LOG_TYPE_ERROR))
    {
      [SOSCoordinator _sendUrgentMessageToPairedDevice:retries:];
    }

    v15 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

void *__59__SOSCoordinator__sendUrgentMessageToPairedDevice_retries___block_invoke(void *result)
{
  if (result[4])
  {
    v1 = result;
    [*(result[5] + 48) setObject:result[6] forKeyedSubscript:?];
    v2 = v1[7];
    v3 = v1[4];
    v4 = *(v1[5] + 56);

    return [v4 setObject:v2 forKeyedSubscript:v3];
  }

  return result;
}

- (BOOL)shouldRetryMessage:(id)message
{
  v4 = [message objectForKeyedSubscript:@"SOSCoordinationMessageTypeKey"];
  v5 = [(SOSCoordinator *)self SOSCoordinationMessageTypeForString:v4];

  return (v5 < 5) & (v5 ^ 1);
}

- (id)effectivePairedDevice
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v3 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice] && objc_msgSend(v6, "relationship") == 1)
        {
          v3 = v6;
          goto LABEL_12;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)SOSCoordinationMessageTypeForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SOSMessageTypeUnspecified"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SOSCoordinationMessageTypeHandoffSOS"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SOSCoordinationEventHandoffSOSAck"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SOSMessageTypeProgressionSync"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isPairedDeviceNearby
{
  effectivePairedDevice = [(SOSCoordinator *)self effectivePairedDevice];
  v3 = effectivePairedDevice;
  if (effectivePairedDevice)
  {
    isNearby = [effectivePairedDevice isNearby];
  }

  else
  {
    isNearby = 0;
  }

  return isNearby;
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  serviceCopy = service;
  v6 = sos_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "SOSCoordinator nearbyDevicesChanged", v7, 2u);
  }

  [(SOSCoordinator *)self _handleServiceUpdate:serviceCopy];
}

- (void)_handleServiceUpdate:(id)update
{
  effectivePairedDevice = [(SOSCoordinator *)self effectivePairedDevice];
  [(SOSCoordinator *)self _updateStateForPairedDevice:effectivePairedDevice];
}

- (void)_updateStateForPairedDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy && [deviceCopy isNearby])
  {
    v6 = +[SOSUtilities currentDeviceSOSStatus];
    v7 = sos_default_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, forcing SOS state sync", &v14, 2u);
      }

      if ([v6 flowState])
      {
        selfCopy2 = self;
        v10 = 3;
      }

      else
      {
        selfCopy2 = self;
        v10 = 1;
      }

      [(SOSCoordinator *)selfCopy2 syncProgressionWithPairedDevice:v10 sosStatus:v6];
    }

    else
    {
      if (v8)
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, no currentDeviceSOSStatus to sync with paired device", &v14, 2u);
      }
    }
  }

  else
  {
    v11 = +[SOSUtilities pairedDeviceSOSStatus];
    v6 = v11;
    if (v11 && [v11 isFlowActive])
    {
      v12 = sos_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSCoordinator, clearing out pairedDeviceSOSStatus: %@", &v14, 0xCu);
      }

      [v6 setFlowState:0];
      [(SOSCoordinator *)self sendUpdateToObserversWithStatus:v6 progression:3 shouldHandleThirdParty:0];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)reportHandoff:(int64_t)handoff result:(int64_t)result
{
  coreAnalyticsReporter = [(SOSCoordinator *)self coreAnalyticsReporter];
  [coreAnalyticsReporter reportSOSTriggerHandoff:handoff source:-[SOSCoordinator sourceDevice](self destination:"sourceDevice") result:{1, result}];
}

- (void)service:(os_log_t)log account:identifier:didSendWithSuccess:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_264323000, log, OS_LOG_TYPE_ERROR, "IDS didSendWithSuccess identifier=%@ error=%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_sendUrgentMessageToPairedDevice:(void *)a1 retries:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSCoordinator,sendUrgentMessageToPairedDevice failed with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end