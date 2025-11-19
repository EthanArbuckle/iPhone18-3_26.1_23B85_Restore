@interface ATXModeDuetHelper
- (id)_duetStreamShim;
- (id)_updateModeStreamEndDates:(id)a3 to:(id)a4;
- (id)modeStreamFrom:(id)a3 to:(id)a4 ascending:(BOOL)a5 limit:(unint64_t)a6;
@end

@implementation ATXModeDuetHelper

- (id)modeStreamFrom:(id)a3 to:(id)a4 ascending:(BOOL)a5 limit:(unint64_t)a6
{
  v6 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [(ATXModeDuetHelper *)self _duetStreamShim];
  v13 = BiomeLibrary();
  v14 = [v13 UserFocus];
  v15 = [v14 InferredMode];
  v16 = [v15 atx_publisherWithStartDate:v10 endDate:v9 maxEvents:0 lastN:0 reversed:0];

  v17 = [v16 filterWithIsIncluded:&__block_literal_global_14];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __55__ATXModeDuetHelper_modeStreamFrom_to_ascending_limit___block_invoke_3;
  v26[3] = &unk_279AB8A10;
  v27 = v12;
  v18 = v11;
  v28 = v18;
  v19 = v12;
  v20 = [v17 sinkWithCompletion:&__block_literal_global_13_0 receiveInput:v26];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __55__ATXModeDuetHelper_modeStreamFrom_to_ascending_limit___block_invoke_4;
  v24[3] = &__block_descriptor_33_e31_q24__0___DKEvent_8___DKEvent_16l;
  v25 = v6;
  [v18 sortUsingComparator:v24];
  if (v6)
  {
    v21 = [(ATXModeDuetHelper *)self _updateModeStreamEndDates:v18 to:v9];
  }

  else
  {
    v21 = v18;
  }

  v22 = v21;

  return v22;
}

uint64_t __55__ATXModeDuetHelper_modeStreamFrom_to_ascending_limit___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 isStart];

  return v3;
}

void __55__ATXModeDuetHelper_modeStreamFrom_to_ascending_limit___block_invoke_3(uint64_t a1, void *a2)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 modeType];

  v6 = [v3 eventBody];
  v7 = [v6 absoluteTimestamp];

  v8 = [v3 eventBody];

  v9 = [v8 origin];
  v10 = v9;
  if (v9 >= 0x12)
  {
    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __55__ATXModeDuetHelper_modeStreamFrom_to_ascending_limit___block_invoke_3_cold_1(v10, v12);
    }

    v11 = @"Unknown";
  }

  else
  {
    v11 = off_279AB8A50[v9];
  }

  if (v7)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v5];
    v14 = MEMORY[0x277CFE1D8];
    v15 = *(a1 + 32);
    v23[0] = v13;
    v22[0] = @"mode";
    v22[1] = @"start";
    v16 = MEMORY[0x277CCACA8];
    [v7 timeIntervalSince1970];
    v18 = [v16 stringWithFormat:@"%lld", v17];
    v23[1] = v18;
    v23[2] = v11;
    v22[2] = @"modeOrigin";
    v22[3] = @"contextVector";
    v22[4] = @"process";
    v23[3] = &stru_287331708;
    v23[4] = @"contextstored";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
    v20 = [v14 eventWithStream:v15 startDate:v7 endDate:v7 identifierStringValue:v13 metadata:v19];

    [*(a1 + 40) addObject:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __55__ATXModeDuetHelper_modeStreamFrom_to_ascending_limit___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 startDate];
  v8 = [v5 startDate];

  v9 = [v7 earlierDate:v8];
  v10 = [v6 startDate];

  if (((v9 == v10) ^ *(a1 + 32)))
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)_updateModeStreamEndDates:(id)a3 to:(id)a4
{
  v6 = a3;
  v27 = a4;
  v7 = objc_opt_new();
  v30 = [(ATXModeDuetHelper *)self _duetStreamShim];
  if ([v6 count])
  {
    v8 = 0;
    v9 = 0x277CFE000uLL;
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [v6 objectAtIndexedSubscript:v8];
      if (v8 == [v6 count] - 1)
      {
        v12 = *(v9 + 472);
        v13 = [v11 startDate];
        v14 = [v11 value];
        v15 = [v11 metadata];
        v16 = [v12 eventWithStream:v30 startDate:v13 endDate:v27 value:v14 metadata:v15];

        [v7 addObject:v16];
        ++v8;
      }

      else
      {
        v28 = [v6 objectAtIndexedSubscript:++v8];
        v17 = *(v9 + 472);
        v18 = [v11 startDate];
        v19 = [v28 startDate];
        [v11 value];
        v29 = v10;
        v21 = v20 = v7;
        [v11 metadata];
        v22 = v6;
        v24 = v23 = v9;
        v25 = [v17 eventWithStream:v30 startDate:v18 endDate:v19 value:v21 metadata:v24];

        v9 = v23;
        v6 = v22;

        v7 = v20;
        v10 = v29;

        [v7 addObject:v25];
      }

      objc_autoreleasePoolPop(v10);
    }

    while (v8 < [v6 count]);
  }

  return v7;
}

- (id)_duetStreamShim
{
  v2 = MEMORY[0x277CFE1E8];
  v3 = [MEMORY[0x277CFE150] type];
  v4 = [v2 eventStreamWithName:@"pap/internal" valueType:v3];

  return v4;
}

void __55__ATXModeDuetHelper_modeStreamFrom_to_ascending_limit___block_invoke_3_cold_1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_260C9F000, a2, OS_LOG_TYPE_FAULT, "BMUserFocusInferredModeOrigin: %lu not handled in switch statement", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end