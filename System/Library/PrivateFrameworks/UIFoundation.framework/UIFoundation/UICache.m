@interface UICache
@end

@implementation UICache

void __16___UICache_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UICache_clearing_cache_due_to_memory_note_block_invoke;
  block[3] = &unk_1E72657B8;
  block[4] = v2;
  dispatch_sync(v1, block);
}

id __33___UICache_retainedObjectForKey___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

void __50___UICache_setClearsCacheOnApplicationBackground___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UICache_clearing_cache_due_to_app_background_note_block_invoke;
  block[3] = &unk_1E72657B8;
  block[4] = v2;
  dispatch_sync(v1, block);
}

uint64_t __21___UICache_cacheKeys__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 16) allKeys];

  return [v1 addObjectsFromArray:v2];
}

@end