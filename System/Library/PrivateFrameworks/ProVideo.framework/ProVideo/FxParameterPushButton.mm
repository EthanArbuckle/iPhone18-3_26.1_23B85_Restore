@interface FxParameterPushButton
- (FxParameterPushButton)init;
- (void)dealloc;
@end

@implementation FxParameterPushButton

- (FxParameterPushButton)init
{
  v4.receiver = self;
  v4.super_class = FxParameterPushButton;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_pushButtonPriv != 0, &cfstr_Pushbuttonpriv.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_pushButtonPriv);
  v9.receiver = self;
  v9.super_class = FxParameterPushButton;
  [(FxPinParameter *)&v9 dealloc];
}

@end