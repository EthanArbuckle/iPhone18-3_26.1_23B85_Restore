@interface MLServer
@end

@implementation MLServer

void __29___MLServer_initWithOptions___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = +[_MLLog serverFramework];
  v14 = v13;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __29___MLServer_initWithOptions___block_invoke_cold_1(a1);
    }

    [WeakRetained doReceive:v9 context:v10 isComplete:a4 error:v11];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __29___MLServer_initWithOptions___block_invoke_cold_2(a1, v14);
    }
  }
}

uint64_t __48___MLServer_doReceive_context_isComplete_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [*(a1 + 32) packet];
  v9 = [v8 buffer];
  [v9 appendBytes:a4 length:a5];

  v10 = +[_MLLog serverFramework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __48___MLServer_doReceive_context_isComplete_error___block_invoke_cold_1(a1);
  }

  return 1;
}

void __48___MLServer_doReceive_context_isComplete_error___block_invoke_8(uint64_t a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) packet];
  v3 = +[_MLNetworkHeaderEncoding isHeaderAcknowledgeSucessData:](_MLNetworkHeaderEncoding, "isHeaderAcknowledgeSucessData:", [v2 command]);

  if (!v3)
  {
    v4 = [*(a1 + 32) packet];
    v5 = +[_MLNetworkHeaderEncoding isHeaderLoad:](_MLNetworkHeaderEncoding, "isHeaderLoad:", [v4 command]);

    if (v5)
    {
      v6 = +[_MLLog serverFramework];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_4(a1);
      }

      v7 = [*(a1 + 32) loadFunction];
      v8 = v7[2](v7, 0, 0);
LABEL_10:

      goto LABEL_11;
    }

    v9 = [*(a1 + 32) packet];
    v10 = +[_MLNetworkHeaderEncoding isHeaderUnLoad:](_MLNetworkHeaderEncoding, "isHeaderUnLoad:", [v9 command]);

    if (v10)
    {
      v11 = +[_MLLog serverFramework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_3(a1);
      }

      v7 = [*(a1 + 32) unLoadFunction];
      v12 = [*(a1 + 32) packet];
      v13 = [v12 buffer];
      v14 = (v7)[2](v7, 0, v13);

      goto LABEL_10;
    }

    v17 = [*(a1 + 32) packet];
    v18 = +[_MLNetworkHeaderEncoding isHeaderPredictFeature:](_MLNetworkHeaderEncoding, "isHeaderPredictFeature:", [v17 command]);

    if (v18)
    {
      v19 = +[_MLLog serverFramework];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_2(a1);
      }

      v20 = [*(a1 + 32) predictFunction];
      v21 = [*(a1 + 32) packet];
      v22 = [v21 buffer];
      v23 = (v20)[2](v20, 0, v22);

      v24 = [_MLNetworkHeaderEncoding predictFeature:v23];
      v25 = [*(a1 + 32) nwObj];
      [v25 sendData:v24];
    }

    else
    {
      v26 = [*(a1 + 32) packet];
      v27 = +[_MLNetworkHeaderEncoding isHeaderText:](_MLNetworkHeaderEncoding, "isHeaderText:", [v26 command]);

      if (v27)
      {
        v28 = [*(a1 + 32) packet];
        v29 = [v28 buffer];
        v30 = [_MLNetworkHeaderEncoding getHeaderDataSize:v29];

        if (8 * v30 + 8 >= 0x200)
        {
          v31 = 512;
        }

        else
        {
          v31 = 8 * v30 + 8;
        }

        bzero(v43 - ((8 * v30 + 23) & 0xFFFFFFFFFFFFFFF0), v31);
        v32 = [*(a1 + 32) packet];
        v33 = [v32 buffer];
        strlcpy(v43 - ((8 * v30 + 23) & 0xFFFFFFFFFFFFFFF0), [_MLNetworkHeaderEncoding getHeaderDataStart:v33], v30);

        v34 = [*(a1 + 32) packet];
        v35 = [v34 buffer];
        v36 = [_MLNetworkHeaderEncoding getHeaderDataStart:v35];

        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:v36];
        v38 = +[_MLLog serverFramework];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_1(a1);
        }

        v39 = [*(a1 + 32) textFunction];
        v40 = (v39)[2](v39, 0, v37);

        v41 = +[_MLNetworkHeaderEncoding acknowledgeSucessData];
        v42 = [*(a1 + 32) nwObj];
        [v42 sendData:v41];
      }
    }
  }

LABEL_11:
  v15 = [*(a1 + 32) packet];
  [v15 resetDoubleBuffer];

  v16 = *MEMORY[0x277D85DE8];
}

void __29___MLServer_initWithOptions___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __29___MLServer_initWithOptions___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v4 = OUTLINED_FUNCTION_2(a1);
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(&dword_261D92000, a2, OS_LOG_TYPE_ERROR, "%@: connection lost", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

void __48___MLServer_doReceive_context_isComplete_error___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

void __48___MLServer_doReceive_context_isComplete_error___block_invoke_8_cold_4(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  v2 = OUTLINED_FUNCTION_2(a1);
  v3 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

@end