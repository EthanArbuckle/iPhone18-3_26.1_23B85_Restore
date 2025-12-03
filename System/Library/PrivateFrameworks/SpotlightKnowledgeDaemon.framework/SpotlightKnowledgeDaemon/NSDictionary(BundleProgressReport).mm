@interface NSDictionary(BundleProgressReport)
- (uint64_t)featureCheckpointForProgress;
- (void)bundleProgressNumerator:()BundleProgressReport denominator:;
@end

@implementation NSDictionary(BundleProgressReport)

- (void)bundleProgressNumerator:()BundleProgressReport denominator:
{
  v7 = [self objectForKeyedSubscript:@"itemsProcessed"];
  *a3 = [v7 unsignedIntegerValue];

  v8 = [self objectForKeyedSubscript:@"totalItems"];
  *a4 = [v8 unsignedIntegerValue];
}

- (uint64_t)featureCheckpointForProgress
{
  v1 = [self objectForKeyedSubscript:@"progress"];
  [v1 doubleValue];
  v3 = v2;

  result = 50;
  if (v3 < 0.9)
  {
    if (v3 < 0.5)
    {
      return 4;
    }

    else
    {
      return 30;
    }
  }

  return result;
}

@end