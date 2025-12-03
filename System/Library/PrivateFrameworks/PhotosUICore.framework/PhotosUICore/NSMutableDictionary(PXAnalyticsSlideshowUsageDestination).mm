@interface NSMutableDictionary(PXAnalyticsSlideshowUsageDestination)
- (void)_px_transformExistingValueForKey:()PXAnalyticsSlideshowUsageDestination usingBlock:;
@end

@implementation NSMutableDictionary(PXAnalyticsSlideshowUsageDestination)

- (void)_px_transformExistingValueForKey:()PXAnalyticsSlideshowUsageDestination usingBlock:
{
  v9 = a3;
  v6 = a4;
  v7 = [self objectForKeyedSubscript:v9];
  if (v7)
  {
    v8 = v6[2](v6, v7);
    [self setObject:v8 forKeyedSubscript:v9];
  }
}

@end