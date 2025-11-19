@interface NSTextContentStorageCacheElementIndexRange
@end

@implementation NSTextContentStorageCacheElementIndexRange

uint64_t ____NSTextContentStorageCacheElementIndexRange_block_invoke(NSRange *a1, uint64_t a2)
{
  if (NSTextContentStorageBreakOnEnumerateWhileEditing_onceToken != -1)
  {
    NSTextContentStorageBreakOnEnumerateWhileEditing_cold_1();
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Inconsistent element cache state. Elements for range %@ are already cached while trying to insert", a2, NSStringFromRange(a1[2])];
}

uint64_t ____NSTextContentStorageCacheElementIndexRange_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (NSTextContentStorageBreakOnEnumerateWhileEditing_onceToken != -1)
  {
    NSTextContentStorageBreakOnEnumerateWhileEditing_cold_1();
  }

  v5.length = *(a1 + 32);
  v5.location = 0;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Inconsistent element cache state. Elements for range %@ are not cached while trying to insert", a2, NSStringFromRange(v5)];
}

@end