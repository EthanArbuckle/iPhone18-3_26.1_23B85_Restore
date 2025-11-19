@interface NSDictionary(REMDistributedEvaluationCollectionOptions)
- (double)remdes_doubleForKey:()REMDistributedEvaluationCollectionOptions defaultValue:;
- (uint64_t)remdes_BOOLForKey:()REMDistributedEvaluationCollectionOptions defaultValue:;
- (uint64_t)remdes_nsuintegerForKey:()REMDistributedEvaluationCollectionOptions defaultValue:;
@end

@implementation NSDictionary(REMDistributedEvaluationCollectionOptions)

- (uint64_t)remdes_BOOLForKey:()REMDistributedEvaluationCollectionOptions defaultValue:
{
  v5 = [a1 objectForKey:?];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (uint64_t)remdes_nsuintegerForKey:()REMDistributedEvaluationCollectionOptions defaultValue:
{
  v5 = [a1 objectForKey:?];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

- (double)remdes_doubleForKey:()REMDistributedEvaluationCollectionOptions defaultValue:
{
  v3 = [a1 objectForKey:?];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 doubleValue];
    a2 = v4;
  }

  return a2;
}

@end