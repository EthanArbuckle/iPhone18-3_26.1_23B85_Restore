@interface NSDictionary
@end

@implementation NSDictionary

void __81__NSDictionary_RCAdditions__rc_dictionaryByTransformingKeysWithKeyAndValueBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

void __83__NSDictionary_RCAdditions__rc_dictionaryByTransformingValuesWithKeyAndValueBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

@end