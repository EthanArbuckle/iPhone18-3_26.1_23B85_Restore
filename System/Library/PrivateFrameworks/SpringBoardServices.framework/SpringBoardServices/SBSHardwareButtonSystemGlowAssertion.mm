@interface SBSHardwareButtonSystemGlowAssertion
- (void)setSystemGlowStyle:(int64_t)style;
@end

@implementation SBSHardwareButtonSystemGlowAssertion

- (void)setSystemGlowStyle:(int64_t)style
{
  if ([(SBSAssertion *)self isValid])
  {
    v4 = objc_alloc_init(SBSHardwareButtonService);
    [(SBSHardwareButtonService *)v4 updateSystemGlowStyle:style];
  }
}

@end