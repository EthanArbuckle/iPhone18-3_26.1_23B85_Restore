@interface ATXPOICategoryEventAggregator
- (id)groupVisitsFromPublisher:(id)a3 startTimestamp:(double)a4 endTimestamp:(double)a5;
@end

@implementation ATXPOICategoryEventAggregator

- (id)groupVisitsFromPublisher:(id)a3 startTimestamp:(double)a4 endTimestamp:(double)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [[ATXPOICategoryEnterAndExitEvents alloc] initWithCategoryEvents:0 exitEvent:0];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__17;
  v31 = __Block_byref_object_dispose__17;
  v32 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke;
  v26[3] = &__block_descriptor_48_e22_B16__0__BMStoreEvent_8l;
  *&v26[4] = a4;
  *&v26[5] = a5;
  v10 = [v7 filterWithIsIncluded:v26];
  v11 = [v10 scanWithInitial:v9 nextPartialResult:&__block_literal_global_18];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_11;
  v25[3] = &unk_279AB8E00;
  v25[4] = &v27;
  v12 = [v11 filterWithIsIncluded:v25];
  v13 = [v12 mapWithTransform:&__block_literal_global_16];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_3;
  v21[3] = &unk_279AB8E48;
  v22 = v8;
  v23 = a4;
  v24 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_19;
  v19[3] = &unk_279AB8E70;
  v14 = v22;
  v20 = v14;
  v15 = [v13 sinkWithCompletion:v21 receiveInput:v19];

  v16 = [v28[5] visitEventAllowingMissingExit:1];
  v17 = [[ATXPOICategoryGroupingResult alloc] initWithEvents:v14 finalPOIWithoutExit:v16];

  _Block_object_dispose(&v27, 8);

  return v17;
}

BOOL __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  if (v4 >= *(a1 + 32))
  {
    [v3 timestamp];
    v5 = v6 <= *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

ATXPOICategoryEnterAndExitEvents *__86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 exitEvent];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 exitEvent];
    v9 = [v8 eventBody];
    v10 = [v9 poiCategory];
    v11 = [v10 isEqualToString:@"ATXDefaultHeroPOICategory"];

    if ((v11 & 1) == 0)
    {
      v12 = [ATXPOICategoryEnterAndExitEvents alloc];
      v13 = [v4 exitEvent];
      v58[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
      v15 = [(ATXPOICategoryEnterAndExitEvents *)v12 initWithCategoryEvents:v14 exitEvent:0];

      v4 = v15;
    }
  }

  v16 = [v4 exitEvent];
  if (v16)
  {

LABEL_6:
    v17 = [v5 eventBody];
    v18 = [v17 poiCategory];
    v19 = [v18 isEqualToString:@"ATXDefaultHeroPOICategory"];

    v20 = [ATXPOICategoryEnterAndExitEvents alloc];
    v21 = v20;
    if (v19)
    {
LABEL_7:
      v22 = [(ATXPOICategoryEnterAndExitEvents *)v20 initWithCategoryEvents:0 exitEvent:0];
LABEL_8:
      v23 = v22;
      goto LABEL_15;
    }

    v57 = v5;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    v25 = v21;
    goto LABEL_10;
  }

  v28 = [v4 categoryEnterEvents];

  if (!v28)
  {
    goto LABEL_6;
  }

  v29 = [v5 eventBody];
  v30 = [v29 poiCategory];
  v31 = [v30 isEqualToString:@"ATXDefaultHeroPOICategory"];

  if (v31)
  {
    goto LABEL_13;
  }

  v35 = [v4 categoryEnterEvents];
  v36 = [v35 count];

  if (!v36)
  {
    v44 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_2_cold_1(v44);
    }

    v20 = [ATXPOICategoryEnterAndExitEvents alloc];
    goto LABEL_7;
  }

  v37 = [v4 categoryEnterEvents];
  v38 = [v37 objectAtIndexedSubscript:0];
  v39 = [v38 eventBody];
  v40 = [v39 poiCategory];
  v41 = [v5 eventBody];
  v42 = [v41 poiCategory];
  v43 = [v40 isEqualToString:v42];

  if (v43)
  {
    v22 = v4;
    goto LABEL_8;
  }

  v45 = [v4 categoryEnterEvents];
  v46 = [v45 objectAtIndexedSubscript:0];
  v47 = [v46 eventBody];
  v48 = [v47 timestamp];
  [v48 timeIntervalSinceReferenceDate];
  v50 = v49;
  v51 = [v5 eventBody];
  v52 = [v51 timestamp];
  [v52 timeIntervalSinceReferenceDate];
  v54 = v50 - v53;

  v55 = -v54;
  if (v54 >= 0.0)
  {
    v55 = v54;
  }

  if (v55 >= 2.22044605e-16)
  {
LABEL_13:
    v32 = [ATXPOICategoryEnterAndExitEvents alloc];
    v24 = [v4 categoryEnterEvents];
    v25 = v32;
    v26 = v24;
    v27 = v5;
    goto LABEL_14;
  }

  v56 = [v4 categoryEnterEvents];
  v24 = [v56 mutableCopy];

  [v24 addObject:v5];
  v25 = [ATXPOICategoryEnterAndExitEvents alloc];
LABEL_10:
  v26 = v24;
  v27 = 0;
LABEL_14:
  v23 = [(ATXPOICategoryEnterAndExitEvents *)v25 initWithCategoryEvents:v26 exitEvent:v27];

LABEL_15:
  v33 = *MEMORY[0x277D85DE8];

  return v23;
}

BOOL __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_11(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 visitEvent];
  v6 = [v4 exitEvent];
  v7 = [v6 eventBody];
  v8 = [v7 poiCategory];
  v9 = [v8 isEqualToString:@"ATXDefaultHeroPOICategory"];

  if (v9)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else if (v5)
  {
    v12 = [ATXPOICategoryEnterAndExitEvents alloc];
    v13 = [v4 exitEvent];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v15 = [(ATXPOICategoryEnterAndExitEvents *)v12 initWithCategoryEvents:v14 exitEvent:0];
    v16 = *(*(a1 + 32) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

void __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_anchor();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_3_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 138412802;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_260C9F000, v6, OS_LOG_TYPE_INFO, "Successfully fetched %@ Biome events for POI Category between %f and %f", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_19(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __86__ATXPOICategoryEventAggregator_groupVisitsFromPublisher_startTimestamp_endTimestamp___block_invoke_3_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [a2 error];
  v8 = 134218498;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_error_impl(&dword_260C9F000, a3, OS_LOG_TYPE_ERROR, "Error encountered while fetching events from Biome for POI Category between %f and %f: %@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end