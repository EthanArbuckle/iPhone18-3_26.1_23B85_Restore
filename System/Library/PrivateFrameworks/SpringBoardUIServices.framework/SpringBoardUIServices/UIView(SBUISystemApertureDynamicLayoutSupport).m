@interface UIView(SBUISystemApertureDynamicLayoutSupport)
- (double)SBUISA_standardInteritemPadding;
@end

@implementation UIView(SBUISystemApertureDynamicLayoutSupport)

- (double)SBUISA_standardInteritemPadding
{
  v1 = [a1 SBUISA_layoutMode];
  result = 11.0;
  if ((v1 + 1) < 5)
  {
    return 5.5;
  }

  return result;
}

@end