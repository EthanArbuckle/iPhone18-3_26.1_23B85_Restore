@interface NSDictionary
@end

@implementation NSDictionary

void __35__NSDictionary_Functional__filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t __32__NSDictionary_Functional__map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  if (v2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

@end