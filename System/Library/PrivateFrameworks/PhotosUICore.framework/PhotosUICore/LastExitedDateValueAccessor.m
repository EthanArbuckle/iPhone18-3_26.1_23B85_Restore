@interface LastExitedDateValueAccessor
@end

@implementation LastExitedDateValueAccessor

void ___LastExitedDateValueAccessor_block_invoke()
{
  v0 = [PXUbiquitousKeyValueStoreValueAccessor alloc];
  v3 = [MEMORY[0x1E696AFB8] defaultStore];
  v1 = [(PXUbiquitousKeyValueStoreValueAccessor *)v0 initWithUbiquitousKeyValueStore:v3 key:@"PXForYouLastExitedDateKey" defaultValueFuture:&__block_literal_global_8_191354 valueFilter:&__block_literal_global_12_191355 changeHandler:&__block_literal_global_15_191356];
  v2 = _LastExitedDateValueAccessor_lastExitedDateAccessor;
  _LastExitedDateValueAccessor_lastExitedDateAccessor = v1;
}

void ___LastExitedDateValueAccessor_block_invoke_4(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  v6 = @"PXForYouLastExitedDateKey";
  v7[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v4 postNotificationName:@"PXForYouLastExitedDateChangeNotification" object:0 userInfo:v5];
}

@end