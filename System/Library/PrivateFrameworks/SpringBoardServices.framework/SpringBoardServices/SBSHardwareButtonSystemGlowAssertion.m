@interface SBSHardwareButtonSystemGlowAssertion
- (void)setSystemGlowStyle:(int64_t)a3;
@end

@implementation SBSHardwareButtonSystemGlowAssertion

- (void)setSystemGlowStyle:(int64_t)a3
{
  if ([(SBSAssertion *)self isValid])
  {
    v4 = objc_alloc_init(SBSHardwareButtonService);
    [(SBSHardwareButtonService *)v4 updateSystemGlowStyle:a3];
  }
}

@end