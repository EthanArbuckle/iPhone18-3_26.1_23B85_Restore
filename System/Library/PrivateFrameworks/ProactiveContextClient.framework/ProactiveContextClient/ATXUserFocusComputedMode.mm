@interface ATXUserFocusComputedMode
+ (id)currentMode;
+ (id)currentModeEvent;
+ (id)currentModeSemanticType;
+ (id)currentModeUUID;
+ (id)currrentModeEventAtGivenTime:(id)time;
- (ATXUserFocusComputedMode)init;
- (ATXUserFocusComputedMode)initWithStream:(id)stream;
- (id)currentMode;
- (id)currentModeEvent;
- (id)currentModeSemanticType;
- (id)currentModeUUID;
- (id)currrentModeEventAtGivenTime:(id)time;
- (id)lastTwoUserFocusComputedStoreEvents;
@end

@implementation ATXUserFocusComputedMode

+ (id)currentModeUUID
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  currentModeUUID = [v3 currentModeUUID];

  objc_autoreleasePoolPop(v2);

  return currentModeUUID;
}

- (id)currentModeUUID
{
  v3 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  v14 = 0;
  v4 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C838 lastN:&unk_28733C838 reversed:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__ATXUserFocusComputedMode_currentModeUUID__block_invoke_22;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v9;
  v5 = [v4 sinkWithCompletion:&__block_literal_global_21_0 receiveInput:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __43__ATXUserFocusComputedMode_currentModeUUID__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_cold_1(v2);
    }
  }
}

- (ATXUserFocusComputedMode)init
{
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  computedMode = [userFocus ComputedMode];
  v6 = [(ATXUserFocusComputedMode *)self initWithStream:computedMode];

  return v6;
}

- (ATXUserFocusComputedMode)initWithStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = ATXUserFocusComputedMode;
  v6 = [(ATXUserFocusComputedMode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, stream);
  }

  return v7;
}

- (id)currentModeSemanticType
{
  v3 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  v14 = 0;
  v4 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C838 lastN:&unk_28733C838 reversed:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_12;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v9;
  v5 = [v4 sinkWithCompletion:&__block_literal_global_13 receiveInput:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_cold_1(v2);
    }
  }
}

void __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_12(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 eventBody];
  v4 = [v3 starting];

  if (v4)
  {
    v5 = [v10 eventBody];
    v6 = [v5 atx_dndModeSemanticType];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

- (id)currentMode
{
  v3 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  v14 = 0;
  v4 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C838 lastN:&unk_28733C838 reversed:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__ATXUserFocusComputedMode_currentMode__block_invoke_16;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v9;
  v5 = [v4 sinkWithCompletion:&__block_literal_global_15 receiveInput:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __39__ATXUserFocusComputedMode_currentMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_cold_1(v2);
    }
  }
}

void __39__ATXUserFocusComputedMode_currentMode__block_invoke_16(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 eventBody];
  v4 = [v3 starting];

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
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  v14 = 0;
  v4 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_28733C838 lastN:&unk_28733C838 reversed:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ATXUserFocusComputedMode_currentModeEvent__block_invoke_19;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v9;
  v5 = [v4 sinkWithCompletion:&__block_literal_global_18 receiveInput:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __44__ATXUserFocusComputedMode_currentModeEvent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_cold_1(v2);
    }
  }
}

void __44__ATXUserFocusComputedMode_currentModeEvent__block_invoke_19(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 eventBody];
  v5 = [v4 starting];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __43__ATXUserFocusComputedMode_currentModeUUID__block_invoke_22(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 eventBody];
  v4 = [v3 starting];

  v5 = v11;
  if (v4)
  {
    v6 = [v11 eventBody];
    v7 = [v6 mode];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v5 = v11;
  }
}

- (id)lastTwoUserFocusComputedStoreEvents
{
  v3 = objc_autoreleasePoolPush();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12;
  v14 = __Block_byref_object_dispose__12;
  v15 = objc_opt_new();
  v4 = [(BMStream *)self->_stream atx_publisherWithStartDate:0 endDate:0 maxEvents:0 lastN:&unk_28733C850 reversed:0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__ATXUserFocusComputedMode_lastTwoUserFocusComputedStoreEvents__block_invoke;
  v9[3] = &unk_279AB88B8;
  v9[4] = &v10;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__ATXUserFocusComputedMode_lastTwoUserFocusComputedStoreEvents__block_invoke_27;
  v8[3] = &unk_279AB7CD0;
  v8[4] = &v10;
  v5 = [v4 sinkWithCompletion:v9 receiveInput:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __63__ATXUserFocusComputedMode_lastTwoUserFocusComputedStoreEvents__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 state])
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) count];
    v4 = __atxlog_handle_modes();
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v5 == 2)
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = [*(*(*(a1 + 32) + 8) + 40) firstObject];
      v8 = [v7 eventBody];
      v9 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:1];
      v10 = [v9 eventBody];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "BMUserFocusComputedModeStream: done fetching the last two mode events \nFirst Event:%@\nSecond Event:%@", &v13, 0x16u);
    }

    else
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = [*(*(*(a1 + 32) + 8) + 40) firstObject];
      v11 = [v7 eventBody];
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_260C9F000, v4, OS_LOG_TYPE_DEFAULT, "BMUserFocusComputedModeStream: done fetching the last two mode events First Event:%{public}@", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  v4 = __atxlog_handle_modes();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__ATXUserFocusComputedMode_lastTwoUserFocusComputedStoreEvents__block_invoke_cold_1(v3);
  }

LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
}

- (id)currrentModeEventAtGivenTime:(id)time
{
  v26 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  v5 = objc_autoreleasePoolPush();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__12;
  v20 = __Block_byref_object_dispose__12;
  v21 = 0;
  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[ATXUserFocusComputedMode currrentModeEventAtGivenTime:]";
    v24 = 2112;
    v25 = timeCopy;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_DEFAULT, "%s: Searching for active mode at time: %@", buf, 0x16u);
  }

  v7 = [(BMStream *)self->_stream atx_publisherWithStartDate:timeCopy endDate:0 maxEvents:&unk_28733C838 lastN:0 reversed:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__ATXUserFocusComputedMode_currrentModeEventAtGivenTime___block_invoke_30;
  v13[3] = &unk_279AB88E0;
  v8 = timeCopy;
  v14 = v8;
  v15 = &v16;
  v9 = [v7 sinkWithCompletion:&__block_literal_global_29_0 shouldContinue:v13];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __57__ATXUserFocusComputedMode_currrentModeEventAtGivenTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_cold_1(v2);
    }
  }
}

uint64_t __57__ATXUserFocusComputedMode_currrentModeEventAtGivenTime___block_invoke_30(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 eventBody];
    v7 = [v6 modeSemanticTypeAsString];
    v16 = 136315394;
    v17 = "[ATXUserFocusComputedMode currrentModeEventAtGivenTime:]_block_invoke";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_260C9F000, v5, OS_LOG_TYPE_DEFAULT, "%s: Got mode: %@", &v16, 0x16u);
  }

  v8 = [v4 eventBody];
  v9 = [v8 starting];

  if (v9)
  {
    v10 = __atxlog_handle_modes();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v4 eventBody];
      v13 = [v12 modeSemanticTypeAsString];
      v16 = 136315650;
      v17 = "[ATXUserFocusComputedMode currrentModeEventAtGivenTime:]_block_invoke";
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_260C9F000, v10, OS_LOG_TYPE_DEFAULT, "%s: Active mode at time %@ was %@", &v16, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)currentModeSemanticType
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  currentModeSemanticType = [v3 currentModeSemanticType];

  objc_autoreleasePoolPop(v2);

  return currentModeSemanticType;
}

+ (id)currentMode
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  currentMode = [v3 currentMode];

  objc_autoreleasePoolPop(v2);

  return currentMode;
}

+ (id)currentModeEvent
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  currentModeEvent = [v3 currentModeEvent];

  objc_autoreleasePoolPop(v2);

  return currentModeEvent;
}

+ (id)currrentModeEventAtGivenTime:(id)time
{
  timeCopy = time;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [v5 currrentModeEventAtGivenTime:timeCopy];

  objc_autoreleasePoolPop(v4);

  return v6;
}

void __51__ATXUserFocusComputedMode_currentModeSemanticType__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "Could not obtain current Focus from Biome: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __63__ATXUserFocusComputedMode_lastTwoUserFocusComputedStoreEvents__block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0(&dword_260C9F000, v2, v3, "BMUserFocusComputedModeStream: error fetching last two mode events: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end