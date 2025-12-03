@interface SCLTransportService
- (BOOL)sendProtobuf:(id)protobuf toDevice:(id)device options:(id)options identifier:(id *)identifier error:(id *)error;
- (SCLTransportService)initWithTargetQueue:(id)queue service:(id)service;
- (id)transportControllerForDevice:(id)device;
- (void)addTransportController:(id)controller;
- (void)removeTransportController:(id)controller;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)start;
@end

@implementation SCLTransportService

- (SCLTransportService)initWithTargetQueue:(id)queue service:(id)service
{
  queueCopy = queue;
  serviceCopy = service;
  v17.receiver = self;
  v17.super_class = SCLTransportService;
  v9 = [(SCLTransportService *)&v17 init];
  if (v9)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    transportControllers = v9->_transportControllers;
    v9->_transportControllers = weakObjectsHashTable;

    objc_storeStrong(&v9->_targetQueue, queue);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_attr_make_initially_inactive(v12);

    v14 = dispatch_queue_create_with_target_V2("com.apple.schooltimed.SCLTransportService", v13, queueCopy);
    queue = v9->_queue;
    v9->_queue = v14;

    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (void)start
{
  targetQueue = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v7 = objc_alloc_init(MEMORY[0x277D18A20]);
  [v7 setWantsCrossAccountMessaging:1];
  service = [(SCLTransportService *)self service];
  queue = [(SCLTransportService *)self queue];
  [service addDelegate:self withDelegateProperties:v7 queue:queue];

  queue2 = [(SCLTransportService *)self queue];
  dispatch_activate(queue2);
}

- (void)addTransportController:(id)controller
{
  controllerCopy = controller;
  targetQueue = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  transportControllers = [(SCLTransportService *)self transportControllers];
  [transportControllers addObject:controllerCopy];

  [controllerCopy setTransportService:self];
}

- (void)removeTransportController:(id)controller
{
  controllerCopy = controller;
  targetQueue = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  [controllerCopy setTransportService:0];
  transportControllers = [(SCLTransportService *)self transportControllers];
  [transportControllers removeObject:controllerCopy];
}

- (id)transportControllerForDevice:(id)device
{
  deviceCopy = device;
  targetQueue = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(targetQueue);

  v6 = MEMORY[0x277CCAC30];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__SCLTransportService_transportControllerForDevice___block_invoke;
  v14[3] = &unk_279B6C380;
  v15 = deviceCopy;
  v7 = deviceCopy;
  v8 = [v6 predicateWithBlock:v14];
  transportControllers = [(SCLTransportService *)self transportControllers];
  allObjects = [transportControllers allObjects];

  v11 = [allObjects filteredArrayUsingPredicate:v8];
  lastObject = [v11 lastObject];

  return lastObject;
}

uint64_t __52__SCLTransportService_transportControllerForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 IDSDeviceIdentifier];
  v4 = [*(a1 + 32) uniqueIDOverride];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)sendProtobuf:(id)protobuf toDevice:(id)device options:(id)options identifier:(id *)identifier error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  deviceCopy = device;
  optionsCopy = options;
  v15 = IDSCopyIDForDevice();
  if (v15)
  {
    if (!optionsCopy)
    {
      optionsCopy = MEMORY[0x277CBEC10];
    }

    service = [(SCLTransportService *)self service];
    v17 = [MEMORY[0x277CBEB98] setWithObject:v15];
    LOBYTE(error) = [service sendProtobuf:protobufCopy toDestinations:v17 priority:300 options:optionsCopy identifier:identifier error:error];
  }

  else if (error)
  {
    deviceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"IDSCopyIDForDevice returned nil for device %@", deviceCopy];
    v19 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = deviceCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v19 errorWithDomain:@"com.apple.schooltime" code:4 userInfo:v20];

    LOBYTE(error) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v13 = scl_transport_log();
  if (os_signpost_enabled(v13))
  {
    v21 = 67109120;
    type = [protobufCopy type];
    _os_signpost_emit_with_name_impl(&dword_264829000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Incoming Protobuf", "Type: %d", &v21, 8u);
  }

  service = [(SCLTransportService *)self service];
  v15 = [service linkedDeviceForFromID:dCopy withRelationship:2];

  v16 = [(SCLTransportService *)self transportControllerForDevice:v15];
  v17 = v16;
  if (v16)
  {
    [v16 service:self incomingProtobuf:protobufCopy fromID:dCopy context:contextCopy];
    v18 = scl_transport_log();
    if (os_signpost_enabled(v18))
    {
      type2 = [protobufCopy type];
      v21 = 67109120;
      type = type2;
      _os_signpost_emit_with_name_impl(&dword_264829000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Incoming Protobuf", "Type: %d", &v21, 8u);
    }
  }

  else
  {
    v18 = scl_transport_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SCLTransportService service:account:incomingUnhandledProtobuf:fromID:context:];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  v11 = scl_transport_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = identifierCopy;
    _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_DEFAULT, "Service message %@ hasBeenDelivered", &v18, 0xCu);
  }

  service = [(SCLTransportService *)self service];
  v13 = [service linkedDeviceForFromID:dCopy withRelationship:2];

  v14 = [(SCLTransportService *)self transportControllerForDevice:v13];
  v15 = v14;
  if (v14)
  {
    [v14 service:self didDeliverMessageWithIdentifier:identifierCopy];
  }

  else
  {
    v16 = scl_transport_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCLTransportService service:account:incomingUnhandledProtobuf:fromID:context:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingUnhandledProtobuf:fromID:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_264829000, v0, v1, "No transport controller for incoming message from %@; %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:account:identifier:didSendWithSuccess:error:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_264829000, v0, v1, "Service message with identifier %@ failed to send with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end