@interface FxParameterGroup
- (FxParameterGroup)init;
- (void)dealloc;
- (void)setSubPins:(id)pins;
@end

@implementation FxParameterGroup

- (FxParameterGroup)init
{
  v5.receiver = self;
  v5.super_class = FxParameterGroup;
  v2 = [(FxPinParameter *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    v2->_groupPriv = v3;
    if (v3)
    {
      v2->_groupPriv->var0 = [MEMORY[0x277CBEB18] array];
    }

    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_groupPriv != 0, &cfstr_GroupprivNull.isa, v2, v3, v4, v5, v6, v7, v10.receiver);
  groupPriv = self->_groupPriv;
  if (groupPriv)
  {
    if (groupPriv->var0)
    {

      groupPriv = self->_groupPriv;
    }

    free(groupPriv);
  }

  v10.receiver = self;
  v10.super_class = FxParameterGroup;
  [(FxPinParameter *)&v10 dealloc];
}

- (void)setSubPins:(id)pins
{
  var0 = self->_groupPriv->var0;
  if (var0)
  {
  }

  self->_groupPriv->var0 = pins;
}

@end