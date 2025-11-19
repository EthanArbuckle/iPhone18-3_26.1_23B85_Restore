@interface UIViewController(SubFlow)
- (uint64_t)subFlowType;
@end

@implementation UIViewController(SubFlow)

- (uint64_t)subFlowType
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a1 subFlowType];
}

@end