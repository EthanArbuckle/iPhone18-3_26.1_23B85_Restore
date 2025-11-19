@interface SCLTransportService
- (BOOL)sendProtobuf:(id)a3 toDevice:(id)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7;
- (SCLTransportService)initWithTargetQueue:(id)a3 service:(id)a4;
- (id)transportControllerForDevice:(id)a3;
- (void)addTransportController:(id)a3;
- (void)removeTransportController:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)start;
@end

@implementation SCLTransportService

- (SCLTransportService)initWithTargetQueue:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SCLTransportService;
  v9 = [(SCLTransportService *)&v17 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    transportControllers = v9->_transportControllers;
    v9->_transportControllers = v10;

    objc_storeStrong(&v9->_targetQueue, a3);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v13 = dispatch_queue_attr_make_initially_inactive(v12);

    v14 = dispatch_queue_create_with_target_V2("com.apple.schooltimed.SCLTransportService", v13, v7);
    queue = v9->_queue;
    v9->_queue = v14;

    objc_storeStrong(&v9->_service, a4);
  }

  return v9;
}

- (void)start
{
  v3 = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(v3);

  v7 = objc_alloc_init(MEMORY[0x277D18A20]);
  [v7 setWantsCrossAccountMessaging:1];
  v4 = [(SCLTransportService *)self service];
  v5 = [(SCLTransportService *)self queue];
  [v4 addDelegate:self withDelegateProperties:v7 queue:v5];

  v6 = [(SCLTransportService *)self queue];
  dispatch_activate(v6);
}

- (void)addTransportController:(id)a3
{
  v6 = a3;
  v4 = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(SCLTransportService *)self transportControllers];
  [v5 addObject:v6];

  [v6 setTransportService:self];
}

- (void)removeTransportController:(id)a3
{
  v4 = a3;
  v5 = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(v5);

  [v4 setTransportService:0];
  v6 = [(SCLTransportService *)self transportControllers];
  [v6 removeObject:v4];
}

- (id)transportControllerForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SCLTransportService *)self targetQueue];
  dispatch_assert_queue_V2(v5);

  v6 = MEMORY[0x277CCAC30];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__SCLTransportService_transportControllerForDevice___block_invoke;
  v14[3] = &unk_279B6C380;
  v15 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v14];
  v9 = [(SCLTransportService *)self transportControllers];
  v10 = [v9 allObjects];

  v11 = [v10 filteredArrayUsingPredicate:v8];
  v12 = [v11 lastObject];

  return v12;
}

uint64_t __52__SCLTransportService_transportControllerForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 IDSDeviceIdentifier];
  v4 = [*(a1 + 32) uniqueIDOverride];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)sendProtobuf:(id)a3 toDevice:(id)a4 options:(id)a5 identifier:(id *)a6 error:(id *)a7
{
  v24[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = IDSCopyIDForDevice();
  if (v15)
  {
    if (!v14)
    {
      v14 = MEMORY[0x277CBEC10];
    }

    v16 = [(SCLTransportService *)self service];
    v17 = [MEMORY[0x277CBEB98] setWithObject:v15];
    LOBYTE(a7) = [v16 sendProtobuf:v12 toDestinations:v17 priority:300 options:v14 identifier:a6 error:a7];
  }

  else if (a7)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"IDSCopyIDForDevice returned nil for device %@", v13];
    v19 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = v18;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a7 = [v19 errorWithDomain:@"com.apple.schooltime" code:4 userInfo:v20];

    LOBYTE(a7) = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return a7;
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = scl_transport_log();
  if (os_signpost_enabled(v13))
  {
    v21 = 67109120;
    v22 = [v10 type];
    _os_signpost_emit_with_name_impl(&dword_264829000, v13, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Incoming Protobuf", "Type: %d", &v21, 8u);
  }

  v14 = [(SCLTransportService *)self service];
  v15 = [v14 linkedDeviceForFromID:v11 withRelationship:2];

  v16 = [(SCLTransportService *)self transportControllerForDevice:v15];
  v17 = v16;
  if (v16)
  {
    [v16 service:self incomingProtobuf:v10 fromID:v11 context:v12];
    v18 = scl_transport_log();
    if (os_signpost_enabled(v18))
    {
      v19 = [v10 type];
      v21 = 67109120;
      v22 = v19;
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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = a6;
  v11 = scl_transport_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&dword_264829000, v11, OS_LOG_TYPE_DEFAULT, "Service message %@ hasBeenDelivered", &v18, 0xCu);
  }

  v12 = [(SCLTransportService *)self service];
  v13 = [v12 linkedDeviceForFromID:v10 withRelationship:2];

  v14 = [(SCLTransportService *)self transportControllerForDevice:v13];
  v15 = v14;
  if (v14)
  {
    [v14 service:self didDeliverMessageWithIdentifier:v9];
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