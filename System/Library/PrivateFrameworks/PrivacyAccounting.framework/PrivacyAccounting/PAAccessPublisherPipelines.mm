@interface PAAccessPublisherPipelines
+ (double)nextStartTimeForEndTime:(double)a3 iteration:(double)a4;
+ (id)accessPublisherWithoutHiddenOrMissingApps:(id)a3 withBundleLookup:(id)a4;
+ (id)accessRecordsFromPublisher:(id)a3 reversed:(BOOL)a4;
+ (id)coalesceAccessRecordsFromPublisher:(id)a3 withCoalescingWindowDuration:(double)a4 reversed:(BOOL)a5;
+ (id)completeAccessRecordFromPartialAccessRecord:(id)a3 nextAccessPublisher:(id)a4;
+ (id)completeAccessRecordFromPartialAccessRecord:(id)a3 nextStartTime:(id)a4 accessPublisher:(id)a5;
+ (id)findBeginningForPartialAccessRecord:(id)a3 iteration:(double)a4 nextStartTime:(id)a5 endTime:(double)a6 accessPublisher:(id)a7;
+ (id)ongoingAccessRecordsFromPublisher:(id)a3;
@end

@implementation PAAccessPublisherPipelines

id __72__PAAccessPublisherPipelines_accessPublisherWithoutHiddenOrMissingApps___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6963620];
  v3 = [a2 bundleID];
  v6 = 0;
  v4 = [v2 bundleRecordWithBundleIdentifier:v3 allowPlaceholder:0 error:&v6];

  return v4;
}

+ (id)accessPublisherWithoutHiddenOrMissingApps:(id)a3 withBundleLookup:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__PAAccessPublisherPipelines_accessPublisherWithoutHiddenOrMissingApps_withBundleLookup___block_invoke;
  aBlock[3] = &unk_1E86AC278;
  v18 = v8;
  v19 = v5;
  v9 = v5;
  v10 = v8;
  v11 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__PAAccessPublisherPipelines_accessPublisherWithoutHiddenOrMissingApps_withBundleLookup___block_invoke_2;
  v15[3] = &unk_1E86AC2A0;
  v16 = v11;
  v12 = v11;
  v13 = [v7 filterWithIsIncluded:v15];

  return v13;
}

uint64_t __89__PAAccessPublisherPipelines_accessPublisherWithoutHiddenOrMissingApps_withBundleLookup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    IsVisibleApplication = [v6 BOOLValue];
  }

  else
  {
    v8 = (*(*(a1 + 40) + 16))();
    v9 = v8;
    if (v8)
    {
      IsVisibleApplication = PABundleRecordIsVisibleApplication(v8);
    }

    else
    {
      IsVisibleApplication = 0;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:IsVisibleApplication];
    v11 = *(a1 + 32);
    v12 = [v3 bundleID];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  return IsVisibleApplication;
}

uint64_t __89__PAAccessPublisherPipelines_accessPublisherWithoutHiddenOrMissingApps_withBundleLookup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 accessor];

  if (v6 && ![v6 identifierType])
  {
    v7 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = 1;
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

BOOL __79__PAAccessPublisherPipelines_accessPublisherWithoutOutOfProcessPickerAccesses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  objc_autoreleasePoolPop(v3);
  return (isKindOfClass & 1) == 0;
}

uint64_t __76__PAAccessPublisherPipelines_accessPublisherWithoutUnknownCategoryAccesses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 eventBody];
  v5 = [v4 category];
  v6 = [v5 isEqual:@"unknown"];

  objc_autoreleasePoolPop(v3);
  return v6 ^ 1u;
}

+ (id)accessRecordsFromPublisher:(id)a3 reversed:(BOOL)a4
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PAAccessPublisherPipelines_accessRecordsFromPublisher_reversed___block_invoke;
  v8[3] = &__block_descriptor_33_e79___PAAccessRecordAccumulator_24__0__PAAccessRecordAccumulator_8__BMStoreEvent_16l;
  v9 = a4;
  v4 = [a3 scanWithInitial:0 nextPartialResult:v8];
  v5 = [v4 filterWithIsIncluded:&__block_literal_global_35];
  v6 = [v5 mapWithTransform:&__block_literal_global_38];

  return v6;
}

id __66__PAAccessPublisherPipelines_accessRecordsFromPublisher_reversed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v8 = [v6 eventBody];

  [v5 setRecord:0];
  if (!v8)
  {
    v23 = v5;
    goto LABEL_20;
  }

  [v6 timestamp];
  v10 = v9;
  v11 = [v6 eventBody];
  [v11 timestampAdjustment];
  v13 = v12;

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v14 = [v5 ongoingIntervals];
  v15 = [v6 eventBody];
  v16 = [v15 identifier];
  v47 = [v14 objectForKeyedSubscript:v16];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PAAccessPublisherPipelines_accessRecordsFromPublisher_reversed___block_invoke_27;
  aBlock[3] = &unk_1E86AC2E8;
  v41 = &v42;
  v17 = v6;
  v39 = v17;
  v18 = v5;
  v40 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [v17 eventBody];
  v21 = [v20 kind];
  v22 = v10 + v13;

  if (v21 > 2)
  {
    if (v21 != 3)
    {
      if (v21 != 4)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v19[2](v19);
    [v43[5] setEndTime:v22];
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v21 == 1)
  {
    v24 = [v18 seenEvents];
    v25 = [v17 eventBody];
    v26 = [v25 identifier];
    v27 = [v24 containsObject:v26];

    if ((v27 & 1) == 0)
    {
      v28 = [v18 seenEvents];
      v29 = [v17 eventBody];
      v30 = [v29 identifier];
      [v28 addObject:v30];

      v31 = [PACompleteAccessRecord alloc];
      v32 = [v17 eventBody];
      v33 = [(PACompleteAccessRecord *)v31 initWithAccess:v32 startTime:v22 endTime:v22];
      [v18 setRecord:v33];
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v21 == 2)
  {
    v19[2](v19);
    [v43[5] setStartTime:v22];
    if (*(a1 + 32) == 1)
    {
LABEL_16:
      v34 = [v43[5] asSealedRecord];
      [v18 setRecord:v34];

      v32 = [v18 ongoingIntervals];
      v33 = [v17 eventBody];
      v35 = [(PACompleteAccessRecord *)v33 identifier];
      [v32 setObject:0 forKeyedSubscript:v35];

      goto LABEL_17;
    }

LABEL_18:
    v36 = v18;
  }

LABEL_19:

  _Block_object_dispose(&v42, 8);
LABEL_20:
  objc_autoreleasePoolPop(v7);

  return v5;
}

void __66__PAAccessPublisherPipelines_accessRecordsFromPublisher_reversed___block_invoke_27(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = objc_alloc_init(PAWorkInProgressAccessInterval);
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(a1 + 32) eventBody];
    v7 = [MEMORY[0x1E695DFD8] set];
    v8 = [v6 asIntervalEventWithAssetIdentifiers:v7 visibilityState:0 accessEventCount:0];
    [*(*(*(a1 + 48) + 8) + 40) setAccess:v8];

    v9 = *(*(*(a1 + 48) + 8) + 40);
    v12 = [*(a1 + 40) ongoingIntervals];
    v10 = [*(a1 + 32) eventBody];
    v11 = [v10 identifier];
    [v12 setObject:v9 forKeyedSubscript:v11];
  }
}

BOOL __66__PAAccessPublisherPipelines_accessRecordsFromPublisher_reversed___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 record];
  v3 = v2 != 0;

  return v3;
}

+ (id)ongoingAccessRecordsFromPublisher:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 reduceWithInitial:v5 nextPartialResult:&__block_literal_global_41];

  v7 = [v6 flatMapWithTransform:&__block_literal_global_44];

  return v7;
}

id __64__PAAccessPublisherPipelines_ongoingAccessRecordsFromPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 eventBody];
  v8 = [v7 kind];

  v9 = v5;
  if (v8 != 2)
  {
    if (v8 != 3)
    {
      goto LABEL_5;
    }

    v9 = 0;
  }

  v10 = [v5 eventBody];
  v11 = [v10 identifier];
  [v4 setObject:v9 forKeyedSubscript:v11];

LABEL_5:
  v12 = v4;
  objc_autoreleasePoolPop(v6);

  return v12;
}

id __64__PAAccessPublisherPipelines_ongoingAccessRecordsFromPublisher___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v2 allValues];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [PAOngoingAccessRecord alloc];
        v11 = [v9 eventBody];
        [v9 timestamp];
        v13 = v12;
        v14 = [v9 eventBody];
        [v14 timestampAdjustment];
        v16 = [(PAOngoingAccessRecord *)v10 initWithAccess:v11 startTime:v13 + v15];
        [v3 addObject:v16];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = [objc_alloc(MEMORY[0x1E698F0E8]) initWithSequence:v3];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)coalesceAccessRecordsFromPublisher:(id)a3 withCoalescingWindowDuration:(double)a4 reversed:(BOOL)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DFB0];
  v8 = a3;
  v9 = [v7 null];
  v10 = objc_alloc(MEMORY[0x1E698F0E8]);
  v23[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v12 = [v10 initWithSequence:v11];
  v13 = [v8 mergeWithOther:v12];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __103__PAAccessPublisherPipelines_coalesceAccessRecordsFromPublisher_withCoalescingWindowDuration_reversed___block_invoke;
  v19[3] = &unk_1E86AC3B0;
  v20 = v9;
  v22 = a5;
  v21 = a4;
  v14 = v9;
  v15 = [v13 scanWithInitial:0 nextPartialResult:v19];
  v16 = [v15 flatMapWithTransform:&__block_literal_global_110];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

PAAccessRecordCoalescingInWindowState *__103__PAAccessPublisherPipelines_coalesceAccessRecordsFromPublisher_withCoalescingWindowDuration_reversed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v5 = objc_opt_new();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 previousState];

    v5 = v7;
  }

  if (*(a1 + 32) == v6)
  {
    v11 = [[PAAccessRecordCoalescingDoneState alloc] initByEndingLastWindow:v5 reversed:*(a1 + 48)];
LABEL_11:
    v12 = v11;
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [[PAAccessRecordCoalescingIncompleteRecordState alloc] initWithPreviousState:v5 recordToRepublish:v6];
    goto LABEL_11;
  }

  v8 = v6;
  v9 = v8;
  if (*(a1 + 48) == 1)
  {
    [v8 startTime];
  }

  else
  {
    [v8 endTime];
  }

  v13 = llround(v10 / *(a1 + 40));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [[PAAccessRecordCoalescingInWindowState alloc] initWithFirstAccessRecord:v9 forEpoch:v13];
  }

  else
  {
    v14 = [v5 conformsToProtocol:&unk_1F5A5C188];
    v15 = v5;
    v12 = v15;
    if (v14)
    {
      v16 = [(PAAccessRecordCoalescingInWindowState *)v15 epoch];
      v17 = v13 - v16;
      if ((v13 - v16) < 0)
      {
        v17 = v16 - v13;
      }

      if (v17 < 2)
      {
        v18 = [[PAAccessRecordCoalescingInWindowState alloc] initByContinuingWindow:v12 withAccessRecord:v9];
      }

      else
      {
        v18 = [[PAAccessRecordCoalescingWindowRolledOverState alloc] initByEndingPreviousWindow:v12 reversed:*(a1 + 48) withInitialAccessRecord:v9 forNewEpoch:v13];
      }

      v19 = v18;

      v12 = v19;
    }
  }

LABEL_23:

  return v12;
}

id __103__PAAccessPublisherPipelines_coalesceAccessRecordsFromPublisher_withCoalescingWindowDuration_reversed___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698F0E8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 recordsToRepublish];

  v6 = [v4 initWithSequence:v5];

  return v6;
}

+ (id)completeAccessRecordFromPartialAccessRecord:(id)a3 nextAccessPublisher:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__PAAccessPublisherPipelines_completeAccessRecordFromPartialAccessRecord_nextAccessPublisher___block_invoke;
  v10[3] = &unk_1E86AC3F8;
  v11 = v6;
  v12 = a1;
  v7 = v6;
  v8 = [a1 completeAccessRecordFromPartialAccessRecord:v7 nextStartTime:v10 accessPublisher:a4];

  return v8;
}

uint64_t __94__PAAccessPublisherPipelines_completeAccessRecordFromPartialAccessRecord_nextAccessPublisher___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  [*(a1 + 32) endTime];

  return [v1 nextStartTimeForEndTime:? iteration:?];
}

+ (id)completeAccessRecordFromPartialAccessRecord:(id)a3 nextStartTime:(id)a4 accessPublisher:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  [v8 endTime];
  v12 = [a1 findBeginningForPartialAccessRecord:v8 iteration:v10 nextStartTime:v9 endTime:0.0 accessPublisher:v11];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__PAAccessPublisherPipelines_completeAccessRecordFromPartialAccessRecord_nextStartTime_accessPublisher___block_invoke;
  v16[3] = &unk_1E86AC420;
  v17 = v8;
  v13 = v8;
  v14 = [v12 mapWithTransform:v16];

  return v14;
}

PACompleteAccessRecord *__104__PAAccessPublisherPipelines_completeAccessRecordFromPartialAccessRecord_nextStartTime_accessPublisher___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PACompleteAccessRecord alloc];
  v5 = [*(a1 + 32) access];
  [v3 timestamp];
  v7 = v6;
  v8 = [v3 eventBody];

  [v8 timestampAdjustment];
  v10 = v7 + v9;
  [*(a1 + 32) endTime];
  v12 = [(PACompleteAccessRecord *)v4 initWithAccess:v5 startTime:v10 endTime:v11];

  return v12;
}

+ (id)findBeginningForPartialAccessRecord:(id)a3 iteration:(double)a4 nextStartTime:(id)a5 endTime:(double)a6 accessPublisher:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = v13[2](v13, a4);
  if (v15 == a6 || (v16 = v15, v14[2](v14), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v24 = objc_alloc(MEMORY[0x1E698F0E8]);
    v23 = [v24 initWithSequence:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v18 = v17;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __114__PAAccessPublisherPipelines_findBeginningForPartialAccessRecord_iteration_nextStartTime_endTime_accessPublisher___block_invoke;
    v35[3] = &__block_descriptor_40_e22_B16__0__BMStoreEvent_8l;
    *&v35[4] = a6;
    v19 = [v17 filterWithIsIncluded:v35];
    v20 = [MEMORY[0x1E695DFB0] null];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __114__PAAccessPublisherPipelines_findBeginningForPartialAccessRecord_iteration_nextStartTime_endTime_accessPublisher___block_invoke_2;
    v33[3] = &unk_1E86AC468;
    v21 = v12;
    v34 = v21;
    v22 = [v19 reduceWithInitial:v20 nextPartialResult:v33];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __114__PAAccessPublisherPipelines_findBeginningForPartialAccessRecord_iteration_nextStartTime_endTime_accessPublisher___block_invoke_3;
    v26[3] = &unk_1E86AC490;
    v30 = a1;
    v27 = v21;
    v31 = a4;
    v28 = v13;
    v32 = v16;
    v29 = v14;
    v23 = [v22 flatMapWithTransform:v26];
  }

  return v23;
}

id __114__PAAccessPublisherPipelines_findBeginningForPartialAccessRecord_iteration_nextStartTime_endTime_accessPublisher___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DFB0] null];

  if (v8 != v5 || ([v6 eventBody], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v9 = v5;
    goto LABEL_3;
  }

  v13 = [v6 eventBody];
  if ([v13 kind] == 2)
  {
    v14 = [v6 eventBody];
    v15 = [v14 identifier];
    v16 = [*(a1 + 32) access];
    v17 = [v16 identifier];
    v18 = [v15 isEqual:v17];

    if (v18)
    {
      v9 = v6;
      goto LABEL_3;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x1E695DFB0] null];
LABEL_3:
  v10 = v9;
  objc_autoreleasePoolPop(v7);

  return v10;
}

id __114__PAAccessPublisherPipelines_findBeginningForPartialAccessRecord_iteration_nextStartTime_endTime_accessPublisher___block_invoke_3(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (v4 == v3)
  {
    v9 = [*(a1 + 56) findBeginningForPartialAccessRecord:*(a1 + 32) iteration:*(a1 + 40) nextStartTime:*(a1 + 48) endTime:*(a1 + 64) + 1.0 accessPublisher:*(a1 + 72)];
  }

  else
  {
    v5 = MEMORY[0x1E698F0E8];
    v6 = v3;
    v7 = [v5 alloc];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    v9 = [v7 initWithSequence:v8];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (double)nextStartTimeForEndTime:(double)a3 iteration:(double)a4
{
  if (a4 <= 4.0)
  {
    v6 = exp2(a4);
    v7 = -5.0;
  }

  else
  {
    if (a4 > 10.0)
    {
      return 0.0;
    }

    v6 = exp2(a4 + -5.0) * 3.0;
    v7 = -60.0;
  }

  return a3 + v6 * v7 * 60.0;
}

@end