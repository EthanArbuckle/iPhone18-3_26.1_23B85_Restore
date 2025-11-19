@interface PULayoutSectionSampler
- (int64_t)indexForUnsampledIndex:(int64_t)a3 isMainItem:(BOOL *)a4;
- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)a3 usingBlock:(id)a4;
@end

@implementation PULayoutSectionSampler

- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)a3 usingBlock:(id)a4
{
  v7 = 0;
  if (a3.location < (a3.location + a3.length))
  {
    location = a3.location;
    v6 = a3.length - 1;
    do
    {
      (*(a4 + 2))(a4, location, location, &v7);
      if (!v6)
      {
        break;
      }

      ++location;
      --v6;
    }

    while ((v7 & 1) == 0);
  }
}

- (int64_t)indexForUnsampledIndex:(int64_t)a3 isMainItem:(BOOL *)a4
{
  result = a3;
  if (a4)
  {
    *a4 = 1;
  }

  return result;
}

@end