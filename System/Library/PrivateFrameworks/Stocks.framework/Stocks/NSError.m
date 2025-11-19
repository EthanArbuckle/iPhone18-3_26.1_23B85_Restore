@interface NSError
@end

@implementation NSError

BOOL __52__NSError_SCKAdditions__sck_hasUnderlyingErrorCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v5 = [v3 code] == *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end