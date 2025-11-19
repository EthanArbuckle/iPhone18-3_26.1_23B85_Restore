@interface LastSeenDateValueAccessor
@end

@implementation LastSeenDateValueAccessor

void ___LastSeenDateValueAccessor_block_invoke()
{
  v0 = [PXUbiquitousKeyValueStoreValueAccessor alloc];
  v3 = [MEMORY[0x1E696AFB8] defaultStore];
  v1 = [(PXUbiquitousKeyValueStoreValueAccessor *)v0 initWithUbiquitousKeyValueStore:v3 key:@"PXSharedAlbumsActivityLastSeenDateKey" defaultValueFuture:&__block_literal_global_12_133016 valueFilter:&__block_literal_global_16_133017 changeHandler:&__block_literal_global_20_133018];
  v2 = _LastSeenDateValueAccessor_lastSeenDateAccessor;
  _LastSeenDateValueAccessor_lastSeenDateAccessor = v1;
}

void ___LastSeenDateValueAccessor_block_invoke_2_17(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  v6 = @"PXSharedAlbumsActivityLastSeenDateKey";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"PXSharedAlbumsActivityLastSeenDateChangeNotification" object:0 userInfo:v5];
}

BOOL ___LastSeenDateValueAccessor_block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = (PFOSVariantHasInternalUI() & 1) != 0 || [v4 compare:v5] == -1;

  return v6;
}

id ___LastSeenDateValueAccessor_block_invoke_2()
{
  v0 = PLUIGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v0, OS_LOG_TYPE_DEFAULT, "[SharedAlbumsActivityLastSeen] Using default 'last seen' date (now)", v3, 2u);
  }

  v1 = [MEMORY[0x1E695DF00] date];

  return v1;
}

@end