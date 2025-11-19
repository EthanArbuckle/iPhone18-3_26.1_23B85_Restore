@interface FxParameterBoolean
- (FxParameterBoolean)init;
- (void)dealloc;
@end

@implementation FxParameterBoolean

- (FxParameterBoolean)init
{
  v4.receiver = self;
  v4.super_class = FxParameterBoolean;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_BOOLeanPriv != 0, &cfstr_BooleanprivNul.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_BOOLeanPriv);
  v9.receiver = self;
  v9.super_class = FxParameterBoolean;
  [(FxPinParameter *)&v9 dealloc];
}

@end