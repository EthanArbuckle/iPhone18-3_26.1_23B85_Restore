@interface PSShareSheetSuggestionBundleIDMapping
@end

@implementation PSShareSheetSuggestionBundleIDMapping

uint64_t ___PSShareSheetSuggestionBundleIDMapping_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69C5D60]);
  v1 = objc_opt_new();
  v2 = [v0 initWithGuardedData:v1];
  v3 = _PSShareSheetSuggestionBundleIDMapping_lock;
  _PSShareSheetSuggestionBundleIDMapping_lock = v2;

  _PSShareSheetSuggestionBundleIDMapping_queue = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"_PSShareSheetSuggestionBundleIDMapping expiration" qosClass:9];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ___PSShareSheetSuggestionBundleIDMapping_block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___PSShareSheetSuggestionBundleIDMapping_block_invoke_3;
  v2[3] = &__block_descriptor_33_e29_v16__0__NSMutableDictionary_8l;
  v3 = *(a1 + 32);
  return [_PSShareSheetSuggestionBundleIDMapping_lock runWithLockAcquired:v2];
}

void ___PSShareSheetSuggestionBundleIDMapping_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setObject:0 forKeyedSubscript:v5];
}

void ___PSShareSheetSuggestionBundleIDMapping_block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
  }

  else
  {
    v6 = _uncachedPSShareSheetSuggestionBundleIDMapping(*(a1 + 40));
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 32) + 8) + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [v3 setObject:v9 forKeyedSubscript:v10];

    v11 = dispatch_time(0, 60000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___PSShareSheetSuggestionBundleIDMapping_block_invoke_2;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v13 = *(a1 + 40);
    dispatch_after(v11, _PSShareSheetSuggestionBundleIDMapping_queue, block);
  }
}

@end