@interface FxPinParameter
- (FxPinParameter)init;
- (void)dealloc;
- (void)setDefaultValue:(id)a3;
@end

@implementation FxPinParameter

- (FxPinParameter)init
{
  v3.receiver = self;
  v3.super_class = FxPinParameter;
  result = [(FxPin *)&v3 init];
  if (result)
  {
    result->customUI = 0;
  }

  return result;
}

- (void)dealloc
{
  FxDebugAssert(self->_paramPriv != 0, &cfstr_ParamprivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_paramPriv);
  v9.receiver = self;
  v9.super_class = FxPinParameter;
  [(FxPin *)&v9 dealloc];
}

- (void)setDefaultValue:(id)a3
{
  defaultValue = self->defaultValue;
  if (defaultValue)
  {
  }

  self->defaultValue = a3;
}

@end