@interface NSInputStream
@end

@implementation NSInputStream

void __53__NSInputStream_SafariCoreExtras__safari_readAllData__block_invoke(uint64_t a1)
{
  free(*(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);

    [v2 close];
  }
}

@end