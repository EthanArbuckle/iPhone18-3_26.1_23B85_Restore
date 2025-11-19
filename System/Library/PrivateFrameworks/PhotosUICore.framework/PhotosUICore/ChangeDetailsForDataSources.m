@interface ChangeDetailsForDataSources
@end

@implementation ChangeDetailsForDataSources

uint64_t ___ChangeDetailsForDataSources_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localIdentifier];
  v6 = [v4 localIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

@end