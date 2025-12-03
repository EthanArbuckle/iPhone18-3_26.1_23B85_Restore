@interface SBSHardwareButtonHintViewAssertion
- (SBSHardwareButtonHintViewAssertion)initWithButtonKind:(int64_t)kind assertionName:(id)name reason:(id)reason receiveRight:(id)right;
- (void)setContentVisibility:(int64_t)visibility animationSettings:(id)settings;
@end

@implementation SBSHardwareButtonHintViewAssertion

- (SBSHardwareButtonHintViewAssertion)initWithButtonKind:(int64_t)kind assertionName:(id)name reason:(id)reason receiveRight:(id)right
{
  v8.receiver = self;
  v8.super_class = SBSHardwareButtonHintViewAssertion;
  result = [(SBSAssertion *)&v8 initWithAssertionName:name reason:reason receiveRight:right];
  if (result)
  {
    result->_buttonKind = kind;
  }

  return result;
}

- (void)setContentVisibility:(int64_t)visibility animationSettings:(id)settings
{
  settingsCopy = settings;
  if ([(SBSAssertion *)self isValid])
  {
    v6 = objc_alloc_init(SBSHardwareButtonService);
    [(SBSHardwareButtonService *)v6 updateHintViewContentVisibility:visibility forButton:self->_buttonKind animationSettings:settingsCopy];
  }
}

@end