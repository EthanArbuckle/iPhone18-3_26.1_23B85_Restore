@interface FxParameterRect
- (FxParameterRect)init;
- (void)dealloc;
@end

@implementation FxParameterRect

- (FxParameterRect)init
{
  v4.receiver = self;
  v4.super_class = FxParameterRect;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_rectPriv != 0, &cfstr_RectprivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_rectPriv);
  v9.receiver = self;
  v9.super_class = FxParameterRect;
  [(FxPinParameter *)&v9 dealloc];
}

@end