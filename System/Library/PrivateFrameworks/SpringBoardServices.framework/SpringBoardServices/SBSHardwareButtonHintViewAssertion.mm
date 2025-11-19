@interface SBSHardwareButtonHintViewAssertion
- (SBSHardwareButtonHintViewAssertion)initWithButtonKind:(int64_t)a3 assertionName:(id)a4 reason:(id)a5 receiveRight:(id)a6;
- (void)setContentVisibility:(int64_t)a3 animationSettings:(id)a4;
@end

@implementation SBSHardwareButtonHintViewAssertion

- (SBSHardwareButtonHintViewAssertion)initWithButtonKind:(int64_t)a3 assertionName:(id)a4 reason:(id)a5 receiveRight:(id)a6
{
  v8.receiver = self;
  v8.super_class = SBSHardwareButtonHintViewAssertion;
  result = [(SBSAssertion *)&v8 initWithAssertionName:a4 reason:a5 receiveRight:a6];
  if (result)
  {
    result->_buttonKind = a3;
  }

  return result;
}

- (void)setContentVisibility:(int64_t)a3 animationSettings:(id)a4
{
  v7 = a4;
  if ([(SBSAssertion *)self isValid])
  {
    v6 = objc_alloc_init(SBSHardwareButtonService);
    [(SBSHardwareButtonService *)v6 updateHintViewContentVisibility:a3 forButton:self->_buttonKind animationSettings:v7];
  }
}

@end