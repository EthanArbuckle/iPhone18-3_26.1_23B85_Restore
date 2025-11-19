@interface FxParameterAngle
- (FxParameterAngle)init;
- (void)dealloc;
@end

@implementation FxParameterAngle

- (FxParameterAngle)init
{
  v4.receiver = self;
  v4.super_class = FxParameterAngle;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    v2->_anglePriv = malloc_type_calloc(1uLL, 0x18uLL, 0x10000406CB41D2EuLL);
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_anglePriv != 0, &cfstr_AngleprivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_anglePriv);
  v9.receiver = self;
  v9.super_class = FxParameterAngle;
  [(FxPinParameter *)&v9 dealloc];
}

@end