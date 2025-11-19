@interface MLRemoteConnection
@end

@implementation MLRemoteConnection

void __39___MLRemoteConnection_initWithOptions___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = +[_MLLog clientFramework];
  v14 = v13;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __39___MLRemoteConnection_initWithOptions___block_invoke_cold_1(a1);
    }

    [WeakRetained doReceive:v9 context:v10 isComplete:a4 error:v11];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __39___MLRemoteConnection_initWithOptions___block_invoke_cold_2(a1);
    }
  }
}

uint64_t __58___MLRemoteConnection_doReceive_context_isComplete_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [*(a1 + 32) packet];
  v8 = [v7 buffer];
  [v8 appendBytes:a4 length:a5];

  return 1;
}

void __71___MLRemoteConnection_predictionFromURL_features_output_options_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) packet];
  v3 = [v2 buffer];
  v4 = [v3 length];

  if (v4)
  {
    v5 = +[_MLLog clientFramework];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __71___MLRemoteConnection_predictionFromURL_features_output_options_error___block_invoke_cold_1();
    }

    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) packet];
    v8 = [v7 buffer];
    [v6 appendData:v8];
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) packet];
  [v10 setBuffer:v9];
}

void __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nwObj];
  [v2 sendData:*(a1 + 40)];

  v3 = [*(a1 + 32) nwOptions];
  v4 = dispatch_time(0, [v3 receiveTimeoutValue]);

  v5 = [*(a1 + 32) semaphore];
  *(*(*(a1 + 48) + 8) + 24) = dispatch_semaphore_wait(v5, v4) != 0;

  v6 = [*(a1 + 32) packet];
  [v6 resetDoubleBuffer];

  LODWORD(v5) = *(*(*(a1 + 48) + 8) + 24);
  v7 = +[_MLLog clientFramework];
  v8 = v7;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke_cold_2(a1);
    }

    v9 = [*(a1 + 32) q];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke_10;
    block[3] = &unk_279AFCA60;
    block[4] = *(a1 + 32);
    dispatch_async(v9, block);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke_cold_1();
    }
  }
}

void __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) nwObj];
  [v2 stop];

  v3 = [*(a1 + 32) nwObj];
  [v3 restartConnection];
}

void __39___MLRemoteConnection_initWithOptions___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 40));
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __39___MLRemoteConnection_initWithOptions___block_invoke_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 40));
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __71___MLRemoteConnection_predictionFromURL_features_output_options_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(v1 + 48));
  v3 = [*v0 packet];
  v4 = [v3 buffer];
  [v4 length];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, OS_LOG_TYPE_ERROR, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(*(v1 + 56));
  v3 = *(*(*v0 + 8) + 24);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);

  v9 = *MEMORY[0x277D85DE8];
}

void __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke_cold_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end