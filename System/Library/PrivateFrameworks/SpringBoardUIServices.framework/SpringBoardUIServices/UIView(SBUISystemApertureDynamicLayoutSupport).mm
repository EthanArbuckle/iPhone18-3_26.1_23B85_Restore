@interface UIView(SBUISystemApertureDynamicLayoutSupport)
- (double)SBUISA_standardInteritemPadding;
@end

@implementation UIView(SBUISystemApertureDynamicLayoutSupport)

- (double)SBUISA_standardInteritemPadding
{
  sBUISA_layoutMode = [self SBUISA_layoutMode];
  result = 11.0;
  if ((sBUISA_layoutMode + 1) < 5)
  {
    return 5.5;
  }

  return result;
}

@end