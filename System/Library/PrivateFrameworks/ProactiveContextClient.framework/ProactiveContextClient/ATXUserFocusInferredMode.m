@interface ATXUserFocusInferredMode
+ (id)currentMode;
+ (id)currentModeEvent;
+ (id)currentModeEventAtGivenTime:(id)a3;
- (ATXUserFocusInferredMode)init;
- (ATXUserFocusInferredMode)initWithStream:(id)a3;
- (id)currentMode;
- (id)currentModeEvent;
- (id)currentModeEventAtGivenTime:(id)a3;
- (id)inferredModeEventWithSuggestionUUID:(id)a3;
- (id)lastTwoInferredModeEvents;
- (id)previousModeEvent;
@end

@implementation ATXUserFocusInferredMode

- (ATXUserFocusInferredMode)init
{
  v3 = BiomeLibrary();
  v4 = [v3 UserFocus];
  v5 = [v4 InferredMode];
  v6 = [(ATXUserFocusInferredMode *)self initWithStream:v5];

  return v6;
}

- (ATXUserFocusInferredMode)initWithStream:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXUserFocusInferredMode;
  v6 = [(ATXUserFocusInferredMode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, a3);
  }

  return v7;
}

- (id)currentMode
{
  v3 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15;
  v13 = __Block_byref_object_dispose__15;
  v14 = 0;
  v4 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C880 lastN:&unk_28733C880 reversed:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__ATXUserFocusInferredMode_currentMode__block_invoke_12;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v9;
  v5 = [v4 sinkWithCompletion:&__block_literal_global_16 receiveInput:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __39__ATXUserFocusInferredMode_currentMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__ATXUserFocusInferredMode_currentMode__block_invoke_cold_1(v2);
    }
  }
}

void __39__ATXUserFocusInferredMode_currentMode__block_invoke_12(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 eventBody];
  v4 = [v3 isStart];

  if (v4)
  {
    v5 = [v8 eventBody];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)currentModeEvent
{
  v3 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15;
  v13 = __Block_byref_object_dispose__15;
  v14 = 0;
  v4 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C880 lastN:&unk_28733C880 reversed:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ATXUserFocusInferredMode_currentModeEvent__block_invoke_16;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v9;
  v5 = [v4 sinkWithCompletion:&__block_literal_global_15_0 receiveInput:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __44__ATXUserFocusInferredMode_currentModeEvent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__ATXUserFocusInferredMode_currentMode__block_invoke_cold_1(v2);
    }
  }
}

void __44__ATXUserFocusInferredMode_currentModeEvent__block_invoke_16(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 eventBody];
  v5 = [v4 isStart];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)previousModeEvent
{
  v3 = objc_autoreleasePoolPush();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__15;
  v14 = __Block_byref_object_dispose__15;
  v15 = 0;
  v4 = [(BMStream *)self->_stream atx_publisherFromStartDate:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__ATXUserFocusInferredMode_previousModeEvent__block_invoke;
  v9[3] = &unk_279AB88B8;
  v9[4] = &v10;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__ATXUserFocusInferredMode_previousModeEvent__block_invoke_17;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v10;
  v5 = [v4 sinkWithCompletion:v9 receiveInput:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __45__ATXUserFocusInferredMode_previousModeEvent__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_modes();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__ATXUserFocusInferredMode_previousModeEvent__block_invoke_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
    v8 = [v7 modeIdentifier];
    v9 = [*(*(*(a1 + 32) + 8) + 40) eventBody];
    v11 = 138412546;
    v12 = v8;
    v13 = 2048;
    v14 = [v9 modeType];
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "BMInferredModeStream: done fetching last mode event. previousBMInferredModeEvent modeUUID:%@, modeType: %lu", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __45__ATXUserFocusInferredMode_previousModeEvent__block_invoke_17(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 eventBody];
  v5 = [v4 isStart];

  if ((v5 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (id)lastTwoInferredModeEvents
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  v5 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:0 lastN:&unk_28733C898 reversed:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ATXUserFocusInferredMode_lastTwoInferredModeEvents__block_invoke_22;
  v9[3] = &unk_279AB8B88;
  v6 = v4;
  v10 = v6;
  v7 = [v5 sinkWithCompletion:&__block_literal_global_21_1 receiveInput:v9];

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __53__ATXUserFocusInferredMode_lastTwoInferredModeEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_modes();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__ATXUserFocusInferredMode_lastTwoInferredModeEvents__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "BMInferredModeStream: done fetching the last two mode events", v6, 2u);
  }
}

- (id)inferredModeEventWithSuggestionUUID:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__15;
  v21 = __Block_byref_object_dispose__15;
  v22 = 0;
  v6 = [(BMStream *)self->_stream atx_publisherFromStartDate:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__ATXUserFocusInferredMode_inferredModeEventWithSuggestionUUID___block_invoke;
  v14[3] = &unk_279AB8BB0;
  v15 = v4;
  v16 = &v17;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__ATXUserFocusInferredMode_inferredModeEventWithSuggestionUUID___block_invoke_23;
  v11[3] = &unk_279AB8BD8;
  v7 = v15;
  v12 = v7;
  v13 = &v17;
  v8 = [v6 sinkWithCompletion:v14 receiveInput:v11];

  v9 = v18[5];
  _Block_object_dispose(&v17, 8);

  objc_autoreleasePoolPop(v5);

  return v9;
}

void __64__ATXUserFocusInferredMode_inferredModeEventWithSuggestionUUID___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_modes();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__ATXUserFocusInferredMode_inferredModeEventWithSuggestionUUID___block_invoke_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(*(*(a1 + 40) + 8) + 40) modeIdentifier];
    v9 = [*(*(*(a1 + 40) + 8) + 40) modeType];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "BMInferredModeStream: done fetching mode event with suggestion UUID %{public}@, modeUUID:%{public}@, modeType:%lu", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __64__ATXUserFocusInferredMode_inferredModeEventWithSuggestionUUID___block_invoke_23(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 eventBody];
  if ([v3 isStart])
  {
    v4 = [v9 eventBody];
    v5 = [v4 uuid];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [v9 eventBody];
    v8 = *(*(a1 + 40) + 8);
    v3 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

LABEL_5:
}

- (id)currentModeEventAtGivenTime:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__15;
  v18 = __Block_byref_object_dispose__15;
  v19 = 0;
  v6 = [(BMStream *)self->_stream atx_publisherWithStartDate:v4 endDate:0 maxEvents:&unk_28733C880 lastN:0 reversed:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ATXUserFocusInferredMode_currentModeEventAtGivenTime___block_invoke_26;
  v11[3] = &unk_279AB88E0;
  v7 = v4;
  v12 = v7;
  v13 = &v14;
  v8 = [v6 sinkWithCompletion:&__block_literal_global_25_0 shouldContinue:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  objc_autoreleasePoolPop(v5);

  return v9;
}

void __56__ATXUserFocusInferredMode_currentModeEventAtGivenTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__ATXUserFocusInferredMode_currentMode__block_invoke_cold_1(v2);
    }
  }
}

uint64_t __56__ATXUserFocusInferredMode_currentModeEventAtGivenTime___block_invoke_26(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 eventBody];
  v6 = [v5 isStart];

  if (v6)
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v4 eventBody];
      v12 = 136315650;
      v13 = "[ATXUserFocusInferredMode currentModeEventAtGivenTime:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      v16 = 1024;
      v17 = [v9 modeType];
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "%s: Active inferred mode at time %@ is %d", &v12, 0x1Cu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)currentMode
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [v3 currentMode];

  objc_autoreleasePoolPop(v2);

  return v4;
}

+ (id)currentModeEvent
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [v3 currentModeEvent];

  objc_autoreleasePoolPop(v2);

  return v4;
}

+ (id)currentModeEventAtGivenTime:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [v5 currentModeEventAtGivenTime:v3];

  objc_autoreleasePoolPop(v4);

  return v6;
}

void __39__ATXUserFocusInferredMode_currentMode__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __45__ATXUserFocusInferredMode_previousModeEvent__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __53__ATXUserFocusInferredMode_lastTwoInferredModeEvents__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __64__ATXUserFocusInferredMode_inferredModeEventWithSuggestionUUID___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = [a2 error];
  OUTLINED_FUNCTION_0_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end