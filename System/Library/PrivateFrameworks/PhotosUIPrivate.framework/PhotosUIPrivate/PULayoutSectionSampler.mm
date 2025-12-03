@interface PULayoutSectionSampler
- (int64_t)indexForUnsampledIndex:(int64_t)index isMainItem:(BOOL *)item;
- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)range usingBlock:(id)block;
@end

@implementation PULayoutSectionSampler

- (void)enumerateUnsampledIndexesForSampledIndexInRange:(_NSRange)range usingBlock:(id)block
{
  v7 = 0;
  if (range.location < (range.location + range.length))
  {
    location = range.location;
    v6 = range.length - 1;
    do
    {
      (*(block + 2))(block, location, location, &v7);
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

- (int64_t)indexForUnsampledIndex:(int64_t)index isMainItem:(BOOL *)item
{
  result = index;
  if (item)
  {
    *item = 1;
  }

  return result;
}

@end