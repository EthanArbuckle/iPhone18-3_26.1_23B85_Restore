@interface UIBADPrettyPrintTextAttributes
@end

@implementation UIBADPrettyPrintTextAttributes

void ___UIBADPrettyPrintTextAttributes_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", (")}];
  }

  [*(a1 + 32) appendFormat:@"%@=%@", v6, v5];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

@end