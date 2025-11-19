@interface WLKDeepReplacement
@end

@implementation WLKDeepReplacement

void ___WLKDeepReplacement_block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2;
  v8 = _WLKDeepReplacement(a3, v5, v6);
  [v4 setObject:v8 forKey:v7];
}

@end