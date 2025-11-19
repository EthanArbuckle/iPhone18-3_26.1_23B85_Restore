@interface UIDataSourceBatchUpdateDescription
@end

@implementation UIDataSourceBatchUpdateDescription

void ___UIDataSourceBatchUpdateDescription_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *(a1 + 32);
  v6 = @"s";
  if (*a3 == 1)
  {
    v6 = &stru_1EFB14550;
  }

  [v5 appendFormat:@"Data source %@ updates = { %lu section%@ with item counts: [", a2, *a3, v6];
  if (*a3)
  {
    v7 = 0;
    do
    {
      [*(a1 + 32) appendFormat:@"%lu", (*(*(a3 + 2) + 16))()];
      v8 = *a3;
      if (v7 < *a3 - 1)
      {
        [*(a1 + 32) appendString:{@", "}];
        v8 = *a3;
      }

      ++v7;
    }

    while (v7 < v8);
  }

  [*(a1 + 32) appendString:@"] }\n"];

  v9 = *(a3 + 2);
}

@end