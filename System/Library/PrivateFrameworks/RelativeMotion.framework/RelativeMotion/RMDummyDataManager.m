@interface RMDummyDataManager
- (RMDummyDataManager)initWithQueue:(id)a3;
- (id)dummyDataConfiguration;
- (void)invalidate;
- (void)startReceivingDummyDataUpdates:(id)a3;
- (void)stopReceivingDummyDataUpdates;
@end

@implementation RMDummyDataManager

- (RMDummyDataManager)initWithQueue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RMDummyDataManager;
  v5 = [(RMDummyDataManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(RMDummyDataManager *)v5 setQueue:v4];
    v7 = [[RMConnectionClient alloc] initWithQueue:v4 serviceName:@"com.apple.relatived.tempest" messageHandler:&__block_literal_global_5];
    [(RMDummyDataManager *)v6 setConnectionClient:v7];
  }

  return v6;
}

- (void)invalidate
{
  v3 = [(RMDummyDataManager *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(RMDummyDataManager *)self isReceivingRelatveData])
  {
    [(RMDummyDataManager *)self stopReceivingDummyDataUpdates];
  }

  v4 = [(RMDummyDataManager *)self connectionClient];
  [(RMConnectionClient *)v4 invalidate];

  [(RMDummyDataManager *)self setConnectionClient:0];

  [(RMDummyDataManager *)self setRelativeDataCallback:0];
}

- (id)dummyDataConfiguration
{
  v7 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:&unk_287437740 requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (!v2)
  {
    if (onceToken_TempestDataManager_Default != -1)
    {
      [RMDummyDataManager dummyDataConfiguration];
    }

    v4 = logObject_TempestDataManager_Default;
    if (os_log_type_enabled(logObject_TempestDataManager_Default, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_261A9A000, v4, OS_LOG_TYPE_ERROR, "failed to archive configurations\n", v6, 2u);
    }
  }

  return v2;
}

- (void)startReceivingDummyDataUpdates:(id)a3
{
  v4 = a3;
  v5 = [(RMDummyDataManager *)self queue];
  dispatch_assert_queue_V2(v5);

  [(RMDummyDataManager *)self setRelativeDataCallback:v4];
  v6 = [(RMDummyDataManager *)self connectionClient];
  [(RMConnectionClient *)v6 connect];

  v7 = [(RMDummyDataManager *)self connectionClient];
  v8 = [(RMDummyDataManager *)self dummyDataConfiguration];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__RMDummyDataManager_startReceivingDummyDataUpdates___block_invoke;
  v9[3] = &unk_279AF5318;
  v9[4] = self;
  [(RMConnectionClient *)v7 requestStreamingWithMessage:v8 data:v9 callback:?];
}

void __53__RMDummyDataManager_startReceivingDummyDataUpdates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) relativeDataCallback];
    (v7)[2](v7, 0, v6);
  }

  else
  {
    v8 = [v5 bytes];
    v9 = [RMDummyData alloc];
    v10 = *v8;
    v11 = v8[1];
    v12 = v8[3];
    v17[2] = v8[2];
    v17[3] = v12;
    v17[0] = v10;
    v17[1] = v11;
    v13 = [(RMDummyData *)v9 initWithPayload:v17];
    v14 = [*(a1 + 32) relativeDataCallback];

    if (!v14)
    {
      __53__RMDummyDataManager_startReceivingDummyDataUpdates___block_invoke_cold_1();
    }

    v15 = [*(a1 + 32) relativeDataCallback];
    (v15)[2](v15, v13, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopReceivingDummyDataUpdates
{
  v3 = [(RMDummyDataManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(RMDummyDataManager *)self connectionClient];
  [(RMConnectionClient *)v4 stopStreaming];

  [(RMDummyDataManager *)self setIsReceivingRelatveData:0];

  [(RMDummyDataManager *)self setRelativeDataCallback:0];
}

void __53__RMDummyDataManager_startReceivingDummyDataUpdates___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_ConnectionClient_Default_0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_261A9A000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Streamed data received while no callback was in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v1 = _CLLogObjectForCategory_ConnectionClient_Default_0();
  if (os_signpost_enabled(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_signpost_emit_with_name_impl(&dword_261A9A000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Streamed data received while no callback was in place", "{msg%{public}.0s:Streamed data received while no callback was in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  v2 = _CLLogObjectForCategory_ConnectionClient_Default_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(&dword_261A9A000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Streamed data received while no callback was in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
  _CLLogObjectForCategory_ConnectionClient_Default_cold_1_0();
}

@end