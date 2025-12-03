@interface FxParameterListSelection
- (FxParameterListSelection)init;
- (id)displayNameForValue:(id)value;
- (void)dealloc;
- (void)setListItems:(id)items;
@end

@implementation FxParameterListSelection

- (FxParameterListSelection)init
{
  v4.receiver = self;
  v4.super_class = FxParameterListSelection;
  v2 = [(FxPinParameter *)&v4 init];
  if (v2)
  {
    v2->_listSelectionPriv = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
    [(FxPin *)v2 setValueClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  FxDebugAssert(self->_listSelectionPriv != 0, &cfstr_Listselectionp.isa, v2, v3, v4, v5, v6, v7, v9.receiver);
  free(self->_listSelectionPriv);
  v9.receiver = self;
  v9.super_class = FxParameterListSelection;
  [(FxPinParameter *)&v9 dealloc];
}

- (void)setListItems:(id)items
{
  var1 = self->_listSelectionPriv->var1;
  if (var1)
  {
  }

  self->_listSelectionPriv->var1 = items;
}

- (id)displayNameForValue:(id)value
{
  var1 = self->_listSelectionPriv->var1;
  if (!var1)
  {
    return 0;
  }

  intValue = [value intValue];

  return [var1 objectAtIndex:intValue];
}

@end