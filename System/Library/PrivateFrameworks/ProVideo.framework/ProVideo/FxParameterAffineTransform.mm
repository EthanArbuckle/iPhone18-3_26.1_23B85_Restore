@interface FxParameterAffineTransform
- (FxParameterAffineTransform)init;
- (void)dealloc;
@end

@implementation FxParameterAffineTransform

- (FxParameterAffineTransform)init
{
  v4.receiver = self;
  v4.super_class = FxParameterAffineTransform;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_affineTransformPriv != 0, &cfstr_Affinetransfor.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_affineTransformPriv);
  v9.receiver = self;
  v9.super_class = FxParameterAffineTransform;
  [(FxPinParameter *)&v9 dealloc];
}

@end