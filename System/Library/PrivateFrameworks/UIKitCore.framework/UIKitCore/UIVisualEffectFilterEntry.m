@interface UIVisualEffectFilterEntry
@end

@implementation UIVisualEffectFilterEntry

void __41___UIVisualEffectFilterEntry_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", (")}];
  }

  v6 = *(a1 + 32);
  v7 = _UIVisualEffectFilterEntryDescribeValue(v5);
  [v6 appendFormat:@"%@=%@", v8, v7];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void __41___UIVisualEffectFilterEntry_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", (")}];
  }

  v6 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v10];
  v7 = *(a1 + 32);
  v8 = _UIVisualEffectFilterEntryDescribeValue(v6);
  v9 = _UIVisualEffectFilterEntryDescribeValue(v5);
  [v7 appendFormat:@"%@=[%@][%@]", v10, v8, v9];

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

@end