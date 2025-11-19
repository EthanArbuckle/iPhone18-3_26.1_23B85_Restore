@interface NSFileManager
@end

@implementation NSFileManager

uint64_t __110__NSFileManager_SFUtilityAdditions___changeFileProtectionAtURL_fromProtection_toProtection_recursively_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x277CCA1B0]];
  if ([v3 isEqualToString:*(a1 + 32)])
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    return 1;
  }

  return [v3 isEqualToString:?];
}

@end