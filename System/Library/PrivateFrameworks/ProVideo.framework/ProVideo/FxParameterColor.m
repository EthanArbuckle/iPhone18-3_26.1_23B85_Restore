@interface FxParameterColor
- (FxParameterColor)init;
- (void)dealloc;
@end

@implementation FxParameterColor

- (FxParameterColor)init
{
  v4.receiver = self;
  v4.super_class = FxParameterColor;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    v2->_colorPriv = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_colorPriv != 0, &cfstr_ColorprivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_colorPriv);
  v9.receiver = self;
  v9.super_class = FxParameterColor;
  [(FxPinParameter *)&v9 dealloc];
}

@end