@interface NSAttributedString
@end

@implementation NSAttributedString

void *__97__NSAttributedString_SXAdditions__tokenCountWithEnumerationOptions_maxTokenCount_outLimitLength___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(result[4] + 8) + 24) >= result[5])
  {
    *a7 = 1;
    v7 = result[6];
    if (v7)
    {
      *v7 = a5 + a6;
    }
  }

  return result;
}

uint64_t __70__NSAttributedString_SXAdditions__stringByTruncatingToLength_options___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ((a3 + a4) <= *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a3 + a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

@end