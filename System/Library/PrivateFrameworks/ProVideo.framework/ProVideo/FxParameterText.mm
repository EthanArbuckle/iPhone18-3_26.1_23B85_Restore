@interface FxParameterText
- (FxParameterText)init;
- (void)dealloc;
@end

@implementation FxParameterText

- (FxParameterText)init
{
  v4.receiver = self;
  v4.super_class = FxParameterText;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    v2->_textPriv = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  free(self->_textPriv);
  v3.receiver = self;
  v3.super_class = FxParameterText;
  [(FxPinParameter *)&v3 dealloc];
}

@end