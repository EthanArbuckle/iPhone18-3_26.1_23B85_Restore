@interface FxParameterCustom
- (FxParameterCustom)init;
- (void)dealloc;
@end

@implementation FxParameterCustom

- (FxParameterCustom)init
{
  v3.receiver = self;
  v3.super_class = FxParameterCustom;
  return [(FxPinParameter *)&v3 init];
}

- (void)dealloc
{
  FxDebugAssert(self->_customPriv != 0, &cfstr_CustomprivNull.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_customPriv);
  v9.receiver = self;
  v9.super_class = FxParameterCustom;
  [(FxPinParameter *)&v9 dealloc];
}

@end